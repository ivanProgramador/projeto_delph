unit uFormCadastroPai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDmDados, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFormCadastroPai = class(TForm)
    pnCabecalho: TPanel;
    Button1: TButton;
    btnGravar: TButton;
    btnCancelar: TButton;
    btnExcluir: TButton;
    btnSair: TButton;
    fdQryCadastro: TFDQuery;
    fdyUpdCadastro: TFDUpdateSQL;
    FDTransaction: TFDTransaction;
    procedure Button1Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroPai: TFormCadastroPai;

implementation

{$R *.dfm}

procedure TFormCadastroPai.Button1Click(Sender: TObject);
begin
   if not (fdQryCadastro.State in [dsEdit, dsInsert]) then
   begin
      fdQryCadastro.Insert;
   end;



end;

procedure TFormCadastroPai.btnGravarClick(Sender: TObject);
begin
   if fdQryCadastro.State in[dsEdit, dsInsert] then
   begin
     fdQryCadastro.Post;
     fdTransaction.CommitRetaining;
   end;
end;

procedure TFormCadastroPai.btnCancelarClick(Sender: TObject);
begin

   if fdQryCadastro.State in [dsEdit, dsInsert] then
   begin
     fdQryCadastro.Cancel;
     fdTransaction.RollbackRetaining;
   end;
end;

procedure TFormCadastroPai.btnExcluirClick(Sender: TObject);
begin

   fdQryCadastro.Edit;
   fdQryCadastro.FieldByName('DT_EXCLUIDO').AsDateTime := Date;
   fdQryCadastro.Post;
   fdTransaction.CommitRetaining;


end;

end.
