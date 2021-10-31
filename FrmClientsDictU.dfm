object FrmClientsDict: TFrmClientsDict
  Left = 0
  Top = 0
  Caption = 'FrmClientsDict'
  ClientHeight = 386
  ClientWidth = 604
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 345
    Width = 604
    Height = 41
    Align = alBottom
    TabOrder = 0
    object btnOK: TButton
      Left = 439
      Top = 6
      Width = 75
      Height = 25
      Caption = #1054#1050
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnCancel: TButton
      Left = 520
      Top = 6
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnTotalDelete: TButton
      Left = 8
      Top = 6
      Width = 169
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1080#1079' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072
      TabOrder = 2
      OnClick = btnTotalDeleteClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 604
    Height = 345
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 320
      Width = 100
      Height = 13
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1092#1072#1084#1080#1083#1080#1080
    end
    object dbgrdClientsData: TDBGrid
      Left = 1
      Top = 1
      Width = 602
      Height = 311
      DataSource = dmMain.dsqClients
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = dbgrdClientsDataDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'FORENAME'
          Title.Caption = #1048#1084#1103
          Width = 132
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SURNAME'
          Title.Caption = #1060#1072#1084#1080#1083#1080#1103
          Width = 144
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SEX'
          Title.Caption = #1055#1086#1083
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CONTACT'
          Title.Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BIRTH_DATE'
          Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
          Width = 100
          Visible = True
        end>
    end
    object edtClFltr: TEdit
      Left = 122
      Top = 318
      Width = 169
      Height = 21
      TabOrder = 1
      OnChange = edtClFltrChange
    end
  end
end
