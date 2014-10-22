inherited InstallHelpFilesPage: TInstallHelpFilesPage
  Left = 202
  Top = 166
  Caption = 'InstallHelpFilesPage'
  ClientHeight = 240
  ClientWidth = 412
  OnCreate = FormCreate
  ExplicitWidth = 412
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 484
    Height = 26
    Anchors = [akLeft, akTop, akRight]
    Caption = 
      'DelphiPI has found some help files in the folder that you have s' +
      'elected. Would you like to install them as well?'
    WordWrap = True
  end
  object helpFileList: TListView
    Left = 8
    Top = 50
    Width = 396
    Height = 159
    Anchors = [akLeft, akTop, akRight, akBottom]
    Checkboxes = True
    Columns = <
      item
        AutoSize = True
        Caption = 'Help File Name'
        MinWidth = 200
      end>
    GridLines = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    ViewStyle = vsReport
  end
  object btnInstallHelpFiles: TButton
    Left = 290
    Top = 215
    Width = 114
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Install Help Files'
    TabOrder = 1
    OnClick = btnInstallHelpFilesClick
  end
end
