unit dmMainU;

interface

uses
  SysUtils, FMTBcd, DB,
  SqlExpr, IBDatabase, IBCustomDataSet, IBQuery, IBStoredProc, dialogs,
  Classes, Controls, IniFiles, forms;

type
  TdmMain = class(TDataModule)
    qUsers: TIBQuery;
    ibdbMain: TIBDatabase;
    trMain: TIBTransaction;
    qTours: TIBQuery;
    dsqMainData: TDataSource;
    dsqUsers: TDataSource;
    dsqTours: TDataSource;
    dsqOperators: TDataSource;
    dsqMDCur: TDataSource;
    spNewMainData: TIBStoredProc;
    qMDCur: TIBDataSet;
    dsqHotels: TDataSource;
    qUsersID: TIntegerField;
    qUsersDATE_CREATE: TDateTimeField;
    qUsersNAME: TIBStringField;
    qUsersPASS: TIBStringField;
    qUsersIS_MAIN: TIBStringField;
    qToursID: TIntegerField;
    qToursDATE_CREATE: TDateTimeField;
    qToursSORT_BY: TIntegerField;
    qToursNAME: TIBStringField;
    dsqClientsData: TDataSource;
    spNewClient: TIBStoredProc;
    qCurClient: TIBDataSet;
    dsqCurClient: TDataSource;
    qClientsData: TIBQuery;
    qClientsDataID_MAIN_DATA: TIntegerField;
    qClientsDataID_CLIENTS: TIntegerField;
    qClientsDataID: TIntegerField;
    qClientsDataDATE_CREATE: TDateTimeField;
    qClientsDataID_USERS: TIntegerField;
    qClientsDataNAME: TIBStringField;
    qClientsDataCONTACT: TIBStringField;
    qClientsDataPASSP_NUM: TIBStringField;
    qClientsDataPASSP_DATE_OUT: TDateTimeField;
    qClientsDataPASSP_DATE_END: TDateTimeField;
    qClientsDataPASSP_PRODUCER: TIBStringField;
    qClientsDataFORENAME: TIBStringField;
    qClientsDataSURNAME: TIBStringField;
    qClientsDataSEX: TIBStringField;
    qClientsDataBIRTH_DATE: TDateTimeField;
    qClientsDataBIRTH_PLACE: TIBStringField;
    qClientsDataUSER_NAME: TIBStringField;
    qvar: TIBQuery;
    qMainData: TIBQuery;
    qOperators: TIBDataSet;
    qHotels: TIBDataSet;
    dsqClients: TDataSource;
    qClients: TIBDataSet;
    qWarn: TIBQuery;
    dsqWarn: TDataSource;
    qWarnID: TIntegerField;
    qWarnDATE_CREATE: TDateTimeField;
    qWarnID_WARN_SOURCE: TIntegerField;
    qWarnID_WARN_TYPE: TIntegerField;
    qWarnID_MAIN_DATA: TIntegerField;
    qWarnID_CLIENTS: TIntegerField;
    qWarnNAME: TIBStringField;
    qWarnDATE_REASON: TDateField;
    qWarnSOURCE: TIBStringField;
    qWarnWTYPE: TIBStringField;
    qWarnCLNAME: TIBStringField;
    qWarnCONTACT: TIBStringField;
    trUser: TIBTransaction;
    dsqTypeRoom: TDataSource;
    qTypeRoom: TIBDataSet;
    dsqTypeFood: TDataSource;
    qTypeFood: TIBDataSet;
    dsqCurr: TDataSource;
    qCurr: TIBDataSet;
    SET_MAIN_DATA_CLIENT_NAME: TIBStoredProc;
    procedure DataModuleCreate(Sender: TObject);
    procedure qClientsFilterRecord(DataSet: TDataSet; var Accept: Boolean);
  private
    { Private declarations }
  public
    id_user, id_warn : integer;
    client_srnm : string;    
    procedure refr(q : tibdataset); overload;
    procedure refr(q: tibquery); overload;
    procedure refr(q : tibquery; id : integer); overload;
    procedure refr(q : tibdataset; id : integer); overload;
    procedure refrParamId(q: tibdataset; id: integer);    
    function CreateNewMainData(id_users : integer) : integer;
    function CreateNewClient(id_users, id_maindata : integer) : integer; overload;
    procedure AddClientToMainData(id_maindata, id_client : integer); overload;
    function ClientRefrAndEdit(id_client : integer) : integer;
    procedure SaveClientData(id_client : integer);
    procedure DeleteCurrentClient(clid, mdid : integer);
    procedure DeleteClient(clid : integer);
    procedure DeleteMaindata(id, mode : integer);
    function ExecReminders : integer;
    procedure RemoveReminder(id, idwarntype, idmaindata, idclients : integer);
    procedure OpDct; // open dicts
    procedure CommT(var tr : tibtransaction);
    procedure StartT(var tr : tibtransaction);
    procedure RollT(var tr : tibtransaction);
    procedure cnct;
    procedure DictWork(q : tibdataset; qidfld : string; capt : string; mode : integer);
    procedure RefrDB;
    function exec(var q: tibquery; mode : integer = 0; sqltxt : string = ''; isgetid : boolean = false; table : string = ''; id : integer = 0) : integer;
    function GetSettMDDateFrom : tdatetime;
    function GetSettMDDateTo : tdatetime;
    function SetMDSelDateRange(dtfrom, dtto : tdatetime) : string;
    function RefrWarn(mode : integer) : string;

    // operational sqls
    function UpdSelFromDt(dt : tdatetime) : string;
    function UpdSelToDt(dt : tdatetime) : string;
    function UpdSett(fld, valstr : string; mode : integer; valdt : tdatetime; valint : integer = 0) : string;
  end;

var
  dmMain: TdmMain;
  htlid, opid : integer;


implementation

uses
  frmNewEditMainDataU, frmdictu, frmmainu, FrmClientsDictU;

{$R *.dfm}

procedure TdmMain.AddClientToMainData(id_maindata, id_client: integer);
begin
  with qvar do
  begin
    close;
    sql.Clear;
    sql.Add('insert into clients_pack (id_main_data, id_clients) values (' + inttostr(id_maindata) + ',' + inttostr(id_client) + ')');
    execsql;
  end;
end;

function TdmMain.ClientRefrAndEdit(id_client: integer): integer;
var
  res : integer;
begin
  qCurClient.close;
  qCurClient.ParamByName('id').AsInteger := id_client;
  refr(dmmain.qCurClient, id_client);
  qCurClient.Edit;
  res := 1;
  result := res;
end;

procedure TdmMain.cnct;
var
  ini : tinifile;
begin
  if ibdbMain.Connected then
    ibdbMain.Connected := false;

  ini := TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini')) ;

  ibdbMain.DatabaseName := ini.ReadString('DB', 'Database', '');

  freeandnil(ini);

  refr(qUsers);
  OpDct;

  SetMDSelDateRange(GetSettMDDateFrom, GetSettMDDateTo);

  refr(qMaindata);
end;

procedure TdmMain.CommT(var tr : tibtransaction);
begin
  if tr.InTransaction then
    tr.CommitRetaining;
end;

procedure TdmMain.StartT(var tr : tibtransaction);
begin
  if not tr.InTransaction then
    tr.StartTransaction;
end;

function TdmMain.UpdSelFromDt(dt : tdatetime): string;
begin
  result := UpdSett('DATE_SELECT_FROM', '', 1, dt);
//  'update settings set DATE_SELECT_FROM = ' + quotedstr(datetimetostr(dt) + ' where id_users = ' + inttostr(dmmain.id_user));
end;

function TdmMain.UpdSelToDt(dt : tdatetime): string;
begin
  result := UpdSett('DATE_SELECT_TO', '', 1, dt);
//  result := 'update settings set DATE_SELECT_TO = ' + quotedstr(datetimetostr(dt) + ' where id_users = ' + inttostr(dmmain.id_user));
end;


function TdmMain.UpdSett(fld, valstr : string; mode : integer; valdt : tdatetime; valint : integer = 0) : string;
begin
  case mode of
    0: // string or integer
      result := 'update settings set ' + fld + ' = ' + valstr + ' where id_users = ' + inttostr(dmmain.id_user);
    1: // datetime
      result := 'update settings set ' + fld + ' = ' + quotedstr(datetimetostr(valdt)) + ' where id_users = ' + inttostr(dmmain.id_user);
  end;
end;

procedure TdmMain.RollT(var tr : tibtransaction);
begin
  if tr.InTransaction then
    tr.Rollback;
end;

function TdmMain.CreateNewClient(id_users, id_maindata: integer): integer;
var
  id_client : integer;
begin
  id_client := 0;

  try
    with spNewClient do
    begin
      prepare;
      params.ParamByName('id_users').AsInteger    := id_users;
      params.ParamByName('id_maindata').AsInteger := id_maindata;
      execproc;
    end;

    id_client := spNewClient.params.ParamByName('id').AsInteger;
  except
    on e:exception do
      showmessage('Ошибка в CreateNewClient : ' + e.Message);
  end;

  result := id_client;
end;

function TdmMain.CreateNewMainData(id_users: integer): integer;
var
  id_maindata : integer;
begin
  id_maindata := 0;

  try
    with spNewMainData do
    begin
      prepare;
      params.ParamByName('id_users').AsInteger := id_users;
      execproc;
    end;

    id_maindata := spNewMainData.params.ParamByName('id').AsInteger;
  except
    on e:exception do
      showmessage('Ошибка в CreateNewMainData : ' + e.Message);
  end;

  result := id_maindata;
end;
                                                                           // 1 - путевка, 2 - справочник
procedure TdmMain.DictWork(q : tibdataset; qidfld : string; capt : string; mode : integer);
var
  frm : tfrmdict;
begin
  if mode = 1 then
    frm := tfrmdict.CreateDict(dmMain.qMDCur.FieldByName(qidfld).AsInteger, capt, q)
  else
  if mode = 2 then
    frm := tfrmdict.CreateDict(0, capt, q)
  else
    exit;

  if frm.ShowModal = mrOK then
  begin
    q.close;
    q.open;
    q.Locate('id', frm.tag, []);
    if mode = 1 then
      dmMain.qMDCur.FieldByName(qidfld).AsInteger := frm.tag;
  end;

  freeandnil(frm);
end;

function TdmMain.exec(var q: tibquery; mode : integer = 0; sqltxt : string = ''; isgetid : boolean = false; table : string = ''; id : integer = 0) : integer;
begin
  result := -1;

  case mode of
    0:
    begin
      try
        with q do
        begin
          execsql;
        end;
        result := mode;
      except
        on e:exception do
        begin
          showmessage('Ошибка в exec(' + inttostr(mode) + ') : ' + e.Message);
          result := -1;
        end;
      end;
    end;
    1:
    begin
      try
        with q do
        begin
          close;
          sql.Clear;
          sql.Add(sqltxt);
          execsql;
        end;
        result := mode;
      except
        on e:exception do
        begin
          showmessage('Ошибка в exec(' + inttostr(mode) + ') : ' + e.Message);
          result := -1;
        end;
      end;
    end;
  end;
end;

procedure TdmMain.DataModuleCreate(Sender: TObject);
begin
  try
    cnct;
  except
    on e:exception do
      showmessage('Ошибка в DataModuleCreate : ' + e.Message);
  end;

  htlid := 0;
  opid  := 0;
end;

procedure TdmMain.DeleteClient(clid: integer);
begin
  if MessageDlg('Удалить клиента? Действие необратимо!', mtCustom, [mbYes, mbCancel], 0) = mrYes then
  begin
    with qvar do
    begin
      close;
      sql.Clear;
      sql.Add('delete from clients where id = ' + inttostr(clid));
      execsql;
    end;
  end;

  refr(qClients, 0);
end;

procedure TdmMain.DeleteCurrentClient(clid, mdid: integer);
begin
  with qvar do
  begin
    close;
    sql.Clear;
    sql.Add('delete from clients_pack where id_clients = ' + inttostr(clid) + ' and id_main_data = ' + inttostr(mdid));
    execsql;
  end;
end;

procedure TdmMain.DeleteMaindata(id, mode: integer);
var
  isDelete : boolean;
begin
  isDelete := true;

  if mode = 1 then
  begin
    if MessageDlg('Удалить путевку? Действие необратимо!', mtCustom, [mbYes, mbCancel], 0) = mrYes then
      isDelete := true
    else
      isDelete := false;
  end;

  if isDelete then
  begin
    with qvar do
    begin
      close;
      sql.Clear;
      sql.Add('delete from main_data where id = ' + inttostr(id));
      execsql;
    end;
    with qvar do
    begin
      close;
      sql.Clear;
      sql.Add('delete from warn where id_main_data = ' + inttostr(id));
      execsql;
    end;
  end;

  refr(qMainData, 0);
end;

function TdmMain.ExecReminders : integer;
begin
  startt(trmain);

  with qvar do
  begin
    close;
    sql.Clear;
    sql.Add('execute procedure create_warn');
    execsql;
  end;

  with qvar do
  begin
    close;
    sql.Clear;
    sql.Add('select count(*) from warn');
    open;
  end;

  commt(trmain);

  result := qvar.Fields[0].AsInteger;
end;

function TdmMain.GetSettMDDateFrom: tdatetime;
begin
  with qvar do
  begin
    close;
    sql.Clear;
    sql.Add('select DATE_SELECT_FROM from settings where id_users = ' + inttostr(dmmain.id_user));
    open;
  end;

  if qvar.RecordCount > 0 then
    result := qvar.fields[0].asdatetime
  else
    result := now - 30;
end;

function TdmMain.GetSettMDDateTo: tdatetime;
begin
  with qvar do
  begin
    close;
    sql.Clear;
    sql.Add('select DATE_SELECT_TO from settings where id_users = ' + inttostr(dmmain.id_user));
    open;
  end;

  if qvar.RecordCount > 0 then
    result := qvar.fields[0].asdatetime
  else
    result := now + 30;
end;

procedure TdmMain.OpDct;
begin
  refr(qTours);
  refr(qOperators);
  refr(qHotels);
  refr(qClients);
  refr(qWarn, id_warn);
  refr(qTypefood);
  refr(qtyperoom);
  refr(qcurr);
end;

procedure TdmMain.qClientsFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  Accept := Pos(client_srnm, DataSet.FieldByName('SURNAME').AsString) > 0;
end;

procedure TdmMain.refr(q: tibquery; id: integer);
begin
  with q do
  begin
    q.Active := false;
    q.Active := true;
    q.Last;
    q.First;
    q.Locate('id', id, []);
  end;
end;

procedure TdmMain.refr(q: tibdataset; id: integer);
begin
  with q do
  begin
    q.Active := false;
    q.Active := true;
    q.Last;
    q.First;
    q.Locate('id', id, []);
  end;
end;

procedure TdmMain.refrParamId(q: tibdataset; id: integer);
begin
  with q do
  begin
    Active := false;
    ParamByName('id').AsInteger := id;
    Active := true;
  end;
end;

procedure TdmMain.RefrDB;
var
  id_user : integer;
  id_md : integer;
begin
  id_md := 0;
  id_user := qusers.FieldByName('id').AsInteger;

  if ((frmmain <> nil) and (frmmain.chbOpFltr.Checked = true) and (frmmain.dblkcbOper.text <> '')) then
//    if opid = 0 then
      opid := strtointdef(string(frmmain.dblkcbOper.KeyValue), 0);

  if ((frmmain <> nil) and (frmmain.chbHtlFltr.Checked = true) and (frmmain.dblkcbHotel.text <> '')) then
//    if htlid = 0 then
      htlid := strtointdef(string(frmmain.dblkcbHotel.KeyValue), 0);

  if ((qmaindata.Active) and (qmaindata.RecordCount > 0)) then
    id_md := qmaindata.FieldByName('id').AsInteger;
  
  cnct;

  qusers.Locate('id', id_user, []);
  qmaindata.Locate('id', id_md, []);
end;

function TdmMain.RefrWarn(mode: integer): string;
begin
  qwarn.Close;
  qwarn.SQL[8] := '';

  case mode of
    0:
    begin
      qwarn.SQL[8] := 'where w.id_warn_type in (2, 6)';
    end;
    1:
    begin
      qwarn.SQL[8] := 'where w.id_warn_type in (3, 4)';
    end;
    2:
    begin
      qwarn.SQL[8] := 'where w.id_warn_type in (1, 5)';
    end;
  end;

  refr(qwarn);
end;

procedure TdmMain.RemoveReminder(id, idwarntype, idmaindata, idclients : integer);
begin
  startt(trmain);

  case idwarntype of
  1:
    begin
      with qvar do
      begin
        close;
        sql.Clear;
        sql.Add('update main_data set IS_WARN_A_DONE = ''T'' where id = ' + inttostr(idmaindata));
        execsql;
      end;
    end;
  2:
    begin
      with qvar do
      begin
        close;
        sql.Clear;
        sql.Add('update main_data set IS_WARN_B_DONE = ''T'' where id = ' + inttostr(idmaindata));
        execsql;
      end;
    end;
  3:
    begin
      with qvar do
      begin
        close;
        sql.Clear;
        sql.Add('update clients set IS_WARN_C_DONE = ''T'' where id = ' + inttostr(idclients));
        execsql;
      end;
    end;
  4:
    begin
      with qvar do
      begin
        close;
        sql.Clear;
        sql.Add('update clients set IS_WARN_D_DONE = ''T'' where id = ' + inttostr(idclients));
        execsql;
      end;
    end;
  5:
    begin
      with qvar do
      begin
        close;
        sql.Clear;
        sql.Add('update main_data set IS_WARN_E_DONE = ''T'' where id = ' + inttostr(idmaindata));
        execsql;
      end;
    end;
  6:
    begin
      with qvar do
      begin
        close;
        sql.Clear;
        sql.Add('update main_data set IS_WARN_F_DONE = ''T'' where id = ' + inttostr(idmaindata));
        execsql;
      end;
    end;
  end;

  with qvar do
  begin
    close;
    sql.Clear;
    sql.Add('delete from warn where id = ' + inttostr(id));
    execsql;
  end;

  commt(trmain);

  dmmain.refr(dmmain.qWarn);
end;

procedure TdmMain.SaveClientData(id_client : integer);
begin
  if qCurClient.State = dsEdit then
    dmmain.qCurClient.Post;
  ClientRefrAndEdit(id_client);
  dmmain.refr(dmmain.qClientsData, id_client);
end;

function TdmMain.SetMDSelDateRange(dtfrom, dtto: tdatetime) : string;
var
  str : string;
begin
  if qMainData.Active then
    qMainData.Close;

  str := 'where md.date_begin >= ' + quotedstr(datetimetostr(dtfrom)) +
    ' and md.date_begin < ' + quotedstr(datetimetostr(dtto + 1));

  if (frmmain <> nil) then
  begin
    frmmain.dblkcbOper.KeyValue  := opid;
    frmmain.dblkcbHotel.KeyValue := htlid;

    if  ((frmmain.edtClFiltr.Text <> '') and (frmmain.chbClFltr.checked = true)) then
      str := str + ' and md.CLIENT_NAME like ' + quotedstr('%' + frmmain.edtClFiltr.Text + '%');

    if  ((frmmain.dblkcbOper.Text <> '') and (frmmain.chbOpFltr.checked = true)) then
      str := str + ' and md.ID_OPERATORS = ' + inttostr(opid);

    if  ((frmmain.dblkcbHotel.Text <> '') and (frmmain.chbHtlFltr.checked = true)) then
      str := str + ' and md.ID_HOTELS = ' + inttostr(htlid);
  end;

  dmmain.qMainData.SQL[7] := str;

  dmmain.qMDCur.SelectSQL[0] := 'select md.* from main_data md ' + str;

  result := str;
end;

procedure TdmMain.refr(q: tibdataset);
var
  id : integer;
begin
  id := 0;

  if q.Active then
    id := q.FieldByName('id').asinteger;

  with q do
  begin
    q.Active := false;
    q.Active := true;
    q.Last;
    q.First;
    q.Locate('id', id, []);
  end;
end;

procedure TdmMain.refr(q: tibquery);
var
  id : integer;
begin
  id := 0;

  if (q.Active and (q.RecordCount > 0)) then
    id := q.FieldByName('id').asinteger;

  with q do
  begin
    q.Active := false;
    q.Active := true;
    q.Last;
    q.First;
    q.Locate('id', id, []);
  end;
end;

end.




