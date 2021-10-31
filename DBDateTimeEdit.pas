unit DBDateTimeEdit;
//**********************************************************************
// Written by Richard A Gilbert of Vanderbilt University Medical Center
//   using Borland Delphi Client-Server Suite version 4
//   Copyright 1993, 1998 Inprise Corporation
//
// EMail  : ragilbert@mindspring.com
//    or  : richard.gilbert@mcmail.vanderbilt.edu
// Date   : 05-25-99
//
// A simple but reliable databased date or date-time component with a
// pop-up calendar on double-click.
// Requires DateTimeDlg to be included in package editor file list.
//**********************************************************************

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, DateTimeDlg;

type
  TDBDateTimeEdit = class(TDBEdit)
  private
    { Private declarations }
    fDateOnly : Boolean;
  protected
    { Protected declarations }
    procedure DblClick; override;
  public
    { Public declarations }
    Constructor Create(AOwner : TComponent); override;
  published
    { Published declarations }
    property DateOnly : Boolean Read fDateOnly write fDateOnly;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Data Controls', [TDBDateTimeEdit]);
end;

Constructor TDBDateTimeEdit.Create(AOwner : TComponent);
begin
  inherited Create(AOwner);
  DlgDateTime := TDlgDateTime.Create(self);
end;

procedure TDBDateTimeEdit.DblClick;
var
  aDateTime : TDateTime;
begin
  inherited DblClick;
  if not ReadOnly then
  begin
    // enter edit mode
    DataSource.Edit;
    // call calendar dialog and pass current DateOnly status
    aDateTime := DlgDateTime.Execute(Field.AsDateTime, DateOnly);
    if aDateTime <> Field.AsDateTime then
      Field.AsDateTime := aDateTime;  //only if changed
  end;//if
end;

end.
