inherited frmPesqCliente: TfrmPesqCliente
  Caption = 'Pesquisa de Cliente'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited btnPesquisar: TButton
      OnClick = btnPesquisarClick
    end
  end
  inherited cdsPesquisa: TClientDataSet
    Left = 592
    Top = 295
  end
end
