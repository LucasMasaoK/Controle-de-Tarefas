unit uCadModelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmCad = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnSalvar: TButton;
    btnExcluir: TButton;
    btnLimpar: TButton;
    btnSair: TButton;
    btnPesquisar: TButton;
    btnNovo: TButton;
    btnEditar: TButton;
    procedure btnSairClick(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  frmCad: TfrmCad;

implementation

{$R *.dfm}

procedure TfrmCad.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
