object formTelaPesquisa: TformTelaPesquisa
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Pesquisar'
  ClientHeight = 424
  ClientWidth = 756
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = OnCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pageControlTelaPesquisa: TPageControl
    Left = 0
    Top = 0
    Width = 756
    Height = 359
    ActivePage = tabPesquisa
    Align = alClient
    TabOrder = 0
    object tabPesquisa: TTabSheet
      Caption = 'Pesquisa'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 748
        Height = 65
        Align = alTop
        TabOrder = 0
      end
      object dbPesquisa: TDBGrid
        Left = 0
        Top = 65
        Width = 748
        Height = 266
        Align = alClient
        DataSource = dataSourcePesquisa
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object tabManutencao: TTabSheet
      Caption = 'Manuten'#231#227'o'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 291
    end
  end
  object panelTelaPesquisa: TPanel
    Left = 0
    Top = 359
    Width = 756
    Height = 65
    Align = alBottom
    TabOrder = 1
    object buttonNovo: TBitBtn
      Left = 4
      Top = 24
      Width = 75
      Height = 25
      Caption = '&Novo'
      TabOrder = 0
    end
    object buttonAlterar: TBitBtn
      Left = 85
      Top = 24
      Width = 75
      Height = 25
      Caption = '&Alterar'
      TabOrder = 1
    end
    object buttonCancelar: TBitBtn
      Left = 166
      Top = 24
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 2
    end
    object buttonFechar: TBitBtn
      Left = 677
      Top = 24
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 3
      OnClick = buttonFecharClick
    end
    object DBNavigator1: TDBNavigator
      Left = 408
      Top = 24
      Width = 224
      Height = 25
      DataSource = dataSourcePesquisa
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 4
    end
    object buttonGravar: TBitBtn
      Left = 247
      Top = 24
      Width = 75
      Height = 25
      Caption = '&Gravar'
      TabOrder = 5
    end
    object buttonDeletar: TBitBtn
      Left = 327
      Top = 24
      Width = 75
      Height = 25
      Caption = '&Deletar'
      TabOrder = 6
    end
  end
  object maskPesquisar: TMaskEdit
    Left = 32
    Top = 47
    Width = 249
    Height = 21
    TabOrder = 2
    Text = 'Digite sua pesquisa'
  end
  object buttonPesquisar: TBitBtn
    Left = 287
    Top = 45
    Width = 75
    Height = 25
    Caption = '&Pesquisar'
    TabOrder = 3
  end
  object queryPesquisa: TZQuery
    Connection = DataModuleConnection.ConnectionDB
    Params = <>
    Left = 560
    Top = 24
  end
  object dataSourcePesquisa: TDataSource
    DataSet = queryPesquisa
    Left = 616
    Top = 24
  end
end
