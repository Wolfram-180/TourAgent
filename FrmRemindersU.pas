unit FrmRemindersU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, Grids, DBGrids, StdCtrls, Tabs, DockTabSet, ExtCtrls,
  ComCtrls;

type
  TFrmReminders = class(TForm)
    pnl1: TPanel;
    Panel2: TPanel;
    btnDeleteReminder: TButton;
    Button1: TButton;
    pc: TPageControl;
    tsRange1: TTabSheet;
    tsRange2: TTabSheet;
    tsRange3: TTabSheet;
    dbgrdWarn1: TDBGrid;
    dbgrdWarn2: TDBGrid;
    dbgrdWarn3: TDBGrid;
    procedure btnDeleteReminderClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure dbgrdWarn1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pcChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    constructor CreateRmndr(cptn : string);
  end;

var
  FrmReminders: TFrmReminders;

implementation

uses dmmainu, FrmMainU;

{$R *.dfm}

{ TFrmReminders }

procedure TFrmReminders.btnDeleteReminderClick(Sender: TObject);
begin
  dmmain.RemoveReminder(dmMain.qWarn.FieldByName('id').asinteger, dmMain.qWarn.FieldByName('id_warn_type').asinteger,
    dmMain.qWarn.FieldByName('id_main_data').asinteger, dmMain.qWarn.FieldByName('id_clients').asinteger);

  frmmain.lblRemindersClick(sender);
end;

procedure TFrmReminders.Button1Click(Sender: TObject);
begin
  close;
end;

constructor TFrmReminders.CreateRmndr(cptn: string);
begin
  inherited Create(application);
  caption := cptn;
end;

procedure TFrmReminders.dbgrdWarn1DblClick(Sender: TObject);
begin
  if ((dmMain.qWarn.Active) and (dmMain.qWarn.RecordCount > 0)) then
  begin
    with dmmain.qvar do
    begin
      close;
      sql.Clear;
      sql := dmmain.qMainData.SQL;
      sql[0] := 'select count(md.id)';
      sql[1] := '';      
      sql[8] := 'and md.id = ' + dmMain.qWarn.FieldByName('ID_MAIN_DATA').asstring;
      open;
    end;

    if dmmain.qvar.Fields[0].AsInteger > 0 then
    begin
      dmmain.id_warn := dmMain.qWarn.FieldByName('ID').AsInteger;
      dmmain.qMainData.Locate('id', dmMain.qWarn.FieldByName('ID_MAIN_DATA').AsInteger, []);
      FrmMain.btnEditTourClick(Sender);
    end
    else
      showmessage('Нужная путевка не в периоде отбора, скорректируйте его.');
  end;
end;

procedure TFrmReminders.FormActivate(Sender: TObject);
begin
  dmmain.refrwarn(pc.ActivePageIndex);
end;

procedure TFrmReminders.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmmain.is_warnshowed := false;
end;

procedure TFrmReminders.pcChange(Sender: TObject);
begin
  dmmain.refrwarn(pc.ActivePageIndex);
end;

end.

