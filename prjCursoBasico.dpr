program prjCursoBasico;

uses
  Vcl.Forms,
  uFormMain in 'Forms\uFormMain.pas' {FormMain},
  uDmDados in 'Forms\uDmDados.pas' {dmDados: TDataModule},
  uBiblioteca in 'Classes\uBiblioteca.pas',
  uFormConfigBanco in 'Forms\uFormConfigBanco.pas' {FormConfigBanco},
  uFormCadastroPai in 'Forms\uFormCadastroPai.pas' {FormCadastroPai},
  uFormCadastroCliente in 'Forms\uFormCadastroCliente.pas' {FormCadastroCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TdmDados, dmDados);
  Application.CreateForm(TFormConfigBanco, FormConfigBanco);
  Application.CreateForm(TFormCadastroCliente, FormCadastroCliente);
  Application.Run;
end.
