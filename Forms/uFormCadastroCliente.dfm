inherited FormCadastroCliente: TFormCadastroCliente
  Caption = 'Cadastro de Cliente'
  ClientHeight = 252
  ClientWidth = 704
  TextHeight = 15
  inherited pnCabecalho: TPanel
    Width = 704
  end
  inherited fdyUpdCadastro: TFDUpdateSQL
    InsertSQL.Strings = (
      'SELECT * FROM CLIENTE; ')
  end
end
