object FrmReminders: TFrmReminders
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'FrmReminders'
  ClientHeight = 531
  ClientWidth = 709
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 709
    Height = 488
    Align = alClient
    TabOrder = 0
    object pc: TPageControl
      Left = 1
      Top = 1
      Width = 707
      Height = 486
      ActivePage = tsRange1
      Align = alClient
      TabOrder = 0
      OnChange = pcChange
      object tsRange1: TTabSheet
        Caption = #1057#1088#1086#1082#1080' '#1086#1087#1083#1072#1090
        object dbgrdWarn1: TDBGrid
          Left = 0
          Top = 0
          Width = 699
          Height = 458
          Align = alClient
          DataSource = dmMain.dsqWarn
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = dbgrdWarn1DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'SOURCE'
              Title.Caption = #1058#1080#1087
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'WTYPE'
              Title.Caption = #1055#1088#1080#1095#1080#1085#1072
              Width = 130
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLNAME'
              Title.Caption = #1050#1083#1080#1077#1085#1090
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATE_REASON'
              Title.Caption = #1044#1072#1090#1072
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONTACT'
              Title.Caption = #1050#1086#1085#1090#1072#1082#1090
              Width = 165
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_MAIN_DATA'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1091#1090#1077#1074#1082#1080
              Visible = True
            end>
        end
      end
      object tsRange2: TTabSheet
        Caption = #1057#1088#1086#1082#1080' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
        ImageIndex = 1
        object dbgrdWarn2: TDBGrid
          Left = 0
          Top = 0
          Width = 699
          Height = 458
          Align = alClient
          DataSource = dmMain.dsqWarn
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = dbgrdWarn1DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'SOURCE'
              Title.Caption = #1058#1080#1087
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'WTYPE'
              Title.Caption = #1055#1088#1080#1095#1080#1085#1072
              Width = 130
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLNAME'
              Title.Caption = #1050#1083#1080#1077#1085#1090
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATE_REASON'
              Title.Caption = #1044#1072#1090#1072
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONTACT'
              Title.Caption = #1050#1086#1085#1090#1072#1082#1090
              Width = 165
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_MAIN_DATA'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1091#1090#1077#1074#1082#1080
              Visible = True
            end>
        end
      end
      object tsRange3: TTabSheet
        Caption = #1057#1088#1086#1082#1080' '#1087#1077#1088#1077#1083#1077#1090#1086#1074
        ImageIndex = 2
        object dbgrdWarn3: TDBGrid
          Left = 0
          Top = 0
          Width = 699
          Height = 458
          Align = alClient
          DataSource = dmMain.dsqWarn
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = dbgrdWarn1DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'SOURCE'
              Title.Caption = #1058#1080#1087
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'WTYPE'
              Title.Caption = #1055#1088#1080#1095#1080#1085#1072
              Width = 130
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLNAME'
              Title.Caption = #1050#1083#1080#1077#1085#1090
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATE_REASON'
              Title.Caption = #1044#1072#1090#1072
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONTACT'
              Title.Caption = #1050#1086#1085#1090#1072#1082#1090
              Width = 165
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_MAIN_DATA'
              Title.Caption = #1053#1086#1084#1077#1088' '#1087#1091#1090#1077#1074#1082#1080
              Visible = True
            end>
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 488
    Width = 709
    Height = 43
    Align = alBottom
    TabOrder = 1
    object btnDeleteReminder: TButton
      Left = 8
      Top = 9
      Width = 606
      Height = 25
      Caption = #1055#1086#1084#1077#1090#1080#1090#1100' '#1086#1073#1088#1072#1073#1086#1090#1072#1085#1085#1099#1084
      TabOrder = 0
      OnClick = btnDeleteReminderClick
    end
    object Button1: TButton
      Left = 620
      Top = 9
      Width = 75
      Height = 25
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 1
      OnClick = Button1Click
    end
  end
end
