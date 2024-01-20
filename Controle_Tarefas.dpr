program Controle_Tarefas;

uses
  Vcl.Forms,
  uPrincipal in 'View\uPrincipal.pas' {frmPrincipal},
  uCadModelo in 'View\Modelo\uCadModelo.pas' {frmCad},
  uCadCliente in 'View\uCadCliente.pas' {frmCadCliente},
  uCadTarefa in 'View\uCadTarefa.pas' {frmCadTarefa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCad, frmCad);
  Application.CreateForm(TfrmCadCliente, frmCadCliente);
  Application.CreateForm(TfrmCadTarefa, frmCadTarefa);
  Application.Run;
end.
