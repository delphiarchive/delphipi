inherited SelectFoldersPage: TSelectFoldersPage
  Left = 346
  Top = 221
  ActiveControl = edtBaseFolder
  Caption = 'SelectFoldersPage'
  ClientHeight = 232
  ClientWidth = 412
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object grpPackagePattern: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 134
    Width = 406
    Height = 79
    Align = alTop
    Caption = 'Pattern to select package files '
    TabOrder = 2
    DesignSize = (
      406
      79)
    object Label3: TLabel
      Left = 12
      Top = 51
      Width = 98
      Height = 13
      Caption = 'Package File Pattern'
    end
    object Label2: TLabel
      Left = 12
      Top = 16
      Width = 381
      Height = 26
      Anchors = [akLeft, akTop, akRight]
      Caption = 
        'Specify a pattern that matches for the package files that are su' +
        'itable for your delphi installation. ie: *d7.dpk for Delphi 7'
      WordWrap = True
    end
    object cbPattern: TComboBox
      Left = 116
      Top = 48
      Width = 277
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      Text = '*.dpk'
    end
  end
  object grpBaseFolder: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 406
    Height = 65
    Align = alTop
    Caption = 'Select Base Folder contains both Package and Source files'
    TabOrder = 0
    DesignSize = (
      406
      65)
    object Label1: TLabel
      Left = 12
      Top = 16
      Width = 56
      Height = 13
      Caption = 'Base Folder'
    end
    object btnSelectFolder: TButton
      Left = 560
      Top = 35
      Width = 32
      Height = 21
      Anchors = [akTop, akRight]
      Caption = '...'
      TabOrder = 0
      WordWrap = True
      OnClick = btnSelectFolderClick
    end
    object edtBaseFolder: TEdit
      Left = 12
      Top = 35
      Width = 381
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      OnChange = edtBaseFolderChange
    end
  end
  object grpDelphiVersion: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 74
    Width = 406
    Height = 54
    Align = alTop
    Caption = 'Installed Delphi Versions'
    TabOrder = 1
    DesignSize = (
      406
      54)
    object cbDelphiVersions: TComboBox
      Left = 12
      Top = 20
      Width = 381
      Height = 21
      Style = csDropDownList
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      OnChange = cbDelphiVersionsChange
    end
  end
end
