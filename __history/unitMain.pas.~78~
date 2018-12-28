unit unitMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, unitConnection;

type
  TformMain = class(TForm)
    MainPrincipal: TMainMenu;
    Arquivo1: TMenuItem;
    Cadastro1: TMenuItem;
    Movimentacao1: TMenuItem;
    Relatorio1: TMenuItem;
    Salvar1: TMenuItem;
    Fechar1: TMenuItem;
    Produtos1: TMenuItem;
    Cliente1: TMenuItem;
    Fornecedores1: TMenuItem;
    Pedido1: TMenuItem;
    Venda1: TMenuItem;
    Compra1: TMenuItem;
    Devolucao1: TMenuItem;
    Vendas1: TMenuItem;
    procedure fechar(Sender: TObject);
    procedure mainCreate(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formMain: TformMain;

implementation

{$R *.dfm}

uses unitCadastroProduto, unitTelaPesquisa;


procedure TformMain.fechar(Sender: TObject);
begin
  Close;
end;

procedure TformMain.mainCreate(Sender: TObject);
begin
  DataModuleConnection := TDataModuleConnection.Create(Self);
  DataModuleConnection.ConnectionDB.SQLHourGlass := True;
  DataModuleConnection.ConnectionDB.Protocol := 'mssql';
  DataModuleConnection.ConnectionDB.User := 'root';
  DataModuleConnection.ConnectionDB.Password := 'root';
  DataModuleConnection.ConnectionDB.Database := 'Supermarket';
  DataModuleConnection.ConnectionDB.Connected := True;
end;

procedure TformMain.Produtos1Click(Sender: TObject);
begin
  formCadastroProduto := TformCadastroProduto.Create(Self);
  formCadastroProduto.ShowModal;
  formCadastroProduto.Release;
end;

end.
