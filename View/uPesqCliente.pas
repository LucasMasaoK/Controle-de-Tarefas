unit uPesqCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPesqModelo, Data.DB, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient;

type
  TfrmPesqCliente = class(TfrmPesq)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqCliente: TfrmPesqCliente;

implementation

{$R *.dfm}

end.