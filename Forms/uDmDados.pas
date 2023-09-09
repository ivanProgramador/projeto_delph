unit uDmDados;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,uFormConfigBanco,
   Vcl.ExtCtrls,Winapi.Windows, Winapi.Messages,System.Variants,Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage, uBiblioteca;

type
  TdmDados = class(TDataModule)
    FDCon: TFDConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }

    procedure carregaBanco;

  public
    { Public declarations }
  end;

var
  dmDados: TdmDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmDados }

procedure TdmDados.carregaBanco;
begin
   try
     FDCon.Params.Database := GetValorIni(ExtractFilePath(Application.ExeName)+ 'config.ini','CONFIGURACAO','LOCAL_DB');
     FDCon.Connected := true;

   except

      FormConfigBanco.ShowModal;

   end;
end;

procedure TdmDados.DataModuleCreate(Sender: TObject);
begin
 CarregaBanco;
end;

end.
