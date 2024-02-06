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
    procedure btnEditarClick(Sender: TObject);
  private
    FTarefaController: TTarefaController;
    procedure Pesquisar;
    procedure Editar;
    function retornaTipo(tipo: string): integer;
  public
    property TarefaController: TTarefaController read FTarefaController
      write FTarefaController;
  end;

var
  frmPesTarefa: TfrmPesTarefa;

implementation

uses
  uCadTarefa, System.StrUtils;
{$R *.dfm}

procedure TfrmPesTarefa.btnEditarClick(Sender: TObject);
begin
  inherited;
  Self.Editar;
end;

procedure TfrmPesTarefa.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  Self.Pesquisar;
end;

procedure TfrmPesTarefa.Editar;
begin
  with frmCadTarefa, cdsPesquisa do
  begin
    editCodigo.Text := FieldByName('CODIGO').AsString;
    editNome.Text := FieldByName('NOME').AsString;
    comboTipo.ItemIndex := Self.retornaTipo(FieldByName('TIPO').AsString);
    btnEditar.Click;
  end;
  Close;
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
  dsPesquisa.DataSet := cdsPesquisa;
end;

function TfrmPesTarefa.retornaTipo(tipo: string): integer;
begin
  case AnsiIndexStr(tipo, ['D', 'S', 'Q', 'M']) of
    0:
      Result := 0;
    1:
      Result := 1;
    2:
      Result := 2;
    3:
      Result := 3;

  end;

end;

end.
