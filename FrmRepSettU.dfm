object FrmRepSett: TFrmRepSett
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1086#1090#1073#1086#1088#1072
  ClientHeight = 105
  ClientWidth = 442
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object blb1: TLabel
    Left = 8
    Top = 12
    Width = 87
    Height = 13
    Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103' '#1089' '
  end
  object Label1: TLabel
    Left = 192
    Top = 12
    Width = 12
    Height = 13
    Caption = #1087#1086
  end
  object Label2: TLabel
    Left = 304
    Top = 40
    Width = 18
    Height = 13
    Caption = #1080#1083#1080
  end
  object Label3: TLabel
    Left = 39
    Top = 40
    Width = 56
    Height = 13
    Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
  end
  object dt1: TDateTimePicker
    Left = 101
    Top = 8
    Width = 84
    Height = 21
    Date = 41420.737030960650000000
    Time = 41420.737030960650000000
    TabOrder = 0
  end
  object dt2: TDateTimePicker
    Left = 210
    Top = 8
    Width = 84
    Height = 21
    Date = 41420.737030960650000000
    Time = 41420.737030960650000000
    TabOrder = 1
  end
  object btnOK: TButton
    Left = 277
    Top = 72
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    TabOrder = 2
    OnClick = btnOKClick
  end
  object btnCancel: TButton
    Left = 358
    Top = 72
    Width = 75
    Height = 25
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 3
  end
  object chbAllUsers: TCheckBox
    Left = 328
    Top = 39
    Width = 105
    Height = 17
    Caption = #1073#1077#1079' '#1086#1075#1088#1072#1085#1080#1095#1077#1085#1080#1103
    Checked = True
    State = cbChecked
    TabOrder = 4
  end
  object dblcbUsers: TDBLookupComboBox
    Left = 101
    Top = 35
    Width = 197
    Height = 21
    KeyField = 'ID'
    ListField = 'NAME'
    ListSource = dmMain.dsqUsers
    TabOrder = 5
    OnCloseUp = dblcbUsersCloseUp
    OnKeyDown = dblcbUsersKeyDown
    OnKeyPress = dblcbUsersKeyPress
    OnKeyUp = dblcbUsersKeyUp
  end
end
