object frmNewEditMainData: TfrmNewEditMainData
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1079#1072#1075#1086#1083#1086#1074#1086#1082
  ClientHeight = 665
  ClientWidth = 814
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object pcMainData: TPageControl
    Left = 0
    Top = 0
    Width = 814
    Height = 624
    ActivePage = tsTourData
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 0
    object tsTourData: TTabSheet
      Caption = #1054#1073#1097#1080#1077' '#1076#1072#1085#1085#1099#1077
      object pnlTour: TPanel
        Left = 0
        Top = 0
        Width = 806
        Height = 593
        Align = alClient
        TabOrder = 0
        object lblID: TLabel
          Left = 92
          Top = 8
          Width = 76
          Height = 13
          Caption = #1053#1086#1084#1077#1088' '#1087#1091#1090#1077#1074#1082#1080
        end
        object dbID: TDBText
          Left = 172
          Top = 8
          Width = 40
          Height = 17
          DataField = 'ID'
          DataSource = dmMain.dsqMDCur
        end
        object Label1: TLabel
          Left = 403
          Top = 7
          Width = 56
          Height = 13
          Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
        end
        object dbtxtUser: TDBText
          Left = 465
          Top = 7
          Width = 198
          Height = 17
          DataField = 'NAME'
          DataSource = dmMain.dsqUsers
        end
        object Label2: TLabel
          Left = 116
          Top = 35
          Width = 50
          Height = 13
          Caption = #1054#1087#1077#1088#1072#1090#1086#1088
        end
        object Label3: TLabel
          Left = 416
          Top = 35
          Width = 32
          Height = 13
          Caption = #1054#1090#1077#1083#1100
        end
        object Label9: TLabel
          Left = 99
          Top = 218
          Width = 67
          Height = 13
          Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
        end
        object Label13: TLabel
          Left = 93
          Top = 88
          Width = 73
          Height = 13
          Caption = #1044#1072#1090#1072' '#1086#1090#1073#1099#1090#1080#1103
        end
        object Label14: TLabel
          Left = 383
          Top = 88
          Width = 79
          Height = 13
          Caption = #1044#1072#1090#1072' '#1087#1088#1080#1073#1099#1090#1080#1103
        end
        object Label30: TLabel
          Left = 135
          Top = 62
          Width = 31
          Height = 13
          Caption = #1053#1086#1084#1077#1088
        end
        object Label31: TLabel
          Left = 416
          Top = 62
          Width = 43
          Height = 13
          Caption = #1055#1080#1090#1072#1085#1080#1077
        end
        object Label32: TLabel
          Left = 134
          Top = 114
          Width = 32
          Height = 13
          Caption = #1042#1099#1083#1077#1090
        end
        object Label33: TLabel
          Left = 129
          Top = 141
          Width = 37
          Height = 13
          Caption = #1055#1088#1080#1083#1077#1090
        end
        object Label34: TLabel
          Left = 99
          Top = 194
          Width = 67
          Height = 13
          Caption = #1057#1090#1088#1072#1093#1086#1074#1072#1085#1080#1077
        end
        object Label35: TLabel
          Left = 117
          Top = 167
          Width = 49
          Height = 13
          Caption = #1058#1088#1072#1085#1089#1092#1077#1088
        end
        object dblkcbOper: TDBLookupComboBox
          Left = 172
          Top = 31
          Width = 169
          Height = 21
          DataField = 'ID_OPERATORS'
          DataSource = dmMain.dsqMDCur
          KeyField = 'ID'
          ListField = 'NAME'
          ListSource = dmMain.dsqOperators
          TabOrder = 0
        end
        object dblkcbHotel: TDBLookupComboBox
          Left = 465
          Top = 30
          Width = 169
          Height = 21
          DataField = 'ID_HOTELS'
          DataSource = dmMain.dsqMDCur
          KeyField = 'ID'
          ListField = 'NAME'
          ListSource = dmMain.dsqHotels
          TabOrder = 1
        end
        object dbmmComment: TDBMemo
          Left = 172
          Top = 218
          Width = 484
          Height = 367
          DataField = 'COMMENT'
          DataSource = dmMain.dsqMDCur
          TabOrder = 10
        end
        object dbdtedtDateBegin: TDBDateTimeEdit
          Left = 172
          Top = 84
          Width = 149
          Height = 21
          DataField = 'DATE_BEGIN'
          DataSource = dmMain.dsqMDCur
          TabOrder = 4
          DateOnly = False
        end
        object dbdtedtDateEnd: TDBDateTimeEdit
          Left = 465
          Top = 85
          Width = 152
          Height = 21
          DataField = 'DATE_END'
          DataSource = dmMain.dsqMDCur
          TabOrder = 5
          DateOnly = False
        end
        object btnEdtOperDict: TButton
          Left = 340
          Top = 30
          Width = 23
          Height = 22
          Caption = '+'
          TabOrder = 11
          OnClick = btnEdtOperDictClick
        end
        object btnEdtHotelDict: TButton
          Left = 633
          Top = 30
          Width = 23
          Height = 22
          Caption = '+'
          TabOrder = 12
          OnClick = btnEdtHotelDictClick
        end
        object dblkcbTypeRoom: TDBLookupComboBox
          Left = 172
          Top = 57
          Width = 169
          Height = 21
          DataField = 'ID_TYPE_ROOM'
          DataSource = dmMain.dsqMDCur
          KeyField = 'ID'
          ListField = 'NAME'
          ListSource = dmMain.dsqTypeRoom
          TabOrder = 2
        end
        object Button2: TButton
          Left = 340
          Top = 57
          Width = 23
          Height = 22
          Caption = '+'
          TabOrder = 13
          OnClick = Button2Click
        end
        object dblkcbTypeFood: TDBLookupComboBox
          Left = 465
          Top = 58
          Width = 169
          Height = 21
          DataField = 'ID_TYPE_FOOD'
          DataSource = dmMain.dsqMDCur
          KeyField = 'ID'
          ListField = 'NAME'
          ListSource = dmMain.dsqTypeFood
          TabOrder = 3
        end
        object Button3: TButton
          Left = 633
          Top = 57
          Width = 23
          Height = 22
          Caption = '+'
          TabOrder = 14
          OnClick = Button3Click
        end
        object dbeFlyOut: TDBEdit
          Left = 172
          Top = 111
          Width = 484
          Height = 21
          DataField = 'FLY_OUT_TEXT'
          DataSource = dmMain.dsqMDCur
          TabOrder = 6
        end
        object dbeFlyIn: TDBEdit
          Left = 172
          Top = 138
          Width = 484
          Height = 21
          DataField = 'FLY_IN_TEXT'
          DataSource = dmMain.dsqMDCur
          TabOrder = 7
        end
        object dbeTransfer: TDBEdit
          Left = 172
          Top = 164
          Width = 484
          Height = 21
          DataField = 'TRANSFER_TEXT'
          DataSource = dmMain.dsqMDCur
          TabOrder = 8
        end
        object dbeInsur: TDBEdit
          Left = 172
          Top = 191
          Width = 484
          Height = 21
          DataField = 'INSUR_TEXT'
          DataSource = dmMain.dsqMDCur
          TabOrder = 9
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = #1056#1072#1089#1095#1077#1090#1099
      ImageIndex = 2
      object pnlCosts: TPanel
        Left = 0
        Top = 0
        Width = 806
        Height = 593
        Align = alClient
        TabOrder = 0
        object GroupBox1: TGroupBox
          Left = 2
          Top = 9
          Width = 866
          Height = 319
          Caption = ' '#1056#1072#1089#1095#1077#1090#1099' '#1089' '#1086#1087#1077#1088#1072#1090#1086#1088#1086#1084' '
          TabOrder = 0
          object Panel7: TPanel
            Left = 2
            Top = 153
            Width = 862
            Height = 33
            Align = alTop
            TabOrder = 0
            object Label48: TLabel
              Left = 73
              Top = 11
              Width = 86
              Height = 13
              Caption = #1062#1077#1085#1072' '#1084#1077#1085#1077#1076#1078#1077#1088#1072
            end
            object Label50: TLabel
              Left = 237
              Top = 11
              Width = 39
              Height = 13
              Caption = #1042#1072#1083#1102#1090#1072
              Visible = False
            end
            object Label51: TLabel
              Left = 329
              Top = 11
              Width = 82
              Height = 13
              Caption = #1057#1091#1084#1084#1072' '#1074' '#1074#1072#1083#1102#1090#1077
            end
            object Label52: TLabel
              Left = 490
              Top = 11
              Width = 24
              Height = 13
              Caption = #1050#1091#1088#1089
              Visible = False
            end
            object Label53: TLabel
              Left = 578
              Top = 11
              Width = 61
              Height = 13
              Caption = #1044#1072#1090#1072'  '#1082#1091#1088#1089#1072
              Visible = False
            end
            object dbedtCostManag: TDBEdit
              Left = 165
              Top = 7
              Width = 66
              Height = 21
              DataField = 'COST_DISC'
              DataSource = dmMain.dsqMDCur
              TabOrder = 0
            end
            object dblcbCurrPayCostManag: TDBLookupComboBox
              Left = 277
              Top = 7
              Width = 48
              Height = 21
              DataField = 'CURR_COST_DISC'
              DataSource = dmMain.dsqMDCur
              KeyField = 'ID'
              ListField = 'NAME'
              ListSource = dmMain.dsqCurr
              TabOrder = 1
              Visible = False
            end
            object dbedtCostManagInCurr: TDBEdit
              Left = 414
              Top = 7
              Width = 67
              Height = 21
              DataField = 'COST_DISC_IN_CURR'
              DataSource = dmMain.dsqMDCur
              TabOrder = 2
            end
            object dbedtExchRtCostManag: TDBEdit
              Left = 520
              Top = 7
              Width = 49
              Height = 21
              DataField = 'COST_DISC_IN_CURR_exr'
              DataSource = dmMain.dsqMDCur
              TabOrder = 3
              Visible = False
            end
            object dbdttmEdtExCManag: TDBDateTimeEdit
              Left = 645
              Top = 6
              Width = 62
              Height = 21
              DataField = 'COST_DISC_date'
              DataSource = dmMain.dsqMDCur
              TabOrder = 4
              Visible = False
              DateOnly = False
            end
          end
          object Panel6: TPanel
            Left = 2
            Top = 186
            Width = 862
            Height = 33
            Align = alTop
            TabOrder = 1
            object Label10: TLabel
              Left = 56
              Top = 11
              Width = 103
              Height = 13
              Caption = #1050' '#1086#1087#1083#1072#1090#1077' '#1086#1087#1077#1088#1072#1090#1086#1088#1091
            end
            object Label54: TLabel
              Left = 237
              Top = 11
              Width = 39
              Height = 13
              Caption = #1042#1072#1083#1102#1090#1072
            end
            object Label55: TLabel
              Left = 329
              Top = 11
              Width = 82
              Height = 13
              Caption = #1057#1091#1084#1084#1072' '#1074' '#1074#1072#1083#1102#1090#1077
            end
            object Label56: TLabel
              Left = 490
              Top = 11
              Width = 24
              Height = 13
              Caption = #1050#1091#1088#1089
            end
            object Label57: TLabel
              Left = 578
              Top = 11
              Width = 61
              Height = 13
              Caption = #1044#1072#1090#1072'  '#1082#1091#1088#1089#1072
            end
            object dbedtCostToOperator: TDBEdit
              Left = 165
              Top = 7
              Width = 66
              Height = 21
              DataField = 'COST_OPER'
              DataSource = dmMain.dsqMDCur
              TabOrder = 0
            end
            object dblcbCurrPayCostOper: TDBLookupComboBox
              Left = 277
              Top = 7
              Width = 48
              Height = 21
              DataField = 'CURR_COST_OPER'
              DataSource = dmMain.dsqMDCur
              KeyField = 'ID'
              ListField = 'NAME'
              ListSource = dmMain.dsqCurr
              TabOrder = 1
            end
            object dbedtCostToOperatorInCurr: TDBEdit
              Left = 414
              Top = 7
              Width = 67
              Height = 21
              DataField = 'COST_OPER_IN_CURR'
              DataSource = dmMain.dsqMDCur
              TabOrder = 2
            end
            object dbedtExchRtCostToOper: TDBEdit
              Left = 520
              Top = 7
              Width = 49
              Height = 21
              DataField = 'COST_OPER_IN_CURR_exr'
              DataSource = dmMain.dsqMDCur
              TabOrder = 3
            end
            object dbdttmEdtExCToOper: TDBDateTimeEdit
              Left = 645
              Top = 6
              Width = 62
              Height = 21
              DataField = 'COST_OPER_date'
              DataSource = dmMain.dsqMDCur
              TabOrder = 4
              DateOnly = False
            end
          end
          object pnlOpP1: TPanel
            Left = 2
            Top = 219
            Width = 862
            Height = 33
            Align = alTop
            TabOrder = 2
            ExplicitLeft = 3
            object Label58: TLabel
              Left = 55
              Top = 11
              Width = 104
              Height = 13
              Caption = #1054#1087#1083#1072#1090#1072' '#1086#1087#1077#1088#1072#1090#1086#1088#1091' 1'
            end
            object Label59: TLabel
              Left = 237
              Top = 11
              Width = 39
              Height = 13
              Caption = #1042#1072#1083#1102#1090#1072
            end
            object Label60: TLabel
              Left = 329
              Top = 11
              Width = 82
              Height = 13
              Caption = #1057#1091#1084#1084#1072' '#1074' '#1074#1072#1083#1102#1090#1077
            end
            object Label61: TLabel
              Left = 490
              Top = 11
              Width = 24
              Height = 13
              Caption = #1050#1091#1088#1089
            end
            object Label62: TLabel
              Left = 578
              Top = 11
              Width = 61
              Height = 13
              Caption = #1044#1072#1090#1072'  '#1082#1091#1088#1089#1072
            end
            object dbedtCostOperPaid1: TDBEdit
              Left = 165
              Top = 7
              Width = 66
              Height = 21
              DataField = 'COST_PAID_TO_OPER'
              DataSource = dmMain.dsqMDCur
              TabOrder = 0
            end
            object dblcbCurrPayCostOperPaid1: TDBLookupComboBox
              Left = 277
              Top = 7
              Width = 48
              Height = 21
              DataField = 'CURR_COST_PAID_TO_OPER'
              DataSource = dmMain.dsqMDCur
              KeyField = 'ID'
              ListField = 'NAME'
              ListSource = dmMain.dsqCurr
              TabOrder = 1
            end
            object dbedtCostOperPaidInCurr1: TDBEdit
              Left = 414
              Top = 7
              Width = 67
              Height = 21
              DataField = 'COST_PAID_TO_OPER_IN_CURR'
              DataSource = dmMain.dsqMDCur
              TabOrder = 2
            end
            object dbedtExchRtCostOperPaid1: TDBEdit
              Left = 520
              Top = 7
              Width = 49
              Height = 21
              DataField = 'COST_PAID_TO_OPER_IN_CURR_exr'
              DataSource = dmMain.dsqMDCur
              TabOrder = 3
            end
            object dbdttmEdtExCOpPaid1: TDBDateTimeEdit
              Left = 645
              Top = 6
              Width = 62
              Height = 21
              DataField = 'COST_PAID_TO_OPER_date'
              DataSource = dmMain.dsqMDCur
              TabOrder = 4
              DateOnly = False
            end
            object dbcbCstPOFxd1: TDBCheckBox
              Left = 725
              Top = 9
              Width = 42
              Height = 17
              Caption = #1092#1080#1082#1089
              DataField = 'IS_OPPAID_1'
              DataSource = dmMain.dsqMDCur
              TabOrder = 5
              ValueChecked = 'T'
              ValueUnchecked = 'F'
            end
          end
          object pnlOpP2: TPanel
            Left = 2
            Top = 252
            Width = 862
            Height = 33
            Align = alTop
            TabOrder = 3
            object Label25: TLabel
              Left = 55
              Top = 11
              Width = 104
              Height = 13
              Caption = #1054#1087#1083#1072#1090#1072' '#1086#1087#1077#1088#1072#1090#1086#1088#1091' 2'
            end
            object Label63: TLabel
              Left = 237
              Top = 11
              Width = 39
              Height = 13
              Caption = #1042#1072#1083#1102#1090#1072
            end
            object Label64: TLabel
              Left = 329
              Top = 11
              Width = 82
              Height = 13
              Caption = #1057#1091#1084#1084#1072' '#1074' '#1074#1072#1083#1102#1090#1077
            end
            object Label65: TLabel
              Left = 490
              Top = 11
              Width = 24
              Height = 13
              Caption = #1050#1091#1088#1089
            end
            object Label66: TLabel
              Left = 578
              Top = 11
              Width = 61
              Height = 13
              Caption = #1044#1072#1090#1072'  '#1082#1091#1088#1089#1072
            end
            object dbedtCostOperPaid2: TDBEdit
              Left = 165
              Top = 7
              Width = 66
              Height = 21
              DataField = 'COST_PAID_TO_OPER_2'
              DataSource = dmMain.dsqMDCur
              TabOrder = 0
            end
            object dblcbCurrPayCostOperPaid2: TDBLookupComboBox
              Left = 277
              Top = 7
              Width = 48
              Height = 21
              DataField = 'CURR_COST_PAID_TO_OPER_2'
              DataSource = dmMain.dsqMDCur
              KeyField = 'ID'
              ListField = 'NAME'
              ListSource = dmMain.dsqCurr
              TabOrder = 1
            end
            object dbedtCostOperPaidInCurr2: TDBEdit
              Left = 414
              Top = 7
              Width = 67
              Height = 21
              DataField = 'COST_PAID_TO_OPER_IN_CURR_2'
              DataSource = dmMain.dsqMDCur
              TabOrder = 2
            end
            object dbedtExchRtCostOperPaid2: TDBEdit
              Left = 520
              Top = 7
              Width = 49
              Height = 21
              DataField = 'COST_PAID_TO_OPER_IN_CURR_exr_2'
              DataSource = dmMain.dsqMDCur
              TabOrder = 3
            end
            object dbdttmEdtExCOpPaid2: TDBDateTimeEdit
              Left = 645
              Top = 6
              Width = 62
              Height = 21
              DataField = 'COST_PAID_TO_OPER_date_2'
              DataSource = dmMain.dsqMDCur
              TabOrder = 4
              DateOnly = False
            end
            object dbcbCstPOFxd2: TDBCheckBox
              Left = 725
              Top = 9
              Width = 42
              Height = 17
              Caption = #1092#1080#1082#1089
              DataField = 'IS_OPPAID_2'
              DataSource = dmMain.dsqMDCur
              TabOrder = 5
              ValueChecked = 'T'
              ValueUnchecked = 'F'
            end
          end
          object Panel10: TPanel
            Left = 2
            Top = 15
            Width = 862
            Height = 105
            Align = alTop
            TabOrder = 4
            object Label68: TLabel
              Left = 73
              Top = 11
              Width = 83
              Height = 13
              Caption = #1062#1077#1085#1072' '#1086#1087#1077#1088#1072#1090#1086#1088#1072
            end
            object Label69: TLabel
              Left = 237
              Top = 11
              Width = 39
              Height = 13
              Caption = #1042#1072#1083#1102#1090#1072
            end
            object Label70: TLabel
              Left = 329
              Top = 11
              Width = 82
              Height = 13
              Caption = #1057#1091#1084#1084#1072' '#1074' '#1074#1072#1083#1102#1090#1077
            end
            object Label71: TLabel
              Left = 490
              Top = 11
              Width = 24
              Height = 13
              Caption = #1050#1091#1088#1089
            end
            object Label72: TLabel
              Left = 578
              Top = 11
              Width = 61
              Height = 13
              Caption = #1044#1072#1090#1072'  '#1082#1091#1088#1089#1072
            end
            object Label77: TLabel
              Left = 33
              Top = 37
              Width = 123
              Height = 13
              Caption = #1057#1082#1080#1076#1082#1072' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072' (%)'
            end
            object Label78: TLabel
              Left = 111
              Top = 62
              Width = 45
              Height = 13
              Caption = #1057#1082#1080#1076#1082#1072' :'
            end
            object lblTotCostDiscRur: TLabel
              Left = 165
              Top = 62
              Width = 6
              Height = 13
              Caption = '0'
            end
            object Label80: TLabel
              Left = 356
              Top = 62
              Width = 55
              Height = 13
              Caption = #1074' '#1074#1072#1083#1102#1090#1077' :'
            end
            object lblTotCostDiscCurr: TLabel
              Left = 414
              Top = 62
              Width = 6
              Height = 13
              Caption = '0'
            end
            object Label79: TLabel
              Left = 119
              Top = 85
              Width = 37
              Height = 13
              Caption = #1048#1090#1086#1075#1086' :'
            end
            object lblTotCostWithDiscRur: TLabel
              Left = 165
              Top = 85
              Width = 6
              Height = 13
              Caption = '0'
            end
            object Label82: TLabel
              Left = 356
              Top = 85
              Width = 55
              Height = 13
              Caption = #1074' '#1074#1072#1083#1102#1090#1077' :'
            end
            object lblTotCostWithDiscCurr: TLabel
              Left = 414
              Top = 85
              Width = 6
              Height = 13
              Caption = '0'
            end
            object dblcbCurrPayTotal: TDBLookupComboBox
              Left = 277
              Top = 7
              Width = 48
              Height = 21
              DataField = 'CURR_TOTAL'
              DataSource = dmMain.dsqMDCur
              KeyField = 'ID'
              ListField = 'NAME'
              ListSource = dmMain.dsqCurr
              TabOrder = 0
            end
            object dbedtCostTotalInCurr: TDBEdit
              Left = 414
              Top = 7
              Width = 67
              Height = 21
              DataField = 'COST_TOTAL_IN_CURR'
              DataSource = dmMain.dsqMDCur
              TabOrder = 1
            end
            object dbedtExchRtCostTotal: TDBEdit
              Left = 520
              Top = 7
              Width = 49
              Height = 21
              DataField = 'COST_total_IN_CURR_EXR'
              DataSource = dmMain.dsqMDCur
              TabOrder = 2
            end
            object dbdttmEdtExCTotal: TDBDateTimeEdit
              Left = 645
              Top = 6
              Width = 62
              Height = 21
              DataField = 'COST_TOTAL_CURR_date'
              DataSource = dmMain.dsqMDCur
              TabOrder = 3
              DateOnly = False
            end
            object dbedtCostOper: TDBEdit
              Left = 165
              Top = 7
              Width = 66
              Height = 21
              DataField = 'COST_TOTAL'
              DataSource = dmMain.dsqMDCur
              TabOrder = 4
            end
            object dbedtCostTotalPercDisc: TDBEdit
              Left = 165
              Top = 34
              Width = 66
              Height = 21
              DataField = 'COST_TOTAL_PERC_DISC'
              DataSource = dmMain.dsqMDCur
              TabOrder = 5
            end
          end
          object Panel11: TPanel
            Left = 2
            Top = 120
            Width = 862
            Height = 33
            Align = alTop
            TabOrder = 5
            object Label4: TLabel
              Left = 109
              Top = 11
              Width = 50
              Height = 13
              Caption = #1044#1086#1087'. '#1089#1073#1086#1088
            end
            object Label73: TLabel
              Left = 237
              Top = 11
              Width = 39
              Height = 13
              Caption = #1042#1072#1083#1102#1090#1072
            end
            object Label74: TLabel
              Left = 329
              Top = 11
              Width = 82
              Height = 13
              Caption = #1057#1091#1084#1084#1072' '#1074' '#1074#1072#1083#1102#1090#1077
            end
            object Label75: TLabel
              Left = 490
              Top = 11
              Width = 24
              Height = 13
              Caption = #1050#1091#1088#1089
            end
            object Label76: TLabel
              Left = 578
              Top = 11
              Width = 61
              Height = 13
              Caption = #1044#1072#1090#1072'  '#1082#1091#1088#1089#1072
            end
            object dblcbCurrCostAdd: TDBLookupComboBox
              Left = 277
              Top = 7
              Width = 48
              Height = 21
              DataField = 'CURR_COST_ADD'
              DataSource = dmMain.dsqMDCur
              KeyField = 'ID'
              ListField = 'NAME'
              ListSource = dmMain.dsqCurr
              TabOrder = 0
            end
            object dbedtCostAddInCurr: TDBEdit
              Left = 414
              Top = 7
              Width = 67
              Height = 21
              DataField = 'COST_Add_IN_CURR'
              DataSource = dmMain.dsqMDCur
              TabOrder = 1
            end
            object dbedtExchRtCostAdd: TDBEdit
              Left = 520
              Top = 7
              Width = 49
              Height = 21
              DataField = 'COST_ADD_IN_CURR_exr'
              DataSource = dmMain.dsqMDCur
              TabOrder = 2
            end
            object dbdttmEdtExCAdd: TDBDateTimeEdit
              Left = 645
              Top = 6
              Width = 62
              Height = 21
              DataField = 'COST_add_date'
              DataSource = dmMain.dsqMDCur
              TabOrder = 3
              DateOnly = False
            end
            object dbedtCostAdd: TDBEdit
              Left = 165
              Top = 7
              Width = 66
              Height = 21
              DataField = 'COST_ADD'
              DataSource = dmMain.dsqMDCur
              TabOrder = 4
            end
          end
          object Panel12: TPanel
            Left = 2
            Top = 285
            Width = 862
            Height = 33
            Align = alTop
            TabOrder = 6
            object Label29: TLabel
              Left = 51
              Top = 11
              Width = 108
              Height = 13
              Caption = #1044#1086#1083#1075' '#1086#1087#1077#1088'-'#1088#1091' ('#1088#1091#1073'.) :'
            end
            object dbtxtDebtOper: TDBText
              Left = 165
              Top = 11
              Width = 64
              Height = 17
              Color = clGray
              DataField = 'COST_DEBT_TO_OPER'
              DataSource = dmMain.dsqMDCur
              ParentColor = False
              Transparent = False
            end
            object Label67: TLabel
              Left = 238
              Top = 11
              Width = 38
              Height = 13
              Caption = #1074' '#1074#1072#1083'. :'
            end
            object dbtxtDebtOperCurr: TDBText
              Left = 278
              Top = 11
              Width = 64
              Height = 17
              Color = clGray
              DataField = 'COST_DEBT_TO_OPER_CURR'
              DataSource = dmMain.dsqMDCur
              ParentColor = False
              Transparent = False
            end
            object Label26: TLabel
              Left = 454
              Top = 11
              Width = 185
              Height = 13
              Caption = #1053#1072#1087#1086#1084#1080#1085#1072#1085#1080#1077' '#1086#1073' '#1086#1087#1083#1072#1090#1077' '#1086#1087#1077#1088#1072#1090#1086#1088#1091' :'
            end
            object dbdtedtOperDebtRemind: TDBDateTimeEdit
              Left = 645
              Top = 7
              Width = 62
              Height = 21
              DataField = 'DATE_NOTIFY_DEBT_TO_OPER'
              DataSource = dmMain.dsqMDCur
              TabOrder = 0
              DateOnly = False
            end
          end
        end
        object GroupBox2: TGroupBox
          Left = 4
          Top = 335
          Width = 866
          Height = 288
          Caption = ' '#1056#1072#1089#1095#1077#1090#1099' '#1089' '#1082#1083#1080#1077#1085#1090#1086#1084' '
          TabOrder = 1
          object dbtxtDebt: TDBText
            Left = 170
            Top = 152
            Width = 64
            Height = 17
            Color = clBtnFace
            DataField = 'COST_DEBT'
            DataSource = dmMain.dsqMDCur
            ParentColor = False
            Transparent = False
          end
          object Label7: TLabel
            Left = 87
            Top = 153
            Width = 77
            Height = 13
            Caption = #1044#1086#1083#1075' '#1082#1083#1080#1077#1085#1090#1072' :'
          end
          object Panel9: TPanel
            Left = 331
            Top = 120
            Width = 406
            Height = 137
            BevelOuter = bvNone
            TabOrder = 0
            object Label12: TLabel
              Left = 139
              Top = 9
              Width = 173
              Height = 13
              Caption = #1053#1072#1087#1086#1084#1080#1085#1072#1085#1080#1077' '#1086#1073' '#1086#1087#1083#1072#1090#1077' '#1082#1083#1080#1077#1085#1090#1091' :'
            end
            object dbtxtBonus: TDBText
              Left = 315
              Top = 42
              Width = 72
              Height = 17
              DataField = 'COST_BONUS'
              DataSource = dmMain.dsqMDCur
            end
            object lblBonus: TLabel
              Left = 267
              Top = 42
              Width = 45
              Height = 13
              Caption = #1055#1088#1080#1093#1086#1076' :'
            end
            object Label81: TLabel
              Left = 25
              Top = 9
              Width = 55
              Height = 13
              Caption = #1074' '#1074#1072#1083#1102#1090#1077' :'
            end
            object lblPaidClCurr: TLabel
              Left = 85
              Top = 9
              Width = 6
              Height = 13
              Caption = '0'
            end
            object Label84: TLabel
              Left = 25
              Top = 33
              Width = 55
              Height = 13
              Caption = #1074' '#1074#1072#1083#1102#1090#1077' :'
            end
            object lblDebtClCurr: TLabel
              Left = 85
              Top = 33
              Width = 6
              Height = 13
              Caption = '0'
            end
            object dbdtedtDebtRemind: TDBDateTimeEdit
              Left = 316
              Top = 7
              Width = 62
              Height = 21
              DataField = 'DATE_DEBT_NOTIFY'
              DataSource = dmMain.dsqMDCur
              TabOrder = 0
              DateOnly = False
            end
            object pnlAdmin: TPanel
              Left = 194
              Top = 65
              Width = 201
              Height = 56
              BevelInner = bvLowered
              BevelOuter = bvSpace
              TabOrder = 1
              object Label6: TLabel
                Left = 12
                Top = 10
                Width = 103
                Height = 13
                Caption = #1055#1088#1086#1094#1077#1085#1090' '#1084#1077#1085#1077#1076#1078#1077#1088#1072
              end
              object dbtxtManagComis: TDBText
                Left = 122
                Top = 34
                Width = 72
                Height = 17
                DataField = 'COST_MANAGER_COMIS'
                DataSource = dmMain.dsqMDCur
              end
              object Label8: TLabel
                Left = 8
                Top = 34
                Width = 107
                Height = 13
                Caption = #1050#1086#1084#1080#1089#1089#1080#1103' '#1084#1077#1085#1077#1076#1078#1077#1088#1072
              end
              object dbedtManagPerc: TDBEdit
                Left = 121
                Top = 7
                Width = 62
                Height = 21
                DataField = 'PERC_MANAGER_COMIS'
                DataSource = dmMain.dsqMDCur
                TabOrder = 0
              end
            end
          end
          object pnlPay1: TPanel
            Left = 2
            Top = 15
            Width = 862
            Height = 33
            Align = alTop
            TabOrder = 1
            object Label5: TLabel
              Left = 83
              Top = 10
              Width = 80
              Height = 13
              Caption = #1054#1087#1083#1072#1090#1072' 1 ('#1088#1091#1073'.)'
            end
            object Label36: TLabel
              Left = 237
              Top = 10
              Width = 39
              Height = 13
              Caption = #1042#1072#1083#1102#1090#1072
            end
            object Label39: TLabel
              Left = 329
              Top = 10
              Width = 82
              Height = 13
              Caption = #1057#1091#1084#1084#1072' '#1074' '#1074#1072#1083#1102#1090#1077
            end
            object Label42: TLabel
              Left = 490
              Top = 11
              Width = 24
              Height = 13
              Caption = #1050#1091#1088#1089
            end
            object Label45: TLabel
              Left = 578
              Top = 12
              Width = 61
              Height = 13
              Caption = #1044#1072#1090#1072'  '#1082#1091#1088#1089#1072
            end
            object dbedtCostPaid1: TDBEdit
              Left = 165
              Top = 6
              Width = 66
              Height = 21
              DataField = 'COST_PAID_1'
              DataSource = dmMain.dsqMDCur
              TabOrder = 0
            end
            object dbcbCstPFxd1: TDBCheckBox
              Left = 725
              Top = 9
              Width = 42
              Height = 17
              Caption = #1092#1080#1082#1089
              DataField = 'IS_CPAID_1'
              DataSource = dmMain.dsqMDCur
              TabOrder = 5
              ValueChecked = 'T'
              ValueUnchecked = 'F'
            end
            object dblcbCurrPay1: TDBLookupComboBox
              Left = 277
              Top = 6
              Width = 48
              Height = 21
              DataField = 'ID_CURR_1'
              DataSource = dmMain.dsqMDCur
              KeyField = 'ID'
              ListField = 'NAME'
              ListSource = dmMain.dsqCurr
              TabOrder = 1
            end
            object dbedtCostCurr1: TDBEdit
              Left = 414
              Top = 6
              Width = 67
              Height = 21
              DataField = 'COST_CURR_1'
              DataSource = dmMain.dsqMDCur
              TabOrder = 2
            end
            object dbedtExchRt1: TDBEdit
              Left = 520
              Top = 7
              Width = 49
              Height = 21
              DataField = 'CURR_VAL_1'
              DataSource = dmMain.dsqMDCur
              TabOrder = 3
            end
            object dbdttmEdt1: TDBDateTimeEdit
              Left = 645
              Top = 7
              Width = 62
              Height = 21
              DataField = 'DATE_PAY_1'
              DataSource = dmMain.dsqMDCur
              TabOrder = 4
              DateOnly = False
            end
          end
          object pnlPay2: TPanel
            Left = 2
            Top = 48
            Width = 862
            Height = 33
            Align = alTop
            TabOrder = 2
            object Label27: TLabel
              Left = 83
              Top = 10
              Width = 80
              Height = 13
              Caption = #1054#1087#1083#1072#1090#1072' 2 ('#1088#1091#1073'.)'
            end
            object Label37: TLabel
              Left = 237
              Top = 10
              Width = 39
              Height = 13
              Caption = #1042#1072#1083#1102#1090#1072
            end
            object Label40: TLabel
              Left = 329
              Top = 10
              Width = 82
              Height = 13
              Caption = #1057#1091#1084#1084#1072' '#1074' '#1074#1072#1083#1102#1090#1077
            end
            object Label43: TLabel
              Left = 490
              Top = 10
              Width = 24
              Height = 13
              Caption = #1050#1091#1088#1089
            end
            object Label46: TLabel
              Left = 578
              Top = 10
              Width = 61
              Height = 13
              Caption = #1044#1072#1090#1072'  '#1082#1091#1088#1089#1072
            end
            object dbedtCostPaid2: TDBEdit
              Left = 165
              Top = 6
              Width = 66
              Height = 21
              DataField = 'COST_PAID_2'
              DataSource = dmMain.dsqMDCur
              TabOrder = 0
            end
            object dbcbCstPFxd2: TDBCheckBox
              Left = 725
              Top = 8
              Width = 43
              Height = 17
              Caption = #1092#1080#1082#1089
              DataField = 'IS_CPAID_2'
              DataSource = dmMain.dsqMDCur
              TabOrder = 5
              ValueChecked = 'T'
              ValueUnchecked = 'F'
            end
            object dblcbCurrPay2: TDBLookupComboBox
              Left = 277
              Top = 6
              Width = 48
              Height = 21
              DataField = 'ID_CURR_2'
              DataSource = dmMain.dsqMDCur
              KeyField = 'ID'
              ListField = 'NAME'
              ListSource = dmMain.dsqCurr
              TabOrder = 1
            end
            object dbedtCostCurr2: TDBEdit
              Left = 414
              Top = 6
              Width = 67
              Height = 21
              DataField = 'COST_CURR_2'
              DataSource = dmMain.dsqMDCur
              TabOrder = 2
            end
            object dbedtExchRt2: TDBEdit
              Left = 520
              Top = 6
              Width = 49
              Height = 21
              DataField = 'CURR_VAL_2'
              DataSource = dmMain.dsqMDCur
              TabOrder = 3
            end
            object dbdttmEdt2: TDBDateTimeEdit
              Left = 645
              Top = 7
              Width = 62
              Height = 21
              DataField = 'DATE_PAY_2'
              DataSource = dmMain.dsqMDCur
              TabOrder = 4
              DateOnly = False
            end
          end
          object pnlPay3: TPanel
            Left = 2
            Top = 81
            Width = 862
            Height = 33
            Align = alTop
            TabOrder = 3
            object Label28: TLabel
              Left = 83
              Top = 10
              Width = 80
              Height = 13
              Caption = #1054#1087#1083#1072#1090#1072' 3 ('#1088#1091#1073'.)'
            end
            object Label38: TLabel
              Left = 237
              Top = 10
              Width = 39
              Height = 13
              Caption = #1042#1072#1083#1102#1090#1072
            end
            object Label41: TLabel
              Left = 329
              Top = 10
              Width = 82
              Height = 13
              Caption = #1057#1091#1084#1084#1072' '#1074' '#1074#1072#1083#1102#1090#1077
            end
            object Label44: TLabel
              Left = 490
              Top = 10
              Width = 24
              Height = 13
              Caption = #1050#1091#1088#1089
            end
            object Label47: TLabel
              Left = 578
              Top = 10
              Width = 61
              Height = 13
              Caption = #1044#1072#1090#1072'  '#1082#1091#1088#1089#1072
            end
            object dbedtCostPaid3: TDBEdit
              Left = 165
              Top = 6
              Width = 66
              Height = 21
              DataField = 'COST_PAID_3'
              DataSource = dmMain.dsqMDCur
              TabOrder = 0
            end
            object dbcbCstPFxd3: TDBCheckBox
              Left = 725
              Top = 8
              Width = 40
              Height = 17
              Caption = #1092#1080#1082#1089
              DataField = 'IS_CPAID_3'
              DataSource = dmMain.dsqMDCur
              TabOrder = 5
              ValueChecked = 'T'
              ValueUnchecked = 'F'
            end
            object dblcbCurrPay3: TDBLookupComboBox
              Left = 277
              Top = 6
              Width = 48
              Height = 21
              DataField = 'ID_CURR_3'
              DataSource = dmMain.dsqMDCur
              KeyField = 'ID'
              ListField = 'NAME'
              ListSource = dmMain.dsqCurr
              TabOrder = 1
            end
            object dbedtCostCurr3: TDBEdit
              Left = 414
              Top = 6
              Width = 67
              Height = 21
              DataField = 'COST_CURR_3'
              DataSource = dmMain.dsqMDCur
              TabOrder = 2
            end
            object dbedtExchRt3: TDBEdit
              Left = 520
              Top = 6
              Width = 49
              Height = 21
              DataField = 'CURR_VAL_3'
              DataSource = dmMain.dsqMDCur
              TabOrder = 3
            end
            object dbdttmEdt3: TDBDateTimeEdit
              Left = 645
              Top = 6
              Width = 62
              Height = 21
              DataField = 'DATE_PAY_3'
              DataSource = dmMain.dsqMDCur
              TabOrder = 4
              DateOnly = False
            end
          end
          object Panel4: TPanel
            Left = 16
            Top = 127
            Width = 214
            Height = 19
            BevelOuter = bvNone
            TabOrder = 4
            object Label49: TLabel
              Left = 4
              Top = 2
              Width = 141
              Height = 13
              Caption = #1054#1087#1083#1072#1095#1077#1085#1086' '#1082#1083#1080#1077#1085#1090#1086#1084' ('#1088#1091#1073'.) :'
            end
            object lblResCost: TLabel
              Left = 154
              Top = 2
              Width = 6
              Height = 13
              Caption = '0'
            end
          end
        end
      end
    end
    object tsClientData: TTabSheet
      Caption = #1044#1072#1085#1085#1099#1077' '#1082#1083#1080#1077#1085#1090#1086#1074
      ImageIndex = 1
      object pnlClientsData: TPanel
        Left = 0
        Top = 0
        Width = 806
        Height = 593
        Align = alClient
        TabOrder = 0
        object dbgrdClientsData: TDBGrid
          Left = 1
          Top = 1
          Width = 804
          Height = 128
          Align = alTop
          DataSource = dmMain.dsqClientsData
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = dbgrdClientsDataCellClick
          Columns = <
            item
              Expanded = False
              FieldName = 'FORENAME'
              Title.Caption = #1048#1084#1103
              Width = 117
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SURNAME'
              Title.Caption = #1060#1072#1084#1080#1083#1080#1103
              Width = 122
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SEX'
              Title.Caption = #1055#1086#1083
              Width = 44
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONTACT'
              Title.Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
              Width = 239
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BIRTH_DATE'
              Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
              Width = 86
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USER_NAME'
              Title.Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
              Width = 100
              Visible = True
            end>
        end
        object Panel1: TPanel
          Left = 1
          Top = 170
          Width = 804
          Height = 422
          Align = alClient
          TabOrder = 1
          object DBText1: TDBText
            Left = 310
            Top = 12
            Width = 65
            Height = 17
            DataField = 'ID'
            DataSource = dmMain.dsqCurClient
          end
          object lblClId: TLabel
            Left = 228
            Top = 12
            Width = 76
            Height = 13
            Caption = #1053#1086#1084#1077#1088' '#1082#1083#1080#1077#1085#1090#1072
          end
          object Label11: TLabel
            Left = 285
            Top = 36
            Width = 19
            Height = 13
            Caption = #1048#1084#1103
          end
          object Label15: TLabel
            Left = 260
            Top = 63
            Width = 44
            Height = 13
            Caption = #1060#1072#1084#1080#1083#1080#1103
          end
          object Label16: TLabel
            Left = 285
            Top = 90
            Width = 19
            Height = 13
            Caption = #1055#1086#1083
          end
          object Label17: TLabel
            Left = 224
            Top = 117
            Width = 80
            Height = 13
            Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
          end
          object Label18: TLabel
            Left = 224
            Top = 171
            Width = 81
            Height = 13
            Caption = #1053#1086#1084#1077#1088' '#1087#1072#1089#1087#1086#1088#1090#1072
          end
          object Label19: TLabel
            Left = 186
            Top = 199
            Width = 118
            Height = 13
            Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080' '#1087#1072#1089#1087#1086#1088#1090#1072
          end
          object Label20: TLabel
            Left = 171
            Top = 226
            Width = 133
            Height = 13
            Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1087#1072#1089#1087#1086#1088#1090#1072
          end
          object Label21: TLabel
            Left = 226
            Top = 253
            Width = 78
            Height = 13
            Caption = #1055#1072#1089#1087#1086#1088#1090' '#1074#1099#1076#1072#1085
          end
          object Label22: TLabel
            Left = 219
            Top = 144
            Width = 85
            Height = 13
            Caption = #1052#1077#1089#1090#1086' '#1088#1086#1078#1076#1077#1085#1080#1103
          end
          object Label23: TLabel
            Left = 199
            Top = 280
            Width = 105
            Height = 13
            Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
          end
          object DBEdit1: TDBEdit
            Left = 310
            Top = 32
            Width = 287
            Height = 21
            DataField = 'FORENAME'
            DataSource = dmMain.dsqCurClient
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 310
            Top = 59
            Width = 287
            Height = 21
            DataField = 'SURNAME'
            DataSource = dmMain.dsqCurClient
            TabOrder = 1
          end
          object DBDateTimeEdit1: TDBDateTimeEdit
            Left = 310
            Top = 113
            Width = 121
            Height = 21
            DataField = 'BIRTH_DATE'
            DataSource = dmMain.dsqCurClient
            TabOrder = 3
            DateOnly = False
          end
          object DBDateTimeEdit2: TDBDateTimeEdit
            Left = 310
            Top = 195
            Width = 121
            Height = 21
            DataField = 'PASSP_DATE_OUT'
            DataSource = dmMain.dsqCurClient
            TabOrder = 6
            DateOnly = False
          end
          object DBDateTimeEdit3: TDBDateTimeEdit
            Left = 310
            Top = 222
            Width = 121
            Height = 21
            DataField = 'PASSP_DATE_END'
            DataSource = dmMain.dsqCurClient
            TabOrder = 7
            DateOnly = False
          end
          object DBMemo1: TDBMemo
            Left = 310
            Top = 276
            Width = 287
            Height = 133
            DataField = 'CONTACT'
            DataSource = dmMain.dsqCurClient
            TabOrder = 9
          end
          object DBEdit4: TDBEdit
            Left = 311
            Top = 167
            Width = 121
            Height = 21
            DataField = 'PASSP_NUM'
            DataSource = dmMain.dsqCurClient
            TabOrder = 5
          end
          object DBEdit5: TDBEdit
            Left = 310
            Top = 249
            Width = 287
            Height = 21
            DataField = 'PASSP_PRODUCER'
            DataSource = dmMain.dsqCurClient
            TabOrder = 8
          end
          object DBEdit6: TDBEdit
            Left = 311
            Top = 140
            Width = 286
            Height = 21
            DataField = 'BIRTH_PLACE'
            DataSource = dmMain.dsqCurClient
            TabOrder = 4
          end
          object DBComboBox1: TDBComboBox
            Left = 310
            Top = 86
            Width = 49
            Height = 21
            Style = csDropDownList
            DataField = 'SEX'
            DataSource = dmMain.dsqCurClient
            ItemHeight = 13
            Items.Strings = (
              #1046
              #1052)
            TabOrder = 2
          end
        end
        object Panel2: TPanel
          Left = 1
          Top = 129
          Width = 804
          Height = 41
          Align = alTop
          TabOrder = 2
          object Label24: TLabel
            Left = 115
            Top = 16
            Width = 32
            Height = 13
            Caption = #1042#1089#1077#1075#1086':'
          end
          object lblCntClnt: TLabel
            Left = 153
            Top = 16
            Width = 59
            Height = 13
            Caption = #1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
          end
          object btnClientAdd: TButton
            Left = 212
            Top = 10
            Width = 92
            Height = 25
            Caption = #1057#1086#1079#1076#1072#1090#1100
            TabOrder = 0
            OnClick = btnClientAddClick
          end
          object btnClientEdit: TButton
            Left = 408
            Top = 10
            Width = 92
            Height = 25
            Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
            TabOrder = 2
            OnClick = btnClientEditClick
          end
          object btnClientDelete: TButton
            Left = 506
            Top = 10
            Width = 130
            Height = 25
            Caption = #1059#1076#1072#1083#1080#1090#1100' '#1080#1079' '#1087#1091#1090#1077#1074#1082#1080
            TabOrder = 3
            OnClick = btnClientDeleteClick
          end
          object Button1: TButton
            Left = 310
            Top = 10
            Width = 92
            Height = 25
            Caption = #1048#1079' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072
            TabOrder = 1
            OnClick = Button1Click
          end
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 624
    Width = 814
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnCount: TButton
      Left = 109
      Top = 9
      Width = 194
      Height = 25
      Caption = #1056#1072#1089#1089#1095#1080#1090#1072#1090#1100' '#1080' '#1089#1086#1093#1088#1072#1085#1080#1090#1100
      Default = True
      TabOrder = 0
      OnClick = btnCountClick
    end
    object btnSaveAndClose: TButton
      Left = 309
      Top = 9
      Width = 265
      Height = 25
      Caption = #1056#1072#1089#1089#1095#1080#1090#1072#1090#1100', '#1089#1086#1093#1088#1072#1085#1080#1090#1100' '#1080' '#1079#1072#1082#1088#1099#1090#1100
      ModalResult = 1
      TabOrder = 1
      OnClick = btnSaveAndCloseClick
    end
    object btnCancel: TButton
      Left = 580
      Top = 9
      Width = 84
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      ModalResult = 2
      TabOrder = 2
      OnClick = btnCancelClick
    end
  end
end
