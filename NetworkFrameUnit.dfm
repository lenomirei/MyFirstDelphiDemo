object NetworkFrame: TNetworkFrame
  Left = 0
  Top = 0
  Width = 640
  Height = 420
  Align = alTop
  Anchors = [akLeft, akTop, akRight, akBottom]
  TabOrder = 0
  object FNetworkGroupbox: TGroupBox
    Left = 31
    Top = 40
    Width = 578
    Height = 337
    Caption = #24080#21495#65306
    TabOrder = 1
    object FDefaultProxyRadiobutton: TRadioButton
      Left = 48
      Top = 48
      Width = 113
      Height = 17
      Caption = #20351#29992#40664#35748#20195#29702
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object FNoProxyRadiobutton: TRadioButton
      Left = 48
      Top = 72
      Width = 113
      Height = 17
      Caption = #19981#20351#29992#20195#29702#26381#21153#22120
      TabOrder = 1
    end
    object FIEProxyRadiobutton: TRadioButton
      Left = 48
      Top = 96
      Width = 185
      Height = 17
      Caption = #20351#29992'IE'#27983#35272#22120#30340#20195#29702#35774#32622
      TabOrder = 2
    end
    object FCustomProxyRadiobutton: TRadioButton
      Left = 48
      Top = 120
      Width = 121
      Height = 17
      Caption = #33258#23450#20041#20195#29702#35774#32622
      TabOrder = 3
    end
    object FProxyServerSettingGroupbox: TGroupBox
      Left = 64
      Top = 152
      Width = 441
      Height = 145
      Caption = #37038#20214#20195#29702#26381#21153#22120
      TabOrder = 4
      object FTypeLabel: TLabel
        Left = 24
        Top = 32
        Width = 36
        Height = 13
        Caption = #31867#22411#65306
      end
      object FServerLabel: TLabel
        Left = 24
        Top = 64
        Width = 48
        Height = 13
        Caption = #26381#21153#22120#65306
      end
      object FPortLabel: TLabel
        Left = 248
        Top = 64
        Width = 36
        Height = 13
        Caption = #31471#21475#65306
      end
      object FUserIDLabel: TLabel
        Left = 24
        Top = 96
        Width = 47
        Height = 13
        Caption = #29992#25143'ID'#65306
      end
      object FPasswordLabel: TLabel
        Left = 248
        Top = 96
        Width = 36
        Height = 13
        Caption = #23494#30721#65306
      end
      object FServerEdit: TEdit
        Left = 88
        Top = 64
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object FUserIDEdit: TEdit
        Left = 88
        Top = 96
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object FPortEdit: TEdit
        Left = 288
        Top = 64
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object FPasswordEdit: TEdit
        Left = 288
        Top = 96
        Width = 121
        Height = 21
        TabOrder = 3
      end
      object FProxyTypeCombobox: TComboBox
        Left = 88
        Top = 32
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 4
        Text = 'HTTP'
        Items.Strings = (
          'HTTP'
          'SOCKS 4'
          'SOCKS 5')
      end
    end
  end
  object FAccountCombobox: TComboBox
    Left = 72
    Top = 40
    Width = 121
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 0
    OnChange = FAccountComboboxChange
  end
end
