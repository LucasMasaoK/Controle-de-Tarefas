inherited frmPesTarefa: TfrmPesTarefa
  Caption = 'Pesquisa de Tarefa'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited btnPesquisar: TButton
      OnClick = btnPesquisarClick
    end
    inherited comboDireito: TComboBox
      ItemIndex = -1
      Text = 'Di'#225'ria'
      Items.Strings = (
        'Di'#225'ria')
    end
  end
end
