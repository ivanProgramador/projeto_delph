object dmDados: TdmDados
  OnCreate = DataModuleCreate
  Height = 212
  Width = 497
  object FDCon: TFDConnection
    Params.Strings = (
      'Database=C:\Projeto_delph\Banco de dados\DADOS.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'CharacterSet=UTF8'
      'Port=3050'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 128
    Top = 64
  end
end
