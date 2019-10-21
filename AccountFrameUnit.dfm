object AccountFrame: TAccountFrame
  Left = 0
  Top = 0
  Width = 640
  Height = 420
  Align = alTop
  TabOrder = 0
  object FAccountListbox: TListBox
    Left = 24
    Top = 32
    Width = 185
    Height = 337
    ItemHeight = 13
    TabOrder = 0
    OnClick = FAccountListboxClick
  end
  object FNewButton: TButton
    Left = 24
    Top = 376
    Width = 57
    Height = 25
    Caption = #26032#24314
    TabOrder = 1
  end
  object FImportButton: TButton
    Left = 88
    Top = 376
    Width = 57
    Height = 25
    Caption = #23548#20837
    TabOrder = 2
  end
  object FDeleteButton: TButton
    Left = 152
    Top = 376
    Width = 57
    Height = 25
    Caption = #21024#38500
    TabOrder = 3
  end
  object FAccountInfoPanel: TPanel
    Left = 224
    Top = 32
    Width = 393
    Height = 337
    TabOrder = 4
    object TEmailAddressLabel: TLabel
      Left = 24
      Top = 32
      Width = 61
      Height = 13
      Caption = 'Email'#22320#22336#65306
    end
    object TPasswordLabel: TLabel
      Left = 48
      Top = 64
      Width = 36
      Height = 13
      Caption = #23494#30721#65306
    end
    object TDisplayNameLabel: TLabel
      Left = 24
      Top = 96
      Width = 65
      Height = 13
      Caption = #26174#31034#21517#31216#65306
    end
    object TSendNameLabel: TLabel
      Left = 24
      Top = 128
      Width = 65
      Height = 13
      Caption = #21457#20449#21517#31216#65306
    end
    object Label5: TLabel
      Left = 216
      Top = 192
      Width = 24
      Height = 13
      Caption = #27599#38548
    end
    object Label6: TLabel
      Left = 288
      Top = 192
      Width = 24
      Height = 13
      Caption = #20998#38047
    end
    object FEmailAddressEdit: TEdit
      Left = 104
      Top = 28
      Width = 265
      Height = 21
      TabOrder = 0
    end
    object FPassworkEdit: TEdit
      Left = 104
      Top = 60
      Width = 265
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
    end
    object FDisplayNameEdit: TEdit
      Left = 104
      Top = 92
      Width = 265
      Height = 21
      TabOrder = 2
    end
    object FSendNameEdit: TEdit
      Left = 104
      Top = 124
      Width = 265
      Height = 21
      TabOrder = 3
    end
    object FActivatedCombobox: TComboBox
      Left = 104
      Top = 160
      Width = 113
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 4
      OnChange = FActivatedComboboxChange
    end
    object FTimerCheckbox: TCheckBox
      Left = 104
      Top = 192
      Width = 105
      Height = 17
      Caption = #23450#26102#25910#21462#37038#20214
      TabOrder = 5
      OnClick = FTimerCheckboxClick
    end
    object FTimerCombobox: TComboBox
      Left = 248
      Top = 184
      Width = 33
      Height = 19
      Style = csSimple
      ItemHeight = 13
      TabOrder = 6
    end
    object FSyncContactsCheckbox: TCheckBox
      Left = 104
      Top = 224
      Width = 97
      Height = 17
      Caption = #21516#27493#32852#31995#20154
      TabOrder = 7
    end
    object FSyncCalendarCheckbox: TCheckBox
      Left = 104
      Top = 256
      Width = 97
      Height = 17
      Caption = #21516#27493#26085#21382
      TabOrder = 8
    end
  end
end
