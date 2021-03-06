unit uDm;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, FMTBcd, DBClient, Provider;

type
  Tdm = class(TDataModule)
    sc: TSQLConnection;
    sdsSolic: TSQLDataSet;
    dspSolic: TDataSetProvider;
    cdsSolic: TClientDataSet;
    dsSolic: TDataSource;
    cdsSolicSOLIC_CODIGO: TIntegerField;
    cdsSolicSOLIC_DATA: TDateField;
    cdsSolicSOLIC_PRODUTO: TIntegerField;
    cdsSolicSOLIC_QUANTIDADE: TFloatField;
    cdsSolicSOLIC_SOLICITANTE: TIntegerField;
    cdsSolicSOLIC_SITUACAO: TStringField;
    cdsSolicSOLIC_APROVACAO: TIntegerField;
    cdsSolicSOLIC_DATAAPROV: TDateField;
    cdsSolicSOLIC_DESCRICAO: TStringField;
    cdsSolicSOLIC_TIPO: TStringField;
    sqBusca: TSQLQuery;
  private
    { Private declarations }
  public
    usuarioLogado : string;
    { Public declarations }
  end;

var
  dm: Tdm;
  dbxconec: TStringList;
  //usuario, varform, nome_user, senha_user, str_relatorio, relPersonalizado, perfil, varusuario : String;
  //str_valor, conta_pl, tipo_empresa, RA : String;
  videoW, videoH : string;
  //statusdavenda : string; // USADO NO NOVO TERMINAL (SANTOS)
  //altura, largura, cod_cli, codmovdet, usulog, usuautorizacao : Integer;
  ScreenHeight: LongInt;
  ScreenWidth: LongInt;


implementation

{$R *.dfm}

end.
