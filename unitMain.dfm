object formMain: TformMain
  Left = 0
  Top = 0
  Caption = 'Menu Principal'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainPrincipal
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = OnClose
  OnCreate = OnCreate
  PixelsPerInch = 96
  TextHeight = 13
  object MainPrincipal: TMainMenu
    Left = 120
    Top = 24
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object Salvar1: TMenuItem
        Caption = 'Salvar'
      end
      object Fechar1: TMenuItem
        Caption = 'Fechar'
        OnClick = fechar
      end
    end
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Produtos1: TMenuItem
        Caption = 'Produtos'
        OnClick = Produtos1Click
      end
      object Cliente1: TMenuItem
        Caption = 'Clientes'
      end
      object Fornecedores1: TMenuItem
        Caption = 'Fornecedores'
      end
    end
    object Movimentacao1: TMenuItem
      Caption = 'Movimentacao'
      object Pedido1: TMenuItem
        Caption = 'Pedido'
      end
      object Venda1: TMenuItem
        Caption = 'Venda'
      end
      object Compra1: TMenuItem
        Caption = 'Compra'
      end
      object Devolucao1: TMenuItem
        Caption = 'Devolucao'
      end
    end
    object Relatorio1: TMenuItem
      Caption = 'Relatorio'
      object Vendas1: TMenuItem
        Caption = 'Vendas'
      end
    end
  end
end
