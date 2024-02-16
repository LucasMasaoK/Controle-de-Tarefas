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
    procedure FormShow(Sender: TObject);
    procedure gridPesquisaColEnter(Sender: TObject);
    procedure gridPesquisaDblClick(Sender: TObject);
    procedure gridPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure btnEditarKeyPress(Sender: TObject; var Key: Char);
  private
    FTarefaController: TTarefaController;
    procedure Pesquisar;
    procedure Selecionar;
    function retornaTipo(tipo: string): integer;
  public
    property TarefaController: TTarefaController read FTarefaController
      write FTarefaController;
  end;

var
  frmPesTarefa: TfrmPesTarefa;

implementation

uses
  uCadTarefa, System.StrUtils, uAcao;
{$R *.dfm}

procedure TfrmPesTarefa.btnEditarClick(Sender: TObject);
begin
  inherited;
  Self.Selecionar;
end;

procedure TfrmPesTarefa.btnEditarKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    Self.Selecionar;
end;

procedure TfrmPesTarefa.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  Self.Pesquisar;
end;

procedure TfrmPesTarefa.Selecionar;
begin
  with TarefaController.Tarefa, cdsPesquisa do
  begin
    Codigo := StrToInt(FieldByName('CODIGO').AsString);
    Nome := FieldByName('NOME').AsString;
    tipo := FieldByName('TIPO').AsString;
  end;
  Close;
end;

procedure TfrmPesTarefa.FormCreate(Sender: TObject);
begin
  inherited;
  TarefaController := TTarefaController.Create;
end;

procedure TfrmPesTarefa.FormShow(Sender: TObject);
begin
  inherited;
  Self.Pesquisar;
end;

procedure TfrmPesTarefa.gridPesquisaColEnter(Sender: TObject);
begin
  inherited;
  Self.Selecionar;
end;

procedure TfrmPesTarefa.gridPesquisaDblClick(Sender: TObject);
begin
  inherited;
  Self.Selecionar;
end;

procedure TfrmPesTarefa.gridPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then

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
