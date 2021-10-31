object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1042#1093#1086#1076
  ClientHeight = 154
  ClientWidth = 165
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 65
    Top = 8
    Width = 30
    Height = 13
    Caption = #1051#1086#1075#1080#1085
  end
  object Label2: TLabel
    Left = 62
    Top = 51
    Width = 37
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1100
  end
  object btnEnter: TButton
    Left = 8
    Top = 121
    Width = 149
    Height = 25
    Caption = #1042#1093#1086#1076
    Default = True
    ModalResult = 1
    TabOrder = 3
    OnClick = btnEnterClick
  end
  object edtPass: TEdit
    Left = 8
    Top = 64
    Width = 145
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
    OnKeyUp = edtPassKeyUp
  end
  object dblcbUsers: TDBLookupComboBox
    Left = 8
    Top = 24
    Width = 145
    Height = 21
    KeyField = 'ID'
    ListField = 'NAME'
    ListSource = dsqUsers
    TabOrder = 0
  end
  object chbShowPass: TCheckBox
    Left = 10
    Top = 93
    Width = 137
    Height = 17
    Caption = #1055#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1087#1072#1088#1086#1083#1100
    TabOrder = 2
    OnClick = chbShowPassClick
  end
  object dsqUsers: TDataSource
    AutoEdit = False
    DataSet = dmMain.qUsers
    Left = 24
    Top = 32
  end
end
