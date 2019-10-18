object Frame3: TFrame3
  Left = 0
  Top = 0
  Width = 1137
  Height = 633
  Align = alTop
  Constraints.MinHeight = 633
  Constraints.MinWidth = 1137
  TabOrder = 0
  object account_panel_: TPanel
    Left = 32
    Top = 40
    Width = 281
    Height = 521
    TabOrder = 0
  end
  object account_listbox_: TListBox
    Left = 32
    Top = 40
    Width = 281
    Height = 521
    ItemHeight = 13
    TabOrder = 1
    OnClick = account_listbox_Click
  end
  object Button1: TButton
    Left = 32
    Top = 584
    Width = 75
    Height = 25
    Caption = #26032#24314
    TabOrder = 2
  end
  object Button2: TButton
    Left = 120
    Top = 584
    Width = 75
    Height = 25
    Caption = #23548#20837
    TabOrder = 3
  end
  object Button3: TButton
    Left = 208
    Top = 584
    Width = 75
    Height = 25
    Caption = #21024#38500
    TabOrder = 4
  end
  object info_panel_: TPanel
    Left = 328
    Top = 40
    Width = 753
    Height = 521
    TabOrder = 5
    object Label1: TLabel
      Left = 56
      Top = 48
      Width = 61
      Height = 13
      Caption = 'Email'#22320#22336#65306
    end
    object Label2: TLabel
      Left = 56
      Top = 88
      Width = 36
      Height = 13
      Caption = #23494#30721#65306
    end
    object Label3: TLabel
      Left = 56
      Top = 128
      Width = 60
      Height = 13
      Caption = #26174#31034#21517#31216#65306
    end
    object Label4: TLabel
      Left = 56
      Top = 168
      Width = 60
      Height = 13
      Caption = #21457#20449#21517#31216#65306
    end
    object Label5: TLabel
      Left = 264
      Top = 264
      Width = 24
      Height = 13
      Caption = #27599#38548
    end
    object Label6: TLabel
      Left = 376
      Top = 264
      Width = 24
      Height = 13
      Caption = #20998#38047
    end
    object email_address_edit_: TEdit
      Left = 144
      Top = 44
      Width = 553
      Height = 21
      TabOrder = 0
    end
    object password_edit_: TEdit
      Left = 144
      Top = 84
      Width = 553
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
    end
    object display_name_edit_: TEdit
      Left = 144
      Top = 124
      Width = 553
      Height = 21
      TabOrder = 2
    end
    object send_name_edit_: TEdit
      Left = 144
      Top = 164
      Width = 553
      Height = 21
      TabOrder = 3
    end
    object activated_combobox_: TComboBox
      Left = 144
      Top = 208
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 4
      OnChange = activated_combobox_Change
    end
    object timer_checkbox_: TCheckBox
      Left = 144
      Top = 264
      Width = 105
      Height = 17
      Caption = #23450#26102#25910#21462#37038#20214
      TabOrder = 5
      OnClick = timer_checkbox_Click
    end
    object timer_combobox_: TComboBox
      Left = 304
      Top = 256
      Width = 65
      Height = 21
      ItemHeight = 13
      TabOrder = 6
      Text = '15'
    end
    object sync_contacts_checkbox_: TCheckBox
      Left = 144
      Top = 304
      Width = 97
      Height = 17
      Caption = #21516#27493#32852#31995#20154
      TabOrder = 7
    end
    object sync_calendar_checkbox_: TCheckBox
      Left = 144
      Top = 344
      Width = 97
      Height = 17
      Caption = #21516#27493#26085#21382
      TabOrder = 8
    end
  end
end
