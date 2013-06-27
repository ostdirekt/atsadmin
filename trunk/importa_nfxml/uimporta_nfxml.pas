unit uimporta_nfxml;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, DBXpress, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TfImporta_XML = class(TForm)
    JvDBUltimGrid1: TJvDBUltimGrid;
    JvDBGrid1: TJvDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    btnImportaNF: TBitBtn;
    btnFechar: TBitBtn;
    sqlConn: TSQLConnection;
    sdsNF: TSQLDataSet;
    sdsNFItem: TSQLDataSet;
    dspNF: TDataSetProvider;
    cdsNF: TClientDataSet;
    dsNF: TDataSource;
    dspNfItem: TDataSetProvider;
    cdsNFItem: TClientDataSet;
    dsNFItem: TDataSource;
    cdsNFNOTAFISCAL: TIntegerField;
    cdsNFNATUREZAOPERACAO: TStringField;
    cdsNFMODELO: TStringField;
    cdsNFSERIE: TStringField;
    cdsNFEMISSAO: TDateField;
    cdsNFCNPJ_EMITENTE: TStringField;
    cdsNFCNPJ_DESTINATARIO: TStringField;
    cdsNFNOME_EMITENTE: TStringField;
    cdsNFCODCLIENTE_ATS: TIntegerField;
    cdsNFRAZAOSOCIAL_ATS: TStringField;
    cdsNFSTATUS: TSmallintField;
    btnProcurar: TBitBtn;
    sqlFaltandoFornecedor: TSQLQuery;
    lblNF: TLabel;
    sqlFaltaProd: TSQLQuery;
    btnVerificaFornec: TBitBtn;
    btnExisteProdutoFornec: TBitBtn;
    cdsNFItemNOTAFISCAL: TIntegerField;
    cdsNFItemSERIE: TStringField;
    cdsNFItemCNPJ_EMITENTE: TStringField;
    cdsNFItemNUM_ITEM: TIntegerField;
    cdsNFItemCODPRODUTO_ATS: TIntegerField;
    cdsNFItemCODPRO_ATS: TStringField;
    cdsNFItemPRODUTO: TStringField;
    cdsNFItemPRODUTO_ATS: TStringField;
    cdsNFItemNCM: TStringField;
    cdsNFItemCFOP: TStringField;
    cdsNFItemUN: TStringField;
    cdsNFItemQTDE: TFloatField;
    cdsNFItemVLR_UNIT: TFloatField;
    cdsNFItemVLR_TOTAL: TFloatField;
    cdsNFItemICMS: TStringField;
    cdsNFItemPIS: TStringField;
    cdsNFItemCOFINS: TStringField;
    cdsNFItemIPI: TStringField;
    btnCadastrarProduto: TBitBtn;
    sqlBusca: TSQLQuery;
    sqlGenProd: TSQLQuery;
    Label3: TLabel;
    edNota: TEdit;
    cbNaoEnviada: TCheckBox;
    btnImportarXml: TBitBtn;
    cdsNFItemCODPRODUTO: TFMTBCDField;
    procedure btnFecharClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure JvDBUltimGrid1CellClick(Column: TColumn);
    procedure JvDBUltimGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvDBUltimGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnVerificaFornecClick(Sender: TObject);
    procedure btnExisteProdutoFornecClick(Sender: TObject);
    procedure JvDBGrid1CellClick(Column: TColumn);
    procedure btnCadastrarProdutoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImportaNFClick(Sender: TObject);
    procedure btnImportarXmlClick(Sender: TObject);
    procedure cbNaoEnviadaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    TD: TTransactionDesc;
    procedure abreNF;
    procedure abreNFItem;
    procedure mudaStatusNF;
    procedure faltandoFornecedor;
    procedure faltandoProduto;
    procedure procuraCadastroProduto;
    procedure insereMovimento;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fImporta_XML: TfImporta_XML;

implementation

uses uProdutoFornecedor, uMovimento, UDm;

{$R *.dfm}

procedure TfImporta_XML.abreNF;
var strAbreNF: String;
begin
  strAbreNF := ' SELECT r.NOTAFISCAL, r.NATUREZAOPERACAO, r.MODELO, ' +
    '    r.SERIE, r.EMISSAO, r.CNPJ_EMITENTE, ' +
    '    r.CNPJ_DESTINATARIO, r.NOME_EMITENTE,' +
    '    f.RAZAOSOCIAL as RAZAOSOCIAL_ATS, f.CODFORNECEDOR as CODCLIENTE_ATS' +
    '    ,r.STATUS    ' +
    '  FROM NOTAFISCAL_IMPORTA r  ' +
    '  left OUTER join FORNECEDOR f on UDF_DIGITS(f.CNPJ) = UDF_DIGITS(r.CNPJ_EMITENTE) ';
  if (cbNaoEnviada.Checked) then
    strAbreNF := strAbreNF + ' WHERE r.STATUS = 0 ';

  if (edNota.Text <> '') then
  begin
    if (cbNaoEnviada.Checked) then
      strAbreNF := strAbreNF + ' AND '
    else
      strAbreNF := strAbreNF + ' WHERE ';
    strAbreNF := strAbreNF + ' r.NOTAFISCAL = ' + edNota.Text;
  end;

  if (cdsNF.Active) then
    cdsNF.Close;
  cdsNF.CommandText := strAbreNF;
  cdsNF.Open;
end;

procedure TfImporta_XML.abreNFItem;
var strNFItem: String;
begin
  strNFItem := 'SELECT * FROM NOTAFISCAL_PROD_IMPORTA r '+
    ' WHERE r.NOTAFISCAL = ' + IntToSTr(cdsNFNOTAFISCAL.AsInteger) +
    '   AND r.SERIE  = ' + QuotedStr(cdsNFSERIE.AsString) +
    '   AND r.CNPJ_EMITENTE = ' + QuotedStr(cdsNFCNPJ_EMITENTE.AsString);
  if (cdsNFItem.Active) then
    cdsNFItem.Close;
  cdsNFItem.CommandText := strNFItem;
  cdsNFItem.Open;
end;

procedure TfImporta_XML.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfImporta_XML.mudaStatusNF;
var strAlteraStatus: String;
begin
  strAlteraStatus := 'UPDATE NOTAFISCAL_IMPORTA SET ' +
    ' STATUS = 1 ' +
    ' WHERE NOTAFISCAL = ' + IntToStr(cdsNFNOTAFISCAL.asInteger) +
    '   AND SERIE = ' + QuotedStr(cdsNFSERIE.AsString) +
    '   AND CNPJ_EMITENTE = ' + QuotedStr(cdsNFCNPJ_EMITENTE.AsString);
  dm.sqlsisAdimin.ExecuteDirect(strAlteraStatus);
end;

procedure TfImporta_XML.btnProcurarClick(Sender: TObject);
var Save_Cursor:TCursor;
begin
  Save_Cursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  try
    abreNF;
    abreNFItem;
    FaltandoFornecedor;
    btnProcurar.Font.Color := clWindowText;
    btnVerificaFornec.Font.Color := clRed;
    btnExisteProdutoFornec.Font.Color := clWindowText;
    btnImportaNF.Font.Color := clWindowText;
  finally
    Screen.Cursor := Save_Cursor;
  end;  
end;

procedure TfImporta_XML.JvDBUltimGrid1CellClick(Column: TColumn);
begin
  abreNFItem;
end;

procedure TfImporta_XML.JvDBUltimGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  abreNFItem;
end;

procedure TfImporta_XML.JvDBUltimGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  abreNFItem;
end;

procedure TfImporta_XML.faltandoFornecedor;
var strFaltaFornec: String;
begin
  strFaltaFornec := 'SELECT COUNT(r.CNPJ_EMITENTE) ' +
    '  FROM NOTAFISCAL_IMPORTA r  ' +
    ' WHERE NOT EXISTS (SELECT f.CODFORNECEDOR FROM FORNECEDOR f ' +
    ' WHERE UDF_DIGITS(f.CNPJ) = UDF_DIGITS(r.CNPJ_EMITENTE)) ' +
    '   AND r.STATUS = 0 ';
  if (sqlFaltandoFornecedor.Active) then
    sqlFaltandoFornecedor.Close;
  sqlFaltandoFornecedor.SQL.Clear;
  sqlFaltandoFornecedor.SQL.Add(strFaltaFornec);
  sqlFaltandoFornecedor.Open;
  if (sqlFaltandoFornecedor.Fields[0].asInteger > 0) then
  begin
    MessageDlg('Existe - ' + IntToStr(sqlFaltandoFornecedor.Fields[0].asInteger) +
       ' - fornecedor sem cadastro no sistema.', mtWarning, [mbOK], 0);
    lblNF.Caption := IntToStr(sqlFaltandoFornecedor.Fields[0].asInteger) + ' - fornecedor sem cadastro.';
  end;
end;

procedure TfImporta_XML.faltandoProduto;
var strFaltaProd: String;
begin
  strFaltaProd := 'SELECT pf.CODPRODUTO, p.CODPRO ' +
    '  FROM  produto_fornecedor pf ' +
    ' LEFT OUTER JOIN produtos p on p.CODPRODUTO = pf.CODPRODUTO ' +
    ' where pf.codfornecedor = ' + IntToStr(cdsNFCODCLIENTE_ATS.asInteger)  +
    '   and pf.codprodfornec = ' + QuotedStr(BcdToStr(cdsNFItemCODPRODUTO.AsBCD));
  if (sqlFaltaProd.Active) then
    sqlFaltaProd.Close;
  sqlFaltaProd.SQL.Clear;
  sqlFaltaProd.SQL.Add(strFaltaProd);
  sqlFaltaProd.Open;
end;

procedure TfImporta_XML.btnVerificaFornecClick(Sender: TObject);
var strInsereFornec: String;
begin
  if (cdsNF.Active) then
  begin
    while not cdsNF.Eof do
    begin
      strInsereFornec := 'SELECT CODFORNECEDOR, RAZAOSOCIAL ' +
      '  FROM FORNECEDOR  ' +
      ' WHERE UDF_DIGITS(CNPJ) = ' + QuotedStr(cdsNFCNPJ_EMITENTE.AsString);
      if (sqlFaltandoFornecedor.Active) then
        sqlFaltandoFornecedor.Close;
      sqlFaltandoFornecedor.SQL.Clear;
      sqlFaltandoFornecedor.SQL.Add(strInsereFornec);
      sqlFaltandoFornecedor.Open;
      if (not sqlFaltandoFornecedor.IsEmpty) then
      begin
        strInsereFornec := 'UPDATE NOTAFISCAL_IMPORTA SET ' +
          ' CODCLIENTE_ATS = ' +  IntToStr(sqlFaltandoFornecedor.fieldByName('CODFORNECEDOR').AsInteger) +
          ' ,RAZAOSOCIAL_ATS = ' + QuotedStr(sqlFaltandoFornecedor.fieldByName('RAZAOSOCIAL').AsString) +
          ' WHERE NOTAFISCAL = ' + IntToStr(cdsNFNOTAFISCAL.asInteger) +
          '   AND SERIE = ' + QuotedStr(trim(cdsNFSERIE.AsString)) +
          '   AND CNPJ_EMITENTE = ' + QuotedStr(trim(cdsNFCNPJ_EMITENTE.AsString));
        sqlConn.StartTransaction(TD);
        try
          sqlConn.ExecuteDirect(strInsereFornec);
          sqlConn.Commit(TD);
        except
          on E : Exception do
          begin
            ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
            sqlConn.Rollback(TD); //on failure, undo the changes}
          end;
        end;
      end;
      cdsNF.Next;
    end;
    btnVerificaFornec.Font.Color := clWindowText;
    btnProcurar.Font.Color := clWindowText;
    btnImportaNF.Font.Color := clWindowText;
    btnExisteProdutoFornec.Font.Color := clRed;
  end;
end;

procedure TfImporta_XML.btnExisteProdutoFornecClick(Sender: TObject);
var insereCodPro: String;
  linhaNF: Integer;
begin
  if (cdsNF.Active) then
  begin
    linhaNF := cdsNF.RecNo;
    cdsNF.First;
    while not cdsNF.Eof do
    begin
      abreNFItem;
      while not cdsNFItem.Eof do
      begin
        faltandoProduto;
        if (not sqlFaltaProd.IsEmpty) then
        begin
          insereCodPro := 'UPDATE NOTAFISCAL_PROD_IMPORTA SET ' +
            ' CODPRODUTO_ATS = ' +  IntToStr(sqlFaltaProd.fieldbyname('CODPRODUTO').asInteger) +
            ' ,CODPRO_ATS = ' + QuotedStr(sqlFaltaProd.fieldbyname('CODPRO').AsString) +
            ' WHERE NOTAFISCAL = ' + IntToStr(cdsNFNOTAFISCAL.asInteger) +
            '   AND SERIE = ' + QuotedStr(trim(cdsNFSERIE.AsString)) +
            '   AND CNPJ_EMITENTE = ' + QuotedStr(cdsNFCNPJ_EMITENTE.AsString) +
            '   AND NUM_ITEM = ' + IntToStr(cdsNFItemNUM_ITEM.AsInteger);
          sqlConn.StartTransaction(TD);
          try
            sqlConn.ExecuteDirect(insereCodPro);
            sqlConn.Commit(TD);
          except
            on E : Exception do
            begin
              ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
              sqlConn.Rollback(TD); //on failure, undo the changes}
            end;
          end;

        end;
        cdsNFItem.Next;
      end;
      cdsNF.Next;
    end;
    cdsNF.RecNo := linhaNF;
    abreNFItem;
    btnExisteProdutoFornec.Font.Color := clWindowText;
    btnVerificaFornec.Font.Color := clWindowText;
    btnProcurar.Font.Color := clWindowText;
    btnImportaNF.Font.Color := clRed;
  end;
end;

procedure TfImporta_XML.JvDBGrid1CellClick(Column: TColumn);
begin
  fProdutoFornec.codFornec := IntToStr(cdsNFCodCliente_ats.asInteger);
  fProdutoFornec.nomeFornec := cdsNFRAZAOSOCIAL_ATS.AsString;
  fProdutoFornec.codProdFornec := BcdToStr(cdsNFItemCODPRODUTO.AsBcd);
  fProdutoFornec.prodDescricaoFornec := cdsNFItemPRODUTO.AsString;
  fProdutoFornec.codProduto := IntToStr(cdsNFItemCODPRODUTO_ATS.AsInteger);
  fProdutoFornec.prodDescricao := cdsNFItemPRODUTO.AsString;
  fProdutoFornec.showModal;
  btnExisteProdutoFornec.Click;
end;

procedure TfImporta_XML.btnCadastrarProdutoClick(Sender: TObject);
var strInsereItem, strInsereItemF: String;
  varCodProduto : Integer;
begin
  //btnExisteProdutoFornec.Click;
  if (cdsNF.Active) then
  begin
    cdsNF.First;
    while not cdsNF.Eof do
    begin
      if (cdsNFRAZAOSOCIAL_ATS.AsString = '') then
      begin
        MessageDlg('Existe Cliente que n�o consta no sistema, fa�a' +
          ' o cadastro primeiro.', mtWarning, [mbOK], 0);
        exit;
      end;
      abreNFItem;
      while not cdsNFItem.Eof do
      begin
        if (cdsNFItemCODPRO_ATS.AsString = '') then
        begin
          procuraCadastroProduto;
          if (sqlBusca.IsEmpty) then
          begin
            if (sqlGenProd.Active) then
              sqlGenProd.Close;
            sqlGenProd.SQL.Clear;
            sqlGenProd.SQL.Add('SELECT GEN_ID(GEN_PROD, 1) FROM RDB$DATABASE');
            sqlGenProd.Open;
            varCodProduto := sqlGenProd.Fields[0].AsInteger;
            strInsereItem := 'INSERT INTO PRODUTOS (CODPRODUTO, UNIDADEMEDIDA, ' +
              ' PRODUTO, COD_BARRA, TIPO, CODPRO, QTDE_PCT, DATACADASTRO, ' +
              ' ORIGEM, NCM) VALUES (' +
              IntToStr(varCodProduto) +
              ' ,' + QuotedStr(copy(trim(cdsNFItemUN.AsString),0,2)) +
              ' ,' + QuotedStr(trim(cdsNFItemPRODUTO.AsString)) +
              ' ,' + QuotedStr(BcdToStr(cdsNFItemCODPRODUTO.AsBCD)) +
              ' ,' + QuotedStr('PROD') +
              ' ,' + QuotedStr(BcdToStr(cdsNFItemCODPRODUTO.AsBCD)) +
              ' ,1' +
              ' ,current_date ' +
              ' ,0' +
              ' ,' + Quotedstr(trim(cdsNFItemNCM.AsString)) + ')';

            strInsereItemF := 'INSERT INTO PRODUTO_FORNECEDOR (' +
              'CODPRODUTO, CODFORNECEDOR, CODPRODFORNEC) VALUES ( ' +
              IntToStr(varCodProduto) +
              ', ' + IntToStr(cdsNFCODCLIENTE_ATS.AsInteger) +
              ', ' + BcdToStr(cdsNFItemCODPRODUTO.AsBCD) +  ')';

            sqlConn.StartTransaction(TD);
            try
              sqlConn.ExecuteDirect(strInsereItem);
              sqlConn.ExecuteDirect(strInsereItemF);
              sqlConn.Commit(TD);
            except
              on E : Exception do
              begin
                ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
                sqlConn.Rollback(TD); //on failure, undo the changes}
              end;
            end;

          end;
          faltandoProduto;
          if (not sqlFaltaProd.IsEmpty) then
          begin
            strInsereItem := 'UPDATE NOTAFISCAL_PROD_IMPORTA SET ' +
              ' CODPRODUTO_ATS = ' +  IntToStr(sqlFaltaProd.fieldbyname('CODPRODUTO').asInteger) +
              ' ,CODPRO_ATS = ' + QuotedStr(sqlFaltaProd.fieldbyname('CODPRO').AsString) +
              ' WHERE NOTAFISCAL = ' + IntToStr(cdsNFNOTAFISCAL.asInteger) +
              '   AND SERIE = ' + QuotedStr(trim(cdsNFSERIE.AsString)) +
              '   AND CNPJ_EMITENTE = ' + QuotedStr(cdsNFCNPJ_EMITENTE.AsString) +
              '   AND NUM_ITEM = ' + IntToStr(cdsNFItemNUM_ITEM.AsInteger);
            sqlConn.StartTransaction(TD);
            try
              sqlConn.ExecuteDirect(strInsereItem);
              sqlConn.Commit(TD);
            except
              on E : Exception do
              begin
                ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
                sqlConn.Rollback(TD); //on failure, undo the changes}
              end;
            end;

          end;
        end;
        cdsNFItem.Next;
      end;
      cdsNF.Next;
    end;
    MessageDlg('Cadastros criados com sucesso.', mtInformation, [mbOK], 0);
  end;
end;

procedure TfImporta_XML.procuraCadastroProduto;
var strBusca: String;
begin
  strBusca := 'SELECT CODPRODUTO, CODPRO ' +
    '  FROM produtos ' +
    ' where CODPRO = ' + QuotedStr(BcdToStr(cdsNFItemCODPRODUTO.AsBcd));
  if (sqlBusca.Active) then
    sqlBusca.Close;
  sqlBusca.SQL.Clear;
  sqlBusca.SQL.Add(strBusca);
  sqlBusca.Open;
end;

procedure TfImporta_XML.FormShow(Sender: TObject);
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
end;

procedure TfImporta_XML.insereMovimento;
var fmov : TMovimento;
  codMov : Integer;
  TDm: TTransactionDesc;
begin
  // se existir nota sem fornecedor nao faz nada
  while not cdsNF.Eof do
  begin
    if (cdsNFRAZAOSOCIAL_ATS.AsString = '') then
    begin
      MessageDlg('Existe Nota Fiscal sem informar o Fornecedor.', mtWarning, [mbOK], 0);
      exit;
    end;
    cdsNF.Next;
  end;
  // se existir produto sem o correspondente no ATS nao faz nada
  while not cdsNFItem.Eof do
  begin
    if (cdsNFItemCODPRO_ATS.AsString = '') then
    begin
      MessageDlg('Existe Produto sem o C�digo no sistema.', mtWarning, [mbOK], 0);
      exit;
    end;
    cdsNFItem.Next;
  end;
  cdsNF.First;
  cdsNFItem.First;

  TDm.TransactionID := 1;
  TDm.IsolationLevel := xilREADCOMMITTED;

  fmov := TMovimento.Create;
  try
    while not cdsNF.Eof do
    begin
      fMov.CodMov      := 0;
      fMov.CodNatureza := 4;  // Compra
      fMov.DataMov     := cdsNFEMISSAO.AsDateTime;
      fMov.CodCliente  := 0;
      fMov.Status      := 0;
      fMov.CodUsuario  := 1;
      fMov.CodVendedor := 1;
      fMov.CodFornec   := cdsNFCODCLIENTE_ATS.AsInteger;
      fMov.CodCCusto   := 51;
      fMov.CodPedido   := cdsNFNOTAFISCAL.AsInteger;
      fMov.Controle    := IntToStr(cdsNFNOTAFISCAL.AsInteger);

      dm.sqlsisAdimin.StartTransaction(TDm);
      try

        codMov := fMov.inserirMovimento(0);

        While not cdsNFItem.Eof do
        begin
          //prog2.Position := cdsB.RecNo;
          // Detalhe Natureza 6
          fMov.MovDetalhe.CodMov     := codMov;
          fMov.MovDetalhe.CodProduto := cdsNFItemCODPRODUTO_ATS.AsInteger;
          fMov.MovDetalhe.Qtde       := cdsNFItemQTDE.AsFloat;
          fMov.MovDetalhe.Preco      := cdsNFItemVLR_UNIT.AsFloat;
          fMov.MovDetalhe.Descricao  := trim(cdsNFItemPRODUTO.AsString);
          fMov.MovDetalhe.Desconto   := 0;
          fMov.MovDetalhe.Un         := trim(cdsNFItemUN.AsString);
          fMov.MovDetalhe.Lote       := '0';//cdsB.FieldByName('LOTE').AsString;
          fMov.MovDetalhe.inserirMovDet;
          cdsNFItem.Next;
        end;
        mudaStatusNF;
        dm.sqlsisAdimin.Commit(TDm);
      except
        on E : Exception do
        begin
          ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
          dm.sqlsisAdimin.Rollback(TDm); //on failure, undo the changes}
        end;
      end;
      cdsNF.Next;
    end;
  finally
    fMov.Free;
  end;
end;

procedure TfImporta_XML.btnImportaNFClick(Sender: TObject);
begin
  if (cbNaoEnviada.Checked = False) then
  begin
    MessageDlg('Marque a op��o N�o enviadas, para prosseguir.', mtWarning, [mbOK], 0);
    exit;
  end;

  insereMovimento;
  DeleteFile('c:\home\xml\*');
  btnImportaNF.Font.Color := clWindowText;
  btnFechar.Font.Color := clRed;
  btnProcurar.Click;
  MessageDlg('Notas importadas com sucesso.', mtInformation, [mbOK], 0);

end;

procedure TfImporta_XML.btnImportarXmlClick(Sender: TObject);
begin
  //WinExec( PCHAR(' ARQUIVO.BAT') , SW_SHOW);
  //ShellExecute(0, nil, 'cmd.exe', '/C find "320" in.txt > out.txt', nil, SW_HIDE);
  WinExec('exe_impor.bat', SW_NORMAL);
  btnImportarXml.Font.Color := clWindowText;
  btnVerificaFornec.Font.Color := clWindowText;
  btnExisteProdutoFornec.Font.Color := clWindowText;
  btnImportaNF.Font.Color := clWindowText;
  btnProcurar.Font.Color := clRed;
end;

procedure TfImporta_XML.cbNaoEnviadaClick(Sender: TObject);
begin
  btnProcurar.Click;
end;

procedure TfImporta_XML.FormCreate(Sender: TObject);
begin
  try
  sqlConn.Connected := False;
  sqlConn.LoadParamsFromIniFile('dbxconnections.ini');
  sqlConn.LibraryName := 'dbexpUIBfire15.dll';
  sqlConn.VendorLib := 'FBCLIENT.DLL';
  sqlConn.Connected := True;
  Except
    ShowMessage('Banco de Dados invalido!');
  end;
end;

end.