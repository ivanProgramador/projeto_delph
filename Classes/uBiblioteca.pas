unit uBiblioteca;

interface
   uses IniFiles, System.SysUtils, Vcl.Forms;
    //declarando
    procedure SetValorIni(pLocal, pSessao, pSubSessao, pValor: string);
    function GetValorIni(pLocal,pSessao,pSubSessao:string):string;


implementation

 //inplementando

  procedure SetValorIni(pLocal, pSessao, pSubSessao, pValor: string);

  var vArquivo: TIniFile;

 //corpo da procedure
  begin

    //criando o ini
    vArquivo := TIniFile.Create(pLocal);

    //escrevendo os valores das veriaveis nele
    vArquivo.WriteString(pSessao, pSubSessao, pValor);

    //liberando a memoria
    vArquivo.Free;


  end;

 function GetValorIni(pLocal,pSessao,pSubSessao:string):string;

 var vArquivo: TIniFile;

 begin

     vArquivo := TIniFile.Create(pLocal);

     Result := vArquivo.ReadString(pSessao, pSubSessao,'');

     vArquivo.Free;

 end;

end.
