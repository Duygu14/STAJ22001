object dmMain: TdmMain
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 150
  Width = 215
  object OraSession: TOracleSession
    LogonUsername = 'YZLM_OLD'
    LogonPassword = 'BYZYZ'
    LogonDatabase = 'BYZDB'
    Preferences.ConvertUTF = cuUTF8ToUTF16
    Left = 88
    Top = 56
  end
end
