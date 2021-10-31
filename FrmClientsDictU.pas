unit FrmClientsDictU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, Grids, DBGrids, StdCtrls,
  ExtCtrls;

type
  TFrmClientsDict = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    dbgrdClientsData: TDBGrid;
    btnOK: TButton;
    btnCancel: TButton;
    btnTotalDelete: TButton;
    edtClFltr: TEdit;
    Label1: TLabel;
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnTotalDeleteClick(Sender: TObject);
    procedure dbgrdClientsDataDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtClFltrChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    id : integer;
    constructor CreateForm(id : integer; cptn : string);
  end;

var
  FrmClientsDict: TFrmClientsDict;

implementation

{$R *.dfm}

uses dmmainu, frmmainu;

{ TFrmClientsDict }

procedure TFrmClientsDict.btnOKClick(Sender: TObject);
begin
  if dbgrdClientsData.DataSource.DataSet.RecordCount > 0 then
    id := dbgrdClientsData.DataSource.DataSet.FieldByName('id').AsInteger
  else
    id := 0;
  ModalResult := mrOK;
end;

procedure TFrmClientsDict.btnCancelClick(Sender: TObject);
begin
  id := 0;
end;

procedure TFrmClientsDict.btnTotalDeleteClick(Sender: TObject);
begin
  if messagedlg('Вы уверены, что хотите удалить запись? Это действие необратимо!', mtError, mbOKCancel, 0) = mrOK then
  begin
    if dbgrdClientsData.DataSource.DataSet.RecordCount > 0 then
      dmmain.DeleteClient(dbgrdClientsData.DataSource.DataSet.FieldByName('id').AsInteger);
    frmmain.OnActivate(sender);
  end;
end;

constructor TFrmClientsDict.CreateForm(id: integer; cptn: string);
begin
  inherited Create(application);
  caption := cptn;

  dmmain.refr(dmmain.qClients, id);
end;

procedure TFrmClientsDict.dbgrdClientsDataDblClick(Sender: TObject);
begin
  btnOKClick(sender);
end;

procedure TFrmClientsDict.edtClFltrChange(Sender: TObject);
begin
  if edtClFltr.Text = '' then
    dmmain.qClients.Filtered := false
  else
  begin
    dmmain.qClients.Filtered := false;
    dmmain.client_srnm := edtClFltr.Text;
    dmmain.qClients.Filtered := true;
  end;
end;

procedure TFrmClientsDict.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmmain.qClients.Filtered := false;
end;

procedure TFrmClientsDict.FormCreate(Sender: TObject);
begin
  btnTotalDelete.Visible := frmmain.is_dir;
end;

end.
