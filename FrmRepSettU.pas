unit FrmRepSettU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DBCtrls, frxExportImage, frxExportXLS, frxClass,
  frxExportPDF, frxDBSet;

type
  TFrmRepSett = class(TForm)
    blb1: TLabel;
    dt1: TDateTimePicker;
    Label1: TLabel;
    dt2: TDateTimePicker;
    btnOK: TButton;
    btnCancel: TButton;
    Label2: TLabel;
    Label3: TLabel;
    chbAllUsers: TCheckBox;
    dblcbUsers: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dblcbUsersCloseUp(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure dblcbUsersKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblcbUsersKeyPress(Sender: TObject; var Key: Char);
    procedure dblcbUsersKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    id_report, id_value, id_maindata : integer;
    constructor CreateRep(id_rep : integer; date1, date2 : tdatetime);
  end;

var
  FrmRepSett: TFrmRepSett;

implementation

{$R *.dfm}

uses
  dmmainu, dmrepu, frmmainu;

{ TFrmRepSett }

procedure TFrmRepSett.btnOKClick(Sender: TObject);
var
  str, str_prev : string;
begin
  str_prev := dmmain.qMainData.SQL.Text;
  id_value := dblcbUsers.ListSource.DataSet.FieldByName('id').AsInteger;

  case id_report of
    1:
    begin
      str := 'where md.date_begin >= ' + quotedstr(datetimetostr(dt1.DateTime)) +
        ' and md.date_begin < ' + quotedstr(datetimetostr(dt2.DateTime + 1));

      if not chbAllUsers.checked then
        str := str + ' and md.id_users = ' + inttostr(id_value);

      dmmain.qMainData.Close;
      dmmain.qMainData.SQL[7] := str;
      dmmain.qMainData.open;

      if frmmain.is_dir then
        dmrep.fr.LoadFromFile('sales.fr3')
      else
        dmrep.fr.LoadFromFile('sales_manag.fr3');      

      dmrep.fr.PrepareReport(true);
      dmrep.fr.ShowReport();

      dmmain.refr(dmmain.qMainData, id_maindata);
    end;
  end;

  dmmain.qMainData.Close;
  dmmain.qMainData.SQL.Text := str_prev;
  dmmain.qMainData.open;
end;

constructor TFrmRepSett.CreateRep(id_rep: integer; date1, date2 : tdatetime);
begin
  inherited Create(Application);

  dt1.Date := date1;
  dt2.Date := date2;

  id_report   := id_rep;
  id_maindata := dmmain.qMainData.FieldByName('id').AsInteger;

  chbAllUsers.Enabled := frmmain.is_dir;
  chbAllUsers.checked := frmmain.is_dir;
  dblcbUsers.Enabled  := frmmain.is_dir;

  dmmain.qUsers.Locate('id', dmmain.id_user, []);
end;

procedure TFrmRepSett.dblcbUsersCloseUp(Sender: TObject);
begin
  chbAllUsers.Checked := false;
end;

procedure TFrmRepSett.dblcbUsersKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  dblcbUsersCloseUp(sender);
end;

procedure TFrmRepSett.dblcbUsersKeyPress(Sender: TObject; var Key: Char);
begin
  dblcbUsersCloseUp(sender);
end;

procedure TFrmRepSett.dblcbUsersKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  dblcbUsersCloseUp(sender);
end;

procedure TFrmRepSett.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmmain.qUsers.Locate('id', dmmain.id_user, []);
end;

end.
