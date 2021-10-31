unit dmRepU;

interface

uses
  SysUtils, Classes, frxExportImage, frxExportXLS, frxClass, frxExportPDF,
  frxDBSet;

type
  TdmRep = class(TDataModule)
    fr: TfrxReport;
    frdsmd: TfrxDBDataset;
    frdscurmd: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxJPEGExport1: TfrxJPEGExport;
    frdscurclients: TfrxDBDataset;
    frdshotels: TfrxDBDataset;
    frdsoperators: TfrxDBDataset;
    frdstypefood: TfrxDBDataset;
    frdstyperoom: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRep: TdmRep;

implementation

{$R *.dfm}

end.
