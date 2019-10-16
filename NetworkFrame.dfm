object Frame2: TFrame2
  Left = 0
  Top = 0
  Width = 1022
  Height = 633
  TabOrder = 0
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 1137
    Height = 633
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 48
      Top = 48
      Width = 1057
      Height = 537
      Caption = #36134#21495#65306
      TabOrder = 0
      object default_proxy_radiobutton_: TRadioButton
        Left = 48
        Top = 48
        Width = 113
        Height = 17
        Caption = #20351#29992#40664#35748#20195#29702
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object no_proxy_radiobutton_: TRadioButton
        Left = 48
        Top = 72
        Width = 113
        Height = 17
        Caption = #19981#20351#29992#20195#29702#26381#21153#22120
        TabOrder = 1
      end
      object ie_proxy_radiobutton_: TRadioButton
        Left = 48
        Top = 96
        Width = 185
        Height = 17
        Caption = #20351#29992'IE'#27983#35272#22120#30340#20195#29702#35774#32622
        TabOrder = 2
      end
      object custom_proxy_radiobutton_: TRadioButton
        Left = 48
        Top = 120
        Width = 121
        Height = 17
        Caption = #33258#23450#20041#20195#29702#35774#32622
        TabOrder = 3
      end
      object GroupBox2: TGroupBox
        Left = 64
        Top = 152
        Width = 625
        Height = 177
        Caption = #37038#20214#20195#29702#26381#21153#22120
        TabOrder = 4
        object Label7: TLabel
          Left = 24
          Top = 32
          Width = 36
          Height = 13
          Caption = #31867#22411#65306
        end
        object Label8: TLabel
          Left = 24
          Top = 64
          Width = 48
          Height = 13
          Caption = #26381#21153#22120#65306
        end
        object Label9: TLabel
          Left = 304
          Top = 64
          Width = 36
          Height = 13
          Caption = #31471#21475#65306
        end
        object Label10: TLabel
          Left = 24
          Top = 96
          Width = 47
          Height = 13
          Caption = #29992#25143'ID'#65306
        end
        object Label11: TLabel
          Left = 304
          Top = 96
          Width = 36
          Height = 13
          Caption = #23494#30721#65306
        end
        object Edit5: TEdit
          Left = 88
          Top = 64
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object Edit6: TEdit
          Left = 88
          Top = 96
          Width = 121
          Height = 21
          TabOrder = 1
        end
        object Edit7: TEdit
          Left = 352
          Top = 64
          Width = 121
          Height = 21
          TabOrder = 2
        end
        object Edit8: TEdit
          Left = 352
          Top = 96
          Width = 121
          Height = 21
          TabOrder = 3
        end
        object proxy_type_combobox_: TComboBox
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
    object account_combobox_: TComboBox
      Left = 96
      Top = 48
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      OnChange = account_combobox_Change
    end
  end
end
