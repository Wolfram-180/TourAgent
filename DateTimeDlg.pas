unit DateTimeDlg;
//**********************************************************************
// Written by Richard A Gilbert of Vanderbilt University Medical Center
//   using Borland Delphi Client-Server Suite version 4
//   Copyright 1993, 1998 Inprise Corporation
//
// EMail  : ragilbert@mindspring.com
//    or  : richard.gilbert@mcmail.vanderbilt.edu
// Date   : 05-25-99
//
// A pop-up calendar for the DBDateTime component.  Should be included in
// the package editor list with DBDateTimeEdit.
//**********************************************************************

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, ComCtrls;

type
  TDlgDateTime = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    TimePicker: TDateTimePicker;
    LblDateTime: TLabel;
    MonthCalendar: TMonthCalendar;
    procedure MonthCalendarClick(Sender: TObject);
    procedure TimePickerChange(Sender: TObject);
    procedure MonthCalendarDblClick(Sender: TObject);
  private
    { Private declarations }
    ShowDateOnly : boolean;
    procedure UpDateLabel;
  public
    { Public declarations }
    Function Execute(StartDateTime :TDateTime; DateOnly : boolean) : TDateTime;
  end;

var
  DlgDateTime: TDlgDateTime;

implementation

{$R *.DFM}

procedure TDlgDateTime.UpDateLabel;
begin
  // update date time label
  if ShowDateOnly then
    LblDateTime.Caption := FormatDateTime('MM/DD/YYYY',
      MonthCalendar.Date)
  else
    LblDateTime.Caption := FormatDateTime('MM/DD/YYYY HH:NN AM/PM',
      trunc(MonthCalendar.Date) + (TimePicker.Time - trunc(TimePicker.Time)));
end;

procedure TDlgDateTime.MonthCalendarClick(Sender: TObject);
begin
  // update date time label
  UpDateLabel;
end;

procedure TDlgDateTime.TimePickerChange(Sender: TObject);
begin
  // update date time label
  UpDateLabel;
end;

Function TDlgDateTime.Execute(StartDateTime :TDateTime; DateOnly : boolean) : TDateTime;
begin
  // set parameters and show edit dialog
  ShowDateOnly := DateOnly;
  TimePicker.Enabled := not DateOnly;
  TimePicker.Visible := not DateOnly;
  if StartDateTime > 0 then
  begin
    MonthCalendar.Date := trunc(StartDateTime);
    TimePicker.Time := StartDateTime - trunc(StartDateTime);
  end else
  begin
    MonthCalendar.Date := Date;
    TimePicker.Time := Time;
  end;
  UpDateLabel;
  if ShowModal = mrOk then
    // set result to current edit box date time
    if DateOnly then
      result := trunc(MonthCalendar.Date)
    else
      result := trunc(MonthCalendar.Date) + (TimePicker.Time - trunc(TimePicker.Time))
  else
    result := StartDateTime;
end;

procedure TDlgDateTime.MonthCalendarDblClick(Sender: TObject);
begin
  MonthCalendarClick(Sender);
  ModalResult := mrOk;
end;

end.
