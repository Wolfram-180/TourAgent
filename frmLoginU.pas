unit frmLoginU;

interface

uses
  Windows, Messages, SysUtils, Variants, Graphics,
  Controls, Forms, Dialogs, DB, StdCtrls, DBCtrls,
  Classes;

type
  TfrmLogin = class(TForm)
    btnEnter: TButton;
    edtPass: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    dsqUsers: TDataSource;
    dblcbUsers: TDBLookupComboBox;
    chbShowPass: TCheckBox;
    procedure btnEnterClick(Sender: TObject);
    procedure edtPassKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure chbShowPassClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure setshowpassornot;
  end;

var
  frmLogin: TfrmLogin;

implementation

uses
  dmmainu, frmmainu;

{$R *.dfm}

procedure TfrmLogin.btnEnterClick(Sender: TObject);
begin
  if (dblcbUsers.KeyValue = null) then
  begin
    showmessage('Выберите логин');
    exit;
  end;

  dblcbUsers.ListSource.DataSet.Locate(dblcbUsers.KeyField, dblcbUsers.KeyValue, []);

  if edtpass.Text = dblcbUsers.ListSource.DataSet.FieldByName('pass').AsString then
  begin
    dmmain.id_user  := dmmain.qUsers.FieldByName('id').AsInteger;
    frmmain.Visible := true;

    frmmain.Width  := screen.Width  - 100;
    frmmain.Height := screen.Height - 100;
    frmmain.Top    := 25;
    frmmain.Left   := 75;

    visible := false;
  end
  else
  begin
    showmessage('Пароль неверный');
    dblcbUsers.KeyValue := dblcbUsers.ListSource.DataSet.FieldByName('id').AsInteger;
    edtPass.Clear;
  end;
end;

procedure TfrmLogin.chbShowPassClick(Sender: TObject);
begin
  setshowpassornot;
end;

procedure TfrmLogin.edtPassKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  setshowpassornot;
end;

procedure TfrmLogin.setshowpassornot;
begin
  if chbShowPass.checked = false then
    edtPass.passwordchar := '*'
   else
    edtPass.PasswordChar := #0;
end;

end.
