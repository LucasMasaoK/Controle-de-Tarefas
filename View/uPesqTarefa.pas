unit uPesqTarefa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPesqModelo, Data.DB, Datasnap.DBClient,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, uTarefa.Controller;

type
  TfrmPesTarefa = class(TfrmPesq)
    procedure FormCreate(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    FTarefaController: TTarefaController;
    procedure Pesquisar;
  public
    property TarefaController: TTarefaController read FTarefaController
      write FTarefaController;
  end;

var
  frmPesTarefa: TfrmPesTarefa;

implementation

{$R *.dfm}

procedure TfrmPesTarefa.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  Self.Pesquisar;
end;

procedure TfrmPesTarefa.FormCreate(Sender: TObject);
begin
  inherited;
  TarefaController := TTarefaController.Create;
end;

procedure TfrmPesTarefa.Pesquisar;
begin
  TarefaController.Tarefa.Nome := editPesquisa.Text;
  cdsPesquisa := TarefaController.Pesquisar;
  dsPesquisa.DataSet:=cdsPesquisa;
end;

end.