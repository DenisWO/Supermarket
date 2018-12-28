program Supermarket;

uses
  Vcl.Forms,
  unitMain in 'unitMain.pas' {formMain},
  unitConnection in 'connection\unitConnection.pas' {DataModuleConnection: TDataModule},
  unitTelaPesquisa in 'view\unitTelaPesquisa.pas' {formTelaPesquisa},
  unitCadastroProduto in 'view\unitCadastroProduto.pas' {formCadastroProduto},
  Enter in 'external\Enter.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformMain, formMain);
  Application.Run;
end.
