unit UDM_MOV;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, Provider;

type
  TDM_MOV = class(TDataModule)
    s_buscaMov: TSQLDataSet;
    s_buscaMovCODMOVIMENTO: TIntegerField;
    s_movimento: TSQLDataSet;
    p_movimento: TDataSetProvider;
    s_movimentoCODMOVIMENTO: TIntegerField;
    s_movimentoDATAMOVIMENTO: TDateField;
    s_movimentoCODCLIENTE: TIntegerField;
    s_movimentoCODNATUREZA: TSmallintField;
    s_movimentoSTATUS: TSmallintField;
    s_movimentoCODUSUARIO: TSmallintField;
    s_movimentoCODVENDEDOR: TSmallintField;
    s_movimentoCODALMOXARIFADO: TIntegerField;
    s_movimentoCODFORNECEDOR: TIntegerField;
    s_movimentoDATA_SISTEMA: TSQLTimeStampField;
    s_movimentoCOD_VEICULO: TIntegerField;
    s_movimentoCONTROLE: TStringField;
    s_movimentoOBS: TStringField;
    s_movimentoTOTALMOVIMENTO: TFloatField;
    s_movimentoCODMOVRATEIO: TIntegerField;
    s_movimentoVALORRATEIO: TFloatField;
    s_movimentoRATEIO: TFloatField;
    s_movimentoCONFERIDO: TStringField;
    s_movimentoNFCOBRANCA: TIntegerField;
    s_movimentoORDEMATEND: TIntegerField;
    s_movimentoNFREVENDA: TIntegerField;
    s_movimentoCODORIGEM: TIntegerField;
    s_movimentoKM: TStringField;
    s_movimentoNFE: TStringField;
    s_movimentoPRAZO_ENT: TIntegerField;
    s_movimentoVAL_PROP: TDateField;
    s_movimentoFORMA_PAG: TStringField;
    s_movimentoVALOR_FRETE: TFloatField;
    s_movimentoDATA_ENTREGA: TDateField;
    s_movimentoPRAZO_PAGAMENTO: TStringField;
    s_movimentoUSER_APROVA: TStringField;
    s_movimentoCODTRANSP: TIntegerField;
    s_movimentoTPFRETE: TStringField;
    s_movimentoCODPEDIDO: TIntegerField;
    s_movimentoQTD: TIntegerField;
    c_movimento: TClientDataSet;
    c_movimentoCODMOVIMENTO: TIntegerField;
    c_movimentoDATAMOVIMENTO: TDateField;
    c_movimentoCODCLIENTE: TIntegerField;
    c_movimentoCODNATUREZA: TSmallintField;
    c_movimentoSTATUS: TSmallintField;
    c_movimentoCODUSUARIO: TSmallintField;
    c_movimentoCODVENDEDOR: TSmallintField;
    c_movimentoCODALMOXARIFADO: TIntegerField;
    c_movimentoCODFORNECEDOR: TIntegerField;
    c_movimentoDATA_SISTEMA: TSQLTimeStampField;
    c_movimentoCOD_VEICULO: TIntegerField;
    c_movimentoCONTROLE: TStringField;
    c_movimentoOBS: TStringField;
    c_movimentoTOTALMOVIMENTO: TFloatField;
    c_movimentoCODMOVRATEIO: TIntegerField;
    c_movimentoVALORRATEIO: TFloatField;
    c_movimentoRATEIO: TFloatField;
    c_movimentoCONFERIDO: TStringField;
    c_movimentoNFCOBRANCA: TIntegerField;
    c_movimentoORDEMATEND: TIntegerField;
    c_movimentoNFREVENDA: TIntegerField;
    c_movimentoCODORIGEM: TIntegerField;
    c_movimentoKM: TStringField;
    c_movimentoNFE: TStringField;
    c_movimentoPRAZO_ENT: TIntegerField;
    c_movimentoVAL_PROP: TDateField;
    c_movimentoFORMA_PAG: TStringField;
    c_movimentoVALOR_FRETE: TFloatField;
    c_movimentoDATA_ENTREGA: TDateField;
    c_movimentoPRAZO_PAGAMENTO: TStringField;
    c_movimentoUSER_APROVA: TStringField;
    c_movimentoCODTRANSP: TIntegerField;
    c_movimentoTPFRETE: TStringField;
    c_movimentoCODPEDIDO: TIntegerField;
    c_movimentoQTD: TIntegerField;
    p_movdet: TDataSetProvider;
    c_movdet: TClientDataSet;
    d_movimento: TDataSource;
    d_movdet: TDataSource;
    s_movdet: TSQLDataSet;
    s_movdetCODDETALHE: TIntegerField;
    s_movdetCODMOVIMENTO: TIntegerField;
    s_movdetCODALMOXARIFADO: TSmallintField;
    s_movdetCONTROLE: TSmallintField;
    s_movdetCODPRODUTO: TIntegerField;
    s_movdetQUANTIDADE: TFloatField;
    s_movdetPRECO: TFloatField;
    s_movdetICMS: TFloatField;
    s_movdetUN: TStringField;
    s_movdetQTDE_ALT: TFloatField;
    s_movdetBAIXA: TStringField;
    s_movdetVALTOTAL: TFloatField;
    s_movdetCOD_COMISSAO: TIntegerField;
    s_movdetLOTE: TStringField;
    s_movdetDTAFAB: TDateField;
    s_movdetDTAVCTO: TDateField;
    s_movdetPRECOCUSTO: TFloatField;
    s_movdetVLRESTOQUE: TFloatField;
    s_movdetQTDEESTOQUE: TFloatField;
    s_movdetNOTAFISCAL: TStringField;
    s_movdetDESCPRODUTO: TStringField;
    s_movdetPRECOULTIMACOMPRA: TFloatField;
    s_movdetCST: TStringField;
    s_movdetVALOR_ICMS: TFloatField;
    s_movdetVLR_BASE: TFloatField;
    s_movdetPERIODOINI: TSQLTimeStampField;
    s_movdetPERIODOFIM: TSQLTimeStampField;
    s_movdetCODIGO: TIntegerField;
    s_movdetCODIGO1: TIntegerField;
    s_movdetCODAUTORIZACAO: TIntegerField;
    s_movdetSTATUS: TStringField;
    s_movdetPAGOUCOMISSAO: TStringField;
    s_movdetCODMOVRATEIO: TIntegerField;
    s_movdetVALORRATEIO: TFloatField;
    s_movdetPAGO: TStringField;
    s_movdetRATEIO: TFloatField;
    s_movdetPORCENTAGENDESC: TFloatField;
    s_movdetICMS_SUBST: TFloatField;
    s_movdetICMS_SUBSTD: TFloatField;
    s_movdetVLR_BASEICMS: TFloatField;
    s_movdetPIPI: TFloatField;
    s_movdetVIPI: TFloatField;
    s_movdetCFOP: TStringField;
    s_movdetFRETE: TFloatField;
    s_movdetCSOSN: TStringField;
    s_movdetVALOR_DESCONTO: TFloatField;
    s_movdetRECEBIDO: TFloatField;
    s_movdetVALOR_SEGURO: TFloatField;
    s_movdetVALOR_OUTROS: TFloatField;
    s_movdetOBS: TStringField;
    s_movdetCOD_FUNCIONARIO: TIntegerField;
    c_movdetCODDETALHE: TIntegerField;
    c_movdetCODMOVIMENTO: TIntegerField;
    c_movdetCODALMOXARIFADO: TSmallintField;
    c_movdetCONTROLE: TSmallintField;
    c_movdetCODPRODUTO: TIntegerField;
    c_movdetQUANTIDADE: TFloatField;
    c_movdetPRECO: TFloatField;
    c_movdetICMS: TFloatField;
    c_movdetUN: TStringField;
    c_movdetQTDE_ALT: TFloatField;
    c_movdetBAIXA: TStringField;
    c_movdetVALTOTAL: TFloatField;
    c_movdetCOD_COMISSAO: TIntegerField;
    c_movdetLOTE: TStringField;
    c_movdetDTAFAB: TDateField;
    c_movdetDTAVCTO: TDateField;
    c_movdetPRECOCUSTO: TFloatField;
    c_movdetVLRESTOQUE: TFloatField;
    c_movdetQTDEESTOQUE: TFloatField;
    c_movdetNOTAFISCAL: TStringField;
    c_movdetDESCPRODUTO: TStringField;
    c_movdetPRECOULTIMACOMPRA: TFloatField;
    c_movdetCST: TStringField;
    c_movdetVALOR_ICMS: TFloatField;
    c_movdetVLR_BASE: TFloatField;
    c_movdetPERIODOINI: TSQLTimeStampField;
    c_movdetPERIODOFIM: TSQLTimeStampField;
    c_movdetCODIGO: TIntegerField;
    c_movdetCODIGO1: TIntegerField;
    c_movdetCODAUTORIZACAO: TIntegerField;
    c_movdetSTATUS: TStringField;
    c_movdetPAGOUCOMISSAO: TStringField;
    c_movdetCODMOVRATEIO: TIntegerField;
    c_movdetVALORRATEIO: TFloatField;
    c_movdetPAGO: TStringField;
    c_movdetRATEIO: TFloatField;
    c_movdetPORCENTAGENDESC: TFloatField;
    c_movdetICMS_SUBST: TFloatField;
    c_movdetICMS_SUBSTD: TFloatField;
    c_movdetVLR_BASEICMS: TFloatField;
    c_movdetPIPI: TFloatField;
    c_movdetVIPI: TFloatField;
    c_movdetCFOP: TStringField;
    c_movdetFRETE: TFloatField;
    c_movdetCSOSN: TStringField;
    c_movdetVALOR_DESCONTO: TFloatField;
    c_movdetRECEBIDO: TFloatField;
    c_movdetVALOR_SEGURO: TFloatField;
    c_movdetVALOR_OUTROS: TFloatField;
    c_movdetOBS: TStringField;
    c_movdetCOD_FUNCIONARIO: TIntegerField;
    s_buscaProd: TSQLDataSet;
    s_buscaProdCODPRODUTO: TIntegerField;
    s_buscaProdFAMILIA: TStringField;
    s_buscaProdCATEGORIA: TStringField;
    s_buscaProdMARCA: TStringField;
    s_buscaProdUNIDADEMEDIDA: TStringField;
    s_buscaProdDATAULTIMACOMPRA: TDateField;
    s_buscaProdESTOQUEMAXIMO: TFloatField;
    s_buscaProdESTOQUEATUAL: TFloatField;
    s_buscaProdESTOQUEREPOSICAO: TFloatField;
    s_buscaProdESTOQUEMINIMO: TFloatField;
    s_buscaProdVALORUNITARIOATUAL: TFloatField;
    s_buscaProdVALORUNITARIOANTERIOR: TFloatField;
    s_buscaProdICMS: TFloatField;
    s_buscaProdCODALMOXARIFADO: TIntegerField;
    s_buscaProdIPI: TFloatField;
    s_buscaProdCLASSIFIC_FISCAL: TStringField;
    s_buscaProdCST: TStringField;
    s_buscaProdBASE_ICMS: TFloatField;
    s_buscaProdPRODUTO: TStringField;
    s_buscaProdPRECOMEDIO: TBCDField;
    s_buscaProdCOD_COMISSAO: TIntegerField;
    s_buscaProdMARGEM_LUCRO: TFloatField;
    s_buscaProdCOD_BARRA: TStringField;
    s_buscaProdVALOR_PRAZO: TFloatField;
    s_buscaProdTIPO: TStringField;
    s_buscaProdCONTA_DESPESA: TStringField;
    s_buscaProdCONTA_RECEITA: TStringField;
    s_buscaProdCONTA_ESTOQUE: TStringField;
    s_buscaProdRATEIO: TStringField;
    s_buscaProdCODPRO: TStringField;
    s_buscaProdQTDE_PCT: TFloatField;
    s_buscaProdPESO_QTDE: TFloatField;
    s_buscaProdDATACADASTRO: TSQLTimeStampField;
    s_buscaProdMARGEM: TFloatField;
    s_buscaProdPRO_COD: TStringField;
    s_buscaProdDATAGRAV: TDateField;
    s_buscaProdCODFORN: TStringField;
    s_buscaProdFOTOPRODUTO: TStringField;
    s_buscaProdLOTES: TStringField;
    s_buscaProdUSA: TStringField;
    s_buscaProdLOCALIZACAO: TStringField;
    s_buscaProdTIPOPRECOVENDA: TStringField;
    s_buscaProdVALORMINOMO: TFloatField;
    s_buscaProdVALORMINIMO: TFloatField;
    s_buscaProdVALORCOMISSAO: TFloatField;
    s_buscaProdGERADESCONTO: TStringField;
    s_buscaProdIMPRIMIR: TStringField;
    s_buscaProdORIGEM: TIntegerField;
    s_buscaProdNCM: TStringField;
    s_buscaProdIMPRESSORA_1: TStringField;
    s_buscaProdIMPRESSORA_2: TStringField;
    s_buscaProdIMPRESSORA_3: TStringField;
    s_buscaProdLEAD_TIME: TSmallintField;
    c_movdetvalortotal: TFloatField;
    c_movdettotalpedido: TAggregateField;
    s_Comanda: TSQLDataSet;
    IntegerField1: TIntegerField;
    DateField1: TDateField;
    IntegerField2: TIntegerField;
    SmallintField1: TSmallintField;
    SmallintField2: TSmallintField;
    SmallintField3: TSmallintField;
    SmallintField4: TSmallintField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    SQLTimeStampField1: TSQLTimeStampField;
    IntegerField5: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    FloatField1: TFloatField;
    IntegerField6: TIntegerField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    StringField3: TStringField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    IntegerField11: TIntegerField;
    DateField2: TDateField;
    StringField6: TStringField;
    FloatField4: TFloatField;
    DateField3: TDateField;
    StringField7: TStringField;
    StringField8: TStringField;
    IntegerField12: TIntegerField;
    StringField9: TStringField;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    p_comanda: TDataSetProvider;
    c_comanda: TClientDataSet;
    d_comanda: TDataSource;
    s_ComandaNOMECLIENTE: TStringField;
    c_comandaCODMOVIMENTO: TIntegerField;
    c_comandaDATAMOVIMENTO: TDateField;
    c_comandaCODCLIENTE: TIntegerField;
    c_comandaCODNATUREZA: TSmallintField;
    c_comandaSTATUS: TSmallintField;
    c_comandaCODUSUARIO: TSmallintField;
    c_comandaCODVENDEDOR: TSmallintField;
    c_comandaCODALMOXARIFADO: TIntegerField;
    c_comandaCODFORNECEDOR: TIntegerField;
    c_comandaDATA_SISTEMA: TSQLTimeStampField;
    c_comandaCOD_VEICULO: TIntegerField;
    c_comandaCONTROLE: TStringField;
    c_comandaOBS: TStringField;
    c_comandaTOTALMOVIMENTO: TFloatField;
    c_comandaCODMOVRATEIO: TIntegerField;
    c_comandaVALORRATEIO: TFloatField;
    c_comandaRATEIO: TFloatField;
    c_comandaCONFERIDO: TStringField;
    c_comandaNFCOBRANCA: TIntegerField;
    c_comandaORDEMATEND: TIntegerField;
    c_comandaNFREVENDA: TIntegerField;
    c_comandaCODORIGEM: TIntegerField;
    c_comandaKM: TStringField;
    c_comandaNFE: TStringField;
    c_comandaPRAZO_ENT: TIntegerField;
    c_comandaVAL_PROP: TDateField;
    c_comandaFORMA_PAG: TStringField;
    c_comandaVALOR_FRETE: TFloatField;
    c_comandaDATA_ENTREGA: TDateField;
    c_comandaPRAZO_PAGAMENTO: TStringField;
    c_comandaUSER_APROVA: TStringField;
    c_comandaCODTRANSP: TIntegerField;
    c_comandaTPFRETE: TStringField;
    c_comandaCODPEDIDO: TIntegerField;
    c_comandaQTD: TIntegerField;
    c_comandaNOMECLIENTE: TStringField;
    s_buscaMovNOMECLIENTE: TStringField;
    s_BuscaComanda: TSQLDataSet;
    s_BuscaComandaCODCLIENTE: TIntegerField;
    s_BuscaComandaNOMECLIENTE: TStringField;
    s_venda: TSQLDataSet;
    p_venda: TDataSetProvider;
    c_venda: TClientDataSet;
    s_vendaCODVENDA: TIntegerField;
    s_vendaCODMOVIMENTO: TIntegerField;
    s_vendaCODCLIENTE: TIntegerField;
    s_vendaDATAVENDA: TDateField;
    s_vendaDATAVENCIMENTO: TDateField;
    s_vendaNUMEROBORDERO: TIntegerField;
    s_vendaBANCO: TSmallintField;
    s_vendaCODVENDEDOR: TSmallintField;
    s_vendaSTATUS: TSmallintField;
    s_vendaCODUSUARIO: TSmallintField;
    s_vendaDATASISTEMA: TDateField;
    s_vendaVALOR: TFloatField;
    s_vendaNOTAFISCAL: TIntegerField;
    s_vendaSERIE: TStringField;
    s_vendaDESCONTO: TFloatField;
    s_vendaCODCCUSTO: TSmallintField;
    s_vendaN_PARCELA: TSmallintField;
    s_vendaOPERACAO: TStringField;
    s_vendaFORMARECEBIMENTO: TStringField;
    s_vendaN_DOCUMENTO: TStringField;
    s_vendaCAIXA: TSmallintField;
    s_vendaMULTA_JUROS: TFloatField;
    s_vendaAPAGAR: TFloatField;
    s_vendaVALOR_PAGAR: TFloatField;
    s_vendaENTRADA: TFloatField;
    s_vendaN_BOLETO: TStringField;
    s_vendaSTATUS1: TStringField;
    s_vendaCONTROLE: TStringField;
    s_vendaOBS: TStringField;
    s_vendaVALOR_ICMS: TFloatField;
    s_vendaVALOR_FRETE: TFloatField;
    s_vendaVALOR_SEGURO: TFloatField;
    s_vendaOUTRAS_DESP: TFloatField;
    s_vendaVALOR_IPI: TFloatField;
    s_vendaPRAZO: TStringField;
    s_vendaPORCENTAGENDESC: TFloatField;
    s_vendaCODORIGEM: TIntegerField;
    d_venda: TDataSource;
    s_vendaNOMECLIENTE: TStringField;
    s_vendaNOMEUSUARIO: TStringField;
    s_movimentoNOMECLIENTE: TStringField;
    c_movimentoNOMECLIENTE: TStringField;
    s_movimentoNOMEUSUARIO: TStringField;
    c_movimentoNOMEUSUARIO: TStringField;
    s_movdetCODPRO: TStringField;
    s_movdetCOD_BARRA: TStringField;
    c_movdetCODPRO: TStringField;
    c_movdetCOD_BARRA: TStringField;
    s_movimentoCODCOTACAO: TIntegerField;
    s_movimentoUSUARIOLOGADO: TStringField;
    c_movimentoCODCOTACAO: TIntegerField;
    c_movimentoUSUARIOLOGADO: TStringField;
    s_BuscaComandaCOD_CLI: TStringField;
    s_movimentoTIPO_PEDIDO: TStringField;
    c_movimentoTIPO_PEDIDO: TStringField;
    s_vendaTROCO: TFloatField;
    c_vendaCODVENDA: TIntegerField;
    c_vendaCODMOVIMENTO: TIntegerField;
    c_vendaCODCLIENTE: TIntegerField;
    c_vendaDATAVENDA: TDateField;
    c_vendaDATAVENCIMENTO: TDateField;
    c_vendaNUMEROBORDERO: TIntegerField;
    c_vendaBANCO: TSmallintField;
    c_vendaCODVENDEDOR: TSmallintField;
    c_vendaCODUSUARIO: TSmallintField;
    c_vendaDATASISTEMA: TDateField;
    c_vendaSTATUS: TSmallintField;
    c_vendaVALOR: TFloatField;
    c_vendaNOTAFISCAL: TIntegerField;
    c_vendaSERIE: TStringField;
    c_vendaDESCONTO: TFloatField;
    c_vendaCODCCUSTO: TSmallintField;
    c_vendaN_PARCELA: TSmallintField;
    c_vendaOPERACAO: TStringField;
    c_vendaFORMARECEBIMENTO: TStringField;
    c_vendaN_DOCUMENTO: TStringField;
    c_vendaCAIXA: TSmallintField;
    c_vendaMULTA_JUROS: TFloatField;
    c_vendaAPAGAR: TFloatField;
    c_vendaVALOR_PAGAR: TFloatField;
    c_vendaENTRADA: TFloatField;
    c_vendaN_BOLETO: TStringField;
    c_vendaSTATUS1: TStringField;
    c_vendaCONTROLE: TStringField;
    c_vendaOBS: TStringField;
    c_vendaVALOR_ICMS: TFloatField;
    c_vendaVALOR_FRETE: TFloatField;
    c_vendaVALOR_SEGURO: TFloatField;
    c_vendaOUTRAS_DESP: TFloatField;
    c_vendaVALOR_IPI: TFloatField;
    c_vendaPRAZO: TStringField;
    c_vendaPORCENTAGENDESC: TFloatField;
    c_vendaCODORIGEM: TIntegerField;
    c_vendaNOMECLIENTE: TStringField;
    c_vendaNOMEUSUARIO: TStringField;
    c_vendaTROCO: TFloatField;
    s_forma: TSQLDataSet;
    s_formaCOD_VENDA: TIntegerField;
    s_formaID_ENTRADA: TIntegerField;
    s_formaCAIXA: TSmallintField;
    s_formaN_DOC: TStringField;
    s_formaFORMA_PGTO: TStringField;
    s_formaVALOR_PAGO: TFloatField;
    s_formaFORMA: TStringField;
    s_formaNOME: TStringField;
    p_forma: TDataSetProvider;
    c_forma: TClientDataSet;
    c_formaCOD_VENDA: TIntegerField;
    c_formaID_ENTRADA: TIntegerField;
    c_formaCAIXA: TSmallintField;
    c_formaN_DOC: TStringField;
    c_formaFORMA_PGTO: TStringField;
    c_formaVALOR_PAGO: TFloatField;
    c_formaFORMA: TStringField;
    c_formaNOME: TStringField;
    c_formatotal: TAggregateField;
    s_delivery: TSQLDataSet;
    p_delivery: TDataSetProvider;
    c_Delivery: TClientDataSet;
    d_delivery: TDataSource;
    c_DeliveryCODMOVIMENTO: TIntegerField;
    c_DeliveryDATAMOVIMENTO: TDateField;
    c_DeliveryCODCLIENTE: TIntegerField;
    c_DeliveryCODNATUREZA: TSmallintField;
    c_DeliverySTATUS: TSmallintField;
    c_DeliveryCODUSUARIO: TSmallintField;
    c_DeliveryCODVENDEDOR: TSmallintField;
    c_DeliveryCODALMOXARIFADO: TIntegerField;
    c_DeliveryCODFORNECEDOR: TIntegerField;
    c_DeliveryDATA_SISTEMA: TSQLTimeStampField;
    c_DeliveryCOD_VEICULO: TIntegerField;
    c_DeliveryCONTROLE: TStringField;
    c_DeliveryOBS: TStringField;
    c_DeliveryTOTALMOVIMENTO: TFloatField;
    c_DeliveryCODMOVRATEIO: TIntegerField;
    c_DeliveryVALORRATEIO: TFloatField;
    c_DeliveryRATEIO: TFloatField;
    c_DeliveryCONFERIDO: TStringField;
    c_DeliveryNFCOBRANCA: TIntegerField;
    c_DeliveryORDEMATEND: TIntegerField;
    c_DeliveryNFREVENDA: TIntegerField;
    c_DeliveryCODORIGEM: TIntegerField;
    c_DeliveryKM: TStringField;
    c_DeliveryNFE: TStringField;
    c_DeliveryPRAZO_ENT: TIntegerField;
    c_DeliveryVAL_PROP: TDateField;
    c_DeliveryFORMA_PAG: TStringField;
    c_DeliveryVALOR_FRETE: TFloatField;
    c_DeliveryDATA_ENTREGA: TDateField;
    c_DeliveryPRAZO_PAGAMENTO: TStringField;
    c_DeliveryUSER_APROVA: TStringField;
    c_DeliveryCODTRANSP: TIntegerField;
    c_DeliveryTPFRETE: TStringField;
    c_DeliveryCODPEDIDO: TIntegerField;
    c_DeliveryQTD: TIntegerField;
    c_DeliveryCODCOTACAO: TIntegerField;
    c_DeliveryUSUARIOLOGADO: TStringField;
    c_DeliveryTIPO_PEDIDO: TStringField;
    c_DeliveryNOMECLIENTE: TStringField;
    s_deliveryCODMOVIMENTO: TIntegerField;
    s_deliveryDATAMOVIMENTO: TDateField;
    s_deliveryCODCLIENTE: TIntegerField;
    s_deliveryCODNATUREZA: TSmallintField;
    s_deliverySTATUS: TSmallintField;
    s_deliveryCODUSUARIO: TSmallintField;
    s_deliveryCODVENDEDOR: TSmallintField;
    s_deliveryCODALMOXARIFADO: TIntegerField;
    s_deliveryCODFORNECEDOR: TIntegerField;
    s_deliveryDATA_SISTEMA: TSQLTimeStampField;
    s_deliveryCOD_VEICULO: TIntegerField;
    s_deliveryCONTROLE: TStringField;
    s_deliveryOBS: TStringField;
    s_deliveryTOTALMOVIMENTO: TFloatField;
    s_deliveryCODMOVRATEIO: TIntegerField;
    s_deliveryVALORRATEIO: TFloatField;
    s_deliveryRATEIO: TFloatField;
    s_deliveryCONFERIDO: TStringField;
    s_deliveryNFCOBRANCA: TIntegerField;
    s_deliveryORDEMATEND: TIntegerField;
    s_deliveryNFREVENDA: TIntegerField;
    s_deliveryCODORIGEM: TIntegerField;
    s_deliveryKM: TStringField;
    s_deliveryNFE: TStringField;
    s_deliveryPRAZO_ENT: TIntegerField;
    s_deliveryVAL_PROP: TDateField;
    s_deliveryFORMA_PAG: TStringField;
    s_deliveryVALOR_FRETE: TFloatField;
    s_deliveryDATA_ENTREGA: TDateField;
    s_deliveryPRAZO_PAGAMENTO: TStringField;
    s_deliveryUSER_APROVA: TStringField;
    s_deliveryCODTRANSP: TIntegerField;
    s_deliveryTPFRETE: TStringField;
    s_deliveryCODPEDIDO: TIntegerField;
    s_deliveryQTD: TIntegerField;
    s_deliveryCODCOTACAO: TIntegerField;
    s_deliveryUSUARIOLOGADO: TStringField;
    s_deliveryTIPO_PEDIDO: TStringField;
    s_deliveryNOMECLIENTE: TStringField;
    IMP_MOVDET: TSQLDataSet;
    IMP_MOVDETCODDETALHE: TIntegerField;
    IMP_MOVDETCODMOVIMENTO: TIntegerField;
    IMP_MOVDETCODALMOXARIFADO: TSmallintField;
    IMP_MOVDETCONTROLE: TSmallintField;
    IMP_MOVDETCODPRODUTO: TIntegerField;
    IMP_MOVDETQUANTIDADE: TFloatField;
    IMP_MOVDETPRECO: TFloatField;
    IMP_MOVDETICMS: TFloatField;
    IMP_MOVDETUN: TStringField;
    IMP_MOVDETQTDE_ALT: TFloatField;
    IMP_MOVDETBAIXA: TStringField;
    IMP_MOVDETVALTOTAL: TFloatField;
    IMP_MOVDETCOD_COMISSAO: TIntegerField;
    IMP_MOVDETLOTE: TStringField;
    IMP_MOVDETDTAFAB: TDateField;
    IMP_MOVDETDTAVCTO: TDateField;
    IMP_MOVDETPRECOCUSTO: TFloatField;
    IMP_MOVDETVLRESTOQUE: TFloatField;
    IMP_MOVDETQTDEESTOQUE: TFloatField;
    IMP_MOVDETNOTAFISCAL: TStringField;
    IMP_MOVDETDESCPRODUTO: TStringField;
    IMP_MOVDETPRECOULTIMACOMPRA: TFloatField;
    IMP_MOVDETCST: TStringField;
    IMP_MOVDETVALOR_ICMS: TFloatField;
    IMP_MOVDETVLR_BASE: TFloatField;
    IMP_MOVDETPERIODOINI: TSQLTimeStampField;
    IMP_MOVDETPERIODOFIM: TSQLTimeStampField;
    IMP_MOVDETCODIGO: TIntegerField;
    IMP_MOVDETCODIGO1: TIntegerField;
    IMP_MOVDETCODAUTORIZACAO: TIntegerField;
    IMP_MOVDETSTATUS: TStringField;
    IMP_MOVDETPAGOUCOMISSAO: TStringField;
    IMP_MOVDETCODMOVRATEIO: TIntegerField;
    IMP_MOVDETVALORRATEIO: TFloatField;
    IMP_MOVDETPAGO: TStringField;
    IMP_MOVDETRATEIO: TFloatField;
    IMP_MOVDETPORCENTAGENDESC: TFloatField;
    IMP_MOVDETICMS_SUBST: TFloatField;
    IMP_MOVDETICMS_SUBSTD: TFloatField;
    IMP_MOVDETVLR_BASEICMS: TFloatField;
    IMP_MOVDETPIPI: TFloatField;
    IMP_MOVDETVIPI: TFloatField;
    IMP_MOVDETCFOP: TStringField;
    IMP_MOVDETFRETE: TFloatField;
    IMP_MOVDETBCFRETE: TFloatField;
    IMP_MOVDETBCSTFRETE: TFloatField;
    IMP_MOVDETICMSFRETE: TFloatField;
    IMP_MOVDETCSOSN: TStringField;
    IMP_MOVDETVALOR_DESCONTO: TFloatField;
    IMP_MOVDETSTFRETE: TFloatField;
    IMP_MOVDETRECEBIDO: TFloatField;
    IMP_MOVDETVALOR_SEGURO: TFloatField;
    IMP_MOVDETVALOR_OUTROS: TFloatField;
    IMP_MOVDETOBS: TStringField;
    IMP_MOVDETCOD_FUNCIONARIO: TIntegerField;
    IMP_MOVDETCODSOLICITACAO: TIntegerField;
    IMP_MOVDETVALOR_PIS: TFloatField;
    IMP_MOVDETVALOR_COFINS: TFloatField;
    IMP_MOVDETBCII: TFloatField;
    IMP_MOVDETII: TFloatField;
    IMP_MOVDETCODPRO: TStringField;
    IMP_MOVDETCOD_BARRA: TStringField;
    s_movdetIMPRESSO: TStringField;
    c_movdetIMPRESSO: TStringField;
    s_movdetPRODUTO: TStringField;
    c_movdetPRODUTO: TStringField;
    IMP_MOVDETIMPRESSO: TStringField;
    IMP_MOVDETPRODUTO: TStringField;
    procedure c_movdetCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    PAGECONTROL : String;
    ID_DO_MOVIMENTO : integer;
    { Public declarations }
  end;

var
  DM_MOV: TDM_MOV;

implementation

uses UDm;

{$R *.dfm}

procedure TDM_MOV.c_movdetCalcFields(DataSet: TDataSet);
begin
    c_MovdetValorTotal.Value := c_MovdetPRECO.Value * c_MovdetQUANTIDADE.Value;
end;

end.
