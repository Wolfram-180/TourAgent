object frmNewEditMainData: TfrmNewEditMainData
  Left = 0
  Top = 0
  Caption = #1079#1072#1075#1086#1083#1086#1074#1086#1082
  ClientHeight = 753
  ClientWidth = 651
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTour: TPanel
    Left = 8
    Top = 8
    Width = 338
    Height = 680
    TabOrder = 0
    object lblID: TLabel
      Left = 8
      Top = 8
      Width = 76
      Height = 13
      Caption = #1053#1086#1084#1077#1088' '#1087#1091#1090#1077#1074#1082#1080
    end
    object dbID: TDBText
      Left = 104
      Top = 8
      Width = 225
      Height = 17
      DataField = 'ID'
    end
    object Label1: TLabel
      Left = 28
      Top = 224
      Width = 56
      Height = 13
      Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
    end
    object DBText1: TDBText
      Left = 104
      Top = 224
      Width = 225
      Height = 17
      DataField = 'ID'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 104
      Top = 87
      Width = 225
      Height = 21
      DataField = 'ID_OPERATORS'
      TabOrder = 0
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 104
      Top = 114
      Width = 225
      Height = 21
      DataField = 'ID_OPERATORS'
      TabOrder = 1
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 104
      Top = 141
      Width = 225
      Height = 21
      DataField = 'ID_OPERATORS'
      TabOrder = 2
    end
  end
  object btnOK: TButton
    Left = 487
    Top = 720
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object btnCancel: TButton
    Left = 568
    Top = 720
    Width = 75
    Height = 25
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 2
  end
end
