program TourAgent;

uses
  Forms,
  FrmMainU in 'FrmMainU.pas' {FrmMain},
  dmMainU in 'dmMainU.pas' {dmMain: TDataModule},
  frmLoginU in 'frmLoginU.pas' {frmLogin},
  frmNewEditMainDataU in 'frmNewEditMainDataU.pas' {frmNewEditMainData},
  frmAboutU in 'frmAboutU.pas' {frmAbout},
  FrmDictU in 'FrmDictU.pas' {FrmDict},
  FrmClientsDictU in 'FrmClientsDictU.pas' {FrmClientsDict},
  FrmRemindersU in 'FrmRemindersU.pas' {FrmReminders},
  FrmRepSettU in 'FrmRepSettU.pas' {FrmRepSett},
  dmRepU in 'dmRepU.pas' {dmRep: TDataModule};

{$R *.res}

begin
  Application.Initialize;
//  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TdmMain, dmMain);
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TfrmAbout, frmAbout);
  Application.CreateForm(TdmRep, dmRep);
  Application.Run;
end.
