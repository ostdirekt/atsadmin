object fClienteFiltro: TfClienteFiltro
  Left = 196
  Top = 93
  Width = 580
  Height = 412
  Caption = 'Filtro Cliente'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 0
    Top = 144
    Width = 564
    Height = 55
    Align = alTop
    Caption = 'VENDEDOR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 11
      Top = 12
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 69
      Top = 12
      Width = 28
      Height = 13
      Caption = 'Nome'
    end
    object codVen: TEdit
      Left = 5
      Top = 26
      Width = 57
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clCream
      TabOrder = 0
    end
    object nomeVen: TEdit
      Left = 60
      Top = 26
      Width = 451
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clCream
      TabOrder = 1
    end
    object BitBtn5: TBitBtn
      Left = 518
      Top = 25
      Width = 37
      Height = 25
      Caption = '...'
      TabOrder = 2
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 310
    Width = 564
    Height = 64
    Align = alBottom
    TabOrder = 3
    object BitBtn3: TBitBtn
      Left = 325
      Top = 6
      Width = 77
      Height = 55
      Caption = 'F7-Limpar'
      TabOrder = 0
      TabStop = False
      OnClick = BitBtn3Click
      Glyph.Data = {
        1E070000424D1E070000000000003600000028000000160000001A0000000100
        180000000000E806000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0
        C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C07F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        0000C0C0C0C0C0C00000000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C07F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C000000000FF00007F00007F0000000000007F7F7F7F7F7F7F7F7FC0C0
        C0C0C0C0C0C0C0C0C0C00000FF0000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0
        C0C0C0C0C0C0C0C000000000FF00007F00007F00007F0000007F7F7F7F7F7F7F
        7F7F7F7F7FC0C0C0C0C0C00000FF00007F0000000000007F7F7F7F7F7F7F7F7F
        7F7F7FC0C0C0C0C0C0C0C0C000000000FF00007F00007F00007F000000000000
        7F7F7F7F7F7F7F7F7F7F7F7FC0C0C00000FF00007F00007F0000000000007F7F
        7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C000000000FF00007F00007F00007F0000
        7F0000000000007F7F7F7F7F7F7F7F7F0000FF00007F00007F00007F00007F00
        00000000007F7F7F7F7F7FC0C0C0C0C0C0C0C0C000000000FF0000FF00007F00
        007F00007F00007F0000000000007F7F7F0000FF00007F00007F00007F00007F
        00007F00007F000000000000C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C00000FF
        00007F00007F00007F00007F00007F00000000000000007F00007F00007F0000
        7F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0
        C00000FF0000FF00007F00007F00007F00007F00007F00007F00007F00007F00
        007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        0000C0C0C0C0C0C00000FF0000FF00007F00007F00007F00007F00007F00007F
        00007F00007F00007F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C00000C0C0C0C0C0C0C0C0C00000FF0000FF00007F00007F00007F0000
        7F00007F00007F00007F00007F0000007F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FF00007F00
        007F00007F00007F00007F00007F0000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF
        00007F00007F00007F00007F00007F00007F0000007F7F7F7F7F7F7F7F7F7F7F
        7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C00000FF00007F00007F00007F00007F00007F00007F0000000000007F7F7F7F
        7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F00007F000000
        0000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
        C0C0C0C0C0C00000FF00007F00007F00007F00007F00007F00007F00007F0000
        7F00007F0000007F7F7F7F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C00000C0C0
        C0C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F0000FF0000FF00
        007F00007F00007F0000000000007F7F7F7F7F7F7F7F7FC0C0C0C0C0C0C0C0C0
        0000C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F00007F0000007F7F7F
        0000FF0000FF00007F00007F00007F0000000000007F7F7F7F7F7F7F7F7F7F7F
        7FC0C0C00000C0C0C0C0C0C0C0C0C00000FF00007F00007F00007F0000007F7F
        7FC0C0C0C0C0C00000FF0000FF00007F00007F00007F0000000000007F7F7F7F
        7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00007F00007F00007F00007F00
        00007F7F7FC0C0C0C0C0C0C0C0C00000FF0000FF00007F00007F00007F000000
        0000007F7F7F7F7F7F7F7F7F0000C0C0C0C0C0C00000FF00007F00007F00007F
        0000007F7F7FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FF00007F0000
        7F00007F0000000000007F7F7FC0C0C00000C0C0C00000FF0000FF0000FF0000
        7F00007F000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF00
        00FF00007F00007F00007F000000C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C000
        00FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C00000FF0000FF00007F00007FC0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C00000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C00000C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        0000}
      Layout = blGlyphTop
    end
    object BitBtn2: TBitBtn
      Left = 403
      Top = 6
      Width = 77
      Height = 55
      Caption = 'F8-Procurar'
      TabOrder = 1
      TabStop = False
      OnClick = BitBtn2Click
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000C0C0C08D958B
        828478909488C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C07892A3576A77
        979EA19699978B958FC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C05595D66C9BD1
        5162839396A48C92918B928BC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C06BAFFC84C0FF
        6E97CE4E6A8D94A4B18890908F9493C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A9D2FF7EB4F0
        6CBAFF4B93D340618896A2B4868D9095958FC0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        6DC0FE66BDFF6197CE405F8690A0B18E9392959283C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        9CCDED7FC4F570BAFA5D9AD844628B8C98AA919B95727B677175628585777A74
        6D827D7A737877737B7A727A79777A71817D64897E5E927D61937C62917B628D
        7862927E65927D629A8266927D5D91835F888062807D6FA8A8A2C0C0C0C0C0C0
        C0C0C0C0C0C07DC2FB73B5F66F97D24E658B8C9DA05B6656434532767162847B
        71716B664D4F4F4C54545A626157584E574F325A472162451E67492063482362
        4823624B255D441C6A4D216046185F491F554625524E3C97958DC0C0C0C0C0C0
        C0C0C0C0C0C06A8DAF8FBBF083B4FA7299D063768381847B877F788F857B9895
        8697978B959294ABABB18F92967877738B7C6C887052866A3B826630826A3484
        6F3B7F6D387E6A33866E34876F3B81694595836C2D23198A8582C0C0C0C0C0C0
        C0C0C0C0C0C08993A4A7BDE182AAE595BDEE8995A19A948D9E8D84D9CBBFE2E0
        CEFAFDEEF8F3F4F7F3F9E7EBECDFDDDCA0948A937E69E6CFA9FFFFDCFFFFD4FF
        FFD3FFFFD9FFFFD5FFFFD8FFFFD8FFFADFF2E2D2463B338B8580C0C0C0C0C0C0
        C0C0C0C0C0C0918E90E8E6F2CEE1FCC8DAF1ACAAAAA39484EBD4BEFEECD5FDFA
        E5FFFFF4FBF8F3FFFEFDF4FBF4F8FDF4F1EDE8B3AAA1857A6CCFC3B1FAF3E0F6
        F0DDF6F5E0E9E8D3F2F1DCF2EEDBFFFFF5E5DFD4433D32928C81C0C0C0C0C0C0
        C0C0C0C0C0C0AD9D91FFF0E9F2F5FDF8FCFFA69689CCB399FCE1BFF7E3C0F3ED
        D0FAFBE7FAFBF1DADED9DEE2DCEEF2ECE4E5E1FEFBF7A09B9A7772718B888481
        827E808780828984FAFFFCFBFFFCF8F8F2E1DED6443C35887F76C0C0C0C0C0C0
        C0C0C0C0C0C0B79E84FFECD7FEF9FAE2DEDDDFC5A7FFE9BDFFEFC2FFE9BCFFFB
        D3FFFFE1FBFFF5EFF6F3F6F7FBFCFBFFFFFFFCF4F1ECE1DCDD716C6EBCBCBCF8
        FDFCF7FFFEF1FCFAEEF8F8F5FBFAFFFFFBE2DED945373B918188C0C0C0C0C0C0
        C0C0C0C0C0C0BB997BFFF2D6FFFDF7BFB5AEFEE0C3F2CBA4DABA91CEB589FFF3
        C3FFFFDFF5FAEBF5FDFDC4C7CFC6C9CEC2C2BCFAF7F2FEF9FB86808B6C6A7E00
        0015000016000010F3FDFFF2FAFAF5F9F3DEDED83F383D8E828EC0C0C0C0C0C0
        C0C0C0C0C0C0C9A58DFFE8CFF3DDD2DAC8C1D2B7A9E6C5B5DDBCA9EDD1B3FFF7
        C1FFFFD8F6F6EACAD0D5C5D4D7C2D0CEC2CAC0FEFCF4FEF7FCA49AB16A629712
        0E4F0D0F50202556E5EDFFF3FCFFF9FFF9DEE6DC363A3B7B7F84C0C0C0C0C0C0
        C0C0C0C0C0C0BD9882FFEED7F4D7CED2BFB8FFFAF2D4BEB2F4D2C5DFC1A6FFF4
        BCFEF9C2FFFFEEF8F9EFC9D8CAE4F7E4D1DAC0FFFFECFDF5F5B0A7C26E67A434
        3181E4E6FF060C4FEEF6FFF5FEFFF6FFF5D3DACD363A35878A88C0C0C0C0C0C0
        C0C0C0C0C0C0BF9D86FFE8D2FDE0DCD3C2BFFFFCEAEAE0C8E0C1AAE0C09DFFEC
        B5FFF7BCFFF4C4FFFFDCFFFFDAD7E3B3D8E3ABEDF2C5FFFEF39F99AC7678A832
        387B293282081258E7F1FFF1FBFFF6FFF2E1E2CE433A2D99887FC0C0C0C0C0C0
        C0C0C0C0C0C0BE9B87FFF7E5FFECEBCABCBDF1F4E4FEFEE6F1DAC4FFE4C7F3DC
        AFFEECB7FFFBC6FFEEBBFFF8C3F5F4BCF9FFBDF5F9C5E5E1CF837E87C7C9E7E7
        EDFFE3ECFFE6EFFFEBF5FFF0FAFFFAFFF2DFDDC54B3A259C836FC0C0C0C0C0C0
        C0C0C0C0C0C0C39A8BFFF1E2FFF5F1E6DCDCB1B8B1D7DDD2F1E3DDF6E0D4F8E4
        CBF5E2C1F6DFBFE8D0ACE6CCA4E3CFA0F4EFB8F7F5C5D0C9B59A939087828B7E
        7E907C7C9A6F7390EFF5FFEFF5FAFCFFF6E7E6CC412F10AC926EC0C0C0C0C0C0
        C0C0C0C0C0C0C19B89FFE5D6FFF8F5FEFCFF99A2ABE5ECF5FFFAFCFFFEFAFFF8
        EAE6D8C1F6E7C6F5E1B8FFE6BDFFE4B8FFF3C8EBE2C0918D7BC7C1BAFFFBF7FF
        FEFCFFF8FCFFF9FFFAFCFFF5FCFFF9FDF1E8E3CA463310AB926AC0C0C0C0C0C0
        C0C0C0C0C0C0BA9B84FFF0D8FFFCFDEEF5FFD9E2FF747C9A9DA3A8C7C8BFFFF9
        F0FFFFEDE7EAB2EFEDA7DFCC8FF4D8A9B49C80B2A597AFB0AEF8F6F5FFFBF424
        01002200001F0903EEF1F5F6FFFFFFFFF3EEE2CA49371A9D8868C0C0C0C0C0C0
        C0C0C0C0C0C0BD9E85FFF4DAFCFDFBE3F0FF0D15510B1454808AB2949BAEEBEE
        F2FCFEEBEEF7C5EAEFAAEFE79ACDBF7D90805BCBC4B5EDF8F6FFFEFF33080547
        08004E1000370B00FFFFFEECF4F3FFFCEFEADDC746381C9D8F72C0C0C0C0C0C0
        C0C0C0C0C0C0C89E87FFECD6FDFBF3EBF7FFDBE2FF2A2E9EC1CAFF0C1965818D
        A589938DA2A69AB4B88EB0B95ED3DE787A823CFDFFDFF0FFF7FAF4F9FFECFBA7
        444EFFA79F4D0500FFF4F3FDFFFFFFFAF1EAE0CE3B351892906EC0C0C0C0C0C0
        C0C0C0C0C0C0CE9D83FFEFD4FFFDEFF8F8FFEDE5FF3C328F342D8E141159F4F3
        FFFFFCF7FFFAF6FFFFE58385337D8423777933FFFFD9FAFFECFFFEFBFFEDF7A7
        474DA9483A5C0E00FFF8F3FFF7F2FFFAEBECDEC8403B228B8A6EC0C0C0C0C0C0
        C0C0C0C0C0C0D2A07CFFF0CDFFFDE9FFF8F1FFE6EAFFE3EFFFE2F3FFE3EFFFE9
        E0FFECD9FFECD9FFF0D2FFF7C5FFFAC4FFF4CEFFEED2FFEDD6FFEEDAFFEBD9FF
        E8D2FFEECEFFEFD1FFF5E2FFFAE5FFFFE4FFE2C3564635968E81C0C0C0C0C0C0
        C0C0C0C0C0C0C38B5AE7A46BD39870D6A17CDB9F75DB9F75DB9D77DB9D77E09F
        73E29F72E29E73DE9F73D5A172D39F70D99E71DE9E75DFA178DBA177D19970C8
        9166C38857E7A777CB825CCB865FD8A071AC845A4B331D948277C0C0C0C0C0C0
        C0C0C0C0C0C0A468229D4E00873A008C3E008E3C008E3C008E3C008E3D00903F
        00913F00933B00913B008A3F008740008C4200914200923E00913A0091360093
        3801973D009D42009C42028C390094531695632E5B3816B69A82C0C0C0C0C0C0
        C0C0C0C0C0C0AE772EB46B0FCB7F2DCC7E31CE7C2ECE7D2CCC7E2BCA8028C883
        22C88322CA7F29C87E2CC7812DC88227CD851FD08420CF7C27CF782ED97C3DE3
        8647EE9249CF792DFFAE63D38B43C88D48B88A54664623F9E0C6C0C0C0C0C0C0
        C0C0C0C0C0C0C6A167BC8940C18B4CAE773AB27D3AB27E37B48034B18230A886
        2DA1862FA18433A28334AA8436AD7F31B57E2DBA8132B67F3CB57C3EB77A3ABA
        7D3BB47934B9833CB0853CA781399C7939AE9361E0CFB5C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
      Layout = blGlyphTop
    end
    object BitBtn13: TBitBtn
      Left = 481
      Top = 6
      Width = 77
      Height = 55
      Caption = 'F9-Fechar'
      TabOrder = 2
      TabStop = False
      OnClick = BitBtn13Click
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C08AB4CE005696005D9F005F99005C94005B93005A90005A91005A9000
        598E195B811F5D8230627C4D6D7E5C7582C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B4CDDE186A9D146B9F176FA2176F
        A21970A30C679A02639C1B76C91976C61674C11575BE1272BA106FB60B6BAE0B
        6AAE0364A90064A500619E005A9F005C9C20597BDDD7D4C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C072A5C7004A8206437007406D0640
        6D073F6D014D800766A5217FD22083D22487D32183D22183D22183D22081D01F
        7ECF1D7DCC1B78C91A78C71871C00668AD125A85D6D0CBC0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0EEE7EF5F9BBD00508513375F14355D1436
        5F14325A044F660866AC268AD7288CD5278ED6278DD6268DD6268BD5268AD426
        8AD42286D22287D32387D3207FD01072BC125985D3CDC7C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0D4D5D4408440629ABE005288123964133561112A
        5F013E220D785A0B65B7288ED92D93D9268BD5298FD72B91D82B91D8258CD626
        8CD5268DD6268CD5268BD52188D41475C6125886C9C3BEC0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0A8B7A71E8F2305880A4A84B60044800B2E4C06393C0465
        1550BC533C95A10762B02F93DC2D94D9278CD52B92D92D94DA2D94DA258DD627
        8DD62A91D8288ED7268DD5288ED7187EC6115883C0BCB8C0C0C0C0C0C0C0C0C0
        C0C0C064956303940E27C23A32C0442EB63C35B84251C55E69D27A76D88D85DF
        9D79DA8C0062641371BB3396DF349ADD238BD33198DC3298DC3399DD298FD72B
        91D82F96DA2C93D9288FD72C92D91F82C900588DB0AFAEC0C0C0C0C0C0EAEFE9
        35863700A1061EBB2F25BB362FBC403AC54E58CC6C60D07664D07975D68C7BDC
        90177F180044611579C93599DF399EDF268DD9389EE2359CDF379DDF2B90D82B
        91D83198DC3096DB2990D72F94DB2587D500588EA8A8A7C0C0C0C0C0C0C7DCC6
        0085010EB72016B92826BB3730BC4039C34C4EC96260CF7570D78579DE8E24A2
        1E063934034F8B1A7BBF389FE53CA4E51F78B02C83B7369BDC3DA5E82D93DA2D
        94D9379ADD3299DD2A91D83397DD278BD4005B91A0A3A2C0C0C0C0C0C0C0C0C0
        DAE8D92B9A2F12AD2128BF3A2FBC403BC54E51CD6357CD6541B34A0B6E1A072F
        481334620153861B80CA3996D21B5E9A0A4D920D4883164C6E3594D12E97DE2F
        95DB389FE1349BDE2A91D7399EE02A8DD9005C93979C9EC0C0C0C0C0C0C0C0C0
        C0C0C0EAECE94D9F4E04A31134C5472BB137188D2516633B09483C0B37501435
        6413385F005288278BCE1A6FB6105EAA1A7DCB1472C30A417D2D72932F97DE31
        98DC3BA1E3389EE12A91D8389EE22E93DA02619D8A9399C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C071B57315A0211B911C096095083D731332601337621337
        5F13375F02578F288CD20F5EA81879C82086D31D81D00F5EAC175E8E3196D934
        9ADE3EA4E53BA1E22991D83BA2E33398E10665A4869093C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0AFD1AE1B931A06639F0C406B13365E1338601337
        5F12385F005D942C91D7145EA657A3D860ACDF5DAADC155FA72172A0359ADE34
        9BDE40A6E53EA4E42991D83FA5E5369CE40666A5768992C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0E1F5DC005B9210386013375F1338601337
        5F12375E005D943199DB2175B19CB0D3EEF5FDC2D2E7195D9E3C9DD3339BE037
        9DE041A7E541A7E72990D840A6E53A9FE50668A671858CC0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000578F11386013375F1338601337
        5E0D3D670360963297D93FA8E92A84BD559ACA2F85BF41A2DD4CB4F1359CDE38
        A0E245ABEA48AEEA2A90D743A9E73EA6E80F72B4607F8DC0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000568E13355E1338611338601336
        5E0E3C6604639E3399DA4DB1F03FA9E92994DC4DB5F24CB3F04CB2EE359CE038
        9FE148AEEA49AEEB2B91D946AAEA3FA7E71374B7597A8BC0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0004F861233520F2E501338601336
        5D0B426C0565A13B9FE14DB3EF3EA6E739A1E44DB7F248B0EF4AB3F1319BE034
        9FE445AFEF46B1F0258FD93DA8EA47AFEE1375B748718BC0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0004984025A16003B170D254B1436
        5C0B426E0A6BA93EA2E54AB5F438A1E43AA4E853B5EE4EB4EE53B6EF419EDD53
        A8DD60B7E863B9E84B9CD462B4E64AAEEF1478BE466F87C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00035740E771623A3260033180A18
        3A09406B0B6EABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF127DC63A6B86C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08BA08D0062072E9B3280E39940B2480042
        0D0A32530B74BA0000FF0000FF0000FFFFFFFF0000FFFFFFFFFFFFFF0000FFFF
        FFFF0000FFFFFFFF0000FFFFFFFFFFFFFF1A81CB306380C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0819E802B862C219E2C4AC55A62CD736ED4847DDB9356C6
        5C0868470B6DBBFFFFFFFFFFFF0000FFFFFFFF0000FFFFFFFFFFFFFF0000FFFF
        FFFF0000FFFFFFFF0000FFFFFFFFFFFFFF1981CB2C6382C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C057965705A4122CC03E44C85856CB6B60D0766CD18076D68C90E8
        9F3793930B6CB50000FF0000FF0000FFFFFFFF0000FF0000FF0000FF0000FFFF
        FFFF0000FFFFFFFF0000FFFFFFFFFFFFFF1B87D2245F81C0C0C0C0C0C0C0C0C0
        C0C0C000920321BD322ABF3C31C3443DC54F54CD6565D2786BD28083DE9B77DC
        7E127572147BC60000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFF0000FFFF
        FFFF0000FFFFFFFF0000FF0000FF0000FF2694DC1B587CC0C0C0C0C0C0C0C0C0
        4FA0520BB51D1EBE3012AD2118992144A84F095B3024912D79DD9056BF620B66
        10004D6D1C83CB0000FF0000FF0000FFFFFFFFFFFFFF0000FF0000FFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFF2C98DE195B7EC0C0C0C0C0C0C0C0C0
        0B90100CB61D00900678A178C2D4BEC0C0C008367019842B4BC34D0157110F2C
        53024F851B87CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFF349BE015597FC0C0C0C0C0C0C3DEC3
        0190062A8F2DD2D1CFC0C0C0C0C0C0C0C0C00F39660464180149201330651532
        5B025182228BCF5EB9F55EB9F55EB9F55EB9F55EB9F55EB9F55EB9F55EB9F55E
        B9F55EB9F55EB9F55EB9F55EB9F55EB9F5339BE00C547EC0C0C0C0C0C0C3E1C3
        007000B4BBB5C0C0C0C0C0C0C0C0C0C0C0C000487C00467400437900477A0045
        76005588268CCE49B5FB5EB9F55EB9F55EB9F55EB9F55EB9F55EB9F55EB9F55E
        B9F53EAAF033A1E92C9AE23093D42B8FCF0F76BD105780C0C0C0C0C0C0C5E2C5
        4F9250C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04389B2488BB6478CB5478CB54F91
        B80461962485C644AAEE3BA8EF39A2E92E9BE02892D9238ACF1780C90A74BE04
        6CAD005C96005991005A97025893096195186B9D75A0B8C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C02E77A600589500609E00548F00518800548B0F6192256C972C78A13F7DA14B
        89AA7AA6C3A5C6DABDCAD2C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
      Layout = blGlyphTop
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 564
    Height = 48
    Align = alTop
    TabOrder = 0
    object GroupBox7: TGroupBox
      Left = 11
      Top = 6
      Width = 230
      Height = 38
      Caption = 'Tipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object cbfisica: TRadioButton
        Left = 6
        Top = 15
        Width = 59
        Height = 17
        Caption = 'Fisica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object cbjuridica: TRadioButton
        Left = 76
        Top = 15
        Width = 77
        Height = 17
        Caption = 'Juridica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object cbttipo: TRadioButton
        Left = 165
        Top = 15
        Width = 59
        Height = 17
        Caption = 'Todos'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        TabStop = True
      end
    end
    object GroupBox1: TGroupBox
      Left = 242
      Top = 6
      Width = 157
      Height = 38
      Caption = 'Situa'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object CBox1: TRadioButton
        Left = 14
        Top = 15
        Width = 57
        Height = 17
        Caption = 'Ativo'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
      end
      object CBox2: TRadioButton
        Left = 94
        Top = 15
        Width = 57
        Height = 17
        Caption = 'Inativo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object GroupBox6: TGroupBox
      Left = 401
      Top = 6
      Width = 172
      Height = 38
      Caption = 'Tem Email'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object CBox3: TRadioButton
        Left = 6
        Top = 15
        Width = 46
        Height = 17
        Caption = 'Sim'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object CBox4: TRadioButton
        Left = 52
        Top = 15
        Width = 55
        Height = 17
        Caption = 'N'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object cbtemail: TRadioButton
        Left = 101
        Top = 15
        Width = 59
        Height = 17
        Caption = 'Todos'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        TabStop = True
      end
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 199
    Width = 564
    Height = 55
    Align = alTop
    Caption = 'CIDADE/UF/DDD'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object Label5: TLabel
      Left = 411
      Top = 21
      Width = 18
      Height = 16
      Caption = 'UF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 477
      Top = 20
      Width = 30
      Height = 16
      Caption = 'DDD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edCidade: TEdit
      Left = 4
      Top = 20
      Width = 360
      Height = 22
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clCream
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 366
      Top = 19
      Width = 36
      Height = 24
      Caption = '...'
      TabOrder = 1
    end
    object edtUF: TEdit
      Left = 433
      Top = 18
      Width = 40
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clCream
      TabOrder = 2
    end
    object edtDDD: TEdit
      Left = 510
      Top = 17
      Width = 41
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clCream
      TabOrder = 3
    end
  end
  object GroupBox5: TGroupBox
    Left = 0
    Top = 255
    Width = 564
    Height = 55
    Align = alBottom
    Caption = 'Data do Cadastro'
    TabOrder = 5
    object JvDatePickerEdit2: TJvDatePickerEdit
      Left = 8
      Top = 20
      Width = 95
      Height = 22
      AllowNoDate = True
      Checked = False
      TabOrder = 0
    end
    object JvDatePickerEdit3: TJvDatePickerEdit
      Left = 110
      Top = 20
      Width = 95
      Height = 21
      AllowNoDate = True
      Checked = False
      TabOrder = 1
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 48
    Width = 564
    Height = 96
    Align = alTop
    Caption = 'CLIENTE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label3: TLabel
      Left = 7
      Top = 11
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label4: TLabel
      Left = 63
      Top = 11
      Width = 31
      Height = 13
      Caption = 'Nome '
    end
    object Label11: TLabel
      Left = 308
      Top = 11
      Width = 34
      Height = 13
      Caption = 'Raz'#227'o '
    end
    object Label6: TLabel
      Left = 11
      Top = 51
      Width = 58
      Height = 13
      Caption = 'CNPJ / CPF'
    end
    object Label8: TLabel
      Left = 299
      Top = 51
      Width = 37
      Height = 13
      Caption = 'IE / RG'
    end
    object edCodigo: TEdit
      Left = 4
      Top = 26
      Width = 57
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clCream
      TabOrder = 0
    end
    object edNome: TEdit
      Left = 60
      Top = 26
      Width = 242
      Height = 24
      Hint = 'N'#227'o use acentos ou '#231' para fazer a busca.'
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clCream
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object edRazao: TEdit
      Left = 305
      Top = 26
      Width = 255
      Height = 24
      Hint = 'N'#227'o use acentos ou '#231' para fazer a busca.'
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clCream
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object edCNPJCPF: TEdit
      Left = 4
      Top = 66
      Width = 285
      Height = 24
      Hint = 'Use apenas N'#218'MEROS'
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clCream
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnChange = edCNPJCPFChange
      OnKeyPress = edCNPJCPFKeyPress
    end
    object edIERG: TEdit
      Left = 295
      Top = 66
      Width = 265
      Height = 24
      Hint = 'Use apenas N'#218'MEROS'
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clCream
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnChange = edIERGChange
      OnKeyPress = edIERGKeyPress
    end
  end
end
