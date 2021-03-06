unit unitMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, unitConnection, Enter;

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
    procedure OnCreate(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure OnClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    KeyEnter : TMREnter;
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
  Application.Terminate;
end;

procedure TformMain.OnClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(KeyEnter);
  FreeAndNil(DataModuleConnection);
end;

procedure TformMain.OnCreate(Sender: TObject);
begin
  DataModuleConnection := TDataModuleConnection.Create(Self);
  DataModuleConnection.ConnectionDB.SQLHourGlass := True;
  DataModuleConnection.ConnectionDB.Protocol := 'mssql';
  DataModuleConnection.ConnectionDB.User := 'root';
  DataModuleConnection.ConnectionDB.Password := 'root';
  DataModuleConnection.ConnectionDB.Database := 'Supermarket';
  DataModuleConnection.ConnectionDB.Connected := True;

  KeyEnter := TMREnter.Create(Self);
  KeyEnter.FocusEnabled := true;
  KeyEnter.FocusColor := clInfoBk;
end;

procedure TformMain.Produtos1Click(Sender: TObject);
begin
  formCadastroProduto := TformCadastroProduto.Create(Self);
  formCadastroProduto.ShowModal;
  formCadastroProduto.Release;
end;

end.
