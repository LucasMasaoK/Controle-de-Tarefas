inherited frmPesqCliente: TfrmPesqCliente
  Caption = 'Pesquisa de Cliente'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    inherited gridPesquisa: TDBGrid
      OnDblClick = gridPesquisaDblClick
    end
  end
  inherited Panel1: TPanel
    inherited btnPesquisar: TButton
      OnClick = btnPesquisarClick
    end
    inherited btnEditar: TButton
      OnClick = btnEditarClick
    end
  end
  inherited cdsPesquisa: TClientDataSet
    Left = 592
    Top = 295
  end
end
