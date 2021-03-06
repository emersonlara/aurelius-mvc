program AureliusMVC;

uses
  Vcl.Forms,
  Empresa in '..\Common\Model\Empresa.pas',
  EmpresaEndereco in '..\Common\Model\EmpresaEndereco.pas',
  Contador in '..\Common\Model\Contador.pas',
  EmpresaController in '..\Common\Controller\EmpresaController.pas',
  ContadorController in '..\Common\Controller\ContadorController.pas',
  EmpresaEnderecoController in '..\Common\Controller\EmpresaEnderecoController.pas',
  UMenu in 'View\UMenu.pas' {FMenu},
  ConnectionModule in '..\Common\DataModule\ConnectionModule.pas' {FireDacFirebirdConnection: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFMenu, FMenu);
  Application.Run;
end.
