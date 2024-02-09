program Controle_Tarefas;

uses
  Vcl.Forms,
  uPrincipal in 'View\uPrincipal.pas' {frmPrincipal},
  uCadModelo in 'View\Modelo\uCadModelo.pas' {frmCad},
  uCadUsuario in 'View\uCadUsuario.pas' {frmCadUsuario},
  uCadTarefa in 'View\uCadTarefa.pas' {frmCadTarefa},
  uPesqModelo in 'View\Modelo\uPesqModelo.pas' {frmPesq},
  uPesqCliente in 'View\uPesqCliente.pas' {frmPesqCliente},
  uDM in 'DAO\uDM.pas',
  uUsuario in 'Model\uUsuario.pas',
  uAcao in 'Model\Commun\uAcao.pas',
  uUsuario.DAO in 'DAO\uUsuario.DAO.pas',
  uUsuario.Controller in 'Controller\uUsuario.Controller.pas',
  uTarefa in 'Model\uTarefa.pas',
  uTarefa.Controller in 'Controller\uTarefa.Controller.pas',
  uTarefa.DAO in 'DAO\uTarefa.DAO.pas',
  uPesqTarefa in 'View\uPesqTarefa.pas' {frmPesTarefa},
  uControleTarefa in 'View\uControleTarefa.pas' {frmControleTarefa},
  uCtlTarefa in 'Model\uCtlTarefa.pas',
  uCtlTarefa.DAO in 'DAO\uCtlTarefa.DAO.pas',
  uCtlTarefa.Controller in 'Controller\uCtlTarefa.Controller.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCad, frmCad);
  Application.CreateForm(TfrmCadUsuario, frmCadUsuario);
  Application.CreateForm(TfrmCadTarefa, frmCadTarefa);
  Application.CreateForm(TfrmPesq, frmPesq);
  Application.CreateForm(TfrmPesqCliente, frmPesqCliente);
  Application.CreateForm(TfrmPesTarefa, frmPesTarefa);
  Application.CreateForm(TfrmControleTarefa, frmControleTarefa);
  Application.Run;
end.
