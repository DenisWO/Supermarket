object DataModuleConnection: TDataModuleConnection
  OldCreateOrder = False
  Height = 150
  Width = 215
  object ConnectionDB: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Connected = True
    SQLHourGlass = True
    HostName = '.\SQLEXPRESS'
    Port = 0
    Database = 'Supermarket'
    User = 'root'
    Password = 'root'
    Protocol = 'mssql'
    LibraryLocation = 'C:\Projects\Supermarket\ntwdblib.dll'
    Left = 96
    Top = 64
  end
end
