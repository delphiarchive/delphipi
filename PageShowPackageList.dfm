inherited ShowPackageListPage: TShowPackageListPage
  Caption = 'ShowPackageListPage'
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object fPackageTree: TVirtualStringTree
    Left = 8
    Top = 8
    Width = 484
    Height = 234
    Anchors = [akLeft, akTop, akRight, akBottom]
    Header.AutoSizeIndex = 0
    Header.Font.Charset = DEFAULT_CHARSET
    Header.Font.Color = clWindowText
    Header.Font.Height = -11
    Header.Font.Name = 'Tahoma'
    Header.Font.Style = []
    Header.Options = [hoColumnResize, hoDrag, hoVisible, hoAutoSpring]
    HintMode = hmHint
    Images = ImageList
    ParentShowHint = False
    PopupMenu = SelectPopupMenu
    ShowHint = True
    TabOrder = 0
    TreeOptions.MiscOptions = [toAcceptOLEDrop, toCheckSupport, toFullRepaintOnResize, toInitOnSave, toToggleOnDblClick, toWheelPanning]
    TreeOptions.SelectionOptions = [toDisableDrawSelection, toFullRowSelect]
    TreeOptions.StringOptions = [toSaveCaptions]
    OnChecked = packageTreeChecked
    OnGetText = packageTreeGetText
    OnGetImageIndex = packageTreeGetImageIndex
    OnGetHint = packageTreeGetHint
    OnGetNodeDataSize = packageTreeGetNodeDataSize
    Columns = <
      item
        Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coVisible, coAutoSpring, coSmartResize, coAllowFocus]
        Position = 0
        Width = 220
        WideText = 'Package'
      end
      item
        Position = 1
        Width = 220
        WideText = 'Description'
      end
      item
        Position = 2
        Width = 70
        WideText = 'Type'
      end>
  end
  object SelectPopupMenu: TPopupMenu
    Left = 292
    Top = 5
    object miSelectAll: TMenuItem
      Caption = 'Select All'
      OnClick = miSelectAllClick
    end
    object miUnselectAll: TMenuItem
      Caption = 'Unselect All'
      OnClick = miUnselectAllClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object miSelectMatching: TMenuItem
      Caption = 'Select Matching...'
      OnClick = miSelectMatchingClick
    end
    object miUnselectMatching: TMenuItem
      Caption = 'Unselect Matching...'
      OnClick = miUnselectMatchingClick
    end
  end
  object ImageList: TImageList
    Left = 326
    Top = 4
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF00FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002687C50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002C8EC8008FCDEB006FB7E200408EC800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002D87
      D8002D88D8002D88D8002D88D8002D88D8002D88D8002D88D8002D88D8002D88
      D8002D87D8002D88D80000000000000000000000000000000000000000000000
      00003295CB0082C4E500CCF4FF00C4EFFF008BD2F1008ACEF0005FA4D7002586
      C400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000338ED900DCF0FA00A7DD
      F4009EDBF40096DAF3008ED8F30086D7F3007FD4F20079D3F20072D2F1006CD0
      F10069CFF100C2EAF800338ED900000000000000000000000000399DCE007DC0
      E000C7EEFC00CCF2FF00A8E8FF0094E0FE0041BAE70045B1E4008ACAEF0082C1
      EB005397D0002384C30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003594DA00EFFAFE00A1E9
      F90091E5F80081E1F70072DEF60063DAF50054D7F40047D3F30039D0F2002ECD
      F10026CBF000CAF2FB003594DA00000000000000000077BDDC00BFE5F600DBF6
      FF00C1EEFF00A5E5FF009FE3FF0094E1FE0046C1EA003AB5E60037AAE20056AF
      E50087C6ED0074B3E4004A90CA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000369ADA00F2FAFD00B3ED
      FA00A4E9F90095E6F80085E2F70076DEF60065DBF50057D7F40049D4F3003BD1
      F20030CEF100CCF2FB003598DA000000000042A8D300E7FBFE00DDF6FF00C1EF
      FF00B7EBFF00ABE8FF00A4E4FF0096E1FE0048C6EB0040BDE9003DB4E60038A9
      E200329FDE006BB6E60083C4EE002485C4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000036A1DA00F6FCFE00C8F2
      FC00B9EFFB00ACECFA009CE8F9008BE3F7007CE0F6006CDCF6005DD9F5004FD6
      F40044D3F300D0F3FC00359FDA000000000044AAD400E2F6FC00D4F3FF00C9F0
      FF00BEEDFF00B3EAFF00ADE7FF007CD9FE0048C7EF0043C4EA0043BEE8003FB5
      E6003AABE30040A7E10083C5EC002687C5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000037A6DA00FEFFFF00F8FD
      FF00F6FDFF00F5FCFF00F3FCFE00D8F6FC0094E6F80085E3F70076DFF60068DB
      F5005CD8F400D7F4FC0035A4DA000000000047ADD500E2F6FC00D7F4FF00CEF2
      FF00C8EFFF00BAEBFF0092DBFB0056C1F10048C2F9003BBDF00047C5EC0045BD
      E90042B5E60047B1E60088CAEE00288AC6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000035ABDA00E8F6FB0094D4
      EF0088CEEE0073C1E900C9E9F600F2FCFE00F3FCFE00F2FCFE00F0FCFE00EFFB
      FE00EEFBFE00FEFFFF0036ABDA000000000049B0D600E2F6FD00DAF4FF00D5F3
      FF00BDEBFF0089D5F70069C9F5004CB4E9008DDAFB008CDCFF0048C4F90038B6
      EC0048BFE8004FBBE8008CD0F0002B8DC7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000036AADA00F1FAFD0094DE
      F50093DCF40081D5F2006ACAED006CCBEA0085D3EF0080D2EF007AD0EF0076CF
      EE0072CFEE00E9F7FB0034AEDA00000000004BB2D700E2F8FD00D4F3FF00B0E4
      FA0086CFF1007FD0F50078D0F5004CB1E400B0E4FA00B6E9FF009BE1FF0078D6
      FE0040BDF5003DB5E90090D5F1002D8FC8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000035AFDA00F7FCFE008EE4
      F80091DEF5009FE0F500ACE1F600EFFBFE00F4FDFE00F3FCFE00F1FCFE00EFFB
      FE00EEFBFE00FAFDFF0036AFDA00000000004DB4D800E1F8FE00CDEBF90092D2
      ED0084CCEB006FBFE50056B1DB003B94C800CEECFA00D9F5FF00B9EAFF0095DF
      FE0077D5FF00A5E4FF0084DCFB002F92C9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000036B3DA00FDFEFE00FEFF
      FF00FEFEFF00FDFEFF00FEFFFF00EAF7FB006BC7E4006BC7E3006BC7E3006BC7
      E30079CDE60074CAE5000000000000000000000000004DB5D900A5D9ED00D2EB
      F500BEDEED0095C9DE0089C3DB0070B8D60069B9DD0090D7F5007FCFF5009DDB
      F800AAE3FA0084CAEC0051A6D500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000034B4D9005EC2E10060C3
      E20060C3E20060C3E2005FC3E2003CB6DB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007EC6
      E000D1EEF700F6FFFF00F0FEFF00CBEDFB0050ADDA008BD7F700AAE1F90095D6
      F20062B2DB00399DCE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004CB4D80092CFE500E6F8FC00E3F6FE00AFDDF200B2E4F70072C0E1003FA4
      D100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004BB2D7009CD5EA0088CCE70045ACD500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFF7F00000000FFFFFC3F00000000
      E003F00F000000008001C0030000000080018001000000008001000000000000
      8001000000000000800100000000000080010000000000008001000000000000
      8001000000000000800380010000000080FFE00300000000FFFFF00F00000000
      FFFFFC3F00000000FFFFFFFF00000000}
  end
end
