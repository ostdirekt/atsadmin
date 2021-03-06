inherited fCompraRecebimento: TfCompraRecebimento
  Width = 984
  Height = 767
  Caption = 'Recebimento Materiais'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Width = 976
    Height = 77
    object Label1: TLabel
      Left = 5
      Top = 3
      Width = 33
      Height = 13
      Caption = 'Pedido'
      Transparent = True
    end
    object Label2: TLabel
      Left = 192
      Top = 4
      Width = 24
      Height = 13
      Caption = 'Forn.'
      Transparent = True
    end
    object rgStatus: TRadioGroup
      Left = 2
      Top = 28
      Width = 161
      Height = 46
      Caption = 'Pedido'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Aberto'
        'Finalizado')
      TabOrder = 0
    end
    object edPedido: TEdit
      Left = 53
      Top = 3
      Width = 91
      Height = 21
      TabOrder = 1
      OnKeyPress = edPedidoKeyPress
    end
    object edFornec: TEdit
      Left = 219
      Top = 3
      Width = 73
      Height = 21
      TabOrder = 2
      OnExit = edFornecExit
      OnKeyPress = edFornecKeyPress
    end
    object edFornecNome: TEdit
      Left = 329
      Top = 4
      Width = 385
      Height = 21
      Color = clBtnShadow
      Enabled = False
      TabOrder = 3
    end
    object btnClienteProcura: TBitBtn
      Left = 292
      Top = 2
      Width = 37
      Height = 25
      Caption = '...'
      TabOrder = 4
      TabStop = False
      OnClick = btnClienteProcuraClick
    end
    object GroupBox2: TGroupBox
      Left = 163
      Top = 28
      Width = 356
      Height = 46
      Caption = 'Per'#237'odo Entrega'
      TabOrder = 5
      object Label3: TLabel
        Left = 8
        Top = 16
        Width = 20
        Height = 13
        Caption = 'M'#234's'
      end
      object Label4: TLabel
        Left = 235
        Top = 18
        Width = 6
        Height = 13
        Caption = 'a'
      end
      object cbMes: TComboBox
        Left = 32
        Top = 16
        Width = 105
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        OnChange = cbMesChange
        Items.Strings = (
          'Janeiro'
          'Fevereiro'
          'Mar'#231'o'
          'Abril'
          'Maio'
          'Junho'
          'Julho'
          'Agosto'
          'Setembro'
          'Outubro'
          'Novembro'
          'Dezembro')
      end
      object dta1: TJvDatePickerEdit
        Left = 142
        Top = 16
        Width = 90
        Height = 21
        AllowNoDate = True
        Checked = False
        TabOrder = 1
      end
      object dta2: TJvDatePickerEdit
        Left = 248
        Top = 16
        Width = 88
        Height = 21
        AllowNoDate = True
        Checked = False
        TabOrder = 2
      end
    end
    object BitBtn2: TBitBtn
      Left = 556
      Top = 29
      Width = 107
      Height = 42
      Caption = 'F8-Procura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 6
      OnClick = btnProcurarClick
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C06C6360534949524A4A534B4C514B4C4F4A4C504B4D524C
        4D524D4C544C4C534B4B544B4E53494F534A4D534A4D534B4C544C4D514B4C50
        4A4B514C4B504B4A504C4B4F4B4A615F5FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C097908DB0A7A4BBB1B1AAA2A2AAA4A5A8A3A4A6A1A3A49FA1A49E
        9FA39D9EA39B9BA199999E979A9D96999B94979A93969C949599939498929397
        9192969190979392918D8C736F6E646262C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0B6AEAEE6DEDEE3DBDBE8E0E0E3DDDEE1DCDEE0DADFDCD9DBDDD8
        D9DCD7D8DBD6D5DAD5D4DCD7D8DBD6D7D9D4D5D8D3D4D8D2D3D5D0D1D3CECFD2
        CDCECCC7C8CFCACBC6C2C18D8B8A656362C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0BDB8B7EEE6E6E7DFDFE9E3E4E5E0E2E2DFE1E1DDE2E1DDE2E1DE
        E0E2DDDEE1DCDDE0DCDBD9D7D6D6D7D5D6D4D3D5D3D3D4D2D2D5D0D1D3CECFD2
        CDCED6D1D2D5D0D1CECCCB92908F646261C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0ADA8A7E9E4E3ECE6E7E8E3E4E6E3E5E3E2E6E1DFE5E0DFE3DFDE
        E0E0DEDEDEDCDCDDDBDAD9DCDAD8DCD7D9DAD6D8D9D7D7D7D7D8D6D6D6D4D4D5
        D3D3D2D0D0CDCBCBCCCACA939191626361C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C1BCBDEEEAE9ECE7E8EBE9E9E9E8ECE6E7EBE4E4EAE3E3E9E2E3
        E7E3E2E4E1E0E2E0E0E0DBE0DED9DFDAD8DED9D8DBD9D7D9D9D7D7D7D7D5D5D6
        D4D4D6D4D4D0CECED2D0D0969494626262C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0ABA6A7F2EEEDF3EEEFEBE9E9E8E7EBE5E6EAE4E4EAE2E5EAE1E4
        E8E3E5E6E2E4E5E1E3E3DCE3E0DBE2DDD9E0DDD8DDDBD9DBDBD7D9D9D7D6D8D6
        D5D7D7D4D6D5D2D4D6D3D5959393616161C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C2BEBDF5F1F0F0ECEBF3F1F1EDECEEEAEBEFE7EAEEE5E8EDE5E8
        ECE3E6EAE4E6E7E1E6E5DFE6E3DCE5E2DCE3E0DCE1DFDCDEDEDDDDDDDBDADCDC
        D9DBD7D4D6D6D3D5D6D3D5928F91646262C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0BFBCB8F8F5F1F6F3EFF3F1F0F2F2F2E9EBECE9ECF0ECEFF3EEF1
        F5E3E6EAE5E7E8E5E9EADEE4E3E2EAE9DAE0DFDEE3E2DDDFDFDBDBDBE5E3E3DD
        D8D9DFDADBD9D4D6DAD5D79C999B5E5B5DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C07F7B7637332E1C19111C18133C39357B7978F2F2F2F2F4F5E5E8ECE7EA
        EEEFF2F6E5E7E8EBEDEEE4E9EAE4EAE9DEE3E2E6E8E8E4E4E4DFDDDCE2DEDD81
        7C7B3C37361B16151812133B3637878283C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        413D383F3A3198938AC7C3B8B9B4AB56534B0202003839357A7C7CECEEEFF1F3
        F4ECEEEFF0EFF1E8EAEBE7EBECE7EBECEAECECE5E5E5EAE8E7E9E6E23E3A3512
        0C076E6863C4BEB9C2BBB8817C791D1817373233C0C0C0C0C0C0C0C0C0444238
        4B473CCCC6B9EFE8D9F1ECDDFAF4E7EDE9DE9B998F020200292A286C6E6EEDED
        EDF8F7F9EEEDEFF3F2F4EEEFF3E8EAEBE9E9E9E7E5E4A09D983330281A150CB3
        ADA2EAE1D7ECE6DBFDF6EDF4EEE7D2CCC739343135302FC0C0C0A5A2942E281B
        E1DACBEAE3D2F6EFDCFFFBE8FAF2E1FFFFF4FFFFF7928F870504006869677775
        74BBB9B9FAF8F8F3F0F2F6F2F7F1EEF0F1EDEC9C989378736A090300A39C8DE9
        E2D1F3ECD9EEE6D5FAF1E3FFFFF5FFFCF3CFC9C41A1512948F8C4B4433989180
        E6DFCCECE3CFF0E7D3F6EDD9FFFFF0FFFFF1FFFCEFDEDACF33302B41403CCDC9
        C89C9897A8A3A4F8F3F4F8F3F5B3AEB0A6A1A0CAC4BD544C3F403827EDE6D2E1
        DAC1F4EDD4FFF8DFFFF6E2FFF7E6FFFFF5FEF7EE938D863D39342A2310D1CAB6
        E2D9C5E3D8C2F8EED6FFF6DEFFF9E2FFF8E4FAF3E4F4F1E385827A191611BBB6
        B3CBC6C59B9695B7B1B2CFC8CB9C9697D7D0CDC5BEB5292012857C68DFD8BDDF
        D7BAEEE6C9FAF2D5FFFBE2FFFFEAFFF8E7F3EDE0D3CCC3221C151C1504DDD6C3
        E2D9C5E4DAC2FEF3D7F6EBCFFFF4D8FFF7DFF6EFDBF4EDDE928E830C0901BDB8
        B5CAC6C5BCB8B7B4AFB0C0BBBDA39D9ECBC4C1C3BCB31109008E8875EAE4CDE0
        D9BEEAE2C5FFF8DAFCF1D3FDF1D5FFF4DEF6ECDBDBD5CA151007302821BFB6AC
        F4ECDBE7DDC5E7DCBCEFE3BFFFF3CFF9EDCBF9EED2EFE6D26E66591E1910C5C2
        BDC7C8C45C5F5D5759595E5B5D595456C3BFBEC6C2BD2321195F5E54F0F0E4E5
        E2D3E2D7C1F3E3C6FFEBC8FFF0CDFCE7CBF4E6D0C4BBB1232018645C5C6B635C
        FFFDEFFFF6E0F4E9C9EBDEB8E6D6B1F0E2BEFAEED2C8BDA9251D10504D45CBCA
        C6838684313634363B3A383A3A3C3C3C797672D4D1CC5C5954100D08D9D7CFFF
        FFF5F3E8D4EEDBC0F5DDB9F4DAB5FFECCCF4E6CF4E4A3F4C4E48BFB9BA160F0C
        AFA69CFFFFF0F2E7CCE8DDBDE6D9B9F5E9CDD9CCB6625A49090200989390B5B3
        B2454747191E1D09100D09120F232B243F4036A9A59AABA59A0B0200665C52F6
        EBDDFFFBE8F1DEC3E8D4B1F7E4BFF7E8C8847C65060800A3AAA5C0C0C06C6766
        120A03878071E2D9C5EDE3CBEBDFC7BEB39D5F55440B0200645E59D1CDCC4745
        452E2E2E030505878D8CA1A9A80002003F40373B392ECBC5B8746C5F0B020063
        5B4EC6BBADE9DDCBFBEDD6CFC4A98078610906005D6259C0C0C0C0C0C0C0C0C0
        79726F110A01251E0F38301F3F37261B1405160F06706A65C2BDBE4946480100
        023D3C3E0100025B5E626D6F7901040C50505004020038382CAFAFA16F736805
        0903070B062324222D2A261D1A16120F0B767571C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0B0AAA55952494E483D373126302A234A45424E494A2421230201050000
        033231353B3A3C06070B00000841424C3E3B3D0401000907000F0E0441433D43
        4644282D2C3337383C3B3D625F61B8B5B7C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0DFDBD6FFFCF7EBE8E3C7C4C09492926463655152564F4F555758
        5C7E7D81C0BFC1838284818181BBB9B88E8A896D65655D5353605557695E609C
        9292C9C0BDD8D0C9BBB3ACABA39C6D6461C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0D8D6D5FFFFFEFEFCFBFFFFFFFCFEFFFBFEFFF5F8FCFBFEFFFBFC
        FFFDFCFEFFFDFFFFFFFFFFFFFCFFFFFCFFFFFEFFFCFFFFF9FEFFFCFFFFF5FBFF
        FDFFFFFEFCFFF5EFFFF7EFB2A59D695D59C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0DBDBDBFEFEFEFBFBFBFCFEFEFAFEFFF9FEFFF9FEFFFBFFFFFDFF
        FFFFFFFFFFFFFFFFFFFEFFFFFEFFFEFFFFFCFEFDFEFFF7FAFFFBFEFFFFFDFFFF
        FDFFFFF9FBFFFAFBFFF6F5AE9C9B756866C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0DDDDDDFFFFFFFFFFFFFDFFFFFBFFFFFAFFFFFAFFFFFBFFFFFDFF
        FFFEFFFDFFFEFDFFFEFDFFFBFCFFFAFCFDFEFFFBFEFFFAFFFFFDFFFFD8D5CDDF
        D3C7E8D6C5E1CBB9D9C2B3B5A19692857DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0DEDCDBFDFEFCFBFCFAFBFEFCFDFFFEFBFFFEFBFFFFFBFFFEFDFF
        FEFFFFFCFFFFFCFFFFFEFFFFFFFDFFFFF9FCFFF3F5F6FFFFFCFFFFF2B7A384AE
        9466A3824AA58348987946927853BEAF9CC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0E5E3E2FFFFFEFFFFFEFFFFFEFDFEFCFCFFFBFCFFFDFCFFFBFFFF
        FCFFFFFCFFFFFCFFFFFEF9FAF8FBFFFFFAFFFFFDFFFFFFFEF6FFFFF0D5BE98F1
        D29FEEC98BE5C181C1A26BC2AC82C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0E8E4E3FFFFFEFFFFFBFFFFFBFFFFFCFFFFFBFFFFFCFFFFFCFFFF
        FCFFFFFCFFFFFEFFFFFEFFFFFCFAFEF9F5FBFAFBFFFFFAFCF6FFFDF0CBBBA4EB
        D2B2E7C9A6C4A885BFA98DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0E9E4E3FFFEFDFFFFFCFFFFFCFFFFFAFFFFFAFFFFFAFFFFFBFFFF
        FCFFFFFEFFFEFFFFFFFEFFFDFAFFFFFCFAFCFCFDFFFFFBFCFAFFFFF9DCCFC1ED
        D9C7C4AC98B8A493C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0F0E8E8FFFEFEFFFFFCFFFFFCFFFFFBFFFFF9FFFFF9FFFFFBFFFF
        FCFFFFFEFFFEFFFFFEFFFFFDFDFFFEFEFFFDFFFFFDFFFFFDFFFFFCFCC0B0A9BE
        ADA0B1A093C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0E7DDDDF4EAEAEEE5E2E6E0DBE6E0DBE2E0D8E0DED6DBDBD5D9D8
        D4D7D5D5D7D2D4D9D0D3DBCDCED6C8C9D4C7CFCEC6CDCBC0C8D4C9CBC2B2ACC0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
    end
  end
  inherited MMJPanel2: TMMJPanel
    Top = 689
    Width = 976
    inherited btnGravar: TBitBtn
      Left = -200
      Visible = False
    end
    inherited btnIncluir: TBitBtn
      Left = -200
      Visible = False
    end
    inherited btnCancelar: TBitBtn
      Left = -200
      Visible = False
    end
    inherited btnExcluir: TBitBtn
      Left = -200
      Visible = False
    end
    inherited btnProcurar: TBitBtn
      Left = -200
      Visible = False
      OnClick = btnProcurarClick
    end
    inherited btnSair: TBitBtn
      Left = 637
      Top = 4
    end
    object BitBtn1: TBitBtn
      Left = 516
      Top = 4
      Width = 107
      Height = 42
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 6
      OnClick = BitBtn1Click
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00D0411
        0003080002000005000008000200030900060900010A03060000040000030002
        000002000500010B010702000300000000060100030000070202060103030004
        0100040201000001000006C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0898483807B7C
        7E7F83797D7E7A807B7D817C847F80837E7D8C8883807F7B7C7F83787C818388
        8B7E8081847F81837C817F7781807F88798188758183767D7A797E7C7F828683
        8089837B828D868D808086000004C0C0C0C0C0C0C0C0C0C0C0C07E7B76FFFFFC
        C4C2C2C5C3C3C7C6C2C1C0BCC2BDBEC6C2C1BEBEB8BCBEB8C1C4C8BCBFC4B9BD
        BEBFC1C1C1BEC0C7C2C4CAC0C6C0BCC2BBBFCAB0B7C0C2C7C5B9BEBCBBBDC5BE
        BCC8BFB7C2C2BEC4767C7B787E7D0A060CC0C0C0C0C0C0C0C0C0858383FFFFFE
        B8B4B3FFFFFBFFFFF8FEFAF5FFFDFFFFFBFFFDFFFFFDFFFFFCFEFFFDFFFFFAFE
        F9FDFEFAFFFEFFFFFCFEFFFDF6FFFEFCFEF8FFFDFCFFFCFDFBFBFCF8FFFEFFFC
        F9FFBCBEC6BBC2C577867E829085737974050303C0C0C0C0C0C07A7A7AFEFFFD
        C5C4C083837D81827982817D85818C7B77837C7D817F81817B7C7A82837F8184
        7B80827C77787C82818586807982847E72848B607D81688877748D797D807E80
        7F83B8BFC2BAC7C56B7C7176877A7F8A82000200C0C0C0C0C0C082847EFDFFFC
        BDC2C0F9FFFEF9FFFEFAFFFFF3F3FFFDFAFFFFFEFFFEFFFBFFFFFBFDFEF5FFFF
        F8FFFFFBFDFDFF00000600050600040300070B000F03001F00001600798A7D81
        7E807B857FB2C3BA75837D72807A75817B000702C0C0C0C0C0C083827EFDFFFB
        B3C0B874887C70877970827B7F868F777783817E80878480837E7B85837B0105
        00797D778181877A7C86BAC0C59AC6C77DF0ED64FEE16CFFBE3EBB6B00130000
        0B00000D007D8D6B7F8C747B84777C827D000100C0C0C0C0C0C0847F81F9FFF9
        B1CBB4A5CDAAA5D3A9A9D1AEB2C5BCB9BEC1C8C1C6C5B9BF897F858681827D80
        77BDC2B9C4C6C6B8B8BEC2BEC49AC3C547D1C943FFDB48FFB71ACF5C4FC2619F
        DF8581A043101E000C12008C8D6B837F7A050005C0C0C0C0C0C0827C81F9FFFA
        B3D7B3296029205E1C2F662DA9C6ADBEC5C2C2B7BFCAB9C68A7F89C0BBBDC3C6
        BDBDC3B8BFBFBFC9C5CAC9C1C895C0C367FCF239FFD93BFFA00AD73A4ACA47AA
        EF70C4E150D2D752D4D379130D00898279040007C0C0C0C0C0C0858187F7FFF7
        9FCB9C7DBD7579C36B6DAD61B6D6B3B8C0B6C8BDC5948391FFF8FFC0BDBFC0C6
        BBB9BFB4C6C4C4BCB8BEC4BCC799C5CC38CDC938FFCA00E5332AED21A0FC6FC1
        DE53E3EB29FDF53DD9CB5ADFD49B050400000007C0C0C0C0C0C07D7F80F6FFF8
        E8FFE7DAFFD6D1FFC6E1FFD6F1FFEAFBFFF8847E7FFFFCFFC0B9C0FFFEFFCACF
        C6C1C6BDBCB9BBCCC4CEC6BDCA97C5CD5DF2EF3FFFCD10E4363EE211B6F24DE0
        E544F0EB2AEDE337ECDF7DD0C79CBFC2B9000209C0C0C0C0C0C0C0C0C0738378
        AEC9B9A7C9B1B0D7B7ADCDAEB1C4B1C1C8BB888B7C787A6EFDFFFCB9BEBDF7FC
        FABBBDBDC5BEC5C0B6C3C1B7C78FBCC740D7D447FFDB22CF5789FF53D7F72EF9
        F02FE4DD4AE3E07ECDC8A1C4C2BAC4C9CC000004C0C0C0C0C0C0C0C0C0C0C0C0
        727E8AB7C4CCB2C0BFAAB8B2BBC2BD7C81787C8473BEC8B87F8683FAFFFFBDC1
        C2FFFEFFC7C0C5C6BBC3CEC3CD9ABEC474F1EF68FFDF44BC5EAAF264DCE733F2
        E43EE2DF7DCBCEA1BABFB6BCC1CAB6BCC1C4C6C70B0303C0C0C0C0C0C0C0C0C0
        C0C0C07771948781947F7A8389878D7E8080B9C0BB798481B3BCC5757B86FBFE
        FFC3C3C3FEF7F4D0C5C1C9BFB8B2C3BF88CECD9EF1D1ADE684BFDA62DBD46DE1
        D486CBCFA5BAC6B4BAC5C3BDC6CAB3B8B6C0C1BD020000C0C0C0C0C0C03D3687
        403683C0C0C0C0C0C0C0C0C07F7680C2C0C67C8484B0BDBF76808AB9BFCA7C7C
        82FFFEFFC7C0BDFFFFF8CAC2B57F877C608282638973889B52C5C878D8CE9ED0
        C6AEBCC2B7B8C5C3B2BDC1B5BCBFC7C8C4C1C1BBBBBEBC000302C0C0C0312A99
        342E9FC0C0C0C0C0C0C0C0C0867B83867E85B2B8BD778486B6C4C3797E7FC5BF
        C4877D83FFFDFFC5C0BF858176050900000201000200060C0082846EC7C7B7C1
        BFB7BEBEBEC3C6CAB3B8C1BEC0C8C3BDBEC8C3C2BEC2C3000101C0C0C02926A4
        2225A5C0C0C0C0C0C0C0C0C092868CBEB3BB86898DB8C2C2747D7ABAC0BB807C
        7BC7C0C3837C83827C81060300C0C0C0C0C0C0C0C0C0C0C0C0000105808584BE
        C1BFC9C4C6B9B5BAC3C6CAC2C5C9C7BEC1C2BCBDBDC1C2000303C0C0C01B27A5
        1A2BA3C0C0C0C0C0C0C0C0C0857B818F8389B9B7B680847FC5C6C27F817BC0C8
        BE797F7AC2BDC6837B85050000C0C0C0C0C0C0C0C0C0C0C0C0000504717472C7
        C4C0C7BEBBC9C5C0B8BFB8B7BEB7C0BCBBC5BFC0BFC4C3000100C0C0C01C29A9
        192A9FC0C0C0C0C0C0C0C0C080767CC8C0C1CBCCC3BABEB3C3C3BDC1C2B8BCC6
        AFC2CDB3C0C2B686827D090101C0C0C0C0C0C0C0C0C0C0C0C0000200898884C6
        C0BBD0C1BECAC0B9BCC5B8BEC8BCC7C5C4C3BEBFC3C4C2000100C0C0C02025A6
        2E2CA7C0C0C0C0C0C0C0C0C0857E81C6C2C1B8C2B2BDC9B7BFC4BBC5C9B6C5CE
        A3C2CE94BAC68C898D640B0000C0C0C0C0C0C0C0C0C0C0C0C00005007D7B738B
        817ACCB8B790817EBDC3B87A857DBEBDBF868085C6C2C1020200C0C0C02423A3
        2D269FC0C0C0C0C0C0C0C0C0888283C4C3BFBBC4B7C1CAB5C8CAADC9CAA0CFD3
        98B8CA7DBEE988ADDB8878936C000500000204000204000A017B8477FFFFF8FF
        FEFC998689CBBEC07E857EB7C2BA7F8084C2BEC383807C040200C0C0C02925A6
        28279BC0C0C0C0C0C0C0C0C07E7879C1BEBAC4C6C0C2C3A9D8CF8FE9DF91C5C3
        7DC0E18C92F3734FCB4354BF5249A85849986F578F7C718677C8C6BEFEF8F9C3
        B8C0FFF7FF7B7881BBC2BD7F8780B8BABB868589C7C6C2020200C0C0C02B2AA8
        252A9DC0C0C0C0C0C0C0C0C0C0C0C080817DC4C5A5DAD89ED1C773CBCD6DC1E3
        84A1EE7551D22B46DD2F66F25F90FFA58EFCC886D4BDA9C2B4C2BFBACAC4C5FF
        FAFFC0BDCDFAFBFF7A807FBABFBD838488BBBABE020100C0C0C0C0C0C02028A1
        232DA3C0C0C0C0C0C03C368FC0C0C0798180C8CD71D7D961CECD75BFE38583F2
        684FDE2D5CE50E7EFE3373EA599BFFB685F9D673CBC5A8C8C3C1C2BEC5C2BEBF
        BCBEFAFAFFBBBDCFFAFCFF7E7F83BCBFC47D7E82040100C0C0C0C0C0C01820A3
        1A25B5C0C0C0C0C0C0201CB13132ACC0C0C0939B4EC5D958BCE47A8EE96E36E3
        2E33E90E6DE500A2FF2787F25C8CFFA87BF7D972D2D29CBDC0BDBFBFC4C4BEC5
        C6C4B3B7C2F5F8FFBEBEC4FFFEFF7E8185010303C0C0C0C0C0C0C0C0C02424BE
        0710D2050EE7060CE70B0AE20D03D22D26B179838DA0D4818DFF7532DD231DF7
        1741FE09B7FF0CC5F81A89EC508BFFAA81FFDF63C8C6A3C5CBB9BCC1BDBEBABD
        BEBAC0C7CABDC4C7FDFEFAC3C4BBFAFFFA000300C0C0C0C0C0C0C0C0C0211F9A
        1A1EC30F15D80309DE0D0EE8180DDF261DB4C0C0C06296674CCA4937E42E1FE4
        144CE702D0FF0DD3FB2075EA5F78FFC469F5D866CACAA5C2CBC2C0C6C8C9C5BC
        C3BCB2BDBAB3BEBBC2C5BCFFFFF7000300C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C01918B42726A4C0C0C0C0C0C0C0C0C055A0545DC55462CF
        4A96ED3FDFFE19BEF72A6AFFAD40FFE263F9F368C3CAABBEC6C7BBC1BBBDB7BB
        C6BCB3C5BEBBCBC4BDC1BB040100C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C02F2F8DC0C0C0C0C0C0C0C0C0C0C0C0C0C0C065985C6997
        4E82A63AD8E843AAE55463FFD237F7F06EF7F97CCAD0B0BEC4D4C6CABABBB9BB
        C2BDB5C0BD000200000100C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C080856590925E68906672ECE466F5FA88EEE987C2BAB6C7C4C0BBBC04030700
        00030D0407C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0DFFFFF258797168A95398C845B8E8072827B7C7C7CC0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
    end
  end
  object GroupBox1: TGroupBox [2]
    Left = 0
    Top = 77
    Width = 976
    Height = 612
    Align = alClient
    Caption = 'Pedido'
    TabOrder = 2
    object JvDBGrid1: TJvDBGrid
      Left = 2
      Top = 15
      Width = 972
      Height = 595
      Align = alClient
      DataSource = DtSrc
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyPress = JvDBGrid1KeyPress
      OnTitleClick = JvDBGrid1TitleClick
      AutoAppend = False
      FixedCols = 7
      PostOnEnterKey = True
      AutoSizeColumns = True
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Color = clMenuBar
          Expanded = False
          FieldName = 'CONTROLE'
          Title.Caption = 'Cota'#231#227'o'
          Width = 84
          Visible = True
        end
        item
          Color = clMenuBar
          Expanded = False
          FieldName = 'CODFORNECEDOR'
          Title.Caption = 'Fornec.'
          Width = 61
          Visible = True
        end
        item
          Color = clMenuBar
          Expanded = False
          FieldName = 'CODPEDIDO'
          Title.Caption = 'Pedido'
          Visible = True
        end
        item
          Color = clMenuBar
          Expanded = False
          FieldName = 'DATA_ENTREGA'
          ReadOnly = True
          Title.Caption = 'Dt. Entrega'
          Visible = True
        end
        item
          Color = clMenuBar
          Expanded = False
          FieldName = 'CODPRO'
          ReadOnly = True
          Title.Caption = 'Material'
          Width = 65
          Visible = True
        end
        item
          Color = clMenuBar
          Expanded = False
          FieldName = 'PRODUTO'
          ReadOnly = True
          Title.Caption = 'Descri'#231#227'o'
          Width = 213
          Visible = True
        end
        item
          Color = clMenuBar
          Expanded = False
          FieldName = 'UN'
          ReadOnly = True
          Width = 58
          Visible = True
        end
        item
          Color = clMenuBar
          Expanded = False
          FieldName = 'QUANTIDADE'
          ReadOnly = True
          Title.Caption = 'Quantidade'
          Width = 78
          Visible = True
        end
        item
          Color = clMenuBar
          Expanded = False
          FieldName = 'PRECO'
          ReadOnly = True
          Title.Caption = 'Pre'#231'o'
          Visible = True
        end
        item
          Color = clMenuBar
          Expanded = False
          FieldName = 'VALTOTAL'
          ReadOnly = True
          Title.Caption = 'Val. Total'
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'RECEBIDO'
          Title.Caption = 'Recebido'
          Width = 130
          Visible = True
        end>
    end
  end
  inherited DtSrc: TDataSource
    DataSet = cdsPedido
  end
  object dspPedido: TDataSetProvider
    DataSet = sqlPedido
    Options = [poAllowCommandText]
    Left = 304
    Top = 45
  end
  object cdsPedido: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pFornec'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspPedido'
    BeforePost = cdsPedidoBeforePost
    Left = 336
    Top = 45
    object cdsPedidoCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedidoCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = []
      Required = True
    end
    object cdsPedidoDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
      ProviderFlags = []
    end
    object cdsPedidoCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = []
      Size = 15
    end
    object cdsPedidoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Size = 300
    end
    object cdsPedidoQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = []
    end
    object cdsPedidoPRECO: TFloatField
      FieldName = 'PRECO'
      ProviderFlags = []
    end
    object cdsPedidoVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      ProviderFlags = []
    end
    object cdsPedidoRECEBIDO: TFloatField
      FieldName = 'RECEBIDO'
      DisplayFormat = ',##0.0'
      EditFormat = ',##0.0'
    end
    object cdsPedidoCONTROLE: TStringField
      FieldName = 'CONTROLE'
      ReadOnly = True
      Size = 30
    end
    object cdsPedidoCODPEDIDO: TIntegerField
      FieldName = 'CODPEDIDO'
      ReadOnly = True
    end
    object cdsPedidoCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ReadOnly = True
    end
    object cdsPedidoUN: TStringField
      FieldName = 'UN'
      FixedChar = True
      Size = 2
    end
  end
  object sqlPedido: TSQLDataSet
    CommandText = 
      'select md.CODDETALHE, md.CODMOVIMENTO, m.DATA_ENTREGA, p.CODPRO,' +
      ' p.PRODUTO, md.UN'#13#10', (md.QUANTIDADE - md.RECEBIDO) QUANTIDADE, m' +
      'd.PRECO, md.VALTOTAL , md.RECEBIDO, m.CONTROLE, m.CODPEDIDO,'#13#10'm.' +
      'CODFORNECEDOR'#13#10' from MOVIMENTODETALHE md'#13#10'inner join MOVIMENTO m' +
      ' on  m.CODMOVIMENTO  = md.CODMOVIMENTO'#13#10'inner join PRODUTOS   p ' +
      'on  md.CODPRODUTO    = p.CODPRODUTO'#13#10'where md.STATUS is null '#13#10' ' +
      '   and m.CODNATUREZA   = 5'#13#10'    and m.STATUS                = 0'#13 +
      #10'    and m.CODFORNECEDOR = :pFornec'#13#10'    and ((md.QUANTIDADE - m' +
      'd.RECEBIDO) > 0)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pFornec'
        ParamType = ptUnknown
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 272
    Top = 43
    object sqlPedidoCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlPedidoCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      ProviderFlags = []
    end
    object sqlPedidoDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
      ProviderFlags = []
    end
    object sqlPedidoCODPRO: TStringField
      FieldName = 'CODPRO'
      ProviderFlags = []
      Size = 15
    end
    object sqlPedidoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Size = 300
    end
    object sqlPedidoQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      ProviderFlags = []
    end
    object sqlPedidoPRECO: TFloatField
      FieldName = 'PRECO'
      ProviderFlags = []
    end
    object sqlPedidoVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      ProviderFlags = []
    end
    object sqlPedidoRECEBIDO: TFloatField
      FieldName = 'RECEBIDO'
    end
    object sqlPedidoCONTROLE: TStringField
      FieldName = 'CONTROLE'
      ReadOnly = True
      Size = 30
    end
    object sqlPedidoCODPEDIDO: TIntegerField
      FieldName = 'CODPEDIDO'
      ReadOnly = True
    end
    object sqlPedidoCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ReadOnly = True
    end
    object sqlPedidoUN: TStringField
      FieldName = 'UN'
      FixedChar = True
      Size = 2
    end
  end
end
