inherited frmCadTarefa: TfrmCadTarefa
  Caption = 'Cadastro Tarefa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited btnSalvar: TButton
      OnClick = btnSalvarClick
    end
  end
  inherited Panel2: TPanel
    ExplicitWidth = 605
    object Label1: TLabel
      Left = 22
      Top = 133
      Width = 20
      Height = 13
      Caption = 'Tipo'
    end
    object editCodigo: TLabeledEdit
      Left = 22
      Top = 40
      Width = 33
      Height = 21
      EditLabel.Width = 33
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'digo'
      NumbersOnly = True
      TabOrder = 0
    end
    object editNome: TLabeledEdit
      Left = 22
      Top = 96
      Width = 305
      Height = 21
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome'
      MaxLength = 30
      TabOrder = 1
    end
    object comboDireito: TComboBox
      Left = 22
      Top = 152
      Width = 145
      Height = 21
      ItemIndex = 0
      TabOrder = 2
      Text = 'Di'#225'ria'
      Items.Strings = (
        'Di'#225'ria'
        'Semanal'
        'Quinzenal'
        'Mensal')
    end
  end
end
