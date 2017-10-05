object Form1: TForm1
  Left = 199
  Top = 164
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 
    ' Exemplo de uso do componente TChart - Ricardo Scache Belardinuc' +
    'i [ri-taqua@ig.com.br]'
  ClientHeight = 453
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 364
    Top = 8
    Width = 323
    Height = 65
    Shape = bsFrame
  end
  object Chart1: TChart
    Left = 0
    Top = 129
    Width = 688
    Height = 324
    Hint = 'Gr'#225'fico das vendas por m'#234's'
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Gradient.EndColor = clWhite
    Gradient.StartColor = clSilver
    Gradient.Visible = True
    Title.Text.Strings = (
      'Gr'#225'fico de Vendas')
    LeftAxis.PositionPercent = -1.000000000000000000
    LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
    LeftAxis.Title.Font.Color = clWhite
    LeftAxis.Title.Font.Height = -11
    LeftAxis.Title.Font.Name = 'Arial'
    LeftAxis.Title.Font.Style = [fsBold]
    Legend.ShadowSize = 0
    View3D = False
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    BorderWidth = 7
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    object SerieVendas: TBarSeries
      Marks.ArrowLength = 8
      Marks.Style = smsValue
      Marks.Visible = True
      SeriesColor = clRed
      Title = 'NomeDaSerie'
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object GroupBox1: TGroupBox
    Left = 1
    Top = 3
    Width = 358
    Height = 119
    Hint = 'Lan'#231'ar os Valores dos Meses'
    Caption = 'Total das Vendas Por M'#234's'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 34
      Width = 34
      Height = 13
      Caption = 'Janeiro'
    end
    object Label2: TLabel
      Left = 8
      Top = 59
      Width = 44
      Height = 13
      Caption = 'Fevereiro'
    end
    object Label3: TLabel
      Left = 8
      Top = 85
      Width = 30
      Height = 13
      Caption = 'Mar'#231'o'
    end
    object Label4: TLabel
      Left = 186
      Top = 34
      Width = 20
      Height = 13
      Caption = 'Abril'
    end
    object Label5: TLabel
      Left = 186
      Top = 59
      Width = 23
      Height = 13
      Caption = 'Maio'
    end
    object Label6: TLabel
      Left = 186
      Top = 85
      Width = 29
      Height = 13
      Caption = 'Junho'
    end
    object EditMesJan: TEdit
      Left = 56
      Top = 30
      Width = 121
      Height = 21
      TabOrder = 0
      Text = '2000,00'
      OnKeyPress = EditMesJanKeyPress
    end
    object EditMesFev: TEdit
      Left = 56
      Top = 55
      Width = 121
      Height = 21
      TabOrder = 1
      Text = '1500,00'
      OnKeyPress = EditMesJanKeyPress
    end
    object EditMesMar: TEdit
      Left = 56
      Top = 81
      Width = 121
      Height = 21
      TabOrder = 2
      Text = '3000,00'
      OnKeyPress = EditMesJanKeyPress
    end
    object EditMesAbr: TEdit
      Left = 221
      Top = 30
      Width = 121
      Height = 21
      TabOrder = 3
      Text = '1800,00'
      OnKeyPress = EditMesJanKeyPress
    end
    object EditMesMai: TEdit
      Left = 221
      Top = 55
      Width = 121
      Height = 21
      TabOrder = 4
      Text = '3500,00'
      OnKeyPress = EditMesJanKeyPress
    end
    object EditMesJun: TEdit
      Left = 221
      Top = 81
      Width = 121
      Height = 21
      TabOrder = 5
      Text = '2000,00'
      OnKeyPress = EditMesJanKeyPress
    end
  end
  object BtnGerarGrafico: TButton
    Left = 374
    Top = 13
    Width = 152
    Height = 25
    Hint = 'Click para Gerar o Gr'#225'fico'
    Caption = 'Gerar Gr'#225'fico'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = BtnGerarGraficoClick
  end
  object BtnImprir: TButton
    Left = 529
    Top = 13
    Width = 152
    Height = 25
    Hint = 'Click para imprimir o Gr'#225'fico'
    Caption = 'Imprimir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = BtnImprirClick
  end
  object RadioGroup1: TRadioGroup
    Left = 364
    Top = 73
    Width = 323
    Height = 49
    Hint = 'Escolha o Layout da Impress'#227'o'
    Caption = 'Layout da Impress'#227'o'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Horizontal'
      'Vertical')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
  end
  object BtnAlterarTituloGrafico: TButton
    Left = 374
    Top = 42
    Width = 307
    Height = 26
    Hint = 'Click para alterar o T'#237'tulo do Gr'#225'fico'
    Caption = 'Alterar T'#237'tulo em Tempo de Execu'#231#227'o'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = BtnAlterarTituloGraficoClick
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 640
    Top = 88
  end
end
