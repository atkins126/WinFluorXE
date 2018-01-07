object ViewPlotFrm: TViewPlotFrm
  Tag = 50
  Left = 641
  Top = 362
  Caption = 'Time Course Plots (File)'
  ClientHeight = 453
  ClientWidth = 598
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object scFLDisplay: TScopeDisplay
    Left = 128
    Top = 5
    Width = 273
    Height = 60
    OnMouseDown = scFLDisplayMouseDown
    OnCursorChange = scFLDisplayCursorChange
    CursorChangeInProgress = False
    NumChannels = 1
    NumPoints = 1
    MaxPoints = 1024
    XMin = 0
    XMax = 1023
    XOffset = 0
    CursorsEnabled = True
    TScale = 1.000000000000000000
    TUnits = 's'
    TCalBar = -1.000000000000000000
    ZoomDisableHorizontal = True
    ZoomDisableVertical = False
    DisableChannelVisibilityButton = False
    PrinterFontSize = 0
    PrinterPenWidth = 0
    PrinterLeftMargin = 0
    PrinterRightMargin = 0
    PrinterTopMargin = 0
    PrinterBottomMargin = 0
    PrinterDisableColor = False
    PrinterShowLabels = True
    PrinterShowZeroLevels = True
    MetafileWidth = 0
    MetafileHeight = 0
    StorageMode = False
    RecordNumber = -1
    DisplayGrid = True
    MaxADCValue = 2047
    MinADCValue = -2048
    NumBytesPerSample = 2
    FloatingPointSamples = False
    FixZeroLevels = False
    DisplaySelected = True
    FontSize = 8
  end
  object scRDisplay: TScopeDisplay
    Left = 128
    Top = 72
    Width = 265
    Height = 49
    OnMouseDown = scRDisplayMouseDown
    OnCursorChange = scRDisplayCursorChange
    CursorChangeInProgress = False
    NumChannels = 1
    NumPoints = 1
    MaxPoints = 1024
    XMin = 0
    XMax = 1023
    XOffset = 0
    CursorsEnabled = True
    TScale = 1.000000000000000000
    TUnits = 's'
    TCalBar = -1.000000000000000000
    ZoomDisableHorizontal = True
    ZoomDisableVertical = False
    DisableChannelVisibilityButton = False
    PrinterFontSize = 0
    PrinterPenWidth = 0
    PrinterLeftMargin = 0
    PrinterRightMargin = 0
    PrinterTopMargin = 0
    PrinterBottomMargin = 0
    PrinterDisableColor = False
    PrinterShowLabels = True
    PrinterShowZeroLevels = True
    MetafileWidth = 0
    MetafileHeight = 0
    StorageMode = False
    RecordNumber = -1
    DisplayGrid = True
    MaxADCValue = 32768
    MinADCValue = -32768
    NumBytesPerSample = 2
    FloatingPointSamples = False
    FixZeroLevels = False
    DisplaySelected = False
    FontSize = 8
  end
  object scADCDisplay: TScopeDisplay
    Left = 128
    Top = 124
    Width = 273
    Height = 73
    OnMouseDown = scADCDisplayMouseDown
    OnCursorChange = scADCDisplayCursorChange
    CursorChangeInProgress = False
    NumChannels = 1
    NumPoints = 1
    MaxPoints = 1024
    XMin = 0
    XMax = 1023
    XOffset = 0
    CursorsEnabled = True
    TScale = 1.000000000000000000
    TUnits = 's'
    TCalBar = -1.000000000000000000
    ZoomDisableHorizontal = True
    ZoomDisableVertical = False
    DisableChannelVisibilityButton = False
    PrinterFontSize = 0
    PrinterPenWidth = 0
    PrinterLeftMargin = 0
    PrinterRightMargin = 0
    PrinterTopMargin = 0
    PrinterBottomMargin = 0
    PrinterDisableColor = False
    PrinterShowLabels = True
    PrinterShowZeroLevels = True
    MetafileWidth = 0
    MetafileHeight = 0
    StorageMode = False
    RecordNumber = -1
    DisplayGrid = True
    MaxADCValue = 2047
    MinADCValue = -2048
    NumBytesPerSample = 2
    FloatingPointSamples = False
    FixZeroLevels = False
    DisplaySelected = True
    FontSize = 8
  end
  object ckFixZeroLevels: TCheckBox
    Left = 208
    Top = 222
    Width = 105
    Height = 17
    Caption = 'Fix Zero Levels'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = ckFixZeroLevelsClick
  end
  object TDisplayPanel: TPanel
    Left = 320
    Top = 226
    Width = 209
    Height = 23
    BevelOuter = bvNone
    TabOrder = 1
    object edTDisplay: TValidatedEdit
      Left = 124
      Top = 1
      Width = 65
      Height = 20
      OnKeyPress = edTDisplayKeyPress
      AutoSize = False
      Text = ' 0.01667 min'
      Value = 1.000198006629944000
      Scale = 0.016666699200868610
      Units = 'min'
      NumberFormat = '%.6g'
      LoLimit = 1.000000000000000000
      HiLimit = 20000.000000000000000000
    end
    object rbTDisplayUnitMins: TRadioButton
      Left = 50
      Top = 1
      Width = 49
      Height = 17
      Caption = 'Mins'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = rbTDisplayUnitsSecsClick
    end
    object rbTDisplayUnitsSecs: TRadioButton
      Left = 1
      Top = 1
      Width = 49
      Height = 17
      Caption = 'Secs'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      TabStop = True
      OnClick = rbTDisplayUnitsSecsClick
    end
    object bTDisplayDouble: TButton
      Left = 190
      Top = 2
      Width = 16
      Height = 18
      Caption = '4'
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Webdings'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = bTDisplayDoubleClick
    end
    object bTDisplayHalf: TButton
      Left = 107
      Top = 2
      Width = 16
      Height = 18
      Caption = '3'
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Webdings'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = bTDisplayHalfClick
    end
  end
  object sbDisplay: TScrollBar
    Left = 128
    Top = 200
    Width = 321
    Height = 17
    PageSize = 0
    TabOrder = 2
    OnChange = sbDisplayChange
  end
  object FluorGrp: TGroupBox
    Left = 8
    Top = 0
    Width = 113
    Height = 97
    Caption = ' Display '
    TabOrder = 3
    object Label1: TLabel
      Left = 16
      Top = 40
      Width = 18
      Height = 14
      Caption = 'ROI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 22
      Top = 66
      Width = 11
      Height = 22
      Alignment = taRightJustify
      Caption = '-'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cbROI: TComboBox
      Left = 40
      Top = 40
      Width = 65
      Height = 21
      TabOrder = 0
      Text = 'cbROI'
      OnChange = cbROIChange
    end
    object cbSubROI: TComboBox
      Left = 40
      Top = 66
      Width = 65
      Height = 21
      TabOrder = 1
      Text = 'cbROI'
      OnChange = cbSubROIChange
    end
    object ckDisplayFluorescence: TCheckBox
      Left = 8
      Top = 16
      Width = 97
      Height = 20
      Caption = 'Fluorescence '
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 2
      WordWrap = True
      OnClick = ckDisplayFluorescenceClick
    end
  end
  object RatioGrp: TGroupBox
    Left = 8
    Top = 96
    Width = 113
    Height = 153
    TabOrder = 4
    object Label3: TLabel
      Left = 21
      Top = 86
      Width = 42
      Height = 28
      Alignment = taRightJustify
      Caption = 'Display Max'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Shape1: TShape
      Left = 22
      Top = 52
      Width = 81
      Height = 2
    end
    object Label5: TLabel
      Left = 8
      Top = 114
      Width = 57
      Height = 28
      Alignment = taRightJustify
      Caption = 'Excl. Threshold'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object ckDisplayR: TCheckBox
      Left = 8
      Top = 8
      Width = 89
      Height = 20
      Caption = 'Ratio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      WordWrap = True
      OnClick = ckDisplayRClick
    end
    object cbDenominator: TComboBox
      Left = 20
      Top = 58
      Width = 85
      Height = 21
      TabOrder = 1
      Text = 'cbROI'
      OnChange = cbDenominatorChange
    end
    object cbNumerator: TComboBox
      Left = 20
      Top = 28
      Width = 85
      Height = 21
      TabOrder = 2
      Text = 'cbROI'
      OnChange = cbNumeratorChange
    end
    object edRDisplayMax: TValidatedEdit
      Left = 70
      Top = 86
      Width = 35
      Height = 21
      OnKeyPress = edRDisplayMaxKeyPress
      Text = ' 10 '
      Value = 10.000000000000000000
      Scale = 1.000000000000000000
      NumberFormat = '%.4g'
      LoLimit = 0.001000000047497451
      HiLimit = 1.000000015047466E30
    end
    object edRatioExclusionThreshold: TValidatedEdit
      Left = 72
      Top = 114
      Width = 33
      Height = 21
      Hint = 'Constant F0 value'
      OnKeyPress = edRatioExclusionThresholdKeyPress
      AutoSize = False
      Text = ' 1 '
      Value = 1.000000000000000000
      Scale = 1.000000000000000000
      NumberFormat = '%.0f'
      LoLimit = 1.000000000000000000
      HiLimit = 1.000000015047466E30
    end
  end
  object ADCGrp: TGroupBox
    Left = 8
    Top = 248
    Width = 113
    Height = 41
    TabOrder = 5
    object ckDisplayADC: TCheckBox
      Left = 8
      Top = 12
      Width = 100
      Height = 20
      Caption = 'A/D Channels'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 0
      WordWrap = True
      OnClick = ckDisplayADCClick
    end
  end
  object Timer: TTimer
    Interval = 55
    OnTimer = TimerTimer
    Left = 136
    Top = 232
  end
end
