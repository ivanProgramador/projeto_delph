object FormCadastroPai: TFormCadastroPai
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Form Principal'
  ClientHeight = 252
  ClientWidth = 704
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object pnCabecalho: TPanel
    Left = 0
    Top = 0
    Width = 704
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 700
    object Button1: TButton
      Left = 0
      Top = 0
      Width = 75
      Height = 41
      Caption = 'Novo'
      TabOrder = 0
      OnClick = Button1Click
    end
    object btnGravar: TButton
      Left = 81
      Top = 0
      Width = 75
      Height = 41
      Caption = 'Gravar'
      TabOrder = 1
      OnClick = btnGravarClick
    end
    object btnCancelar: TButton
      Left = 162
      Top = 0
      Width = 75
      Height = 41
      Caption = 'Cancelar'
      DisabledImageName = 'btnCancelar'
      TabOrder = 2
      OnClick = btnCancelarClick
    end
    object btnExcluir: TButton
      Left = 240
      Top = 0
      Width = 75
      Height = 41
      Caption = 'Exlcuir'
      TabOrder = 3
      OnClick = btnExcluirClick
    end
    object btnSair: TButton
      Left = 629
      Top = 0
      Width = 75
      Height = 41
      Caption = 'SAIR'
      DisabledImageName = 'btnSair'
      TabOrder = 4
    end
  end
  object fdQryCadastro: TFDQuery
    ChangeAlertName = 'fdQryCadastro'
    Connection = dmDados.FDCon
    UpdateObject = fdyUpdCadastro
    Left = 648
    Top = 176
  end
  object fdyUpdCadastro: TFDUpdateSQL
    Connection = dmDados.FDCon
    Left = 640
    Top = 56
  end
  object FDTransaction: TFDTransaction
    Left = 640
    Top = 112
  end
end
