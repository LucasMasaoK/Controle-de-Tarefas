program Controle_Tarefas;

uses
  Vcl.Forms,
  uPrincipal in 'View\uPrincipal.pas' {frmPrincipal},
  uCadModelo in 'View\Modelo\uCadModelo.pas' {frmCad},
  uCadCliente in 'View\uCadCliente.pas' {frmCadCliente},
  uCadTarefa in 'View\uCadTarefa.pas' {frmCadTarefa},
  uPesqModelo in 'View\Modelo\uPesqModelo.pas' {frmPesq},
  uPesqCliente in 'View\uPesqCliente.pas' {frmPesqCliente},
  uDM in 'DAO\uDM.pas',
  uUsuario in 'Model\uUsuario.pas',
  uAcao in 'Model\Commun\uAcao.pas',
  uUsuario.DAO in 'DAO\uUsuario.DAO.pas',
  uUsuario.Controller in 'Controller\uUsuario.Controller.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCad, frmCad);
  Application.CreateForm(TfrmCadCliente, frmCadCliente);
  Application.CreateForm(TfrmCadTarefa, frmCadTarefa);
  Application.CreateForm(TfrmPesq, frmPesq);
  Application.CreateForm(TfrmPesqCliente, frmPesqCliente);
  Application.Run;
end.
