object dmMain: TdmMain
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 547
  Width = 402
  object qUsers: TIBQuery
    Database = ibdbMain
    Transaction = trUser
    SQL.Strings = (
      'select * from USERS order by id')
    Left = 200
    Top = 24
    object qUsersID: TIntegerField
      FieldName = 'ID'
      Origin = '"USERS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qUsersDATE_CREATE: TDateTimeField
      FieldName = 'DATE_CREATE'
      Origin = '"USERS"."DATE_CREATE"'
    end
    object qUsersNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"USERS"."NAME"'
      Size = 255
    end
    object qUsersPASS: TIBStringField
      FieldName = 'PASS'
      Origin = '"USERS"."PASS"'
      Size = 255
    end
    object qUsersIS_MAIN: TIBStringField
      FieldName = 'IS_MAIN'
      Origin = '"USERS"."IS_MAIN"'
      Size = 1
    end
  end
  object ibdbMain: TIBDatabase
    Connected = True
    DatabaseName = 'bigbrother:D:\work\TourAgent\db.fdb'
    Params.Strings = (
      'user_name=tour'
      'password=cfitymrf')
    LoginPrompt = False
    DefaultTransaction = trMain
    Left = 32
    Top = 24
  end
  object trMain: TIBTransaction
    Active = True
    DefaultDatabase = ibdbMain
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 88
    Top = 24
  end
  object qTours: TIBQuery
    Database = ibdbMain
    Transaction = trMain
    CachedUpdates = True
    SQL.Strings = (
      'select * from TOURS order by id')
    Left = 272
    Top = 120
    object qToursID: TIntegerField
      FieldName = 'ID'
      Origin = '"TOURS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qToursDATE_CREATE: TDateTimeField
      FieldName = 'DATE_CREATE'
      Origin = '"TOURS"."DATE_CREATE"'
    end
    object qToursSORT_BY: TIntegerField
      FieldName = 'SORT_BY'
      Origin = '"TOURS"."SORT_BY"'
    end
    object qToursNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"TOURS"."NAME"'
      Size = 255
    end
  end
  object dsqMainData: TDataSource
    DataSet = qMainData
    Left = 88
    Top = 104
  end
  object dsqUsers: TDataSource
    DataSet = qUsers
    Left = 328
    Top = 96
  end
  object dsqTours: TDataSource
    DataSet = qTours
    Left = 328
    Top = 144
  end
  object dsqOperators: TDataSource
    DataSet = qOperators
    Left = 328
    Top = 192
  end
  object dsqMDCur: TDataSource
    DataSet = qMDCur
    Left = 88
    Top = 152
  end
  object spNewMainData: TIBStoredProc
    Database = ibdbMain
    Transaction = trMain
    StoredProcName = 'NEW_MAIN_DATA'
    Left = 152
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'ID_USERS'
        ParamType = ptInput
      end>
  end
  object qMDCur: TIBDataSet
    Database = ibdbMain
    Transaction = trMain
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from MAIN_DATA'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into MAIN_DATA'
      
        '  (COMMENT, COST_ADD, COST_ADD_DATE, COST_ADD_IN_CURR, COST_ADD_' +
        'IN_CURR_EXR, '
      
        '   COST_BONUS, COST_CURR_1, COST_CURR_2, COST_CURR_3, COST_DEBT,' +
        ' COST_DEBT_TO_OPER, '
      
        '   COST_DEBT_TO_OPER_CURR, COST_DISC, COST_DISC_DATE, COST_DISC_' +
        'IN_CURR, '
      
        '   COST_DISC_IN_CURR_EXR, COST_MANAGER_COMIS, COST_OPER, COST_OP' +
        'ER_DATE, '
      
        '   COST_OPER_IN_CURR, COST_OPER_IN_CURR_EXR, COST_PAID, COST_PAI' +
        'D_1, COST_PAID_2, '
      
        '   COST_PAID_3, COST_PAID_TO_OPER, COST_PAID_TO_OPER_2, COST_PAI' +
        'D_TO_OPER_DATE, '
      
        '   COST_PAID_TO_OPER_DATE_2, COST_PAID_TO_OPER_IN_CURR, COST_PAI' +
        'D_TO_OPER_IN_CURR_2, '
      
        '   COST_PAID_TO_OPER_IN_CURR_EXR, COST_PAID_TO_OPER_IN_CURR_EXR_' +
        '2, COST_TOTAL, '
      
        '   COST_TOTAL_CURR_DATE, COST_TOTAL_IN_CURR, COST_TOTAL_IN_CURR_' +
        'EXR, COST_TOTAL_PERC_DISC, '
      
        '   CURR_COST_ADD, CURR_COST_DISC, CURR_COST_OPER, CURR_COST_PAID' +
        '_TO_OPER, '
      
        '   CURR_COST_PAID_TO_OPER_2, CURR_TOTAL, CURR_VAL_1, CURR_VAL_2,' +
        ' CURR_VAL_3, '
      
        '   DATE_BEGIN, DATE_CREATE, DATE_DEBT_NOTIFY, DATE_END, DATE_NOT' +
        'IFY_DEBT_TO_OPER, '
      
        '   DATE_PAY_1, DATE_PAY_2, DATE_PAY_3, FLY_IN_TEXT, FLY_OUT_TEXT' +
        ', ID_CURR_1, '
      
        '   ID_CURR_2, ID_CURR_3, ID_HOTELS, ID_OPERATORS, ID_TOURS, ID_T' +
        'YPE_FOOD, '
      
        '   ID_TYPE_ROOM, ID_USERS, INSUR_TEXT, IS_CPAID_1, IS_CPAID_2, I' +
        'S_CPAID_3, '
      
        '   IS_OPPAID_1, IS_OPPAID_2, IS_WARN_A_DONE, IS_WARN_B_DONE, IS_' +
        'WARN_E_DONE, '
      '   IS_WARN_F_DONE, PERC_MANAGER_COMIS, TRANSFER_TEXT)'
      'values'
      
        '  (:COMMENT, :COST_ADD, :COST_ADD_DATE, :COST_ADD_IN_CURR, :COST' +
        '_ADD_IN_CURR_EXR, '
      
        '   :COST_BONUS, :COST_CURR_1, :COST_CURR_2, :COST_CURR_3, :COST_' +
        'DEBT, :COST_DEBT_TO_OPER, '
      
        '   :COST_DEBT_TO_OPER_CURR, :COST_DISC, :COST_DISC_DATE, :COST_D' +
        'ISC_IN_CURR, '
      
        '   :COST_DISC_IN_CURR_EXR, :COST_MANAGER_COMIS, :COST_OPER, :COS' +
        'T_OPER_DATE, '
      
        '   :COST_OPER_IN_CURR, :COST_OPER_IN_CURR_EXR, :COST_PAID, :COST' +
        '_PAID_1, '
      
        '   :COST_PAID_2, :COST_PAID_3, :COST_PAID_TO_OPER, :COST_PAID_TO' +
        '_OPER_2, '
      
        '   :COST_PAID_TO_OPER_DATE, :COST_PAID_TO_OPER_DATE_2, :COST_PAI' +
        'D_TO_OPER_IN_CURR, '
      
        '   :COST_PAID_TO_OPER_IN_CURR_2, :COST_PAID_TO_OPER_IN_CURR_EXR,' +
        ' :COST_PAID_TO_OPER_IN_CURR_EXR_2, '
      
        '   :COST_TOTAL, :COST_TOTAL_CURR_DATE, :COST_TOTAL_IN_CURR, :COS' +
        'T_TOTAL_IN_CURR_EXR, '
      
        '   :COST_TOTAL_PERC_DISC, :CURR_COST_ADD, :CURR_COST_DISC, :CURR' +
        '_COST_OPER, '
      
        '   :CURR_COST_PAID_TO_OPER, :CURR_COST_PAID_TO_OPER_2, :CURR_TOT' +
        'AL, :CURR_VAL_1, '
      
        '   :CURR_VAL_2, :CURR_VAL_3, :DATE_BEGIN, :DATE_CREATE, :DATE_DE' +
        'BT_NOTIFY, '
      
        '   :DATE_END, :DATE_NOTIFY_DEBT_TO_OPER, :DATE_PAY_1, :DATE_PAY_' +
        '2, :DATE_PAY_3, '
      
        '   :FLY_IN_TEXT, :FLY_OUT_TEXT, :ID_CURR_1, :ID_CURR_2, :ID_CURR' +
        '_3, :ID_HOTELS, '
      
        '   :ID_OPERATORS, :ID_TOURS, :ID_TYPE_FOOD, :ID_TYPE_ROOM, :ID_U' +
        'SERS, :INSUR_TEXT, '
      
        '   :IS_CPAID_1, :IS_CPAID_2, :IS_CPAID_3, :IS_OPPAID_1, :IS_OPPA' +
        'ID_2, :IS_WARN_A_DONE, '
      
        '   :IS_WARN_B_DONE, :IS_WARN_E_DONE, :IS_WARN_F_DONE, :PERC_MANA' +
        'GER_COMIS, '
      '   :TRANSFER_TEXT)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  DATE_CREATE,'
      '  COMMENT,'
      '  ID_USERS,'
      '  ID_TOURS,'
      '  ID_OPERATORS,'
      '  ID_HOTELS,'
      '  ID_TYPE_FOOD,'
      '  ID_TYPE_ROOM,'
      '  COST_TOTAL,'
      '  COST_DISC,'
      '  COST_PAID,'
      '  COST_DEBT,'
      '  COST_OPER,'
      '  COST_BONUS,'
      '  COST_PAID_1,'
      '  COST_PAID_2,'
      '  COST_PAID_3,'
      '  COST_MANAGER_COMIS,'
      '  COST_PAID_TO_OPER,'
      '  COST_DEBT_TO_OPER,'
      '  DATE_DEBT_NOTIFY,'
      '  DATE_NOTIFY_DEBT_TO_OPER,'
      '  DATE_BEGIN,'
      '  DATE_END,'
      '  IS_WARN_A_DONE,'
      '  IS_WARN_B_DONE,'
      '  IS_WARN_E_DONE,'
      '  IS_WARN_F_DONE,'
      '  IS_CPAID_1,'
      '  IS_CPAID_2,'
      '  IS_CPAID_3,'
      '  FLY_OUT_TEXT,'
      '  FLY_IN_TEXT,'
      '  TRANSFER_TEXT,'
      '  INSUR_TEXT,'
      '  PERC_MANAGER_COMIS,'
      '  ID_CURR_1,'
      '  ID_CURR_2,'
      '  ID_CURR_3,'
      '  COST_CURR_1,'
      '  COST_CURR_2,'
      '  COST_CURR_3,'
      '  CURR_VAL_1,'
      '  CURR_VAL_2,'
      '  CURR_VAL_3,'
      '  DATE_PAY_1,'
      '  DATE_PAY_2,'
      '  DATE_PAY_3,'
      '  COST_DISC_IN_CURR,'
      '  COST_OPER_IN_CURR,'
      '  COST_PAID_TO_OPER_IN_CURR,'
      '  COST_DISC_IN_CURR_EXR,'
      '  COST_OPER_IN_CURR_EXR,'
      '  COST_PAID_TO_OPER_IN_CURR_EXR,'
      '  COST_DISC_DATE,'
      '  COST_OPER_DATE,'
      '  COST_PAID_TO_OPER_DATE,'
      '  CURR_COST_OPER,'
      '  CURR_COST_DISC,'
      '  CURR_COST_PAID_TO_OPER,'
      '  CURR_TOTAL,'
      '  COST_TOTAL_IN_CURR,'
      '  COST_TOTAL_IN_CURR_EXR,'
      '  COST_TOTAL_CURR_DATE,'
      '  COST_TOTAL_PERC_DISC,'
      '  COST_ADD,'
      '  CURR_COST_ADD,'
      '  COST_ADD_IN_CURR,'
      '  COST_ADD_IN_CURR_EXR,'
      '  COST_ADD_DATE,'
      '  COST_PAID_TO_OPER_2,'
      '  CURR_COST_PAID_TO_OPER_2,'
      '  COST_PAID_TO_OPER_IN_CURR_2,'
      '  COST_PAID_TO_OPER_IN_CURR_EXR_2,'
      '  COST_PAID_TO_OPER_DATE_2,'
      '  COST_DEBT_TO_OPER_CURR,'
      '  IS_OPPAID_1,'
      '  IS_OPPAID_2'
      'from MAIN_DATA '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from MAIN_DATA where id = :id')
    ModifySQL.Strings = (
      'update MAIN_DATA'
      'set'
      '  COMMENT = :COMMENT,'
      '  COST_ADD = :COST_ADD,'
      '  COST_ADD_DATE = :COST_ADD_DATE,'
      '  COST_ADD_IN_CURR = :COST_ADD_IN_CURR,'
      '  COST_ADD_IN_CURR_EXR = :COST_ADD_IN_CURR_EXR,'
      '  COST_BONUS = :COST_BONUS,'
      '  COST_CURR_1 = :COST_CURR_1,'
      '  COST_CURR_2 = :COST_CURR_2,'
      '  COST_CURR_3 = :COST_CURR_3,'
      '  COST_DEBT = :COST_DEBT,'
      '  COST_DEBT_TO_OPER = :COST_DEBT_TO_OPER,'
      '  COST_DEBT_TO_OPER_CURR = :COST_DEBT_TO_OPER_CURR,'
      '  COST_DISC = :COST_DISC,'
      '  COST_DISC_DATE = :COST_DISC_DATE,'
      '  COST_DISC_IN_CURR = :COST_DISC_IN_CURR,'
      '  COST_DISC_IN_CURR_EXR = :COST_DISC_IN_CURR_EXR,'
      '  COST_MANAGER_COMIS = :COST_MANAGER_COMIS,'
      '  COST_OPER = :COST_OPER,'
      '  COST_OPER_DATE = :COST_OPER_DATE,'
      '  COST_OPER_IN_CURR = :COST_OPER_IN_CURR,'
      '  COST_OPER_IN_CURR_EXR = :COST_OPER_IN_CURR_EXR,'
      '  COST_PAID = :COST_PAID,'
      '  COST_PAID_1 = :COST_PAID_1,'
      '  COST_PAID_2 = :COST_PAID_2,'
      '  COST_PAID_3 = :COST_PAID_3,'
      '  COST_PAID_TO_OPER = :COST_PAID_TO_OPER,'
      '  COST_PAID_TO_OPER_2 = :COST_PAID_TO_OPER_2,'
      '  COST_PAID_TO_OPER_DATE = :COST_PAID_TO_OPER_DATE,'
      '  COST_PAID_TO_OPER_DATE_2 = :COST_PAID_TO_OPER_DATE_2,'
      '  COST_PAID_TO_OPER_IN_CURR = :COST_PAID_TO_OPER_IN_CURR,'
      '  COST_PAID_TO_OPER_IN_CURR_2 = :COST_PAID_TO_OPER_IN_CURR_2,'
      
        '  COST_PAID_TO_OPER_IN_CURR_EXR = :COST_PAID_TO_OPER_IN_CURR_EXR' +
        ','
      
        '  COST_PAID_TO_OPER_IN_CURR_EXR_2 = :COST_PAID_TO_OPER_IN_CURR_E' +
        'XR_2,'
      '  COST_TOTAL = :COST_TOTAL,'
      '  COST_TOTAL_CURR_DATE = :COST_TOTAL_CURR_DATE,'
      '  COST_TOTAL_IN_CURR = :COST_TOTAL_IN_CURR,'
      '  COST_TOTAL_IN_CURR_EXR = :COST_TOTAL_IN_CURR_EXR,'
      '  COST_TOTAL_PERC_DISC = :COST_TOTAL_PERC_DISC,'
      '  CURR_COST_ADD = :CURR_COST_ADD,'
      '  CURR_COST_DISC = :CURR_COST_DISC,'
      '  CURR_COST_OPER = :CURR_COST_OPER,'
      '  CURR_COST_PAID_TO_OPER = :CURR_COST_PAID_TO_OPER,'
      '  CURR_COST_PAID_TO_OPER_2 = :CURR_COST_PAID_TO_OPER_2,'
      '  CURR_TOTAL = :CURR_TOTAL,'
      '  CURR_VAL_1 = :CURR_VAL_1,'
      '  CURR_VAL_2 = :CURR_VAL_2,'
      '  CURR_VAL_3 = :CURR_VAL_3,'
      '  DATE_BEGIN = :DATE_BEGIN,'
      '  DATE_CREATE = :DATE_CREATE,'
      '  DATE_DEBT_NOTIFY = :DATE_DEBT_NOTIFY,'
      '  DATE_END = :DATE_END,'
      '  DATE_NOTIFY_DEBT_TO_OPER = :DATE_NOTIFY_DEBT_TO_OPER,'
      '  DATE_PAY_1 = :DATE_PAY_1,'
      '  DATE_PAY_2 = :DATE_PAY_2,'
      '  DATE_PAY_3 = :DATE_PAY_3,'
      '  FLY_IN_TEXT = :FLY_IN_TEXT,'
      '  FLY_OUT_TEXT = :FLY_OUT_TEXT,'
      '  ID_CURR_1 = :ID_CURR_1,'
      '  ID_CURR_2 = :ID_CURR_2,'
      '  ID_CURR_3 = :ID_CURR_3,'
      '  ID_HOTELS = :ID_HOTELS,'
      '  ID_OPERATORS = :ID_OPERATORS,'
      '  ID_TOURS = :ID_TOURS,'
      '  ID_TYPE_FOOD = :ID_TYPE_FOOD,'
      '  ID_TYPE_ROOM = :ID_TYPE_ROOM,'
      '  ID_USERS = :ID_USERS,'
      '  INSUR_TEXT = :INSUR_TEXT,'
      '  IS_CPAID_1 = :IS_CPAID_1,'
      '  IS_CPAID_2 = :IS_CPAID_2,'
      '  IS_CPAID_3 = :IS_CPAID_3,'
      '  IS_OPPAID_1 = :IS_OPPAID_1,'
      '  IS_OPPAID_2 = :IS_OPPAID_2,'
      '  IS_WARN_A_DONE = :IS_WARN_A_DONE,'
      '  IS_WARN_B_DONE = :IS_WARN_B_DONE,'
      '  IS_WARN_E_DONE = :IS_WARN_E_DONE,'
      '  IS_WARN_F_DONE = :IS_WARN_F_DONE,'
      '  PERC_MANAGER_COMIS = :PERC_MANAGER_COMIS,'
      '  TRANSFER_TEXT = :TRANSFER_TEXT'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_MAIN_DATA_ID'
    GeneratorField.ApplyEvent = gamOnServer
    Left = 32
    Top = 144
  end
  object dsqHotels: TDataSource
    DataSet = qHotels
    Left = 328
    Top = 240
  end
  object dsqClientsData: TDataSource
    DataSet = qClientsData
    Left = 88
    Top = 216
  end
  object spNewClient: TIBStoredProc
    Database = ibdbMain
    Transaction = trMain
    StoredProcName = 'NEW_CLIENT'
    Left = 152
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'ID_USERS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_MAINDATA'
        ParamType = ptInput
      end>
  end
  object qCurClient: TIBDataSet
    Database = ibdbMain
    Transaction = trMain
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from clients'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into clients'
      
        '  (BIRTH_DATE, BIRTH_PLACE, CONTACT, DATE_CREATE, FORENAME, ID_U' +
        'SERS, IS_WARN_C_DONE, '
      
        '   IS_WARN_D_DONE, NAME, PASSP_DATE_END, PASSP_DATE_OUT, PASSP_N' +
        'UM, PASSP_PRODUCER, '
      '   SEX, SURNAME)'
      'values'
      
        '  (:BIRTH_DATE, :BIRTH_PLACE, :CONTACT, :DATE_CREATE, :FORENAME,' +
        ' :ID_USERS, '
      
        '   :IS_WARN_C_DONE, :IS_WARN_D_DONE, :NAME, :PASSP_DATE_END, :PA' +
        'SSP_DATE_OUT, '
      '   :PASSP_NUM, :PASSP_PRODUCER, :SEX, :SURNAME)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  DATE_CREATE,'
      '  ID_USERS,'
      '  NAME,'
      '  CONTACT,'
      '  PASSP_NUM,'
      '  PASSP_DATE_OUT,'
      '  PASSP_DATE_END,'
      '  PASSP_PRODUCER,'
      '  FORENAME,'
      '  SURNAME,'
      '  SEX,'
      '  BIRTH_DATE,'
      '  BIRTH_PLACE,'
      '  IS_WARN_C_DONE,'
      '  IS_WARN_D_DONE'
      'from clients '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from clients where id = :id')
    ModifySQL.Strings = (
      'update clients'
      'set'
      '  BIRTH_DATE = :BIRTH_DATE,'
      '  BIRTH_PLACE = :BIRTH_PLACE,'
      '  CONTACT = :CONTACT,'
      '  DATE_CREATE = :DATE_CREATE,'
      '  FORENAME = :FORENAME,'
      '  ID_USERS = :ID_USERS,'
      '  IS_WARN_C_DONE = :IS_WARN_C_DONE,'
      '  IS_WARN_D_DONE = :IS_WARN_D_DONE,'
      '  NAME = :NAME,'
      '  PASSP_DATE_END = :PASSP_DATE_END,'
      '  PASSP_DATE_OUT = :PASSP_DATE_OUT,'
      '  PASSP_NUM = :PASSP_NUM,'
      '  PASSP_PRODUCER = :PASSP_PRODUCER,'
      '  SEX = :SEX,'
      '  SURNAME = :SURNAME'
      'where'
      '  ID = :OLD_ID')
    Left = 32
    Top = 248
  end
  object dsqCurClient: TDataSource
    DataSet = qCurClient
    Left = 88
    Top = 264
  end
  object qClientsData: TIBQuery
    Database = ibdbMain
    Transaction = trMain
    SQL.Strings = (
      'select'
      'clp.id_main_data, clp.id_clients, cl.*, u.name as user_name'
      'from'
      'clients_pack clp'
      'left join clients cl on clp.id_clients = cl.id'
      'left join users u on cl.id_users = u.id'
      'where clp.id_main_data = :mdid'
      'order by cl.id')
    Left = 32
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mdid'
        ParamType = ptUnknown
      end>
    object qClientsDataID_MAIN_DATA: TIntegerField
      FieldName = 'ID_MAIN_DATA'
      Origin = '"CLIENTS_PACK"."ID_MAIN_DATA"'
    end
    object qClientsDataID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
      Origin = '"CLIENTS_PACK"."ID_CLIENTS"'
    end
    object qClientsDataID: TIntegerField
      FieldName = 'ID'
      Origin = '"CLIENTS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qClientsDataDATE_CREATE: TDateTimeField
      FieldName = 'DATE_CREATE'
      Origin = '"CLIENTS"."DATE_CREATE"'
    end
    object qClientsDataID_USERS: TIntegerField
      FieldName = 'ID_USERS'
      Origin = '"CLIENTS"."ID_USERS"'
    end
    object qClientsDataNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"CLIENTS"."NAME"'
      Size = 255
    end
    object qClientsDataCONTACT: TIBStringField
      FieldName = 'CONTACT'
      Origin = '"CLIENTS"."CONTACT"'
      Size = 255
    end
    object qClientsDataPASSP_NUM: TIBStringField
      FieldName = 'PASSP_NUM'
      Origin = '"CLIENTS"."PASSP_NUM"'
      Size = 255
    end
    object qClientsDataPASSP_DATE_OUT: TDateTimeField
      FieldName = 'PASSP_DATE_OUT'
      Origin = '"CLIENTS"."PASSP_DATE_OUT"'
    end
    object qClientsDataPASSP_DATE_END: TDateTimeField
      FieldName = 'PASSP_DATE_END'
      Origin = '"CLIENTS"."PASSP_DATE_END"'
    end
    object qClientsDataPASSP_PRODUCER: TIBStringField
      FieldName = 'PASSP_PRODUCER'
      Origin = '"CLIENTS"."PASSP_PRODUCER"'
      Size = 255
    end
    object qClientsDataFORENAME: TIBStringField
      FieldName = 'FORENAME'
      Origin = '"CLIENTS"."FORENAME"'
      Size = 255
    end
    object qClientsDataSURNAME: TIBStringField
      FieldName = 'SURNAME'
      Origin = '"CLIENTS"."SURNAME"'
      Size = 255
    end
    object qClientsDataSEX: TIBStringField
      FieldName = 'SEX'
      Origin = '"CLIENTS"."SEX"'
      Size = 1
    end
    object qClientsDataBIRTH_DATE: TDateTimeField
      FieldName = 'BIRTH_DATE'
      Origin = '"CLIENTS"."BIRTH_DATE"'
    end
    object qClientsDataBIRTH_PLACE: TIBStringField
      FieldName = 'BIRTH_PLACE'
      Origin = '"CLIENTS"."BIRTH_PLACE"'
      Size = 255
    end
    object qClientsDataUSER_NAME: TIBStringField
      FieldName = 'USER_NAME'
      Origin = '"USERS"."NAME"'
      Size = 255
    end
  end
  object qvar: TIBQuery
    Database = ibdbMain
    Transaction = trMain
    Left = 272
    Top = 72
  end
  object qMainData: TIBQuery
    Database = ibdbMain
    Transaction = trMain
    SQL.Strings = (
      'select'
      
        'md.*, u.name as users_name, o.name as operators_name, h.name as ' +
        'hotels_name'
      'from'
      'main_data md'
      'left join users u on md.id_users = u.id'
      'left join operators o on md.id_operators = o.id'
      'left join hotels h on md.id_hotels = h.id'
      ''
      'order by md.id')
    Left = 32
    Top = 88
  end
  object qOperators: TIBDataSet
    Database = ibdbMain
    Transaction = trMain
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from OPERATORS'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into OPERATORS'
      '  (DATE_CREATE, NAME, SORT_BY)'
      'values'
      '  (:DATE_CREATE, :NAME, :SORT_BY)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  DATE_CREATE,'
      '  SORT_BY,'
      '  NAME'
      'from OPERATORS '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from OPERATORS order by id')
    ModifySQL.Strings = (
      'update OPERATORS'
      'set'
      '  DATE_CREATE = :DATE_CREATE,'
      '  NAME = :NAME,'
      '  SORT_BY = :SORT_BY'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_OPERATORS_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 272
    Top = 168
  end
  object qHotels: TIBDataSet
    Database = ibdbMain
    Transaction = trMain
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from hotels'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into hotels'
      '  (DATE_CREATE, NAME, SORT_BY)'
      'values'
      '  (:DATE_CREATE, :NAME, :SORT_BY)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  DATE_CREATE,'
      '  SORT_BY,'
      '  NAME'
      'from hotels '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from hotels order by id')
    ModifySQL.Strings = (
      'update hotels'
      'set'
      '  DATE_CREATE = :DATE_CREATE,'
      '  NAME = :NAME,'
      '  SORT_BY = :SORT_BY'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_HOTELS_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 272
    Top = 216
  end
  object dsqClients: TDataSource
    DataSet = qClients
    Left = 328
    Top = 288
  end
  object qClients: TIBDataSet
    Database = ibdbMain
    Transaction = trMain
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from clients'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into clients'
      
        '  (BIRTH_DATE, BIRTH_PLACE, CONTACT, DATE_CREATE, FORENAME, ID_U' +
        'SERS, IS_WARN_C_DONE, '
      
        '   IS_WARN_D_DONE, NAME, PASSP_DATE_END, PASSP_DATE_OUT, PASSP_N' +
        'UM, PASSP_PRODUCER, '
      '   SEX, SURNAME)'
      'values'
      
        '  (:BIRTH_DATE, :BIRTH_PLACE, :CONTACT, :DATE_CREATE, :FORENAME,' +
        ' :ID_USERS, '
      
        '   :IS_WARN_C_DONE, :IS_WARN_D_DONE, :NAME, :PASSP_DATE_END, :PA' +
        'SSP_DATE_OUT, '
      '   :PASSP_NUM, :PASSP_PRODUCER, :SEX, :SURNAME)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  DATE_CREATE,'
      '  ID_USERS,'
      '  NAME,'
      '  CONTACT,'
      '  PASSP_NUM,'
      '  PASSP_DATE_OUT,'
      '  PASSP_DATE_END,'
      '  PASSP_PRODUCER,'
      '  FORENAME,'
      '  SURNAME,'
      '  SEX,'
      '  BIRTH_DATE,'
      '  BIRTH_PLACE,'
      '  IS_WARN_C_DONE,'
      '  IS_WARN_D_DONE'
      'from clients '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from clients order by surname, birth_date')
    ModifySQL.Strings = (
      'update clients'
      'set'
      '  BIRTH_DATE = :BIRTH_DATE,'
      '  BIRTH_PLACE = :BIRTH_PLACE,'
      '  CONTACT = :CONTACT,'
      '  DATE_CREATE = :DATE_CREATE,'
      '  FORENAME = :FORENAME,'
      '  ID_USERS = :ID_USERS,'
      '  IS_WARN_C_DONE = :IS_WARN_C_DONE,'
      '  IS_WARN_D_DONE = :IS_WARN_D_DONE,'
      '  NAME = :NAME,'
      '  PASSP_DATE_END = :PASSP_DATE_END,'
      '  PASSP_DATE_OUT = :PASSP_DATE_OUT,'
      '  PASSP_NUM = :PASSP_NUM,'
      '  PASSP_PRODUCER = :PASSP_PRODUCER,'
      '  SEX = :SEX,'
      '  SURNAME = :SURNAME'
      'where'
      '  ID = :OLD_ID')
    OnFilterRecord = qClientsFilterRecord
    Left = 272
    Top = 272
  end
  object qWarn: TIBQuery
    Database = ibdbMain
    Transaction = trMain
    SQL.Strings = (
      'select'
      'w.*,'
      'ws.name as source, wt.name as wtype,c.name as clname, c.contact'
      'from'
      'warn w'
      'left join WARN_SOURCE ws on w.ID_WARN_SOURCE = ws.id'
      'left join WARN_TYPE wt on w.ID_WARN_TYPE = wt.id'
      'left join clients c on w.id_clients = c.id'
      ''
      'order by w.date_reason')
    Left = 32
    Top = 296
    object qWarnID: TIntegerField
      FieldName = 'ID'
      Origin = '"WARN"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qWarnDATE_CREATE: TDateTimeField
      FieldName = 'DATE_CREATE'
      Origin = '"WARN"."DATE_CREATE"'
    end
    object qWarnID_WARN_SOURCE: TIntegerField
      FieldName = 'ID_WARN_SOURCE'
      Origin = '"WARN"."ID_WARN_SOURCE"'
    end
    object qWarnID_WARN_TYPE: TIntegerField
      FieldName = 'ID_WARN_TYPE'
      Origin = '"WARN"."ID_WARN_TYPE"'
    end
    object qWarnID_MAIN_DATA: TIntegerField
      FieldName = 'ID_MAIN_DATA'
      Origin = '"WARN"."ID_MAIN_DATA"'
    end
    object qWarnID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
      Origin = '"WARN"."ID_CLIENTS"'
    end
    object qWarnNAME: TIBStringField
      FieldName = 'NAME'
      Origin = '"WARN"."NAME"'
      Size = 255
    end
    object qWarnDATE_REASON: TDateField
      FieldName = 'DATE_REASON'
      Origin = '"WARN"."DATE_REASON"'
    end
    object qWarnSOURCE: TIBStringField
      FieldName = 'SOURCE'
      Origin = '"WARN_SOURCE"."NAME"'
      Size = 255
    end
    object qWarnWTYPE: TIBStringField
      FieldName = 'WTYPE'
      Origin = '"WARN_TYPE"."NAME"'
      Size = 255
    end
    object qWarnCLNAME: TIBStringField
      FieldName = 'CLNAME'
      Origin = '"CLIENTS"."NAME"'
      Size = 255
    end
    object qWarnCONTACT: TIBStringField
      FieldName = 'CONTACT'
      Origin = '"CLIENTS"."CONTACT"'
      Size = 255
    end
  end
  object dsqWarn: TDataSource
    DataSet = qWarn
    Left = 88
    Top = 312
  end
  object trUser: TIBTransaction
    DefaultDatabase = ibdbMain
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 152
    Top = 24
  end
  object dsqTypeRoom: TDataSource
    DataSet = qTypeRoom
    Left = 328
    Top = 352
  end
  object qTypeRoom: TIBDataSet
    Database = ibdbMain
    Transaction = trMain
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from type_room'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into type_room'
      '  (NAME)'
      'values'
      '  (:NAME)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  DATE_CREATE,'
      '  NAME'
      'from type_room '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from type_room order by name')
    ModifySQL.Strings = (
      'update type_room'
      'set'
      '  NAME = :NAME'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_TYPE_ROOM_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 272
    Top = 328
  end
  object dsqTypeFood: TDataSource
    DataSet = qTypeFood
    Left = 328
    Top = 400
  end
  object qTypeFood: TIBDataSet
    Database = ibdbMain
    Transaction = trMain
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from type_food'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into type_food'
      '  (NAME)'
      'values'
      '  (:NAME)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  DATE_CREATE,'
      '  NAME'
      'from type_food '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from type_food order by name')
    ModifySQL.Strings = (
      'update type_food'
      'set'
      '  NAME = :NAME'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_TYPE_FOOD_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 272
    Top = 384
  end
  object dsqCurr: TDataSource
    DataSet = qCurr
    Left = 328
    Top = 448
  end
  object qCurr: TIBDataSet
    Database = ibdbMain
    Transaction = trMain
    ForcedRefresh = True
    DeleteSQL.Strings = (
      'delete from curr'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into curr'
      '  (NAME)'
      'values'
      '  (:NAME)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  DATE_CREATE,'
      '  NAME'
      'from curr '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select * from curr order by name')
    ModifySQL.Strings = (
      'update curr'
      'set'
      '  NAME = :NAME'
      'where'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_CURR_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 272
    Top = 432
  end
  object SET_MAIN_DATA_CLIENT_NAME: TIBStoredProc
    Database = ibdbMain
    Transaction = trMain
    StoredProcName = 'SET_MAIN_DATA_CLIENT_NAME'
    Left = 32
    Top = 376
    ParamData = <
      item
        DataType = ftInteger
        Name = 'MAIN_DATA_ID'
        ParamType = ptInput
      end>
  end
end
