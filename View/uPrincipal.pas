unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls;

type
  TfrmPrincipal = class(TForm)
    menuPrincipal: TMainMenu;
    Sistema1: TMenuItem;
    Sair1: TMenuItem;
    Cadastro1: TMenuItem;
    Cliente1: TMenuItem;
    arefa1: TMenuItem;
    arefa2: TMenuItem;
    statusBar: TStatusBar;
    procedure Cliente1Click(Sender: TObject);
    procedure arefa2Click(Sender: TObject);
    procedure arefa1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCadUsuario, uCadTarefa, uControleTarefa, uLogin;

procedure TfrmPrincipal.arefa1Click(Sender: TObject);
begin
  application.CreateForm(TfrmControleTarefa, frmControleTarefa);
  try
    frmControleTarefa.ShowModal;
  finally
    FreeAndNil(frmControleTarefa);
  end;
end;

procedure TfrmPrincipal.arefa2Click(Sender: TObject);
begin
  application.CreateForm(TfrmCadTarefa, frmCadTarefa);
  try
    frmCadTarefa.ShowModal;
  finally
    FreeAndNil(frmCadTarefa);
  end;
end;

procedure TfrmPrincipal.Cliente1Click(Sender: TObject);
begin
  application.CreateForm(TfrmCadUsuario, frmCadUsuario);
  try
    frmCadUsuario.ShowModal
  finally
    FreeAndNil(frmCadUsuario);
  end;
end;


procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  statusBar.Panels[0].Text := frmLogin.Usuario.Direito;
  statusBar.Panels[1].Text := frmLogin.Usuario.Nome;

end;

end.
