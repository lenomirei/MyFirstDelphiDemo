object Form1: TForm1
  Left = 815
  Top = 564
  AutoScroll = False
  Caption = #31995#32479#35774#32622
  ClientHeight = 709
  ClientWidth = 1145
  Color = clBtnFace
  Constraints.MinHeight = 633
  Constraints.MinWidth = 1044
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 0
    Top = 659
    Width = 1145
    Height = 50
    Align = alBottom
    Constraints.MinHeight = 50
    TabOrder = 0
    DesignSize = (
      1145
      50)
    object Button4: TButton
      Left = 840
      Top = 15
      Width = 75
      Height = 25
      Anchors = [akRight]
      Caption = #30830#23450
      TabOrder = 0
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 936
      Top = 15
      Width = 75
      Height = 25
      Anchors = [akRight]
      Caption = #21462#28040
      TabOrder = 1
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 1032
      Top = 15
      Width = 75
      Height = 25
      Anchors = [akRight]
      Caption = #24212#29992
      TabOrder = 2
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1145
    Height = 662
    ActivePage = TabSheet1
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Constraints.MinHeight = 657
    TabOrder = 1
    OnChanging = PageControl1Changing
    object TabSheet1: TTabSheet
      Caption = #24080#21495
      Constraints.MinHeight = 633
      Constraints.MinWidth = 1137
    end
    object TabSheet2: TTabSheet
      Caption = #32593#32476
      ImageIndex = 1
    end
  end
end
