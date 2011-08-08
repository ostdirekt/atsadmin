unit uCliente;

interface

uses SysUtils, Dialogs, dbXpress;

type

  TCliente = class(TObject)
  private
    function getCodCli     : Integer;
    function getCodUsuario : Integer;
    function getStatus     : Smallint;
    function getTipoFirma  : Smallint;
    function getNomeCliente: String;
    function getRazaoSocial: String;
    function getContato    : String;

    procedure setCodcli(const Value: Integer);
    procedure setCodUsuario(const Value: Integer);
    procedure setNomeCliente(const Value: String);
    procedure setStatus(const Value: Smallint);
    procedure setTipoFirma(const Value: Smallint);
    function getCnpj: String;
    function getDataCadastro: TDateTime;
    function getDataNasc: TDateTime;
    function getInscEstadual: String;
    function getObs: String;
    procedure setCnpj(const Value: String);
    procedure setContato(const Value: String);
    procedure setDataCadastro(const Value: TDateTime);
    procedure setDataNasc(const Value: TDateTime);
    procedure setInscEstadual(const Value: String);
    procedure setObs(const Value: String);
    procedure setRazaoSocial(const Value: String);
  protected
    //Atributos
    _codCli          : Integer;
    _codUsuario      : Integer;
    _status          : Smallint;
    _tipoFirma       : Smallint;
    _nomeCliente     : String;
    _razaoSocial     : String;
    _contato         : String;
    _cnpj            : String;
    _inscEstadual    : String;
    _obs             : String;
    _dataCadastro    : TDateTime;
    _dataNasc        : TDateTime;

    function executaSql(strSql: String): Boolean;
  public
    property CodCli      : Integer read getCodCli write setCodCli;
    property CodUsuario  : Integer read getCodUsuario write setCodUsuario;
    property Status      : Smallint read getStatus write setStatus;
    property TipoFirma   : Smallint read getTipoFirma write setTipoFirma;
    property NomeCliente : String read getNomeCliente write setNomeCliente;
    property RazaoSocial : String read getRazaoSocial write setRazaoSocial;
    property Contato     : String read getContato write setContato;
    property Cnpj        : String read getCnpj write setCnpj;
    property InscEstadual: String read getInscEstadual write setInscEstadual;
    property Obs         : String read getObs write setObs;
    property DataCadastro: TDateTime read getDataCadastro write setDataCadastro;
    property DataNasc    : TDateTime read getDataNasc write setDataNasc;

    //Metodos
    function inserirCliente(): Integer;
    function verCliente(Controle: String; Campo: String; Tipo: String): Integer;
    function excluirCliente(codCliE: Integer): Boolean;
    function alterarCliente(codCliA: Integer): Boolean;
    constructor Create;
    Destructor Destroy; Override;
  end;

  const
    TABLENAME = 'CLIENTES';

implementation

uses SqlExpr, DB, UDm, DBClient;


{ TCliente }

function TCliente.alterarCliente(codCliA: Integer): Boolean;
var sqlAlt: String;
begin
  // Altera Cadastro Cliente
  sqlAlt := 'UPDATE CLIENTES SET ';
  sqlAlt := sqlAlt + ' NOMECLIENTE  = ' + QuotedStr(Self.NomeCliente) + ', ';
  sqlAlt := sqlAlt + ' RAZAOSOCIAL  = ' + QuotedStr(Self.RazaoSocial) + ', ';
  sqlAlt := sqlAlt + ' CONTATO      = ' + QuotedStr(Self.Contato) + ', ';
  sqlAlt := sqlAlt + ' CNPJ         = ' + QuotedStr(Self.Cnpj) + ', ';
  sqlAlt := sqlAlt + ' INSCESTADUAL = ' + QuotedStr(Self.InscEstadual) + ', ';
  sqlAlt := sqlAlt + ' DATACADASTRO = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',Self.DataCadastro)) + ', ';
  sqlAlt := sqlAlt + ' CODUSUARIO   = ' + IntToStr(Self.CodUsuario) + ', ';
  sqlAlt := sqlAlt + ' STATUS       = ' + IntToStr(Self.Status) + ', ';
  sqlAlt := sqlAlt + ' TIPOFIRMA    = ' + IntToStr(Self.TipoFirma);
  sqlAlt := sqlAlt + ' WHERE CODCLIENTE = ' + IntToStr(codCliA);
  Result := executaSql(sqlAlt);
end;

constructor TCliente.Create;
begin
end;

destructor TCliente.Destroy;
begin

  inherited;
end;

function TCliente.excluirCliente(codCliE: Integer): Boolean;
begin
  // Excluir Cadastro Cliente
  Result := executaSql('DELETE FROM CLIENTES WHERE CODCLIENTE = ' + IntToStr(codCliE));
end;

function TCliente.executaSql(strSql: String): Boolean;
var     TD: TTransactionDesc;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  try
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(strSql);
    dm.sqlsisAdimin.Commit(TD);
    Result := True;
  except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      dm.sqlsisAdimin.Rollback(TD);
      Result := False;
    end;
  end;
end;

function TCliente.getCnpj: String;
begin
  Result := Trim(_cnpj);
end;

function TCliente.getCodCli: Integer;
begin
  Result := _codCli;
end;

function TCliente.getCodUsuario: Integer;
begin
  Result := _codUsuario;
end;

function TCliente.getContato: String;
begin
  Result := Trim(_contato);
end;

function TCliente.getDataCadastro: TDateTime;
begin
  Result := _dataCadastro;
end;

function TCliente.getDataNasc: TDateTime;
begin
  Result := _dataNasc;
end;

function TCliente.getInscEstadual: String;
begin
  Result := Trim(_inscEstadual);
end;

function TCliente.getNomeCliente: String;
begin
  Result := Trim(_nomeCliente);
end;

function TCliente.getObs: String;
begin
  Result := Trim(_obs);
end;

function TCliente.getRazaoSocial: String;
begin
  Result := Trim(_razaoSocial);
end;

function TCliente.getStatus: Smallint;
begin
  Result := status;
end;

function TCliente.getTipoFirma: Smallint;
begin
  Result := tipoFirma;
end;

function TCliente.inserirCliente: Integer;
var sqlInc: String;
begin
  // Cadastrar Cliente
  if (Self.CodCli = 0) then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CLI, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    _codCli := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
  end;

  sqlInc := 'INSERT INTO CLIENTES (';
  sqlInc := sqlInc + ' CODCLIENTE,   NOMECLIENTE,  RAZAOSOCIAL, CONTATO,';
  sqlInc := sqlInc + ' CNPJ,         INSCESTADUAL, SEGMENTO,    REGIAO, ';
  sqlInc := sqlInc + ' DATACADASTRO, CODUSUARIO,   STATUS,      TIPOFIRMA';
  sqlInc := sqlInc + ' VALUES(';
  sqlInc := sqlInc + IntToStr(Self.CodCli) + ', ';
  sqlInc := sqlInc + QuotedStr(Self.NomeCliente) + ', ';
  sqlInc := sqlInc + QuotedStr(Self.RazaoSocial) + ', ';
  sqlInc := sqlInc + QuotedStr(Self.Contato) + ', ';
  sqlInc := sqlInc + QuotedStr(Self.Cnpj) + ', ';
  sqlInc := sqlInc + QuotedStr(Self.InscEstadual) + ', 0, 0';
  sqlInc := sqlInc + QuotedStr(FormatDateTime('mm/dd/yyyy',Self.DataCadastro)) + ', ';
  sqlInc := sqlInc + IntToStr(Self.CodUsuario) + ', ';
  sqlInc := sqlInc + IntToStr(Self.Status) + ', ';
  sqlInc := sqlInc + IntToStr(Self.TipoFirma) + ')';
  executaSql(sqlInc);
  Result := Self.CodCli;
end;

procedure TCliente.setCnpj(const Value: String);
begin
  _cnpj := Value;
end;

procedure TCliente.setCodcli(const Value: Integer);
begin
  _codCli := Value;
end;

procedure TCliente.setCodUsuario(const Value: Integer);
begin
  _codUsuario := Value;
end;

procedure TCliente.setContato(const Value: String);
begin
  _contato := Value;
end;

procedure TCliente.setDataCadastro(const Value: TDateTime);
begin
  _dataCadastro := Value;
end;

procedure TCliente.setDataNasc(const Value: TDateTime);
begin
 _dataNasc := Value;
end;

procedure TCliente.setInscEstadual(const Value: String);
begin
  _inscEstadual := Value;
end;

procedure TCliente.setNomeCliente(const Value: String);
begin
  _nomeCliente := Value;
end;

procedure TCliente.setObs(const Value: String);
begin
  _obs := Value;
end;

procedure TCliente.setRazaoSocial(const Value: String);
begin
  _razaoSocial := Value;
end;

procedure TCliente.setStatus(const Value: Smallint);
begin
  _status := Value;
end;

procedure TCliente.setTipoFirma(const Value: Smallint);
begin
  _tipoFirma := Value;
end;

function TCliente.verCliente(Controle, Campo, Tipo: String): Integer;
begin
  // Consulta 1 cliente;
  Try
    Result := 0;

    With dm.cdsBusca do begin
      Close;
      CommandText := 'SELECT * FROM CLIENTES';
      if (Tipo = 'INTEGER') then
      begin
        CommandText := CommandText + ' WHERE ' + Campo + ' = ' + Controle;
      end;
      if (Tipo = 'STRING') then
      begin
        CommandText := CommandText + ' WHERE ' + Campo + ' = ' + QuotedStr(Controle);
      end;

      Open;
    end;

    if (dm.cdsBusca.RecordCount > 0) then
    begin
      Self.CodCli        := dm.cdsBusca.FieldByName('CODCLIENTE').AsInteger;
      Self.Status        := dm.cdsBusca.FieldByName('STATUS').AsInteger;
      Self.TipoFirma     := dm.cdsBusca.FieldByName('TIPOFIRMA').AsInteger;
      Self.CodUsuario    := dm.cdsBusca.FieldByName('CODUSUARIO').AsInteger;
      Self.NomeCliente   := dm.cdsBusca.FieldByName('NOMECLIENTE').AsString;
      Self.RazaoSocial   := dm.cdsBusca.FieldByName('RAZAOSOCIAL').AsString;
      Self.Contato       := dm.cdsBusca.FieldByName('CONTATO').AsString;
      Self.Cnpj          := dm.cdsBusca.FieldByName('CNPJ').AsString;
      Self.InscEstadual  := dm.cdsBusca.FieldByName('INSCESTADUAL').AsString;
      Self.DataCadastro  := dm.cdsBusca.FieldByName('DATACADASTRO').AsDateTime;
      Self.DataNasc      := dm.cdsBusca.FieldByName('DATANASC').AsDateTime;
      Result := Self.CodCli;
    end
    else
      //ShowMessage('Registro n�o encontrado');
      Result := 0;
  Except
    on E : Exception do
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
  end;
end;

end.
