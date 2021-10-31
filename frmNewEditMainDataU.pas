unit frmNewEditMainDataU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, DB, IBCustomDataSet, IBQuery,
  StdCtrls, ExtCtrls, Mask, ComCtrls,
  DBDateTimeEdit, Grids, DBGrids, DBCtrls;

type
  TfrmNewEditMainData = class(TForm)
    pcMainData: TPageControl;
    tsTourData: TTabSheet;
    tsClientData: TTabSheet;
    pnlTour: TPanel;
    lblID: TLabel;
    dbID: TDBText;
    Label1: TLabel;
    dbtxtUser: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    dblkcbOper: TDBLookupComboBox;
    dblkcbHotel: TDBLookupComboBox;
    dbmmComment: TDBMemo;
    dbdtedtDateBegin: TDBDateTimeEdit;
    Label13: TLabel;
    dbdtedtDateEnd: TDBDateTimeEdit;
    Label14: TLabel;
    btnEdtOperDict: TButton;
    btnEdtHotelDict: TButton;
    pnlClientsData: TPanel;
    dbgrdClientsData: TDBGrid;
    Panel1: TPanel;
    DBEdit1: TDBEdit;
    DBText1: TDBText;
    DBEdit2: TDBEdit;
    DBDateTimeEdit1: TDBDateTimeEdit;
    DBDateTimeEdit2: TDBDateTimeEdit;
    DBDateTimeEdit3: TDBDateTimeEdit;
    DBMemo1: TDBMemo;
    Panel2: TPanel;
    lblClId: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit4: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit5: TDBEdit;
    Label21: TLabel;
    DBEdit6: TDBEdit;
    Label22: TLabel;
    DBComboBox1: TDBComboBox;
    Label23: TLabel;
    btnClientAdd: TButton;
    btnClientEdit: TButton;
    btnClientDelete: TButton;
    Label24: TLabel;
    lblCntClnt: TLabel;
    Button1: TButton;
    Panel3: TPanel;
    btnCount: TButton;
    btnSaveAndClose: TButton;
    btnCancel: TButton;
    TabSheet1: TTabSheet;
    pnlCosts: TPanel;
    Label30: TLabel;
    dblkcbTypeRoom: TDBLookupComboBox;
    Button2: TButton;
    Label31: TLabel;
    dblkcbTypeFood: TDBLookupComboBox;
    Button3: TButton;
    Label32: TLabel;
    dbeFlyOut: TDBEdit;
    Label33: TLabel;
    dbeFlyIn: TDBEdit;
    dbeTransfer: TDBEdit;
    dbeInsur: TDBEdit;
    Label34: TLabel;
    Label35: TLabel;
    GroupBox1: TGroupBox;
    Panel7: TPanel;
    Label48: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    dbedtCostManag: TDBEdit;
    dblcbCurrPayCostManag: TDBLookupComboBox;
    dbedtCostManagInCurr: TDBEdit;
    dbedtExchRtCostManag: TDBEdit;
    dbdttmEdtExCManag: TDBDateTimeEdit;
    Panel6: TPanel;
    Label10: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    dbedtCostToOperator: TDBEdit;
    dblcbCurrPayCostOper: TDBLookupComboBox;
    dbedtCostToOperatorInCurr: TDBEdit;
    dbedtExchRtCostToOper: TDBEdit;
    dbdttmEdtExCToOper: TDBDateTimeEdit;
    pnlOpP1: TPanel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    dbedtCostOperPaid1: TDBEdit;
    dblcbCurrPayCostOperPaid1: TDBLookupComboBox;
    dbedtCostOperPaidInCurr1: TDBEdit;
    dbedtExchRtCostOperPaid1: TDBEdit;
    dbdttmEdtExCOpPaid1: TDBDateTimeEdit;
    GroupBox2: TGroupBox;
    Panel9: TPanel;
    Label12: TLabel;
    dbtxtBonus: TDBText;
    lblBonus: TLabel;
    dbdtedtDebtRemind: TDBDateTimeEdit;
    pnlPay1: TPanel;
    Label5: TLabel;
    Label36: TLabel;
    Label39: TLabel;
    Label42: TLabel;
    Label45: TLabel;
    dbedtCostPaid1: TDBEdit;
    dbcbCstPFxd1: TDBCheckBox;
    dblcbCurrPay1: TDBLookupComboBox;
    dbedtCostCurr1: TDBEdit;
    dbedtExchRt1: TDBEdit;
    dbdttmEdt1: TDBDateTimeEdit;
    pnlPay2: TPanel;
    Label27: TLabel;
    Label37: TLabel;
    Label40: TLabel;
    Label43: TLabel;
    Label46: TLabel;
    dbedtCostPaid2: TDBEdit;
    dbcbCstPFxd2: TDBCheckBox;
    dblcbCurrPay2: TDBLookupComboBox;
    dbedtCostCurr2: TDBEdit;
    dbedtExchRt2: TDBEdit;
    dbdttmEdt2: TDBDateTimeEdit;
    pnlPay3: TPanel;
    Label28: TLabel;
    Label38: TLabel;
    Label41: TLabel;
    Label44: TLabel;
    Label47: TLabel;
    dbedtCostPaid3: TDBEdit;
    dbcbCstPFxd3: TDBCheckBox;
    dblcbCurrPay3: TDBLookupComboBox;
    dbedtCostCurr3: TDBEdit;
    dbedtExchRt3: TDBEdit;
    dbdttmEdt3: TDBDateTimeEdit;
    Panel4: TPanel;
    Label49: TLabel;
    lblResCost: TLabel;
    pnlAdmin: TPanel;
    Label6: TLabel;
    dbedtManagPerc: TDBEdit;
    dbtxtManagComis: TDBText;
    Label8: TLabel;
    dbtxtDebt: TDBText;
    Label7: TLabel;
    pnlOpP2: TPanel;
    Label25: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    dbedtCostOperPaid2: TDBEdit;
    dblcbCurrPayCostOperPaid2: TDBLookupComboBox;
    dbedtCostOperPaidInCurr2: TDBEdit;
    dbedtExchRtCostOperPaid2: TDBEdit;
    dbdttmEdtExCOpPaid2: TDBDateTimeEdit;
    dbcbCstPOFxd1: TDBCheckBox;
    dbcbCstPOFxd2: TDBCheckBox;
    Panel10: TPanel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    dblcbCurrPayTotal: TDBLookupComboBox;
    dbedtCostTotalInCurr: TDBEdit;
    dbedtExchRtCostTotal: TDBEdit;
    dbdttmEdtExCTotal: TDBDateTimeEdit;
    dbedtCostOper: TDBEdit;
    Panel11: TPanel;
    Label4: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    dblcbCurrCostAdd: TDBLookupComboBox;
    dbedtCostAddInCurr: TDBEdit;
    dbedtExchRtCostAdd: TDBEdit;
    dbdttmEdtExCAdd: TDBDateTimeEdit;
    dbedtCostAdd: TDBEdit;
    dbedtCostTotalPercDisc: TDBEdit;
    Label77: TLabel;
    Label78: TLabel;
    lblTotCostDiscRur: TLabel;
    Label80: TLabel;
    lblTotCostDiscCurr: TLabel;
    Panel12: TPanel;
    Label29: TLabel;
    dbtxtDebtOper: TDBText;
    Label67: TLabel;
    dbtxtDebtOperCurr: TDBText;
    Label26: TLabel;
    dbdtedtOperDebtRemind: TDBDateTimeEdit;
    Label79: TLabel;
    lblTotCostWithDiscRur: TLabel;
    Label82: TLabel;
    lblTotCostWithDiscCurr: TLabel;
    Label81: TLabel;
    lblPaidClCurr: TLabel;
    Label84: TLabel;
    lblDebtClCurr: TLabel;
    procedure btnCountClick(Sender: TObject);
    procedure btnSaveAndCloseClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbgrdClientsDataCellClick(Column: TColumn);
    procedure btnClientAddClick(Sender: TObject);
    procedure btnClientEditClick(Sender: TObject);
    procedure btnClientDeleteClick(Sender: TObject);
    procedure RefrClientCount;
    procedure btnEdtOperDictClick(Sender: TObject);
    procedure btnEdtHotelDictClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure CalcForm;
    procedure CalcCurrRubSum(var dblcbCurr : tdblookupcombobox; var dbedtCostCurr, dbedtCostPaid, dbedtExchRt : tdbedit);
    procedure SetColors;
  private
    { Private declarations }
  public
    constructor CreateEditMainData( id : integer; cptn : string);
  end;

var
  frmNewEditMainData: TfrmNewEditMainData;
  is_new : boolean;
  mdid   : integer;

implementation

uses
  dmmainu, frmdictu, FrmClientsDictU, FrmMainU;

{$R *.dfm}

{ TfrmNewEditTour }

procedure TfrmNewEditMainData.btnCancelClick(Sender: TObject);
begin
  dmmain.qMDCur.Close;

  if is_new = true then
  begin
    dmmain.DeleteMaindata(dmMain.qMainData.FieldByName('id').AsInteger, 0);
    dmmain.trMain.CommitRetaining;
    dmmain.refr(dmmain.qMainData);
  end
  else
  begin
    dmmain.refr(dmmain.qMainData, mdid);
  end;
end;

procedure TfrmNewEditMainData.btnClientAddClick(Sender: TObject);
var
  new_cl_id : integer;
begin
  new_cl_id := dmmain.CreateNewClient(dmmain.qUsers.FieldByName('id').AsInteger, mdid);
  dmmain.refr(dmmain.qClientsData, new_cl_id);
  RefrClientCount;
  dmmain.ClientRefrAndEdit(new_cl_id);
end;

procedure TfrmNewEditMainData.btnClientDeleteClick(Sender: TObject);
begin
  if dmmain.qClientsData.RecordCount < 1 then
    exit;
  dmmain.DeleteCurrentClient(dmmain.qClientsData.fieldbyname('id_clients').AsInteger, mdid);
  dmmain.refr(dmmain.qClientsData, 0);
  RefrClientCount;
end;

procedure TfrmNewEditMainData.btnClientEditClick(Sender: TObject);
begin
  if dmmain.qClientsData.RecordCount < 1 then exit;
  dmmain.qCurClient.post;
  dmmain.refr(dmmain.qClientsData, dmmain.qClientsData.fieldbyname('id').AsInteger);
  dmmain.ClientRefrAndEdit(dmmain.qClientsData.fieldbyname('id').AsInteger);
end;

procedure TfrmNewEditMainData.btnCountClick(Sender: TObject);
begin
  CalcForm;
  dmmain.qMDCur.post;
  dmmain.refr(dmmain.qMDCur, mdid);
  dmmain.qMDCur.Edit;
  dmmain.SaveClientData(dmmain.qClientsData.FieldByName('id').AsInteger);
end;

procedure TfrmNewEditMainData.btnEdtHotelDictClick(Sender: TObject);
var
  q   : tibdataset;
  qidfld : string;
  capt : string;
begin
  q := dmmain.qHotels;
  qidfld := 'ID_HOTELS';
  capt := 'Отели';
  dmmain.DictWork(q, qidfld, capt, 1);
end;

procedure TfrmNewEditMainData.btnEdtOperDictClick(Sender: TObject);
var
  q   : tibdataset;
  qidfld : string;
  capt : string;
begin
  q := dmmain.qOperators;
  qidfld := 'ID_OPERATORS';
  capt := 'Оператор';
  dmmain.DictWork(q, qidfld, capt, 1);
end;
             
procedure TfrmNewEditMainData.btnSaveAndCloseClick(Sender: TObject);
begin
  CalcForm;
  dmmain.qMDCur.Post;
  dmmain.refr(dmmain.qMainData, mdid);
  dmmain.SaveClientData(dmmain.qClientsData.FieldByName('id').AsInteger);

  dmmain.SET_MAIN_DATA_CLIENT_NAME.ParamByName('MAIN_DATA_ID').AsInteger := mdid;
  dmmain.SET_MAIN_DATA_CLIENT_NAME.ExecProc;

//  dmmain.trMain.CommitRetaining; // add 02072013
  close;
end;

procedure TfrmNewEditMainData.Button1Click(Sender: TObject);
var
  frm : TFrmClientsDict;
  id : integer;
begin
  if dbgrdClientsData.DataSource.DataSet.RecordCount > 0 then
    id := dbgrdClientsData.DataSource.DataSet.FieldByName('id').AsInteger
  else
    id := 0;

  frm := TFrmClientsDict.CreateForm(id, 'Выбор из справочника');

  if frm.ShowModal = mrOK then
  begin
    if id <> frm.id then
    begin
      id := frm.id;
      dmmain.AddClientToMainData(mdid, id);
    end;
  end;

  frm.Close;
  FreeAndNil(frm);

  if id > 0 then
  begin
    dmmain.refr(dmmain.qClientsData, id);
    RefrClientCount;
    dmmain.ClientRefrAndEdit(id);
  end;
end;

procedure TfrmNewEditMainData.Button2Click(Sender: TObject);
var
  q   : tibdataset;
  qidfld : string;
  capt : string;
begin
  q := dmmain.qtyperoom;
  qidfld := 'ID_type_room';
  capt := 'Типы номеров';
  dmmain.DictWork(q, qidfld, capt, 1);
end;

procedure TfrmNewEditMainData.Button3Click(Sender: TObject);
var
  q   : tibdataset;
  qidfld : string;
  capt : string;
begin
  q := dmmain.qtypefood;
  qidfld := 'ID_type_food';
  capt := 'Типы питания';
  dmmain.DictWork(q, qidfld, capt, 1);
end;

procedure TfrmNewEditMainData.CalcCurrRubSum(var dblcbCurr : tdblookupcombobox; var dbedtCostCurr, dbedtCostPaid, dbedtExchRt : tdbedit);
begin
  if dblcbCurr.KeyValue <> 1 then
  begin
    if strtofloatdef(dbedtCostCurr.Text, 0) <> 0 then
      dbedtCostPaid.Text := floattostr(strtofloatdef(dbedtCostCurr.Text, 0) * strtofloatdef(dbedtExchRt.Text, 0))
    else
      dbedtCostCurr.Text := floattostr(strtofloatdef(dbedtCostPaid.Text, 0) / strtofloatdef(dbedtExchRt.Text, 1));
  end;
end;

procedure TfrmNewEditMainData.CalcForm;
begin
  CalcCurrRubSum(dblcbCurrPayTotal, dbedtCostTotalInCurr, dbedtCostOper, dbedtExchRtCostTotal);

  if strtofloatdef(dbedtCostTotalPercDisc.Text, 0) > 0 then
  begin
{
    lblTotCostDiscRur.Caption := floattostr(strtofloatdef(dbedtCostOper.Text, 0) -
      strtofloatdef(dbedtCostOper.Text, 0) / 100 * strtofloatdef(dbedtCostTotalPercDisc.Text, 0));

    lblTotCostDiscCurr.Caption := floattostr(strtofloatdef(dbedtCostTotalInCurr.Text, 0) -
      strtofloatdef(dbedtCostTotalInCurr.Text, 0) / 100 * strtofloatdef(dbedtCostTotalPercDisc.Text, 0));
}
    lblTotCostDiscRur.Caption := floattostr(strtofloatdef(dbedtCostOper.Text, 0) / 100 * strtofloatdef(dbedtCostTotalPercDisc.Text, 0));
    lblTotCostDiscCurr.Caption := floattostr(strtofloatdef(dbedtCostTotalInCurr.Text, 0) / 100 * strtofloatdef(dbedtCostTotalPercDisc.Text, 0));

    lblTotCostWithDiscRur.Caption  := floattostr(strtofloatdef(dbedtCostOper.text, 0) - strtofloatdef(lblTotCostDiscRur.Caption, 0));
    lblTotCostWithDiscCurr.Caption := floattostr(strtofloatdef(dbedtCostTotalInCurr.text, 0) - strtofloatdef(lblTotCostDiscCurr.Caption, 0));
  end;

  CalcCurrRubSum(dblcbCurrCostAdd, dbedtCostAddInCurr, dbedtCostAdd, dbedtExchRtCostAdd);

  dbedtCostManag.Text       := floattostr(strtofloatdef(lblTotCostWithDiscRur.Caption, 0) +  strtofloatdef(dbedtCostAdd.Text, 0));
  dbedtCostManagInCurr.Text := floattostr(strtofloatdef(lblTotCostWithDiscCurr.Caption, 0) + strtofloatdef(dbedtCostAddInCurr.Text, 0));

  CalcCurrRubSum(dblcbCurrPay1, dbedtCostCurr1, dbedtCostPaid1, dbedtExchRt1);
  CalcCurrRubSum(dblcbCurrPay2, dbedtCostCurr2, dbedtCostPaid2, dbedtExchRt2);
  CalcCurrRubSum(dblcbCurrPay3, dbedtCostCurr3, dbedtCostPaid3, dbedtExchRt3);

  lblResCost.Caption := floattostr(strtofloatdef(dbedtCostPaid1.Text, 0) +
    strtofloatdef(dbedtCostPaid2.Text, 0) + strtofloatdef(dbedtCostPaid3.Text, 0));

//  CalcCurrRubSum(dblcbCurrPayCostManag, dbedtCostManagInCurr, dbedtCostManag, dbedtExchRtCostManag);

  CalcCurrRubSum(dblcbCurrPayCostOper, dbedtCostToOperatorInCurr, dbedtCostToOperator, dbedtExchRtCostToOper);
  CalcCurrRubSum(dblcbCurrPayCostOperPaid1, dbedtCostOperPaidInCurr1, dbedtCostOperPaid1, dbedtExchRtCostOperPaid1);
  CalcCurrRubSum(dblcbCurrPayCostOperPaid2, dbedtCostOperPaidInCurr2, dbedtCostOperPaid2, dbedtExchRtCostOperPaid2);

  lblPaidClCurr.Caption := floattostr(strtofloatdef(dbedtCostCurr1.Text, 0) + strtofloatdef(dbedtCostCurr2.Text, 0) + strtofloatdef(dbedtCostCurr3.Text, 0));
  lblDebtClCurr.Caption := floattostr(strtofloatdef(dbedtCostManagInCurr.Text, 0) - strtofloatdef(lblPaidClCurr.Caption, 0));

  SetColors;
end;

constructor TfrmNewEditMainData.CreateEditMainData(id: integer; cptn: string);
begin
  inherited Create(application);
  caption := cptn;
  is_new  := false;

  dmmain.CommT(dmmain.trMain);
  dmmain.StartT(dmmain.trMain);

  if (id = 0) then
  begin
    mdid   := dmmain.CreateNewMainData(dmmain.qUsers.FieldByName('id').AsInteger);
    is_new := true;
  end
  else
  begin
    mdid := id;
  end;

  dmmain.CommT(dmmain.trMain);
  dmmain.StartT(dmmain.trMain);

  dmmain.OpDct;

  dmmain.refr(dmmain.qMainData, mdid);
  dmmain.refr(dmmain.qMDCur, mdid);

  dmmain.qClientsData.ParamByName('mdid').AsInteger := mdid;
  dmmain.refr(dmmain.qClientsData, 0);

  RefrClientCount;

  dmmain.qMDCur.Edit;
end;

procedure TfrmNewEditMainData.dbgrdClientsDataCellClick(Column: TColumn);
begin
  dmmain.ClientRefrAndEdit(dmmain.qClientsData.fieldbyname('id').AsInteger);
end;

procedure TfrmNewEditMainData.FormActivate(Sender: TObject);
begin
  lblBonus.Visible   := frmmain.is_dir;
  dbtxtBonus.Visible := frmmain.is_dir;
  pnlAdmin.Visible   := frmmain.is_dir;

  Panel6.Visible   := frmmain.is_dir;
  pnlOpP1.Visible   := frmmain.is_dir;
  pnlOpP2.Visible   := frmmain.is_dir;
  Panel12.Visible   := frmmain.is_dir;

  pnlOpP1.Enabled   := (dmmain.qMDCur.FieldByName('IS_OPPAID_1').asstring <> 'T');
  pnlOpP2.Enabled   := (dmmain.qMDCur.FieldByName('IS_OPPAID_2').asstring <> 'T');

  pnlPay1.Enabled   := (dmmain.qMDCur.FieldByName('IS_CPAID_1').asstring <> 'T');
  pnlPay2.Enabled   := (dmmain.qMDCur.FieldByName('IS_CPAID_2').asstring <> 'T');
  pnlPay3.Enabled   := (dmmain.qMDCur.FieldByName('IS_CPAID_3').asstring <> 'T');

  CalcForm;
end;

procedure TfrmNewEditMainData.RefrClientCount;
begin
  lblCntClnt.Caption := inttostr(dmmain.qClientsData.RecordCount);
end;

procedure TfrmNewEditMainData.SetColors;
begin
  if dbtxtDebt.Caption <> '0' then
    dbtxtDebt.Color := clYellow
  else
    dbtxtDebt.Color := clMoneyGreen;

  if dbtxtDebtOper.Caption <> '0' then
    dbtxtDebtOper.Color := clYellow
  else
    dbtxtDebtOper.Color := clMoneyGreen;

  if dbtxtDebtOperCurr.Caption <> '0' then
    dbtxtDebtOperCurr.Color := clYellow
  else
    dbtxtDebtOperCurr.Color := clMoneyGreen;
end;

end.
