unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    menuPrincipal: TMainMenu;
    Sistema1: TMenuItem;
    Sair1: TMenuItem;
    Cadastro1: TMenuItem;
    Cliente1: TMenuItem;
    arefa1: TMenuItem;
    arefa2: TMenuItem;
    procedure Cliente1Click(Sender: TObject);
    procedure arefa2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCadUsuario, uCadTarefa;

procedure TfrmPrincipal.arefa2Click(Sender: TObject);
begin
  Application.CreateForm(TfrmCadTarefa, frmCadTarefa);
  try
    frmCadTarefa.ShowModal;
  finally
    FreeAndNil(frmCadTarefa);
  end;
end;

procedure TfrmPrincipal.Cliente1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmCadUsuario, frmCadUsuario);
  try
    frmCadUsuario.ShowModal
  finally
    FreeAndNil(frmCadUsuario);
  end;
end;

end.
