inherited frmPesqCliente: TfrmPesqCliente
  Caption = 'Pesquisa de Cliente'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited editPesquisa: TLabeledEdit
      EditLabel.ExplicitLeft = 0
      EditLabel.ExplicitTop = -16
      EditLabel.ExplicitWidth = 60
    end
  end
  inherited cdsPesquisa: TClientDataSet
    Left = 592
    Top = 295
  end
end