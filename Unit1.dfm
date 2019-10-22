object Form1: TForm1
  Left = 1829
  Top = 369
  BorderStyle = bsDialog
  Caption = #31995#32479#35774#32622
  ClientHeight = 495
  ClientWidth = 648
  Color = clBtnFace
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
    Top = 445
    Width = 648
    Height = 50
    Align = alBottom
    Constraints.MinHeight = 50
    TabOrder = 0
    DesignSize = (
      648
      50)
    object FConfirmButton: TButton
      Left = 383
      Top = 15
      Width = 75
      Height = 25
      Anchors = [akRight]
      Caption = #30830#23450
      TabOrder = 0
      OnClick = FConfirmButtonClick
    end
    object FCancelButton: TButton
      Left = 471
      Top = 15
      Width = 75
      Height = 25
      Anchors = [akRight]
      Caption = #21462#28040
      TabOrder = 1
      OnClick = FCancelButtonClick
    end
    object FApplyButton: TButton
      Left = 559
      Top = 15
      Width = 75
      Height = 25
      Anchors = [akRight]
      Caption = #24212#29992
      TabOrder = 2
      OnClick = FApplyButtonClick
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 648
    Height = 448
    ActivePage = TabSheet1
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    OnChanging = PageControl1Changing
    object TabSheet1: TTabSheet
      Caption = #24080#21495
      Constraints.MaxHeight = 420
      Constraints.MaxWidth = 640
      Constraints.MinHeight = 420
      Constraints.MinWidth = 640
    end
    object TabSheet2: TTabSheet
      Caption = #32593#32476
      ImageIndex = 1
    end
  end
end
