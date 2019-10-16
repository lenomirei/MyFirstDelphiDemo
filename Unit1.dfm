object Form1: TForm1
  Left = 1781
  Top = 346
  AutoScroll = False
  Caption = #31995#32479#35774#32622
  ClientHeight = 694
  ClientWidth = 1020
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
    Top = 644
    Width = 1020
    Height = 50
    Align = alBottom
    TabOrder = 0
    object Button4: TButton
      Left = 816
      Top = 16
      Width = 75
      Height = 25
      Caption = #30830#23450
      TabOrder = 0
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 912
      Top = 16
      Width = 75
      Height = 25
      Caption = #21462#28040
      TabOrder = 1
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 1008
      Top = 16
      Width = 75
      Height = 25
      Caption = #24212#29992
      TabOrder = 2
    end
  end
  object Panel1: TPanel
    Left = -8
    Top = 0
    Width = 1145
    Height = 81
    TabOrder = 1
    object account_radio_button_: TRadioButton
      Left = 72
      Top = 32
      Width = 113
      Height = 17
      Caption = #24080#21495
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object network_radio_button_: TRadioButton
      Left = 248
      Top = 32
      Width = 113
      Height = 17
      Caption = #32593#32476
      TabOrder = 1
    end
  end
end
