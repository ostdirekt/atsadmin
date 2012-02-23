unit uAbrirCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvLabel, StdCtrls, Mask, JvExMask, JvToolEdit,
  Buttons, ExtCtrls, MMJPanel, FMTBcd, SqlExpr, Provider, DB, DBClient, DBxPress,
  Menus, JvExStdCtrls, JvEdit, JvValidateEdit;

type
  TfAbrirCaixa = class(TForm)
    MMJPanel2: TMMJPanel;
    eddata2: TJvDateEdit;
    cbbCaixa: TComboBox;
    sPlano: TClientDataSet;
    sPlanoCODIGO: TIntegerField;
    sPlanoCONTA: TStringField;
    sPlanoCONTAPAI: TStringField;
    sPlanoNOME: TStringField;
    sPlanoCONSOLIDA: TStringField;
    sPlanoDESCRICAO: TStringField;
    sPlanoRATEIO: TStringField;
    sPlanoCODREDUZIDO: TStringField;
    sPlanoREDUZRECEITA: TStringField;
    dspPlano: TDataSetProvider;
    sdsPlano: TSQLDataSet;
    sdsPlanoCODIGO: TIntegerField;
    sdsPlanoCONTA: TStringField;
    sdsPlanoCONTAPAI: TStringField;
    sdsPlanoNOME: TStringField;
    sdsPlanoCONSOLIDA: TStringField;
    sdsPlanoDESCRICAO: TStringField;
    sdsPlanoRATEIO: TStringField;
    sdsPlanoCODREDUZIDO: TStringField;
    sdsPlanoREDUZRECEITA: TStringField;
    sCaixa1: TClientDataSet;
    sCaixa1IDCAIXACONTROLE: TIntegerField;
    sCaixa1CODCAIXA: TIntegerField;
    sCaixa1CODUSUARIO: TIntegerField;
    sCaixa1DATAFECHAMENTO: TDateField;
    sCaixa1SITUACAO: TStringField;
    sCaixa1MAQUINA: TStringField;
    sCaixa1DATAABERTURA: TDateField;
    sCaixa1VALORABRE: TFloatField;
    sCaixa1VALORFECHA: TFloatField;
    sCaixa1NOMECAIXA: TStringField;
    dspCaixa1: TDataSetProvider;
    sdsCaixa1: TSQLDataSet;
    sdsCaixa1IDCAIXACONTROLE: TIntegerField;
    sdsCaixa1CODCAIXA: TIntegerField;
    sdsCaixa1CODUSUARIO: TIntegerField;
    sdsCaixa1DATAFECHAMENTO: TDateField;
    sdsCaixa1SITUACAO: TStringField;
    sdsCaixa1MAQUINA: TStringField;
    sdsCaixa1DATAABERTURA: TDateField;
    sdsCaixa1VALORABRE: TFloatField;
    sdsCaixa1VALORFECHA: TFloatField;
    sdsCaixa1NOMECAIXA: TStringField;
    cx: TSQLDataSet;
    cxIDCAIXACONTROLE: TIntegerField;
    cxCODCAIXA: TIntegerField;
    cxCODUSUARIO: TIntegerField;
    cxDATAFECHAMENTO: TDateField;
    cxSITUACAO: TStringField;
    cxMAQUINA: TStringField;
    cxDATAABERTURA: TDateField;
    cxVALORABRE: TFloatField;
    cxVALORFECHA: TFloatField;
    cxNOMECAIXA: TStringField;
    cNomecx: TClientDataSet;
    cNomecxIDCAIXACONTROLE: TIntegerField;
    cNomecxCODCAIXA: TIntegerField;
    cNomecxCODUSUARIO: TIntegerField;
    cNomecxDATAFECHAMENTO: TDateField;
    cNomecxSITUACAO: TStringField;
    cNomecxMAQUINA: TStringField;
    cNomecxDATAABERTURA: TDateField;
    cNomecxVALORABRE: TFloatField;
    cNomecxVALORFECHA: TFloatField;
    cNomecxNOMECAIXA: TStringField;
    pNomecx: TDataSetProvider;
    sNomecx: TSQLDataSet;
    sNomecxIDCAIXACONTROLE: TIntegerField;
    sNomecxCODCAIXA: TIntegerField;
    sNomecxCODUSUARIO: TIntegerField;
    sNomecxDATAFECHAMENTO: TDateField;
    sNomecxSITUACAO: TStringField;
    sNomecxMAQUINA: TStringField;
    sNomecxDATAABERTURA: TDateField;
    sNomecxVALORABRE: TFloatField;
    sNomecxVALORFECHA: TFloatField;
    sNomecxNOMECAIXA: TStringField;
    cCaixaControle: TClientDataSet;
    cCaixaControleIDCAIXACONTROLE: TIntegerField;
    cCaixaControleCODCAIXA: TIntegerField;
    cCaixaControleCODUSUARIO: TIntegerField;
    cCaixaControleDATAFECHAMENTO: TDateField;
    cCaixaControleSITUACAO: TStringField;
    cCaixaControleMAQUINA: TStringField;
    cCaixaControleDATAABERTURA: TDateField;
    cCaixaControleVALORABRE: TFloatField;
    cCaixaControleVALORFECHA: TFloatField;
    cCaixaControleNOMECAIXA: TStringField;
    dCaixaControle: TDataSetProvider;
    sCaixaControle: TSQLDataSet;
    sCaixaControleIDCAIXACONTROLE: TIntegerField;
    sCaixaControleCODCAIXA: TIntegerField;
    sCaixaControleCODUSUARIO: TIntegerField;
    sCaixaControleDATAFECHAMENTO: TDateField;
    sCaixaControleSITUACAO: TStringField;
    sCaixaControleMAQUINA: TStringField;
    sCaixaControleDATAABERTURA: TDateField;
    sCaixaControleVALORABRE: TFloatField;
    sCaixaControleVALORFECHA: TFloatField;
    sCaixaControleNOMECAIXA: TStringField;
    sPlano1: TClientDataSet;
    sPlano1CODIGO: TIntegerField;
    sPlano1CONTA: TStringField;
    sPlano1CONTAPAI: TStringField;
    sPlano1NOME: TStringField;
    sPlano1CONSOLIDA: TStringField;
    sPlano1DESCRICAO: TStringField;
    sPlano1RATEIO: TStringField;
    sPlano1CODREDUZIDO: TStringField;
    sPlano1REDUZRECEITA: TStringField;
    dspPlano1: TDataSetProvider;
    sdsPlano1: TSQLDataSet;
    sdsPlano1CODIGO: TIntegerField;
    sdsPlano1CONTA: TStringField;
    sdsPlano1CONTAPAI: TStringField;
    sdsPlano1NOME: TStringField;
    sdsPlano1CONSOLIDA: TStringField;
    sdsPlano1DESCRICAO: TStringField;
    sdsPlano1RATEIO: TStringField;
    sdsPlano1CODREDUZIDO: TStringField;
    sdsPlano1REDUZRECEITA: TStringField;
    PopupMenu1: TPopupMenu;
    Abrir1: TMenuItem;
    Sair1: TMenuItem;
    MMJPanel3: TMMJPanel;
    JvLabel12: TJvLabel;
    jvValor: TJvValidateEdit;
    MMJPanel1: TMMJPanel;
    btnAbrir: TBitBtn;
    btn2: TBitBtn;
    lbCaixa: TJvLabel;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    procedure FormShow(Sender: TObject);
    procedure btnAbrirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirCaixa;    
  public
    { Public declarations }
  end;

var
  fAbrirCaixa: TfAbrirCaixa;
  varCodColab, CODIGODEORIGEM : integer;
  varValor : Double;
  TD: TTransactionDesc;
  DATAFECHAMENTO : TDate;

implementation

uses UDm;

{$R *.dfm}

procedure TfAbrirCaixa.FormShow(Sender: TObject);
var
  codigoCaixa, caixabanco : string;
begin
  //------Pego do Parametro o cadigo para listar os Caixas ---
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'LISTARCAIXA';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
  begin
    codigoCaixa := dm.cds_parametroDADOS.AsString;
    sPlano.close;
    sPlano.Params[0].AsString := codigoCaixa;
    sPlano.Open;
    sPlano.First;
    cbbCaixa.Items.Clear;
    while not sPlano.Eof do
    begin
       cbbCaixa.Items.Add(sPlanoNOME.AsString);
       sPlano.Next;
    end;
    sPlano.Close;
  end
  else
  begin
    MessageDlg('� preciso cadastrar Parametro LISTARCAIXA, com a conta pai para CAIXAS.', mtConfirmation, [mbok], 0);
    exit;
  end;
  //Verifica se caixa est� aberto na MAQUINA
  if (sCaixa1.Active) then
    sCaixa1.Close;
  sCaixa1.Params[0].AsString := MICRO;
  sCaixa1.Params[1].AsString := 'A'; //Caixa Aberto
  sCaixa1.Open;
  if (not sCaixa1.IsEmpty) then
  begin
     cbbCaixa.Text := sCaixa1NOMECAIXA.AsString;
     cbbCaixa.Enabled := False;
     btnAbrir.Enabled := False;
     eddata2.Date := sCaixa1DATAABERTURA.AsDateTime;
  end
  else
  begin
    edData2.Date := Now;
    btnAbrir.Enabled := True;
  end;
  if (eddata2.Text = '  /  /    ') then
    eddata2.Date := Now;
  sCaixa1.Close;
  if (cbbCaixa.Text <> '') then
     lbCaixa.Caption := 'Caixa Aberto'
  else
     lbCaixa.Caption := 'Abrir  Caixa'     
end;

procedure TfAbrirCaixa.btnAbrirClick(Sender: TObject);
begin
  if (cx.Active) then
    cx.Close;
  cx.Params[0].AsDate := eddata2.Date;
  cx.Params[1].AsString := cbbCaixa.Text;
  cx.Params[2].AsString := 'F'; //Caixa Fechado
  cx.Open;
  if (not cx.IsEmpty) then
  begin
    MessageDlg('Caixa j� foi Fechado nessa data. Utilize outro Caixa', mtWarning, [mbOK], 0);
    exit;
  end;
  cx.Close;

  if (btnAbrir.Enabled = False) then
  begin
    ShowMessage('Caixa j� est� Aberto');
    exit;
  end;

  if (sCaixa1.Active) then
    sCaixa1.Close;
  sCaixa1.Params[0].AsString := MICRO;
  sCaixa1.Params[1].AsString := 'A'; //Caixa Aberto
  sCaixa1.Open;
  if (not sCaixa1.IsEmpty) then
  begin
    MessageDlg('Caixa j� foi aberto nesse Computador', mtWarning, [mbOK], 0);
    exit;
  end;
  sCaixa1.Close;

  if (cNomecx.Active) then
    cNomecx.Close;
  cNomecx.Params[0].AsString := cbbCaixa.Text;
  cNomecx.Open;
  if (not cNomecx.IsEmpty) then
  begin
    MessageDlg('Caixa j� foi aberto em outro Computador', mtWarning, [mbOK], 0);
    exit;
  end;
  cNomecx.Close;
  // Insere na tabela caixa controle
  if (cbbCaixa.Text = '') then
  begin
    MessageDlg('informe o caixa que est� sendo aberto', mtWarning, [mbOK], 0);
    exit;
  end;
  if (not cCaixaControle.Active) then
    cCaixaControle.Open;
  cCaixaControle.Append;
  cCaixaControleCODUSUARIO.AsInteger := usulog;
  cCaixaControleNOMECAIXA.AsString := cbbCaixa.Text;
  cCaixaControleDATAFECHAMENTO.AsDateTime := now; //Populo pq o campo � obrigat�rio
  cCaixaControleSITUACAO.AsString := 'A';
  cCaixaControleMAQUINA.AsString := MICRO;
  cCaixaControleDATAABERTURA.AsDateTime := eddata2.Date;
  cCaixaControleVALORABRE.Value := jvValor.Value;
  cCaixaControle.ApplyUpdates(0);
  cCaixaControle.Close;

  if (sCaixa1.Active) then
    sCaixa1.Close;
  sCaixa1.Params[0].AsString := MICRO;
  sCaixa1.Params[1].AsString := 'A'; //Caixa Aberto
  sCaixa1.Open;

  CODIGODEORIGEM := sCaixa1IDCAIXACONTROLE.AsInteger;

  DATAFECHAMENTO := eddata2.Date;
  AbrirCaixa;
  btnAbrir.Enabled := False;

end;

procedure TfAbrirCaixa.AbrirCaixa;
 Var
   var_sqla : string;
   cod_id, var_usuario, primeiro_lanc : integer;
begin
    var_usuario := usulog;
    //  Conta D�bito
    //Abre a c_genid para pegar o n�mero do CODCONTAB
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CONTAB_AUTOINC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cod_id := dm.c_6_genidCODIGO.AsInteger;
    primeiro_lanc := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
    var_sqla := 'INSERT INTO MOVIMENTOCONT (CODCONT, CODORIGEM, TIPOORIGEM ' +
           ', DATA, CODUSUARIO, CODCCUSTO, CONTA ' +
           ', VALORCREDITO, VALORDEBITO, VALORORCADO, QTDECREDITO ' +
           ', QTDEDEBITO, QTDEORCADO) Values (';
    var_sqla := var_sqla + intToStr(cod_id); //CODCONT
    var_sqla := var_sqla + ',' + intToStr(CODIGODEORIGEM); //CODORIGEM
    var_sqla := var_sqla + ',''' + 'CONTABIL'; //TIPOORIGEM
    var_sqla := var_sqla + ''',''' + formatdatetime('mm/dd/yyyy', eddata2.Date); //DATA
    var_sqla := var_sqla + ''',' + IntToStr(var_usuario);  //CODUSUARIO
    var_sqla := var_sqla + ',' + IntToStr(1); //CODCUSTO
    // Busco Codigo Caixa
    if (not sPlano1.Active) then
      sPlano1.Open;
    sPlano1.Locate('NOME',cbbCaixa.Text, [loCaseInsensitive]);
    var_sqla := var_sqla + ',' + QuotedStr(sPlano1CONTA.AsString); //CONTA CAIXA
    sPlano1.Close;
    var_sqla := var_sqla + ',' + '0'; //VALOR CREDITO
    DecimalSeparator := '.';
    var_sqla := var_sqla + ',' + QuotedStr(FloatToStr(jvValor.Value)); //Valor Debito
    DecimalSeparator := ',';
    var_sqla := var_sqla + ',' + '0';  //Valor ORCADO
    var_sqla := var_sqla + ',' + '0'; //QTDECREDITO
    var_sqla := var_sqla + ',' + '0'; //QTDEDEBITO
    var_sqla := var_sqla + ',' + '0'; //QTDEORCADO
    var_sqla := var_sqla + ')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);
    { *** Inserindo o Hist�rico *** }
    var_sqla := 'INSERT INTO HISTORICO_CONTAB(COD_CONTAB, HISTORICO ' +
                ') Values (';
    var_sqla := var_sqla + intToStr(cod_id);
    var_sqla := var_sqla + ',''' + 'ABERTURA DE CAIXA';
    var_sqla := var_sqla + ''')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);

    //Conta cr�dito
    //Abre a c_genid para pegar o n�mero do CODCONTAB
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CONTAB_AUTOINC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cod_id := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;

    var_sqla := 'INSERT INTO MOVIMENTOCONT (CODCONT, CODORIGEM, TIPOORIGEM ' +
           ', DATA, CODUSUARIO, CODCCUSTO, CONTA ' +
           ', VALORCREDITO, VALORDEBITO, VALORORCADO, QTDECREDITO ' +
           ', QTDEDEBITO, QTDEORCADO) Values (';
    var_sqla := var_sqla + intToStr(cod_id); //CODCONT
    var_sqla := var_sqla + ',' + intToStr(CODIGODEORIGEM); //CODORIGEM
    var_sqla := var_sqla + ',''' + 'CONTABIL'; //TIPOORIGEM
    var_sqla := var_sqla + ''',''' + formatdatetime('mm/dd/yyyy', eddata2.Date); //DATA
    var_sqla := var_sqla + ''',' + IntToStr(var_usuario);  //CODUSUARIO
    var_sqla := var_sqla + ',' + IntToStr(1); //CODCUSTO
    if (not sPlano1.Active) then
      sPlano1.Open;
    sPlano1.Locate('NOME','ABRECAIXA', [loCaseInsensitive]);
    var_sqla := var_sqla + ',' + QuotedStr(sPlano1CONTA.AsString); //CONTA ABERTURA DE CAIXA
    sPlano1.Close;
    DecimalSeparator := '.';
    var_sqla := var_sqla + ',' + QuotedStr(FloatToStr(0)); //Valor Debito
    DecimalSeparator := ',';
    var_sqla := var_sqla + ',' + '0'; //Valor Debito
    var_sqla := var_sqla + ',' + '0';  //Valor ORCADO
    var_sqla := var_sqla + ',' + '0'; //QTDECREDITO
    var_sqla := var_sqla + ',' + '0'; //QTDEDEBITO
    var_sqla := var_sqla + ',' + '0'; //QTDEORCADO
    var_sqla := var_sqla + ')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);

    { *** Inserindo o Hist�rico *** }
    var_sqla := 'INSERT INTO HISTORICO_CONTAB(COD_CONTAB, HISTORICO ' +
                ') Values (';
    var_sqla := var_sqla + intToStr(cod_id);
    var_sqla := var_sqla + ',''' + 'ABERTURA DE CAIXA';
    var_sqla := var_sqla + ''')';
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);
end;

procedure TfAbrirCaixa.btnSairClick(Sender: TObject);
begin
  close;
end;

end.
