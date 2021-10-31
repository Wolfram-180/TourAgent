unit frmNewEditTourU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBCustomDataSet, IBQuery,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmNewEditMainData = class(TForm)
    pnlTour: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    lblID: TLabel;
    dbID: TDBText;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    btnOK: TButton;
    btnCancel: TButton;
    Label1: TLabel;
    DBText1: TDBText;
  private
    { Private declarations }
  public
    constructor CreateTour( id : integer; cptn : string);
  end;

var
  frmNewEditMainData: TfrmNewEditMainData;

implementation

uses
  dmmainu;

{$R *.dfm}

{ TfrmNewEditTour }

constructor TfrmNewEditMainData.CreateTour(id: integer; cptn: string);

begin
  inherited Create(application);
  caption := cptn;

  if (id = 0) then
  begin
    dmmain.CreateNewMainData(dmmain.qUsers.FieldByName('id').AsInteger);
  end
  else
  begin

  end;

end;

end.
