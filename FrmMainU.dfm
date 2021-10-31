object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = #1058#1091#1088#1040#1075#1077#1085#1090
  ClientHeight = 721
  ClientWidth = 1247
  Color = clGradientInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mnMain
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 30
    Width = 1247
    Height = 691
    Align = alClient
    TabOrder = 0
    object dbgrMainData: TDBGrid
      Left = 1
      Top = 33
      Width = 1245
      Height = 657
      Align = alClient
      DataSource = dmMain.dsqMainData
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = dbgrMainDataDrawColumnCell
      OnDblClick = dbgrMainDataDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Title.Caption = #1053#1086#1084#1077#1088
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIENT_NAME'
          Title.Caption = #1050#1083#1080#1077#1085#1090
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPERATORS_NAME'
          Title.Caption = #1054#1087#1077#1088#1072#1090#1086#1088
          Width = 104
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HOTELS_NAME'
          Title.Caption = #1054#1090#1077#1083#1100
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATE_BEGIN'
          Title.Caption = #1044#1072#1090#1072' '#1086#1090#1073#1099#1090#1080#1103
          Width = 123
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATE_END'
          Title.Caption = #1044#1072#1090#1072' '#1087#1088#1080#1073#1099#1090#1080#1103
          Width = 116
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COST_DISC'
          Title.Caption = #1062#1077#1085#1072' '#1084#1077#1085#1077#1076#1078#1077#1088#1072
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COST_PAID'
          Title.Caption = #1054#1087#1083#1072#1095#1077#1085#1086' '#1082#1083#1080#1077#1085#1090#1086#1084
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COST_DEBT'
          Title.Caption = #1044#1086#1083#1075' '#1082#1083#1080#1077#1085#1090#1072
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USERS_NAME'
          Title.Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATE_CREATE'
          Title.Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103
          Width = 84
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1245
      Height = 32
      Align = alTop
      TabOrder = 1
      object lblReminders: TLabel
        Left = 351
        Top = 10
        Width = 74
        Height = 13
        Caption = #1053#1072#1087#1086#1084#1080#1085#1072#1085#1080#1081' :'
        Color = clYellow
        ParentColor = False
        Transparent = True
        OnClick = lblRemindersClick
      end
      object btnAddTour: TButton
        Left = 7
        Top = 5
        Width = 65
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 0
        OnClick = btnAddTourClick
      end
      object btnEditTour: TButton
        Left = 71
        Top = 5
        Width = 97
        Height = 25
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        TabOrder = 1
        OnClick = btnEditTourClick
      end
      object btnPrintTour: TButton
        Left = 167
        Top = 5
        Width = 97
        Height = 25
        Caption = #1055#1077#1095#1072#1090#1100' '#1087#1091#1090#1077#1074#1082#1080
        TabOrder = 2
        OnClick = btnPrintTourClick
      end
      object btnDeleteTour: TButton
        Left = 263
        Top = 5
        Width = 65
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 3
        OnClick = btnDeleteTourClick
      end
      object btnReminders: TButton
        Left = 459
        Top = 5
        Width = 129
        Height = 25
        Caption = #1055#1088#1086#1089#1084#1086#1090#1088#1077#1090#1100
        TabOrder = 4
        OnClick = btnRemindersClick
      end
      object Button1: TButton
        Left = 587
        Top = 5
        Width = 69
        Height = 25
        Caption = #1054#1073#1085#1086#1074#1080#1090#1100
        TabOrder = 5
        OnClick = lblRemindersClick
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1247
    Height = 30
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 76
      Top = 10
      Width = 40
      Height = 13
      Caption = #1054#1090#1073#1086#1088' '#1089
    end
    object Label2: TLabel
      Left = 209
      Top = 10
      Width = 12
      Height = 13
      Caption = #1087#1086
    end
    object btnRefrMainData: TButton
      Left = 8
      Top = 3
      Width = 65
      Height = 25
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      TabOrder = 0
      OnClick = btnRefrMainDataClick
    end
    object dtpMDFrom: TDateTimePicker
      Left = 122
      Top = 5
      Width = 81
      Height = 21
      Date = 41427.000000000000000000
      Time = 41427.000000000000000000
      TabOrder = 1
      OnCloseUp = dtpMDFromCloseUp
    end
    object dtpMDTo: TDateTimePicker
      Left = 226
      Top = 5
      Width = 81
      Height = 21
      Date = 41427.000000000000000000
      Time = 41427.000000000000000000
      TabOrder = 2
      OnCloseUp = dtpMDToCloseUp
    end
    object Panel4: TPanel
      Left = 310
      Top = 1
      Width = 150
      Height = 28
      TabOrder = 3
      object Label3: TLabel
        Left = 22
        Top = 6
        Width = 37
        Height = 13
        Caption = #1050#1083#1080#1077#1085#1090
      end
      object edtClFiltr: TEdit
        Left = 65
        Top = 3
        Width = 81
        Height = 21
        TabOrder = 0
      end
      object chbClFltr: TCheckBox
        Left = 5
        Top = 5
        Width = 15
        Height = 17
        TabOrder = 1
      end
    end
    object Panel5: TPanel
      Left = 460
      Top = 1
      Width = 197
      Height = 28
      TabOrder = 4
      object Label4: TLabel
        Left = 25
        Top = 6
        Width = 50
        Height = 13
        Caption = #1054#1087#1077#1088#1072#1090#1086#1088
      end
      object chbOpFltr: TCheckBox
        Left = 5
        Top = 5
        Width = 15
        Height = 17
        TabOrder = 0
      end
      object dblkcbOper: TDBLookupComboBox
        Left = 81
        Top = 3
        Width = 112
        Height = 21
        KeyField = 'ID'
        ListField = 'NAME'
        ListSource = dmMain.dsqOperators
        TabOrder = 1
      end
    end
    object Panel6: TPanel
      Left = 657
      Top = 1
      Width = 197
      Height = 28
      TabOrder = 5
      object Label5: TLabel
        Left = 25
        Top = 6
        Width = 32
        Height = 13
        Caption = #1054#1090#1077#1083#1100
      end
      object chbHtlFltr: TCheckBox
        Left = 5
        Top = 5
        Width = 15
        Height = 17
        TabOrder = 0
      end
      object dblkcbHotel: TDBLookupComboBox
        Left = 63
        Top = 3
        Width = 130
        Height = 21
        KeyField = 'ID'
        ListField = 'NAME'
        ListSource = dmMain.dsqHotels
        TabOrder = 1
      end
    end
  end
  object mnMain: TMainMenu
    Left = 24
    Top = 128
    object dfasdf1: TMenuItem
      Caption = #1044#1077#1081#1089#1090#1074#1080#1103
      object N6: TMenuItem
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1087#1072#1088#1086#1083#1100
        OnClick = N6Click
      end
      object N1: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N1Click
      end
    end
    object N4: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
      object miOperatorsDict: TMenuItem
        Caption = #1054#1087#1077#1088#1072#1090#1086#1088#1099
        OnClick = miOperatorsDictClick
      end
      object miHotelsDict: TMenuItem
        Caption = #1054#1090#1077#1083#1080
        OnClick = miHotelsDictClick
      end
      object miClientsDict: TMenuItem
        Caption = #1050#1083#1080#1077#1085#1090#1099
        OnClick = miClientsDictClick
      end
      object N3: TMenuItem
        Caption = #1058#1080#1087#1099' '#1085#1086#1084#1077#1088#1086#1074
        OnClick = N3Click
      end
      object N5: TMenuItem
        Caption = #1058#1080#1087#1099' '#1087#1080#1090#1072#1085#1080#1103
        OnClick = N5Click
      end
    end
    object miReports: TMenuItem
      Caption = #1054#1090#1095#1077#1090#1099
      object miReportSales: TMenuItem
        Caption = #1055#1088#1086#1076#1072#1078#1080' '#1079#1072' '#1087#1077#1088#1080#1086#1076
        OnClick = miReportSalesClick
      end
    end
    object N2: TMenuItem
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      OnClick = N2Click
    end
  end
end
