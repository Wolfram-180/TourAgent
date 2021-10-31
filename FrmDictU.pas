unit FrmDictU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, Grids, DBGrids, ExtCtrls,
  DBCtrls, DB, IBQuery, StdCtrls, IBCustomDataSet;

type
  TFrmDict = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    ds: TDataSource;
    btnOK: TButton;
    btnCancel: TButton;
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure SetTag;
  private
    { Private declarations }
  public
    constructor CreateDict(id : integer; cptn : string; var q : tibdataset);
  end;

var
  FrmDict: TFrmDict;

implementation

{$R *.dfm}

{ TFrmDict }

procedure TFrmDict.btnCancelClick(Sender: TObject);
begin
  SetTag;
end;

procedure TFrmDict.btnOKClick(Sender: TObject);
begin
  SetTag;
end;

constructor TFrmDict.CreateDict(id: integer; cptn: string; var q : tibdataset);
begin
  inherited Create(application);
  caption := cptn;

  if (id = 0) then
  begin

  end
  else
  begin
    q.Locate('id', id, []);
  end;

  ds.DataSet := q;

  if q.State <> dsEdit then
    q.Edit;
end;

procedure TFrmDict.SetTag;
begin
  tag := ds.DataSet.FieldByName('id').AsInteger;
end;

end.
