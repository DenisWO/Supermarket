unit unitConnection;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection;

type
  TDataModuleConnection = class(TDataModule)
    ConnectionDB: TZConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleConnection: TDataModuleConnection;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
