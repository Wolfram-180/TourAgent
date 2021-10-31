unit FrmMainU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, Menus, StdCtrls, 
  ActnList, Grids, DBGrids, ExtCtrls, DB, IBCustomDataSet, frxDesgn, frxClass,
  frxDBSet, frxExportImage, frxExportXLS, frxExportPDF, ComCtrls, DBCtrls;

type
  TFrmMain = class(TForm)
    mnMain: TMainMenu;
    dfasdf1: TMenuItem;
    miReports: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Panel1: TPanel;
    dbgrMainData: TDBGrid;
    Panel2: TPanel;
    btnRefrMainData: TButton;
    miReportSales: TMenuItem;
    N4: TMenuItem;
    miOperatorsDict: TMenuItem;
    miHotelsDict: TMenuItem;
    miClientsDict: TMenuItem;
    dtpMDFrom: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    dtpMDTo: TDateTimePicker;
    N3: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Panel3: TPanel;
    btnAddTour: TButton;
    btnEditTour: TButton;
    btnPrintTour: TButton;
    btnDeleteTour: TButton;
    Panel4: TPanel;
    edtClFiltr: TEdit;
    Label3: TLabel;
    chbClFltr: TCheckBox;
    Panel5: TPanel;
    Label4: TLabel;
    chbOpFltr: TCheckBox;
    dblkcbOper: TDBLookupComboBox;
    btnReminders: TButton;
    Button1: TButton;
    lblReminders: TLabel;
    Panel6: TPanel;
    Label5: TLabel;
    chbHtlFltr: TCheckBox;
    dblkcbHotel: TDBLookupComboBox;
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddTourClick(Sender: TObject);
    procedure btnEditTourClick(Sender: TObject);
    procedure btnRefrMainDataClick(Sender: TObject);
    procedure btnDeleteTourClick(Sender: TObject);
    procedure btnRemindersClick(Sender: TObject);
    procedure lblRemindersClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure miOperatorsDictClick(Sender: TObject);
    procedure miHotelsDictClick(Sender: TObject);
    procedure miClientsDictClick(Sender: TObject);
    procedure miReportSalesClick(Sender: TObject);
    procedure btnPrintTourClick(Sender: TObject);
    procedure dbgrMainDataDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dtpMDFromCloseUp(Sender: TObject);
    procedure dtpMDToCloseUp(Sender: TObject);
    procedure dbgrMainDataDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure N3Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
  private
    { Private declarations }
  public
    is_warnshowed : boolean;
    is_dir : boolean;
    is_license : boolean; 
  end;

var
  FrmMain: TFrmMain;

implementation

uses
  dmMainU, frmloginu, frmNewEditMainDataU, frmAboutU, FrmRemindersU, FrmClientsDictU, FrmRepSettU, dmrepu;

{$R *.dfm}

var
  frmNewEditMainData : TfrmNewEditMainData;

procedure TFrmMain.btnAddTourClick(Sender: TObject);
begin
  if not is_license then
  begin
    with dmmain.qvar do
    begin
      close;
      sql.Clear;
      sql.Add('select count(*) from main_data');
      open;
    end;

    if dmmain.qvar.Fields[0].AsInteger >= 20 then
    begin
      showmessage('Извините, вы достигли ограничения демо-версии : 20 путевок');
      exit;
    end;
  end;

  frmNewEditMainData := tfrmNewEditMainData.CreateEditMainData(0, 'Создание путевки');

  if frmNewEditMainData.ShowModal = mrOK then
  begin

  end
  else
  begin

  end;

  freeandnil(frmNewEditMainData);

  formactivate(sender);
end;

procedure TFrmMain.btnDeleteTourClick(Sender: TObject);
begin
  dmmain.DeleteMaindata(dmMain.qMainData.FieldByName('id').AsInteger, 1);
  formactivate(sender);
end;

procedure TFrmMain.btnEditTourClick(Sender: TObject);
begin
  frmNewEditMainData := tfrmNewEditMainData.CreateEditMainData(dmMain.qMainData.FieldByName('id').asinteger, 'Редактирование путевки');

  if frmNewEditMainData.ShowModal = 0 then
  begin

  end;

  freeandnil(frmNewEditMainData);
  formactivate(sender);
end;

procedure TFrmMain.btnRefrMainDataClick(Sender: TObject);
begin
  FormActivate(sender);
end;

procedure TFrmMain.btnRemindersClick(Sender: TObject);
var
  frm : TFrmReminders;
begin
  if is_warnshowed <> true then
  begin
    is_warnshowed := true;
    frm := TFrmReminders.CreateRmndr('Напоминания');
    frm.Show;
  end;
end;

procedure TFrmMain.btnPrintTourClick(Sender: TObject);
begin
  if dmMain.qMainData.Active then
  begin
    mdid := dmMain.qMainData.FieldByName('id').AsInteger;
    dmmain.refr(dmmain.qMDCur, mdid);
    dmmain.qHotels.Locate('id', dmMain.qMDCur.FieldByName('id_hotels').AsInteger, []);
    dmmain.qOperators.Locate('id', dmMain.qMDCur.FieldByName('ID_OPERATORS').AsInteger, []);
    dmmain.qtypefood.Locate('id', dmMain.qMDCur.FieldByName('id_type_food').AsInteger, []);
    dmmain.qtyperoom.Locate('id', dmMain.qMDCur.FieldByName('ID_type_room').AsInteger, []);
    dmmain.qClientsData.ParamByName('mdid').AsInteger := mdid;
    dmmain.refr(dmmain.qClientsData, 0);
    dmrep.fr.LoadFromFile('bill.fr3');
    dmrep.fr.PrepareReport(true);
    dmrep.fr.ShowReport();
  end;
end;

procedure TFrmMain.dbgrMainDataDblClick(Sender: TObject);
begin
  btnEditTour.OnClick(sender);
end;

procedure TFrmMain.dbgrMainDataDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if Column.FieldName = 'COST_DEBT' then
  begin
    if dbgrMainData.DataSource.DataSet.FieldByName('cost_debt').AsFloat > 0 then
    begin
      dbgrMainData.Canvas.Brush.Color := clYellow;
      dbgrMainData.Canvas.Font.Color  := clBlack;
    end
    else
    begin
      dbgrMainData.Canvas.Brush.Color := clMoneyGreen;
      dbgrMainData.Canvas.Font.Color  := clBlack;
    end;
  end
  else
  if Column.FieldName = 'COST_DEBT_TO_OPER' then
  begin
    if dbgrMainData.DataSource.DataSet.FieldByName('COST_DEBT_TO_OPER').AsFloat > 0 then
    begin
      dbgrMainData.Canvas.Brush.Color := clYellow;
      dbgrMainData.Canvas.Font.Color  := clBlack;
    end
    else
    begin
      dbgrMainData.Canvas.Brush.Color := clMoneyGreen;
      dbgrMainData.Canvas.Font.Color  := clBlack;
    end;
  end
  else
  begin
    dbgrMainData.Canvas.Brush.Color := clWhite;
    dbgrMainData.Canvas.Font.Color  := clBlack;
  end;

  dbgrMainData.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFrmMain.dtpMDFromCloseUp(Sender: TObject);
begin
  dmmain.exec(dmmain.qvar, 1, dmmain.UpdSelFromDt(dtpMDFrom.Date));
  btnRefrMainDataClick(sender);
end;

procedure TFrmMain.dtpMDToCloseUp(Sender: TObject);
begin
  dmmain.exec(dmmain.qvar, 1, dmmain.UpdSelToDt(dtpMDTo.Date));
  btnRefrMainDataClick(sender);  
end;

procedure TFrmMain.FormActivate(Sender: TObject);
begin
  lblReminders.OnClick(sender);

  dtpMDFrom.DateTime := dmmain.GetSettMDDateFrom;
  dtpMDTo.DateTime   := dmmain.GetSettMDDateTo;

//  dmMain.qMainData.Filtered := false;

  dmmain.RefrDB;

//  if (dmMain.qMainData.active and (dmMain.qMainData.RecordCount > 0)) then
//  begin
//    if  ((frmmain.edtClFiltr.Text <> '') and (frmmain.chbClFltr.checked = true)) then
//      dmMain.qMainData.Filter := 'CLIENT_NAME = ' + quotedstr(frmmain.edtClFiltr.Text);
//    dmMain.qMainData.Filtered := true;
//  end;

  if not (dmMain.qMainData.active and (dmMain.qMainData.RecordCount > 0)) then
  begin
    btnEditTour.Enabled   := false;
    btnPrintTour.Enabled  := false;
    btnDeleteTour.Enabled := false;
  end
  else
  begin
    btnEditTour.Enabled   := true;
    btnPrintTour.Enabled  := true;
    btnDeleteTour.Enabled := true;
  end;

  is_dir := (dmmain.qusers.FieldByName('is_main').AsString = 'T');
  btnDeleteTour.Visible := is_dir;
end;

procedure TFrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmlogin.Close;
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  is_warnshowed := false;
  is_license    := true;
end;

procedure TFrmMain.lblRemindersClick(Sender: TObject);
var
  rmncnt : integer;
begin
  rmncnt := dmmain.ExecReminders;

  if rmncnt > 0 then
  begin
    lblReminders.Caption := '  Напоминаний : ' + inttostr(rmncnt) + '  ';
    btnReminders.Enabled := true;
    lblReminders.Transparent := false;
  end
  else
  begin
    lblReminders.Caption := '  Напоминаний нет  ';
    btnReminders.Enabled := false;
    lblReminders.Transparent := true;
  end;
end;

procedure TFrmMain.N1Click(Sender: TObject);
begin
  close;
end;

procedure TFrmMain.N2Click(Sender: TObject);
begin
  frmAbout.Visible := false;
  frmAbout.ShowModal;
end;

procedure TFrmMain.N3Click(Sender: TObject);
var
  q   : tibdataset;
  qidfld : string;
  capt : string;
begin
  q := dmmain.qtyperoom;
  qidfld := 'ID_type_room';
  capt := 'Типы номеров';
  dmmain.DictWork(q, qidfld, capt, 2);
end;

procedure TFrmMain.N5Click(Sender: TObject);
var
  q   : tibdataset;
  qidfld : string;
  capt : string;
begin
  q := dmmain.qtypefood;
  qidfld := 'ID_type_food';
  capt := 'Типы питания';
  dmmain.DictWork(q, qidfld, capt, 2);
end;

procedure TFrmMain.N6Click(Sender: TObject);
var
  oldpass, newpass1, newpass2 : string;
begin
  oldpass := InputBox('Введите текущий пароль', 'Введите текущий пароль', '');

  if oldpass <> dmmain.qUsers.FieldByName('pass').AsString then
  begin
    showmessage('Введен неверный пароль');
    exit;
  end
  else
  begin
    newpass1 := InputBox('Введите новый пароль', 'Введите новый пароль', '');
    newpass2 := InputBox('Введите новый пароль повторно', 'Введите новый пароль повторно', '');

    if newpass1 <> newpass2 then
    begin
      showmessage('Новые пароли не совпадают');
      exit;
    end
    else
    begin
      with dmmain.qvar do
      begin
        close;
        sql.Clear;
        sql.Add('update users set pass = ' + newpass2 + ' where id = ' + inttostr(dmmain.id_user));
        execsql;
      end;

      showmessage('Пароль изменен');
    end;
  end;
end;

procedure TFrmMain.miReportSalesClick(Sender: TObject);
var
  FrmRepSett : TFrmRepSett;
begin
  FrmRepSett := TFrmRepSett.CreateRep(1, dtpMDFrom.Date, dtpMDTo.Date);

  if FrmRepSett.ShowModal = mrOK then
  begin
  end;

  freeandnil(FrmRepSett);
end;

procedure TFrmMain.miOperatorsDictClick(Sender: TObject);
var
  q   : tibdataset;
  qidfld : string;
  capt : string;
begin
  q := dmmain.qOperators;
  qidfld := 'ID_OPERATORS';
  capt := 'Операторы';
  dmmain.DictWork(q, qidfld, capt, 2);
end;

procedure TFrmMain.miHotelsDictClick(Sender: TObject);
var
  q   : tibdataset;
  qidfld : string;
  capt : string;
begin
  q := dmmain.qHotels;
  qidfld := 'ID_HOTELS';
  capt := 'Отели';
  dmmain.DictWork(q, qidfld, capt, 2);
end;

procedure TFrmMain.miClientsDictClick(Sender: TObject);
var
  frm : TFrmClientsDict;
begin
  frm := TFrmClientsDict.CreateForm(0, 'Клиенты');

  if frm.ShowModal = mrOK then
  begin
  end;

  frm.Close;
  FreeAndNil(frm);
end;

end.
