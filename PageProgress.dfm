inherited ProgressPage: TProgressPage
  Left = 299
  Top = 280
  Caption = 'ProgressPage'
  ClientHeight = 232
  ClientWidth = 412
  OnClose = FormClose
  OnCreate = FormCreate
  ExplicitWidth = 412
  ExplicitHeight = 232
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 406
    Height = 68
    Align = alTop
    Caption = 'Overall Progress'
    TabOrder = 0
    DesignSize = (
      406
      68)
    object Label1: TLabel
      Left = 12
      Top = 18
      Width = 44
      Height = 13
      Caption = 'Package:'
    end
    object lblPackage: TLabel
      Left = 62
      Top = 18
      Width = 61
      Height = 13
      Caption = 'lblPackage'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblCurrentPackageNo: TLabel
      Left = 411
      Top = 18
      Width = 15
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight, akBottom]
      Caption = '     '
      ExplicitLeft = 401
    end
    object ProgressBar: TProgressBar
      Left = 12
      Top = 37
      Width = 381
      Height = 20
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
    end
    object btnCancel: TButton
      Left = 432
      Top = 37
      Width = 59
      Height = 20
      Anchors = [akTop, akRight]
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = btnCancelClick
    end
  end
  object memo: TRichEdit
    AlignWithMargins = True
    Left = 3
    Top = 77
    Width = 406
    Height = 129
    Align = alClient
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 1
    Zoom = 100
  end
  object chkShowFullLog: TCheckBox
    AlignWithMargins = True
    Left = 3
    Top = 212
    Width = 406
    Height = 17
    Align = alBottom
    Caption = 'Show Full Log'
    TabOrder = 2
    OnClick = chkShowFullLogClick
  end
end
