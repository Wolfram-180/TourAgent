object dmRep: TdmRep
  OldCreateOrder = False
  Height = 359
  Width = 315
  object fr: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41418.929558715300000000
    ReportOptions.LastChange = 41437.538383287040000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 40
    Top = 24
    Datasets = <
      item
        DataSet = frdsmd
        DataSetName = 'frdsmd'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 188.976500000000000000
        Width = 793.701300000000000000
        DataSet = frdsmd
        DataSetName = 'frdsmd'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 71.811070000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataSet = frdsmd
          DataSetName = 'frdsmd'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frdsmd."USERS_NAME"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 177.637910000000000000
          Width = 105.826595910000000000
          Height = 18.897650000000000000
          DataSet = frdsmd
          DataSetName = 'frdsmd'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frdsmd."OPERATORS_NAME"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 283.464750000000000000
          Width = 162.519667950000000000
          Height = 18.897650000000000000
          DataSet = frdsmd
          DataSetName = 'frdsmd'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frdsmd."HOTELS_NAME"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 445.984540000000000000
          Width = 83.149611180000000000
          Height = 18.897650000000000000
          DataField = 'COST_TOTAL'
          DataSet = frdsmd
          DataSetName = 'frdsmd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frdsmd."COST_TOTAL"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 680.315400000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataField = 'COST_BONUS'
          DataSet = frdsmd
          DataSetName = 'frdsmd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frdsmd."COST_BONUS"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 529.134200000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataField = 'COST_DISC'
          DataSet = frdsmd
          DataSetName = 'frdsmd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frdsmd."COST_DISC"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 604.724800000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataField = 'COST_OPER'
          DataSet = frdsmd
          DataSetName = 'frdsmd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frdsmd."COST_OPER"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 64.252010000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 41.574830000000000000
          Top = 41.574830000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #1056#1115#1057#8218#1057#8225#1056#181#1057#8218' '#1056#1111#1056#1109' '#1056#1111#1057#1026#1056#1109#1056#1169#1056#176#1056#182#1056#176#1056#1112)
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 105.826840000000000000
        Width = 793.701300000000000000
        object Memo10: TfrxMemoView
          Left = 71.811070000000000000
          Top = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataSet = frdsmd
          DataSetName = 'frdsmd'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#1038#1056#1109#1057#8218#1057#1026#1057#1107#1056#1169#1056#1029#1056#1105#1056#1108)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 177.637910000000000000
          Top = 3.779530000000000000
          Width = 105.826595910000000000
          Height = 18.897650000000000000
          DataSet = frdsmd
          DataSetName = 'frdsmd'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#1115#1056#1111#1056#181#1057#1026#1056#176#1057#8218#1056#1109#1057#1026)
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 283.464750000000000000
          Top = 3.779530000000000000
          Width = 162.519667950000000000
          Height = 18.897650000000000000
          DataSet = frdsmd
          DataSetName = 'frdsmd'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#1115#1057#8218#1056#181#1056#187#1057#1034)
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 445.984540000000000000
          Top = 3.779530000000000000
          Width = 83.149611180000000000
          Height = 18.897650000000000000
          DataSet = frdsmd
          DataSetName = 'frdsmd'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#1115#1056#177#1057#8240#1056#176#1057#1039' '#1057#8224#1056#181#1056#1029#1056#176)
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 680.315400000000000000
          Top = 3.779530000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataSet = frdsmd
          DataSetName = 'frdsmd'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#1119#1057#1026#1056#1105#1056#177#1057#8249#1056#187#1057#1034)
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 529.134200000000000000
          Top = 3.779530000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataSet = frdsmd
          DataSetName = 'frdsmd'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#166#1056#181#1056#1029#1056#176' '#1057#1027#1056#1108#1056#1105#1056#1169'.')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 604.724800000000000000
          Top = 3.779530000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataSet = frdsmd
          DataSetName = 'frdsmd'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#1115#1056#1111#1056#181#1057#1026#1056#176#1057#8218#1056#1109#1057#1026#1057#1107)
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 18.897650000000000000
        Top = 230.551330000000000000
        Width = 793.701300000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 445.984540000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[SUM(<frdsmd."COST_TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 529.134200000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[SUM(<frdsmd."COST_DISC">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 604.724800000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[SUM(<frdsmd."COST_OPER">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 680.315400000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[SUM(<frdsmd."COST_BONUS">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frdsmd: TfrxDBDataset
    UserName = 'frdsmd'
    CloseDataSource = False
    DataSet = dmMain.qMainData
    Left = 40
    Top = 72
  end
  object frdscurmd: TfrxDBDataset
    UserName = 'frdscurmd'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'DATE_CREATE=DATE_CREATE'
      'COMMENT=COMMENT'
      'ID_USERS=ID_USERS'
      'ID_TOURS=ID_TOURS'
      'ID_OPERATORS=ID_OPERATORS'
      'ID_HOTELS=ID_HOTELS'
      'COST_TOTAL=COST_TOTAL'
      'COST_DISC=COST_DISC'
      'COST_PAID=COST_PAID'
      'COST_DEBT=COST_DEBT'
      'COST_OPER=COST_OPER'
      'COST_BONUS=COST_BONUS'
      'COST_MANAGER_COMIS=COST_MANAGER_COMIS'
      'PERC_MANAGER_COMIS=PERC_MANAGER_COMIS'
      'COST_PAID_TO_OPER=COST_PAID_TO_OPER'
      'COST_DEBT_TO_OPER=COST_DEBT_TO_OPER'
      'DATE_DEBT_NOTIFY=DATE_DEBT_NOTIFY'
      'DATE_NOTIFY_DEBT_TO_OPER=DATE_NOTIFY_DEBT_TO_OPER'
      'DATE_BEGIN=DATE_BEGIN'
      'DATE_END=DATE_END'
      'IS_WARN_A_DONE=IS_WARN_A_DONE'
      'IS_WARN_B_DONE=IS_WARN_B_DONE'
      'IS_WARN_E_DONE=IS_WARN_E_DONE'
      'IS_WARN_F_DONE=IS_WARN_F_DONE'
      'COST_PAID_1=COST_PAID_1'
      'COST_PAID_2=COST_PAID_2'
      'COST_PAID_3=COST_PAID_3'
      'IS_CPAID_1=IS_CPAID_1'
      'IS_CPAID_2=IS_CPAID_2'
      'IS_CPAID_3=IS_CPAID_3'
      'ID_TYPE_FOOD=ID_TYPE_FOOD'
      'ID_TYPE_ROOM=ID_TYPE_ROOM'
      'FLY_OUT_TEXT=FLY_OUT_TEXT'
      'FLY_IN_TEXT=FLY_IN_TEXT'
      'TRANSFER_TEXT=TRANSFER_TEXT'
      'INSUR_TEXT=INSUR_TEXT')
    DataSet = dmMain.qMDCur
    Left = 40
    Top = 128
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    PrintOptimized = False
    Outline = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Background = False
    Creator = 'FastReport (http://www.fast-report.com)'
    HTMLTags = True
    Left = 40
    Top = 184
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 40
    Top = 232
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    Left = 40
    Top = 280
  end
  object frdscurclients: TfrxDBDataset
    UserName = 'frdscurclients'
    CloseDataSource = False
    FieldAliases.Strings = (
      '-ID_MAIN_DATA=ID_MAIN_DATA'
      '-ID_CLIENTS=ID_CLIENTS'
      '-ID=ID'
      '-DATE_CREATE=DATE_CREATE'
      '-ID_USERS=ID_USERS'
      'NAME=NAME'
      'CONTACT=CONTACT'
      'PASSP_NUM=PASSP_NUM'
      'PASSP_DATE_OUT=PASSP_DATE_OUT'
      'PASSP_DATE_END=PASSP_DATE_END'
      'PASSP_PRODUCER=PASSP_PRODUCER'
      '-FORENAME=FORENAME'
      '-SURNAME=SURNAME'
      'SEX=SEX'
      'BIRTH_DATE=BIRTH_DATE'
      'BIRTH_PLACE=BIRTH_PLACE'
      '-USER_NAME=USER_NAME')
    DataSet = dmMain.qClientsData
    Left = 104
    Top = 128
  end
  object frdshotels: TfrxDBDataset
    UserName = 'frdshotels'
    CloseDataSource = False
    FieldAliases.Strings = (
      '-ID=ID'
      '-DATE_CREATE=DATE_CREATE'
      '-SORT_BY=SORT_BY'
      'NAME=NAME')
    DataSet = dmMain.qHotels
    Left = 168
    Top = 128
  end
  object frdsoperators: TfrxDBDataset
    UserName = 'frdsoperators'
    CloseDataSource = False
    FieldAliases.Strings = (
      '-ID=ID'
      '-DATE_CREATE=DATE_CREATE'
      '-SORT_BY=SORT_BY'
      'NAME=NAME')
    DataSet = dmMain.qOperators
    Left = 232
    Top = 152
  end
  object frdstypefood: TfrxDBDataset
    UserName = 'frdstypefood'
    CloseDataSource = False
    FieldAliases.Strings = (
      '-ID=ID'
      '-DATE_CREATE=DATE_CREATE'
      '-SORT_BY=SORT_BY'
      'NAME=NAME')
    DataSet = dmMain.qTypeFood
    Left = 168
    Top = 176
  end
  object frdstyperoom: TfrxDBDataset
    UserName = 'frdstyperoom'
    CloseDataSource = False
    FieldAliases.Strings = (
      '-ID=ID'
      '-DATE_CREATE=DATE_CREATE'
      '-SORT_BY=SORT_BY'
      'NAME=NAME')
    DataSet = dmMain.qTypeRoom
    Left = 232
    Top = 200
  end
end
