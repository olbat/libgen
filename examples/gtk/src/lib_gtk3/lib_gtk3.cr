@[Link(ldflags: "`command -v pkg-config > /dev/null && pkg-config --libs gtk+-3.0 2> /dev/null|| printf %s '-lgtk-3 -lgdk-3 -lpangocairo-1.0 -lpango-1.0 -latk-1.0 -lcairo-gobject -lcairo -lgdk_pixbuf-2.0 -lgio-2.0 -lgobject-2.0 -lglib-2.0'`")]
lib LibGTK3
  alias GAsyncReadyCallback = (GObject*, GAsyncResult, Gpointer -> Void)
  alias GCallback = (-> Void)
  alias GClosureNotify = (Gpointer, GClosure* -> Void)
  alias GDestroyNotify = (Gpointer -> Void)
  alias GQuark = Guint32
  alias GScannerMsgFunc = (GScanner*, Gchar*, Gboolean -> Void)
  alias GType = Gsize
  alias Gboolean = Gint
  alias Gchar = LibC::Char
  alias GdkRectangle = CairoRectangleIntT
  alias Gdouble = LibC::Double
  alias Gfloat = LibC::Float
  alias Gint = LibC::Int
  alias Gint16 = LibC::Short
  alias Gint64 = LibC::Long
  alias Gint8 = LibC::Char
  alias Glong = LibC::Long
  alias Gpointer = Void*
  alias Gshort = LibC::Short
  alias Gsize = LibC::ULong
  alias Gssize = LibC::Long
  alias GtkAccelGroupFindFunc = (GtkAccelKey*, GClosure*, Gpointer -> Gboolean)
  alias GtkAccelMapForeach = (Gpointer, Gchar*, Guint, GdkModifierType, Gboolean -> Void)
  alias GtkAllocation = GdkRectangle
  alias GtkAssistantPageFunc = (Gint, Gpointer -> Gint)
  alias GtkBuilderConnectFunc = (GtkBuilder*, GObject*, Gchar*, Gchar*, GObject*, GConnectFlags, Gpointer -> Void)
  alias GtkCalendarDetailFunc = (GtkCalendar*, Guint, Guint, Guint, Gpointer -> Gchar*)
  alias GtkCallback = (GtkWidget*, Gpointer -> Void)
  alias GtkCellAllocCallback = (GtkCellRenderer*, GdkRectangle*, GdkRectangle*, Gpointer -> Gboolean)
  alias GtkCellCallback = (GtkCellRenderer*, Gpointer -> Gboolean)
  alias GtkCellLayoutDataFunc = (GtkCellLayout, GtkCellRenderer*, GtkTreeModel, GtkTreeIter*, Gpointer -> Void)
  alias GtkClipboardClearFunc = (GtkClipboard, Gpointer -> Void)
  alias GtkClipboardGetFunc = (GtkClipboard, GtkSelectionData, Guint, Gpointer -> Void)
  alias GtkClipboardImageReceivedFunc = (GtkClipboard, GdkPixbuf, Gpointer -> Void)
  alias GtkClipboardReceivedFunc = (GtkClipboard, GtkSelectionData, Gpointer -> Void)
  alias GtkClipboardRichTextReceivedFunc = (GtkClipboard, GdkAtom, Guint8*, Gsize, Gpointer -> Void)
  alias GtkClipboardTargetsReceivedFunc = (GtkClipboard, GdkAtom*, Gint, Gpointer -> Void)
  alias GtkClipboardTextReceivedFunc = (GtkClipboard, Gchar*, Gpointer -> Void)
  alias GtkClipboardUriReceivedFunc = (GtkClipboard, Gchar**, Gpointer -> Void)
  alias GtkColorSelectionChangePaletteWithScreenFunc = (GdkScreen, GdkColor*, Gint -> Void)
  alias GtkEntryCompletionMatchFunc = (GtkEntryCompletion*, Gchar*, GtkTreeIter*, Gpointer -> Gboolean)
  alias GtkFileFilterFunc = (GtkFileFilterInfo*, Gpointer -> Gboolean)
  alias GtkFlowBoxCreateWidgetFunc = (Gpointer, Gpointer -> GtkWidget*)
  alias GtkFlowBoxFilterFunc = (GtkFlowBoxChild*, Gpointer -> Gboolean)
  alias GtkFlowBoxForeachFunc = (GtkFlowBox*, GtkFlowBoxChild*, Gpointer -> Void)
  alias GtkFlowBoxSortFunc = (GtkFlowBoxChild*, GtkFlowBoxChild*, Gpointer -> Gint)
  alias GtkFontFilterFunc = (PangoFontFamily, PangoFontFace, Gpointer -> Gboolean)
  alias GtkIconViewForeachFunc = (GtkIconView*, GtkTreePath, Gpointer -> Void)
  alias GtkKeySnoopFunc = (GtkWidget*, GdkEventKey*, Gpointer -> Gint)
  alias GtkListBoxCreateWidgetFunc = (Gpointer, Gpointer -> GtkWidget*)
  alias GtkListBoxFilterFunc = (GtkListBoxRow*, Gpointer -> Gboolean)
  alias GtkListBoxForeachFunc = (GtkListBox*, GtkListBoxRow*, Gpointer -> Void)
  alias GtkListBoxSortFunc = (GtkListBoxRow*, GtkListBoxRow*, Gpointer -> Gint)
  alias GtkListBoxUpdateHeaderFunc = (GtkListBoxRow*, GtkListBoxRow*, Gpointer -> Void)
  alias GtkMenuDetachFunc = (GtkWidget*, GtkMenu* -> Void)
  alias GtkMenuPositionFunc = (GtkMenu*, Gint*, Gint*, Gboolean*, Gpointer -> Void)
  alias GtkPageSetupDoneFunc = (GtkPageSetup, Gpointer -> Void)
  alias GtkPrintSettingsFunc = (Gchar*, Gchar*, Gpointer -> Void)
  alias GtkRcPropertyParser = (GParamSpec*, GString*, GValue* -> Gboolean)
  alias GtkRecentFilterFunc = (GtkRecentFilterInfo*, Gpointer -> Gboolean)
  alias GtkRecentSortFunc = (GtkRecentInfo, GtkRecentInfo, Gpointer -> Gint)
  alias GtkStylePropertyParser = (Gchar*, GValue*, GError** -> Gboolean)
  alias GtkTextBufferDeserializeFunc = (GtkTextBuffer*, GtkTextBuffer*, GtkTextIter*, Guint8*, Gsize, Gboolean, Gpointer, GError** -> Gboolean)
  alias GtkTextBufferSerializeFunc = (GtkTextBuffer*, GtkTextBuffer*, GtkTextIter*, GtkTextIter*, Gsize*, Gpointer -> Guint8*)
  alias GtkTextCharPredicate = (Gunichar, Gpointer -> Gboolean)
  alias GtkTextTagTableForeach = (GtkTextTag*, Gpointer -> Void)
  alias GtkTickCallback = (GtkWidget*, GdkFrameClock, Gpointer -> Gboolean)
  alias GtkTranslateFunc = (Gchar*, Gpointer -> Gchar*)
  alias GtkTreeCellDataFunc = (GtkTreeViewColumn*, GtkCellRenderer*, GtkTreeModel, GtkTreeIter*, Gpointer -> Void)
  alias GtkTreeDestroyCountFunc = (GtkTreeView*, GtkTreePath, Gint, Gpointer -> Void)
  alias GtkTreeIterCompareFunc = (GtkTreeModel, GtkTreeIter*, GtkTreeIter*, Gpointer -> Gint)
  alias GtkTreeModelFilterModifyFunc = (GtkTreeModel, GtkTreeIter*, GValue*, Gint, Gpointer -> Void)
  alias GtkTreeModelFilterVisibleFunc = (GtkTreeModel, GtkTreeIter*, Gpointer -> Gboolean)
  alias GtkTreeModelForeachFunc = (GtkTreeModel, GtkTreePath, GtkTreeIter*, Gpointer -> Gboolean)
  alias GtkTreeSelectionForeachFunc = (GtkTreeModel, GtkTreePath, GtkTreeIter*, Gpointer -> Void)
  alias GtkTreeSelectionFunc = (GtkTreeSelection*, GtkTreeModel, GtkTreePath, Gboolean, Gpointer -> Gboolean)
  alias GtkTreeViewColumnDropFunc = (GtkTreeView*, GtkTreeViewColumn*, GtkTreeViewColumn*, GtkTreeViewColumn*, Gpointer -> Gboolean)
  alias GtkTreeViewMappingFunc = (GtkTreeView*, GtkTreePath, Gpointer -> Void)
  alias GtkTreeViewRowSeparatorFunc = (GtkTreeModel, GtkTreeIter*, Gpointer -> Gboolean)
  alias GtkTreeViewSearchEqualFunc = (GtkTreeModel, Gint, Gchar*, GtkTreeIter*, Gpointer -> Gboolean)
  alias GtkTreeViewSearchPositionFunc = (GtkTreeView*, GtkWidget*, Gpointer -> Void)
  alias Guchar = UInt8
  alias Guint = LibC::UInt
  alias Guint16 = LibC::UShort
  alias Guint32 = LibC::UInt
  alias Guint64 = LibC::ULong
  alias Guint8 = UInt8
  alias Gulong = LibC::ULong
  alias Gunichar = Guint32
  alias TimeT = X__TimeT
  alias VaList = X__GnucVaList
  alias X__GnucVaList = LibC::VaList
  alias X__TimeT = LibC::Long
  enum AtkLayer
    AtkLayerInvalid    = 0
    AtkLayerBackground = 1
    AtkLayerCanvas     = 2
    AtkLayerWidget     = 3
    AtkLayerMdi        = 4
    AtkLayerPopup      = 5
    AtkLayerOverlay    = 6
    AtkLayerWindow     = 7
  end
  enum AtkRole
    AtkRoleInvalid              =   0
    AtkRoleAccelLabel           =   1
    AtkRoleAlert                =   2
    AtkRoleAnimation            =   3
    AtkRoleArrow                =   4
    AtkRoleCalendar             =   5
    AtkRoleCanvas               =   6
    AtkRoleCheckBox             =   7
    AtkRoleCheckMenuItem        =   8
    AtkRoleColorChooser         =   9
    AtkRoleColumnHeader         =  10
    AtkRoleComboBox             =  11
    AtkRoleDateEditor           =  12
    AtkRoleDesktopIcon          =  13
    AtkRoleDesktopFrame         =  14
    AtkRoleDial                 =  15
    AtkRoleDialog               =  16
    AtkRoleDirectoryPane        =  17
    AtkRoleDrawingArea          =  18
    AtkRoleFileChooser          =  19
    AtkRoleFiller               =  20
    AtkRoleFontChooser          =  21
    AtkRoleFrame                =  22
    AtkRoleGlassPane            =  23
    AtkRoleHtmlContainer        =  24
    AtkRoleIcon                 =  25
    AtkRoleImage                =  26
    AtkRoleInternalFrame        =  27
    AtkRoleLabel                =  28
    AtkRoleLayeredPane          =  29
    AtkRoleList                 =  30
    AtkRoleListItem             =  31
    AtkRoleMenu                 =  32
    AtkRoleMenuBar              =  33
    AtkRoleMenuItem             =  34
    AtkRoleOptionPane           =  35
    AtkRolePageTab              =  36
    AtkRolePageTabList          =  37
    AtkRolePanel                =  38
    AtkRolePasswordText         =  39
    AtkRolePopupMenu            =  40
    AtkRoleProgressBar          =  41
    AtkRolePushButton           =  42
    AtkRoleRadioButton          =  43
    AtkRoleRadioMenuItem        =  44
    AtkRoleRootPane             =  45
    AtkRoleRowHeader            =  46
    AtkRoleScrollBar            =  47
    AtkRoleScrollPane           =  48
    AtkRoleSeparator            =  49
    AtkRoleSlider               =  50
    AtkRoleSplitPane            =  51
    AtkRoleSpinButton           =  52
    AtkRoleStatusbar            =  53
    AtkRoleTable                =  54
    AtkRoleTableCell            =  55
    AtkRoleTableColumnHeader    =  56
    AtkRoleTableRowHeader       =  57
    AtkRoleTearOffMenuItem      =  58
    AtkRoleTerminal             =  59
    AtkRoleText                 =  60
    AtkRoleToggleButton         =  61
    AtkRoleToolBar              =  62
    AtkRoleToolTip              =  63
    AtkRoleTree                 =  64
    AtkRoleTreeTable            =  65
    AtkRoleUnknown              =  66
    AtkRoleViewport             =  67
    AtkRoleWindow               =  68
    AtkRoleHeader               =  69
    AtkRoleFooter               =  70
    AtkRoleParagraph            =  71
    AtkRoleRuler                =  72
    AtkRoleApplication          =  73
    AtkRoleAutocomplete         =  74
    AtkRoleEditbar              =  75
    AtkRoleEmbedded             =  76
    AtkRoleEntry                =  77
    AtkRoleChart                =  78
    AtkRoleCaption              =  79
    AtkRoleDocumentFrame        =  80
    AtkRoleHeading              =  81
    AtkRolePage                 =  82
    AtkRoleSection              =  83
    AtkRoleRedundantObject      =  84
    AtkRoleForm                 =  85
    AtkRoleLink                 =  86
    AtkRoleInputMethodWindow    =  87
    AtkRoleTableRow             =  88
    AtkRoleTreeItem             =  89
    AtkRoleDocumentSpreadsheet  =  90
    AtkRoleDocumentPresentation =  91
    AtkRoleDocumentText         =  92
    AtkRoleDocumentWeb          =  93
    AtkRoleDocumentEmail        =  94
    AtkRoleComment              =  95
    AtkRoleListBox              =  96
    AtkRoleGrouping             =  97
    AtkRoleImageMap             =  98
    AtkRoleNotification         =  99
    AtkRoleInfoBar              = 100
    AtkRoleLevelBar             = 101
    AtkRoleTitleBar             = 102
    AtkRoleBlockQuote           = 103
    AtkRoleAudio                = 104
    AtkRoleVideo                = 105
    AtkRoleDefinition           = 106
    AtkRoleArticle              = 107
    AtkRoleLandmark             = 108
    AtkRoleLog                  = 109
    AtkRoleMarquee              = 110
    AtkRoleMath                 = 111
    AtkRoleRating               = 112
    AtkRoleTimer                = 113
    AtkRoleDescriptionList      = 114
    AtkRoleDescriptionTerm      = 115
    AtkRoleDescriptionValue     = 116
    AtkRoleStatic               = 117
    AtkRoleMathFraction         = 118
    AtkRoleMathRoot             = 119
    AtkRoleSubscript            = 120
    AtkRoleSuperscript          = 121
    AtkRoleLastDefined          = 122
  end
  enum GApplicationFlags
    GApplicationFlagsNone          =  0
    GApplicationIsService          =  1
    GApplicationIsLauncher         =  2
    GApplicationHandlesOpen        =  4
    GApplicationHandlesCommandLine =  8
    GApplicationSendEnvironment    = 16
    GApplicationNonUnique          = 32
    GApplicationCanOverrideAppId   = 64
  end
  enum GConnectFlags
    GConnectAfter   = 1
    GConnectSwapped = 2
  end
  enum GOptionArg
    GOptionArgNone          = 0
    GOptionArgString        = 1
    GOptionArgInt           = 2
    GOptionArgCallback      = 3
    GOptionArgFilename      = 4
    GOptionArgStringArray   = 5
    GOptionArgFilenameArray = 6
    GOptionArgDouble        = 7
    GOptionArgInt64         = 8
  end
  enum GParamFlags
    GParamReadable       =           1
    GParamWritable       =           2
    GParamReadwrite      =           3
    GParamConstruct      =           4
    GParamConstructOnly  =           8
    GParamLaxValidation  =          16
    GParamStaticName     =          32
    GParamPrivate        =          32
    GParamStaticNick     =          64
    GParamStaticBlurb    =         128
    GParamExplicitNotify =  1073741824
    GParamDeprecated     = -2147483648
  end
  enum GTokenType
    GTokenEof            =   0
    GTokenLeftParen      =  40
    GTokenRightParen     =  41
    GTokenLeftCurly      = 123
    GTokenRightCurly     = 125
    GTokenLeftBrace      =  91
    GTokenRightBrace     =  93
    GTokenEqualSign      =  61
    GTokenComma          =  44
    GTokenNone           = 256
    GTokenError          = 257
    GTokenChar           = 258
    GTokenBinary         = 259
    GTokenOctal          = 260
    GTokenInt            = 261
    GTokenHex            = 262
    GTokenFloat          = 263
    GTokenString         = 264
    GTokenSymbol         = 265
    GTokenIdentifier     = 266
    GTokenIdentifierNull = 267
    GTokenCommentSingle  = 268
    GTokenCommentMulti   = 269
    GTokenLast           = 270
  end
  enum GdkCrossingMode
    GdkCrossingNormal       = 0
    GdkCrossingGrab         = 1
    GdkCrossingUngrab       = 2
    GdkCrossingGtkGrab      = 3
    GdkCrossingGtkUngrab    = 4
    GdkCrossingStateChanged = 5
    GdkCrossingTouchBegin   = 6
    GdkCrossingTouchEnd     = 7
    GdkCrossingDeviceSwitch = 8
  end
  enum GdkDragAction
    GdkActionDefault =  1
    GdkActionCopy    =  2
    GdkActionMove    =  4
    GdkActionLink    =  8
    GdkActionPrivate = 16
    GdkActionAsk     = 32
  end
  enum GdkDragProtocol
    GdkDragProtoNone           = 0
    GdkDragProtoMotif          = 1
    GdkDragProtoXdnd           = 2
    GdkDragProtoRootwin        = 3
    GdkDragProtoWin32Dropfiles = 4
    GdkDragProtoOle2           = 5
    GdkDragProtoLocal          = 6
    GdkDragProtoWayland        = 7
  end
  enum GdkEventMask
    GdkExposureMask          =        2
    GdkPointerMotionMask     =        4
    GdkPointerMotionHintMask =        8
    GdkButtonMotionMask      =       16
    GdkButton1MotionMask     =       32
    GdkButton2MotionMask     =       64
    GdkButton3MotionMask     =      128
    GdkButtonPressMask       =      256
    GdkButtonReleaseMask     =      512
    GdkKeyPressMask          =     1024
    GdkKeyReleaseMask        =     2048
    GdkEnterNotifyMask       =     4096
    GdkLeaveNotifyMask       =     8192
    GdkFocusChangeMask       =    16384
    GdkStructureMask         =    32768
    GdkPropertyChangeMask    =    65536
    GdkVisibilityNotifyMask  =   131072
    GdkProximityInMask       =   262144
    GdkProximityOutMask      =   524288
    GdkSubstructureMask      =  1048576
    GdkScrollMask            =  2097152
    GdkTouchMask             =  4194304
    GdkSmoothScrollMask      =  8388608
    GdkTouchpadGestureMask   = 16777216
    GdkAllEventsMask         = 16777214
  end
  enum GdkEventType
    GdkNothing           = -1
    GdkDelete            =  0
    GdkDestroy           =  1
    GdkExpose            =  2
    GdkMotionNotify      =  3
    GdkButtonPress       =  4
    Gdk2ButtonPress      =  5
    GdkDoubleButtonPress =  5
    Gdk3ButtonPress      =  6
    GdkTripleButtonPress =  6
    GdkButtonRelease     =  7
    GdkKeyPress          =  8
    GdkKeyRelease        =  9
    GdkEnterNotify       = 10
    GdkLeaveNotify       = 11
    GdkFocusChange       = 12
    GdkConfigure         = 13
    GdkMap               = 14
    GdkUnmap             = 15
    GdkPropertyNotify    = 16
    GdkSelectionClear    = 17
    GdkSelectionRequest  = 18
    GdkSelectionNotify   = 19
    GdkProximityIn       = 20
    GdkProximityOut      = 21
    GdkDragEnter         = 22
    GdkDragLeave         = 23
    GdkDragMotion        = 24
    GdkDragStatus        = 25
    GdkDropStart         = 26
    GdkDropFinished      = 27
    GdkClientEvent       = 28
    GdkVisibilityNotify  = 29
    GdkScroll            = 31
    GdkWindowState       = 32
    GdkSetting           = 33
    GdkOwnerChange       = 34
    GdkGrabBroken        = 35
    GdkDamage            = 36
    GdkTouchBegin        = 37
    GdkTouchUpdate       = 38
    GdkTouchEnd          = 39
    GdkTouchCancel       = 40
    GdkTouchpadSwipe     = 41
    GdkTouchpadPinch     = 42
    GdkEventLast         = 43
  end
  enum GdkGravity
    GdkGravityNorthWest =  1
    GdkGravityNorth     =  2
    GdkGravityNorthEast =  3
    GdkGravityWest      =  4
    GdkGravityCenter    =  5
    GdkGravityEast      =  6
    GdkGravitySouthWest =  7
    GdkGravitySouth     =  8
    GdkGravitySouthEast =  9
    GdkGravityStatic    = 10
  end
  enum GdkModifierIntent
    GdkModifierIntentPrimaryAccelerator = 0
    GdkModifierIntentContextMenu        = 1
    GdkModifierIntentExtendSelection    = 2
    GdkModifierIntentModifySelection    = 3
    GdkModifierIntentNoTextInput        = 4
    GdkModifierIntentShiftGroup         = 5
    GdkModifierIntentDefaultModMask     = 6
  end
  enum GdkModifierType
    GdkShiftMask              =          1
    GdkLockMask               =          2
    GdkControlMask            =          4
    GdkMod1Mask               =          8
    GdkMod2Mask               =         16
    GdkMod3Mask               =         32
    GdkMod4Mask               =         64
    GdkMod5Mask               =        128
    GdkButton1Mask            =        256
    GdkButton2Mask            =        512
    GdkButton3Mask            =       1024
    GdkButton4Mask            =       2048
    GdkButton5Mask            =       4096
    GdkModifierReserved13Mask =       8192
    GdkModifierReserved14Mask =      16384
    GdkModifierReserved15Mask =      32768
    GdkModifierReserved16Mask =      65536
    GdkModifierReserved17Mask =     131072
    GdkModifierReserved18Mask =     262144
    GdkModifierReserved19Mask =     524288
    GdkModifierReserved20Mask =    1048576
    GdkModifierReserved21Mask =    2097152
    GdkModifierReserved22Mask =    4194304
    GdkModifierReserved23Mask =    8388608
    GdkModifierReserved24Mask =   16777216
    GdkModifierReserved25Mask =   33554432
    GdkSuperMask              =   67108864
    GdkHyperMask              =  134217728
    GdkMetaMask               =  268435456
    GdkModifierReserved29Mask =  536870912
    GdkReleaseMask            = 1073741824
    GdkModifierMask           = 1543512063
  end
  enum GdkNotifyType
    GdkNotifyAncestor         = 0
    GdkNotifyVirtual          = 1
    GdkNotifyInferior         = 2
    GdkNotifyNonlinear        = 3
    GdkNotifyNonlinearVirtual = 4
    GdkNotifyUnknown          = 5
  end
  enum GdkOwnerChange
    GdkOwnerChangeNewOwner = 0
    GdkOwnerChangeDestroy  = 1
    GdkOwnerChangeClose    = 2
  end
  enum GdkScrollDirection
    GdkScrollUp     = 0
    GdkScrollDown   = 1
    GdkScrollLeft   = 2
    GdkScrollRight  = 3
    GdkScrollSmooth = 4
  end
  enum GdkSettingAction
    GdkSettingActionNew     = 0
    GdkSettingActionChanged = 1
    GdkSettingActionDeleted = 2
  end
  enum GdkVisibilityState
    GdkVisibilityUnobscured    = 0
    GdkVisibilityPartial       = 1
    GdkVisibilityFullyObscured = 2
  end
  enum GdkWindowEdge
    GdkWindowEdgeNorthWest = 0
    GdkWindowEdgeNorth     = 1
    GdkWindowEdgeNorthEast = 2
    GdkWindowEdgeWest      = 3
    GdkWindowEdgeEast      = 4
    GdkWindowEdgeSouthWest = 5
    GdkWindowEdgeSouth     = 6
    GdkWindowEdgeSouthEast = 7
  end
  enum GdkWindowHints
    GdkHintPos        =   1
    GdkHintMinSize    =   2
    GdkHintMaxSize    =   4
    GdkHintBaseSize   =   8
    GdkHintAspect     =  16
    GdkHintResizeInc  =  32
    GdkHintWinGravity =  64
    GdkHintUserPos    = 128
    GdkHintUserSize   = 256
  end
  enum GdkWindowState
    GdkWindowStateWithdrawn  =   1
    GdkWindowStateIconified  =   2
    GdkWindowStateMaximized  =   4
    GdkWindowStateSticky     =   8
    GdkWindowStateFullscreen =  16
    GdkWindowStateAbove      =  32
    GdkWindowStateBelow      =  64
    GdkWindowStateFocused    = 128
    GdkWindowStateTiled      = 256
  end
  enum GdkWindowTypeHint
    GdkWindowTypeHintNormal       =  0
    GdkWindowTypeHintDialog       =  1
    GdkWindowTypeHintMenu         =  2
    GdkWindowTypeHintToolbar      =  3
    GdkWindowTypeHintSplashscreen =  4
    GdkWindowTypeHintUtility      =  5
    GdkWindowTypeHintDock         =  6
    GdkWindowTypeHintDesktop      =  7
    GdkWindowTypeHintDropdownMenu =  8
    GdkWindowTypeHintPopupMenu    =  9
    GdkWindowTypeHintTooltip      = 10
    GdkWindowTypeHintNotification = 11
    GdkWindowTypeHintCombo        = 12
    GdkWindowTypeHintDnd          = 13
  end
  enum GtkAccelFlags
    GtkAccelVisible = 1
    GtkAccelLocked  = 2
    GtkAccelMask    = 7
  end
  enum GtkAlign
    GtkAlignFill     = 0
    GtkAlignStart    = 1
    GtkAlignEnd      = 2
    GtkAlignCenter   = 3
    GtkAlignBaseline = 4
  end
  enum GtkApplicationInhibitFlags
    GtkApplicationInhibitLogout  = 1
    GtkApplicationInhibitSwitch  = 2
    GtkApplicationInhibitSuspend = 4
    GtkApplicationInhibitIdle    = 8
  end
  enum GtkArrowType
    GtkArrowUp    = 0
    GtkArrowDown  = 1
    GtkArrowLeft  = 2
    GtkArrowRight = 3
    GtkArrowNone  = 4
  end
  enum GtkAssistantPageType
    GtkAssistantPageContent  = 0
    GtkAssistantPageIntro    = 1
    GtkAssistantPageConfirm  = 2
    GtkAssistantPageSummary  = 3
    GtkAssistantPageProgress = 4
    GtkAssistantPageCustom   = 5
  end
  enum GtkAttachOptions
    GtkExpand = 1
    GtkShrink = 2
    GtkFill   = 4
  end
  enum GtkBaselinePosition
    GtkBaselinePositionTop    = 0
    GtkBaselinePositionCenter = 1
    GtkBaselinePositionBottom = 2
  end
  enum GtkButtonBoxStyle
    GtkButtonboxSpread = 1
    GtkButtonboxEdge   = 2
    GtkButtonboxStart  = 3
    GtkButtonboxEnd    = 4
    GtkButtonboxCenter = 5
    GtkButtonboxExpand = 6
  end
  enum GtkButtonsType
    GtkButtonsNone     = 0
    GtkButtonsOk       = 1
    GtkButtonsClose    = 2
    GtkButtonsCancel   = 3
    GtkButtonsYesNo    = 4
    GtkButtonsOkCancel = 5
  end
  enum GtkCalendarDisplayOptions
    GtkCalendarShowHeading     =  1
    GtkCalendarShowDayNames    =  2
    GtkCalendarNoMonthChange   =  4
    GtkCalendarShowWeekNumbers =  8
    GtkCalendarShowDetails     = 32
  end
  enum GtkCellRendererState
    GtkCellRendererSelected    =  1
    GtkCellRendererPrelit      =  2
    GtkCellRendererInsensitive =  4
    GtkCellRendererSorted      =  8
    GtkCellRendererFocused     = 16
    GtkCellRendererExpandable  = 32
    GtkCellRendererExpanded    = 64
  end
  enum GtkCornerType
    GtkCornerTopLeft     = 0
    GtkCornerBottomLeft  = 1
    GtkCornerTopRight    = 2
    GtkCornerBottomRight = 3
  end
  enum GtkCssSectionType
    GtkCssSectionDocument        = 0
    GtkCssSectionImport          = 1
    GtkCssSectionColorDefinition = 2
    GtkCssSectionBindingSet      = 3
    GtkCssSectionRuleset         = 4
    GtkCssSectionSelector        = 5
    GtkCssSectionDeclaration     = 6
    GtkCssSectionValue           = 7
    GtkCssSectionKeyframes       = 8
  end
  enum GtkDestDefaults
    GtkDestDefaultMotion    = 1
    GtkDestDefaultHighlight = 2
    GtkDestDefaultDrop      = 4
    GtkDestDefaultAll       = 7
  end
  enum GtkDialogFlags
    GtkDialogModal             = 1
    GtkDialogDestroyWithParent = 2
    GtkDialogUseHeaderBar      = 4
  end
  enum GtkDirectionType
    GtkDirTabForward  = 0
    GtkDirTabBackward = 1
    GtkDirUp          = 2
    GtkDirDown        = 3
    GtkDirLeft        = 4
    GtkDirRight       = 5
  end
  enum GtkDragResult
    GtkDragResultSuccess        = 0
    GtkDragResultNoTarget       = 1
    GtkDragResultUserCancelled  = 2
    GtkDragResultTimeoutExpired = 3
    GtkDragResultGrabBroken     = 4
    GtkDragResultError          = 5
  end
  enum GtkEntryIconPosition
    GtkEntryIconPrimary   = 0
    GtkEntryIconSecondary = 1
  end
  enum GtkEventSequenceState
    GtkEventSequenceNone    = 0
    GtkEventSequenceClaimed = 1
    GtkEventSequenceDenied  = 2
  end
  enum GtkExpanderStyle
    GtkExpanderCollapsed     = 0
    GtkExpanderSemiCollapsed = 1
    GtkExpanderSemiExpanded  = 2
    GtkExpanderExpanded      = 3
  end
  enum GtkFileChooserAction
    GtkFileChooserActionOpen         = 0
    GtkFileChooserActionSave         = 1
    GtkFileChooserActionSelectFolder = 2
    GtkFileChooserActionCreateFolder = 3
  end
  enum GtkFileFilterFlags
    GtkFileFilterFilename    = 1
    GtkFileFilterUri         = 2
    GtkFileFilterDisplayName = 4
    GtkFileFilterMimeType    = 8
  end
  enum GtkIconLookupFlags
    GtkIconLookupNoSvg           =   1
    GtkIconLookupForceSvg        =   2
    GtkIconLookupUseBuiltin      =   4
    GtkIconLookupGenericFallback =   8
    GtkIconLookupForceSize       =  16
    GtkIconLookupForceRegular    =  32
    GtkIconLookupForceSymbolic   =  64
    GtkIconLookupDirLtr          = 128
    GtkIconLookupDirRtl          = 256
  end
  enum GtkIconSize
    GtkIconSizeInvalid      = 0
    GtkIconSizeMenu         = 1
    GtkIconSizeSmallToolbar = 2
    GtkIconSizeLargeToolbar = 3
    GtkIconSizeButton       = 4
    GtkIconSizeDnd          = 5
    GtkIconSizeDialog       = 6
  end
  enum GtkIconViewDropPosition
    GtkIconViewNoDrop    = 0
    GtkIconViewDropInto  = 1
    GtkIconViewDropLeft  = 2
    GtkIconViewDropRight = 3
    GtkIconViewDropAbove = 4
    GtkIconViewDropBelow = 5
  end
  enum GtkImageType
    GtkImageEmpty     = 0
    GtkImagePixbuf    = 1
    GtkImageStock     = 2
    GtkImageIconSet   = 3
    GtkImageAnimation = 4
    GtkImageIconName  = 5
    GtkImageGicon     = 6
    GtkImageSurface   = 7
  end
  enum GtkInputHints
    GtkInputHintNone               =   0
    GtkInputHintSpellcheck         =   1
    GtkInputHintNoSpellcheck       =   2
    GtkInputHintWordCompletion     =   4
    GtkInputHintLowercase          =   8
    GtkInputHintUppercaseChars     =  16
    GtkInputHintUppercaseWords     =  32
    GtkInputHintUppercaseSentences =  64
    GtkInputHintInhibitOsk         = 128
    GtkInputHintVerticalWriting    = 256
  end
  enum GtkInputPurpose
    GtkInputPurposeFreeForm = 0
    GtkInputPurposeAlpha    = 1
    GtkInputPurposeDigits   = 2
    GtkInputPurposeNumber   = 3
    GtkInputPurposePhone    = 4
    GtkInputPurposeUrl      = 5
    GtkInputPurposeEmail    = 6
    GtkInputPurposeName     = 7
    GtkInputPurposePassword = 8
    GtkInputPurposePin      = 9
  end
  enum GtkJunctionSides
    GtkJunctionNone              =  0
    GtkJunctionCornerTopleft     =  1
    GtkJunctionCornerTopright    =  2
    GtkJunctionCornerBottomleft  =  4
    GtkJunctionCornerBottomright =  8
    GtkJunctionTop               =  3
    GtkJunctionBottom            = 12
    GtkJunctionLeft              =  5
    GtkJunctionRight             = 10
  end
  enum GtkJustification
    GtkJustifyLeft   = 0
    GtkJustifyRight  = 1
    GtkJustifyCenter = 2
    GtkJustifyFill   = 3
  end
  enum GtkLevelBarMode
    GtkLevelBarModeContinuous = 0
    GtkLevelBarModeDiscrete   = 1
  end
  enum GtkLicense
    GtkLicenseUnknown    =  0
    GtkLicenseCustom     =  1
    GtkLicenseGpl20      =  2
    GtkLicenseGpl30      =  3
    GtkLicenseLgpl21     =  4
    GtkLicenseLgpl30     =  5
    GtkLicenseBsd        =  6
    GtkLicenseMitX11     =  7
    GtkLicenseArtistic   =  8
    GtkLicenseGpl20Only  =  9
    GtkLicenseGpl30Only  = 10
    GtkLicenseLgpl21Only = 11
    GtkLicenseLgpl30Only = 12
  end
  enum GtkMessageType
    GtkMessageInfo     = 0
    GtkMessageWarning  = 1
    GtkMessageQuestion = 2
    GtkMessageError    = 3
    GtkMessageOther    = 4
  end
  enum GtkNumberUpLayout
    GtkNumberUpLayoutLeftToRightTopToBottom = 0
    GtkNumberUpLayoutLeftToRightBottomToTop = 1
    GtkNumberUpLayoutRightToLeftTopToBottom = 2
    GtkNumberUpLayoutRightToLeftBottomToTop = 3
    GtkNumberUpLayoutTopToBottomLeftToRight = 4
    GtkNumberUpLayoutTopToBottomRightToLeft = 5
    GtkNumberUpLayoutBottomToTopLeftToRight = 6
    GtkNumberUpLayoutBottomToTopRightToLeft = 7
  end
  enum GtkOrientation
    GtkOrientationHorizontal = 0
    GtkOrientationVertical   = 1
  end
  enum GtkPackDirection
    GtkPackDirectionLtr = 0
    GtkPackDirectionRtl = 1
    GtkPackDirectionTtb = 2
    GtkPackDirectionBtt = 3
  end
  enum GtkPackType
    GtkPackStart = 0
    GtkPackEnd   = 1
  end
  enum GtkPageOrientation
    GtkPageOrientationPortrait         = 0
    GtkPageOrientationLandscape        = 1
    GtkPageOrientationReversePortrait  = 2
    GtkPageOrientationReverseLandscape = 3
  end
  enum GtkPageSet
    GtkPageSetAll  = 0
    GtkPageSetEven = 1
    GtkPageSetOdd  = 2
  end
  enum GtkPathPriorityType
    GtkPathPrioLowest      =  0
    GtkPathPrioGtk         =  4
    GtkPathPrioApplication =  8
    GtkPathPrioTheme       = 10
    GtkPathPrioRc          = 12
    GtkPathPrioHighest     = 15
  end
  enum GtkPathType
    GtkPathWidget      = 0
    GtkPathWidgetClass = 1
    GtkPathClass       = 2
  end
  enum GtkPlacesOpenFlags
    GtkPlacesOpenNormal    = 1
    GtkPlacesOpenNewTab    = 2
    GtkPlacesOpenNewWindow = 4
  end
  enum GtkPolicyType
    GtkPolicyAlways    = 0
    GtkPolicyAutomatic = 1
    GtkPolicyNever     = 2
    GtkPolicyExternal  = 3
  end
  enum GtkPositionType
    GtkPosLeft   = 0
    GtkPosRight  = 1
    GtkPosTop    = 2
    GtkPosBottom = 3
  end
  enum GtkPrintDuplex
    GtkPrintDuplexSimplex    = 0
    GtkPrintDuplexHorizontal = 1
    GtkPrintDuplexVertical   = 2
  end
  enum GtkPrintOperationAction
    GtkPrintOperationActionPrintDialog = 0
    GtkPrintOperationActionPrint       = 1
    GtkPrintOperationActionPreview     = 2
    GtkPrintOperationActionExport      = 3
  end
  enum GtkPrintOperationResult
    GtkPrintOperationResultError      = 0
    GtkPrintOperationResultApply      = 1
    GtkPrintOperationResultCancel     = 2
    GtkPrintOperationResultInProgress = 3
  end
  enum GtkPrintPages
    GtkPrintPagesAll       = 0
    GtkPrintPagesCurrent   = 1
    GtkPrintPagesRanges    = 2
    GtkPrintPagesSelection = 3
  end
  enum GtkPrintQuality
    GtkPrintQualityLow    = 0
    GtkPrintQualityNormal = 1
    GtkPrintQualityHigh   = 2
    GtkPrintQualityDraft  = 3
  end
  enum GtkPrintStatus
    GtkPrintStatusInitial         = 0
    GtkPrintStatusPreparing       = 1
    GtkPrintStatusGeneratingData  = 2
    GtkPrintStatusSendingData     = 3
    GtkPrintStatusPending         = 4
    GtkPrintStatusPendingIssue    = 5
    GtkPrintStatusPrinting        = 6
    GtkPrintStatusFinished        = 7
    GtkPrintStatusFinishedAborted = 8
  end
  enum GtkPropagationPhase
    GtkPhaseNone    = 0
    GtkPhaseCapture = 1
    GtkPhaseBubble  = 2
    GtkPhaseTarget  = 3
  end
  enum GtkRcFlags
    GtkRcFg   = 1
    GtkRcBg   = 2
    GtkRcText = 4
    GtkRcBase = 8
  end
  enum GtkRecentFilterFlags
    GtkRecentFilterUri         =  1
    GtkRecentFilterDisplayName =  2
    GtkRecentFilterMimeType    =  4
    GtkRecentFilterApplication =  8
    GtkRecentFilterGroup       = 16
    GtkRecentFilterAge         = 32
  end
  enum GtkRecentSortType
    GtkRecentSortNone   = 0
    GtkRecentSortMru    = 1
    GtkRecentSortLru    = 2
    GtkRecentSortCustom = 3
  end
  enum GtkRegionFlags
    GtkRegionEven   =  1
    GtkRegionOdd    =  2
    GtkRegionFirst  =  4
    GtkRegionLast   =  8
    GtkRegionOnly   = 16
    GtkRegionSorted = 32
  end
  enum GtkReliefStyle
    GtkReliefNormal = 0
    GtkReliefHalf   = 1
    GtkReliefNone   = 2
  end
  enum GtkResizeMode
    GtkResizeParent    = 0
    GtkResizeQueue     = 1
    GtkResizeImmediate = 2
  end
  enum GtkRevealerTransitionType
    GtkRevealerTransitionTypeNone       = 0
    GtkRevealerTransitionTypeCrossfade  = 1
    GtkRevealerTransitionTypeSlideRight = 2
    GtkRevealerTransitionTypeSlideLeft  = 3
    GtkRevealerTransitionTypeSlideUp    = 4
    GtkRevealerTransitionTypeSlideDown  = 5
  end
  enum GtkScrollablePolicy
    GtkScrollMinimum = 0
    GtkScrollNatural = 1
  end
  enum GtkSelectionMode
    GtkSelectionNone     = 0
    GtkSelectionSingle   = 1
    GtkSelectionBrowse   = 2
    GtkSelectionMultiple = 3
  end
  enum GtkSensitivityType
    GtkSensitivityAuto = 0
    GtkSensitivityOn   = 1
    GtkSensitivityOff  = 2
  end
  enum GtkShadowType
    GtkShadowNone      = 0
    GtkShadowIn        = 1
    GtkShadowOut       = 2
    GtkShadowEtchedIn  = 3
    GtkShadowEtchedOut = 4
  end
  enum GtkSizeGroupMode
    GtkSizeGroupNone       = 0
    GtkSizeGroupHorizontal = 1
    GtkSizeGroupVertical   = 2
    GtkSizeGroupBoth       = 3
  end
  enum GtkSizeRequestMode
    GtkSizeRequestHeightForWidth = 0
    GtkSizeRequestWidthForHeight = 1
    GtkSizeRequestConstantSize   = 2
  end
  enum GtkSortType
    GtkSortAscending  = 0
    GtkSortDescending = 1
  end
  enum GtkSpinButtonUpdatePolicy
    GtkUpdateAlways  = 0
    GtkUpdateIfValid = 1
  end
  enum GtkSpinType
    GtkSpinStepForward  = 0
    GtkSpinStepBackward = 1
    GtkSpinPageForward  = 2
    GtkSpinPageBackward = 3
    GtkSpinHome         = 4
    GtkSpinEnd          = 5
    GtkSpinUserDefined  = 6
  end
  enum GtkStackTransitionType
    GtkStackTransitionTypeNone           =  0
    GtkStackTransitionTypeCrossfade      =  1
    GtkStackTransitionTypeSlideRight     =  2
    GtkStackTransitionTypeSlideLeft      =  3
    GtkStackTransitionTypeSlideUp        =  4
    GtkStackTransitionTypeSlideDown      =  5
    GtkStackTransitionTypeSlideLeftRight =  6
    GtkStackTransitionTypeSlideUpDown    =  7
    GtkStackTransitionTypeOverUp         =  8
    GtkStackTransitionTypeOverDown       =  9
    GtkStackTransitionTypeOverLeft       = 10
    GtkStackTransitionTypeOverRight      = 11
    GtkStackTransitionTypeUnderUp        = 12
    GtkStackTransitionTypeUnderDown      = 13
    GtkStackTransitionTypeUnderLeft      = 14
    GtkStackTransitionTypeUnderRight     = 15
    GtkStackTransitionTypeOverUpDown     = 16
    GtkStackTransitionTypeOverDownUp     = 17
    GtkStackTransitionTypeOverLeftRight  = 18
    GtkStackTransitionTypeOverRightLeft  = 19
  end
  enum GtkStateFlags
    GtkStateFlagNormal       =    0
    GtkStateFlagActive       =    1
    GtkStateFlagPrelight     =    2
    GtkStateFlagSelected     =    4
    GtkStateFlagInsensitive  =    8
    GtkStateFlagInconsistent =   16
    GtkStateFlagFocused      =   32
    GtkStateFlagBackdrop     =   64
    GtkStateFlagDirLtr       =  128
    GtkStateFlagDirRtl       =  256
    GtkStateFlagLink         =  512
    GtkStateFlagVisited      = 1024
    GtkStateFlagChecked      = 2048
  end
  enum GtkStateType
    GtkStateNormal       = 0
    GtkStateActive       = 1
    GtkStatePrelight     = 2
    GtkStateSelected     = 3
    GtkStateInsensitive  = 4
    GtkStateInconsistent = 5
    GtkStateFocused      = 6
  end
  enum GtkTextDirection
    GtkTextDirNone = 0
    GtkTextDirLtr  = 1
    GtkTextDirRtl  = 2
  end
  enum GtkTextSearchFlags
    GtkTextSearchVisibleOnly     = 1
    GtkTextSearchTextOnly        = 2
    GtkTextSearchCaseInsensitive = 4
  end
  enum GtkTextWindowType
    GtkTextWindowPrivate = 0
    GtkTextWindowWidget  = 1
    GtkTextWindowText    = 2
    GtkTextWindowLeft    = 3
    GtkTextWindowRight   = 4
    GtkTextWindowTop     = 5
    GtkTextWindowBottom  = 6
  end
  enum GtkToolPaletteDragTargets
    GtkToolPaletteDragItems  = 1
    GtkToolPaletteDragGroups = 2
  end
  enum GtkToolbarStyle
    GtkToolbarIcons     = 0
    GtkToolbarText      = 1
    GtkToolbarBoth      = 2
    GtkToolbarBothHoriz = 3
  end
  enum GtkTreeModelFlags
    GtkTreeModelItersPersist = 1
    GtkTreeModelListOnly     = 2
  end
  enum GtkTreeViewColumnSizing
    GtkTreeViewColumnGrowOnly = 0
    GtkTreeViewColumnAutosize = 1
    GtkTreeViewColumnFixed    = 2
  end
  enum GtkTreeViewDropPosition
    GtkTreeViewDropBefore       = 0
    GtkTreeViewDropAfter        = 1
    GtkTreeViewDropIntoOrBefore = 2
    GtkTreeViewDropIntoOrAfter  = 3
  end
  enum GtkTreeViewGridLines
    GtkTreeViewGridLinesNone       = 0
    GtkTreeViewGridLinesHorizontal = 1
    GtkTreeViewGridLinesVertical   = 2
    GtkTreeViewGridLinesBoth       = 3
  end
  enum GtkUiManagerItemType
    GtkUiManagerAuto            =   0
    GtkUiManagerMenubar         =   1
    GtkUiManagerMenu            =   2
    GtkUiManagerToolbar         =   4
    GtkUiManagerPlaceholder     =   8
    GtkUiManagerPopup           =  16
    GtkUiManagerMenuitem        =  32
    GtkUiManagerToolitem        =  64
    GtkUiManagerSeparator       = 128
    GtkUiManagerAccelerator     = 256
    GtkUiManagerPopupWithAccels = 512
  end
  enum GtkUnit
    GtkUnitNone   = 0
    GtkUnitPoints = 1
    GtkUnitInch   = 2
    GtkUnitMm     = 3
  end
  enum GtkWidgetHelpType
    GtkWidgetHelpTooltip   = 0
    GtkWidgetHelpWhatsThis = 1
  end
  enum GtkWindowPosition
    GtkWinPosNone           = 0
    GtkWinPosCenter         = 1
    GtkWinPosMouse          = 2
    GtkWinPosCenterAlways   = 3
    GtkWinPosCenterOnParent = 4
  end
  enum GtkWindowType
    GtkWindowToplevel = 0
    GtkWindowPopup    = 1
  end
  enum GtkWrapMode
    GtkWrapNone     = 0
    GtkWrapChar     = 1
    GtkWrapWord     = 2
    GtkWrapWordChar = 3
  end
  enum PangoDirection
    PangoDirectionLtr     = 0
    PangoDirectionRtl     = 1
    PangoDirectionTtbLtr  = 2
    PangoDirectionTtbRtl  = 3
    PangoDirectionWeakLtr = 4
    PangoDirectionWeakRtl = 5
    PangoDirectionNeutral = 6
  end
  enum PangoEllipsizeMode
    PangoEllipsizeNone   = 0
    PangoEllipsizeStart  = 1
    PangoEllipsizeMiddle = 2
    PangoEllipsizeEnd    = 3
  end
  enum PangoWrapMode
    PangoWrapWord     = 0
    PangoWrapChar     = 1
    PangoWrapWordChar = 2
  end
  fun gtk_about_dialog_add_credit_section(about : GtkAboutDialog*, section_name : Gchar*, people : Gchar**)
  fun gtk_about_dialog_get_artists(about : GtkAboutDialog*) : Gchar**
  fun gtk_about_dialog_get_authors(about : GtkAboutDialog*) : Gchar**
  fun gtk_about_dialog_get_comments(about : GtkAboutDialog*) : Gchar*
  fun gtk_about_dialog_get_copyright(about : GtkAboutDialog*) : Gchar*
  fun gtk_about_dialog_get_documenters(about : GtkAboutDialog*) : Gchar**
  fun gtk_about_dialog_get_license(about : GtkAboutDialog*) : Gchar*
  fun gtk_about_dialog_get_license_type(about : GtkAboutDialog*) : GtkLicense
  fun gtk_about_dialog_get_logo(about : GtkAboutDialog*) : GdkPixbuf
  fun gtk_about_dialog_get_logo_icon_name(about : GtkAboutDialog*) : Gchar*
  fun gtk_about_dialog_get_program_name(about : GtkAboutDialog*) : Gchar*
  fun gtk_about_dialog_get_translator_credits(about : GtkAboutDialog*) : Gchar*
  fun gtk_about_dialog_get_type : GType
  fun gtk_about_dialog_get_version(about : GtkAboutDialog*) : Gchar*
  fun gtk_about_dialog_get_website(about : GtkAboutDialog*) : Gchar*
  fun gtk_about_dialog_get_website_label(about : GtkAboutDialog*) : Gchar*
  fun gtk_about_dialog_get_wrap_license(about : GtkAboutDialog*) : Gboolean
  fun gtk_about_dialog_new : GtkWidget*
  fun gtk_about_dialog_set_artists(about : GtkAboutDialog*, artists : Gchar**)
  fun gtk_about_dialog_set_authors(about : GtkAboutDialog*, authors : Gchar**)
  fun gtk_about_dialog_set_comments(about : GtkAboutDialog*, comments : Gchar*)
  fun gtk_about_dialog_set_copyright(about : GtkAboutDialog*, copyright : Gchar*)
  fun gtk_about_dialog_set_documenters(about : GtkAboutDialog*, documenters : Gchar**)
  fun gtk_about_dialog_set_license(about : GtkAboutDialog*, license : Gchar*)
  fun gtk_about_dialog_set_license_type(about : GtkAboutDialog*, license_type : GtkLicense)
  fun gtk_about_dialog_set_logo(about : GtkAboutDialog*, logo : GdkPixbuf)
  fun gtk_about_dialog_set_logo_icon_name(about : GtkAboutDialog*, icon_name : Gchar*)
  fun gtk_about_dialog_set_program_name(about : GtkAboutDialog*, name : Gchar*)
  fun gtk_about_dialog_set_translator_credits(about : GtkAboutDialog*, translator_credits : Gchar*)
  fun gtk_about_dialog_set_version(about : GtkAboutDialog*, version : Gchar*)
  fun gtk_about_dialog_set_website(about : GtkAboutDialog*, website : Gchar*)
  fun gtk_about_dialog_set_website_label(about : GtkAboutDialog*, website_label : Gchar*)
  fun gtk_about_dialog_set_wrap_license(about : GtkAboutDialog*, wrap_license : Gboolean)
  fun gtk_accel_flags_get_type : GType
  fun gtk_accel_group_activate(accel_group : GtkAccelGroup*, accel_quark : GQuark, acceleratable : GObject*, accel_key : Guint, accel_mods : GdkModifierType) : Gboolean
  fun gtk_accel_group_connect(accel_group : GtkAccelGroup*, accel_key : Guint, accel_mods : GdkModifierType, accel_flags : GtkAccelFlags, closure : GClosure*)
  fun gtk_accel_group_connect_by_path(accel_group : GtkAccelGroup*, accel_path : Gchar*, closure : GClosure*)
  fun gtk_accel_group_disconnect(accel_group : GtkAccelGroup*, closure : GClosure*) : Gboolean
  fun gtk_accel_group_disconnect_key(accel_group : GtkAccelGroup*, accel_key : Guint, accel_mods : GdkModifierType) : Gboolean
  fun gtk_accel_group_find(accel_group : GtkAccelGroup*, find_func : GtkAccelGroupFindFunc, data : Gpointer) : GtkAccelKey*
  fun gtk_accel_group_from_accel_closure(closure : GClosure*) : GtkAccelGroup*
  fun gtk_accel_group_get_is_locked(accel_group : GtkAccelGroup*) : Gboolean
  fun gtk_accel_group_get_modifier_mask(accel_group : GtkAccelGroup*) : GdkModifierType
  fun gtk_accel_group_get_type : GType
  fun gtk_accel_group_lock(accel_group : GtkAccelGroup*)
  fun gtk_accel_group_new : GtkAccelGroup*
  fun gtk_accel_group_query(accel_group : GtkAccelGroup*, accel_key : Guint, accel_mods : GdkModifierType, n_entries : Guint*) : GtkAccelGroupEntry*
  fun gtk_accel_group_unlock(accel_group : GtkAccelGroup*)
  fun gtk_accel_groups_activate(object : GObject*, accel_key : Guint, accel_mods : GdkModifierType) : Gboolean
  fun gtk_accel_groups_from_object(object : GObject*) : GsList*
  fun gtk_accel_label_get_accel(accel_label : GtkAccelLabel*, accelerator_key : Guint*, accelerator_mods : GdkModifierType*)
  fun gtk_accel_label_get_accel_widget(accel_label : GtkAccelLabel*) : GtkWidget*
  fun gtk_accel_label_get_accel_width(accel_label : GtkAccelLabel*) : Guint
  fun gtk_accel_label_get_type : GType
  fun gtk_accel_label_new(string : Gchar*) : GtkWidget*
  fun gtk_accel_label_refetch(accel_label : GtkAccelLabel*) : Gboolean
  fun gtk_accel_label_set_accel(accel_label : GtkAccelLabel*, accelerator_key : Guint, accelerator_mods : GdkModifierType)
  fun gtk_accel_label_set_accel_closure(accel_label : GtkAccelLabel*, accel_closure : GClosure*)
  fun gtk_accel_label_set_accel_widget(accel_label : GtkAccelLabel*, accel_widget : GtkWidget*)
  fun gtk_accel_map_add_entry(accel_path : Gchar*, accel_key : Guint, accel_mods : GdkModifierType)
  fun gtk_accel_map_add_filter(filter_pattern : Gchar*)
  fun gtk_accel_map_change_entry(accel_path : Gchar*, accel_key : Guint, accel_mods : GdkModifierType, replace : Gboolean) : Gboolean
  fun gtk_accel_map_foreach(data : Gpointer, foreach_func : GtkAccelMapForeach)
  fun gtk_accel_map_foreach_unfiltered(data : Gpointer, foreach_func : GtkAccelMapForeach)
  fun gtk_accel_map_get : GtkAccelMap
  fun gtk_accel_map_get_type : GType
  fun gtk_accel_map_load(file_name : Gchar*)
  fun gtk_accel_map_load_fd(fd : Gint)
  fun gtk_accel_map_load_scanner(scanner : GScanner*)
  fun gtk_accel_map_lock_path(accel_path : Gchar*)
  fun gtk_accel_map_lookup_entry(accel_path : Gchar*, key : GtkAccelKey*) : Gboolean
  fun gtk_accel_map_save(file_name : Gchar*)
  fun gtk_accel_map_save_fd(fd : Gint)
  fun gtk_accel_map_unlock_path(accel_path : Gchar*)
  fun gtk_accelerator_get_default_mod_mask : GdkModifierType
  fun gtk_accelerator_get_label(accelerator_key : Guint, accelerator_mods : GdkModifierType) : Gchar*
  fun gtk_accelerator_get_label_with_keycode(display : GdkDisplay, accelerator_key : Guint, keycode : Guint, accelerator_mods : GdkModifierType) : Gchar*
  fun gtk_accelerator_name(accelerator_key : Guint, accelerator_mods : GdkModifierType) : Gchar*
  fun gtk_accelerator_name_with_keycode(display : GdkDisplay, accelerator_key : Guint, keycode : Guint, accelerator_mods : GdkModifierType) : Gchar*
  fun gtk_accelerator_parse(accelerator : Gchar*, accelerator_key : Guint*, accelerator_mods : GdkModifierType*)
  fun gtk_accelerator_parse_with_keycode(accelerator : Gchar*, accelerator_key : Guint*, accelerator_codes : Guint**, accelerator_mods : GdkModifierType*)
  fun gtk_accelerator_set_default_mod_mask(default_mod_mask : GdkModifierType)
  fun gtk_accelerator_valid(keyval : Guint, modifiers : GdkModifierType) : Gboolean
  fun gtk_accessible_connect_widget_destroyed(accessible : GtkAccessible*)
  fun gtk_accessible_get_type : GType
  fun gtk_accessible_get_widget(accessible : GtkAccessible*) : GtkWidget*
  fun gtk_accessible_set_widget(accessible : GtkAccessible*, widget : GtkWidget*)
  fun gtk_action_activate(action : GtkAction*)
  fun gtk_action_bar_get_center_widget(action_bar : GtkActionBar*) : GtkWidget*
  fun gtk_action_bar_get_type : GType
  fun gtk_action_bar_new : GtkWidget*
  fun gtk_action_bar_pack_end(action_bar : GtkActionBar*, child : GtkWidget*)
  fun gtk_action_bar_pack_start(action_bar : GtkActionBar*, child : GtkWidget*)
  fun gtk_action_bar_set_center_widget(action_bar : GtkActionBar*, center_widget : GtkWidget*)
  fun gtk_action_block_activate(action : GtkAction*)
  fun gtk_action_connect_accelerator(action : GtkAction*)
  fun gtk_action_create_icon(action : GtkAction*, icon_size : GtkIconSize) : GtkWidget*
  fun gtk_action_create_menu(action : GtkAction*) : GtkWidget*
  fun gtk_action_create_menu_item(action : GtkAction*) : GtkWidget*
  fun gtk_action_create_tool_item(action : GtkAction*) : GtkWidget*
  fun gtk_action_disconnect_accelerator(action : GtkAction*)
  fun gtk_action_get_accel_closure(action : GtkAction*) : GClosure*
  fun gtk_action_get_accel_path(action : GtkAction*) : Gchar*
  fun gtk_action_get_always_show_image(action : GtkAction*) : Gboolean
  fun gtk_action_get_gicon(action : GtkAction*) : GIcon
  fun gtk_action_get_icon_name(action : GtkAction*) : Gchar*
  fun gtk_action_get_is_important(action : GtkAction*) : Gboolean
  fun gtk_action_get_label(action : GtkAction*) : Gchar*
  fun gtk_action_get_name(action : GtkAction*) : Gchar*
  fun gtk_action_get_proxies(action : GtkAction*) : GsList*
  fun gtk_action_get_sensitive(action : GtkAction*) : Gboolean
  fun gtk_action_get_short_label(action : GtkAction*) : Gchar*
  fun gtk_action_get_stock_id(action : GtkAction*) : Gchar*
  fun gtk_action_get_tooltip(action : GtkAction*) : Gchar*
  fun gtk_action_get_type : GType
  fun gtk_action_get_visible(action : GtkAction*) : Gboolean
  fun gtk_action_get_visible_horizontal(action : GtkAction*) : Gboolean
  fun gtk_action_get_visible_vertical(action : GtkAction*) : Gboolean
  fun gtk_action_group_add_action(action_group : GtkActionGroup*, action : GtkAction*)
  fun gtk_action_group_add_action_with_accel(action_group : GtkActionGroup*, action : GtkAction*, accelerator : Gchar*)
  fun gtk_action_group_add_actions(action_group : GtkActionGroup*, entries : GtkActionEntry*, n_entries : Guint, user_data : Gpointer)
  fun gtk_action_group_add_actions_full(action_group : GtkActionGroup*, entries : GtkActionEntry*, n_entries : Guint, user_data : Gpointer, destroy : GDestroyNotify)
  fun gtk_action_group_add_radio_actions(action_group : GtkActionGroup*, entries : GtkRadioActionEntry*, n_entries : Guint, value : Gint, on_change : GCallback, user_data : Gpointer)
  fun gtk_action_group_add_radio_actions_full(action_group : GtkActionGroup*, entries : GtkRadioActionEntry*, n_entries : Guint, value : Gint, on_change : GCallback, user_data : Gpointer, destroy : GDestroyNotify)
  fun gtk_action_group_add_toggle_actions(action_group : GtkActionGroup*, entries : GtkToggleActionEntry*, n_entries : Guint, user_data : Gpointer)
  fun gtk_action_group_add_toggle_actions_full(action_group : GtkActionGroup*, entries : GtkToggleActionEntry*, n_entries : Guint, user_data : Gpointer, destroy : GDestroyNotify)
  fun gtk_action_group_get_accel_group(action_group : GtkActionGroup*) : GtkAccelGroup*
  fun gtk_action_group_get_action(action_group : GtkActionGroup*, action_name : Gchar*) : GtkAction*
  fun gtk_action_group_get_name(action_group : GtkActionGroup*) : Gchar*
  fun gtk_action_group_get_sensitive(action_group : GtkActionGroup*) : Gboolean
  fun gtk_action_group_get_type : GType
  fun gtk_action_group_get_visible(action_group : GtkActionGroup*) : Gboolean
  fun gtk_action_group_list_actions(action_group : GtkActionGroup*) : GList*
  fun gtk_action_group_new(name : Gchar*) : GtkActionGroup*
  fun gtk_action_group_remove_action(action_group : GtkActionGroup*, action : GtkAction*)
  fun gtk_action_group_set_accel_group(action_group : GtkActionGroup*, accel_group : GtkAccelGroup*)
  fun gtk_action_group_set_sensitive(action_group : GtkActionGroup*, sensitive : Gboolean)
  fun gtk_action_group_set_translate_func(action_group : GtkActionGroup*, func : GtkTranslateFunc, data : Gpointer, notify : GDestroyNotify)
  fun gtk_action_group_set_translation_domain(action_group : GtkActionGroup*, domain : Gchar*)
  fun gtk_action_group_set_visible(action_group : GtkActionGroup*, visible : Gboolean)
  fun gtk_action_group_translate_string(action_group : GtkActionGroup*, string : Gchar*) : Gchar*
  fun gtk_action_is_sensitive(action : GtkAction*) : Gboolean
  fun gtk_action_is_visible(action : GtkAction*) : Gboolean
  fun gtk_action_new(name : Gchar*, label : Gchar*, tooltip : Gchar*, stock_id : Gchar*) : GtkAction*
  fun gtk_action_set_accel_group(action : GtkAction*, accel_group : GtkAccelGroup*)
  fun gtk_action_set_accel_path(action : GtkAction*, accel_path : Gchar*)
  fun gtk_action_set_always_show_image(action : GtkAction*, always_show : Gboolean)
  fun gtk_action_set_gicon(action : GtkAction*, icon : GIcon)
  fun gtk_action_set_icon_name(action : GtkAction*, icon_name : Gchar*)
  fun gtk_action_set_is_important(action : GtkAction*, is_important : Gboolean)
  fun gtk_action_set_label(action : GtkAction*, label : Gchar*)
  fun gtk_action_set_sensitive(action : GtkAction*, sensitive : Gboolean)
  fun gtk_action_set_short_label(action : GtkAction*, short_label : Gchar*)
  fun gtk_action_set_stock_id(action : GtkAction*, stock_id : Gchar*)
  fun gtk_action_set_tooltip(action : GtkAction*, tooltip : Gchar*)
  fun gtk_action_set_visible(action : GtkAction*, visible : Gboolean)
  fun gtk_action_set_visible_horizontal(action : GtkAction*, visible_horizontal : Gboolean)
  fun gtk_action_set_visible_vertical(action : GtkAction*, visible_vertical : Gboolean)
  fun gtk_action_unblock_activate(action : GtkAction*)
  fun gtk_actionable_get_action_name(actionable : GtkActionable) : Gchar*
  fun gtk_actionable_get_action_target_value(actionable : GtkActionable) : GVariant
  fun gtk_actionable_get_type : GType
  fun gtk_actionable_set_action_name(actionable : GtkActionable, action_name : Gchar*)
  fun gtk_actionable_set_action_target(actionable : GtkActionable, format_string : Gchar*, ...)
  fun gtk_actionable_set_action_target_value(actionable : GtkActionable, target_value : GVariant)
  fun gtk_actionable_set_detailed_action_name(actionable : GtkActionable, detailed_action_name : Gchar*)
  fun gtk_activatable_do_set_related_action(activatable : GtkActivatable, action : GtkAction*)
  fun gtk_activatable_get_related_action(activatable : GtkActivatable) : GtkAction*
  fun gtk_activatable_get_type : GType
  fun gtk_activatable_get_use_action_appearance(activatable : GtkActivatable) : Gboolean
  fun gtk_activatable_set_related_action(activatable : GtkActivatable, action : GtkAction*)
  fun gtk_activatable_set_use_action_appearance(activatable : GtkActivatable, use_appearance : Gboolean)
  fun gtk_activatable_sync_action_properties(activatable : GtkActivatable, action : GtkAction*)
  fun gtk_adjustment_changed(adjustment : GtkAdjustment*)
  fun gtk_adjustment_clamp_page(adjustment : GtkAdjustment*, lower : Gdouble, upper : Gdouble)
  fun gtk_adjustment_configure(adjustment : GtkAdjustment*, value : Gdouble, lower : Gdouble, upper : Gdouble, step_increment : Gdouble, page_increment : Gdouble, page_size : Gdouble)
  fun gtk_adjustment_get_lower(adjustment : GtkAdjustment*) : Gdouble
  fun gtk_adjustment_get_minimum_increment(adjustment : GtkAdjustment*) : Gdouble
  fun gtk_adjustment_get_page_increment(adjustment : GtkAdjustment*) : Gdouble
  fun gtk_adjustment_get_page_size(adjustment : GtkAdjustment*) : Gdouble
  fun gtk_adjustment_get_step_increment(adjustment : GtkAdjustment*) : Gdouble
  fun gtk_adjustment_get_type : GType
  fun gtk_adjustment_get_upper(adjustment : GtkAdjustment*) : Gdouble
  fun gtk_adjustment_get_value(adjustment : GtkAdjustment*) : Gdouble
  fun gtk_adjustment_new(value : Gdouble, lower : Gdouble, upper : Gdouble, step_increment : Gdouble, page_increment : Gdouble, page_size : Gdouble) : GtkAdjustment*
  fun gtk_adjustment_set_lower(adjustment : GtkAdjustment*, lower : Gdouble)
  fun gtk_adjustment_set_page_increment(adjustment : GtkAdjustment*, page_increment : Gdouble)
  fun gtk_adjustment_set_page_size(adjustment : GtkAdjustment*, page_size : Gdouble)
  fun gtk_adjustment_set_step_increment(adjustment : GtkAdjustment*, step_increment : Gdouble)
  fun gtk_adjustment_set_upper(adjustment : GtkAdjustment*, upper : Gdouble)
  fun gtk_adjustment_set_value(adjustment : GtkAdjustment*, value : Gdouble)
  fun gtk_adjustment_value_changed(adjustment : GtkAdjustment*)
  fun gtk_align_get_type : GType
  fun gtk_alignment_get_padding(alignment : GtkAlignment*, padding_top : Guint*, padding_bottom : Guint*, padding_left : Guint*, padding_right : Guint*)
  fun gtk_alignment_get_type : GType
  fun gtk_alignment_new(xalign : Gfloat, yalign : Gfloat, xscale : Gfloat, yscale : Gfloat) : GtkWidget*
  fun gtk_alignment_set(alignment : GtkAlignment*, xalign : Gfloat, yalign : Gfloat, xscale : Gfloat, yscale : Gfloat)
  fun gtk_alignment_set_padding(alignment : GtkAlignment*, padding_top : Guint, padding_bottom : Guint, padding_left : Guint, padding_right : Guint)
  fun gtk_alternative_dialog_button_order(screen : GdkScreen) : Gboolean
  fun gtk_app_chooser_button_append_custom_item(self : GtkAppChooserButton*, name : Gchar*, label : Gchar*, icon : GIcon)
  fun gtk_app_chooser_button_append_separator(self : GtkAppChooserButton*)
  fun gtk_app_chooser_button_get_heading(self : GtkAppChooserButton*) : Gchar*
  fun gtk_app_chooser_button_get_show_default_item(self : GtkAppChooserButton*) : Gboolean
  fun gtk_app_chooser_button_get_show_dialog_item(self : GtkAppChooserButton*) : Gboolean
  fun gtk_app_chooser_button_get_type : GType
  fun gtk_app_chooser_button_new(content_type : Gchar*) : GtkWidget*
  fun gtk_app_chooser_button_set_active_custom_item(self : GtkAppChooserButton*, name : Gchar*)
  fun gtk_app_chooser_button_set_heading(self : GtkAppChooserButton*, heading : Gchar*)
  fun gtk_app_chooser_button_set_show_default_item(self : GtkAppChooserButton*, setting : Gboolean)
  fun gtk_app_chooser_button_set_show_dialog_item(self : GtkAppChooserButton*, setting : Gboolean)
  fun gtk_app_chooser_dialog_get_heading(self : GtkAppChooserDialog*) : Gchar*
  fun gtk_app_chooser_dialog_get_type : GType
  fun gtk_app_chooser_dialog_get_widget(self : GtkAppChooserDialog*) : GtkWidget*
  fun gtk_app_chooser_dialog_new(parent : GtkWindow*, flags : GtkDialogFlags, file : GFile) : GtkWidget*
  fun gtk_app_chooser_dialog_new_for_content_type(parent : GtkWindow*, flags : GtkDialogFlags, content_type : Gchar*) : GtkWidget*
  fun gtk_app_chooser_dialog_set_heading(self : GtkAppChooserDialog*, heading : Gchar*)
  fun gtk_app_chooser_get_app_info(self : GtkAppChooser) : GAppInfo
  fun gtk_app_chooser_get_content_type(self : GtkAppChooser) : Gchar*
  fun gtk_app_chooser_get_type : GType
  fun gtk_app_chooser_refresh(self : GtkAppChooser)
  fun gtk_app_chooser_widget_get_default_text(self : GtkAppChooserWidget*) : Gchar*
  fun gtk_app_chooser_widget_get_show_all(self : GtkAppChooserWidget*) : Gboolean
  fun gtk_app_chooser_widget_get_show_default(self : GtkAppChooserWidget*) : Gboolean
  fun gtk_app_chooser_widget_get_show_fallback(self : GtkAppChooserWidget*) : Gboolean
  fun gtk_app_chooser_widget_get_show_other(self : GtkAppChooserWidget*) : Gboolean
  fun gtk_app_chooser_widget_get_show_recommended(self : GtkAppChooserWidget*) : Gboolean
  fun gtk_app_chooser_widget_get_type : GType
  fun gtk_app_chooser_widget_new(content_type : Gchar*) : GtkWidget*
  fun gtk_app_chooser_widget_set_default_text(self : GtkAppChooserWidget*, text : Gchar*)
  fun gtk_app_chooser_widget_set_show_all(self : GtkAppChooserWidget*, setting : Gboolean)
  fun gtk_app_chooser_widget_set_show_default(self : GtkAppChooserWidget*, setting : Gboolean)
  fun gtk_app_chooser_widget_set_show_fallback(self : GtkAppChooserWidget*, setting : Gboolean)
  fun gtk_app_chooser_widget_set_show_other(self : GtkAppChooserWidget*, setting : Gboolean)
  fun gtk_app_chooser_widget_set_show_recommended(self : GtkAppChooserWidget*, setting : Gboolean)
  fun gtk_application_add_accelerator(application : GtkApplication*, accelerator : Gchar*, action_name : Gchar*, parameter : GVariant)
  fun gtk_application_add_window(application : GtkApplication*, window : GtkWindow*)
  fun gtk_application_get_accels_for_action(application : GtkApplication*, detailed_action_name : Gchar*) : Gchar**
  fun gtk_application_get_actions_for_accel(application : GtkApplication*, accel : Gchar*) : Gchar**
  fun gtk_application_get_active_window(application : GtkApplication*) : GtkWindow*
  fun gtk_application_get_app_menu(application : GtkApplication*) : GMenuModel*
  fun gtk_application_get_menu_by_id(application : GtkApplication*, id : Gchar*) : GMenu
  fun gtk_application_get_menubar(application : GtkApplication*) : GMenuModel*
  fun gtk_application_get_type : GType
  fun gtk_application_get_window_by_id(application : GtkApplication*, id : Guint) : GtkWindow*
  fun gtk_application_get_windows(application : GtkApplication*) : GList*
  fun gtk_application_inhibit(application : GtkApplication*, window : GtkWindow*, flags : GtkApplicationInhibitFlags, reason : Gchar*) : Guint
  fun gtk_application_inhibit_flags_get_type : GType
  fun gtk_application_is_inhibited(application : GtkApplication*, flags : GtkApplicationInhibitFlags) : Gboolean
  fun gtk_application_list_action_descriptions(application : GtkApplication*) : Gchar**
  fun gtk_application_new(application_id : Gchar*, flags : GApplicationFlags) : GtkApplication*
  fun gtk_application_prefers_app_menu(application : GtkApplication*) : Gboolean
  fun gtk_application_remove_accelerator(application : GtkApplication*, action_name : Gchar*, parameter : GVariant)
  fun gtk_application_remove_window(application : GtkApplication*, window : GtkWindow*)
  fun gtk_application_set_accels_for_action(application : GtkApplication*, detailed_action_name : Gchar*, accels : Gchar**)
  fun gtk_application_set_app_menu(application : GtkApplication*, app_menu : GMenuModel*)
  fun gtk_application_set_menubar(application : GtkApplication*, menubar : GMenuModel*)
  fun gtk_application_uninhibit(application : GtkApplication*, cookie : Guint)
  fun gtk_application_window_get_id(window : GtkApplicationWindow*) : Guint
  fun gtk_application_window_get_show_menubar(window : GtkApplicationWindow*) : Gboolean
  fun gtk_application_window_get_type : GType
  fun gtk_application_window_new(application : GtkApplication*) : GtkWidget*
  fun gtk_application_window_set_show_menubar(window : GtkApplicationWindow*, show_menubar : Gboolean)
  fun gtk_arrow_get_type : GType
  fun gtk_arrow_new(arrow_type : GtkArrowType, shadow_type : GtkShadowType) : GtkWidget*
  fun gtk_arrow_placement_get_type : GType
  fun gtk_arrow_set(arrow : GtkArrow*, arrow_type : GtkArrowType, shadow_type : GtkShadowType)
  fun gtk_arrow_type_get_type : GType
  fun gtk_aspect_frame_get_type : GType
  fun gtk_aspect_frame_new(label : Gchar*, xalign : Gfloat, yalign : Gfloat, ratio : Gfloat, obey_child : Gboolean) : GtkWidget*
  fun gtk_aspect_frame_set(aspect_frame : GtkAspectFrame*, xalign : Gfloat, yalign : Gfloat, ratio : Gfloat, obey_child : Gboolean)
  fun gtk_assistant_add_action_widget(assistant : GtkAssistant*, child : GtkWidget*)
  fun gtk_assistant_append_page(assistant : GtkAssistant*, page : GtkWidget*) : Gint
  fun gtk_assistant_commit(assistant : GtkAssistant*)
  fun gtk_assistant_get_current_page(assistant : GtkAssistant*) : Gint
  fun gtk_assistant_get_n_pages(assistant : GtkAssistant*) : Gint
  fun gtk_assistant_get_nth_page(assistant : GtkAssistant*, page_num : Gint) : GtkWidget*
  fun gtk_assistant_get_page_complete(assistant : GtkAssistant*, page : GtkWidget*) : Gboolean
  fun gtk_assistant_get_page_has_padding(assistant : GtkAssistant*, page : GtkWidget*) : Gboolean
  fun gtk_assistant_get_page_header_image(assistant : GtkAssistant*, page : GtkWidget*) : GdkPixbuf
  fun gtk_assistant_get_page_side_image(assistant : GtkAssistant*, page : GtkWidget*) : GdkPixbuf
  fun gtk_assistant_get_page_title(assistant : GtkAssistant*, page : GtkWidget*) : Gchar*
  fun gtk_assistant_get_page_type(assistant : GtkAssistant*, page : GtkWidget*) : GtkAssistantPageType
  fun gtk_assistant_get_type : GType
  fun gtk_assistant_insert_page(assistant : GtkAssistant*, page : GtkWidget*, position : Gint) : Gint
  fun gtk_assistant_new : GtkWidget*
  fun gtk_assistant_next_page(assistant : GtkAssistant*)
  fun gtk_assistant_page_type_get_type : GType
  fun gtk_assistant_prepend_page(assistant : GtkAssistant*, page : GtkWidget*) : Gint
  fun gtk_assistant_previous_page(assistant : GtkAssistant*)
  fun gtk_assistant_remove_action_widget(assistant : GtkAssistant*, child : GtkWidget*)
  fun gtk_assistant_remove_page(assistant : GtkAssistant*, page_num : Gint)
  fun gtk_assistant_set_current_page(assistant : GtkAssistant*, page_num : Gint)
  fun gtk_assistant_set_forward_page_func(assistant : GtkAssistant*, page_func : GtkAssistantPageFunc, data : Gpointer, destroy : GDestroyNotify)
  fun gtk_assistant_set_page_complete(assistant : GtkAssistant*, page : GtkWidget*, complete : Gboolean)
  fun gtk_assistant_set_page_has_padding(assistant : GtkAssistant*, page : GtkWidget*, has_padding : Gboolean)
  fun gtk_assistant_set_page_header_image(assistant : GtkAssistant*, page : GtkWidget*, pixbuf : GdkPixbuf)
  fun gtk_assistant_set_page_side_image(assistant : GtkAssistant*, page : GtkWidget*, pixbuf : GdkPixbuf)
  fun gtk_assistant_set_page_title(assistant : GtkAssistant*, page : GtkWidget*, title : Gchar*)
  fun gtk_assistant_set_page_type(assistant : GtkAssistant*, page : GtkWidget*, type : GtkAssistantPageType)
  fun gtk_assistant_update_buttons_state(assistant : GtkAssistant*)
  fun gtk_attach_options_get_type : GType
  fun gtk_baseline_position_get_type : GType
  fun gtk_bin_get_child(bin : GtkBin*) : GtkWidget*
  fun gtk_bin_get_type : GType
  fun gtk_binding_entry_add_signal(binding_set : GtkBindingSet*, keyval : Guint, modifiers : GdkModifierType, signal_name : Gchar*, n_args : Guint, ...)
  fun gtk_binding_entry_add_signal_from_string(binding_set : GtkBindingSet*, signal_desc : Gchar*) : GTokenType
  fun gtk_binding_entry_add_signall(binding_set : GtkBindingSet*, keyval : Guint, modifiers : GdkModifierType, signal_name : Gchar*, binding_args : GsList*)
  fun gtk_binding_entry_remove(binding_set : GtkBindingSet*, keyval : Guint, modifiers : GdkModifierType)
  fun gtk_binding_entry_skip(binding_set : GtkBindingSet*, keyval : Guint, modifiers : GdkModifierType)
  fun gtk_binding_set_activate(binding_set : GtkBindingSet*, keyval : Guint, modifiers : GdkModifierType, object : GObject*) : Gboolean
  fun gtk_binding_set_add_path(binding_set : GtkBindingSet*, path_type : GtkPathType, path_pattern : Gchar*, priority : GtkPathPriorityType)
  fun gtk_binding_set_by_class(object_class : Gpointer) : GtkBindingSet*
  fun gtk_binding_set_find(set_name : Gchar*) : GtkBindingSet*
  fun gtk_binding_set_new(set_name : Gchar*) : GtkBindingSet*
  fun gtk_bindings_activate(object : GObject*, keyval : Guint, modifiers : GdkModifierType) : Gboolean
  fun gtk_bindings_activate_event(object : GObject*, event : GdkEventKey*) : Gboolean
  fun gtk_border_copy(border_ : GtkBorder*) : GtkBorder*
  fun gtk_border_free(border_ : GtkBorder*)
  fun gtk_border_get_type : GType
  fun gtk_border_new : GtkBorder*
  fun gtk_border_style_get_type : GType
  fun gtk_box_get_baseline_position(box : GtkBox*) : GtkBaselinePosition
  fun gtk_box_get_center_widget(box : GtkBox*) : GtkWidget*
  fun gtk_box_get_homogeneous(box : GtkBox*) : Gboolean
  fun gtk_box_get_spacing(box : GtkBox*) : Gint
  fun gtk_box_get_type : GType
  fun gtk_box_new(orientation : GtkOrientation, spacing : Gint) : GtkWidget*
  fun gtk_box_pack_end(box : GtkBox*, child : GtkWidget*, expand : Gboolean, fill : Gboolean, padding : Guint)
  fun gtk_box_pack_start(box : GtkBox*, child : GtkWidget*, expand : Gboolean, fill : Gboolean, padding : Guint)
  fun gtk_box_query_child_packing(box : GtkBox*, child : GtkWidget*, expand : Gboolean*, fill : Gboolean*, padding : Guint*, pack_type : GtkPackType*)
  fun gtk_box_reorder_child(box : GtkBox*, child : GtkWidget*, position : Gint)
  fun gtk_box_set_baseline_position(box : GtkBox*, position : GtkBaselinePosition)
  fun gtk_box_set_center_widget(box : GtkBox*, widget : GtkWidget*)
  fun gtk_box_set_child_packing(box : GtkBox*, child : GtkWidget*, expand : Gboolean, fill : Gboolean, padding : Guint, pack_type : GtkPackType)
  fun gtk_box_set_homogeneous(box : GtkBox*, homogeneous : Gboolean)
  fun gtk_box_set_spacing(box : GtkBox*, spacing : Gint)
  fun gtk_buildable_add_child(buildable : GtkBuildable, builder : GtkBuilder*, child : GObject*, type : Gchar*)
  fun gtk_buildable_construct_child(buildable : GtkBuildable, builder : GtkBuilder*, name : Gchar*) : GObject*
  fun gtk_buildable_custom_finished(buildable : GtkBuildable, builder : GtkBuilder*, child : GObject*, tagname : Gchar*, data : Gpointer)
  fun gtk_buildable_custom_tag_end(buildable : GtkBuildable, builder : GtkBuilder*, child : GObject*, tagname : Gchar*, data : Gpointer*)
  fun gtk_buildable_custom_tag_start(buildable : GtkBuildable, builder : GtkBuilder*, child : GObject*, tagname : Gchar*, parser : GMarkupParser*, data : Gpointer*) : Gboolean
  fun gtk_buildable_get_internal_child(buildable : GtkBuildable, builder : GtkBuilder*, childname : Gchar*) : GObject*
  fun gtk_buildable_get_name(buildable : GtkBuildable) : Gchar*
  fun gtk_buildable_get_type : GType
  fun gtk_buildable_parser_finished(buildable : GtkBuildable, builder : GtkBuilder*)
  fun gtk_buildable_set_buildable_property(buildable : GtkBuildable, builder : GtkBuilder*, name : Gchar*, value : GValue*)
  fun gtk_buildable_set_name(buildable : GtkBuildable, name : Gchar*)
  fun gtk_builder_add_callback_symbol(builder : GtkBuilder*, callback_name : Gchar*, callback_symbol : GCallback)
  fun gtk_builder_add_callback_symbols(builder : GtkBuilder*, first_callback_name : Gchar*, first_callback_symbol : GCallback, ...)
  fun gtk_builder_add_from_file(builder : GtkBuilder*, filename : Gchar*, error : GError**) : Guint
  fun gtk_builder_add_from_resource(builder : GtkBuilder*, resource_path : Gchar*, error : GError**) : Guint
  fun gtk_builder_add_from_string(builder : GtkBuilder*, buffer : Gchar*, length : Gsize, error : GError**) : Guint
  fun gtk_builder_add_objects_from_file(builder : GtkBuilder*, filename : Gchar*, object_ids : Gchar**, error : GError**) : Guint
  fun gtk_builder_add_objects_from_resource(builder : GtkBuilder*, resource_path : Gchar*, object_ids : Gchar**, error : GError**) : Guint
  fun gtk_builder_add_objects_from_string(builder : GtkBuilder*, buffer : Gchar*, length : Gsize, object_ids : Gchar**, error : GError**) : Guint
  fun gtk_builder_connect_signals(builder : GtkBuilder*, user_data : Gpointer)
  fun gtk_builder_connect_signals_full(builder : GtkBuilder*, func : GtkBuilderConnectFunc, user_data : Gpointer)
  fun gtk_builder_error_get_type : GType
  fun gtk_builder_error_quark : GQuark
  fun gtk_builder_expose_object(builder : GtkBuilder*, name : Gchar*, object : GObject*)
  fun gtk_builder_get_application(builder : GtkBuilder*) : GtkApplication*
  fun gtk_builder_get_object(builder : GtkBuilder*, name : Gchar*) : GObject*
  fun gtk_builder_get_objects(builder : GtkBuilder*) : GsList*
  fun gtk_builder_get_translation_domain(builder : GtkBuilder*) : Gchar*
  fun gtk_builder_get_type : GType
  fun gtk_builder_get_type_from_name(builder : GtkBuilder*, type_name : LibC::Char*) : GType
  fun gtk_builder_lookup_callback_symbol(builder : GtkBuilder*, callback_name : Gchar*) : GCallback
  fun gtk_builder_new : GtkBuilder*
  fun gtk_builder_new_from_file(filename : Gchar*) : GtkBuilder*
  fun gtk_builder_new_from_resource(resource_path : Gchar*) : GtkBuilder*
  fun gtk_builder_new_from_string(string : Gchar*, length : Gssize) : GtkBuilder*
  fun gtk_builder_set_application(builder : GtkBuilder*, application : GtkApplication*)
  fun gtk_builder_set_translation_domain(builder : GtkBuilder*, domain : Gchar*)
  fun gtk_builder_value_from_string(builder : GtkBuilder*, pspec : GParamSpec*, string : Gchar*, value : GValue*, error : GError**) : Gboolean
  fun gtk_builder_value_from_string_type(builder : GtkBuilder*, type : GType, string : Gchar*, value : GValue*, error : GError**) : Gboolean
  fun gtk_button_box_get_child_non_homogeneous(widget : GtkButtonBox*, child : GtkWidget*) : Gboolean
  fun gtk_button_box_get_child_secondary(widget : GtkButtonBox*, child : GtkWidget*) : Gboolean
  fun gtk_button_box_get_layout(widget : GtkButtonBox*) : GtkButtonBoxStyle
  fun gtk_button_box_get_type : GType
  fun gtk_button_box_new(orientation : GtkOrientation) : GtkWidget*
  fun gtk_button_box_set_child_non_homogeneous(widget : GtkButtonBox*, child : GtkWidget*, non_homogeneous : Gboolean)
  fun gtk_button_box_set_child_secondary(widget : GtkButtonBox*, child : GtkWidget*, is_secondary : Gboolean)
  fun gtk_button_box_set_layout(widget : GtkButtonBox*, layout_style : GtkButtonBoxStyle)
  fun gtk_button_box_style_get_type : GType
  fun gtk_button_clicked(button : GtkButton*)
  fun gtk_button_enter(button : GtkButton*)
  fun gtk_button_get_alignment(button : GtkButton*, xalign : Gfloat*, yalign : Gfloat*)
  fun gtk_button_get_always_show_image(button : GtkButton*) : Gboolean
  fun gtk_button_get_event_window(button : GtkButton*) : GdkWindow
  fun gtk_button_get_focus_on_click(button : GtkButton*) : Gboolean
  fun gtk_button_get_image(button : GtkButton*) : GtkWidget*
  fun gtk_button_get_image_position(button : GtkButton*) : GtkPositionType
  fun gtk_button_get_label(button : GtkButton*) : Gchar*
  fun gtk_button_get_relief(button : GtkButton*) : GtkReliefStyle
  fun gtk_button_get_type : GType
  fun gtk_button_get_use_stock(button : GtkButton*) : Gboolean
  fun gtk_button_get_use_underline(button : GtkButton*) : Gboolean
  fun gtk_button_leave(button : GtkButton*)
  fun gtk_button_new : GtkWidget*
  fun gtk_button_new_from_icon_name(icon_name : Gchar*, size : GtkIconSize) : GtkWidget*
  fun gtk_button_new_from_stock(stock_id : Gchar*) : GtkWidget*
  fun gtk_button_new_with_label(label : Gchar*) : GtkWidget*
  fun gtk_button_new_with_mnemonic(label : Gchar*) : GtkWidget*
  fun gtk_button_pressed(button : GtkButton*)
  fun gtk_button_released(button : GtkButton*)
  fun gtk_button_role_get_type : GType
  fun gtk_button_set_alignment(button : GtkButton*, xalign : Gfloat, yalign : Gfloat)
  fun gtk_button_set_always_show_image(button : GtkButton*, always_show : Gboolean)
  fun gtk_button_set_focus_on_click(button : GtkButton*, focus_on_click : Gboolean)
  fun gtk_button_set_image(button : GtkButton*, image : GtkWidget*)
  fun gtk_button_set_image_position(button : GtkButton*, position : GtkPositionType)
  fun gtk_button_set_label(button : GtkButton*, label : Gchar*)
  fun gtk_button_set_relief(button : GtkButton*, relief : GtkReliefStyle)
  fun gtk_button_set_use_stock(button : GtkButton*, use_stock : Gboolean)
  fun gtk_button_set_use_underline(button : GtkButton*, use_underline : Gboolean)
  fun gtk_buttons_type_get_type : GType
  fun gtk_cairo_should_draw_window(cr : CairoT, window : GdkWindow) : Gboolean
  fun gtk_cairo_transform_to_window(cr : CairoT, widget : GtkWidget*, window : GdkWindow)
  fun gtk_calendar_clear_marks(calendar : GtkCalendar*)
  fun gtk_calendar_display_options_get_type : GType
  fun gtk_calendar_get_date(calendar : GtkCalendar*, year : Guint*, month : Guint*, day : Guint*)
  fun gtk_calendar_get_day_is_marked(calendar : GtkCalendar*, day : Guint) : Gboolean
  fun gtk_calendar_get_detail_height_rows(calendar : GtkCalendar*) : Gint
  fun gtk_calendar_get_detail_width_chars(calendar : GtkCalendar*) : Gint
  fun gtk_calendar_get_display_options(calendar : GtkCalendar*) : GtkCalendarDisplayOptions
  fun gtk_calendar_get_type : GType
  fun gtk_calendar_mark_day(calendar : GtkCalendar*, day : Guint)
  fun gtk_calendar_new : GtkWidget*
  fun gtk_calendar_select_day(calendar : GtkCalendar*, day : Guint)
  fun gtk_calendar_select_month(calendar : GtkCalendar*, month : Guint, year : Guint)
  fun gtk_calendar_set_detail_func(calendar : GtkCalendar*, func : GtkCalendarDetailFunc, data : Gpointer, destroy : GDestroyNotify)
  fun gtk_calendar_set_detail_height_rows(calendar : GtkCalendar*, rows : Gint)
  fun gtk_calendar_set_detail_width_chars(calendar : GtkCalendar*, chars : Gint)
  fun gtk_calendar_set_display_options(calendar : GtkCalendar*, flags : GtkCalendarDisplayOptions)
  fun gtk_calendar_unmark_day(calendar : GtkCalendar*, day : Guint)
  fun gtk_cell_area_activate(area : GtkCellArea*, context : GtkCellAreaContext*, widget : GtkWidget*, cell_area : GdkRectangle*, flags : GtkCellRendererState, edit_only : Gboolean) : Gboolean
  fun gtk_cell_area_activate_cell(area : GtkCellArea*, widget : GtkWidget*, renderer : GtkCellRenderer*, event : GdkEvent*, cell_area : GdkRectangle*, flags : GtkCellRendererState) : Gboolean
  fun gtk_cell_area_add(area : GtkCellArea*, renderer : GtkCellRenderer*)
  fun gtk_cell_area_add_focus_sibling(area : GtkCellArea*, renderer : GtkCellRenderer*, sibling : GtkCellRenderer*)
  fun gtk_cell_area_add_with_properties(area : GtkCellArea*, renderer : GtkCellRenderer*, first_prop_name : Gchar*, ...)
  fun gtk_cell_area_apply_attributes(area : GtkCellArea*, tree_model : GtkTreeModel, iter : GtkTreeIter*, is_expander : Gboolean, is_expanded : Gboolean)
  fun gtk_cell_area_attribute_connect(area : GtkCellArea*, renderer : GtkCellRenderer*, attribute : Gchar*, column : Gint)
  fun gtk_cell_area_attribute_disconnect(area : GtkCellArea*, renderer : GtkCellRenderer*, attribute : Gchar*)
  fun gtk_cell_area_attribute_get_column(area : GtkCellArea*, renderer : GtkCellRenderer*, attribute : Gchar*) : Gint
  fun gtk_cell_area_box_get_spacing(box : GtkCellAreaBox*) : Gint
  fun gtk_cell_area_box_get_type : GType
  fun gtk_cell_area_box_new : GtkCellArea*
  fun gtk_cell_area_box_pack_end(box : GtkCellAreaBox*, renderer : GtkCellRenderer*, expand : Gboolean, align : Gboolean, fixed : Gboolean)
  fun gtk_cell_area_box_pack_start(box : GtkCellAreaBox*, renderer : GtkCellRenderer*, expand : Gboolean, align : Gboolean, fixed : Gboolean)
  fun gtk_cell_area_box_set_spacing(box : GtkCellAreaBox*, spacing : Gint)
  fun gtk_cell_area_cell_get(area : GtkCellArea*, renderer : GtkCellRenderer*, first_prop_name : Gchar*, ...)
  fun gtk_cell_area_cell_get_property(area : GtkCellArea*, renderer : GtkCellRenderer*, property_name : Gchar*, value : GValue*)
  fun gtk_cell_area_cell_get_valist(area : GtkCellArea*, renderer : GtkCellRenderer*, first_property_name : Gchar*, var_args : VaList)
  fun gtk_cell_area_cell_set(area : GtkCellArea*, renderer : GtkCellRenderer*, first_prop_name : Gchar*, ...)
  fun gtk_cell_area_cell_set_property(area : GtkCellArea*, renderer : GtkCellRenderer*, property_name : Gchar*, value : GValue*)
  fun gtk_cell_area_cell_set_valist(area : GtkCellArea*, renderer : GtkCellRenderer*, first_property_name : Gchar*, var_args : VaList)
  fun gtk_cell_area_class_find_cell_property(aclass : GtkCellAreaClass*, property_name : Gchar*) : GParamSpec*
  fun gtk_cell_area_class_install_cell_property(aclass : GtkCellAreaClass*, property_id : Guint, pspec : GParamSpec*)
  fun gtk_cell_area_class_list_cell_properties(aclass : GtkCellAreaClass*, n_properties : Guint*) : GParamSpec**
  fun gtk_cell_area_context_allocate(context : GtkCellAreaContext*, width : Gint, height : Gint)
  fun gtk_cell_area_context_get_allocation(context : GtkCellAreaContext*, width : Gint*, height : Gint*)
  fun gtk_cell_area_context_get_area(context : GtkCellAreaContext*) : GtkCellArea*
  fun gtk_cell_area_context_get_preferred_height(context : GtkCellAreaContext*, minimum_height : Gint*, natural_height : Gint*)
  fun gtk_cell_area_context_get_preferred_height_for_width(context : GtkCellAreaContext*, width : Gint, minimum_height : Gint*, natural_height : Gint*)
  fun gtk_cell_area_context_get_preferred_width(context : GtkCellAreaContext*, minimum_width : Gint*, natural_width : Gint*)
  fun gtk_cell_area_context_get_preferred_width_for_height(context : GtkCellAreaContext*, height : Gint, minimum_width : Gint*, natural_width : Gint*)
  fun gtk_cell_area_context_get_type : GType
  fun gtk_cell_area_context_push_preferred_height(context : GtkCellAreaContext*, minimum_height : Gint, natural_height : Gint)
  fun gtk_cell_area_context_push_preferred_width(context : GtkCellAreaContext*, minimum_width : Gint, natural_width : Gint)
  fun gtk_cell_area_context_reset(context : GtkCellAreaContext*)
  fun gtk_cell_area_copy_context(area : GtkCellArea*, context : GtkCellAreaContext*) : GtkCellAreaContext*
  fun gtk_cell_area_create_context(area : GtkCellArea*) : GtkCellAreaContext*
  fun gtk_cell_area_event(area : GtkCellArea*, context : GtkCellAreaContext*, widget : GtkWidget*, event : GdkEvent*, cell_area : GdkRectangle*, flags : GtkCellRendererState) : Gint
  fun gtk_cell_area_focus(area : GtkCellArea*, direction : GtkDirectionType) : Gboolean
  fun gtk_cell_area_foreach(area : GtkCellArea*, callback : GtkCellCallback, callback_data : Gpointer)
  fun gtk_cell_area_foreach_alloc(area : GtkCellArea*, context : GtkCellAreaContext*, widget : GtkWidget*, cell_area : GdkRectangle*, background_area : GdkRectangle*, callback : GtkCellAllocCallback, callback_data : Gpointer)
  fun gtk_cell_area_get_cell_allocation(area : GtkCellArea*, context : GtkCellAreaContext*, widget : GtkWidget*, renderer : GtkCellRenderer*, cell_area : GdkRectangle*, allocation : GdkRectangle*)
  fun gtk_cell_area_get_cell_at_position(area : GtkCellArea*, context : GtkCellAreaContext*, widget : GtkWidget*, cell_area : GdkRectangle*, x : Gint, y : Gint, alloc_area : GdkRectangle*) : GtkCellRenderer*
  fun gtk_cell_area_get_current_path_string(area : GtkCellArea*) : Gchar*
  fun gtk_cell_area_get_edit_widget(area : GtkCellArea*) : GtkCellEditable
  fun gtk_cell_area_get_edited_cell(area : GtkCellArea*) : GtkCellRenderer*
  fun gtk_cell_area_get_focus_cell(area : GtkCellArea*) : GtkCellRenderer*
  fun gtk_cell_area_get_focus_from_sibling(area : GtkCellArea*, renderer : GtkCellRenderer*) : GtkCellRenderer*
  fun gtk_cell_area_get_focus_siblings(area : GtkCellArea*, renderer : GtkCellRenderer*) : GList*
  fun gtk_cell_area_get_preferred_height(area : GtkCellArea*, context : GtkCellAreaContext*, widget : GtkWidget*, minimum_height : Gint*, natural_height : Gint*)
  fun gtk_cell_area_get_preferred_height_for_width(area : GtkCellArea*, context : GtkCellAreaContext*, widget : GtkWidget*, width : Gint, minimum_height : Gint*, natural_height : Gint*)
  fun gtk_cell_area_get_preferred_width(area : GtkCellArea*, context : GtkCellAreaContext*, widget : GtkWidget*, minimum_width : Gint*, natural_width : Gint*)
  fun gtk_cell_area_get_preferred_width_for_height(area : GtkCellArea*, context : GtkCellAreaContext*, widget : GtkWidget*, height : Gint, minimum_width : Gint*, natural_width : Gint*)
  fun gtk_cell_area_get_request_mode(area : GtkCellArea*) : GtkSizeRequestMode
  fun gtk_cell_area_get_type : GType
  fun gtk_cell_area_has_renderer(area : GtkCellArea*, renderer : GtkCellRenderer*) : Gboolean
  fun gtk_cell_area_inner_cell_area(area : GtkCellArea*, widget : GtkWidget*, cell_area : GdkRectangle*, inner_area : GdkRectangle*)
  fun gtk_cell_area_is_activatable(area : GtkCellArea*) : Gboolean
  fun gtk_cell_area_is_focus_sibling(area : GtkCellArea*, renderer : GtkCellRenderer*, sibling : GtkCellRenderer*) : Gboolean
  fun gtk_cell_area_remove(area : GtkCellArea*, renderer : GtkCellRenderer*)
  fun gtk_cell_area_remove_focus_sibling(area : GtkCellArea*, renderer : GtkCellRenderer*, sibling : GtkCellRenderer*)
  fun gtk_cell_area_render(area : GtkCellArea*, context : GtkCellAreaContext*, widget : GtkWidget*, cr : CairoT, background_area : GdkRectangle*, cell_area : GdkRectangle*, flags : GtkCellRendererState, paint_focus : Gboolean)
  fun gtk_cell_area_request_renderer(area : GtkCellArea*, renderer : GtkCellRenderer*, orientation : GtkOrientation, widget : GtkWidget*, for_size : Gint, minimum_size : Gint*, natural_size : Gint*)
  fun gtk_cell_area_set_focus_cell(area : GtkCellArea*, renderer : GtkCellRenderer*)
  fun gtk_cell_area_stop_editing(area : GtkCellArea*, canceled : Gboolean)
  fun gtk_cell_editable_editing_done(cell_editable : GtkCellEditable)
  fun gtk_cell_editable_get_type : GType
  fun gtk_cell_editable_remove_widget(cell_editable : GtkCellEditable)
  fun gtk_cell_editable_start_editing(cell_editable : GtkCellEditable, event : GdkEvent*)
  fun gtk_cell_layout_add_attribute(cell_layout : GtkCellLayout, cell : GtkCellRenderer*, attribute : Gchar*, column : Gint)
  fun gtk_cell_layout_clear(cell_layout : GtkCellLayout)
  fun gtk_cell_layout_clear_attributes(cell_layout : GtkCellLayout, cell : GtkCellRenderer*)
  fun gtk_cell_layout_get_area(cell_layout : GtkCellLayout) : GtkCellArea*
  fun gtk_cell_layout_get_cells(cell_layout : GtkCellLayout) : GList*
  fun gtk_cell_layout_get_type : GType
  fun gtk_cell_layout_pack_end(cell_layout : GtkCellLayout, cell : GtkCellRenderer*, expand : Gboolean)
  fun gtk_cell_layout_pack_start(cell_layout : GtkCellLayout, cell : GtkCellRenderer*, expand : Gboolean)
  fun gtk_cell_layout_reorder(cell_layout : GtkCellLayout, cell : GtkCellRenderer*, position : Gint)
  fun gtk_cell_layout_set_attributes(cell_layout : GtkCellLayout, cell : GtkCellRenderer*, ...)
  fun gtk_cell_layout_set_cell_data_func(cell_layout : GtkCellLayout, cell : GtkCellRenderer*, func : GtkCellLayoutDataFunc, func_data : Gpointer, destroy : GDestroyNotify)
  fun gtk_cell_renderer_accel_get_type : GType
  fun gtk_cell_renderer_accel_mode_get_type : GType
  fun gtk_cell_renderer_accel_new : GtkCellRenderer*
  fun gtk_cell_renderer_activate(cell : GtkCellRenderer*, event : GdkEvent*, widget : GtkWidget*, path : Gchar*, background_area : GdkRectangle*, cell_area : GdkRectangle*, flags : GtkCellRendererState) : Gboolean
  fun gtk_cell_renderer_class_set_accessible_type(renderer_class : GtkCellRendererClass*, type : GType)
  fun gtk_cell_renderer_combo_get_type : GType
  fun gtk_cell_renderer_combo_new : GtkCellRenderer*
  fun gtk_cell_renderer_get_aligned_area(cell : GtkCellRenderer*, widget : GtkWidget*, flags : GtkCellRendererState, cell_area : GdkRectangle*, aligned_area : GdkRectangle*)
  fun gtk_cell_renderer_get_alignment(cell : GtkCellRenderer*, xalign : Gfloat*, yalign : Gfloat*)
  fun gtk_cell_renderer_get_fixed_size(cell : GtkCellRenderer*, width : Gint*, height : Gint*)
  fun gtk_cell_renderer_get_padding(cell : GtkCellRenderer*, xpad : Gint*, ypad : Gint*)
  fun gtk_cell_renderer_get_preferred_height(cell : GtkCellRenderer*, widget : GtkWidget*, minimum_size : Gint*, natural_size : Gint*)
  fun gtk_cell_renderer_get_preferred_height_for_width(cell : GtkCellRenderer*, widget : GtkWidget*, width : Gint, minimum_height : Gint*, natural_height : Gint*)
  fun gtk_cell_renderer_get_preferred_size(cell : GtkCellRenderer*, widget : GtkWidget*, minimum_size : GtkRequisition*, natural_size : GtkRequisition*)
  fun gtk_cell_renderer_get_preferred_width(cell : GtkCellRenderer*, widget : GtkWidget*, minimum_size : Gint*, natural_size : Gint*)
  fun gtk_cell_renderer_get_preferred_width_for_height(cell : GtkCellRenderer*, widget : GtkWidget*, height : Gint, minimum_width : Gint*, natural_width : Gint*)
  fun gtk_cell_renderer_get_request_mode(cell : GtkCellRenderer*) : GtkSizeRequestMode
  fun gtk_cell_renderer_get_sensitive(cell : GtkCellRenderer*) : Gboolean
  fun gtk_cell_renderer_get_size(cell : GtkCellRenderer*, widget : GtkWidget*, cell_area : GdkRectangle*, x_offset : Gint*, y_offset : Gint*, width : Gint*, height : Gint*)
  fun gtk_cell_renderer_get_state(cell : GtkCellRenderer*, widget : GtkWidget*, cell_state : GtkCellRendererState) : GtkStateFlags
  fun gtk_cell_renderer_get_type : GType
  fun gtk_cell_renderer_get_visible(cell : GtkCellRenderer*) : Gboolean
  fun gtk_cell_renderer_is_activatable(cell : GtkCellRenderer*) : Gboolean
  fun gtk_cell_renderer_mode_get_type : GType
  fun gtk_cell_renderer_pixbuf_get_type : GType
  fun gtk_cell_renderer_pixbuf_new : GtkCellRenderer*
  fun gtk_cell_renderer_progress_get_type : GType
  fun gtk_cell_renderer_progress_new : GtkCellRenderer*
  fun gtk_cell_renderer_render(cell : GtkCellRenderer*, cr : CairoT, widget : GtkWidget*, background_area : GdkRectangle*, cell_area : GdkRectangle*, flags : GtkCellRendererState)
  fun gtk_cell_renderer_set_alignment(cell : GtkCellRenderer*, xalign : Gfloat, yalign : Gfloat)
  fun gtk_cell_renderer_set_fixed_size(cell : GtkCellRenderer*, width : Gint, height : Gint)
  fun gtk_cell_renderer_set_padding(cell : GtkCellRenderer*, xpad : Gint, ypad : Gint)
  fun gtk_cell_renderer_set_sensitive(cell : GtkCellRenderer*, sensitive : Gboolean)
  fun gtk_cell_renderer_set_visible(cell : GtkCellRenderer*, visible : Gboolean)
  fun gtk_cell_renderer_spin_get_type : GType
  fun gtk_cell_renderer_spin_new : GtkCellRenderer*
  fun gtk_cell_renderer_spinner_get_type : GType
  fun gtk_cell_renderer_spinner_new : GtkCellRenderer*
  fun gtk_cell_renderer_start_editing(cell : GtkCellRenderer*, event : GdkEvent*, widget : GtkWidget*, path : Gchar*, background_area : GdkRectangle*, cell_area : GdkRectangle*, flags : GtkCellRendererState) : GtkCellEditable
  fun gtk_cell_renderer_state_get_type : GType
  fun gtk_cell_renderer_stop_editing(cell : GtkCellRenderer*, canceled : Gboolean)
  fun gtk_cell_renderer_text_get_type : GType
  fun gtk_cell_renderer_text_new : GtkCellRenderer*
  fun gtk_cell_renderer_text_set_fixed_height_from_font(renderer : GtkCellRendererText*, number_of_rows : Gint)
  fun gtk_cell_renderer_toggle_get_activatable(toggle : GtkCellRendererToggle*) : Gboolean
  fun gtk_cell_renderer_toggle_get_active(toggle : GtkCellRendererToggle*) : Gboolean
  fun gtk_cell_renderer_toggle_get_radio(toggle : GtkCellRendererToggle*) : Gboolean
  fun gtk_cell_renderer_toggle_get_type : GType
  fun gtk_cell_renderer_toggle_new : GtkCellRenderer*
  fun gtk_cell_renderer_toggle_set_activatable(toggle : GtkCellRendererToggle*, setting : Gboolean)
  fun gtk_cell_renderer_toggle_set_active(toggle : GtkCellRendererToggle*, setting : Gboolean)
  fun gtk_cell_renderer_toggle_set_radio(toggle : GtkCellRendererToggle*, radio : Gboolean)
  fun gtk_cell_view_get_displayed_row(cell_view : GtkCellView*) : GtkTreePath
  fun gtk_cell_view_get_draw_sensitive(cell_view : GtkCellView*) : Gboolean
  fun gtk_cell_view_get_fit_model(cell_view : GtkCellView*) : Gboolean
  fun gtk_cell_view_get_model(cell_view : GtkCellView*) : GtkTreeModel
  fun gtk_cell_view_get_size_of_row(cell_view : GtkCellView*, path : GtkTreePath, requisition : GtkRequisition*) : Gboolean
  fun gtk_cell_view_get_type : GType
  fun gtk_cell_view_new : GtkWidget*
  fun gtk_cell_view_new_with_context(area : GtkCellArea*, context : GtkCellAreaContext*) : GtkWidget*
  fun gtk_cell_view_new_with_markup(markup : Gchar*) : GtkWidget*
  fun gtk_cell_view_new_with_pixbuf(pixbuf : GdkPixbuf) : GtkWidget*
  fun gtk_cell_view_new_with_text(text : Gchar*) : GtkWidget*
  fun gtk_cell_view_set_background_color(cell_view : GtkCellView*, color : GdkColor*)
  fun gtk_cell_view_set_background_rgba(cell_view : GtkCellView*, rgba : GdkRgba*)
  fun gtk_cell_view_set_displayed_row(cell_view : GtkCellView*, path : GtkTreePath)
  fun gtk_cell_view_set_draw_sensitive(cell_view : GtkCellView*, draw_sensitive : Gboolean)
  fun gtk_cell_view_set_fit_model(cell_view : GtkCellView*, fit_model : Gboolean)
  fun gtk_cell_view_set_model(cell_view : GtkCellView*, model : GtkTreeModel)
  fun gtk_check_button_get_type : GType
  fun gtk_check_button_new : GtkWidget*
  fun gtk_check_button_new_with_label(label : Gchar*) : GtkWidget*
  fun gtk_check_button_new_with_mnemonic(label : Gchar*) : GtkWidget*
  fun gtk_check_menu_item_get_active(check_menu_item : GtkCheckMenuItem*) : Gboolean
  fun gtk_check_menu_item_get_draw_as_radio(check_menu_item : GtkCheckMenuItem*) : Gboolean
  fun gtk_check_menu_item_get_inconsistent(check_menu_item : GtkCheckMenuItem*) : Gboolean
  fun gtk_check_menu_item_get_type : GType
  fun gtk_check_menu_item_new : GtkWidget*
  fun gtk_check_menu_item_new_with_label(label : Gchar*) : GtkWidget*
  fun gtk_check_menu_item_new_with_mnemonic(label : Gchar*) : GtkWidget*
  fun gtk_check_menu_item_set_active(check_menu_item : GtkCheckMenuItem*, is_active : Gboolean)
  fun gtk_check_menu_item_set_draw_as_radio(check_menu_item : GtkCheckMenuItem*, draw_as_radio : Gboolean)
  fun gtk_check_menu_item_set_inconsistent(check_menu_item : GtkCheckMenuItem*, setting : Gboolean)
  fun gtk_check_menu_item_toggled(check_menu_item : GtkCheckMenuItem*)
  fun gtk_check_version(required_major : Guint, required_minor : Guint, required_micro : Guint) : Gchar*
  fun gtk_clipboard_clear(clipboard : GtkClipboard)
  fun gtk_clipboard_get(selection : GdkAtom) : GtkClipboard
  fun gtk_clipboard_get_default(display : GdkDisplay) : GtkClipboard
  fun gtk_clipboard_get_display(clipboard : GtkClipboard) : GdkDisplay
  fun gtk_clipboard_get_for_display(display : GdkDisplay, selection : GdkAtom) : GtkClipboard
  fun gtk_clipboard_get_owner(clipboard : GtkClipboard) : GObject*
  fun gtk_clipboard_get_type : GType
  fun gtk_clipboard_request_contents(clipboard : GtkClipboard, target : GdkAtom, callback : GtkClipboardReceivedFunc, user_data : Gpointer)
  fun gtk_clipboard_request_image(clipboard : GtkClipboard, callback : GtkClipboardImageReceivedFunc, user_data : Gpointer)
  fun gtk_clipboard_request_rich_text(clipboard : GtkClipboard, buffer : GtkTextBuffer*, callback : GtkClipboardRichTextReceivedFunc, user_data : Gpointer)
  fun gtk_clipboard_request_targets(clipboard : GtkClipboard, callback : GtkClipboardTargetsReceivedFunc, user_data : Gpointer)
  fun gtk_clipboard_request_text(clipboard : GtkClipboard, callback : GtkClipboardTextReceivedFunc, user_data : Gpointer)
  fun gtk_clipboard_request_uris(clipboard : GtkClipboard, callback : GtkClipboardUriReceivedFunc, user_data : Gpointer)
  fun gtk_clipboard_set_can_store(clipboard : GtkClipboard, targets : GtkTargetEntry*, n_targets : Gint)
  fun gtk_clipboard_set_image(clipboard : GtkClipboard, pixbuf : GdkPixbuf)
  fun gtk_clipboard_set_text(clipboard : GtkClipboard, text : Gchar*, len : Gint)
  fun gtk_clipboard_set_with_data(clipboard : GtkClipboard, targets : GtkTargetEntry*, n_targets : Guint, get_func : GtkClipboardGetFunc, clear_func : GtkClipboardClearFunc, user_data : Gpointer) : Gboolean
  fun gtk_clipboard_set_with_owner(clipboard : GtkClipboard, targets : GtkTargetEntry*, n_targets : Guint, get_func : GtkClipboardGetFunc, clear_func : GtkClipboardClearFunc, owner : GObject*) : Gboolean
  fun gtk_clipboard_store(clipboard : GtkClipboard)
  fun gtk_clipboard_wait_for_contents(clipboard : GtkClipboard, target : GdkAtom) : GtkSelectionData
  fun gtk_clipboard_wait_for_image(clipboard : GtkClipboard) : GdkPixbuf
  fun gtk_clipboard_wait_for_rich_text(clipboard : GtkClipboard, buffer : GtkTextBuffer*, format : GdkAtom*, length : Gsize*) : Guint8*
  fun gtk_clipboard_wait_for_targets(clipboard : GtkClipboard, targets : GdkAtom**, n_targets : Gint*) : Gboolean
  fun gtk_clipboard_wait_for_text(clipboard : GtkClipboard) : Gchar*
  fun gtk_clipboard_wait_for_uris(clipboard : GtkClipboard) : Gchar**
  fun gtk_clipboard_wait_is_image_available(clipboard : GtkClipboard) : Gboolean
  fun gtk_clipboard_wait_is_rich_text_available(clipboard : GtkClipboard, buffer : GtkTextBuffer*) : Gboolean
  fun gtk_clipboard_wait_is_target_available(clipboard : GtkClipboard, target : GdkAtom) : Gboolean
  fun gtk_clipboard_wait_is_text_available(clipboard : GtkClipboard) : Gboolean
  fun gtk_clipboard_wait_is_uris_available(clipboard : GtkClipboard) : Gboolean
  fun gtk_color_button_get_alpha(button : GtkColorButton*) : Guint16
  fun gtk_color_button_get_color(button : GtkColorButton*, color : GdkColor*)
  fun gtk_color_button_get_rgba(button : GtkColorButton*, rgba : GdkRgba*)
  fun gtk_color_button_get_title(button : GtkColorButton*) : Gchar*
  fun gtk_color_button_get_type : GType
  fun gtk_color_button_get_use_alpha(button : GtkColorButton*) : Gboolean
  fun gtk_color_button_new : GtkWidget*
  fun gtk_color_button_new_with_color(color : GdkColor*) : GtkWidget*
  fun gtk_color_button_new_with_rgba(rgba : GdkRgba*) : GtkWidget*
  fun gtk_color_button_set_alpha(button : GtkColorButton*, alpha : Guint16)
  fun gtk_color_button_set_color(button : GtkColorButton*, color : GdkColor*)
  fun gtk_color_button_set_rgba(button : GtkColorButton*, rgba : GdkRgba*)
  fun gtk_color_button_set_title(button : GtkColorButton*, title : Gchar*)
  fun gtk_color_button_set_use_alpha(button : GtkColorButton*, use_alpha : Gboolean)
  fun gtk_color_chooser_add_palette(chooser : GtkColorChooser, orientation : GtkOrientation, colors_per_line : Gint, n_colors : Gint, colors : GdkRgba*)
  fun gtk_color_chooser_dialog_get_type : GType
  fun gtk_color_chooser_dialog_new(title : Gchar*, parent : GtkWindow*) : GtkWidget*
  fun gtk_color_chooser_get_rgba(chooser : GtkColorChooser, color : GdkRgba*)
  fun gtk_color_chooser_get_type : GType
  fun gtk_color_chooser_get_use_alpha(chooser : GtkColorChooser) : Gboolean
  fun gtk_color_chooser_set_rgba(chooser : GtkColorChooser, color : GdkRgba*)
  fun gtk_color_chooser_set_use_alpha(chooser : GtkColorChooser, use_alpha : Gboolean)
  fun gtk_color_chooser_widget_get_type : GType
  fun gtk_color_chooser_widget_new : GtkWidget*
  fun gtk_color_selection_dialog_get_color_selection(colorsel : GtkColorSelectionDialog*) : GtkWidget*
  fun gtk_color_selection_dialog_get_type : GType
  fun gtk_color_selection_dialog_new(title : Gchar*) : GtkWidget*
  fun gtk_color_selection_get_current_alpha(colorsel : GtkColorSelection*) : Guint16
  fun gtk_color_selection_get_current_color(colorsel : GtkColorSelection*, color : GdkColor*)
  fun gtk_color_selection_get_current_rgba(colorsel : GtkColorSelection*, rgba : GdkRgba*)
  fun gtk_color_selection_get_has_opacity_control(colorsel : GtkColorSelection*) : Gboolean
  fun gtk_color_selection_get_has_palette(colorsel : GtkColorSelection*) : Gboolean
  fun gtk_color_selection_get_previous_alpha(colorsel : GtkColorSelection*) : Guint16
  fun gtk_color_selection_get_previous_color(colorsel : GtkColorSelection*, color : GdkColor*)
  fun gtk_color_selection_get_previous_rgba(colorsel : GtkColorSelection*, rgba : GdkRgba*)
  fun gtk_color_selection_get_type : GType
  fun gtk_color_selection_is_adjusting(colorsel : GtkColorSelection*) : Gboolean
  fun gtk_color_selection_new : GtkWidget*
  fun gtk_color_selection_palette_from_string(str : Gchar*, colors : GdkColor**, n_colors : Gint*) : Gboolean
  fun gtk_color_selection_palette_to_string(colors : GdkColor*, n_colors : Gint) : Gchar*
  fun gtk_color_selection_set_change_palette_with_screen_hook(func : GtkColorSelectionChangePaletteWithScreenFunc) : GtkColorSelectionChangePaletteWithScreenFunc
  fun gtk_color_selection_set_current_alpha(colorsel : GtkColorSelection*, alpha : Guint16)
  fun gtk_color_selection_set_current_color(colorsel : GtkColorSelection*, color : GdkColor*)
  fun gtk_color_selection_set_current_rgba(colorsel : GtkColorSelection*, rgba : GdkRgba*)
  fun gtk_color_selection_set_has_opacity_control(colorsel : GtkColorSelection*, has_opacity : Gboolean)
  fun gtk_color_selection_set_has_palette(colorsel : GtkColorSelection*, has_palette : Gboolean)
  fun gtk_color_selection_set_previous_alpha(colorsel : GtkColorSelection*, alpha : Guint16)
  fun gtk_color_selection_set_previous_color(colorsel : GtkColorSelection*, color : GdkColor*)
  fun gtk_color_selection_set_previous_rgba(colorsel : GtkColorSelection*, rgba : GdkRgba*)
  fun gtk_combo_box_get_active(combo_box : GtkComboBox*) : Gint
  fun gtk_combo_box_get_active_id(combo_box : GtkComboBox*) : Gchar*
  fun gtk_combo_box_get_active_iter(combo_box : GtkComboBox*, iter : GtkTreeIter*) : Gboolean
  fun gtk_combo_box_get_add_tearoffs(combo_box : GtkComboBox*) : Gboolean
  fun gtk_combo_box_get_button_sensitivity(combo_box : GtkComboBox*) : GtkSensitivityType
  fun gtk_combo_box_get_column_span_column(combo_box : GtkComboBox*) : Gint
  fun gtk_combo_box_get_entry_text_column(combo_box : GtkComboBox*) : Gint
  fun gtk_combo_box_get_focus_on_click(combo : GtkComboBox*) : Gboolean
  fun gtk_combo_box_get_has_entry(combo_box : GtkComboBox*) : Gboolean
  fun gtk_combo_box_get_id_column(combo_box : GtkComboBox*) : Gint
  fun gtk_combo_box_get_model(combo_box : GtkComboBox*) : GtkTreeModel
  fun gtk_combo_box_get_popup_accessible(combo_box : GtkComboBox*) : AtkObject*
  fun gtk_combo_box_get_popup_fixed_width(combo_box : GtkComboBox*) : Gboolean
  fun gtk_combo_box_get_row_separator_func(combo_box : GtkComboBox*) : GtkTreeViewRowSeparatorFunc
  fun gtk_combo_box_get_row_span_column(combo_box : GtkComboBox*) : Gint
  fun gtk_combo_box_get_title(combo_box : GtkComboBox*) : Gchar*
  fun gtk_combo_box_get_type : GType
  fun gtk_combo_box_get_wrap_width(combo_box : GtkComboBox*) : Gint
  fun gtk_combo_box_new : GtkWidget*
  fun gtk_combo_box_new_with_area(area : GtkCellArea*) : GtkWidget*
  fun gtk_combo_box_new_with_area_and_entry(area : GtkCellArea*) : GtkWidget*
  fun gtk_combo_box_new_with_entry : GtkWidget*
  fun gtk_combo_box_new_with_model(model : GtkTreeModel) : GtkWidget*
  fun gtk_combo_box_new_with_model_and_entry(model : GtkTreeModel) : GtkWidget*
  fun gtk_combo_box_popdown(combo_box : GtkComboBox*)
  fun gtk_combo_box_popup(combo_box : GtkComboBox*)
  fun gtk_combo_box_popup_for_device(combo_box : GtkComboBox*, device : GdkDevice)
  fun gtk_combo_box_set_active(combo_box : GtkComboBox*, index_ : Gint)
  fun gtk_combo_box_set_active_id(combo_box : GtkComboBox*, active_id : Gchar*) : Gboolean
  fun gtk_combo_box_set_active_iter(combo_box : GtkComboBox*, iter : GtkTreeIter*)
  fun gtk_combo_box_set_add_tearoffs(combo_box : GtkComboBox*, add_tearoffs : Gboolean)
  fun gtk_combo_box_set_button_sensitivity(combo_box : GtkComboBox*, sensitivity : GtkSensitivityType)
  fun gtk_combo_box_set_column_span_column(combo_box : GtkComboBox*, column_span : Gint)
  fun gtk_combo_box_set_entry_text_column(combo_box : GtkComboBox*, text_column : Gint)
  fun gtk_combo_box_set_focus_on_click(combo : GtkComboBox*, focus_on_click : Gboolean)
  fun gtk_combo_box_set_id_column(combo_box : GtkComboBox*, id_column : Gint)
  fun gtk_combo_box_set_model(combo_box : GtkComboBox*, model : GtkTreeModel)
  fun gtk_combo_box_set_popup_fixed_width(combo_box : GtkComboBox*, fixed : Gboolean)
  fun gtk_combo_box_set_row_separator_func(combo_box : GtkComboBox*, func : GtkTreeViewRowSeparatorFunc, data : Gpointer, destroy : GDestroyNotify)
  fun gtk_combo_box_set_row_span_column(combo_box : GtkComboBox*, row_span : Gint)
  fun gtk_combo_box_set_title(combo_box : GtkComboBox*, title : Gchar*)
  fun gtk_combo_box_set_wrap_width(combo_box : GtkComboBox*, width : Gint)
  fun gtk_combo_box_text_append(combo_box : GtkComboBoxText*, id : Gchar*, text : Gchar*)
  fun gtk_combo_box_text_append_text(combo_box : GtkComboBoxText*, text : Gchar*)
  fun gtk_combo_box_text_get_active_text(combo_box : GtkComboBoxText*) : Gchar*
  fun gtk_combo_box_text_get_type : GType
  fun gtk_combo_box_text_insert(combo_box : GtkComboBoxText*, position : Gint, id : Gchar*, text : Gchar*)
  fun gtk_combo_box_text_insert_text(combo_box : GtkComboBoxText*, position : Gint, text : Gchar*)
  fun gtk_combo_box_text_new : GtkWidget*
  fun gtk_combo_box_text_new_with_entry : GtkWidget*
  fun gtk_combo_box_text_prepend(combo_box : GtkComboBoxText*, id : Gchar*, text : Gchar*)
  fun gtk_combo_box_text_prepend_text(combo_box : GtkComboBoxText*, text : Gchar*)
  fun gtk_combo_box_text_remove(combo_box : GtkComboBoxText*, position : Gint)
  fun gtk_combo_box_text_remove_all(combo_box : GtkComboBoxText*)
  fun gtk_container_add(container : GtkContainer*, widget : GtkWidget*)
  fun gtk_container_add_with_properties(container : GtkContainer*, widget : GtkWidget*, first_prop_name : Gchar*, ...)
  fun gtk_container_check_resize(container : GtkContainer*)
  fun gtk_container_child_get(container : GtkContainer*, child : GtkWidget*, first_prop_name : Gchar*, ...)
  fun gtk_container_child_get_property(container : GtkContainer*, child : GtkWidget*, property_name : Gchar*, value : GValue*)
  fun gtk_container_child_get_valist(container : GtkContainer*, child : GtkWidget*, first_property_name : Gchar*, var_args : VaList)
  fun gtk_container_child_notify(container : GtkContainer*, child : GtkWidget*, child_property : Gchar*)
  fun gtk_container_child_notify_by_pspec(container : GtkContainer*, child : GtkWidget*, pspec : GParamSpec*)
  fun gtk_container_child_set(container : GtkContainer*, child : GtkWidget*, first_prop_name : Gchar*, ...)
  fun gtk_container_child_set_property(container : GtkContainer*, child : GtkWidget*, property_name : Gchar*, value : GValue*)
  fun gtk_container_child_set_valist(container : GtkContainer*, child : GtkWidget*, first_property_name : Gchar*, var_args : VaList)
  fun gtk_container_child_type(container : GtkContainer*) : GType
  fun gtk_container_class_find_child_property(cclass : GObjectClass*, property_name : Gchar*) : GParamSpec*
  fun gtk_container_class_handle_border_width(klass : GtkContainerClass*)
  fun gtk_container_class_install_child_properties(cclass : GtkContainerClass*, n_pspecs : Guint, pspecs : GParamSpec**)
  fun gtk_container_class_install_child_property(cclass : GtkContainerClass*, property_id : Guint, pspec : GParamSpec*)
  fun gtk_container_class_list_child_properties(cclass : GObjectClass*, n_properties : Guint*) : GParamSpec**
  fun gtk_container_forall(container : GtkContainer*, callback : GtkCallback, callback_data : Gpointer)
  fun gtk_container_foreach(container : GtkContainer*, callback : GtkCallback, callback_data : Gpointer)
  fun gtk_container_get_border_width(container : GtkContainer*) : Guint
  fun gtk_container_get_children(container : GtkContainer*) : GList*
  fun gtk_container_get_focus_chain(container : GtkContainer*, focusable_widgets : GList**) : Gboolean
  fun gtk_container_get_focus_child(container : GtkContainer*) : GtkWidget*
  fun gtk_container_get_focus_hadjustment(container : GtkContainer*) : GtkAdjustment*
  fun gtk_container_get_focus_vadjustment(container : GtkContainer*) : GtkAdjustment*
  fun gtk_container_get_path_for_child(container : GtkContainer*, child : GtkWidget*) : GtkWidgetPath
  fun gtk_container_get_resize_mode(container : GtkContainer*) : GtkResizeMode
  fun gtk_container_get_type : GType
  fun gtk_container_propagate_draw(container : GtkContainer*, child : GtkWidget*, cr : CairoT)
  fun gtk_container_remove(container : GtkContainer*, widget : GtkWidget*)
  fun gtk_container_resize_children(container : GtkContainer*)
  fun gtk_container_set_border_width(container : GtkContainer*, border_width : Guint)
  fun gtk_container_set_focus_chain(container : GtkContainer*, focusable_widgets : GList*)
  fun gtk_container_set_focus_child(container : GtkContainer*, child : GtkWidget*)
  fun gtk_container_set_focus_hadjustment(container : GtkContainer*, adjustment : GtkAdjustment*)
  fun gtk_container_set_focus_vadjustment(container : GtkContainer*, adjustment : GtkAdjustment*)
  fun gtk_container_set_reallocate_redraws(container : GtkContainer*, needs_redraws : Gboolean)
  fun gtk_container_set_resize_mode(container : GtkContainer*, resize_mode : GtkResizeMode)
  fun gtk_container_unset_focus_chain(container : GtkContainer*)
  fun gtk_corner_type_get_type : GType
  fun gtk_css_provider_error_get_type : GType
  fun gtk_css_provider_error_quark : GQuark
  fun gtk_css_provider_get_default : GtkCssProvider*
  fun gtk_css_provider_get_named(name : Gchar*, variant : Gchar*) : GtkCssProvider*
  fun gtk_css_provider_get_type : GType
  fun gtk_css_provider_load_from_data(css_provider : GtkCssProvider*, data : Gchar*, length : Gssize, error : GError**) : Gboolean
  fun gtk_css_provider_load_from_file(css_provider : GtkCssProvider*, file : GFile, error : GError**) : Gboolean
  fun gtk_css_provider_load_from_path(css_provider : GtkCssProvider*, path : Gchar*, error : GError**) : Gboolean
  fun gtk_css_provider_load_from_resource(css_provider : GtkCssProvider*, resource_path : Gchar*)
  fun gtk_css_provider_new : GtkCssProvider*
  fun gtk_css_provider_to_string(provider : GtkCssProvider*) : LibC::Char*
  fun gtk_css_section_get_end_line(section : GtkCssSection) : Guint
  fun gtk_css_section_get_end_position(section : GtkCssSection) : Guint
  fun gtk_css_section_get_file(section : GtkCssSection) : GFile
  fun gtk_css_section_get_parent(section : GtkCssSection) : GtkCssSection
  fun gtk_css_section_get_section_type(section : GtkCssSection) : GtkCssSectionType
  fun gtk_css_section_get_start_line(section : GtkCssSection) : Guint
  fun gtk_css_section_get_start_position(section : GtkCssSection) : Guint
  fun gtk_css_section_get_type : GType
  fun gtk_css_section_ref(section : GtkCssSection) : GtkCssSection
  fun gtk_css_section_type_get_type : GType
  fun gtk_css_section_unref(section : GtkCssSection)
  fun gtk_debug_flag_get_type : GType
  fun gtk_delete_type_get_type : GType
  fun gtk_dest_defaults_get_type : GType
  fun gtk_device_grab_add(widget : GtkWidget*, device : GdkDevice, block_others : Gboolean)
  fun gtk_device_grab_remove(widget : GtkWidget*, device : GdkDevice)
  fun gtk_dialog_add_action_widget(dialog : GtkDialog*, child : GtkWidget*, response_id : Gint)
  fun gtk_dialog_add_button(dialog : GtkDialog*, button_text : Gchar*, response_id : Gint) : GtkWidget*
  fun gtk_dialog_add_buttons(dialog : GtkDialog*, first_button_text : Gchar*, ...)
  fun gtk_dialog_flags_get_type : GType
  fun gtk_dialog_get_action_area(dialog : GtkDialog*) : GtkWidget*
  fun gtk_dialog_get_content_area(dialog : GtkDialog*) : GtkWidget*
  fun gtk_dialog_get_header_bar(dialog : GtkDialog*) : GtkWidget*
  fun gtk_dialog_get_response_for_widget(dialog : GtkDialog*, widget : GtkWidget*) : Gint
  fun gtk_dialog_get_type : GType
  fun gtk_dialog_get_widget_for_response(dialog : GtkDialog*, response_id : Gint) : GtkWidget*
  fun gtk_dialog_new : GtkWidget*
  fun gtk_dialog_new_with_buttons(title : Gchar*, parent : GtkWindow*, flags : GtkDialogFlags, first_button_text : Gchar*, ...) : GtkWidget*
  fun gtk_dialog_response(dialog : GtkDialog*, response_id : Gint)
  fun gtk_dialog_run(dialog : GtkDialog*) : Gint
  fun gtk_dialog_set_alternative_button_order(dialog : GtkDialog*, first_response_id : Gint, ...)
  fun gtk_dialog_set_alternative_button_order_from_array(dialog : GtkDialog*, n_params : Gint, new_order : Gint*)
  fun gtk_dialog_set_default_response(dialog : GtkDialog*, response_id : Gint)
  fun gtk_dialog_set_response_sensitive(dialog : GtkDialog*, response_id : Gint, setting : Gboolean)
  fun gtk_direction_type_get_type : GType
  fun gtk_disable_setlocale
  fun gtk_distribute_natural_allocation(extra_space : Gint, n_requested_sizes : Guint, sizes : GtkRequestedSize*) : Gint
  fun gtk_drag_begin(widget : GtkWidget*, targets : GtkTargetList, actions : GdkDragAction, button : Gint, event : GdkEvent*) : GdkDragContext
  fun gtk_drag_begin_with_coordinates(widget : GtkWidget*, targets : GtkTargetList, actions : GdkDragAction, button : Gint, event : GdkEvent*, x : Gint, y : Gint) : GdkDragContext
  fun gtk_drag_cancel(context : GdkDragContext)
  fun gtk_drag_check_threshold(widget : GtkWidget*, start_x : Gint, start_y : Gint, current_x : Gint, current_y : Gint) : Gboolean
  fun gtk_drag_dest_add_image_targets(widget : GtkWidget*)
  fun gtk_drag_dest_add_text_targets(widget : GtkWidget*)
  fun gtk_drag_dest_add_uri_targets(widget : GtkWidget*)
  fun gtk_drag_dest_find_target(widget : GtkWidget*, context : GdkDragContext, target_list : GtkTargetList) : GdkAtom
  fun gtk_drag_dest_get_target_list(widget : GtkWidget*) : GtkTargetList
  fun gtk_drag_dest_get_track_motion(widget : GtkWidget*) : Gboolean
  fun gtk_drag_dest_set(widget : GtkWidget*, flags : GtkDestDefaults, targets : GtkTargetEntry*, n_targets : Gint, actions : GdkDragAction)
  fun gtk_drag_dest_set_proxy(widget : GtkWidget*, proxy_window : GdkWindow, protocol : GdkDragProtocol, use_coordinates : Gboolean)
  fun gtk_drag_dest_set_target_list(widget : GtkWidget*, target_list : GtkTargetList)
  fun gtk_drag_dest_set_track_motion(widget : GtkWidget*, track_motion : Gboolean)
  fun gtk_drag_dest_unset(widget : GtkWidget*)
  fun gtk_drag_finish(context : GdkDragContext, success : Gboolean, del : Gboolean, time_ : Guint32)
  fun gtk_drag_get_data(widget : GtkWidget*, context : GdkDragContext, target : GdkAtom, time_ : Guint32)
  fun gtk_drag_get_source_widget(context : GdkDragContext) : GtkWidget*
  fun gtk_drag_highlight(widget : GtkWidget*)
  fun gtk_drag_result_get_type : GType
  fun gtk_drag_set_icon_default(context : GdkDragContext)
  fun gtk_drag_set_icon_gicon(context : GdkDragContext, icon : GIcon, hot_x : Gint, hot_y : Gint)
  fun gtk_drag_set_icon_name(context : GdkDragContext, icon_name : Gchar*, hot_x : Gint, hot_y : Gint)
  fun gtk_drag_set_icon_pixbuf(context : GdkDragContext, pixbuf : GdkPixbuf, hot_x : Gint, hot_y : Gint)
  fun gtk_drag_set_icon_stock(context : GdkDragContext, stock_id : Gchar*, hot_x : Gint, hot_y : Gint)
  fun gtk_drag_set_icon_surface(context : GdkDragContext, surface : CairoSurfaceT)
  fun gtk_drag_set_icon_widget(context : GdkDragContext, widget : GtkWidget*, hot_x : Gint, hot_y : Gint)
  fun gtk_drag_source_add_image_targets(widget : GtkWidget*)
  fun gtk_drag_source_add_text_targets(widget : GtkWidget*)
  fun gtk_drag_source_add_uri_targets(widget : GtkWidget*)
  fun gtk_drag_source_get_target_list(widget : GtkWidget*) : GtkTargetList
  fun gtk_drag_source_set(widget : GtkWidget*, start_button_mask : GdkModifierType, targets : GtkTargetEntry*, n_targets : Gint, actions : GdkDragAction)
  fun gtk_drag_source_set_icon_gicon(widget : GtkWidget*, icon : GIcon)
  fun gtk_drag_source_set_icon_name(widget : GtkWidget*, icon_name : Gchar*)
  fun gtk_drag_source_set_icon_pixbuf(widget : GtkWidget*, pixbuf : GdkPixbuf)
  fun gtk_drag_source_set_icon_stock(widget : GtkWidget*, stock_id : Gchar*)
  fun gtk_drag_source_set_target_list(widget : GtkWidget*, target_list : GtkTargetList)
  fun gtk_drag_source_unset(widget : GtkWidget*)
  fun gtk_drag_unhighlight(widget : GtkWidget*)
  fun gtk_draw_insertion_cursor(widget : GtkWidget*, cr : CairoT, location : GdkRectangle*, is_primary : Gboolean, direction : GtkTextDirection, draw_arrow : Gboolean)
  fun gtk_drawing_area_get_type : GType
  fun gtk_drawing_area_new : GtkWidget*
  fun gtk_editable_copy_clipboard(editable : GtkEditable)
  fun gtk_editable_cut_clipboard(editable : GtkEditable)
  fun gtk_editable_delete_selection(editable : GtkEditable)
  fun gtk_editable_delete_text(editable : GtkEditable, start_pos : Gint, end_pos : Gint)
  fun gtk_editable_get_chars(editable : GtkEditable, start_pos : Gint, end_pos : Gint) : Gchar*
  fun gtk_editable_get_editable(editable : GtkEditable) : Gboolean
  fun gtk_editable_get_position(editable : GtkEditable) : Gint
  fun gtk_editable_get_selection_bounds(editable : GtkEditable, start_pos : Gint*, end_pos : Gint*) : Gboolean
  fun gtk_editable_get_type : GType
  fun gtk_editable_insert_text(editable : GtkEditable, new_text : Gchar*, new_text_length : Gint, position : Gint*)
  fun gtk_editable_paste_clipboard(editable : GtkEditable)
  fun gtk_editable_select_region(editable : GtkEditable, start_pos : Gint, end_pos : Gint)
  fun gtk_editable_set_editable(editable : GtkEditable, is_editable : Gboolean)
  fun gtk_editable_set_position(editable : GtkEditable, position : Gint)
  fun gtk_entry_buffer_delete_text(buffer : GtkEntryBuffer*, position : Guint, n_chars : Gint) : Guint
  fun gtk_entry_buffer_emit_deleted_text(buffer : GtkEntryBuffer*, position : Guint, n_chars : Guint)
  fun gtk_entry_buffer_emit_inserted_text(buffer : GtkEntryBuffer*, position : Guint, chars : Gchar*, n_chars : Guint)
  fun gtk_entry_buffer_get_bytes(buffer : GtkEntryBuffer*) : Gsize
  fun gtk_entry_buffer_get_length(buffer : GtkEntryBuffer*) : Guint
  fun gtk_entry_buffer_get_max_length(buffer : GtkEntryBuffer*) : Gint
  fun gtk_entry_buffer_get_text(buffer : GtkEntryBuffer*) : Gchar*
  fun gtk_entry_buffer_get_type : GType
  fun gtk_entry_buffer_insert_text(buffer : GtkEntryBuffer*, position : Guint, chars : Gchar*, n_chars : Gint) : Guint
  fun gtk_entry_buffer_new(initial_chars : Gchar*, n_initial_chars : Gint) : GtkEntryBuffer*
  fun gtk_entry_buffer_set_max_length(buffer : GtkEntryBuffer*, max_length : Gint)
  fun gtk_entry_buffer_set_text(buffer : GtkEntryBuffer*, chars : Gchar*, n_chars : Gint)
  fun gtk_entry_completion_complete(completion : GtkEntryCompletion*)
  fun gtk_entry_completion_compute_prefix(completion : GtkEntryCompletion*, key : LibC::Char*) : Gchar*
  fun gtk_entry_completion_delete_action(completion : GtkEntryCompletion*, index_ : Gint)
  fun gtk_entry_completion_get_completion_prefix(completion : GtkEntryCompletion*) : Gchar*
  fun gtk_entry_completion_get_entry(completion : GtkEntryCompletion*) : GtkWidget*
  fun gtk_entry_completion_get_inline_completion(completion : GtkEntryCompletion*) : Gboolean
  fun gtk_entry_completion_get_inline_selection(completion : GtkEntryCompletion*) : Gboolean
  fun gtk_entry_completion_get_minimum_key_length(completion : GtkEntryCompletion*) : Gint
  fun gtk_entry_completion_get_model(completion : GtkEntryCompletion*) : GtkTreeModel
  fun gtk_entry_completion_get_popup_completion(completion : GtkEntryCompletion*) : Gboolean
  fun gtk_entry_completion_get_popup_set_width(completion : GtkEntryCompletion*) : Gboolean
  fun gtk_entry_completion_get_popup_single_match(completion : GtkEntryCompletion*) : Gboolean
  fun gtk_entry_completion_get_text_column(completion : GtkEntryCompletion*) : Gint
  fun gtk_entry_completion_get_type : GType
  fun gtk_entry_completion_insert_action_markup(completion : GtkEntryCompletion*, index_ : Gint, markup : Gchar*)
  fun gtk_entry_completion_insert_action_text(completion : GtkEntryCompletion*, index_ : Gint, text : Gchar*)
  fun gtk_entry_completion_insert_prefix(completion : GtkEntryCompletion*)
  fun gtk_entry_completion_new : GtkEntryCompletion*
  fun gtk_entry_completion_new_with_area(area : GtkCellArea*) : GtkEntryCompletion*
  fun gtk_entry_completion_set_inline_completion(completion : GtkEntryCompletion*, inline_completion : Gboolean)
  fun gtk_entry_completion_set_inline_selection(completion : GtkEntryCompletion*, inline_selection : Gboolean)
  fun gtk_entry_completion_set_match_func(completion : GtkEntryCompletion*, func : GtkEntryCompletionMatchFunc, func_data : Gpointer, func_notify : GDestroyNotify)
  fun gtk_entry_completion_set_minimum_key_length(completion : GtkEntryCompletion*, length : Gint)
  fun gtk_entry_completion_set_model(completion : GtkEntryCompletion*, model : GtkTreeModel)
  fun gtk_entry_completion_set_popup_completion(completion : GtkEntryCompletion*, popup_completion : Gboolean)
  fun gtk_entry_completion_set_popup_set_width(completion : GtkEntryCompletion*, popup_set_width : Gboolean)
  fun gtk_entry_completion_set_popup_single_match(completion : GtkEntryCompletion*, popup_single_match : Gboolean)
  fun gtk_entry_completion_set_text_column(completion : GtkEntryCompletion*, column : Gint)
  fun gtk_entry_get_activates_default(entry : GtkEntry*) : Gboolean
  fun gtk_entry_get_alignment(entry : GtkEntry*) : Gfloat
  fun gtk_entry_get_attributes(entry : GtkEntry*) : PangoAttrList
  fun gtk_entry_get_buffer(entry : GtkEntry*) : GtkEntryBuffer*
  fun gtk_entry_get_completion(entry : GtkEntry*) : GtkEntryCompletion*
  fun gtk_entry_get_current_icon_drag_source(entry : GtkEntry*) : Gint
  fun gtk_entry_get_cursor_hadjustment(entry : GtkEntry*) : GtkAdjustment*
  fun gtk_entry_get_has_frame(entry : GtkEntry*) : Gboolean
  fun gtk_entry_get_icon_activatable(entry : GtkEntry*, icon_pos : GtkEntryIconPosition) : Gboolean
  fun gtk_entry_get_icon_area(entry : GtkEntry*, icon_pos : GtkEntryIconPosition, icon_area : GdkRectangle*)
  fun gtk_entry_get_icon_at_pos(entry : GtkEntry*, x : Gint, y : Gint) : Gint
  fun gtk_entry_get_icon_gicon(entry : GtkEntry*, icon_pos : GtkEntryIconPosition) : GIcon
  fun gtk_entry_get_icon_name(entry : GtkEntry*, icon_pos : GtkEntryIconPosition) : Gchar*
  fun gtk_entry_get_icon_pixbuf(entry : GtkEntry*, icon_pos : GtkEntryIconPosition) : GdkPixbuf
  fun gtk_entry_get_icon_sensitive(entry : GtkEntry*, icon_pos : GtkEntryIconPosition) : Gboolean
  fun gtk_entry_get_icon_stock(entry : GtkEntry*, icon_pos : GtkEntryIconPosition) : Gchar*
  fun gtk_entry_get_icon_storage_type(entry : GtkEntry*, icon_pos : GtkEntryIconPosition) : GtkImageType
  fun gtk_entry_get_icon_tooltip_markup(entry : GtkEntry*, icon_pos : GtkEntryIconPosition) : Gchar*
  fun gtk_entry_get_icon_tooltip_text(entry : GtkEntry*, icon_pos : GtkEntryIconPosition) : Gchar*
  fun gtk_entry_get_inner_border(entry : GtkEntry*) : GtkBorder*
  fun gtk_entry_get_input_hints(entry : GtkEntry*) : GtkInputHints
  fun gtk_entry_get_input_purpose(entry : GtkEntry*) : GtkInputPurpose
  fun gtk_entry_get_invisible_char(entry : GtkEntry*) : Gunichar
  fun gtk_entry_get_layout(entry : GtkEntry*) : PangoLayout
  fun gtk_entry_get_layout_offsets(entry : GtkEntry*, x : Gint*, y : Gint*)
  fun gtk_entry_get_max_length(entry : GtkEntry*) : Gint
  fun gtk_entry_get_max_width_chars(entry : GtkEntry*) : Gint
  fun gtk_entry_get_overwrite_mode(entry : GtkEntry*) : Gboolean
  fun gtk_entry_get_placeholder_text(entry : GtkEntry*) : Gchar*
  fun gtk_entry_get_progress_fraction(entry : GtkEntry*) : Gdouble
  fun gtk_entry_get_progress_pulse_step(entry : GtkEntry*) : Gdouble
  fun gtk_entry_get_tabs(entry : GtkEntry*) : PangoTabArray
  fun gtk_entry_get_text(entry : GtkEntry*) : Gchar*
  fun gtk_entry_get_text_area(entry : GtkEntry*, text_area : GdkRectangle*)
  fun gtk_entry_get_text_length(entry : GtkEntry*) : Guint16
  fun gtk_entry_get_type : GType
  fun gtk_entry_get_visibility(entry : GtkEntry*) : Gboolean
  fun gtk_entry_get_width_chars(entry : GtkEntry*) : Gint
  fun gtk_entry_grab_focus_without_selecting(entry : GtkEntry*)
  fun gtk_entry_icon_position_get_type : GType
  fun gtk_entry_im_context_filter_keypress(entry : GtkEntry*, event : GdkEventKey*) : Gboolean
  fun gtk_entry_layout_index_to_text_index(entry : GtkEntry*, layout_index : Gint) : Gint
  fun gtk_entry_new : GtkWidget*
  fun gtk_entry_new_with_buffer(buffer : GtkEntryBuffer*) : GtkWidget*
  fun gtk_entry_progress_pulse(entry : GtkEntry*)
  fun gtk_entry_reset_im_context(entry : GtkEntry*)
  fun gtk_entry_set_activates_default(entry : GtkEntry*, setting : Gboolean)
  fun gtk_entry_set_alignment(entry : GtkEntry*, xalign : Gfloat)
  fun gtk_entry_set_attributes(entry : GtkEntry*, attrs : PangoAttrList)
  fun gtk_entry_set_buffer(entry : GtkEntry*, buffer : GtkEntryBuffer*)
  fun gtk_entry_set_completion(entry : GtkEntry*, completion : GtkEntryCompletion*)
  fun gtk_entry_set_cursor_hadjustment(entry : GtkEntry*, adjustment : GtkAdjustment*)
  fun gtk_entry_set_has_frame(entry : GtkEntry*, setting : Gboolean)
  fun gtk_entry_set_icon_activatable(entry : GtkEntry*, icon_pos : GtkEntryIconPosition, activatable : Gboolean)
  fun gtk_entry_set_icon_drag_source(entry : GtkEntry*, icon_pos : GtkEntryIconPosition, target_list : GtkTargetList, actions : GdkDragAction)
  fun gtk_entry_set_icon_from_gicon(entry : GtkEntry*, icon_pos : GtkEntryIconPosition, icon : GIcon)
  fun gtk_entry_set_icon_from_icon_name(entry : GtkEntry*, icon_pos : GtkEntryIconPosition, icon_name : Gchar*)
  fun gtk_entry_set_icon_from_pixbuf(entry : GtkEntry*, icon_pos : GtkEntryIconPosition, pixbuf : GdkPixbuf)
  fun gtk_entry_set_icon_from_stock(entry : GtkEntry*, icon_pos : GtkEntryIconPosition, stock_id : Gchar*)
  fun gtk_entry_set_icon_sensitive(entry : GtkEntry*, icon_pos : GtkEntryIconPosition, sensitive : Gboolean)
  fun gtk_entry_set_icon_tooltip_markup(entry : GtkEntry*, icon_pos : GtkEntryIconPosition, tooltip : Gchar*)
  fun gtk_entry_set_icon_tooltip_text(entry : GtkEntry*, icon_pos : GtkEntryIconPosition, tooltip : Gchar*)
  fun gtk_entry_set_inner_border(entry : GtkEntry*, border : GtkBorder*)
  fun gtk_entry_set_input_hints(entry : GtkEntry*, hints : GtkInputHints)
  fun gtk_entry_set_input_purpose(entry : GtkEntry*, purpose : GtkInputPurpose)
  fun gtk_entry_set_invisible_char(entry : GtkEntry*, ch : Gunichar)
  fun gtk_entry_set_max_length(entry : GtkEntry*, max : Gint)
  fun gtk_entry_set_max_width_chars(entry : GtkEntry*, n_chars : Gint)
  fun gtk_entry_set_overwrite_mode(entry : GtkEntry*, overwrite : Gboolean)
  fun gtk_entry_set_placeholder_text(entry : GtkEntry*, text : Gchar*)
  fun gtk_entry_set_progress_fraction(entry : GtkEntry*, fraction : Gdouble)
  fun gtk_entry_set_progress_pulse_step(entry : GtkEntry*, fraction : Gdouble)
  fun gtk_entry_set_tabs(entry : GtkEntry*, tabs : PangoTabArray)
  fun gtk_entry_set_text(entry : GtkEntry*, text : Gchar*)
  fun gtk_entry_set_visibility(entry : GtkEntry*, visible : Gboolean)
  fun gtk_entry_set_width_chars(entry : GtkEntry*, n_chars : Gint)
  fun gtk_entry_text_index_to_layout_index(entry : GtkEntry*, text_index : Gint) : Gint
  fun gtk_entry_unset_invisible_char(entry : GtkEntry*)
  fun gtk_event_box_get_above_child(event_box : GtkEventBox*) : Gboolean
  fun gtk_event_box_get_type : GType
  fun gtk_event_box_get_visible_window(event_box : GtkEventBox*) : Gboolean
  fun gtk_event_box_new : GtkWidget*
  fun gtk_event_box_set_above_child(event_box : GtkEventBox*, above_child : Gboolean)
  fun gtk_event_box_set_visible_window(event_box : GtkEventBox*, visible_window : Gboolean)
  fun gtk_event_controller_get_propagation_phase(controller : GtkEventController) : GtkPropagationPhase
  fun gtk_event_controller_get_type : GType
  fun gtk_event_controller_get_widget(controller : GtkEventController) : GtkWidget*
  fun gtk_event_controller_handle_event(controller : GtkEventController, event : GdkEvent*) : Gboolean
  fun gtk_event_controller_reset(controller : GtkEventController)
  fun gtk_event_controller_set_propagation_phase(controller : GtkEventController, phase : GtkPropagationPhase)
  fun gtk_event_sequence_state_get_type : GType
  fun gtk_events_pending : Gboolean
  fun gtk_expander_get_expanded(expander : GtkExpander*) : Gboolean
  fun gtk_expander_get_label(expander : GtkExpander*) : Gchar*
  fun gtk_expander_get_label_fill(expander : GtkExpander*) : Gboolean
  fun gtk_expander_get_label_widget(expander : GtkExpander*) : GtkWidget*
  fun gtk_expander_get_resize_toplevel(expander : GtkExpander*) : Gboolean
  fun gtk_expander_get_spacing(expander : GtkExpander*) : Gint
  fun gtk_expander_get_type : GType
  fun gtk_expander_get_use_markup(expander : GtkExpander*) : Gboolean
  fun gtk_expander_get_use_underline(expander : GtkExpander*) : Gboolean
  fun gtk_expander_new(label : Gchar*) : GtkWidget*
  fun gtk_expander_new_with_mnemonic(label : Gchar*) : GtkWidget*
  fun gtk_expander_set_expanded(expander : GtkExpander*, expanded : Gboolean)
  fun gtk_expander_set_label(expander : GtkExpander*, label : Gchar*)
  fun gtk_expander_set_label_fill(expander : GtkExpander*, label_fill : Gboolean)
  fun gtk_expander_set_label_widget(expander : GtkExpander*, label_widget : GtkWidget*)
  fun gtk_expander_set_resize_toplevel(expander : GtkExpander*, resize_toplevel : Gboolean)
  fun gtk_expander_set_spacing(expander : GtkExpander*, spacing : Gint)
  fun gtk_expander_set_use_markup(expander : GtkExpander*, use_markup : Gboolean)
  fun gtk_expander_set_use_underline(expander : GtkExpander*, use_underline : Gboolean)
  fun gtk_expander_style_get_type : GType
  fun gtk_false : Gboolean
  fun gtk_file_chooser_action_get_type : GType
  fun gtk_file_chooser_add_filter(chooser : GtkFileChooser, filter : GtkFileFilter)
  fun gtk_file_chooser_add_shortcut_folder(chooser : GtkFileChooser, folder : LibC::Char*, error : GError**) : Gboolean
  fun gtk_file_chooser_add_shortcut_folder_uri(chooser : GtkFileChooser, uri : LibC::Char*, error : GError**) : Gboolean
  fun gtk_file_chooser_button_get_focus_on_click(button : GtkFileChooserButton*) : Gboolean
  fun gtk_file_chooser_button_get_title(button : GtkFileChooserButton*) : Gchar*
  fun gtk_file_chooser_button_get_type : GType
  fun gtk_file_chooser_button_get_width_chars(button : GtkFileChooserButton*) : Gint
  fun gtk_file_chooser_button_new(title : Gchar*, action : GtkFileChooserAction) : GtkWidget*
  fun gtk_file_chooser_button_new_with_dialog(dialog : GtkWidget*) : GtkWidget*
  fun gtk_file_chooser_button_set_focus_on_click(button : GtkFileChooserButton*, focus_on_click : Gboolean)
  fun gtk_file_chooser_button_set_title(button : GtkFileChooserButton*, title : Gchar*)
  fun gtk_file_chooser_button_set_width_chars(button : GtkFileChooserButton*, n_chars : Gint)
  fun gtk_file_chooser_confirmation_get_type : GType
  fun gtk_file_chooser_dialog_get_type : GType
  fun gtk_file_chooser_dialog_new(title : Gchar*, parent : GtkWindow*, action : GtkFileChooserAction, first_button_text : Gchar*, ...) : GtkWidget*
  fun gtk_file_chooser_error_get_type : GType
  fun gtk_file_chooser_error_quark : GQuark
  fun gtk_file_chooser_get_action(chooser : GtkFileChooser) : GtkFileChooserAction
  fun gtk_file_chooser_get_create_folders(chooser : GtkFileChooser) : Gboolean
  fun gtk_file_chooser_get_current_folder(chooser : GtkFileChooser) : Gchar*
  fun gtk_file_chooser_get_current_folder_file(chooser : GtkFileChooser) : GFile
  fun gtk_file_chooser_get_current_folder_uri(chooser : GtkFileChooser) : Gchar*
  fun gtk_file_chooser_get_current_name(chooser : GtkFileChooser) : Gchar*
  fun gtk_file_chooser_get_do_overwrite_confirmation(chooser : GtkFileChooser) : Gboolean
  fun gtk_file_chooser_get_extra_widget(chooser : GtkFileChooser) : GtkWidget*
  fun gtk_file_chooser_get_file(chooser : GtkFileChooser) : GFile
  fun gtk_file_chooser_get_filename(chooser : GtkFileChooser) : Gchar*
  fun gtk_file_chooser_get_filenames(chooser : GtkFileChooser) : GsList*
  fun gtk_file_chooser_get_files(chooser : GtkFileChooser) : GsList*
  fun gtk_file_chooser_get_filter(chooser : GtkFileChooser) : GtkFileFilter
  fun gtk_file_chooser_get_local_only(chooser : GtkFileChooser) : Gboolean
  fun gtk_file_chooser_get_preview_file(chooser : GtkFileChooser) : GFile
  fun gtk_file_chooser_get_preview_filename(chooser : GtkFileChooser) : LibC::Char*
  fun gtk_file_chooser_get_preview_uri(chooser : GtkFileChooser) : LibC::Char*
  fun gtk_file_chooser_get_preview_widget(chooser : GtkFileChooser) : GtkWidget*
  fun gtk_file_chooser_get_preview_widget_active(chooser : GtkFileChooser) : Gboolean
  fun gtk_file_chooser_get_select_multiple(chooser : GtkFileChooser) : Gboolean
  fun gtk_file_chooser_get_show_hidden(chooser : GtkFileChooser) : Gboolean
  fun gtk_file_chooser_get_type : GType
  fun gtk_file_chooser_get_uri(chooser : GtkFileChooser) : Gchar*
  fun gtk_file_chooser_get_uris(chooser : GtkFileChooser) : GsList*
  fun gtk_file_chooser_get_use_preview_label(chooser : GtkFileChooser) : Gboolean
  fun gtk_file_chooser_list_filters(chooser : GtkFileChooser) : GsList*
  fun gtk_file_chooser_list_shortcut_folder_uris(chooser : GtkFileChooser) : GsList*
  fun gtk_file_chooser_list_shortcut_folders(chooser : GtkFileChooser) : GsList*
  fun gtk_file_chooser_remove_filter(chooser : GtkFileChooser, filter : GtkFileFilter)
  fun gtk_file_chooser_remove_shortcut_folder(chooser : GtkFileChooser, folder : LibC::Char*, error : GError**) : Gboolean
  fun gtk_file_chooser_remove_shortcut_folder_uri(chooser : GtkFileChooser, uri : LibC::Char*, error : GError**) : Gboolean
  fun gtk_file_chooser_select_all(chooser : GtkFileChooser)
  fun gtk_file_chooser_select_file(chooser : GtkFileChooser, file : GFile, error : GError**) : Gboolean
  fun gtk_file_chooser_select_filename(chooser : GtkFileChooser, filename : LibC::Char*) : Gboolean
  fun gtk_file_chooser_select_uri(chooser : GtkFileChooser, uri : LibC::Char*) : Gboolean
  fun gtk_file_chooser_set_action(chooser : GtkFileChooser, action : GtkFileChooserAction)
  fun gtk_file_chooser_set_create_folders(chooser : GtkFileChooser, create_folders : Gboolean)
  fun gtk_file_chooser_set_current_folder(chooser : GtkFileChooser, filename : Gchar*) : Gboolean
  fun gtk_file_chooser_set_current_folder_file(chooser : GtkFileChooser, file : GFile, error : GError**) : Gboolean
  fun gtk_file_chooser_set_current_folder_uri(chooser : GtkFileChooser, uri : Gchar*) : Gboolean
  fun gtk_file_chooser_set_current_name(chooser : GtkFileChooser, name : Gchar*)
  fun gtk_file_chooser_set_do_overwrite_confirmation(chooser : GtkFileChooser, do_overwrite_confirmation : Gboolean)
  fun gtk_file_chooser_set_extra_widget(chooser : GtkFileChooser, extra_widget : GtkWidget*)
  fun gtk_file_chooser_set_file(chooser : GtkFileChooser, file : GFile, error : GError**) : Gboolean
  fun gtk_file_chooser_set_filename(chooser : GtkFileChooser, filename : LibC::Char*) : Gboolean
  fun gtk_file_chooser_set_filter(chooser : GtkFileChooser, filter : GtkFileFilter)
  fun gtk_file_chooser_set_local_only(chooser : GtkFileChooser, local_only : Gboolean)
  fun gtk_file_chooser_set_preview_widget(chooser : GtkFileChooser, preview_widget : GtkWidget*)
  fun gtk_file_chooser_set_preview_widget_active(chooser : GtkFileChooser, active : Gboolean)
  fun gtk_file_chooser_set_select_multiple(chooser : GtkFileChooser, select_multiple : Gboolean)
  fun gtk_file_chooser_set_show_hidden(chooser : GtkFileChooser, show_hidden : Gboolean)
  fun gtk_file_chooser_set_uri(chooser : GtkFileChooser, uri : LibC::Char*) : Gboolean
  fun gtk_file_chooser_set_use_preview_label(chooser : GtkFileChooser, use_label : Gboolean)
  fun gtk_file_chooser_unselect_all(chooser : GtkFileChooser)
  fun gtk_file_chooser_unselect_file(chooser : GtkFileChooser, file : GFile)
  fun gtk_file_chooser_unselect_filename(chooser : GtkFileChooser, filename : LibC::Char*)
  fun gtk_file_chooser_unselect_uri(chooser : GtkFileChooser, uri : LibC::Char*)
  fun gtk_file_chooser_widget_get_type : GType
  fun gtk_file_chooser_widget_new(action : GtkFileChooserAction) : GtkWidget*
  fun gtk_file_filter_add_custom(filter : GtkFileFilter, needed : GtkFileFilterFlags, func : GtkFileFilterFunc, data : Gpointer, notify : GDestroyNotify)
  fun gtk_file_filter_add_mime_type(filter : GtkFileFilter, mime_type : Gchar*)
  fun gtk_file_filter_add_pattern(filter : GtkFileFilter, pattern : Gchar*)
  fun gtk_file_filter_add_pixbuf_formats(filter : GtkFileFilter)
  fun gtk_file_filter_filter(filter : GtkFileFilter, filter_info : GtkFileFilterInfo*) : Gboolean
  fun gtk_file_filter_flags_get_type : GType
  fun gtk_file_filter_get_name(filter : GtkFileFilter) : Gchar*
  fun gtk_file_filter_get_needed(filter : GtkFileFilter) : GtkFileFilterFlags
  fun gtk_file_filter_get_type : GType
  fun gtk_file_filter_new : GtkFileFilter
  fun gtk_file_filter_set_name(filter : GtkFileFilter, name : Gchar*)
  fun gtk_fixed_get_type : GType
  fun gtk_fixed_move(fixed : GtkFixed*, widget : GtkWidget*, x : Gint, y : Gint)
  fun gtk_fixed_new : GtkWidget*
  fun gtk_fixed_put(fixed : GtkFixed*, widget : GtkWidget*, x : Gint, y : Gint)
  fun gtk_flow_box_bind_model(box : GtkFlowBox*, model : GListModel, create_widget_func : GtkFlowBoxCreateWidgetFunc, user_data : Gpointer, user_data_free_func : GDestroyNotify)
  fun gtk_flow_box_child_changed(child : GtkFlowBoxChild*)
  fun gtk_flow_box_child_get_index(child : GtkFlowBoxChild*) : Gint
  fun gtk_flow_box_child_get_type : GType
  fun gtk_flow_box_child_is_selected(child : GtkFlowBoxChild*) : Gboolean
  fun gtk_flow_box_child_new : GtkWidget*
  fun gtk_flow_box_get_activate_on_single_click(box : GtkFlowBox*) : Gboolean
  fun gtk_flow_box_get_child_at_index(box : GtkFlowBox*, idx : Gint) : GtkFlowBoxChild*
  fun gtk_flow_box_get_column_spacing(box : GtkFlowBox*) : Guint
  fun gtk_flow_box_get_homogeneous(box : GtkFlowBox*) : Gboolean
  fun gtk_flow_box_get_max_children_per_line(box : GtkFlowBox*) : Guint
  fun gtk_flow_box_get_min_children_per_line(box : GtkFlowBox*) : Guint
  fun gtk_flow_box_get_row_spacing(box : GtkFlowBox*) : Guint
  fun gtk_flow_box_get_selected_children(box : GtkFlowBox*) : GList*
  fun gtk_flow_box_get_selection_mode(box : GtkFlowBox*) : GtkSelectionMode
  fun gtk_flow_box_get_type : GType
  fun gtk_flow_box_insert(box : GtkFlowBox*, widget : GtkWidget*, position : Gint)
  fun gtk_flow_box_invalidate_filter(box : GtkFlowBox*)
  fun gtk_flow_box_invalidate_sort(box : GtkFlowBox*)
  fun gtk_flow_box_new : GtkWidget*
  fun gtk_flow_box_select_all(box : GtkFlowBox*)
  fun gtk_flow_box_select_child(box : GtkFlowBox*, child : GtkFlowBoxChild*)
  fun gtk_flow_box_selected_foreach(box : GtkFlowBox*, func : GtkFlowBoxForeachFunc, data : Gpointer)
  fun gtk_flow_box_set_activate_on_single_click(box : GtkFlowBox*, single : Gboolean)
  fun gtk_flow_box_set_column_spacing(box : GtkFlowBox*, spacing : Guint)
  fun gtk_flow_box_set_filter_func(box : GtkFlowBox*, filter_func : GtkFlowBoxFilterFunc, user_data : Gpointer, destroy : GDestroyNotify)
  fun gtk_flow_box_set_hadjustment(box : GtkFlowBox*, adjustment : GtkAdjustment*)
  fun gtk_flow_box_set_homogeneous(box : GtkFlowBox*, homogeneous : Gboolean)
  fun gtk_flow_box_set_max_children_per_line(box : GtkFlowBox*, n_children : Guint)
  fun gtk_flow_box_set_min_children_per_line(box : GtkFlowBox*, n_children : Guint)
  fun gtk_flow_box_set_row_spacing(box : GtkFlowBox*, spacing : Guint)
  fun gtk_flow_box_set_selection_mode(box : GtkFlowBox*, mode : GtkSelectionMode)
  fun gtk_flow_box_set_sort_func(box : GtkFlowBox*, sort_func : GtkFlowBoxSortFunc, user_data : Gpointer, destroy : GDestroyNotify)
  fun gtk_flow_box_set_vadjustment(box : GtkFlowBox*, adjustment : GtkAdjustment*)
  fun gtk_flow_box_unselect_all(box : GtkFlowBox*)
  fun gtk_flow_box_unselect_child(box : GtkFlowBox*, child : GtkFlowBoxChild*)
  fun gtk_font_button_get_font_name(font_button : GtkFontButton*) : Gchar*
  fun gtk_font_button_get_show_size(font_button : GtkFontButton*) : Gboolean
  fun gtk_font_button_get_show_style(font_button : GtkFontButton*) : Gboolean
  fun gtk_font_button_get_title(font_button : GtkFontButton*) : Gchar*
  fun gtk_font_button_get_type : GType
  fun gtk_font_button_get_use_font(font_button : GtkFontButton*) : Gboolean
  fun gtk_font_button_get_use_size(font_button : GtkFontButton*) : Gboolean
  fun gtk_font_button_new : GtkWidget*
  fun gtk_font_button_new_with_font(fontname : Gchar*) : GtkWidget*
  fun gtk_font_button_set_font_name(font_button : GtkFontButton*, fontname : Gchar*) : Gboolean
  fun gtk_font_button_set_show_size(font_button : GtkFontButton*, show_size : Gboolean)
  fun gtk_font_button_set_show_style(font_button : GtkFontButton*, show_style : Gboolean)
  fun gtk_font_button_set_title(font_button : GtkFontButton*, title : Gchar*)
  fun gtk_font_button_set_use_font(font_button : GtkFontButton*, use_font : Gboolean)
  fun gtk_font_button_set_use_size(font_button : GtkFontButton*, use_size : Gboolean)
  fun gtk_font_chooser_dialog_get_type : GType
  fun gtk_font_chooser_dialog_new(title : Gchar*, parent : GtkWindow*) : GtkWidget*
  fun gtk_font_chooser_get_font(fontchooser : GtkFontChooser) : Gchar*
  fun gtk_font_chooser_get_font_desc(fontchooser : GtkFontChooser) : PangoFontDescription
  fun gtk_font_chooser_get_font_face(fontchooser : GtkFontChooser) : PangoFontFace
  fun gtk_font_chooser_get_font_family(fontchooser : GtkFontChooser) : PangoFontFamily
  fun gtk_font_chooser_get_font_map(fontchooser : GtkFontChooser) : PangoFontMap
  fun gtk_font_chooser_get_font_size(fontchooser : GtkFontChooser) : Gint
  fun gtk_font_chooser_get_preview_text(fontchooser : GtkFontChooser) : Gchar*
  fun gtk_font_chooser_get_show_preview_entry(fontchooser : GtkFontChooser) : Gboolean
  fun gtk_font_chooser_get_type : GType
  fun gtk_font_chooser_set_filter_func(fontchooser : GtkFontChooser, filter : GtkFontFilterFunc, user_data : Gpointer, destroy : GDestroyNotify)
  fun gtk_font_chooser_set_font(fontchooser : GtkFontChooser, fontname : Gchar*)
  fun gtk_font_chooser_set_font_desc(fontchooser : GtkFontChooser, font_desc : PangoFontDescription)
  fun gtk_font_chooser_set_font_map(fontchooser : GtkFontChooser, fontmap : PangoFontMap)
  fun gtk_font_chooser_set_preview_text(fontchooser : GtkFontChooser, text : Gchar*)
  fun gtk_font_chooser_set_show_preview_entry(fontchooser : GtkFontChooser, show_preview_entry : Gboolean)
  fun gtk_font_chooser_widget_get_type : GType
  fun gtk_font_chooser_widget_new : GtkWidget*
  fun gtk_font_selection_dialog_get_cancel_button(fsd : GtkFontSelectionDialog*) : GtkWidget*
  fun gtk_font_selection_dialog_get_font_name(fsd : GtkFontSelectionDialog*) : Gchar*
  fun gtk_font_selection_dialog_get_font_selection(fsd : GtkFontSelectionDialog*) : GtkWidget*
  fun gtk_font_selection_dialog_get_ok_button(fsd : GtkFontSelectionDialog*) : GtkWidget*
  fun gtk_font_selection_dialog_get_preview_text(fsd : GtkFontSelectionDialog*) : Gchar*
  fun gtk_font_selection_dialog_get_type : GType
  fun gtk_font_selection_dialog_new(title : Gchar*) : GtkWidget*
  fun gtk_font_selection_dialog_set_font_name(fsd : GtkFontSelectionDialog*, fontname : Gchar*) : Gboolean
  fun gtk_font_selection_dialog_set_preview_text(fsd : GtkFontSelectionDialog*, text : Gchar*)
  fun gtk_font_selection_get_face(fontsel : GtkFontSelection*) : PangoFontFace
  fun gtk_font_selection_get_face_list(fontsel : GtkFontSelection*) : GtkWidget*
  fun gtk_font_selection_get_family(fontsel : GtkFontSelection*) : PangoFontFamily
  fun gtk_font_selection_get_family_list(fontsel : GtkFontSelection*) : GtkWidget*
  fun gtk_font_selection_get_font_name(fontsel : GtkFontSelection*) : Gchar*
  fun gtk_font_selection_get_preview_entry(fontsel : GtkFontSelection*) : GtkWidget*
  fun gtk_font_selection_get_preview_text(fontsel : GtkFontSelection*) : Gchar*
  fun gtk_font_selection_get_size(fontsel : GtkFontSelection*) : Gint
  fun gtk_font_selection_get_size_entry(fontsel : GtkFontSelection*) : GtkWidget*
  fun gtk_font_selection_get_size_list(fontsel : GtkFontSelection*) : GtkWidget*
  fun gtk_font_selection_get_type : GType
  fun gtk_font_selection_new : GtkWidget*
  fun gtk_font_selection_set_font_name(fontsel : GtkFontSelection*, fontname : Gchar*) : Gboolean
  fun gtk_font_selection_set_preview_text(fontsel : GtkFontSelection*, text : Gchar*)
  fun gtk_frame_get_label(frame : GtkFrame*) : Gchar*
  fun gtk_frame_get_label_align(frame : GtkFrame*, xalign : Gfloat*, yalign : Gfloat*)
  fun gtk_frame_get_label_widget(frame : GtkFrame*) : GtkWidget*
  fun gtk_frame_get_shadow_type(frame : GtkFrame*) : GtkShadowType
  fun gtk_frame_get_type : GType
  fun gtk_frame_new(label : Gchar*) : GtkWidget*
  fun gtk_frame_set_label(frame : GtkFrame*, label : Gchar*)
  fun gtk_frame_set_label_align(frame : GtkFrame*, xalign : Gfloat, yalign : Gfloat)
  fun gtk_frame_set_label_widget(frame : GtkFrame*, label_widget : GtkWidget*)
  fun gtk_frame_set_shadow_type(frame : GtkFrame*, type : GtkShadowType)
  fun gtk_gesture_drag_get_offset(gesture : GtkGestureDrag, x : Gdouble*, y : Gdouble*) : Gboolean
  fun gtk_gesture_drag_get_start_point(gesture : GtkGestureDrag, x : Gdouble*, y : Gdouble*) : Gboolean
  fun gtk_gesture_drag_get_type : GType
  fun gtk_gesture_drag_new(widget : GtkWidget*) : GtkGesture
  fun gtk_gesture_get_bounding_box(gesture : GtkGesture, rect : GdkRectangle*) : Gboolean
  fun gtk_gesture_get_bounding_box_center(gesture : GtkGesture, x : Gdouble*, y : Gdouble*) : Gboolean
  fun gtk_gesture_get_device(gesture : GtkGesture) : GdkDevice
  fun gtk_gesture_get_group(gesture : GtkGesture) : GList*
  fun gtk_gesture_get_last_event(gesture : GtkGesture, sequence : GdkEventSequence) : GdkEvent*
  fun gtk_gesture_get_last_updated_sequence(gesture : GtkGesture) : GdkEventSequence
  fun gtk_gesture_get_point(gesture : GtkGesture, sequence : GdkEventSequence, x : Gdouble*, y : Gdouble*) : Gboolean
  fun gtk_gesture_get_sequence_state(gesture : GtkGesture, sequence : GdkEventSequence) : GtkEventSequenceState
  fun gtk_gesture_get_sequences(gesture : GtkGesture) : GList*
  fun gtk_gesture_get_type : GType
  fun gtk_gesture_get_window(gesture : GtkGesture) : GdkWindow
  fun gtk_gesture_group(group_gesture : GtkGesture, gesture : GtkGesture)
  fun gtk_gesture_handles_sequence(gesture : GtkGesture, sequence : GdkEventSequence) : Gboolean
  fun gtk_gesture_is_active(gesture : GtkGesture) : Gboolean
  fun gtk_gesture_is_grouped_with(gesture : GtkGesture, other : GtkGesture) : Gboolean
  fun gtk_gesture_is_recognized(gesture : GtkGesture) : Gboolean
  fun gtk_gesture_long_press_get_type : GType
  fun gtk_gesture_long_press_new(widget : GtkWidget*) : GtkGesture
  fun gtk_gesture_multi_press_get_area(gesture : GtkGestureMultiPress, rect : GdkRectangle*) : Gboolean
  fun gtk_gesture_multi_press_get_type : GType
  fun gtk_gesture_multi_press_new(widget : GtkWidget*) : GtkGesture
  fun gtk_gesture_multi_press_set_area(gesture : GtkGestureMultiPress, rect : GdkRectangle*)
  fun gtk_gesture_pan_get_orientation(gesture : GtkGesturePan) : GtkOrientation
  fun gtk_gesture_pan_get_type : GType
  fun gtk_gesture_pan_new(widget : GtkWidget*, orientation : GtkOrientation) : GtkGesture
  fun gtk_gesture_pan_set_orientation(gesture : GtkGesturePan, orientation : GtkOrientation)
  fun gtk_gesture_rotate_get_angle_delta(gesture : GtkGestureRotate) : Gdouble
  fun gtk_gesture_rotate_get_type : GType
  fun gtk_gesture_rotate_new(widget : GtkWidget*) : GtkGesture
  fun gtk_gesture_set_sequence_state(gesture : GtkGesture, sequence : GdkEventSequence, state : GtkEventSequenceState) : Gboolean
  fun gtk_gesture_set_state(gesture : GtkGesture, state : GtkEventSequenceState) : Gboolean
  fun gtk_gesture_set_window(gesture : GtkGesture, window : GdkWindow)
  fun gtk_gesture_single_get_button(gesture : GtkGestureSingle) : Guint
  fun gtk_gesture_single_get_current_button(gesture : GtkGestureSingle) : Guint
  fun gtk_gesture_single_get_current_sequence(gesture : GtkGestureSingle) : GdkEventSequence
  fun gtk_gesture_single_get_exclusive(gesture : GtkGestureSingle) : Gboolean
  fun gtk_gesture_single_get_touch_only(gesture : GtkGestureSingle) : Gboolean
  fun gtk_gesture_single_get_type : GType
  fun gtk_gesture_single_set_button(gesture : GtkGestureSingle, button : Guint)
  fun gtk_gesture_single_set_exclusive(gesture : GtkGestureSingle, exclusive : Gboolean)
  fun gtk_gesture_single_set_touch_only(gesture : GtkGestureSingle, touch_only : Gboolean)
  fun gtk_gesture_swipe_get_type : GType
  fun gtk_gesture_swipe_get_velocity(gesture : GtkGestureSwipe, velocity_x : Gdouble*, velocity_y : Gdouble*) : Gboolean
  fun gtk_gesture_swipe_new(widget : GtkWidget*) : GtkGesture
  fun gtk_gesture_ungroup(gesture : GtkGesture)
  fun gtk_gesture_zoom_get_scale_delta(gesture : GtkGestureZoom) : Gdouble
  fun gtk_gesture_zoom_get_type : GType
  fun gtk_gesture_zoom_new(widget : GtkWidget*) : GtkGesture
  fun gtk_get_binary_age : Guint
  fun gtk_get_current_event : GdkEvent*
  fun gtk_get_current_event_device : GdkDevice
  fun gtk_get_current_event_state(state : GdkModifierType*) : Gboolean
  fun gtk_get_current_event_time : Guint32
  fun gtk_get_debug_flags : Guint
  fun gtk_get_default_language : PangoLanguage
  fun gtk_get_event_widget(event : GdkEvent*) : GtkWidget*
  fun gtk_get_interface_age : Guint
  fun gtk_get_locale_direction : GtkTextDirection
  fun gtk_get_major_version : Guint
  fun gtk_get_micro_version : Guint
  fun gtk_get_minor_version : Guint
  fun gtk_get_option_group(open_default_display : Gboolean) : GOptionGroup
  fun gtk_gl_area_attach_buffers(area : GtkGlArea*)
  fun gtk_gl_area_get_auto_render(area : GtkGlArea*) : Gboolean
  fun gtk_gl_area_get_context(area : GtkGlArea*) : GdkGlContext
  fun gtk_gl_area_get_error(area : GtkGlArea*) : GError*
  fun gtk_gl_area_get_has_alpha(area : GtkGlArea*) : Gboolean
  fun gtk_gl_area_get_has_depth_buffer(area : GtkGlArea*) : Gboolean
  fun gtk_gl_area_get_has_stencil_buffer(area : GtkGlArea*) : Gboolean
  fun gtk_gl_area_get_required_version(area : GtkGlArea*, major : Gint*, minor : Gint*)
  fun gtk_gl_area_get_type : GType
  fun gtk_gl_area_make_current(area : GtkGlArea*)
  fun gtk_gl_area_new : GtkWidget*
  fun gtk_gl_area_queue_render(area : GtkGlArea*)
  fun gtk_gl_area_set_auto_render(area : GtkGlArea*, auto_render : Gboolean)
  fun gtk_gl_area_set_error(area : GtkGlArea*, error : GError*)
  fun gtk_gl_area_set_has_alpha(area : GtkGlArea*, has_alpha : Gboolean)
  fun gtk_gl_area_set_has_depth_buffer(area : GtkGlArea*, has_depth_buffer : Gboolean)
  fun gtk_gl_area_set_has_stencil_buffer(area : GtkGlArea*, has_stencil_buffer : Gboolean)
  fun gtk_gl_area_set_required_version(area : GtkGlArea*, major : Gint, minor : Gint)
  fun gtk_grab_add(widget : GtkWidget*)
  fun gtk_grab_get_current : GtkWidget*
  fun gtk_grab_remove(widget : GtkWidget*)
  fun gtk_gradient_add_color_stop(gradient : GtkGradient, offset : Gdouble, color : GtkSymbolicColor)
  fun gtk_gradient_get_type : GType
  fun gtk_gradient_new_linear(x0 : Gdouble, y0 : Gdouble, x1 : Gdouble, y1 : Gdouble) : GtkGradient
  fun gtk_gradient_new_radial(x0 : Gdouble, y0 : Gdouble, radius0 : Gdouble, x1 : Gdouble, y1 : Gdouble, radius1 : Gdouble) : GtkGradient
  fun gtk_gradient_ref(gradient : GtkGradient) : GtkGradient
  fun gtk_gradient_resolve(gradient : GtkGradient, props : GtkStyleProperties*, resolved_gradient : CairoPatternT*) : Gboolean
  fun gtk_gradient_resolve_for_context(gradient : GtkGradient, context : GtkStyleContext*) : CairoPatternT
  fun gtk_gradient_to_string(gradient : GtkGradient) : LibC::Char*
  fun gtk_gradient_unref(gradient : GtkGradient)
  fun gtk_grid_attach(grid : GtkGrid*, child : GtkWidget*, left : Gint, top : Gint, width : Gint, height : Gint)
  fun gtk_grid_attach_next_to(grid : GtkGrid*, child : GtkWidget*, sibling : GtkWidget*, side : GtkPositionType, width : Gint, height : Gint)
  fun gtk_grid_get_baseline_row(grid : GtkGrid*) : Gint
  fun gtk_grid_get_child_at(grid : GtkGrid*, left : Gint, top : Gint) : GtkWidget*
  fun gtk_grid_get_column_homogeneous(grid : GtkGrid*) : Gboolean
  fun gtk_grid_get_column_spacing(grid : GtkGrid*) : Guint
  fun gtk_grid_get_row_baseline_position(grid : GtkGrid*, row : Gint) : GtkBaselinePosition
  fun gtk_grid_get_row_homogeneous(grid : GtkGrid*) : Gboolean
  fun gtk_grid_get_row_spacing(grid : GtkGrid*) : Guint
  fun gtk_grid_get_type : GType
  fun gtk_grid_insert_column(grid : GtkGrid*, position : Gint)
  fun gtk_grid_insert_next_to(grid : GtkGrid*, sibling : GtkWidget*, side : GtkPositionType)
  fun gtk_grid_insert_row(grid : GtkGrid*, position : Gint)
  fun gtk_grid_new : GtkWidget*
  fun gtk_grid_remove_column(grid : GtkGrid*, position : Gint)
  fun gtk_grid_remove_row(grid : GtkGrid*, position : Gint)
  fun gtk_grid_set_baseline_row(grid : GtkGrid*, row : Gint)
  fun gtk_grid_set_column_homogeneous(grid : GtkGrid*, homogeneous : Gboolean)
  fun gtk_grid_set_column_spacing(grid : GtkGrid*, spacing : Guint)
  fun gtk_grid_set_row_baseline_position(grid : GtkGrid*, row : Gint, pos : GtkBaselinePosition)
  fun gtk_grid_set_row_homogeneous(grid : GtkGrid*, homogeneous : Gboolean)
  fun gtk_grid_set_row_spacing(grid : GtkGrid*, spacing : Guint)
  fun gtk_handle_box_get_child_detached(handle_box : GtkHandleBox*) : Gboolean
  fun gtk_handle_box_get_handle_position(handle_box : GtkHandleBox*) : GtkPositionType
  fun gtk_handle_box_get_shadow_type(handle_box : GtkHandleBox*) : GtkShadowType
  fun gtk_handle_box_get_snap_edge(handle_box : GtkHandleBox*) : GtkPositionType
  fun gtk_handle_box_get_type : GType
  fun gtk_handle_box_new : GtkWidget*
  fun gtk_handle_box_set_handle_position(handle_box : GtkHandleBox*, position : GtkPositionType)
  fun gtk_handle_box_set_shadow_type(handle_box : GtkHandleBox*, type : GtkShadowType)
  fun gtk_handle_box_set_snap_edge(handle_box : GtkHandleBox*, edge : GtkPositionType)
  fun gtk_hbox_get_type : GType
  fun gtk_hbox_new(homogeneous : Gboolean, spacing : Gint) : GtkWidget*
  fun gtk_hbutton_box_get_type : GType
  fun gtk_hbutton_box_new : GtkWidget*
  fun gtk_header_bar_get_custom_title(bar : GtkHeaderBar*) : GtkWidget*
  fun gtk_header_bar_get_decoration_layout(bar : GtkHeaderBar*) : Gchar*
  fun gtk_header_bar_get_has_subtitle(bar : GtkHeaderBar*) : Gboolean
  fun gtk_header_bar_get_show_close_button(bar : GtkHeaderBar*) : Gboolean
  fun gtk_header_bar_get_subtitle(bar : GtkHeaderBar*) : Gchar*
  fun gtk_header_bar_get_title(bar : GtkHeaderBar*) : Gchar*
  fun gtk_header_bar_get_type : GType
  fun gtk_header_bar_new : GtkWidget*
  fun gtk_header_bar_pack_end(bar : GtkHeaderBar*, child : GtkWidget*)
  fun gtk_header_bar_pack_start(bar : GtkHeaderBar*, child : GtkWidget*)
  fun gtk_header_bar_set_custom_title(bar : GtkHeaderBar*, title_widget : GtkWidget*)
  fun gtk_header_bar_set_decoration_layout(bar : GtkHeaderBar*, layout : Gchar*)
  fun gtk_header_bar_set_has_subtitle(bar : GtkHeaderBar*, setting : Gboolean)
  fun gtk_header_bar_set_show_close_button(bar : GtkHeaderBar*, setting : Gboolean)
  fun gtk_header_bar_set_subtitle(bar : GtkHeaderBar*, subtitle : Gchar*)
  fun gtk_header_bar_set_title(bar : GtkHeaderBar*, title : Gchar*)
  fun gtk_hpaned_get_type : GType
  fun gtk_hpaned_new : GtkWidget*
  fun gtk_hscale_get_type : GType
  fun gtk_hscale_new(adjustment : GtkAdjustment*) : GtkWidget*
  fun gtk_hscale_new_with_range(min : Gdouble, max : Gdouble, step : Gdouble) : GtkWidget*
  fun gtk_hscrollbar_get_type : GType
  fun gtk_hscrollbar_new(adjustment : GtkAdjustment*) : GtkWidget*
  fun gtk_hseparator_get_type : GType
  fun gtk_hseparator_new : GtkWidget*
  fun gtk_hsv_get_color(hsv : GtkHsv*, h : Gdouble*, s : Gdouble*, v : Gdouble*)
  fun gtk_hsv_get_metrics(hsv : GtkHsv*, size : Gint*, ring_width : Gint*)
  fun gtk_hsv_get_type : GType
  fun gtk_hsv_is_adjusting(hsv : GtkHsv*) : Gboolean
  fun gtk_hsv_new : GtkWidget*
  fun gtk_hsv_set_color(hsv : GtkHsv*, h : LibC::Double, s : LibC::Double, v : LibC::Double)
  fun gtk_hsv_set_metrics(hsv : GtkHsv*, size : Gint, ring_width : Gint)
  fun gtk_hsv_to_rgb(h : Gdouble, s : Gdouble, v : Gdouble, r : Gdouble*, g : Gdouble*, b : Gdouble*)
  fun gtk_icon_factory_add(factory : GtkIconFactory*, stock_id : Gchar*, icon_set : GtkIconSet)
  fun gtk_icon_factory_add_default(factory : GtkIconFactory*)
  fun gtk_icon_factory_get_type : GType
  fun gtk_icon_factory_lookup(factory : GtkIconFactory*, stock_id : Gchar*) : GtkIconSet
  fun gtk_icon_factory_lookup_default(stock_id : Gchar*) : GtkIconSet
  fun gtk_icon_factory_new : GtkIconFactory*
  fun gtk_icon_factory_remove_default(factory : GtkIconFactory*)
  fun gtk_icon_info_copy(icon_info : GtkIconInfo) : GtkIconInfo
  fun gtk_icon_info_free(icon_info : GtkIconInfo)
  fun gtk_icon_info_get_attach_points(icon_info : GtkIconInfo, points : GdkPoint**, n_points : Gint*) : Gboolean
  fun gtk_icon_info_get_base_scale(icon_info : GtkIconInfo) : Gint
  fun gtk_icon_info_get_base_size(icon_info : GtkIconInfo) : Gint
  fun gtk_icon_info_get_builtin_pixbuf(icon_info : GtkIconInfo) : GdkPixbuf
  fun gtk_icon_info_get_display_name(icon_info : GtkIconInfo) : Gchar*
  fun gtk_icon_info_get_embedded_rect(icon_info : GtkIconInfo, rectangle : GdkRectangle*) : Gboolean
  fun gtk_icon_info_get_filename(icon_info : GtkIconInfo) : Gchar*
  fun gtk_icon_info_get_type : GType
  fun gtk_icon_info_is_symbolic(icon_info : GtkIconInfo) : Gboolean
  fun gtk_icon_info_load_icon(icon_info : GtkIconInfo, error : GError**) : GdkPixbuf
  fun gtk_icon_info_load_icon_async(icon_info : GtkIconInfo, cancellable : GCancellable*, callback : GAsyncReadyCallback, user_data : Gpointer)
  fun gtk_icon_info_load_icon_finish(icon_info : GtkIconInfo, res : GAsyncResult, error : GError**) : GdkPixbuf
  fun gtk_icon_info_load_surface(icon_info : GtkIconInfo, for_window : GdkWindow, error : GError**) : CairoSurfaceT
  fun gtk_icon_info_load_symbolic(icon_info : GtkIconInfo, fg : GdkRgba*, success_color : GdkRgba*, warning_color : GdkRgba*, error_color : GdkRgba*, was_symbolic : Gboolean*, error : GError**) : GdkPixbuf
  fun gtk_icon_info_load_symbolic_async(icon_info : GtkIconInfo, fg : GdkRgba*, success_color : GdkRgba*, warning_color : GdkRgba*, error_color : GdkRgba*, cancellable : GCancellable*, callback : GAsyncReadyCallback, user_data : Gpointer)
  fun gtk_icon_info_load_symbolic_finish(icon_info : GtkIconInfo, res : GAsyncResult, was_symbolic : Gboolean*, error : GError**) : GdkPixbuf
  fun gtk_icon_info_load_symbolic_for_context(icon_info : GtkIconInfo, context : GtkStyleContext*, was_symbolic : Gboolean*, error : GError**) : GdkPixbuf
  fun gtk_icon_info_load_symbolic_for_context_async(icon_info : GtkIconInfo, context : GtkStyleContext*, cancellable : GCancellable*, callback : GAsyncReadyCallback, user_data : Gpointer)
  fun gtk_icon_info_load_symbolic_for_context_finish(icon_info : GtkIconInfo, res : GAsyncResult, was_symbolic : Gboolean*, error : GError**) : GdkPixbuf
  fun gtk_icon_info_load_symbolic_for_style(icon_info : GtkIconInfo, style : GtkStyle*, state : GtkStateType, was_symbolic : Gboolean*, error : GError**) : GdkPixbuf
  fun gtk_icon_info_new_for_pixbuf(icon_theme : GtkIconTheme*, pixbuf : GdkPixbuf) : GtkIconInfo
  fun gtk_icon_info_set_raw_coordinates(icon_info : GtkIconInfo, raw_coordinates : Gboolean)
  fun gtk_icon_lookup_flags_get_type : GType
  fun gtk_icon_set_add_source(icon_set : GtkIconSet, source : GtkIconSource)
  fun gtk_icon_set_copy(icon_set : GtkIconSet) : GtkIconSet
  fun gtk_icon_set_get_sizes(icon_set : GtkIconSet, sizes : GtkIconSize**, n_sizes : Gint*)
  fun gtk_icon_set_get_type : GType
  fun gtk_icon_set_new : GtkIconSet
  fun gtk_icon_set_new_from_pixbuf(pixbuf : GdkPixbuf) : GtkIconSet
  fun gtk_icon_set_ref(icon_set : GtkIconSet) : GtkIconSet
  fun gtk_icon_set_render_icon(icon_set : GtkIconSet, style : GtkStyle*, direction : GtkTextDirection, state : GtkStateType, size : GtkIconSize, widget : GtkWidget*, detail : Gchar*) : GdkPixbuf
  fun gtk_icon_set_render_icon_pixbuf(icon_set : GtkIconSet, context : GtkStyleContext*, size : GtkIconSize) : GdkPixbuf
  fun gtk_icon_set_render_icon_surface(icon_set : GtkIconSet, context : GtkStyleContext*, size : GtkIconSize, scale : LibC::Int, for_window : GdkWindow) : CairoSurfaceT
  fun gtk_icon_set_unref(icon_set : GtkIconSet)
  fun gtk_icon_size_from_name(name : Gchar*) : GtkIconSize
  fun gtk_icon_size_get_name(size : GtkIconSize) : Gchar*
  fun gtk_icon_size_get_type : GType
  fun gtk_icon_size_lookup(size : GtkIconSize, width : Gint*, height : Gint*) : Gboolean
  fun gtk_icon_size_lookup_for_settings(settings : GtkSettings*, size : GtkIconSize, width : Gint*, height : Gint*) : Gboolean
  fun gtk_icon_size_register(name : Gchar*, width : Gint, height : Gint) : GtkIconSize
  fun gtk_icon_size_register_alias(alias : Gchar*, target : GtkIconSize)
  fun gtk_icon_source_copy(source : GtkIconSource) : GtkIconSource
  fun gtk_icon_source_free(source : GtkIconSource)
  fun gtk_icon_source_get_direction(source : GtkIconSource) : GtkTextDirection
  fun gtk_icon_source_get_direction_wildcarded(source : GtkIconSource) : Gboolean
  fun gtk_icon_source_get_filename(source : GtkIconSource) : Gchar*
  fun gtk_icon_source_get_icon_name(source : GtkIconSource) : Gchar*
  fun gtk_icon_source_get_pixbuf(source : GtkIconSource) : GdkPixbuf
  fun gtk_icon_source_get_size(source : GtkIconSource) : GtkIconSize
  fun gtk_icon_source_get_size_wildcarded(source : GtkIconSource) : Gboolean
  fun gtk_icon_source_get_state(source : GtkIconSource) : GtkStateType
  fun gtk_icon_source_get_state_wildcarded(source : GtkIconSource) : Gboolean
  fun gtk_icon_source_get_type : GType
  fun gtk_icon_source_new : GtkIconSource
  fun gtk_icon_source_set_direction(source : GtkIconSource, direction : GtkTextDirection)
  fun gtk_icon_source_set_direction_wildcarded(source : GtkIconSource, setting : Gboolean)
  fun gtk_icon_source_set_filename(source : GtkIconSource, filename : Gchar*)
  fun gtk_icon_source_set_icon_name(source : GtkIconSource, icon_name : Gchar*)
  fun gtk_icon_source_set_pixbuf(source : GtkIconSource, pixbuf : GdkPixbuf)
  fun gtk_icon_source_set_size(source : GtkIconSource, size : GtkIconSize)
  fun gtk_icon_source_set_size_wildcarded(source : GtkIconSource, setting : Gboolean)
  fun gtk_icon_source_set_state(source : GtkIconSource, state : GtkStateType)
  fun gtk_icon_source_set_state_wildcarded(source : GtkIconSource, setting : Gboolean)
  fun gtk_icon_theme_add_builtin_icon(icon_name : Gchar*, size : Gint, pixbuf : GdkPixbuf)
  fun gtk_icon_theme_add_resource_path(icon_theme : GtkIconTheme*, path : Gchar*)
  fun gtk_icon_theme_append_search_path(icon_theme : GtkIconTheme*, path : Gchar*)
  fun gtk_icon_theme_choose_icon(icon_theme : GtkIconTheme*, icon_names : Gchar**, size : Gint, flags : GtkIconLookupFlags) : GtkIconInfo
  fun gtk_icon_theme_choose_icon_for_scale(icon_theme : GtkIconTheme*, icon_names : Gchar**, size : Gint, scale : Gint, flags : GtkIconLookupFlags) : GtkIconInfo
  fun gtk_icon_theme_error_get_type : GType
  fun gtk_icon_theme_error_quark : GQuark
  fun gtk_icon_theme_get_default : GtkIconTheme*
  fun gtk_icon_theme_get_example_icon_name(icon_theme : GtkIconTheme*) : LibC::Char*
  fun gtk_icon_theme_get_for_screen(screen : GdkScreen) : GtkIconTheme*
  fun gtk_icon_theme_get_icon_sizes(icon_theme : GtkIconTheme*, icon_name : Gchar*) : Gint*
  fun gtk_icon_theme_get_search_path(icon_theme : GtkIconTheme*, path : Gchar***, n_elements : Gint*)
  fun gtk_icon_theme_get_type : GType
  fun gtk_icon_theme_has_icon(icon_theme : GtkIconTheme*, icon_name : Gchar*) : Gboolean
  fun gtk_icon_theme_list_contexts(icon_theme : GtkIconTheme*) : GList*
  fun gtk_icon_theme_list_icons(icon_theme : GtkIconTheme*, context : Gchar*) : GList*
  fun gtk_icon_theme_load_icon(icon_theme : GtkIconTheme*, icon_name : Gchar*, size : Gint, flags : GtkIconLookupFlags, error : GError**) : GdkPixbuf
  fun gtk_icon_theme_load_icon_for_scale(icon_theme : GtkIconTheme*, icon_name : Gchar*, size : Gint, scale : Gint, flags : GtkIconLookupFlags, error : GError**) : GdkPixbuf
  fun gtk_icon_theme_load_surface(icon_theme : GtkIconTheme*, icon_name : Gchar*, size : Gint, scale : Gint, for_window : GdkWindow, flags : GtkIconLookupFlags, error : GError**) : CairoSurfaceT
  fun gtk_icon_theme_lookup_by_gicon(icon_theme : GtkIconTheme*, icon : GIcon, size : Gint, flags : GtkIconLookupFlags) : GtkIconInfo
  fun gtk_icon_theme_lookup_by_gicon_for_scale(icon_theme : GtkIconTheme*, icon : GIcon, size : Gint, scale : Gint, flags : GtkIconLookupFlags) : GtkIconInfo
  fun gtk_icon_theme_lookup_icon(icon_theme : GtkIconTheme*, icon_name : Gchar*, size : Gint, flags : GtkIconLookupFlags) : GtkIconInfo
  fun gtk_icon_theme_lookup_icon_for_scale(icon_theme : GtkIconTheme*, icon_name : Gchar*, size : Gint, scale : Gint, flags : GtkIconLookupFlags) : GtkIconInfo
  fun gtk_icon_theme_new : GtkIconTheme*
  fun gtk_icon_theme_prepend_search_path(icon_theme : GtkIconTheme*, path : Gchar*)
  fun gtk_icon_theme_rescan_if_needed(icon_theme : GtkIconTheme*) : Gboolean
  fun gtk_icon_theme_set_custom_theme(icon_theme : GtkIconTheme*, theme_name : Gchar*)
  fun gtk_icon_theme_set_screen(icon_theme : GtkIconTheme*, screen : GdkScreen)
  fun gtk_icon_theme_set_search_path(icon_theme : GtkIconTheme*, path : Gchar**, n_elements : Gint)
  fun gtk_icon_view_convert_widget_to_bin_window_coords(icon_view : GtkIconView*, wx : Gint, wy : Gint, bx : Gint*, by : Gint*)
  fun gtk_icon_view_create_drag_icon(icon_view : GtkIconView*, path : GtkTreePath) : CairoSurfaceT
  fun gtk_icon_view_drop_position_get_type : GType
  fun gtk_icon_view_enable_model_drag_dest(icon_view : GtkIconView*, targets : GtkTargetEntry*, n_targets : Gint, actions : GdkDragAction)
  fun gtk_icon_view_enable_model_drag_source(icon_view : GtkIconView*, start_button_mask : GdkModifierType, targets : GtkTargetEntry*, n_targets : Gint, actions : GdkDragAction)
  fun gtk_icon_view_get_activate_on_single_click(icon_view : GtkIconView*) : Gboolean
  fun gtk_icon_view_get_cell_rect(icon_view : GtkIconView*, path : GtkTreePath, cell : GtkCellRenderer*, rect : GdkRectangle*) : Gboolean
  fun gtk_icon_view_get_column_spacing(icon_view : GtkIconView*) : Gint
  fun gtk_icon_view_get_columns(icon_view : GtkIconView*) : Gint
  fun gtk_icon_view_get_cursor(icon_view : GtkIconView*, path : GtkTreePath*, cell : GtkCellRenderer**) : Gboolean
  fun gtk_icon_view_get_dest_item_at_pos(icon_view : GtkIconView*, drag_x : Gint, drag_y : Gint, path : GtkTreePath*, pos : GtkIconViewDropPosition*) : Gboolean
  fun gtk_icon_view_get_drag_dest_item(icon_view : GtkIconView*, path : GtkTreePath*, pos : GtkIconViewDropPosition*)
  fun gtk_icon_view_get_item_at_pos(icon_view : GtkIconView*, x : Gint, y : Gint, path : GtkTreePath*, cell : GtkCellRenderer**) : Gboolean
  fun gtk_icon_view_get_item_column(icon_view : GtkIconView*, path : GtkTreePath) : Gint
  fun gtk_icon_view_get_item_orientation(icon_view : GtkIconView*) : GtkOrientation
  fun gtk_icon_view_get_item_padding(icon_view : GtkIconView*) : Gint
  fun gtk_icon_view_get_item_row(icon_view : GtkIconView*, path : GtkTreePath) : Gint
  fun gtk_icon_view_get_item_width(icon_view : GtkIconView*) : Gint
  fun gtk_icon_view_get_margin(icon_view : GtkIconView*) : Gint
  fun gtk_icon_view_get_markup_column(icon_view : GtkIconView*) : Gint
  fun gtk_icon_view_get_model(icon_view : GtkIconView*) : GtkTreeModel
  fun gtk_icon_view_get_path_at_pos(icon_view : GtkIconView*, x : Gint, y : Gint) : GtkTreePath
  fun gtk_icon_view_get_pixbuf_column(icon_view : GtkIconView*) : Gint
  fun gtk_icon_view_get_reorderable(icon_view : GtkIconView*) : Gboolean
  fun gtk_icon_view_get_row_spacing(icon_view : GtkIconView*) : Gint
  fun gtk_icon_view_get_selected_items(icon_view : GtkIconView*) : GList*
  fun gtk_icon_view_get_selection_mode(icon_view : GtkIconView*) : GtkSelectionMode
  fun gtk_icon_view_get_spacing(icon_view : GtkIconView*) : Gint
  fun gtk_icon_view_get_text_column(icon_view : GtkIconView*) : Gint
  fun gtk_icon_view_get_tooltip_column(icon_view : GtkIconView*) : Gint
  fun gtk_icon_view_get_tooltip_context(icon_view : GtkIconView*, x : Gint*, y : Gint*, keyboard_tip : Gboolean, model : GtkTreeModel*, path : GtkTreePath*, iter : GtkTreeIter*) : Gboolean
  fun gtk_icon_view_get_type : GType
  fun gtk_icon_view_get_visible_range(icon_view : GtkIconView*, start_path : GtkTreePath*, end_path : GtkTreePath*) : Gboolean
  fun gtk_icon_view_item_activated(icon_view : GtkIconView*, path : GtkTreePath)
  fun gtk_icon_view_new : GtkWidget*
  fun gtk_icon_view_new_with_area(area : GtkCellArea*) : GtkWidget*
  fun gtk_icon_view_new_with_model(model : GtkTreeModel) : GtkWidget*
  fun gtk_icon_view_path_is_selected(icon_view : GtkIconView*, path : GtkTreePath) : Gboolean
  fun gtk_icon_view_scroll_to_path(icon_view : GtkIconView*, path : GtkTreePath, use_align : Gboolean, row_align : Gfloat, col_align : Gfloat)
  fun gtk_icon_view_select_all(icon_view : GtkIconView*)
  fun gtk_icon_view_select_path(icon_view : GtkIconView*, path : GtkTreePath)
  fun gtk_icon_view_selected_foreach(icon_view : GtkIconView*, func : GtkIconViewForeachFunc, data : Gpointer)
  fun gtk_icon_view_set_activate_on_single_click(icon_view : GtkIconView*, single : Gboolean)
  fun gtk_icon_view_set_column_spacing(icon_view : GtkIconView*, column_spacing : Gint)
  fun gtk_icon_view_set_columns(icon_view : GtkIconView*, columns : Gint)
  fun gtk_icon_view_set_cursor(icon_view : GtkIconView*, path : GtkTreePath, cell : GtkCellRenderer*, start_editing : Gboolean)
  fun gtk_icon_view_set_drag_dest_item(icon_view : GtkIconView*, path : GtkTreePath, pos : GtkIconViewDropPosition)
  fun gtk_icon_view_set_item_orientation(icon_view : GtkIconView*, orientation : GtkOrientation)
  fun gtk_icon_view_set_item_padding(icon_view : GtkIconView*, item_padding : Gint)
  fun gtk_icon_view_set_item_width(icon_view : GtkIconView*, item_width : Gint)
  fun gtk_icon_view_set_margin(icon_view : GtkIconView*, margin : Gint)
  fun gtk_icon_view_set_markup_column(icon_view : GtkIconView*, column : Gint)
  fun gtk_icon_view_set_model(icon_view : GtkIconView*, model : GtkTreeModel)
  fun gtk_icon_view_set_pixbuf_column(icon_view : GtkIconView*, column : Gint)
  fun gtk_icon_view_set_reorderable(icon_view : GtkIconView*, reorderable : Gboolean)
  fun gtk_icon_view_set_row_spacing(icon_view : GtkIconView*, row_spacing : Gint)
  fun gtk_icon_view_set_selection_mode(icon_view : GtkIconView*, mode : GtkSelectionMode)
  fun gtk_icon_view_set_spacing(icon_view : GtkIconView*, spacing : Gint)
  fun gtk_icon_view_set_text_column(icon_view : GtkIconView*, column : Gint)
  fun gtk_icon_view_set_tooltip_cell(icon_view : GtkIconView*, tooltip : GtkTooltip, path : GtkTreePath, cell : GtkCellRenderer*)
  fun gtk_icon_view_set_tooltip_column(icon_view : GtkIconView*, column : Gint)
  fun gtk_icon_view_set_tooltip_item(icon_view : GtkIconView*, tooltip : GtkTooltip, path : GtkTreePath)
  fun gtk_icon_view_unselect_all(icon_view : GtkIconView*)
  fun gtk_icon_view_unselect_path(icon_view : GtkIconView*, path : GtkTreePath)
  fun gtk_icon_view_unset_model_drag_dest(icon_view : GtkIconView*)
  fun gtk_icon_view_unset_model_drag_source(icon_view : GtkIconView*)
  fun gtk_im_context_delete_surrounding(context : GtkImContext*, offset : Gint, n_chars : Gint) : Gboolean
  fun gtk_im_context_filter_keypress(context : GtkImContext*, event : GdkEventKey*) : Gboolean
  fun gtk_im_context_focus_in(context : GtkImContext*)
  fun gtk_im_context_focus_out(context : GtkImContext*)
  fun gtk_im_context_get_preedit_string(context : GtkImContext*, str : Gchar**, attrs : PangoAttrList*, cursor_pos : Gint*)
  fun gtk_im_context_get_surrounding(context : GtkImContext*, text : Gchar**, cursor_index : Gint*) : Gboolean
  fun gtk_im_context_get_type : GType
  fun gtk_im_context_reset(context : GtkImContext*)
  fun gtk_im_context_set_client_window(context : GtkImContext*, window : GdkWindow)
  fun gtk_im_context_set_cursor_location(context : GtkImContext*, area : GdkRectangle*)
  fun gtk_im_context_set_surrounding(context : GtkImContext*, text : Gchar*, len : Gint, cursor_index : Gint)
  fun gtk_im_context_set_use_preedit(context : GtkImContext*, use_preedit : Gboolean)
  fun gtk_im_context_simple_add_table(context_simple : GtkImContextSimple*, data : Guint16*, max_seq_len : Gint, n_seqs : Gint)
  fun gtk_im_context_simple_get_type : GType
  fun gtk_im_context_simple_new : GtkImContext*
  fun gtk_im_multicontext_append_menuitems(context : GtkImMulticontext*, menushell : GtkMenuShell*)
  fun gtk_im_multicontext_get_context_id(context : GtkImMulticontext*) : LibC::Char*
  fun gtk_im_multicontext_get_type : GType
  fun gtk_im_multicontext_new : GtkImContext*
  fun gtk_im_multicontext_set_context_id(context : GtkImMulticontext*, context_id : LibC::Char*)
  fun gtk_im_preedit_style_get_type : GType
  fun gtk_im_status_style_get_type : GType
  fun gtk_image_clear(image : GtkImage*)
  fun gtk_image_get_animation(image : GtkImage*) : GdkPixbufAnimation
  fun gtk_image_get_gicon(image : GtkImage*, gicon : GIcon*, size : GtkIconSize*)
  fun gtk_image_get_icon_name(image : GtkImage*, icon_name : Gchar**, size : GtkIconSize*)
  fun gtk_image_get_icon_set(image : GtkImage*, icon_set : GtkIconSet*, size : GtkIconSize*)
  fun gtk_image_get_pixbuf(image : GtkImage*) : GdkPixbuf
  fun gtk_image_get_pixel_size(image : GtkImage*) : Gint
  fun gtk_image_get_stock(image : GtkImage*, stock_id : Gchar**, size : GtkIconSize*)
  fun gtk_image_get_storage_type(image : GtkImage*) : GtkImageType
  fun gtk_image_get_type : GType
  fun gtk_image_menu_item_get_always_show_image(image_menu_item : GtkImageMenuItem*) : Gboolean
  fun gtk_image_menu_item_get_image(image_menu_item : GtkImageMenuItem*) : GtkWidget*
  fun gtk_image_menu_item_get_type : GType
  fun gtk_image_menu_item_get_use_stock(image_menu_item : GtkImageMenuItem*) : Gboolean
  fun gtk_image_menu_item_new : GtkWidget*
  fun gtk_image_menu_item_new_from_stock(stock_id : Gchar*, accel_group : GtkAccelGroup*) : GtkWidget*
  fun gtk_image_menu_item_new_with_label(label : Gchar*) : GtkWidget*
  fun gtk_image_menu_item_new_with_mnemonic(label : Gchar*) : GtkWidget*
  fun gtk_image_menu_item_set_accel_group(image_menu_item : GtkImageMenuItem*, accel_group : GtkAccelGroup*)
  fun gtk_image_menu_item_set_always_show_image(image_menu_item : GtkImageMenuItem*, always_show : Gboolean)
  fun gtk_image_menu_item_set_image(image_menu_item : GtkImageMenuItem*, image : GtkWidget*)
  fun gtk_image_menu_item_set_use_stock(image_menu_item : GtkImageMenuItem*, use_stock : Gboolean)
  fun gtk_image_new : GtkWidget*
  fun gtk_image_new_from_animation(animation : GdkPixbufAnimation) : GtkWidget*
  fun gtk_image_new_from_file(filename : Gchar*) : GtkWidget*
  fun gtk_image_new_from_gicon(icon : GIcon, size : GtkIconSize) : GtkWidget*
  fun gtk_image_new_from_icon_name(icon_name : Gchar*, size : GtkIconSize) : GtkWidget*
  fun gtk_image_new_from_icon_set(icon_set : GtkIconSet, size : GtkIconSize) : GtkWidget*
  fun gtk_image_new_from_pixbuf(pixbuf : GdkPixbuf) : GtkWidget*
  fun gtk_image_new_from_resource(resource_path : Gchar*) : GtkWidget*
  fun gtk_image_new_from_stock(stock_id : Gchar*, size : GtkIconSize) : GtkWidget*
  fun gtk_image_new_from_surface(surface : CairoSurfaceT) : GtkWidget*
  fun gtk_image_set_from_animation(image : GtkImage*, animation : GdkPixbufAnimation)
  fun gtk_image_set_from_file(image : GtkImage*, filename : Gchar*)
  fun gtk_image_set_from_gicon(image : GtkImage*, icon : GIcon, size : GtkIconSize)
  fun gtk_image_set_from_icon_name(image : GtkImage*, icon_name : Gchar*, size : GtkIconSize)
  fun gtk_image_set_from_icon_set(image : GtkImage*, icon_set : GtkIconSet, size : GtkIconSize)
  fun gtk_image_set_from_pixbuf(image : GtkImage*, pixbuf : GdkPixbuf)
  fun gtk_image_set_from_resource(image : GtkImage*, resource_path : Gchar*)
  fun gtk_image_set_from_stock(image : GtkImage*, stock_id : Gchar*, size : GtkIconSize)
  fun gtk_image_set_from_surface(image : GtkImage*, surface : CairoSurfaceT)
  fun gtk_image_set_pixel_size(image : GtkImage*, pixel_size : Gint)
  fun gtk_image_type_get_type : GType
  fun gtk_info_bar_add_action_widget(info_bar : GtkInfoBar*, child : GtkWidget*, response_id : Gint)
  fun gtk_info_bar_add_button(info_bar : GtkInfoBar*, button_text : Gchar*, response_id : Gint) : GtkWidget*
  fun gtk_info_bar_add_buttons(info_bar : GtkInfoBar*, first_button_text : Gchar*, ...)
  fun gtk_info_bar_get_action_area(info_bar : GtkInfoBar*) : GtkWidget*
  fun gtk_info_bar_get_content_area(info_bar : GtkInfoBar*) : GtkWidget*
  fun gtk_info_bar_get_message_type(info_bar : GtkInfoBar*) : GtkMessageType
  fun gtk_info_bar_get_show_close_button(info_bar : GtkInfoBar*) : Gboolean
  fun gtk_info_bar_get_type : GType
  fun gtk_info_bar_new : GtkWidget*
  fun gtk_info_bar_new_with_buttons(first_button_text : Gchar*, ...) : GtkWidget*
  fun gtk_info_bar_response(info_bar : GtkInfoBar*, response_id : Gint)
  fun gtk_info_bar_set_default_response(info_bar : GtkInfoBar*, response_id : Gint)
  fun gtk_info_bar_set_message_type(info_bar : GtkInfoBar*, message_type : GtkMessageType)
  fun gtk_info_bar_set_response_sensitive(info_bar : GtkInfoBar*, response_id : Gint, setting : Gboolean)
  fun gtk_info_bar_set_show_close_button(info_bar : GtkInfoBar*, setting : Gboolean)
  fun gtk_init(argc : LibC::Int*, argv : LibC::Char***)
  fun gtk_init_check(argc : LibC::Int*, argv : LibC::Char***) : Gboolean
  fun gtk_init_with_args(argc : Gint*, argv : Gchar***, parameter_string : Gchar*, entries : GOptionEntry*, translation_domain : Gchar*, error : GError**) : Gboolean
  fun gtk_input_hints_get_type : GType
  fun gtk_input_purpose_get_type : GType
  fun gtk_invisible_get_screen(invisible : GtkInvisible*) : GdkScreen
  fun gtk_invisible_get_type : GType
  fun gtk_invisible_new : GtkWidget*
  fun gtk_invisible_new_for_screen(screen : GdkScreen) : GtkWidget*
  fun gtk_invisible_set_screen(invisible : GtkInvisible*, screen : GdkScreen)
  fun gtk_junction_sides_get_type : GType
  fun gtk_justification_get_type : GType
  fun gtk_key_snooper_install(snooper : GtkKeySnoopFunc, func_data : Gpointer) : Guint
  fun gtk_key_snooper_remove(snooper_handler_id : Guint)
  fun gtk_label_get_angle(label : GtkLabel*) : Gdouble
  fun gtk_label_get_attributes(label : GtkLabel*) : PangoAttrList
  fun gtk_label_get_current_uri(label : GtkLabel*) : Gchar*
  fun gtk_label_get_ellipsize(label : GtkLabel*) : PangoEllipsizeMode
  fun gtk_label_get_justify(label : GtkLabel*) : GtkJustification
  fun gtk_label_get_label(label : GtkLabel*) : Gchar*
  fun gtk_label_get_layout(label : GtkLabel*) : PangoLayout
  fun gtk_label_get_layout_offsets(label : GtkLabel*, x : Gint*, y : Gint*)
  fun gtk_label_get_line_wrap(label : GtkLabel*) : Gboolean
  fun gtk_label_get_line_wrap_mode(label : GtkLabel*) : PangoWrapMode
  fun gtk_label_get_lines(label : GtkLabel*) : Gint
  fun gtk_label_get_max_width_chars(label : GtkLabel*) : Gint
  fun gtk_label_get_mnemonic_keyval(label : GtkLabel*) : Guint
  fun gtk_label_get_mnemonic_widget(label : GtkLabel*) : GtkWidget*
  fun gtk_label_get_selectable(label : GtkLabel*) : Gboolean
  fun gtk_label_get_selection_bounds(label : GtkLabel*, start : Gint*, _end : Gint*) : Gboolean
  fun gtk_label_get_single_line_mode(label : GtkLabel*) : Gboolean
  fun gtk_label_get_text(label : GtkLabel*) : Gchar*
  fun gtk_label_get_track_visited_links(label : GtkLabel*) : Gboolean
  fun gtk_label_get_type : GType
  fun gtk_label_get_use_markup(label : GtkLabel*) : Gboolean
  fun gtk_label_get_use_underline(label : GtkLabel*) : Gboolean
  fun gtk_label_get_width_chars(label : GtkLabel*) : Gint
  fun gtk_label_get_xalign(label : GtkLabel*) : Gfloat
  fun gtk_label_get_yalign(label : GtkLabel*) : Gfloat
  fun gtk_label_new(str : Gchar*) : GtkWidget*
  fun gtk_label_new_with_mnemonic(str : Gchar*) : GtkWidget*
  fun gtk_label_select_region(label : GtkLabel*, start_offset : Gint, end_offset : Gint)
  fun gtk_label_set_angle(label : GtkLabel*, angle : Gdouble)
  fun gtk_label_set_attributes(label : GtkLabel*, attrs : PangoAttrList)
  fun gtk_label_set_ellipsize(label : GtkLabel*, mode : PangoEllipsizeMode)
  fun gtk_label_set_justify(label : GtkLabel*, jtype : GtkJustification)
  fun gtk_label_set_label(label : GtkLabel*, str : Gchar*)
  fun gtk_label_set_line_wrap(label : GtkLabel*, wrap : Gboolean)
  fun gtk_label_set_line_wrap_mode(label : GtkLabel*, wrap_mode : PangoWrapMode)
  fun gtk_label_set_lines(label : GtkLabel*, lines : Gint)
  fun gtk_label_set_markup(label : GtkLabel*, str : Gchar*)
  fun gtk_label_set_markup_with_mnemonic(label : GtkLabel*, str : Gchar*)
  fun gtk_label_set_max_width_chars(label : GtkLabel*, n_chars : Gint)
  fun gtk_label_set_mnemonic_widget(label : GtkLabel*, widget : GtkWidget*)
  fun gtk_label_set_pattern(label : GtkLabel*, pattern : Gchar*)
  fun gtk_label_set_selectable(label : GtkLabel*, setting : Gboolean)
  fun gtk_label_set_single_line_mode(label : GtkLabel*, single_line_mode : Gboolean)
  fun gtk_label_set_text(label : GtkLabel*, str : Gchar*)
  fun gtk_label_set_text_with_mnemonic(label : GtkLabel*, str : Gchar*)
  fun gtk_label_set_track_visited_links(label : GtkLabel*, track_links : Gboolean)
  fun gtk_label_set_use_markup(label : GtkLabel*, setting : Gboolean)
  fun gtk_label_set_use_underline(label : GtkLabel*, setting : Gboolean)
  fun gtk_label_set_width_chars(label : GtkLabel*, n_chars : Gint)
  fun gtk_label_set_xalign(label : GtkLabel*, xalign : Gfloat)
  fun gtk_label_set_yalign(label : GtkLabel*, yalign : Gfloat)
  fun gtk_layout_get_bin_window(layout : GtkLayout*) : GdkWindow
  fun gtk_layout_get_hadjustment(layout : GtkLayout*) : GtkAdjustment*
  fun gtk_layout_get_size(layout : GtkLayout*, width : Guint*, height : Guint*)
  fun gtk_layout_get_type : GType
  fun gtk_layout_get_vadjustment(layout : GtkLayout*) : GtkAdjustment*
  fun gtk_layout_move(layout : GtkLayout*, child_widget : GtkWidget*, x : Gint, y : Gint)
  fun gtk_layout_new(hadjustment : GtkAdjustment*, vadjustment : GtkAdjustment*) : GtkWidget*
  fun gtk_layout_put(layout : GtkLayout*, child_widget : GtkWidget*, x : Gint, y : Gint)
  fun gtk_layout_set_hadjustment(layout : GtkLayout*, adjustment : GtkAdjustment*)
  fun gtk_layout_set_size(layout : GtkLayout*, width : Guint, height : Guint)
  fun gtk_layout_set_vadjustment(layout : GtkLayout*, adjustment : GtkAdjustment*)
  fun gtk_level_bar_add_offset_value(self : GtkLevelBar*, name : Gchar*, value : Gdouble)
  fun gtk_level_bar_get_inverted(self : GtkLevelBar*) : Gboolean
  fun gtk_level_bar_get_max_value(self : GtkLevelBar*) : Gdouble
  fun gtk_level_bar_get_min_value(self : GtkLevelBar*) : Gdouble
  fun gtk_level_bar_get_mode(self : GtkLevelBar*) : GtkLevelBarMode
  fun gtk_level_bar_get_offset_value(self : GtkLevelBar*, name : Gchar*, value : Gdouble*) : Gboolean
  fun gtk_level_bar_get_type : GType
  fun gtk_level_bar_get_value(self : GtkLevelBar*) : Gdouble
  fun gtk_level_bar_mode_get_type : GType
  fun gtk_level_bar_new : GtkWidget*
  fun gtk_level_bar_new_for_interval(min_value : Gdouble, max_value : Gdouble) : GtkWidget*
  fun gtk_level_bar_remove_offset_value(self : GtkLevelBar*, name : Gchar*)
  fun gtk_level_bar_set_inverted(self : GtkLevelBar*, inverted : Gboolean)
  fun gtk_level_bar_set_max_value(self : GtkLevelBar*, value : Gdouble)
  fun gtk_level_bar_set_min_value(self : GtkLevelBar*, value : Gdouble)
  fun gtk_level_bar_set_mode(self : GtkLevelBar*, mode : GtkLevelBarMode)
  fun gtk_level_bar_set_value(self : GtkLevelBar*, value : Gdouble)
  fun gtk_license_get_type : GType
  fun gtk_link_button_get_type : GType
  fun gtk_link_button_get_uri(link_button : GtkLinkButton*) : Gchar*
  fun gtk_link_button_get_visited(link_button : GtkLinkButton*) : Gboolean
  fun gtk_link_button_new(uri : Gchar*) : GtkWidget*
  fun gtk_link_button_new_with_label(uri : Gchar*, label : Gchar*) : GtkWidget*
  fun gtk_link_button_set_uri(link_button : GtkLinkButton*, uri : Gchar*)
  fun gtk_link_button_set_visited(link_button : GtkLinkButton*, visited : Gboolean)
  fun gtk_list_box_bind_model(box : GtkListBox*, model : GListModel, create_widget_func : GtkListBoxCreateWidgetFunc, user_data : Gpointer, user_data_free_func : GDestroyNotify)
  fun gtk_list_box_drag_highlight_row(box : GtkListBox*, row : GtkListBoxRow*)
  fun gtk_list_box_drag_unhighlight_row(box : GtkListBox*)
  fun gtk_list_box_get_activate_on_single_click(box : GtkListBox*) : Gboolean
  fun gtk_list_box_get_adjustment(box : GtkListBox*) : GtkAdjustment*
  fun gtk_list_box_get_row_at_index(box : GtkListBox*, index_ : Gint) : GtkListBoxRow*
  fun gtk_list_box_get_row_at_y(box : GtkListBox*, y : Gint) : GtkListBoxRow*
  fun gtk_list_box_get_selected_row(box : GtkListBox*) : GtkListBoxRow*
  fun gtk_list_box_get_selected_rows(box : GtkListBox*) : GList*
  fun gtk_list_box_get_selection_mode(box : GtkListBox*) : GtkSelectionMode
  fun gtk_list_box_get_type : GType
  fun gtk_list_box_insert(box : GtkListBox*, child : GtkWidget*, position : Gint)
  fun gtk_list_box_invalidate_filter(box : GtkListBox*)
  fun gtk_list_box_invalidate_headers(box : GtkListBox*)
  fun gtk_list_box_invalidate_sort(box : GtkListBox*)
  fun gtk_list_box_new : GtkWidget*
  fun gtk_list_box_prepend(box : GtkListBox*, child : GtkWidget*)
  fun gtk_list_box_row_changed(row : GtkListBoxRow*)
  fun gtk_list_box_row_get_activatable(row : GtkListBoxRow*) : Gboolean
  fun gtk_list_box_row_get_header(row : GtkListBoxRow*) : GtkWidget*
  fun gtk_list_box_row_get_index(row : GtkListBoxRow*) : Gint
  fun gtk_list_box_row_get_selectable(row : GtkListBoxRow*) : Gboolean
  fun gtk_list_box_row_get_type : GType
  fun gtk_list_box_row_is_selected(row : GtkListBoxRow*) : Gboolean
  fun gtk_list_box_row_new : GtkWidget*
  fun gtk_list_box_row_set_activatable(row : GtkListBoxRow*, activatable : Gboolean)
  fun gtk_list_box_row_set_header(row : GtkListBoxRow*, header : GtkWidget*)
  fun gtk_list_box_row_set_selectable(row : GtkListBoxRow*, selectable : Gboolean)
  fun gtk_list_box_select_all(box : GtkListBox*)
  fun gtk_list_box_select_row(box : GtkListBox*, row : GtkListBoxRow*)
  fun gtk_list_box_selected_foreach(box : GtkListBox*, func : GtkListBoxForeachFunc, data : Gpointer)
  fun gtk_list_box_set_activate_on_single_click(box : GtkListBox*, single : Gboolean)
  fun gtk_list_box_set_adjustment(box : GtkListBox*, adjustment : GtkAdjustment*)
  fun gtk_list_box_set_filter_func(box : GtkListBox*, filter_func : GtkListBoxFilterFunc, user_data : Gpointer, destroy : GDestroyNotify)
  fun gtk_list_box_set_header_func(box : GtkListBox*, update_header : GtkListBoxUpdateHeaderFunc, user_data : Gpointer, destroy : GDestroyNotify)
  fun gtk_list_box_set_placeholder(box : GtkListBox*, placeholder : GtkWidget*)
  fun gtk_list_box_set_selection_mode(box : GtkListBox*, mode : GtkSelectionMode)
  fun gtk_list_box_set_sort_func(box : GtkListBox*, sort_func : GtkListBoxSortFunc, user_data : Gpointer, destroy : GDestroyNotify)
  fun gtk_list_box_unselect_all(box : GtkListBox*)
  fun gtk_list_box_unselect_row(box : GtkListBox*, row : GtkListBoxRow*)
  fun gtk_list_store_append(list_store : GtkListStore*, iter : GtkTreeIter*)
  fun gtk_list_store_clear(list_store : GtkListStore*)
  fun gtk_list_store_get_type : GType
  fun gtk_list_store_insert(list_store : GtkListStore*, iter : GtkTreeIter*, position : Gint)
  fun gtk_list_store_insert_after(list_store : GtkListStore*, iter : GtkTreeIter*, sibling : GtkTreeIter*)
  fun gtk_list_store_insert_before(list_store : GtkListStore*, iter : GtkTreeIter*, sibling : GtkTreeIter*)
  fun gtk_list_store_insert_with_values(list_store : GtkListStore*, iter : GtkTreeIter*, position : Gint, ...)
  fun gtk_list_store_insert_with_valuesv(list_store : GtkListStore*, iter : GtkTreeIter*, position : Gint, columns : Gint*, values : GValue*, n_values : Gint)
  fun gtk_list_store_iter_is_valid(list_store : GtkListStore*, iter : GtkTreeIter*) : Gboolean
  fun gtk_list_store_move_after(store : GtkListStore*, iter : GtkTreeIter*, position : GtkTreeIter*)
  fun gtk_list_store_move_before(store : GtkListStore*, iter : GtkTreeIter*, position : GtkTreeIter*)
  fun gtk_list_store_new(n_columns : Gint, ...) : GtkListStore*
  fun gtk_list_store_newv(n_columns : Gint, types : GType*) : GtkListStore*
  fun gtk_list_store_prepend(list_store : GtkListStore*, iter : GtkTreeIter*)
  fun gtk_list_store_remove(list_store : GtkListStore*, iter : GtkTreeIter*) : Gboolean
  fun gtk_list_store_reorder(store : GtkListStore*, new_order : Gint*)
  fun gtk_list_store_set(list_store : GtkListStore*, iter : GtkTreeIter*, ...)
  fun gtk_list_store_set_column_types(list_store : GtkListStore*, n_columns : Gint, types : GType*)
  fun gtk_list_store_set_valist(list_store : GtkListStore*, iter : GtkTreeIter*, var_args : VaList)
  fun gtk_list_store_set_value(list_store : GtkListStore*, iter : GtkTreeIter*, column : Gint, value : GValue*)
  fun gtk_list_store_set_valuesv(list_store : GtkListStore*, iter : GtkTreeIter*, columns : Gint*, values : GValue*, n_values : Gint)
  fun gtk_list_store_swap(store : GtkListStore*, a : GtkTreeIter*, b : GtkTreeIter*)
  fun gtk_lock_button_get_permission(button : GtkLockButton*) : GPermission*
  fun gtk_lock_button_get_type : GType
  fun gtk_lock_button_new(permission : GPermission*) : GtkWidget*
  fun gtk_lock_button_set_permission(button : GtkLockButton*, permission : GPermission*)
  fun gtk_main
  fun gtk_main_do_event(event : GdkEvent*)
  fun gtk_main_iteration : Gboolean
  fun gtk_main_iteration_do(blocking : Gboolean) : Gboolean
  fun gtk_main_level : Guint
  fun gtk_main_quit
  fun gtk_menu_attach(menu : GtkMenu*, child : GtkWidget*, left_attach : Guint, right_attach : Guint, top_attach : Guint, bottom_attach : Guint)
  fun gtk_menu_attach_to_widget(menu : GtkMenu*, attach_widget : GtkWidget*, detacher : GtkMenuDetachFunc)
  fun gtk_menu_bar_get_child_pack_direction(menubar : GtkMenuBar*) : GtkPackDirection
  fun gtk_menu_bar_get_pack_direction(menubar : GtkMenuBar*) : GtkPackDirection
  fun gtk_menu_bar_get_type : GType
  fun gtk_menu_bar_new : GtkWidget*
  fun gtk_menu_bar_new_from_model(model : GMenuModel*) : GtkWidget*
  fun gtk_menu_bar_set_child_pack_direction(menubar : GtkMenuBar*, child_pack_dir : GtkPackDirection)
  fun gtk_menu_bar_set_pack_direction(menubar : GtkMenuBar*, pack_dir : GtkPackDirection)
  fun gtk_menu_button_get_align_widget(menu_button : GtkMenuButton*) : GtkWidget*
  fun gtk_menu_button_get_direction(menu_button : GtkMenuButton*) : GtkArrowType
  fun gtk_menu_button_get_menu_model(menu_button : GtkMenuButton*) : GMenuModel*
  fun gtk_menu_button_get_popover(menu_button : GtkMenuButton*) : GtkPopover*
  fun gtk_menu_button_get_popup(menu_button : GtkMenuButton*) : GtkMenu*
  fun gtk_menu_button_get_type : GType
  fun gtk_menu_button_get_use_popover(menu_button : GtkMenuButton*) : Gboolean
  fun gtk_menu_button_new : GtkWidget*
  fun gtk_menu_button_set_align_widget(menu_button : GtkMenuButton*, align_widget : GtkWidget*)
  fun gtk_menu_button_set_direction(menu_button : GtkMenuButton*, direction : GtkArrowType)
  fun gtk_menu_button_set_menu_model(menu_button : GtkMenuButton*, menu_model : GMenuModel*)
  fun gtk_menu_button_set_popover(menu_button : GtkMenuButton*, popover : GtkWidget*)
  fun gtk_menu_button_set_popup(menu_button : GtkMenuButton*, menu : GtkWidget*)
  fun gtk_menu_button_set_use_popover(menu_button : GtkMenuButton*, use_popover : Gboolean)
  fun gtk_menu_detach(menu : GtkMenu*)
  fun gtk_menu_direction_type_get_type : GType
  fun gtk_menu_get_accel_group(menu : GtkMenu*) : GtkAccelGroup*
  fun gtk_menu_get_accel_path(menu : GtkMenu*) : Gchar*
  fun gtk_menu_get_active(menu : GtkMenu*) : GtkWidget*
  fun gtk_menu_get_attach_widget(menu : GtkMenu*) : GtkWidget*
  fun gtk_menu_get_for_attach_widget(widget : GtkWidget*) : GList*
  fun gtk_menu_get_monitor(menu : GtkMenu*) : Gint
  fun gtk_menu_get_reserve_toggle_size(menu : GtkMenu*) : Gboolean
  fun gtk_menu_get_tearoff_state(menu : GtkMenu*) : Gboolean
  fun gtk_menu_get_title(menu : GtkMenu*) : Gchar*
  fun gtk_menu_get_type : GType
  fun gtk_menu_item_activate(menu_item : GtkMenuItem*)
  fun gtk_menu_item_deselect(menu_item : GtkMenuItem*)
  fun gtk_menu_item_get_accel_path(menu_item : GtkMenuItem*) : Gchar*
  fun gtk_menu_item_get_label(menu_item : GtkMenuItem*) : Gchar*
  fun gtk_menu_item_get_reserve_indicator(menu_item : GtkMenuItem*) : Gboolean
  fun gtk_menu_item_get_right_justified(menu_item : GtkMenuItem*) : Gboolean
  fun gtk_menu_item_get_submenu(menu_item : GtkMenuItem*) : GtkWidget*
  fun gtk_menu_item_get_type : GType
  fun gtk_menu_item_get_use_underline(menu_item : GtkMenuItem*) : Gboolean
  fun gtk_menu_item_new : GtkWidget*
  fun gtk_menu_item_new_with_label(label : Gchar*) : GtkWidget*
  fun gtk_menu_item_new_with_mnemonic(label : Gchar*) : GtkWidget*
  fun gtk_menu_item_select(menu_item : GtkMenuItem*)
  fun gtk_menu_item_set_accel_path(menu_item : GtkMenuItem*, accel_path : Gchar*)
  fun gtk_menu_item_set_label(menu_item : GtkMenuItem*, label : Gchar*)
  fun gtk_menu_item_set_reserve_indicator(menu_item : GtkMenuItem*, reserve : Gboolean)
  fun gtk_menu_item_set_right_justified(menu_item : GtkMenuItem*, right_justified : Gboolean)
  fun gtk_menu_item_set_submenu(menu_item : GtkMenuItem*, submenu : GtkWidget*)
  fun gtk_menu_item_set_use_underline(menu_item : GtkMenuItem*, setting : Gboolean)
  fun gtk_menu_item_toggle_size_allocate(menu_item : GtkMenuItem*, allocation : Gint)
  fun gtk_menu_item_toggle_size_request(menu_item : GtkMenuItem*, requisition : Gint*)
  fun gtk_menu_new : GtkWidget*
  fun gtk_menu_new_from_model(model : GMenuModel*) : GtkWidget*
  fun gtk_menu_popdown(menu : GtkMenu*)
  fun gtk_menu_popup(menu : GtkMenu*, parent_menu_shell : GtkWidget*, parent_menu_item : GtkWidget*, func : GtkMenuPositionFunc, data : Gpointer, button : Guint, activate_time : Guint32)
  fun gtk_menu_popup_for_device(menu : GtkMenu*, device : GdkDevice, parent_menu_shell : GtkWidget*, parent_menu_item : GtkWidget*, func : GtkMenuPositionFunc, data : Gpointer, destroy : GDestroyNotify, button : Guint, activate_time : Guint32)
  fun gtk_menu_reorder_child(menu : GtkMenu*, child : GtkWidget*, position : Gint)
  fun gtk_menu_reposition(menu : GtkMenu*)
  fun gtk_menu_set_accel_group(menu : GtkMenu*, accel_group : GtkAccelGroup*)
  fun gtk_menu_set_accel_path(menu : GtkMenu*, accel_path : Gchar*)
  fun gtk_menu_set_active(menu : GtkMenu*, index : Guint)
  fun gtk_menu_set_monitor(menu : GtkMenu*, monitor_num : Gint)
  fun gtk_menu_set_reserve_toggle_size(menu : GtkMenu*, reserve_toggle_size : Gboolean)
  fun gtk_menu_set_screen(menu : GtkMenu*, screen : GdkScreen)
  fun gtk_menu_set_tearoff_state(menu : GtkMenu*, torn_off : Gboolean)
  fun gtk_menu_set_title(menu : GtkMenu*, title : Gchar*)
  fun gtk_menu_shell_activate_item(menu_shell : GtkMenuShell*, menu_item : GtkWidget*, force_deactivate : Gboolean)
  fun gtk_menu_shell_append(menu_shell : GtkMenuShell*, child : GtkWidget*)
  fun gtk_menu_shell_bind_model(menu_shell : GtkMenuShell*, model : GMenuModel*, action_namespace : Gchar*, with_separators : Gboolean)
  fun gtk_menu_shell_cancel(menu_shell : GtkMenuShell*)
  fun gtk_menu_shell_deactivate(menu_shell : GtkMenuShell*)
  fun gtk_menu_shell_deselect(menu_shell : GtkMenuShell*)
  fun gtk_menu_shell_get_parent_shell(menu_shell : GtkMenuShell*) : GtkWidget*
  fun gtk_menu_shell_get_selected_item(menu_shell : GtkMenuShell*) : GtkWidget*
  fun gtk_menu_shell_get_take_focus(menu_shell : GtkMenuShell*) : Gboolean
  fun gtk_menu_shell_get_type : GType
  fun gtk_menu_shell_insert(menu_shell : GtkMenuShell*, child : GtkWidget*, position : Gint)
  fun gtk_menu_shell_prepend(menu_shell : GtkMenuShell*, child : GtkWidget*)
  fun gtk_menu_shell_select_first(menu_shell : GtkMenuShell*, search_sensitive : Gboolean)
  fun gtk_menu_shell_select_item(menu_shell : GtkMenuShell*, menu_item : GtkWidget*)
  fun gtk_menu_shell_set_take_focus(menu_shell : GtkMenuShell*, take_focus : Gboolean)
  fun gtk_menu_tool_button_get_menu(button : GtkMenuToolButton*) : GtkWidget*
  fun gtk_menu_tool_button_get_type : GType
  fun gtk_menu_tool_button_new(icon_widget : GtkWidget*, label : Gchar*) : GtkToolItem*
  fun gtk_menu_tool_button_new_from_stock(stock_id : Gchar*) : GtkToolItem*
  fun gtk_menu_tool_button_set_arrow_tooltip_markup(button : GtkMenuToolButton*, markup : Gchar*)
  fun gtk_menu_tool_button_set_arrow_tooltip_text(button : GtkMenuToolButton*, text : Gchar*)
  fun gtk_menu_tool_button_set_menu(button : GtkMenuToolButton*, menu : GtkWidget*)
  fun gtk_message_dialog_format_secondary_markup(message_dialog : GtkMessageDialog*, message_format : Gchar*, ...)
  fun gtk_message_dialog_format_secondary_text(message_dialog : GtkMessageDialog*, message_format : Gchar*, ...)
  fun gtk_message_dialog_get_image(dialog : GtkMessageDialog*) : GtkWidget*
  fun gtk_message_dialog_get_message_area(message_dialog : GtkMessageDialog*) : GtkWidget*
  fun gtk_message_dialog_get_type : GType
  fun gtk_message_dialog_new(parent : GtkWindow*, flags : GtkDialogFlags, type : GtkMessageType, buttons : GtkButtonsType, message_format : Gchar*, ...) : GtkWidget*
  fun gtk_message_dialog_new_with_markup(parent : GtkWindow*, flags : GtkDialogFlags, type : GtkMessageType, buttons : GtkButtonsType, message_format : Gchar*, ...) : GtkWidget*
  fun gtk_message_dialog_set_image(dialog : GtkMessageDialog*, image : GtkWidget*)
  fun gtk_message_dialog_set_markup(message_dialog : GtkMessageDialog*, str : Gchar*)
  fun gtk_message_type_get_type : GType
  fun gtk_misc_get_alignment(misc : GtkMisc*, xalign : Gfloat*, yalign : Gfloat*)
  fun gtk_misc_get_padding(misc : GtkMisc*, xpad : Gint*, ypad : Gint*)
  fun gtk_misc_get_type : GType
  fun gtk_misc_set_alignment(misc : GtkMisc*, xalign : Gfloat, yalign : Gfloat)
  fun gtk_misc_set_padding(misc : GtkMisc*, xpad : Gint, ypad : Gint)
  fun gtk_model_button_get_type : GType
  fun gtk_model_button_new : GtkWidget*
  fun gtk_mount_operation_get_parent(op : GtkMountOperation*) : GtkWindow*
  fun gtk_mount_operation_get_screen(op : GtkMountOperation*) : GdkScreen
  fun gtk_mount_operation_get_type : GType
  fun gtk_mount_operation_is_showing(op : GtkMountOperation*) : Gboolean
  fun gtk_mount_operation_new(parent : GtkWindow*) : GMountOperation*
  fun gtk_mount_operation_set_parent(op : GtkMountOperation*, parent : GtkWindow*)
  fun gtk_mount_operation_set_screen(op : GtkMountOperation*, screen : GdkScreen)
  fun gtk_movement_step_get_type : GType
  fun gtk_notebook_append_page(notebook : GtkNotebook*, child : GtkWidget*, tab_label : GtkWidget*) : Gint
  fun gtk_notebook_append_page_menu(notebook : GtkNotebook*, child : GtkWidget*, tab_label : GtkWidget*, menu_label : GtkWidget*) : Gint
  fun gtk_notebook_detach_tab(notebook : GtkNotebook*, child : GtkWidget*)
  fun gtk_notebook_get_action_widget(notebook : GtkNotebook*, pack_type : GtkPackType) : GtkWidget*
  fun gtk_notebook_get_current_page(notebook : GtkNotebook*) : Gint
  fun gtk_notebook_get_group_name(notebook : GtkNotebook*) : Gchar*
  fun gtk_notebook_get_menu_label(notebook : GtkNotebook*, child : GtkWidget*) : GtkWidget*
  fun gtk_notebook_get_menu_label_text(notebook : GtkNotebook*, child : GtkWidget*) : Gchar*
  fun gtk_notebook_get_n_pages(notebook : GtkNotebook*) : Gint
  fun gtk_notebook_get_nth_page(notebook : GtkNotebook*, page_num : Gint) : GtkWidget*
  fun gtk_notebook_get_scrollable(notebook : GtkNotebook*) : Gboolean
  fun gtk_notebook_get_show_border(notebook : GtkNotebook*) : Gboolean
  fun gtk_notebook_get_show_tabs(notebook : GtkNotebook*) : Gboolean
  fun gtk_notebook_get_tab_detachable(notebook : GtkNotebook*, child : GtkWidget*) : Gboolean
  fun gtk_notebook_get_tab_hborder(notebook : GtkNotebook*) : Guint16
  fun gtk_notebook_get_tab_label(notebook : GtkNotebook*, child : GtkWidget*) : GtkWidget*
  fun gtk_notebook_get_tab_label_text(notebook : GtkNotebook*, child : GtkWidget*) : Gchar*
  fun gtk_notebook_get_tab_pos(notebook : GtkNotebook*) : GtkPositionType
  fun gtk_notebook_get_tab_reorderable(notebook : GtkNotebook*, child : GtkWidget*) : Gboolean
  fun gtk_notebook_get_tab_vborder(notebook : GtkNotebook*) : Guint16
  fun gtk_notebook_get_type : GType
  fun gtk_notebook_insert_page(notebook : GtkNotebook*, child : GtkWidget*, tab_label : GtkWidget*, position : Gint) : Gint
  fun gtk_notebook_insert_page_menu(notebook : GtkNotebook*, child : GtkWidget*, tab_label : GtkWidget*, menu_label : GtkWidget*, position : Gint) : Gint
  fun gtk_notebook_new : GtkWidget*
  fun gtk_notebook_next_page(notebook : GtkNotebook*)
  fun gtk_notebook_page_num(notebook : GtkNotebook*, child : GtkWidget*) : Gint
  fun gtk_notebook_popup_disable(notebook : GtkNotebook*)
  fun gtk_notebook_popup_enable(notebook : GtkNotebook*)
  fun gtk_notebook_prepend_page(notebook : GtkNotebook*, child : GtkWidget*, tab_label : GtkWidget*) : Gint
  fun gtk_notebook_prepend_page_menu(notebook : GtkNotebook*, child : GtkWidget*, tab_label : GtkWidget*, menu_label : GtkWidget*) : Gint
  fun gtk_notebook_prev_page(notebook : GtkNotebook*)
  fun gtk_notebook_remove_page(notebook : GtkNotebook*, page_num : Gint)
  fun gtk_notebook_reorder_child(notebook : GtkNotebook*, child : GtkWidget*, position : Gint)
  fun gtk_notebook_set_action_widget(notebook : GtkNotebook*, widget : GtkWidget*, pack_type : GtkPackType)
  fun gtk_notebook_set_current_page(notebook : GtkNotebook*, page_num : Gint)
  fun gtk_notebook_set_group_name(notebook : GtkNotebook*, group_name : Gchar*)
  fun gtk_notebook_set_menu_label(notebook : GtkNotebook*, child : GtkWidget*, menu_label : GtkWidget*)
  fun gtk_notebook_set_menu_label_text(notebook : GtkNotebook*, child : GtkWidget*, menu_text : Gchar*)
  fun gtk_notebook_set_scrollable(notebook : GtkNotebook*, scrollable : Gboolean)
  fun gtk_notebook_set_show_border(notebook : GtkNotebook*, show_border : Gboolean)
  fun gtk_notebook_set_show_tabs(notebook : GtkNotebook*, show_tabs : Gboolean)
  fun gtk_notebook_set_tab_detachable(notebook : GtkNotebook*, child : GtkWidget*, detachable : Gboolean)
  fun gtk_notebook_set_tab_label(notebook : GtkNotebook*, child : GtkWidget*, tab_label : GtkWidget*)
  fun gtk_notebook_set_tab_label_text(notebook : GtkNotebook*, child : GtkWidget*, tab_text : Gchar*)
  fun gtk_notebook_set_tab_pos(notebook : GtkNotebook*, pos : GtkPositionType)
  fun gtk_notebook_set_tab_reorderable(notebook : GtkNotebook*, child : GtkWidget*, reorderable : Gboolean)
  fun gtk_notebook_tab_get_type : GType
  fun gtk_number_up_layout_get_type : GType
  fun gtk_numerable_icon_get_background_gicon(self : GtkNumerableIcon*) : GIcon
  fun gtk_numerable_icon_get_background_icon_name(self : GtkNumerableIcon*) : Gchar*
  fun gtk_numerable_icon_get_count(self : GtkNumerableIcon*) : Gint
  fun gtk_numerable_icon_get_label(self : GtkNumerableIcon*) : Gchar*
  fun gtk_numerable_icon_get_style_context(self : GtkNumerableIcon*) : GtkStyleContext*
  fun gtk_numerable_icon_get_type : GType
  fun gtk_numerable_icon_new(base_icon : GIcon) : GIcon
  fun gtk_numerable_icon_new_with_style_context(base_icon : GIcon, context : GtkStyleContext*) : GIcon
  fun gtk_numerable_icon_set_background_gicon(self : GtkNumerableIcon*, icon : GIcon)
  fun gtk_numerable_icon_set_background_icon_name(self : GtkNumerableIcon*, icon_name : Gchar*)
  fun gtk_numerable_icon_set_count(self : GtkNumerableIcon*, count : Gint)
  fun gtk_numerable_icon_set_label(self : GtkNumerableIcon*, label : Gchar*)
  fun gtk_numerable_icon_set_style_context(self : GtkNumerableIcon*, style : GtkStyleContext*)
  fun gtk_offscreen_window_get_pixbuf(offscreen : GtkOffscreenWindow*) : GdkPixbuf
  fun gtk_offscreen_window_get_surface(offscreen : GtkOffscreenWindow*) : CairoSurfaceT
  fun gtk_offscreen_window_get_type : GType
  fun gtk_offscreen_window_new : GtkWidget*
  fun gtk_orientable_get_orientation(orientable : GtkOrientable) : GtkOrientation
  fun gtk_orientable_get_type : GType
  fun gtk_orientable_set_orientation(orientable : GtkOrientable, orientation : GtkOrientation)
  fun gtk_orientation_get_type : GType
  fun gtk_overlay_add_overlay(overlay : GtkOverlay*, widget : GtkWidget*)
  fun gtk_overlay_get_overlay_pass_through(overlay : GtkOverlay*, widget : GtkWidget*) : Gboolean
  fun gtk_overlay_get_type : GType
  fun gtk_overlay_new : GtkWidget*
  fun gtk_overlay_reorder_overlay(overlay : GtkOverlay*, child : GtkWidget*, position : Gint)
  fun gtk_overlay_set_overlay_pass_through(overlay : GtkOverlay*, widget : GtkWidget*, pass_through : Gboolean)
  fun gtk_pack_direction_get_type : GType
  fun gtk_pack_type_get_type : GType
  fun gtk_page_orientation_get_type : GType
  fun gtk_page_set_get_type : GType
  fun gtk_page_setup_copy(other : GtkPageSetup) : GtkPageSetup
  fun gtk_page_setup_get_bottom_margin(setup : GtkPageSetup, unit : GtkUnit) : Gdouble
  fun gtk_page_setup_get_left_margin(setup : GtkPageSetup, unit : GtkUnit) : Gdouble
  fun gtk_page_setup_get_orientation(setup : GtkPageSetup) : GtkPageOrientation
  fun gtk_page_setup_get_page_height(setup : GtkPageSetup, unit : GtkUnit) : Gdouble
  fun gtk_page_setup_get_page_width(setup : GtkPageSetup, unit : GtkUnit) : Gdouble
  fun gtk_page_setup_get_paper_height(setup : GtkPageSetup, unit : GtkUnit) : Gdouble
  fun gtk_page_setup_get_paper_size(setup : GtkPageSetup) : GtkPaperSize
  fun gtk_page_setup_get_paper_width(setup : GtkPageSetup, unit : GtkUnit) : Gdouble
  fun gtk_page_setup_get_right_margin(setup : GtkPageSetup, unit : GtkUnit) : Gdouble
  fun gtk_page_setup_get_top_margin(setup : GtkPageSetup, unit : GtkUnit) : Gdouble
  fun gtk_page_setup_get_type : GType
  fun gtk_page_setup_load_file(setup : GtkPageSetup, file_name : LibC::Char*, error : GError**) : Gboolean
  fun gtk_page_setup_load_key_file(setup : GtkPageSetup, key_file : GKeyFile, group_name : Gchar*, error : GError**) : Gboolean
  fun gtk_page_setup_new : GtkPageSetup
  fun gtk_page_setup_new_from_file(file_name : Gchar*, error : GError**) : GtkPageSetup
  fun gtk_page_setup_new_from_key_file(key_file : GKeyFile, group_name : Gchar*, error : GError**) : GtkPageSetup
  fun gtk_page_setup_set_bottom_margin(setup : GtkPageSetup, margin : Gdouble, unit : GtkUnit)
  fun gtk_page_setup_set_left_margin(setup : GtkPageSetup, margin : Gdouble, unit : GtkUnit)
  fun gtk_page_setup_set_orientation(setup : GtkPageSetup, orientation : GtkPageOrientation)
  fun gtk_page_setup_set_paper_size(setup : GtkPageSetup, size : GtkPaperSize)
  fun gtk_page_setup_set_paper_size_and_default_margins(setup : GtkPageSetup, size : GtkPaperSize)
  fun gtk_page_setup_set_right_margin(setup : GtkPageSetup, margin : Gdouble, unit : GtkUnit)
  fun gtk_page_setup_set_top_margin(setup : GtkPageSetup, margin : Gdouble, unit : GtkUnit)
  fun gtk_page_setup_to_file(setup : GtkPageSetup, file_name : LibC::Char*, error : GError**) : Gboolean
  fun gtk_page_setup_to_key_file(setup : GtkPageSetup, key_file : GKeyFile, group_name : Gchar*)
  fun gtk_paint_arrow(style : GtkStyle*, cr : CairoT, state_type : GtkStateType, shadow_type : GtkShadowType, widget : GtkWidget*, detail : Gchar*, arrow_type : GtkArrowType, fill : Gboolean, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_paint_box(style : GtkStyle*, cr : CairoT, state_type : GtkStateType, shadow_type : GtkShadowType, widget : GtkWidget*, detail : Gchar*, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_paint_box_gap(style : GtkStyle*, cr : CairoT, state_type : GtkStateType, shadow_type : GtkShadowType, widget : GtkWidget*, detail : Gchar*, x : Gint, y : Gint, width : Gint, height : Gint, gap_side : GtkPositionType, gap_x : Gint, gap_width : Gint)
  fun gtk_paint_check(style : GtkStyle*, cr : CairoT, state_type : GtkStateType, shadow_type : GtkShadowType, widget : GtkWidget*, detail : Gchar*, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_paint_diamond(style : GtkStyle*, cr : CairoT, state_type : GtkStateType, shadow_type : GtkShadowType, widget : GtkWidget*, detail : Gchar*, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_paint_expander(style : GtkStyle*, cr : CairoT, state_type : GtkStateType, widget : GtkWidget*, detail : Gchar*, x : Gint, y : Gint, expander_style : GtkExpanderStyle)
  fun gtk_paint_extension(style : GtkStyle*, cr : CairoT, state_type : GtkStateType, shadow_type : GtkShadowType, widget : GtkWidget*, detail : Gchar*, x : Gint, y : Gint, width : Gint, height : Gint, gap_side : GtkPositionType)
  fun gtk_paint_flat_box(style : GtkStyle*, cr : CairoT, state_type : GtkStateType, shadow_type : GtkShadowType, widget : GtkWidget*, detail : Gchar*, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_paint_focus(style : GtkStyle*, cr : CairoT, state_type : GtkStateType, widget : GtkWidget*, detail : Gchar*, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_paint_handle(style : GtkStyle*, cr : CairoT, state_type : GtkStateType, shadow_type : GtkShadowType, widget : GtkWidget*, detail : Gchar*, x : Gint, y : Gint, width : Gint, height : Gint, orientation : GtkOrientation)
  fun gtk_paint_hline(style : GtkStyle*, cr : CairoT, state_type : GtkStateType, widget : GtkWidget*, detail : Gchar*, x1 : Gint, x2 : Gint, y : Gint)
  fun gtk_paint_layout(style : GtkStyle*, cr : CairoT, state_type : GtkStateType, use_text : Gboolean, widget : GtkWidget*, detail : Gchar*, x : Gint, y : Gint, layout : PangoLayout)
  fun gtk_paint_option(style : GtkStyle*, cr : CairoT, state_type : GtkStateType, shadow_type : GtkShadowType, widget : GtkWidget*, detail : Gchar*, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_paint_resize_grip(style : GtkStyle*, cr : CairoT, state_type : GtkStateType, widget : GtkWidget*, detail : Gchar*, edge : GdkWindowEdge, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_paint_shadow(style : GtkStyle*, cr : CairoT, state_type : GtkStateType, shadow_type : GtkShadowType, widget : GtkWidget*, detail : Gchar*, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_paint_shadow_gap(style : GtkStyle*, cr : CairoT, state_type : GtkStateType, shadow_type : GtkShadowType, widget : GtkWidget*, detail : Gchar*, x : Gint, y : Gint, width : Gint, height : Gint, gap_side : GtkPositionType, gap_x : Gint, gap_width : Gint)
  fun gtk_paint_slider(style : GtkStyle*, cr : CairoT, state_type : GtkStateType, shadow_type : GtkShadowType, widget : GtkWidget*, detail : Gchar*, x : Gint, y : Gint, width : Gint, height : Gint, orientation : GtkOrientation)
  fun gtk_paint_spinner(style : GtkStyle*, cr : CairoT, state_type : GtkStateType, widget : GtkWidget*, detail : Gchar*, step : Guint, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_paint_tab(style : GtkStyle*, cr : CairoT, state_type : GtkStateType, shadow_type : GtkShadowType, widget : GtkWidget*, detail : Gchar*, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_paint_vline(style : GtkStyle*, cr : CairoT, state_type : GtkStateType, widget : GtkWidget*, detail : Gchar*, y1_ : Gint, y2_ : Gint, x : Gint)
  fun gtk_pan_direction_get_type : GType
  fun gtk_paned_add1(paned : GtkPaned*, child : GtkWidget*)
  fun gtk_paned_add2(paned : GtkPaned*, child : GtkWidget*)
  fun gtk_paned_get_child1(paned : GtkPaned*) : GtkWidget*
  fun gtk_paned_get_child2(paned : GtkPaned*) : GtkWidget*
  fun gtk_paned_get_handle_window(paned : GtkPaned*) : GdkWindow
  fun gtk_paned_get_position(paned : GtkPaned*) : Gint
  fun gtk_paned_get_type : GType
  fun gtk_paned_get_wide_handle(paned : GtkPaned*) : Gboolean
  fun gtk_paned_new(orientation : GtkOrientation) : GtkWidget*
  fun gtk_paned_pack1(paned : GtkPaned*, child : GtkWidget*, resize : Gboolean, shrink : Gboolean)
  fun gtk_paned_pack2(paned : GtkPaned*, child : GtkWidget*, resize : Gboolean, shrink : Gboolean)
  fun gtk_paned_set_position(paned : GtkPaned*, position : Gint)
  fun gtk_paned_set_wide_handle(paned : GtkPaned*, wide : Gboolean)
  fun gtk_paper_size_copy(other : GtkPaperSize) : GtkPaperSize
  fun gtk_paper_size_free(size : GtkPaperSize)
  fun gtk_paper_size_get_default : Gchar*
  fun gtk_paper_size_get_default_bottom_margin(size : GtkPaperSize, unit : GtkUnit) : Gdouble
  fun gtk_paper_size_get_default_left_margin(size : GtkPaperSize, unit : GtkUnit) : Gdouble
  fun gtk_paper_size_get_default_right_margin(size : GtkPaperSize, unit : GtkUnit) : Gdouble
  fun gtk_paper_size_get_default_top_margin(size : GtkPaperSize, unit : GtkUnit) : Gdouble
  fun gtk_paper_size_get_display_name(size : GtkPaperSize) : Gchar*
  fun gtk_paper_size_get_height(size : GtkPaperSize, unit : GtkUnit) : Gdouble
  fun gtk_paper_size_get_name(size : GtkPaperSize) : Gchar*
  fun gtk_paper_size_get_paper_sizes(include_custom : Gboolean) : GList*
  fun gtk_paper_size_get_ppd_name(size : GtkPaperSize) : Gchar*
  fun gtk_paper_size_get_type : GType
  fun gtk_paper_size_get_width(size : GtkPaperSize, unit : GtkUnit) : Gdouble
  fun gtk_paper_size_is_custom(size : GtkPaperSize) : Gboolean
  fun gtk_paper_size_is_equal(size1 : GtkPaperSize, size2 : GtkPaperSize) : Gboolean
  fun gtk_paper_size_is_ipp(size : GtkPaperSize) : Gboolean
  fun gtk_paper_size_new(name : Gchar*) : GtkPaperSize
  fun gtk_paper_size_new_custom(name : Gchar*, display_name : Gchar*, width : Gdouble, height : Gdouble, unit : GtkUnit) : GtkPaperSize
  fun gtk_paper_size_new_from_ipp(ipp_name : Gchar*, width : Gdouble, height : Gdouble) : GtkPaperSize
  fun gtk_paper_size_new_from_key_file(key_file : GKeyFile, group_name : Gchar*, error : GError**) : GtkPaperSize
  fun gtk_paper_size_new_from_ppd(ppd_name : Gchar*, ppd_display_name : Gchar*, width : Gdouble, height : Gdouble) : GtkPaperSize
  fun gtk_paper_size_set_size(size : GtkPaperSize, width : Gdouble, height : Gdouble, unit : GtkUnit)
  fun gtk_paper_size_to_key_file(size : GtkPaperSize, key_file : GKeyFile, group_name : Gchar*)
  fun gtk_parse_args(argc : LibC::Int*, argv : LibC::Char***) : Gboolean
  fun gtk_path_priority_type_get_type : GType
  fun gtk_path_type_get_type : GType
  fun gtk_places_open_flags_get_type : GType
  fun gtk_places_sidebar_add_shortcut(sidebar : GtkPlacesSidebar, location : GFile)
  fun gtk_places_sidebar_get_local_only(sidebar : GtkPlacesSidebar) : Gboolean
  fun gtk_places_sidebar_get_location(sidebar : GtkPlacesSidebar) : GFile
  fun gtk_places_sidebar_get_nth_bookmark(sidebar : GtkPlacesSidebar, n : Gint) : GFile
  fun gtk_places_sidebar_get_open_flags(sidebar : GtkPlacesSidebar) : GtkPlacesOpenFlags
  fun gtk_places_sidebar_get_show_connect_to_server(sidebar : GtkPlacesSidebar) : Gboolean
  fun gtk_places_sidebar_get_show_desktop(sidebar : GtkPlacesSidebar) : Gboolean
  fun gtk_places_sidebar_get_show_enter_location(sidebar : GtkPlacesSidebar) : Gboolean
  fun gtk_places_sidebar_get_show_other_locations(sidebar : GtkPlacesSidebar) : Gboolean
  fun gtk_places_sidebar_get_show_recent(sidebar : GtkPlacesSidebar) : Gboolean
  fun gtk_places_sidebar_get_show_trash(sidebar : GtkPlacesSidebar) : Gboolean
  fun gtk_places_sidebar_get_type : GType
  fun gtk_places_sidebar_list_shortcuts(sidebar : GtkPlacesSidebar) : GsList*
  fun gtk_places_sidebar_new : GtkWidget*
  fun gtk_places_sidebar_remove_shortcut(sidebar : GtkPlacesSidebar, location : GFile)
  fun gtk_places_sidebar_set_drop_targets_visible(sidebar : GtkPlacesSidebar, visible : Gboolean, context : GdkDragContext)
  fun gtk_places_sidebar_set_local_only(sidebar : GtkPlacesSidebar, local_only : Gboolean)
  fun gtk_places_sidebar_set_location(sidebar : GtkPlacesSidebar, location : GFile)
  fun gtk_places_sidebar_set_open_flags(sidebar : GtkPlacesSidebar, flags : GtkPlacesOpenFlags)
  fun gtk_places_sidebar_set_show_connect_to_server(sidebar : GtkPlacesSidebar, show_connect_to_server : Gboolean)
  fun gtk_places_sidebar_set_show_desktop(sidebar : GtkPlacesSidebar, show_desktop : Gboolean)
  fun gtk_places_sidebar_set_show_enter_location(sidebar : GtkPlacesSidebar, show_enter_location : Gboolean)
  fun gtk_places_sidebar_set_show_other_locations(sidebar : GtkPlacesSidebar, show_other_locations : Gboolean)
  fun gtk_places_sidebar_set_show_recent(sidebar : GtkPlacesSidebar, show_recent : Gboolean)
  fun gtk_places_sidebar_set_show_trash(sidebar : GtkPlacesSidebar, show_trash : Gboolean)
  fun gtk_policy_type_get_type : GType
  fun gtk_popover_bind_model(popover : GtkPopover*, model : GMenuModel*, action_namespace : Gchar*)
  fun gtk_popover_get_default_widget(popover : GtkPopover*) : GtkWidget*
  fun gtk_popover_get_modal(popover : GtkPopover*) : Gboolean
  fun gtk_popover_get_pointing_to(popover : GtkPopover*, rect : GdkRectangle*) : Gboolean
  fun gtk_popover_get_position(popover : GtkPopover*) : GtkPositionType
  fun gtk_popover_get_relative_to(popover : GtkPopover*) : GtkWidget*
  fun gtk_popover_get_transitions_enabled(popover : GtkPopover*) : Gboolean
  fun gtk_popover_get_type : GType
  fun gtk_popover_menu_get_type : GType
  fun gtk_popover_menu_new : GtkWidget*
  fun gtk_popover_menu_open_submenu(popover : GtkPopoverMenu, name : Gchar*)
  fun gtk_popover_new(relative_to : GtkWidget*) : GtkWidget*
  fun gtk_popover_new_from_model(relative_to : GtkWidget*, model : GMenuModel*) : GtkWidget*
  fun gtk_popover_set_default_widget(popover : GtkPopover*, widget : GtkWidget*)
  fun gtk_popover_set_modal(popover : GtkPopover*, modal : Gboolean)
  fun gtk_popover_set_pointing_to(popover : GtkPopover*, rect : GdkRectangle*)
  fun gtk_popover_set_position(popover : GtkPopover*, position : GtkPositionType)
  fun gtk_popover_set_relative_to(popover : GtkPopover*, relative_to : GtkWidget*)
  fun gtk_popover_set_transitions_enabled(popover : GtkPopover*, transitions_enabled : Gboolean)
  fun gtk_position_type_get_type : GType
  fun gtk_print_context_create_pango_context(context : GtkPrintContext) : PangoContext
  fun gtk_print_context_create_pango_layout(context : GtkPrintContext) : PangoLayout
  fun gtk_print_context_get_cairo_context(context : GtkPrintContext) : CairoT
  fun gtk_print_context_get_dpi_x(context : GtkPrintContext) : Gdouble
  fun gtk_print_context_get_dpi_y(context : GtkPrintContext) : Gdouble
  fun gtk_print_context_get_hard_margins(context : GtkPrintContext, top : Gdouble*, bottom : Gdouble*, left : Gdouble*, right : Gdouble*) : Gboolean
  fun gtk_print_context_get_height(context : GtkPrintContext) : Gdouble
  fun gtk_print_context_get_page_setup(context : GtkPrintContext) : GtkPageSetup
  fun gtk_print_context_get_pango_fontmap(context : GtkPrintContext) : PangoFontMap
  fun gtk_print_context_get_type : GType
  fun gtk_print_context_get_width(context : GtkPrintContext) : Gdouble
  fun gtk_print_context_set_cairo_context(context : GtkPrintContext, cr : CairoT, dpi_x : LibC::Double, dpi_y : LibC::Double)
  fun gtk_print_duplex_get_type : GType
  fun gtk_print_error_get_type : GType
  fun gtk_print_error_quark : GQuark
  fun gtk_print_operation_action_get_type : GType
  fun gtk_print_operation_cancel(op : GtkPrintOperation*)
  fun gtk_print_operation_draw_page_finish(op : GtkPrintOperation*)
  fun gtk_print_operation_get_default_page_setup(op : GtkPrintOperation*) : GtkPageSetup
  fun gtk_print_operation_get_embed_page_setup(op : GtkPrintOperation*) : Gboolean
  fun gtk_print_operation_get_error(op : GtkPrintOperation*, error : GError**)
  fun gtk_print_operation_get_has_selection(op : GtkPrintOperation*) : Gboolean
  fun gtk_print_operation_get_n_pages_to_print(op : GtkPrintOperation*) : Gint
  fun gtk_print_operation_get_print_settings(op : GtkPrintOperation*) : GtkPrintSettings
  fun gtk_print_operation_get_status(op : GtkPrintOperation*) : GtkPrintStatus
  fun gtk_print_operation_get_status_string(op : GtkPrintOperation*) : Gchar*
  fun gtk_print_operation_get_support_selection(op : GtkPrintOperation*) : Gboolean
  fun gtk_print_operation_get_type : GType
  fun gtk_print_operation_is_finished(op : GtkPrintOperation*) : Gboolean
  fun gtk_print_operation_new : GtkPrintOperation*
  fun gtk_print_operation_preview_end_preview(preview : GtkPrintOperationPreview)
  fun gtk_print_operation_preview_get_type : GType
  fun gtk_print_operation_preview_is_selected(preview : GtkPrintOperationPreview, page_nr : Gint) : Gboolean
  fun gtk_print_operation_preview_render_page(preview : GtkPrintOperationPreview, page_nr : Gint)
  fun gtk_print_operation_result_get_type : GType
  fun gtk_print_operation_run(op : GtkPrintOperation*, action : GtkPrintOperationAction, parent : GtkWindow*, error : GError**) : GtkPrintOperationResult
  fun gtk_print_operation_set_allow_async(op : GtkPrintOperation*, allow_async : Gboolean)
  fun gtk_print_operation_set_current_page(op : GtkPrintOperation*, current_page : Gint)
  fun gtk_print_operation_set_custom_tab_label(op : GtkPrintOperation*, label : Gchar*)
  fun gtk_print_operation_set_default_page_setup(op : GtkPrintOperation*, default_page_setup : GtkPageSetup)
  fun gtk_print_operation_set_defer_drawing(op : GtkPrintOperation*)
  fun gtk_print_operation_set_embed_page_setup(op : GtkPrintOperation*, embed : Gboolean)
  fun gtk_print_operation_set_export_filename(op : GtkPrintOperation*, filename : Gchar*)
  fun gtk_print_operation_set_has_selection(op : GtkPrintOperation*, has_selection : Gboolean)
  fun gtk_print_operation_set_job_name(op : GtkPrintOperation*, job_name : Gchar*)
  fun gtk_print_operation_set_n_pages(op : GtkPrintOperation*, n_pages : Gint)
  fun gtk_print_operation_set_print_settings(op : GtkPrintOperation*, print_settings : GtkPrintSettings)
  fun gtk_print_operation_set_show_progress(op : GtkPrintOperation*, show_progress : Gboolean)
  fun gtk_print_operation_set_support_selection(op : GtkPrintOperation*, support_selection : Gboolean)
  fun gtk_print_operation_set_track_print_status(op : GtkPrintOperation*, track_status : Gboolean)
  fun gtk_print_operation_set_unit(op : GtkPrintOperation*, unit : GtkUnit)
  fun gtk_print_operation_set_use_full_page(op : GtkPrintOperation*, full_page : Gboolean)
  fun gtk_print_pages_get_type : GType
  fun gtk_print_quality_get_type : GType
  fun gtk_print_run_page_setup_dialog(parent : GtkWindow*, page_setup : GtkPageSetup, settings : GtkPrintSettings) : GtkPageSetup
  fun gtk_print_run_page_setup_dialog_async(parent : GtkWindow*, page_setup : GtkPageSetup, settings : GtkPrintSettings, done_cb : GtkPageSetupDoneFunc, data : Gpointer)
  fun gtk_print_settings_copy(other : GtkPrintSettings) : GtkPrintSettings
  fun gtk_print_settings_foreach(settings : GtkPrintSettings, func : GtkPrintSettingsFunc, user_data : Gpointer)
  fun gtk_print_settings_get(settings : GtkPrintSettings, key : Gchar*) : Gchar*
  fun gtk_print_settings_get_bool(settings : GtkPrintSettings, key : Gchar*) : Gboolean
  fun gtk_print_settings_get_collate(settings : GtkPrintSettings) : Gboolean
  fun gtk_print_settings_get_default_source(settings : GtkPrintSettings) : Gchar*
  fun gtk_print_settings_get_dither(settings : GtkPrintSettings) : Gchar*
  fun gtk_print_settings_get_double(settings : GtkPrintSettings, key : Gchar*) : Gdouble
  fun gtk_print_settings_get_double_with_default(settings : GtkPrintSettings, key : Gchar*, def : Gdouble) : Gdouble
  fun gtk_print_settings_get_duplex(settings : GtkPrintSettings) : GtkPrintDuplex
  fun gtk_print_settings_get_finishings(settings : GtkPrintSettings) : Gchar*
  fun gtk_print_settings_get_int(settings : GtkPrintSettings, key : Gchar*) : Gint
  fun gtk_print_settings_get_int_with_default(settings : GtkPrintSettings, key : Gchar*, def : Gint) : Gint
  fun gtk_print_settings_get_length(settings : GtkPrintSettings, key : Gchar*, unit : GtkUnit) : Gdouble
  fun gtk_print_settings_get_media_type(settings : GtkPrintSettings) : Gchar*
  fun gtk_print_settings_get_n_copies(settings : GtkPrintSettings) : Gint
  fun gtk_print_settings_get_number_up(settings : GtkPrintSettings) : Gint
  fun gtk_print_settings_get_number_up_layout(settings : GtkPrintSettings) : GtkNumberUpLayout
  fun gtk_print_settings_get_orientation(settings : GtkPrintSettings) : GtkPageOrientation
  fun gtk_print_settings_get_output_bin(settings : GtkPrintSettings) : Gchar*
  fun gtk_print_settings_get_page_ranges(settings : GtkPrintSettings, num_ranges : Gint*) : GtkPageRange*
  fun gtk_print_settings_get_page_set(settings : GtkPrintSettings) : GtkPageSet
  fun gtk_print_settings_get_paper_height(settings : GtkPrintSettings, unit : GtkUnit) : Gdouble
  fun gtk_print_settings_get_paper_size(settings : GtkPrintSettings) : GtkPaperSize
  fun gtk_print_settings_get_paper_width(settings : GtkPrintSettings, unit : GtkUnit) : Gdouble
  fun gtk_print_settings_get_print_pages(settings : GtkPrintSettings) : GtkPrintPages
  fun gtk_print_settings_get_printer(settings : GtkPrintSettings) : Gchar*
  fun gtk_print_settings_get_printer_lpi(settings : GtkPrintSettings) : Gdouble
  fun gtk_print_settings_get_quality(settings : GtkPrintSettings) : GtkPrintQuality
  fun gtk_print_settings_get_resolution(settings : GtkPrintSettings) : Gint
  fun gtk_print_settings_get_resolution_x(settings : GtkPrintSettings) : Gint
  fun gtk_print_settings_get_resolution_y(settings : GtkPrintSettings) : Gint
  fun gtk_print_settings_get_reverse(settings : GtkPrintSettings) : Gboolean
  fun gtk_print_settings_get_scale(settings : GtkPrintSettings) : Gdouble
  fun gtk_print_settings_get_type : GType
  fun gtk_print_settings_get_use_color(settings : GtkPrintSettings) : Gboolean
  fun gtk_print_settings_has_key(settings : GtkPrintSettings, key : Gchar*) : Gboolean
  fun gtk_print_settings_load_file(settings : GtkPrintSettings, file_name : Gchar*, error : GError**) : Gboolean
  fun gtk_print_settings_load_key_file(settings : GtkPrintSettings, key_file : GKeyFile, group_name : Gchar*, error : GError**) : Gboolean
  fun gtk_print_settings_new : GtkPrintSettings
  fun gtk_print_settings_new_from_file(file_name : Gchar*, error : GError**) : GtkPrintSettings
  fun gtk_print_settings_new_from_key_file(key_file : GKeyFile, group_name : Gchar*, error : GError**) : GtkPrintSettings
  fun gtk_print_settings_set(settings : GtkPrintSettings, key : Gchar*, value : Gchar*)
  fun gtk_print_settings_set_bool(settings : GtkPrintSettings, key : Gchar*, value : Gboolean)
  fun gtk_print_settings_set_collate(settings : GtkPrintSettings, collate : Gboolean)
  fun gtk_print_settings_set_default_source(settings : GtkPrintSettings, default_source : Gchar*)
  fun gtk_print_settings_set_dither(settings : GtkPrintSettings, dither : Gchar*)
  fun gtk_print_settings_set_double(settings : GtkPrintSettings, key : Gchar*, value : Gdouble)
  fun gtk_print_settings_set_duplex(settings : GtkPrintSettings, duplex : GtkPrintDuplex)
  fun gtk_print_settings_set_finishings(settings : GtkPrintSettings, finishings : Gchar*)
  fun gtk_print_settings_set_int(settings : GtkPrintSettings, key : Gchar*, value : Gint)
  fun gtk_print_settings_set_length(settings : GtkPrintSettings, key : Gchar*, value : Gdouble, unit : GtkUnit)
  fun gtk_print_settings_set_media_type(settings : GtkPrintSettings, media_type : Gchar*)
  fun gtk_print_settings_set_n_copies(settings : GtkPrintSettings, num_copies : Gint)
  fun gtk_print_settings_set_number_up(settings : GtkPrintSettings, number_up : Gint)
  fun gtk_print_settings_set_number_up_layout(settings : GtkPrintSettings, number_up_layout : GtkNumberUpLayout)
  fun gtk_print_settings_set_orientation(settings : GtkPrintSettings, orientation : GtkPageOrientation)
  fun gtk_print_settings_set_output_bin(settings : GtkPrintSettings, output_bin : Gchar*)
  fun gtk_print_settings_set_page_ranges(settings : GtkPrintSettings, page_ranges : GtkPageRange*, num_ranges : Gint)
  fun gtk_print_settings_set_page_set(settings : GtkPrintSettings, page_set : GtkPageSet)
  fun gtk_print_settings_set_paper_height(settings : GtkPrintSettings, height : Gdouble, unit : GtkUnit)
  fun gtk_print_settings_set_paper_size(settings : GtkPrintSettings, paper_size : GtkPaperSize)
  fun gtk_print_settings_set_paper_width(settings : GtkPrintSettings, width : Gdouble, unit : GtkUnit)
  fun gtk_print_settings_set_print_pages(settings : GtkPrintSettings, pages : GtkPrintPages)
  fun gtk_print_settings_set_printer(settings : GtkPrintSettings, printer : Gchar*)
  fun gtk_print_settings_set_printer_lpi(settings : GtkPrintSettings, lpi : Gdouble)
  fun gtk_print_settings_set_quality(settings : GtkPrintSettings, quality : GtkPrintQuality)
  fun gtk_print_settings_set_resolution(settings : GtkPrintSettings, resolution : Gint)
  fun gtk_print_settings_set_resolution_xy(settings : GtkPrintSettings, resolution_x : Gint, resolution_y : Gint)
  fun gtk_print_settings_set_reverse(settings : GtkPrintSettings, reverse : Gboolean)
  fun gtk_print_settings_set_scale(settings : GtkPrintSettings, scale : Gdouble)
  fun gtk_print_settings_set_use_color(settings : GtkPrintSettings, use_color : Gboolean)
  fun gtk_print_settings_to_file(settings : GtkPrintSettings, file_name : Gchar*, error : GError**) : Gboolean
  fun gtk_print_settings_to_key_file(settings : GtkPrintSettings, key_file : GKeyFile, group_name : Gchar*)
  fun gtk_print_settings_unset(settings : GtkPrintSettings, key : Gchar*)
  fun gtk_print_status_get_type : GType
  fun gtk_progress_bar_get_ellipsize(pbar : GtkProgressBar*) : PangoEllipsizeMode
  fun gtk_progress_bar_get_fraction(pbar : GtkProgressBar*) : Gdouble
  fun gtk_progress_bar_get_inverted(pbar : GtkProgressBar*) : Gboolean
  fun gtk_progress_bar_get_pulse_step(pbar : GtkProgressBar*) : Gdouble
  fun gtk_progress_bar_get_show_text(pbar : GtkProgressBar*) : Gboolean
  fun gtk_progress_bar_get_text(pbar : GtkProgressBar*) : Gchar*
  fun gtk_progress_bar_get_type : GType
  fun gtk_progress_bar_new : GtkWidget*
  fun gtk_progress_bar_pulse(pbar : GtkProgressBar*)
  fun gtk_progress_bar_set_ellipsize(pbar : GtkProgressBar*, mode : PangoEllipsizeMode)
  fun gtk_progress_bar_set_fraction(pbar : GtkProgressBar*, fraction : Gdouble)
  fun gtk_progress_bar_set_inverted(pbar : GtkProgressBar*, inverted : Gboolean)
  fun gtk_progress_bar_set_pulse_step(pbar : GtkProgressBar*, fraction : Gdouble)
  fun gtk_progress_bar_set_show_text(pbar : GtkProgressBar*, show_text : Gboolean)
  fun gtk_progress_bar_set_text(pbar : GtkProgressBar*, text : Gchar*)
  fun gtk_propagate_event(widget : GtkWidget*, event : GdkEvent*)
  fun gtk_propagation_phase_get_type : GType
  fun gtk_radio_action_get_current_value(action : GtkRadioAction*) : Gint
  fun gtk_radio_action_get_group(action : GtkRadioAction*) : GsList*
  fun gtk_radio_action_get_type : GType
  fun gtk_radio_action_join_group(action : GtkRadioAction*, group_source : GtkRadioAction*)
  fun gtk_radio_action_new(name : Gchar*, label : Gchar*, tooltip : Gchar*, stock_id : Gchar*, value : Gint) : GtkRadioAction*
  fun gtk_radio_action_set_current_value(action : GtkRadioAction*, current_value : Gint)
  fun gtk_radio_action_set_group(action : GtkRadioAction*, group : GsList*)
  fun gtk_radio_button_get_group(radio_button : GtkRadioButton*) : GsList*
  fun gtk_radio_button_get_type : GType
  fun gtk_radio_button_join_group(radio_button : GtkRadioButton*, group_source : GtkRadioButton*)
  fun gtk_radio_button_new(group : GsList*) : GtkWidget*
  fun gtk_radio_button_new_from_widget(radio_group_member : GtkRadioButton*) : GtkWidget*
  fun gtk_radio_button_new_with_label(group : GsList*, label : Gchar*) : GtkWidget*
  fun gtk_radio_button_new_with_label_from_widget(radio_group_member : GtkRadioButton*, label : Gchar*) : GtkWidget*
  fun gtk_radio_button_new_with_mnemonic(group : GsList*, label : Gchar*) : GtkWidget*
  fun gtk_radio_button_new_with_mnemonic_from_widget(radio_group_member : GtkRadioButton*, label : Gchar*) : GtkWidget*
  fun gtk_radio_button_set_group(radio_button : GtkRadioButton*, group : GsList*)
  fun gtk_radio_menu_item_get_group(radio_menu_item : GtkRadioMenuItem*) : GsList*
  fun gtk_radio_menu_item_get_type : GType
  fun gtk_radio_menu_item_join_group(radio_menu_item : GtkRadioMenuItem*, group_source : GtkRadioMenuItem*)
  fun gtk_radio_menu_item_new(group : GsList*) : GtkWidget*
  fun gtk_radio_menu_item_new_from_widget(group : GtkRadioMenuItem*) : GtkWidget*
  fun gtk_radio_menu_item_new_with_label(group : GsList*, label : Gchar*) : GtkWidget*
  fun gtk_radio_menu_item_new_with_label_from_widget(group : GtkRadioMenuItem*, label : Gchar*) : GtkWidget*
  fun gtk_radio_menu_item_new_with_mnemonic(group : GsList*, label : Gchar*) : GtkWidget*
  fun gtk_radio_menu_item_new_with_mnemonic_from_widget(group : GtkRadioMenuItem*, label : Gchar*) : GtkWidget*
  fun gtk_radio_menu_item_set_group(radio_menu_item : GtkRadioMenuItem*, group : GsList*)
  fun gtk_radio_tool_button_get_group(button : GtkRadioToolButton*) : GsList*
  fun gtk_radio_tool_button_get_type : GType
  fun gtk_radio_tool_button_new(group : GsList*) : GtkToolItem*
  fun gtk_radio_tool_button_new_from_stock(group : GsList*, stock_id : Gchar*) : GtkToolItem*
  fun gtk_radio_tool_button_new_from_widget(group : GtkRadioToolButton*) : GtkToolItem*
  fun gtk_radio_tool_button_new_with_stock_from_widget(group : GtkRadioToolButton*, stock_id : Gchar*) : GtkToolItem*
  fun gtk_radio_tool_button_set_group(button : GtkRadioToolButton*, group : GsList*)
  fun gtk_range_get_adjustment(range : GtkRange*) : GtkAdjustment*
  fun gtk_range_get_fill_level(range : GtkRange*) : Gdouble
  fun gtk_range_get_flippable(range : GtkRange*) : Gboolean
  fun gtk_range_get_inverted(range : GtkRange*) : Gboolean
  fun gtk_range_get_lower_stepper_sensitivity(range : GtkRange*) : GtkSensitivityType
  fun gtk_range_get_min_slider_size(range : GtkRange*) : Gint
  fun gtk_range_get_range_rect(range : GtkRange*, range_rect : GdkRectangle*)
  fun gtk_range_get_restrict_to_fill_level(range : GtkRange*) : Gboolean
  fun gtk_range_get_round_digits(range : GtkRange*) : Gint
  fun gtk_range_get_show_fill_level(range : GtkRange*) : Gboolean
  fun gtk_range_get_slider_range(range : GtkRange*, slider_start : Gint*, slider_end : Gint*)
  fun gtk_range_get_slider_size_fixed(range : GtkRange*) : Gboolean
  fun gtk_range_get_type : GType
  fun gtk_range_get_upper_stepper_sensitivity(range : GtkRange*) : GtkSensitivityType
  fun gtk_range_get_value(range : GtkRange*) : Gdouble
  fun gtk_range_set_adjustment(range : GtkRange*, adjustment : GtkAdjustment*)
  fun gtk_range_set_fill_level(range : GtkRange*, fill_level : Gdouble)
  fun gtk_range_set_flippable(range : GtkRange*, flippable : Gboolean)
  fun gtk_range_set_increments(range : GtkRange*, step : Gdouble, page : Gdouble)
  fun gtk_range_set_inverted(range : GtkRange*, setting : Gboolean)
  fun gtk_range_set_lower_stepper_sensitivity(range : GtkRange*, sensitivity : GtkSensitivityType)
  fun gtk_range_set_min_slider_size(range : GtkRange*, min_size : Gint)
  fun gtk_range_set_range(range : GtkRange*, min : Gdouble, max : Gdouble)
  fun gtk_range_set_restrict_to_fill_level(range : GtkRange*, restrict_to_fill_level : Gboolean)
  fun gtk_range_set_round_digits(range : GtkRange*, round_digits : Gint)
  fun gtk_range_set_show_fill_level(range : GtkRange*, show_fill_level : Gboolean)
  fun gtk_range_set_slider_size_fixed(range : GtkRange*, size_fixed : Gboolean)
  fun gtk_range_set_upper_stepper_sensitivity(range : GtkRange*, sensitivity : GtkSensitivityType)
  fun gtk_range_set_value(range : GtkRange*, value : Gdouble)
  fun gtk_rc_add_default_file(filename : Gchar*)
  fun gtk_rc_find_module_in_path(module_file : Gchar*) : Gchar*
  fun gtk_rc_find_pixmap_in_path(settings : GtkSettings*, scanner : GScanner*, pixmap_file : Gchar*) : Gchar*
  fun gtk_rc_flags_get_type : GType
  fun gtk_rc_get_default_files : Gchar**
  fun gtk_rc_get_im_module_file : Gchar*
  fun gtk_rc_get_im_module_path : Gchar*
  fun gtk_rc_get_module_dir : Gchar*
  fun gtk_rc_get_style(widget : GtkWidget*) : GtkStyle*
  fun gtk_rc_get_style_by_paths(settings : GtkSettings*, widget_path : LibC::Char*, class_path : LibC::Char*, type : GType) : GtkStyle*
  fun gtk_rc_get_theme_dir : Gchar*
  fun gtk_rc_parse(filename : Gchar*)
  fun gtk_rc_parse_color(scanner : GScanner*, color : GdkColor*) : Guint
  fun gtk_rc_parse_color_full(scanner : GScanner*, style : GtkRcStyle*, color : GdkColor*) : Guint
  fun gtk_rc_parse_priority(scanner : GScanner*, priority : GtkPathPriorityType*) : Guint
  fun gtk_rc_parse_state(scanner : GScanner*, state : GtkStateType*) : Guint
  fun gtk_rc_parse_string(rc_string : Gchar*)
  fun gtk_rc_property_parse_border(pspec : GParamSpec*, gstring : GString*, property_value : GValue*) : Gboolean
  fun gtk_rc_property_parse_color(pspec : GParamSpec*, gstring : GString*, property_value : GValue*) : Gboolean
  fun gtk_rc_property_parse_enum(pspec : GParamSpec*, gstring : GString*, property_value : GValue*) : Gboolean
  fun gtk_rc_property_parse_flags(pspec : GParamSpec*, gstring : GString*, property_value : GValue*) : Gboolean
  fun gtk_rc_property_parse_requisition(pspec : GParamSpec*, gstring : GString*, property_value : GValue*) : Gboolean
  fun gtk_rc_reparse_all : Gboolean
  fun gtk_rc_reparse_all_for_settings(settings : GtkSettings*, force_load : Gboolean) : Gboolean
  fun gtk_rc_reset_styles(settings : GtkSettings*)
  fun gtk_rc_scanner_new : GScanner*
  fun gtk_rc_set_default_files(filenames : Gchar**)
  fun gtk_rc_style_copy(orig : GtkRcStyle*) : GtkRcStyle*
  fun gtk_rc_style_get_type : GType
  fun gtk_rc_style_new : GtkRcStyle*
  fun gtk_rc_token_type_get_type : GType
  fun gtk_recent_action_get_show_numbers(action : GtkRecentAction*) : Gboolean
  fun gtk_recent_action_get_type : GType
  fun gtk_recent_action_new(name : Gchar*, label : Gchar*, tooltip : Gchar*, stock_id : Gchar*) : GtkAction*
  fun gtk_recent_action_new_for_manager(name : Gchar*, label : Gchar*, tooltip : Gchar*, stock_id : Gchar*, manager : GtkRecentManager*) : GtkAction*
  fun gtk_recent_action_set_show_numbers(action : GtkRecentAction*, show_numbers : Gboolean)
  fun gtk_recent_chooser_add_filter(chooser : GtkRecentChooser, filter : GtkRecentFilter)
  fun gtk_recent_chooser_dialog_get_type : GType
  fun gtk_recent_chooser_dialog_new(title : Gchar*, parent : GtkWindow*, first_button_text : Gchar*, ...) : GtkWidget*
  fun gtk_recent_chooser_dialog_new_for_manager(title : Gchar*, parent : GtkWindow*, manager : GtkRecentManager*, first_button_text : Gchar*, ...) : GtkWidget*
  fun gtk_recent_chooser_error_get_type : GType
  fun gtk_recent_chooser_error_quark : GQuark
  fun gtk_recent_chooser_get_current_item(chooser : GtkRecentChooser) : GtkRecentInfo
  fun gtk_recent_chooser_get_current_uri(chooser : GtkRecentChooser) : Gchar*
  fun gtk_recent_chooser_get_filter(chooser : GtkRecentChooser) : GtkRecentFilter
  fun gtk_recent_chooser_get_items(chooser : GtkRecentChooser) : GList*
  fun gtk_recent_chooser_get_limit(chooser : GtkRecentChooser) : Gint
  fun gtk_recent_chooser_get_local_only(chooser : GtkRecentChooser) : Gboolean
  fun gtk_recent_chooser_get_select_multiple(chooser : GtkRecentChooser) : Gboolean
  fun gtk_recent_chooser_get_show_icons(chooser : GtkRecentChooser) : Gboolean
  fun gtk_recent_chooser_get_show_not_found(chooser : GtkRecentChooser) : Gboolean
  fun gtk_recent_chooser_get_show_private(chooser : GtkRecentChooser) : Gboolean
  fun gtk_recent_chooser_get_show_tips(chooser : GtkRecentChooser) : Gboolean
  fun gtk_recent_chooser_get_sort_type(chooser : GtkRecentChooser) : GtkRecentSortType
  fun gtk_recent_chooser_get_type : GType
  fun gtk_recent_chooser_get_uris(chooser : GtkRecentChooser, length : Gsize*) : Gchar**
  fun gtk_recent_chooser_list_filters(chooser : GtkRecentChooser) : GsList*
  fun gtk_recent_chooser_menu_get_show_numbers(menu : GtkRecentChooserMenu*) : Gboolean
  fun gtk_recent_chooser_menu_get_type : GType
  fun gtk_recent_chooser_menu_new : GtkWidget*
  fun gtk_recent_chooser_menu_new_for_manager(manager : GtkRecentManager*) : GtkWidget*
  fun gtk_recent_chooser_menu_set_show_numbers(menu : GtkRecentChooserMenu*, show_numbers : Gboolean)
  fun gtk_recent_chooser_remove_filter(chooser : GtkRecentChooser, filter : GtkRecentFilter)
  fun gtk_recent_chooser_select_all(chooser : GtkRecentChooser)
  fun gtk_recent_chooser_select_uri(chooser : GtkRecentChooser, uri : Gchar*, error : GError**) : Gboolean
  fun gtk_recent_chooser_set_current_uri(chooser : GtkRecentChooser, uri : Gchar*, error : GError**) : Gboolean
  fun gtk_recent_chooser_set_filter(chooser : GtkRecentChooser, filter : GtkRecentFilter)
  fun gtk_recent_chooser_set_limit(chooser : GtkRecentChooser, limit : Gint)
  fun gtk_recent_chooser_set_local_only(chooser : GtkRecentChooser, local_only : Gboolean)
  fun gtk_recent_chooser_set_select_multiple(chooser : GtkRecentChooser, select_multiple : Gboolean)
  fun gtk_recent_chooser_set_show_icons(chooser : GtkRecentChooser, show_icons : Gboolean)
  fun gtk_recent_chooser_set_show_not_found(chooser : GtkRecentChooser, show_not_found : Gboolean)
  fun gtk_recent_chooser_set_show_private(chooser : GtkRecentChooser, show_private : Gboolean)
  fun gtk_recent_chooser_set_show_tips(chooser : GtkRecentChooser, show_tips : Gboolean)
  fun gtk_recent_chooser_set_sort_func(chooser : GtkRecentChooser, sort_func : GtkRecentSortFunc, sort_data : Gpointer, data_destroy : GDestroyNotify)
  fun gtk_recent_chooser_set_sort_type(chooser : GtkRecentChooser, sort_type : GtkRecentSortType)
  fun gtk_recent_chooser_unselect_all(chooser : GtkRecentChooser)
  fun gtk_recent_chooser_unselect_uri(chooser : GtkRecentChooser, uri : Gchar*)
  fun gtk_recent_chooser_widget_get_type : GType
  fun gtk_recent_chooser_widget_new : GtkWidget*
  fun gtk_recent_chooser_widget_new_for_manager(manager : GtkRecentManager*) : GtkWidget*
  fun gtk_recent_filter_add_age(filter : GtkRecentFilter, days : Gint)
  fun gtk_recent_filter_add_application(filter : GtkRecentFilter, application : Gchar*)
  fun gtk_recent_filter_add_custom(filter : GtkRecentFilter, needed : GtkRecentFilterFlags, func : GtkRecentFilterFunc, data : Gpointer, data_destroy : GDestroyNotify)
  fun gtk_recent_filter_add_group(filter : GtkRecentFilter, group : Gchar*)
  fun gtk_recent_filter_add_mime_type(filter : GtkRecentFilter, mime_type : Gchar*)
  fun gtk_recent_filter_add_pattern(filter : GtkRecentFilter, pattern : Gchar*)
  fun gtk_recent_filter_add_pixbuf_formats(filter : GtkRecentFilter)
  fun gtk_recent_filter_filter(filter : GtkRecentFilter, filter_info : GtkRecentFilterInfo*) : Gboolean
  fun gtk_recent_filter_flags_get_type : GType
  fun gtk_recent_filter_get_name(filter : GtkRecentFilter) : Gchar*
  fun gtk_recent_filter_get_needed(filter : GtkRecentFilter) : GtkRecentFilterFlags
  fun gtk_recent_filter_get_type : GType
  fun gtk_recent_filter_new : GtkRecentFilter
  fun gtk_recent_filter_set_name(filter : GtkRecentFilter, name : Gchar*)
  fun gtk_recent_info_create_app_info(info : GtkRecentInfo, app_name : Gchar*, error : GError**) : GAppInfo
  fun gtk_recent_info_exists(info : GtkRecentInfo) : Gboolean
  fun gtk_recent_info_get_added(info : GtkRecentInfo) : TimeT
  fun gtk_recent_info_get_age(info : GtkRecentInfo) : Gint
  fun gtk_recent_info_get_application_info(info : GtkRecentInfo, app_name : Gchar*, app_exec : Gchar**, count : Guint*, time_ : TimeT*) : Gboolean
  fun gtk_recent_info_get_applications(info : GtkRecentInfo, length : Gsize*) : Gchar**
  fun gtk_recent_info_get_description(info : GtkRecentInfo) : Gchar*
  fun gtk_recent_info_get_display_name(info : GtkRecentInfo) : Gchar*
  fun gtk_recent_info_get_gicon(info : GtkRecentInfo) : GIcon
  fun gtk_recent_info_get_groups(info : GtkRecentInfo, length : Gsize*) : Gchar**
  fun gtk_recent_info_get_icon(info : GtkRecentInfo, size : Gint) : GdkPixbuf
  fun gtk_recent_info_get_mime_type(info : GtkRecentInfo) : Gchar*
  fun gtk_recent_info_get_modified(info : GtkRecentInfo) : TimeT
  fun gtk_recent_info_get_private_hint(info : GtkRecentInfo) : Gboolean
  fun gtk_recent_info_get_short_name(info : GtkRecentInfo) : Gchar*
  fun gtk_recent_info_get_type : GType
  fun gtk_recent_info_get_uri(info : GtkRecentInfo) : Gchar*
  fun gtk_recent_info_get_uri_display(info : GtkRecentInfo) : Gchar*
  fun gtk_recent_info_get_visited(info : GtkRecentInfo) : TimeT
  fun gtk_recent_info_has_application(info : GtkRecentInfo, app_name : Gchar*) : Gboolean
  fun gtk_recent_info_has_group(info : GtkRecentInfo, group_name : Gchar*) : Gboolean
  fun gtk_recent_info_is_local(info : GtkRecentInfo) : Gboolean
  fun gtk_recent_info_last_application(info : GtkRecentInfo) : Gchar*
  fun gtk_recent_info_match(info_a : GtkRecentInfo, info_b : GtkRecentInfo) : Gboolean
  fun gtk_recent_info_ref(info : GtkRecentInfo) : GtkRecentInfo
  fun gtk_recent_info_unref(info : GtkRecentInfo)
  fun gtk_recent_manager_add_full(manager : GtkRecentManager*, uri : Gchar*, recent_data : GtkRecentData*) : Gboolean
  fun gtk_recent_manager_add_item(manager : GtkRecentManager*, uri : Gchar*) : Gboolean
  fun gtk_recent_manager_error_get_type : GType
  fun gtk_recent_manager_error_quark : GQuark
  fun gtk_recent_manager_get_default : GtkRecentManager*
  fun gtk_recent_manager_get_items(manager : GtkRecentManager*) : GList*
  fun gtk_recent_manager_get_type : GType
  fun gtk_recent_manager_has_item(manager : GtkRecentManager*, uri : Gchar*) : Gboolean
  fun gtk_recent_manager_lookup_item(manager : GtkRecentManager*, uri : Gchar*, error : GError**) : GtkRecentInfo
  fun gtk_recent_manager_move_item(manager : GtkRecentManager*, uri : Gchar*, new_uri : Gchar*, error : GError**) : Gboolean
  fun gtk_recent_manager_new : GtkRecentManager*
  fun gtk_recent_manager_purge_items(manager : GtkRecentManager*, error : GError**) : Gint
  fun gtk_recent_manager_remove_item(manager : GtkRecentManager*, uri : Gchar*, error : GError**) : Gboolean
  fun gtk_recent_sort_type_get_type : GType
  fun gtk_region_flags_get_type : GType
  fun gtk_relief_style_get_type : GType
  fun gtk_render_activity(context : GtkStyleContext*, cr : CairoT, x : Gdouble, y : Gdouble, width : Gdouble, height : Gdouble)
  fun gtk_render_arrow(context : GtkStyleContext*, cr : CairoT, angle : Gdouble, x : Gdouble, y : Gdouble, size : Gdouble)
  fun gtk_render_background(context : GtkStyleContext*, cr : CairoT, x : Gdouble, y : Gdouble, width : Gdouble, height : Gdouble)
  fun gtk_render_check(context : GtkStyleContext*, cr : CairoT, x : Gdouble, y : Gdouble, width : Gdouble, height : Gdouble)
  fun gtk_render_expander(context : GtkStyleContext*, cr : CairoT, x : Gdouble, y : Gdouble, width : Gdouble, height : Gdouble)
  fun gtk_render_extension(context : GtkStyleContext*, cr : CairoT, x : Gdouble, y : Gdouble, width : Gdouble, height : Gdouble, gap_side : GtkPositionType)
  fun gtk_render_focus(context : GtkStyleContext*, cr : CairoT, x : Gdouble, y : Gdouble, width : Gdouble, height : Gdouble)
  fun gtk_render_frame(context : GtkStyleContext*, cr : CairoT, x : Gdouble, y : Gdouble, width : Gdouble, height : Gdouble)
  fun gtk_render_frame_gap(context : GtkStyleContext*, cr : CairoT, x : Gdouble, y : Gdouble, width : Gdouble, height : Gdouble, gap_side : GtkPositionType, xy0_gap : Gdouble, xy1_gap : Gdouble)
  fun gtk_render_handle(context : GtkStyleContext*, cr : CairoT, x : Gdouble, y : Gdouble, width : Gdouble, height : Gdouble)
  fun gtk_render_icon(context : GtkStyleContext*, cr : CairoT, pixbuf : GdkPixbuf, x : Gdouble, y : Gdouble)
  fun gtk_render_icon_pixbuf(context : GtkStyleContext*, source : GtkIconSource, size : GtkIconSize) : GdkPixbuf
  fun gtk_render_icon_surface(context : GtkStyleContext*, cr : CairoT, surface : CairoSurfaceT, x : Gdouble, y : Gdouble)
  fun gtk_render_insertion_cursor(context : GtkStyleContext*, cr : CairoT, x : Gdouble, y : Gdouble, layout : PangoLayout, index : LibC::Int, direction : PangoDirection)
  fun gtk_render_layout(context : GtkStyleContext*, cr : CairoT, x : Gdouble, y : Gdouble, layout : PangoLayout)
  fun gtk_render_line(context : GtkStyleContext*, cr : CairoT, x0 : Gdouble, y0 : Gdouble, x1 : Gdouble, y1 : Gdouble)
  fun gtk_render_option(context : GtkStyleContext*, cr : CairoT, x : Gdouble, y : Gdouble, width : Gdouble, height : Gdouble)
  fun gtk_render_slider(context : GtkStyleContext*, cr : CairoT, x : Gdouble, y : Gdouble, width : Gdouble, height : Gdouble, orientation : GtkOrientation)
  fun gtk_requisition_copy(requisition : GtkRequisition*) : GtkRequisition*
  fun gtk_requisition_free(requisition : GtkRequisition*)
  fun gtk_requisition_get_type : GType
  fun gtk_requisition_new : GtkRequisition*
  fun gtk_resize_mode_get_type : GType
  fun gtk_response_type_get_type : GType
  fun gtk_revealer_get_child_revealed(revealer : GtkRevealer*) : Gboolean
  fun gtk_revealer_get_reveal_child(revealer : GtkRevealer*) : Gboolean
  fun gtk_revealer_get_transition_duration(revealer : GtkRevealer*) : Guint
  fun gtk_revealer_get_transition_type(revealer : GtkRevealer*) : GtkRevealerTransitionType
  fun gtk_revealer_get_type : GType
  fun gtk_revealer_new : GtkWidget*
  fun gtk_revealer_set_reveal_child(revealer : GtkRevealer*, reveal_child : Gboolean)
  fun gtk_revealer_set_transition_duration(revealer : GtkRevealer*, duration : Guint)
  fun gtk_revealer_set_transition_type(revealer : GtkRevealer*, transition : GtkRevealerTransitionType)
  fun gtk_revealer_transition_type_get_type : GType
  fun gtk_rgb_to_hsv(r : Gdouble, g : Gdouble, b : Gdouble, h : Gdouble*, s : Gdouble*, v : Gdouble*)
  fun gtk_scale_add_mark(scale : GtkScale*, value : Gdouble, position : GtkPositionType, markup : Gchar*)
  fun gtk_scale_button_get_adjustment(button : GtkScaleButton*) : GtkAdjustment*
  fun gtk_scale_button_get_minus_button(button : GtkScaleButton*) : GtkWidget*
  fun gtk_scale_button_get_plus_button(button : GtkScaleButton*) : GtkWidget*
  fun gtk_scale_button_get_popup(button : GtkScaleButton*) : GtkWidget*
  fun gtk_scale_button_get_type : GType
  fun gtk_scale_button_get_value(button : GtkScaleButton*) : Gdouble
  fun gtk_scale_button_new(size : GtkIconSize, min : Gdouble, max : Gdouble, step : Gdouble, icons : Gchar**) : GtkWidget*
  fun gtk_scale_button_set_adjustment(button : GtkScaleButton*, adjustment : GtkAdjustment*)
  fun gtk_scale_button_set_icons(button : GtkScaleButton*, icons : Gchar**)
  fun gtk_scale_button_set_value(button : GtkScaleButton*, value : Gdouble)
  fun gtk_scale_clear_marks(scale : GtkScale*)
  fun gtk_scale_get_digits(scale : GtkScale*) : Gint
  fun gtk_scale_get_draw_value(scale : GtkScale*) : Gboolean
  fun gtk_scale_get_has_origin(scale : GtkScale*) : Gboolean
  fun gtk_scale_get_layout(scale : GtkScale*) : PangoLayout
  fun gtk_scale_get_layout_offsets(scale : GtkScale*, x : Gint*, y : Gint*)
  fun gtk_scale_get_type : GType
  fun gtk_scale_get_value_pos(scale : GtkScale*) : GtkPositionType
  fun gtk_scale_new(orientation : GtkOrientation, adjustment : GtkAdjustment*) : GtkWidget*
  fun gtk_scale_new_with_range(orientation : GtkOrientation, min : Gdouble, max : Gdouble, step : Gdouble) : GtkWidget*
  fun gtk_scale_set_digits(scale : GtkScale*, digits : Gint)
  fun gtk_scale_set_draw_value(scale : GtkScale*, draw_value : Gboolean)
  fun gtk_scale_set_has_origin(scale : GtkScale*, has_origin : Gboolean)
  fun gtk_scale_set_value_pos(scale : GtkScale*, pos : GtkPositionType)
  fun gtk_scroll_step_get_type : GType
  fun gtk_scroll_type_get_type : GType
  fun gtk_scrollable_get_border(scrollable : GtkScrollable, border : GtkBorder*) : Gboolean
  fun gtk_scrollable_get_hadjustment(scrollable : GtkScrollable) : GtkAdjustment*
  fun gtk_scrollable_get_hscroll_policy(scrollable : GtkScrollable) : GtkScrollablePolicy
  fun gtk_scrollable_get_type : GType
  fun gtk_scrollable_get_vadjustment(scrollable : GtkScrollable) : GtkAdjustment*
  fun gtk_scrollable_get_vscroll_policy(scrollable : GtkScrollable) : GtkScrollablePolicy
  fun gtk_scrollable_policy_get_type : GType
  fun gtk_scrollable_set_hadjustment(scrollable : GtkScrollable, hadjustment : GtkAdjustment*)
  fun gtk_scrollable_set_hscroll_policy(scrollable : GtkScrollable, policy : GtkScrollablePolicy)
  fun gtk_scrollable_set_vadjustment(scrollable : GtkScrollable, vadjustment : GtkAdjustment*)
  fun gtk_scrollable_set_vscroll_policy(scrollable : GtkScrollable, policy : GtkScrollablePolicy)
  fun gtk_scrollbar_get_type : GType
  fun gtk_scrollbar_new(orientation : GtkOrientation, adjustment : GtkAdjustment*) : GtkWidget*
  fun gtk_scrolled_window_add_with_viewport(scrolled_window : GtkScrolledWindow*, child : GtkWidget*)
  fun gtk_scrolled_window_get_capture_button_press(scrolled_window : GtkScrolledWindow*) : Gboolean
  fun gtk_scrolled_window_get_hadjustment(scrolled_window : GtkScrolledWindow*) : GtkAdjustment*
  fun gtk_scrolled_window_get_hscrollbar(scrolled_window : GtkScrolledWindow*) : GtkWidget*
  fun gtk_scrolled_window_get_kinetic_scrolling(scrolled_window : GtkScrolledWindow*) : Gboolean
  fun gtk_scrolled_window_get_min_content_height(scrolled_window : GtkScrolledWindow*) : Gint
  fun gtk_scrolled_window_get_min_content_width(scrolled_window : GtkScrolledWindow*) : Gint
  fun gtk_scrolled_window_get_overlay_scrolling(scrolled_window : GtkScrolledWindow*) : Gboolean
  fun gtk_scrolled_window_get_placement(scrolled_window : GtkScrolledWindow*) : GtkCornerType
  fun gtk_scrolled_window_get_policy(scrolled_window : GtkScrolledWindow*, hscrollbar_policy : GtkPolicyType*, vscrollbar_policy : GtkPolicyType*)
  fun gtk_scrolled_window_get_shadow_type(scrolled_window : GtkScrolledWindow*) : GtkShadowType
  fun gtk_scrolled_window_get_type : GType
  fun gtk_scrolled_window_get_vadjustment(scrolled_window : GtkScrolledWindow*) : GtkAdjustment*
  fun gtk_scrolled_window_get_vscrollbar(scrolled_window : GtkScrolledWindow*) : GtkWidget*
  fun gtk_scrolled_window_new(hadjustment : GtkAdjustment*, vadjustment : GtkAdjustment*) : GtkWidget*
  fun gtk_scrolled_window_set_capture_button_press(scrolled_window : GtkScrolledWindow*, capture_button_press : Gboolean)
  fun gtk_scrolled_window_set_hadjustment(scrolled_window : GtkScrolledWindow*, hadjustment : GtkAdjustment*)
  fun gtk_scrolled_window_set_kinetic_scrolling(scrolled_window : GtkScrolledWindow*, kinetic_scrolling : Gboolean)
  fun gtk_scrolled_window_set_min_content_height(scrolled_window : GtkScrolledWindow*, height : Gint)
  fun gtk_scrolled_window_set_min_content_width(scrolled_window : GtkScrolledWindow*, width : Gint)
  fun gtk_scrolled_window_set_overlay_scrolling(scrolled_window : GtkScrolledWindow*, overlay_scrolling : Gboolean)
  fun gtk_scrolled_window_set_placement(scrolled_window : GtkScrolledWindow*, window_placement : GtkCornerType)
  fun gtk_scrolled_window_set_policy(scrolled_window : GtkScrolledWindow*, hscrollbar_policy : GtkPolicyType, vscrollbar_policy : GtkPolicyType)
  fun gtk_scrolled_window_set_shadow_type(scrolled_window : GtkScrolledWindow*, type : GtkShadowType)
  fun gtk_scrolled_window_set_vadjustment(scrolled_window : GtkScrolledWindow*, vadjustment : GtkAdjustment*)
  fun gtk_scrolled_window_unset_placement(scrolled_window : GtkScrolledWindow*)
  fun gtk_search_bar_connect_entry(bar : GtkSearchBar*, entry : GtkEntry*)
  fun gtk_search_bar_get_search_mode(bar : GtkSearchBar*) : Gboolean
  fun gtk_search_bar_get_show_close_button(bar : GtkSearchBar*) : Gboolean
  fun gtk_search_bar_get_type : GType
  fun gtk_search_bar_handle_event(bar : GtkSearchBar*, event : GdkEvent*) : Gboolean
  fun gtk_search_bar_new : GtkWidget*
  fun gtk_search_bar_set_search_mode(bar : GtkSearchBar*, search_mode : Gboolean)
  fun gtk_search_bar_set_show_close_button(bar : GtkSearchBar*, visible : Gboolean)
  fun gtk_search_entry_get_type : GType
  fun gtk_search_entry_handle_event(entry : GtkSearchEntry*, event : GdkEvent*) : Gboolean
  fun gtk_search_entry_new : GtkWidget*
  fun gtk_selection_add_target(widget : GtkWidget*, selection : GdkAtom, target : GdkAtom, info : Guint)
  fun gtk_selection_add_targets(widget : GtkWidget*, selection : GdkAtom, targets : GtkTargetEntry*, ntargets : Guint)
  fun gtk_selection_clear_targets(widget : GtkWidget*, selection : GdkAtom)
  fun gtk_selection_convert(widget : GtkWidget*, selection : GdkAtom, target : GdkAtom, time_ : Guint32) : Gboolean
  fun gtk_selection_data_copy(data : GtkSelectionData) : GtkSelectionData
  fun gtk_selection_data_free(data : GtkSelectionData)
  fun gtk_selection_data_get_data(selection_data : GtkSelectionData) : Guchar*
  fun gtk_selection_data_get_data_type(selection_data : GtkSelectionData) : GdkAtom
  fun gtk_selection_data_get_data_with_length(selection_data : GtkSelectionData, length : Gint*) : Guchar*
  fun gtk_selection_data_get_display(selection_data : GtkSelectionData) : GdkDisplay
  fun gtk_selection_data_get_format(selection_data : GtkSelectionData) : Gint
  fun gtk_selection_data_get_length(selection_data : GtkSelectionData) : Gint
  fun gtk_selection_data_get_pixbuf(selection_data : GtkSelectionData) : GdkPixbuf
  fun gtk_selection_data_get_selection(selection_data : GtkSelectionData) : GdkAtom
  fun gtk_selection_data_get_target(selection_data : GtkSelectionData) : GdkAtom
  fun gtk_selection_data_get_targets(selection_data : GtkSelectionData, targets : GdkAtom**, n_atoms : Gint*) : Gboolean
  fun gtk_selection_data_get_text(selection_data : GtkSelectionData) : Guchar*
  fun gtk_selection_data_get_type : GType
  fun gtk_selection_data_get_uris(selection_data : GtkSelectionData) : Gchar**
  fun gtk_selection_data_set(selection_data : GtkSelectionData, type : GdkAtom, format : Gint, data : Guchar*, length : Gint)
  fun gtk_selection_data_set_pixbuf(selection_data : GtkSelectionData, pixbuf : GdkPixbuf) : Gboolean
  fun gtk_selection_data_set_text(selection_data : GtkSelectionData, str : Gchar*, len : Gint) : Gboolean
  fun gtk_selection_data_set_uris(selection_data : GtkSelectionData, uris : Gchar**) : Gboolean
  fun gtk_selection_data_targets_include_image(selection_data : GtkSelectionData, writable : Gboolean) : Gboolean
  fun gtk_selection_data_targets_include_rich_text(selection_data : GtkSelectionData, buffer : GtkTextBuffer*) : Gboolean
  fun gtk_selection_data_targets_include_text(selection_data : GtkSelectionData) : Gboolean
  fun gtk_selection_data_targets_include_uri(selection_data : GtkSelectionData) : Gboolean
  fun gtk_selection_mode_get_type : GType
  fun gtk_selection_owner_set(widget : GtkWidget*, selection : GdkAtom, time_ : Guint32) : Gboolean
  fun gtk_selection_owner_set_for_display(display : GdkDisplay, widget : GtkWidget*, selection : GdkAtom, time_ : Guint32) : Gboolean
  fun gtk_selection_remove_all(widget : GtkWidget*)
  fun gtk_sensitivity_type_get_type : GType
  fun gtk_separator_get_type : GType
  fun gtk_separator_menu_item_get_type : GType
  fun gtk_separator_menu_item_new : GtkWidget*
  fun gtk_separator_new(orientation : GtkOrientation) : GtkWidget*
  fun gtk_separator_tool_item_get_draw(item : GtkSeparatorToolItem*) : Gboolean
  fun gtk_separator_tool_item_get_type : GType
  fun gtk_separator_tool_item_new : GtkToolItem*
  fun gtk_separator_tool_item_set_draw(item : GtkSeparatorToolItem*, draw : Gboolean)
  fun gtk_set_debug_flags(flags : Guint)
  fun gtk_settings_get_default : GtkSettings*
  fun gtk_settings_get_for_screen(screen : GdkScreen) : GtkSettings*
  fun gtk_settings_get_type : GType
  fun gtk_settings_install_property(pspec : GParamSpec*)
  fun gtk_settings_install_property_parser(pspec : GParamSpec*, parser : GtkRcPropertyParser)
  fun gtk_settings_set_double_property(settings : GtkSettings*, name : Gchar*, v_double : Gdouble, origin : Gchar*)
  fun gtk_settings_set_long_property(settings : GtkSettings*, name : Gchar*, v_long : Glong, origin : Gchar*)
  fun gtk_settings_set_property_value(settings : GtkSettings*, name : Gchar*, svalue : GtkSettingsValue*)
  fun gtk_settings_set_string_property(settings : GtkSettings*, name : Gchar*, v_string : Gchar*, origin : Gchar*)
  fun gtk_shadow_type_get_type : GType
  fun gtk_show_about_dialog(parent : GtkWindow*, first_property_name : Gchar*, ...)
  fun gtk_show_uri(screen : GdkScreen, uri : Gchar*, timestamp : Guint32, error : GError**) : Gboolean
  fun gtk_size_group_add_widget(size_group : GtkSizeGroup*, widget : GtkWidget*)
  fun gtk_size_group_get_ignore_hidden(size_group : GtkSizeGroup*) : Gboolean
  fun gtk_size_group_get_mode(size_group : GtkSizeGroup*) : GtkSizeGroupMode
  fun gtk_size_group_get_type : GType
  fun gtk_size_group_get_widgets(size_group : GtkSizeGroup*) : GsList*
  fun gtk_size_group_mode_get_type : GType
  fun gtk_size_group_new(mode : GtkSizeGroupMode) : GtkSizeGroup*
  fun gtk_size_group_remove_widget(size_group : GtkSizeGroup*, widget : GtkWidget*)
  fun gtk_size_group_set_ignore_hidden(size_group : GtkSizeGroup*, ignore_hidden : Gboolean)
  fun gtk_size_group_set_mode(size_group : GtkSizeGroup*, mode : GtkSizeGroupMode)
  fun gtk_size_request_mode_get_type : GType
  fun gtk_sort_type_get_type : GType
  fun gtk_spin_button_configure(spin_button : GtkSpinButton*, adjustment : GtkAdjustment*, climb_rate : Gdouble, digits : Guint)
  fun gtk_spin_button_get_adjustment(spin_button : GtkSpinButton*) : GtkAdjustment*
  fun gtk_spin_button_get_digits(spin_button : GtkSpinButton*) : Guint
  fun gtk_spin_button_get_increments(spin_button : GtkSpinButton*, step : Gdouble*, page : Gdouble*)
  fun gtk_spin_button_get_numeric(spin_button : GtkSpinButton*) : Gboolean
  fun gtk_spin_button_get_range(spin_button : GtkSpinButton*, min : Gdouble*, max : Gdouble*)
  fun gtk_spin_button_get_snap_to_ticks(spin_button : GtkSpinButton*) : Gboolean
  fun gtk_spin_button_get_type : GType
  fun gtk_spin_button_get_update_policy(spin_button : GtkSpinButton*) : GtkSpinButtonUpdatePolicy
  fun gtk_spin_button_get_value(spin_button : GtkSpinButton*) : Gdouble
  fun gtk_spin_button_get_value_as_int(spin_button : GtkSpinButton*) : Gint
  fun gtk_spin_button_get_wrap(spin_button : GtkSpinButton*) : Gboolean
  fun gtk_spin_button_new(adjustment : GtkAdjustment*, climb_rate : Gdouble, digits : Guint) : GtkWidget*
  fun gtk_spin_button_new_with_range(min : Gdouble, max : Gdouble, step : Gdouble) : GtkWidget*
  fun gtk_spin_button_set_adjustment(spin_button : GtkSpinButton*, adjustment : GtkAdjustment*)
  fun gtk_spin_button_set_digits(spin_button : GtkSpinButton*, digits : Guint)
  fun gtk_spin_button_set_increments(spin_button : GtkSpinButton*, step : Gdouble, page : Gdouble)
  fun gtk_spin_button_set_numeric(spin_button : GtkSpinButton*, numeric : Gboolean)
  fun gtk_spin_button_set_range(spin_button : GtkSpinButton*, min : Gdouble, max : Gdouble)
  fun gtk_spin_button_set_snap_to_ticks(spin_button : GtkSpinButton*, snap_to_ticks : Gboolean)
  fun gtk_spin_button_set_update_policy(spin_button : GtkSpinButton*, policy : GtkSpinButtonUpdatePolicy)
  fun gtk_spin_button_set_value(spin_button : GtkSpinButton*, value : Gdouble)
  fun gtk_spin_button_set_wrap(spin_button : GtkSpinButton*, wrap : Gboolean)
  fun gtk_spin_button_spin(spin_button : GtkSpinButton*, direction : GtkSpinType, increment : Gdouble)
  fun gtk_spin_button_update(spin_button : GtkSpinButton*)
  fun gtk_spin_button_update_policy_get_type : GType
  fun gtk_spin_type_get_type : GType
  fun gtk_spinner_get_type : GType
  fun gtk_spinner_new : GtkWidget*
  fun gtk_spinner_start(spinner : GtkSpinner*)
  fun gtk_spinner_stop(spinner : GtkSpinner*)
  fun gtk_stack_add_named(stack : GtkStack*, child : GtkWidget*, name : Gchar*)
  fun gtk_stack_add_titled(stack : GtkStack*, child : GtkWidget*, name : Gchar*, title : Gchar*)
  fun gtk_stack_get_child_by_name(stack : GtkStack*, name : Gchar*) : GtkWidget*
  fun gtk_stack_get_hhomogeneous(stack : GtkStack*) : Gboolean
  fun gtk_stack_get_homogeneous(stack : GtkStack*) : Gboolean
  fun gtk_stack_get_interpolate_size(stack : GtkStack*) : Gboolean
  fun gtk_stack_get_transition_duration(stack : GtkStack*) : Guint
  fun gtk_stack_get_transition_running(stack : GtkStack*) : Gboolean
  fun gtk_stack_get_transition_type(stack : GtkStack*) : GtkStackTransitionType
  fun gtk_stack_get_type : GType
  fun gtk_stack_get_vhomogeneous(stack : GtkStack*) : Gboolean
  fun gtk_stack_get_visible_child(stack : GtkStack*) : GtkWidget*
  fun gtk_stack_get_visible_child_name(stack : GtkStack*) : Gchar*
  fun gtk_stack_new : GtkWidget*
  fun gtk_stack_set_hhomogeneous(stack : GtkStack*, hhomogeneous : Gboolean)
  fun gtk_stack_set_homogeneous(stack : GtkStack*, homogeneous : Gboolean)
  fun gtk_stack_set_interpolate_size(stack : GtkStack*, interpolate_size : Gboolean)
  fun gtk_stack_set_transition_duration(stack : GtkStack*, duration : Guint)
  fun gtk_stack_set_transition_type(stack : GtkStack*, transition : GtkStackTransitionType)
  fun gtk_stack_set_vhomogeneous(stack : GtkStack*, vhomogeneous : Gboolean)
  fun gtk_stack_set_visible_child(stack : GtkStack*, child : GtkWidget*)
  fun gtk_stack_set_visible_child_full(stack : GtkStack*, name : Gchar*, transition : GtkStackTransitionType)
  fun gtk_stack_set_visible_child_name(stack : GtkStack*, name : Gchar*)
  fun gtk_stack_sidebar_get_stack(sidebar : GtkStackSidebar*) : GtkStack*
  fun gtk_stack_sidebar_get_type : GType
  fun gtk_stack_sidebar_new : GtkWidget*
  fun gtk_stack_sidebar_set_stack(sidebar : GtkStackSidebar*, stack : GtkStack*)
  fun gtk_stack_switcher_get_stack(switcher : GtkStackSwitcher*) : GtkStack*
  fun gtk_stack_switcher_get_type : GType
  fun gtk_stack_switcher_new : GtkWidget*
  fun gtk_stack_switcher_set_stack(switcher : GtkStackSwitcher*, stack : GtkStack*)
  fun gtk_stack_transition_type_get_type : GType
  fun gtk_state_flags_get_type : GType
  fun gtk_state_type_get_type : GType
  fun gtk_status_icon_get_geometry(status_icon : GtkStatusIcon*, screen : GdkScreen*, area : GdkRectangle*, orientation : GtkOrientation*) : Gboolean
  fun gtk_status_icon_get_gicon(status_icon : GtkStatusIcon*) : GIcon
  fun gtk_status_icon_get_has_tooltip(status_icon : GtkStatusIcon*) : Gboolean
  fun gtk_status_icon_get_icon_name(status_icon : GtkStatusIcon*) : Gchar*
  fun gtk_status_icon_get_pixbuf(status_icon : GtkStatusIcon*) : GdkPixbuf
  fun gtk_status_icon_get_screen(status_icon : GtkStatusIcon*) : GdkScreen
  fun gtk_status_icon_get_size(status_icon : GtkStatusIcon*) : Gint
  fun gtk_status_icon_get_stock(status_icon : GtkStatusIcon*) : Gchar*
  fun gtk_status_icon_get_storage_type(status_icon : GtkStatusIcon*) : GtkImageType
  fun gtk_status_icon_get_title(status_icon : GtkStatusIcon*) : Gchar*
  fun gtk_status_icon_get_tooltip_markup(status_icon : GtkStatusIcon*) : Gchar*
  fun gtk_status_icon_get_tooltip_text(status_icon : GtkStatusIcon*) : Gchar*
  fun gtk_status_icon_get_type : GType
  fun gtk_status_icon_get_visible(status_icon : GtkStatusIcon*) : Gboolean
  fun gtk_status_icon_get_x11_window_id(status_icon : GtkStatusIcon*) : Guint32
  fun gtk_status_icon_is_embedded(status_icon : GtkStatusIcon*) : Gboolean
  fun gtk_status_icon_new : GtkStatusIcon*
  fun gtk_status_icon_new_from_file(filename : Gchar*) : GtkStatusIcon*
  fun gtk_status_icon_new_from_gicon(icon : GIcon) : GtkStatusIcon*
  fun gtk_status_icon_new_from_icon_name(icon_name : Gchar*) : GtkStatusIcon*
  fun gtk_status_icon_new_from_pixbuf(pixbuf : GdkPixbuf) : GtkStatusIcon*
  fun gtk_status_icon_new_from_stock(stock_id : Gchar*) : GtkStatusIcon*
  fun gtk_status_icon_position_menu(menu : GtkMenu*, x : Gint*, y : Gint*, push_in : Gboolean*, user_data : Gpointer)
  fun gtk_status_icon_set_from_file(status_icon : GtkStatusIcon*, filename : Gchar*)
  fun gtk_status_icon_set_from_gicon(status_icon : GtkStatusIcon*, icon : GIcon)
  fun gtk_status_icon_set_from_icon_name(status_icon : GtkStatusIcon*, icon_name : Gchar*)
  fun gtk_status_icon_set_from_pixbuf(status_icon : GtkStatusIcon*, pixbuf : GdkPixbuf)
  fun gtk_status_icon_set_from_stock(status_icon : GtkStatusIcon*, stock_id : Gchar*)
  fun gtk_status_icon_set_has_tooltip(status_icon : GtkStatusIcon*, has_tooltip : Gboolean)
  fun gtk_status_icon_set_name(status_icon : GtkStatusIcon*, name : Gchar*)
  fun gtk_status_icon_set_screen(status_icon : GtkStatusIcon*, screen : GdkScreen)
  fun gtk_status_icon_set_title(status_icon : GtkStatusIcon*, title : Gchar*)
  fun gtk_status_icon_set_tooltip_markup(status_icon : GtkStatusIcon*, markup : Gchar*)
  fun gtk_status_icon_set_tooltip_text(status_icon : GtkStatusIcon*, text : Gchar*)
  fun gtk_status_icon_set_visible(status_icon : GtkStatusIcon*, visible : Gboolean)
  fun gtk_statusbar_get_context_id(statusbar : GtkStatusbar*, context_description : Gchar*) : Guint
  fun gtk_statusbar_get_message_area(statusbar : GtkStatusbar*) : GtkWidget*
  fun gtk_statusbar_get_type : GType
  fun gtk_statusbar_new : GtkWidget*
  fun gtk_statusbar_pop(statusbar : GtkStatusbar*, context_id : Guint)
  fun gtk_statusbar_push(statusbar : GtkStatusbar*, context_id : Guint, text : Gchar*) : Guint
  fun gtk_statusbar_remove(statusbar : GtkStatusbar*, context_id : Guint, message_id : Guint)
  fun gtk_statusbar_remove_all(statusbar : GtkStatusbar*, context_id : Guint)
  fun gtk_stock_add(items : GtkStockItem*, n_items : Guint)
  fun gtk_stock_add_static(items : GtkStockItem*, n_items : Guint)
  fun gtk_stock_item_copy(item : GtkStockItem*) : GtkStockItem*
  fun gtk_stock_item_free(item : GtkStockItem*)
  fun gtk_stock_list_ids : GsList*
  fun gtk_stock_lookup(stock_id : Gchar*, item : GtkStockItem*) : Gboolean
  fun gtk_stock_set_translate_func(domain : Gchar*, func : GtkTranslateFunc, data : Gpointer, notify : GDestroyNotify)
  fun gtk_style_apply_default_background(style : GtkStyle*, cr : CairoT, window : GdkWindow, state_type : GtkStateType, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_style_attach(style : GtkStyle*, window : GdkWindow) : GtkStyle*
  fun gtk_style_context_add_class(context : GtkStyleContext*, class_name : Gchar*)
  fun gtk_style_context_add_provider(context : GtkStyleContext*, provider : GtkStyleProvider, priority : Guint)
  fun gtk_style_context_add_provider_for_screen(screen : GdkScreen, provider : GtkStyleProvider, priority : Guint)
  fun gtk_style_context_add_region(context : GtkStyleContext*, region_name : Gchar*, flags : GtkRegionFlags)
  fun gtk_style_context_cancel_animations(context : GtkStyleContext*, region_id : Gpointer)
  fun gtk_style_context_get(context : GtkStyleContext*, state : GtkStateFlags, ...)
  fun gtk_style_context_get_background_color(context : GtkStyleContext*, state : GtkStateFlags, color : GdkRgba*)
  fun gtk_style_context_get_border(context : GtkStyleContext*, state : GtkStateFlags, border : GtkBorder*)
  fun gtk_style_context_get_border_color(context : GtkStyleContext*, state : GtkStateFlags, color : GdkRgba*)
  fun gtk_style_context_get_color(context : GtkStyleContext*, state : GtkStateFlags, color : GdkRgba*)
  fun gtk_style_context_get_direction(context : GtkStyleContext*) : GtkTextDirection
  fun gtk_style_context_get_font(context : GtkStyleContext*, state : GtkStateFlags) : PangoFontDescription
  fun gtk_style_context_get_frame_clock(context : GtkStyleContext*) : GdkFrameClock
  fun gtk_style_context_get_junction_sides(context : GtkStyleContext*) : GtkJunctionSides
  fun gtk_style_context_get_margin(context : GtkStyleContext*, state : GtkStateFlags, margin : GtkBorder*)
  fun gtk_style_context_get_padding(context : GtkStyleContext*, state : GtkStateFlags, padding : GtkBorder*)
  fun gtk_style_context_get_parent(context : GtkStyleContext*) : GtkStyleContext*
  fun gtk_style_context_get_path(context : GtkStyleContext*) : GtkWidgetPath
  fun gtk_style_context_get_property(context : GtkStyleContext*, property : Gchar*, state : GtkStateFlags, value : GValue*)
  fun gtk_style_context_get_scale(context : GtkStyleContext*) : Gint
  fun gtk_style_context_get_screen(context : GtkStyleContext*) : GdkScreen
  fun gtk_style_context_get_section(context : GtkStyleContext*, property : Gchar*) : GtkCssSection
  fun gtk_style_context_get_state(context : GtkStyleContext*) : GtkStateFlags
  fun gtk_style_context_get_style(context : GtkStyleContext*, ...)
  fun gtk_style_context_get_style_property(context : GtkStyleContext*, property_name : Gchar*, value : GValue*)
  fun gtk_style_context_get_style_valist(context : GtkStyleContext*, args : VaList)
  fun gtk_style_context_get_type : GType
  fun gtk_style_context_get_valist(context : GtkStyleContext*, state : GtkStateFlags, args : VaList)
  fun gtk_style_context_has_class(context : GtkStyleContext*, class_name : Gchar*) : Gboolean
  fun gtk_style_context_has_region(context : GtkStyleContext*, region_name : Gchar*, flags_return : GtkRegionFlags*) : Gboolean
  fun gtk_style_context_invalidate(context : GtkStyleContext*)
  fun gtk_style_context_list_classes(context : GtkStyleContext*) : GList*
  fun gtk_style_context_list_regions(context : GtkStyleContext*) : GList*
  fun gtk_style_context_lookup_color(context : GtkStyleContext*, color_name : Gchar*, color : GdkRgba*) : Gboolean
  fun gtk_style_context_lookup_icon_set(context : GtkStyleContext*, stock_id : Gchar*) : GtkIconSet
  fun gtk_style_context_new : GtkStyleContext*
  fun gtk_style_context_notify_state_change(context : GtkStyleContext*, window : GdkWindow, region_id : Gpointer, state : GtkStateType, state_value : Gboolean)
  fun gtk_style_context_pop_animatable_region(context : GtkStyleContext*)
  fun gtk_style_context_push_animatable_region(context : GtkStyleContext*, region_id : Gpointer)
  fun gtk_style_context_remove_class(context : GtkStyleContext*, class_name : Gchar*)
  fun gtk_style_context_remove_provider(context : GtkStyleContext*, provider : GtkStyleProvider)
  fun gtk_style_context_remove_provider_for_screen(screen : GdkScreen, provider : GtkStyleProvider)
  fun gtk_style_context_remove_region(context : GtkStyleContext*, region_name : Gchar*)
  fun gtk_style_context_reset_widgets(screen : GdkScreen)
  fun gtk_style_context_restore(context : GtkStyleContext*)
  fun gtk_style_context_save(context : GtkStyleContext*)
  fun gtk_style_context_scroll_animations(context : GtkStyleContext*, window : GdkWindow, dx : Gint, dy : Gint)
  fun gtk_style_context_set_background(context : GtkStyleContext*, window : GdkWindow)
  fun gtk_style_context_set_direction(context : GtkStyleContext*, direction : GtkTextDirection)
  fun gtk_style_context_set_frame_clock(context : GtkStyleContext*, frame_clock : GdkFrameClock)
  fun gtk_style_context_set_junction_sides(context : GtkStyleContext*, sides : GtkJunctionSides)
  fun gtk_style_context_set_parent(context : GtkStyleContext*, parent : GtkStyleContext*)
  fun gtk_style_context_set_path(context : GtkStyleContext*, path : GtkWidgetPath)
  fun gtk_style_context_set_scale(context : GtkStyleContext*, scale : Gint)
  fun gtk_style_context_set_screen(context : GtkStyleContext*, screen : GdkScreen)
  fun gtk_style_context_set_state(context : GtkStyleContext*, flags : GtkStateFlags)
  fun gtk_style_context_state_is_running(context : GtkStyleContext*, state : GtkStateType, progress : Gdouble*) : Gboolean
  fun gtk_style_copy(style : GtkStyle*) : GtkStyle*
  fun gtk_style_detach(style : GtkStyle*)
  fun gtk_style_get(style : GtkStyle*, widget_type : GType, first_property_name : Gchar*, ...)
  fun gtk_style_get_style_property(style : GtkStyle*, widget_type : GType, property_name : Gchar*, value : GValue*)
  fun gtk_style_get_type : GType
  fun gtk_style_get_valist(style : GtkStyle*, widget_type : GType, first_property_name : Gchar*, var_args : VaList)
  fun gtk_style_has_context(style : GtkStyle*) : Gboolean
  fun gtk_style_lookup_color(style : GtkStyle*, color_name : Gchar*, color : GdkColor*) : Gboolean
  fun gtk_style_lookup_icon_set(style : GtkStyle*, stock_id : Gchar*) : GtkIconSet
  fun gtk_style_new : GtkStyle*
  fun gtk_style_properties_clear(props : GtkStyleProperties*)
  fun gtk_style_properties_get(props : GtkStyleProperties*, state : GtkStateFlags, ...)
  fun gtk_style_properties_get_property(props : GtkStyleProperties*, property : Gchar*, state : GtkStateFlags, value : GValue*) : Gboolean
  fun gtk_style_properties_get_type : GType
  fun gtk_style_properties_get_valist(props : GtkStyleProperties*, state : GtkStateFlags, args : VaList)
  fun gtk_style_properties_lookup_color(props : GtkStyleProperties*, name : Gchar*) : GtkSymbolicColor
  fun gtk_style_properties_lookup_property(property_name : Gchar*, parse_func : GtkStylePropertyParser*, pspec : GParamSpec**) : Gboolean
  fun gtk_style_properties_map_color(props : GtkStyleProperties*, name : Gchar*, color : GtkSymbolicColor)
  fun gtk_style_properties_merge(props : GtkStyleProperties*, props_to_merge : GtkStyleProperties*, replace : Gboolean)
  fun gtk_style_properties_new : GtkStyleProperties*
  fun gtk_style_properties_register_property(parse_func : GtkStylePropertyParser, pspec : GParamSpec*)
  fun gtk_style_properties_set(props : GtkStyleProperties*, state : GtkStateFlags, ...)
  fun gtk_style_properties_set_property(props : GtkStyleProperties*, property : Gchar*, state : GtkStateFlags, value : GValue*)
  fun gtk_style_properties_set_valist(props : GtkStyleProperties*, state : GtkStateFlags, args : VaList)
  fun gtk_style_properties_unset_property(props : GtkStyleProperties*, property : Gchar*, state : GtkStateFlags)
  fun gtk_style_provider_get_icon_factory(provider : GtkStyleProvider, path : GtkWidgetPath) : GtkIconFactory*
  fun gtk_style_provider_get_style(provider : GtkStyleProvider, path : GtkWidgetPath) : GtkStyleProperties*
  fun gtk_style_provider_get_style_property(provider : GtkStyleProvider, path : GtkWidgetPath, state : GtkStateFlags, pspec : GParamSpec*, value : GValue*) : Gboolean
  fun gtk_style_provider_get_type : GType
  fun gtk_style_render_icon(style : GtkStyle*, source : GtkIconSource, direction : GtkTextDirection, state : GtkStateType, size : GtkIconSize, widget : GtkWidget*, detail : Gchar*) : GdkPixbuf
  fun gtk_style_set_background(style : GtkStyle*, window : GdkWindow, state_type : GtkStateType)
  fun gtk_switch_get_active(sw : GtkSwitch*) : Gboolean
  fun gtk_switch_get_state(sw : GtkSwitch*) : Gboolean
  fun gtk_switch_get_type : GType
  fun gtk_switch_new : GtkWidget*
  fun gtk_switch_set_active(sw : GtkSwitch*, is_active : Gboolean)
  fun gtk_switch_set_state(sw : GtkSwitch*, state : Gboolean)
  fun gtk_symbolic_color_get_type : GType
  fun gtk_symbolic_color_new_alpha(color : GtkSymbolicColor, factor : Gdouble) : GtkSymbolicColor
  fun gtk_symbolic_color_new_literal(color : GdkRgba*) : GtkSymbolicColor
  fun gtk_symbolic_color_new_mix(color1 : GtkSymbolicColor, color2 : GtkSymbolicColor, factor : Gdouble) : GtkSymbolicColor
  fun gtk_symbolic_color_new_name(name : Gchar*) : GtkSymbolicColor
  fun gtk_symbolic_color_new_shade(color : GtkSymbolicColor, factor : Gdouble) : GtkSymbolicColor
  fun gtk_symbolic_color_new_win32(theme_class : Gchar*, id : Gint) : GtkSymbolicColor
  fun gtk_symbolic_color_ref(color : GtkSymbolicColor) : GtkSymbolicColor
  fun gtk_symbolic_color_resolve(color : GtkSymbolicColor, props : GtkStyleProperties*, resolved_color : GdkRgba*) : Gboolean
  fun gtk_symbolic_color_to_string(color : GtkSymbolicColor) : LibC::Char*
  fun gtk_symbolic_color_unref(color : GtkSymbolicColor)
  fun gtk_table_attach(table : GtkTable*, child : GtkWidget*, left_attach : Guint, right_attach : Guint, top_attach : Guint, bottom_attach : Guint, xoptions : GtkAttachOptions, yoptions : GtkAttachOptions, xpadding : Guint, ypadding : Guint)
  fun gtk_table_attach_defaults(table : GtkTable*, widget : GtkWidget*, left_attach : Guint, right_attach : Guint, top_attach : Guint, bottom_attach : Guint)
  fun gtk_table_get_col_spacing(table : GtkTable*, column : Guint) : Guint
  fun gtk_table_get_default_col_spacing(table : GtkTable*) : Guint
  fun gtk_table_get_default_row_spacing(table : GtkTable*) : Guint
  fun gtk_table_get_homogeneous(table : GtkTable*) : Gboolean
  fun gtk_table_get_row_spacing(table : GtkTable*, row : Guint) : Guint
  fun gtk_table_get_size(table : GtkTable*, rows : Guint*, columns : Guint*)
  fun gtk_table_get_type : GType
  fun gtk_table_new(rows : Guint, columns : Guint, homogeneous : Gboolean) : GtkWidget*
  fun gtk_table_resize(table : GtkTable*, rows : Guint, columns : Guint)
  fun gtk_table_set_col_spacing(table : GtkTable*, column : Guint, spacing : Guint)
  fun gtk_table_set_col_spacings(table : GtkTable*, spacing : Guint)
  fun gtk_table_set_homogeneous(table : GtkTable*, homogeneous : Gboolean)
  fun gtk_table_set_row_spacing(table : GtkTable*, row : Guint, spacing : Guint)
  fun gtk_table_set_row_spacings(table : GtkTable*, spacing : Guint)
  fun gtk_target_entry_copy(data : GtkTargetEntry*) : GtkTargetEntry*
  fun gtk_target_entry_free(data : GtkTargetEntry*)
  fun gtk_target_entry_get_type : GType
  fun gtk_target_entry_new(target : Gchar*, flags : Guint, info : Guint) : GtkTargetEntry*
  fun gtk_target_flags_get_type : GType
  fun gtk_target_list_add(list : GtkTargetList, target : GdkAtom, flags : Guint, info : Guint)
  fun gtk_target_list_add_image_targets(list : GtkTargetList, info : Guint, writable : Gboolean)
  fun gtk_target_list_add_rich_text_targets(list : GtkTargetList, info : Guint, deserializable : Gboolean, buffer : GtkTextBuffer*)
  fun gtk_target_list_add_table(list : GtkTargetList, targets : GtkTargetEntry*, ntargets : Guint)
  fun gtk_target_list_add_text_targets(list : GtkTargetList, info : Guint)
  fun gtk_target_list_add_uri_targets(list : GtkTargetList, info : Guint)
  fun gtk_target_list_find(list : GtkTargetList, target : GdkAtom, info : Guint*) : Gboolean
  fun gtk_target_list_get_type : GType
  fun gtk_target_list_new(targets : GtkTargetEntry*, ntargets : Guint) : GtkTargetList
  fun gtk_target_list_ref(list : GtkTargetList) : GtkTargetList
  fun gtk_target_list_remove(list : GtkTargetList, target : GdkAtom)
  fun gtk_target_list_unref(list : GtkTargetList)
  fun gtk_target_table_free(targets : GtkTargetEntry*, n_targets : Gint)
  fun gtk_target_table_new_from_list(list : GtkTargetList, n_targets : Gint*) : GtkTargetEntry*
  fun gtk_targets_include_image(targets : GdkAtom*, n_targets : Gint, writable : Gboolean) : Gboolean
  fun gtk_targets_include_rich_text(targets : GdkAtom*, n_targets : Gint, buffer : GtkTextBuffer*) : Gboolean
  fun gtk_targets_include_text(targets : GdkAtom*, n_targets : Gint) : Gboolean
  fun gtk_targets_include_uri(targets : GdkAtom*, n_targets : Gint) : Gboolean
  fun gtk_tearoff_menu_item_get_type : GType
  fun gtk_tearoff_menu_item_new : GtkWidget*
  fun gtk_test_create_simple_window(window_title : Gchar*, dialog_text : Gchar*) : GtkWidget*
  fun gtk_test_create_widget(widget_type : GType, first_property_name : Gchar*, ...) : GtkWidget*
  fun gtk_test_display_button_window(window_title : Gchar*, dialog_text : Gchar*, ...) : GtkWidget*
  fun gtk_test_find_label(widget : GtkWidget*, label_pattern : Gchar*) : GtkWidget*
  fun gtk_test_find_sibling(base_widget : GtkWidget*, widget_type : GType) : GtkWidget*
  fun gtk_test_find_widget(widget : GtkWidget*, label_pattern : Gchar*, widget_type : GType) : GtkWidget*
  fun gtk_test_init(argcp : LibC::Int*, argvp : LibC::Char***, ...)
  fun gtk_test_list_all_types(n_types : Guint*) : GType*
  fun gtk_test_register_all_types
  fun gtk_test_slider_get_value(widget : GtkWidget*) : LibC::Double
  fun gtk_test_slider_set_perc(widget : GtkWidget*, percentage : LibC::Double)
  fun gtk_test_spin_button_click(spinner : GtkSpinButton*, button : Guint, upwards : Gboolean) : Gboolean
  fun gtk_test_text_get(widget : GtkWidget*) : Gchar*
  fun gtk_test_text_set(widget : GtkWidget*, string : Gchar*)
  fun gtk_test_widget_click(widget : GtkWidget*, button : Guint, modifiers : GdkModifierType) : Gboolean
  fun gtk_test_widget_send_key(widget : GtkWidget*, keyval : Guint, modifiers : GdkModifierType) : Gboolean
  fun gtk_test_widget_wait_for_draw(widget : GtkWidget*)
  fun gtk_text_attributes_copy(src : GtkTextAttributes*) : GtkTextAttributes*
  fun gtk_text_attributes_copy_values(src : GtkTextAttributes*, dest : GtkTextAttributes*)
  fun gtk_text_attributes_get_type : GType
  fun gtk_text_attributes_new : GtkTextAttributes*
  fun gtk_text_attributes_ref(values : GtkTextAttributes*) : GtkTextAttributes*
  fun gtk_text_attributes_unref(values : GtkTextAttributes*)
  fun gtk_text_buffer_add_mark(buffer : GtkTextBuffer*, mark : GtkTextMark*, where : GtkTextIter*)
  fun gtk_text_buffer_add_selection_clipboard(buffer : GtkTextBuffer*, clipboard : GtkClipboard)
  fun gtk_text_buffer_apply_tag(buffer : GtkTextBuffer*, tag : GtkTextTag*, start : GtkTextIter*, _end : GtkTextIter*)
  fun gtk_text_buffer_apply_tag_by_name(buffer : GtkTextBuffer*, name : Gchar*, start : GtkTextIter*, _end : GtkTextIter*)
  fun gtk_text_buffer_backspace(buffer : GtkTextBuffer*, iter : GtkTextIter*, interactive : Gboolean, default_editable : Gboolean) : Gboolean
  fun gtk_text_buffer_begin_user_action(buffer : GtkTextBuffer*)
  fun gtk_text_buffer_copy_clipboard(buffer : GtkTextBuffer*, clipboard : GtkClipboard)
  fun gtk_text_buffer_create_child_anchor(buffer : GtkTextBuffer*, iter : GtkTextIter*) : GtkTextChildAnchor*
  fun gtk_text_buffer_create_mark(buffer : GtkTextBuffer*, mark_name : Gchar*, where : GtkTextIter*, left_gravity : Gboolean) : GtkTextMark*
  fun gtk_text_buffer_create_tag(buffer : GtkTextBuffer*, tag_name : Gchar*, first_property_name : Gchar*, ...) : GtkTextTag*
  fun gtk_text_buffer_cut_clipboard(buffer : GtkTextBuffer*, clipboard : GtkClipboard, default_editable : Gboolean)
  fun gtk_text_buffer_delete(buffer : GtkTextBuffer*, start : GtkTextIter*, _end : GtkTextIter*)
  fun gtk_text_buffer_delete_interactive(buffer : GtkTextBuffer*, start_iter : GtkTextIter*, end_iter : GtkTextIter*, default_editable : Gboolean) : Gboolean
  fun gtk_text_buffer_delete_mark(buffer : GtkTextBuffer*, mark : GtkTextMark*)
  fun gtk_text_buffer_delete_mark_by_name(buffer : GtkTextBuffer*, name : Gchar*)
  fun gtk_text_buffer_delete_selection(buffer : GtkTextBuffer*, interactive : Gboolean, default_editable : Gboolean) : Gboolean
  fun gtk_text_buffer_deserialize(register_buffer : GtkTextBuffer*, content_buffer : GtkTextBuffer*, format : GdkAtom, iter : GtkTextIter*, data : Guint8*, length : Gsize, error : GError**) : Gboolean
  fun gtk_text_buffer_deserialize_get_can_create_tags(buffer : GtkTextBuffer*, format : GdkAtom) : Gboolean
  fun gtk_text_buffer_deserialize_set_can_create_tags(buffer : GtkTextBuffer*, format : GdkAtom, can_create_tags : Gboolean)
  fun gtk_text_buffer_end_user_action(buffer : GtkTextBuffer*)
  fun gtk_text_buffer_get_bounds(buffer : GtkTextBuffer*, start : GtkTextIter*, _end : GtkTextIter*)
  fun gtk_text_buffer_get_char_count(buffer : GtkTextBuffer*) : Gint
  fun gtk_text_buffer_get_copy_target_list(buffer : GtkTextBuffer*) : GtkTargetList
  fun gtk_text_buffer_get_deserialize_formats(buffer : GtkTextBuffer*, n_formats : Gint*) : GdkAtom*
  fun gtk_text_buffer_get_end_iter(buffer : GtkTextBuffer*, iter : GtkTextIter*)
  fun gtk_text_buffer_get_has_selection(buffer : GtkTextBuffer*) : Gboolean
  fun gtk_text_buffer_get_insert(buffer : GtkTextBuffer*) : GtkTextMark*
  fun gtk_text_buffer_get_iter_at_child_anchor(buffer : GtkTextBuffer*, iter : GtkTextIter*, anchor : GtkTextChildAnchor*)
  fun gtk_text_buffer_get_iter_at_line(buffer : GtkTextBuffer*, iter : GtkTextIter*, line_number : Gint)
  fun gtk_text_buffer_get_iter_at_line_index(buffer : GtkTextBuffer*, iter : GtkTextIter*, line_number : Gint, byte_index : Gint)
  fun gtk_text_buffer_get_iter_at_line_offset(buffer : GtkTextBuffer*, iter : GtkTextIter*, line_number : Gint, char_offset : Gint)
  fun gtk_text_buffer_get_iter_at_mark(buffer : GtkTextBuffer*, iter : GtkTextIter*, mark : GtkTextMark*)
  fun gtk_text_buffer_get_iter_at_offset(buffer : GtkTextBuffer*, iter : GtkTextIter*, char_offset : Gint)
  fun gtk_text_buffer_get_line_count(buffer : GtkTextBuffer*) : Gint
  fun gtk_text_buffer_get_mark(buffer : GtkTextBuffer*, name : Gchar*) : GtkTextMark*
  fun gtk_text_buffer_get_modified(buffer : GtkTextBuffer*) : Gboolean
  fun gtk_text_buffer_get_paste_target_list(buffer : GtkTextBuffer*) : GtkTargetList
  fun gtk_text_buffer_get_selection_bound(buffer : GtkTextBuffer*) : GtkTextMark*
  fun gtk_text_buffer_get_selection_bounds(buffer : GtkTextBuffer*, start : GtkTextIter*, _end : GtkTextIter*) : Gboolean
  fun gtk_text_buffer_get_serialize_formats(buffer : GtkTextBuffer*, n_formats : Gint*) : GdkAtom*
  fun gtk_text_buffer_get_slice(buffer : GtkTextBuffer*, start : GtkTextIter*, _end : GtkTextIter*, include_hidden_chars : Gboolean) : Gchar*
  fun gtk_text_buffer_get_start_iter(buffer : GtkTextBuffer*, iter : GtkTextIter*)
  fun gtk_text_buffer_get_tag_table(buffer : GtkTextBuffer*) : GtkTextTagTable*
  fun gtk_text_buffer_get_text(buffer : GtkTextBuffer*, start : GtkTextIter*, _end : GtkTextIter*, include_hidden_chars : Gboolean) : Gchar*
  fun gtk_text_buffer_get_type : GType
  fun gtk_text_buffer_insert(buffer : GtkTextBuffer*, iter : GtkTextIter*, text : Gchar*, len : Gint)
  fun gtk_text_buffer_insert_at_cursor(buffer : GtkTextBuffer*, text : Gchar*, len : Gint)
  fun gtk_text_buffer_insert_child_anchor(buffer : GtkTextBuffer*, iter : GtkTextIter*, anchor : GtkTextChildAnchor*)
  fun gtk_text_buffer_insert_interactive(buffer : GtkTextBuffer*, iter : GtkTextIter*, text : Gchar*, len : Gint, default_editable : Gboolean) : Gboolean
  fun gtk_text_buffer_insert_interactive_at_cursor(buffer : GtkTextBuffer*, text : Gchar*, len : Gint, default_editable : Gboolean) : Gboolean
  fun gtk_text_buffer_insert_markup(buffer : GtkTextBuffer*, iter : GtkTextIter*, markup : Gchar*, len : Gint)
  fun gtk_text_buffer_insert_pixbuf(buffer : GtkTextBuffer*, iter : GtkTextIter*, pixbuf : GdkPixbuf)
  fun gtk_text_buffer_insert_range(buffer : GtkTextBuffer*, iter : GtkTextIter*, start : GtkTextIter*, _end : GtkTextIter*)
  fun gtk_text_buffer_insert_range_interactive(buffer : GtkTextBuffer*, iter : GtkTextIter*, start : GtkTextIter*, _end : GtkTextIter*, default_editable : Gboolean) : Gboolean
  fun gtk_text_buffer_insert_with_tags(buffer : GtkTextBuffer*, iter : GtkTextIter*, text : Gchar*, len : Gint, first_tag : GtkTextTag*, ...)
  fun gtk_text_buffer_insert_with_tags_by_name(buffer : GtkTextBuffer*, iter : GtkTextIter*, text : Gchar*, len : Gint, first_tag_name : Gchar*, ...)
  fun gtk_text_buffer_move_mark(buffer : GtkTextBuffer*, mark : GtkTextMark*, where : GtkTextIter*)
  fun gtk_text_buffer_move_mark_by_name(buffer : GtkTextBuffer*, name : Gchar*, where : GtkTextIter*)
  fun gtk_text_buffer_new(table : GtkTextTagTable*) : GtkTextBuffer*
  fun gtk_text_buffer_paste_clipboard(buffer : GtkTextBuffer*, clipboard : GtkClipboard, override_location : GtkTextIter*, default_editable : Gboolean)
  fun gtk_text_buffer_place_cursor(buffer : GtkTextBuffer*, where : GtkTextIter*)
  fun gtk_text_buffer_register_deserialize_format(buffer : GtkTextBuffer*, mime_type : Gchar*, function : GtkTextBufferDeserializeFunc, user_data : Gpointer, user_data_destroy : GDestroyNotify) : GdkAtom
  fun gtk_text_buffer_register_deserialize_tagset(buffer : GtkTextBuffer*, tagset_name : Gchar*) : GdkAtom
  fun gtk_text_buffer_register_serialize_format(buffer : GtkTextBuffer*, mime_type : Gchar*, function : GtkTextBufferSerializeFunc, user_data : Gpointer, user_data_destroy : GDestroyNotify) : GdkAtom
  fun gtk_text_buffer_register_serialize_tagset(buffer : GtkTextBuffer*, tagset_name : Gchar*) : GdkAtom
  fun gtk_text_buffer_remove_all_tags(buffer : GtkTextBuffer*, start : GtkTextIter*, _end : GtkTextIter*)
  fun gtk_text_buffer_remove_selection_clipboard(buffer : GtkTextBuffer*, clipboard : GtkClipboard)
  fun gtk_text_buffer_remove_tag(buffer : GtkTextBuffer*, tag : GtkTextTag*, start : GtkTextIter*, _end : GtkTextIter*)
  fun gtk_text_buffer_remove_tag_by_name(buffer : GtkTextBuffer*, name : Gchar*, start : GtkTextIter*, _end : GtkTextIter*)
  fun gtk_text_buffer_select_range(buffer : GtkTextBuffer*, ins : GtkTextIter*, bound : GtkTextIter*)
  fun gtk_text_buffer_serialize(register_buffer : GtkTextBuffer*, content_buffer : GtkTextBuffer*, format : GdkAtom, start : GtkTextIter*, _end : GtkTextIter*, length : Gsize*) : Guint8*
  fun gtk_text_buffer_set_modified(buffer : GtkTextBuffer*, setting : Gboolean)
  fun gtk_text_buffer_set_text(buffer : GtkTextBuffer*, text : Gchar*, len : Gint)
  fun gtk_text_buffer_target_info_get_type : GType
  fun gtk_text_buffer_unregister_deserialize_format(buffer : GtkTextBuffer*, format : GdkAtom)
  fun gtk_text_buffer_unregister_serialize_format(buffer : GtkTextBuffer*, format : GdkAtom)
  fun gtk_text_child_anchor_get_deleted(anchor : GtkTextChildAnchor*) : Gboolean
  fun gtk_text_child_anchor_get_type : GType
  fun gtk_text_child_anchor_get_widgets(anchor : GtkTextChildAnchor*) : GList*
  fun gtk_text_child_anchor_new : GtkTextChildAnchor*
  fun gtk_text_direction_get_type : GType
  fun gtk_text_extend_selection_get_type : GType
  fun gtk_text_iter_assign(iter : GtkTextIter*, other : GtkTextIter*)
  fun gtk_text_iter_backward_char(iter : GtkTextIter*) : Gboolean
  fun gtk_text_iter_backward_chars(iter : GtkTextIter*, count : Gint) : Gboolean
  fun gtk_text_iter_backward_cursor_position(iter : GtkTextIter*) : Gboolean
  fun gtk_text_iter_backward_cursor_positions(iter : GtkTextIter*, count : Gint) : Gboolean
  fun gtk_text_iter_backward_find_char(iter : GtkTextIter*, pred : GtkTextCharPredicate, user_data : Gpointer, limit : GtkTextIter*) : Gboolean
  fun gtk_text_iter_backward_line(iter : GtkTextIter*) : Gboolean
  fun gtk_text_iter_backward_lines(iter : GtkTextIter*, count : Gint) : Gboolean
  fun gtk_text_iter_backward_search(iter : GtkTextIter*, str : Gchar*, flags : GtkTextSearchFlags, match_start : GtkTextIter*, match_end : GtkTextIter*, limit : GtkTextIter*) : Gboolean
  fun gtk_text_iter_backward_sentence_start(iter : GtkTextIter*) : Gboolean
  fun gtk_text_iter_backward_sentence_starts(iter : GtkTextIter*, count : Gint) : Gboolean
  fun gtk_text_iter_backward_to_tag_toggle(iter : GtkTextIter*, tag : GtkTextTag*) : Gboolean
  fun gtk_text_iter_backward_visible_cursor_position(iter : GtkTextIter*) : Gboolean
  fun gtk_text_iter_backward_visible_cursor_positions(iter : GtkTextIter*, count : Gint) : Gboolean
  fun gtk_text_iter_backward_visible_line(iter : GtkTextIter*) : Gboolean
  fun gtk_text_iter_backward_visible_lines(iter : GtkTextIter*, count : Gint) : Gboolean
  fun gtk_text_iter_backward_visible_word_start(iter : GtkTextIter*) : Gboolean
  fun gtk_text_iter_backward_visible_word_starts(iter : GtkTextIter*, count : Gint) : Gboolean
  fun gtk_text_iter_backward_word_start(iter : GtkTextIter*) : Gboolean
  fun gtk_text_iter_backward_word_starts(iter : GtkTextIter*, count : Gint) : Gboolean
  fun gtk_text_iter_begins_tag(iter : GtkTextIter*, tag : GtkTextTag*) : Gboolean
  fun gtk_text_iter_can_insert(iter : GtkTextIter*, default_editability : Gboolean) : Gboolean
  fun gtk_text_iter_compare(lhs : GtkTextIter*, rhs : GtkTextIter*) : Gint
  fun gtk_text_iter_copy(iter : GtkTextIter*) : GtkTextIter*
  fun gtk_text_iter_editable(iter : GtkTextIter*, default_setting : Gboolean) : Gboolean
  fun gtk_text_iter_ends_line(iter : GtkTextIter*) : Gboolean
  fun gtk_text_iter_ends_sentence(iter : GtkTextIter*) : Gboolean
  fun gtk_text_iter_ends_tag(iter : GtkTextIter*, tag : GtkTextTag*) : Gboolean
  fun gtk_text_iter_ends_word(iter : GtkTextIter*) : Gboolean
  fun gtk_text_iter_equal(lhs : GtkTextIter*, rhs : GtkTextIter*) : Gboolean
  fun gtk_text_iter_forward_char(iter : GtkTextIter*) : Gboolean
  fun gtk_text_iter_forward_chars(iter : GtkTextIter*, count : Gint) : Gboolean
  fun gtk_text_iter_forward_cursor_position(iter : GtkTextIter*) : Gboolean
  fun gtk_text_iter_forward_cursor_positions(iter : GtkTextIter*, count : Gint) : Gboolean
  fun gtk_text_iter_forward_find_char(iter : GtkTextIter*, pred : GtkTextCharPredicate, user_data : Gpointer, limit : GtkTextIter*) : Gboolean
  fun gtk_text_iter_forward_line(iter : GtkTextIter*) : Gboolean
  fun gtk_text_iter_forward_lines(iter : GtkTextIter*, count : Gint) : Gboolean
  fun gtk_text_iter_forward_search(iter : GtkTextIter*, str : Gchar*, flags : GtkTextSearchFlags, match_start : GtkTextIter*, match_end : GtkTextIter*, limit : GtkTextIter*) : Gboolean
  fun gtk_text_iter_forward_sentence_end(iter : GtkTextIter*) : Gboolean
  fun gtk_text_iter_forward_sentence_ends(iter : GtkTextIter*, count : Gint) : Gboolean
  fun gtk_text_iter_forward_to_end(iter : GtkTextIter*)
  fun gtk_text_iter_forward_to_line_end(iter : GtkTextIter*) : Gboolean
  fun gtk_text_iter_forward_to_tag_toggle(iter : GtkTextIter*, tag : GtkTextTag*) : Gboolean
  fun gtk_text_iter_forward_visible_cursor_position(iter : GtkTextIter*) : Gboolean
  fun gtk_text_iter_forward_visible_cursor_positions(iter : GtkTextIter*, count : Gint) : Gboolean
  fun gtk_text_iter_forward_visible_line(iter : GtkTextIter*) : Gboolean
  fun gtk_text_iter_forward_visible_lines(iter : GtkTextIter*, count : Gint) : Gboolean
  fun gtk_text_iter_forward_visible_word_end(iter : GtkTextIter*) : Gboolean
  fun gtk_text_iter_forward_visible_word_ends(iter : GtkTextIter*, count : Gint) : Gboolean
  fun gtk_text_iter_forward_word_end(iter : GtkTextIter*) : Gboolean
  fun gtk_text_iter_forward_word_ends(iter : GtkTextIter*, count : Gint) : Gboolean
  fun gtk_text_iter_free(iter : GtkTextIter*)
  fun gtk_text_iter_get_attributes(iter : GtkTextIter*, values : GtkTextAttributes*) : Gboolean
  fun gtk_text_iter_get_buffer(iter : GtkTextIter*) : GtkTextBuffer*
  fun gtk_text_iter_get_bytes_in_line(iter : GtkTextIter*) : Gint
  fun gtk_text_iter_get_char(iter : GtkTextIter*) : Gunichar
  fun gtk_text_iter_get_chars_in_line(iter : GtkTextIter*) : Gint
  fun gtk_text_iter_get_child_anchor(iter : GtkTextIter*) : GtkTextChildAnchor*
  fun gtk_text_iter_get_language(iter : GtkTextIter*) : PangoLanguage
  fun gtk_text_iter_get_line(iter : GtkTextIter*) : Gint
  fun gtk_text_iter_get_line_index(iter : GtkTextIter*) : Gint
  fun gtk_text_iter_get_line_offset(iter : GtkTextIter*) : Gint
  fun gtk_text_iter_get_marks(iter : GtkTextIter*) : GsList*
  fun gtk_text_iter_get_offset(iter : GtkTextIter*) : Gint
  fun gtk_text_iter_get_pixbuf(iter : GtkTextIter*) : GdkPixbuf
  fun gtk_text_iter_get_slice(start : GtkTextIter*, _end : GtkTextIter*) : Gchar*
  fun gtk_text_iter_get_tags(iter : GtkTextIter*) : GsList*
  fun gtk_text_iter_get_text(start : GtkTextIter*, _end : GtkTextIter*) : Gchar*
  fun gtk_text_iter_get_toggled_tags(iter : GtkTextIter*, toggled_on : Gboolean) : GsList*
  fun gtk_text_iter_get_type : GType
  fun gtk_text_iter_get_visible_line_index(iter : GtkTextIter*) : Gint
  fun gtk_text_iter_get_visible_line_offset(iter : GtkTextIter*) : Gint
  fun gtk_text_iter_get_visible_slice(start : GtkTextIter*, _end : GtkTextIter*) : Gchar*
  fun gtk_text_iter_get_visible_text(start : GtkTextIter*, _end : GtkTextIter*) : Gchar*
  fun gtk_text_iter_has_tag(iter : GtkTextIter*, tag : GtkTextTag*) : Gboolean
  fun gtk_text_iter_in_range(iter : GtkTextIter*, start : GtkTextIter*, _end : GtkTextIter*) : Gboolean
  fun gtk_text_iter_inside_sentence(iter : GtkTextIter*) : Gboolean
  fun gtk_text_iter_inside_word(iter : GtkTextIter*) : Gboolean
  fun gtk_text_iter_is_cursor_position(iter : GtkTextIter*) : Gboolean
  fun gtk_text_iter_is_end(iter : GtkTextIter*) : Gboolean
  fun gtk_text_iter_is_start(iter : GtkTextIter*) : Gboolean
  fun gtk_text_iter_order(first : GtkTextIter*, second : GtkTextIter*)
  fun gtk_text_iter_set_line(iter : GtkTextIter*, line_number : Gint)
  fun gtk_text_iter_set_line_index(iter : GtkTextIter*, byte_on_line : Gint)
  fun gtk_text_iter_set_line_offset(iter : GtkTextIter*, char_on_line : Gint)
  fun gtk_text_iter_set_offset(iter : GtkTextIter*, char_offset : Gint)
  fun gtk_text_iter_set_visible_line_index(iter : GtkTextIter*, byte_on_line : Gint)
  fun gtk_text_iter_set_visible_line_offset(iter : GtkTextIter*, char_on_line : Gint)
  fun gtk_text_iter_starts_line(iter : GtkTextIter*) : Gboolean
  fun gtk_text_iter_starts_sentence(iter : GtkTextIter*) : Gboolean
  fun gtk_text_iter_starts_word(iter : GtkTextIter*) : Gboolean
  fun gtk_text_iter_toggles_tag(iter : GtkTextIter*, tag : GtkTextTag*) : Gboolean
  fun gtk_text_mark_get_buffer(mark : GtkTextMark*) : GtkTextBuffer*
  fun gtk_text_mark_get_deleted(mark : GtkTextMark*) : Gboolean
  fun gtk_text_mark_get_left_gravity(mark : GtkTextMark*) : Gboolean
  fun gtk_text_mark_get_name(mark : GtkTextMark*) : Gchar*
  fun gtk_text_mark_get_type : GType
  fun gtk_text_mark_get_visible(mark : GtkTextMark*) : Gboolean
  fun gtk_text_mark_new(name : Gchar*, left_gravity : Gboolean) : GtkTextMark*
  fun gtk_text_mark_set_visible(mark : GtkTextMark*, setting : Gboolean)
  fun gtk_text_search_flags_get_type : GType
  fun gtk_text_tag_event(tag : GtkTextTag*, event_object : GObject*, event : GdkEvent*, iter : GtkTextIter*) : Gboolean
  fun gtk_text_tag_get_priority(tag : GtkTextTag*) : Gint
  fun gtk_text_tag_get_type : GType
  fun gtk_text_tag_new(name : Gchar*) : GtkTextTag*
  fun gtk_text_tag_set_priority(tag : GtkTextTag*, priority : Gint)
  fun gtk_text_tag_table_add(table : GtkTextTagTable*, tag : GtkTextTag*) : Gboolean
  fun gtk_text_tag_table_foreach(table : GtkTextTagTable*, func : GtkTextTagTableForeach, data : Gpointer)
  fun gtk_text_tag_table_get_size(table : GtkTextTagTable*) : Gint
  fun gtk_text_tag_table_get_type : GType
  fun gtk_text_tag_table_lookup(table : GtkTextTagTable*, name : Gchar*) : GtkTextTag*
  fun gtk_text_tag_table_new : GtkTextTagTable*
  fun gtk_text_tag_table_remove(table : GtkTextTagTable*, tag : GtkTextTag*)
  fun gtk_text_view_add_child_at_anchor(text_view : GtkTextView*, child : GtkWidget*, anchor : GtkTextChildAnchor*)
  fun gtk_text_view_add_child_in_window(text_view : GtkTextView*, child : GtkWidget*, which_window : GtkTextWindowType, xpos : Gint, ypos : Gint)
  fun gtk_text_view_backward_display_line(text_view : GtkTextView*, iter : GtkTextIter*) : Gboolean
  fun gtk_text_view_backward_display_line_start(text_view : GtkTextView*, iter : GtkTextIter*) : Gboolean
  fun gtk_text_view_buffer_to_window_coords(text_view : GtkTextView*, win : GtkTextWindowType, buffer_x : Gint, buffer_y : Gint, window_x : Gint*, window_y : Gint*)
  fun gtk_text_view_forward_display_line(text_view : GtkTextView*, iter : GtkTextIter*) : Gboolean
  fun gtk_text_view_forward_display_line_end(text_view : GtkTextView*, iter : GtkTextIter*) : Gboolean
  fun gtk_text_view_get_accepts_tab(text_view : GtkTextView*) : Gboolean
  fun gtk_text_view_get_border_window_size(text_view : GtkTextView*, type : GtkTextWindowType) : Gint
  fun gtk_text_view_get_bottom_margin(text_view : GtkTextView*) : Gint
  fun gtk_text_view_get_buffer(text_view : GtkTextView*) : GtkTextBuffer*
  fun gtk_text_view_get_cursor_locations(text_view : GtkTextView*, iter : GtkTextIter*, strong : GdkRectangle*, weak : GdkRectangle*)
  fun gtk_text_view_get_cursor_visible(text_view : GtkTextView*) : Gboolean
  fun gtk_text_view_get_default_attributes(text_view : GtkTextView*) : GtkTextAttributes*
  fun gtk_text_view_get_editable(text_view : GtkTextView*) : Gboolean
  fun gtk_text_view_get_hadjustment(text_view : GtkTextView*) : GtkAdjustment*
  fun gtk_text_view_get_indent(text_view : GtkTextView*) : Gint
  fun gtk_text_view_get_input_hints(text_view : GtkTextView*) : GtkInputHints
  fun gtk_text_view_get_input_purpose(text_view : GtkTextView*) : GtkInputPurpose
  fun gtk_text_view_get_iter_at_location(text_view : GtkTextView*, iter : GtkTextIter*, x : Gint, y : Gint)
  fun gtk_text_view_get_iter_at_position(text_view : GtkTextView*, iter : GtkTextIter*, trailing : Gint*, x : Gint, y : Gint)
  fun gtk_text_view_get_iter_location(text_view : GtkTextView*, iter : GtkTextIter*, location : GdkRectangle*)
  fun gtk_text_view_get_justification(text_view : GtkTextView*) : GtkJustification
  fun gtk_text_view_get_left_margin(text_view : GtkTextView*) : Gint
  fun gtk_text_view_get_line_at_y(text_view : GtkTextView*, target_iter : GtkTextIter*, y : Gint, line_top : Gint*)
  fun gtk_text_view_get_line_yrange(text_view : GtkTextView*, iter : GtkTextIter*, y : Gint*, height : Gint*)
  fun gtk_text_view_get_monospace(text_view : GtkTextView*) : Gboolean
  fun gtk_text_view_get_overwrite(text_view : GtkTextView*) : Gboolean
  fun gtk_text_view_get_pixels_above_lines(text_view : GtkTextView*) : Gint
  fun gtk_text_view_get_pixels_below_lines(text_view : GtkTextView*) : Gint
  fun gtk_text_view_get_pixels_inside_wrap(text_view : GtkTextView*) : Gint
  fun gtk_text_view_get_right_margin(text_view : GtkTextView*) : Gint
  fun gtk_text_view_get_tabs(text_view : GtkTextView*) : PangoTabArray
  fun gtk_text_view_get_top_margin(text_view : GtkTextView*) : Gint
  fun gtk_text_view_get_type : GType
  fun gtk_text_view_get_vadjustment(text_view : GtkTextView*) : GtkAdjustment*
  fun gtk_text_view_get_visible_rect(text_view : GtkTextView*, visible_rect : GdkRectangle*)
  fun gtk_text_view_get_window(text_view : GtkTextView*, win : GtkTextWindowType) : GdkWindow
  fun gtk_text_view_get_window_type(text_view : GtkTextView*, window : GdkWindow) : GtkTextWindowType
  fun gtk_text_view_get_wrap_mode(text_view : GtkTextView*) : GtkWrapMode
  fun gtk_text_view_im_context_filter_keypress(text_view : GtkTextView*, event : GdkEventKey*) : Gboolean
  fun gtk_text_view_layer_get_type : GType
  fun gtk_text_view_move_child(text_view : GtkTextView*, child : GtkWidget*, xpos : Gint, ypos : Gint)
  fun gtk_text_view_move_mark_onscreen(text_view : GtkTextView*, mark : GtkTextMark*) : Gboolean
  fun gtk_text_view_move_visually(text_view : GtkTextView*, iter : GtkTextIter*, count : Gint) : Gboolean
  fun gtk_text_view_new : GtkWidget*
  fun gtk_text_view_new_with_buffer(buffer : GtkTextBuffer*) : GtkWidget*
  fun gtk_text_view_place_cursor_onscreen(text_view : GtkTextView*) : Gboolean
  fun gtk_text_view_reset_im_context(text_view : GtkTextView*)
  fun gtk_text_view_scroll_mark_onscreen(text_view : GtkTextView*, mark : GtkTextMark*)
  fun gtk_text_view_scroll_to_iter(text_view : GtkTextView*, iter : GtkTextIter*, within_margin : Gdouble, use_align : Gboolean, xalign : Gdouble, yalign : Gdouble) : Gboolean
  fun gtk_text_view_scroll_to_mark(text_view : GtkTextView*, mark : GtkTextMark*, within_margin : Gdouble, use_align : Gboolean, xalign : Gdouble, yalign : Gdouble)
  fun gtk_text_view_set_accepts_tab(text_view : GtkTextView*, accepts_tab : Gboolean)
  fun gtk_text_view_set_border_window_size(text_view : GtkTextView*, type : GtkTextWindowType, size : Gint)
  fun gtk_text_view_set_bottom_margin(text_view : GtkTextView*, bottom_margin : Gint)
  fun gtk_text_view_set_buffer(text_view : GtkTextView*, buffer : GtkTextBuffer*)
  fun gtk_text_view_set_cursor_visible(text_view : GtkTextView*, setting : Gboolean)
  fun gtk_text_view_set_editable(text_view : GtkTextView*, setting : Gboolean)
  fun gtk_text_view_set_indent(text_view : GtkTextView*, indent : Gint)
  fun gtk_text_view_set_input_hints(text_view : GtkTextView*, hints : GtkInputHints)
  fun gtk_text_view_set_input_purpose(text_view : GtkTextView*, purpose : GtkInputPurpose)
  fun gtk_text_view_set_justification(text_view : GtkTextView*, justification : GtkJustification)
  fun gtk_text_view_set_left_margin(text_view : GtkTextView*, left_margin : Gint)
  fun gtk_text_view_set_monospace(text_view : GtkTextView*, monospace : Gboolean)
  fun gtk_text_view_set_overwrite(text_view : GtkTextView*, overwrite : Gboolean)
  fun gtk_text_view_set_pixels_above_lines(text_view : GtkTextView*, pixels_above_lines : Gint)
  fun gtk_text_view_set_pixels_below_lines(text_view : GtkTextView*, pixels_below_lines : Gint)
  fun gtk_text_view_set_pixels_inside_wrap(text_view : GtkTextView*, pixels_inside_wrap : Gint)
  fun gtk_text_view_set_right_margin(text_view : GtkTextView*, right_margin : Gint)
  fun gtk_text_view_set_tabs(text_view : GtkTextView*, tabs : PangoTabArray)
  fun gtk_text_view_set_top_margin(text_view : GtkTextView*, top_margin : Gint)
  fun gtk_text_view_set_wrap_mode(text_view : GtkTextView*, wrap_mode : GtkWrapMode)
  fun gtk_text_view_starts_display_line(text_view : GtkTextView*, iter : GtkTextIter*) : Gboolean
  fun gtk_text_view_window_to_buffer_coords(text_view : GtkTextView*, win : GtkTextWindowType, window_x : Gint, window_y : Gint, buffer_x : Gint*, buffer_y : Gint*)
  fun gtk_text_window_type_get_type : GType
  fun gtk_theming_engine_get(engine : GtkThemingEngine*, state : GtkStateFlags, ...)
  fun gtk_theming_engine_get_background_color(engine : GtkThemingEngine*, state : GtkStateFlags, color : GdkRgba*)
  fun gtk_theming_engine_get_border(engine : GtkThemingEngine*, state : GtkStateFlags, border : GtkBorder*)
  fun gtk_theming_engine_get_border_color(engine : GtkThemingEngine*, state : GtkStateFlags, color : GdkRgba*)
  fun gtk_theming_engine_get_color(engine : GtkThemingEngine*, state : GtkStateFlags, color : GdkRgba*)
  fun gtk_theming_engine_get_direction(engine : GtkThemingEngine*) : GtkTextDirection
  fun gtk_theming_engine_get_font(engine : GtkThemingEngine*, state : GtkStateFlags) : PangoFontDescription
  fun gtk_theming_engine_get_junction_sides(engine : GtkThemingEngine*) : GtkJunctionSides
  fun gtk_theming_engine_get_margin(engine : GtkThemingEngine*, state : GtkStateFlags, margin : GtkBorder*)
  fun gtk_theming_engine_get_padding(engine : GtkThemingEngine*, state : GtkStateFlags, padding : GtkBorder*)
  fun gtk_theming_engine_get_path(engine : GtkThemingEngine*) : GtkWidgetPath
  fun gtk_theming_engine_get_property(engine : GtkThemingEngine*, property : Gchar*, state : GtkStateFlags, value : GValue*)
  fun gtk_theming_engine_get_screen(engine : GtkThemingEngine*) : GdkScreen
  fun gtk_theming_engine_get_state(engine : GtkThemingEngine*) : GtkStateFlags
  fun gtk_theming_engine_get_style(engine : GtkThemingEngine*, ...)
  fun gtk_theming_engine_get_style_property(engine : GtkThemingEngine*, property_name : Gchar*, value : GValue*)
  fun gtk_theming_engine_get_style_valist(engine : GtkThemingEngine*, args : VaList)
  fun gtk_theming_engine_get_type : GType
  fun gtk_theming_engine_get_valist(engine : GtkThemingEngine*, state : GtkStateFlags, args : VaList)
  fun gtk_theming_engine_has_class(engine : GtkThemingEngine*, style_class : Gchar*) : Gboolean
  fun gtk_theming_engine_has_region(engine : GtkThemingEngine*, style_region : Gchar*, flags : GtkRegionFlags*) : Gboolean
  fun gtk_theming_engine_load(name : Gchar*) : GtkThemingEngine*
  fun gtk_theming_engine_lookup_color(engine : GtkThemingEngine*, color_name : Gchar*, color : GdkRgba*) : Gboolean
  fun gtk_theming_engine_register_property(name_space : Gchar*, parse_func : GtkStylePropertyParser, pspec : GParamSpec*)
  fun gtk_theming_engine_state_is_running(engine : GtkThemingEngine*, state : GtkStateType, progress : Gdouble*) : Gboolean
  fun gtk_toggle_action_get_active(action : GtkToggleAction*) : Gboolean
  fun gtk_toggle_action_get_draw_as_radio(action : GtkToggleAction*) : Gboolean
  fun gtk_toggle_action_get_type : GType
  fun gtk_toggle_action_new(name : Gchar*, label : Gchar*, tooltip : Gchar*, stock_id : Gchar*) : GtkToggleAction*
  fun gtk_toggle_action_set_active(action : GtkToggleAction*, is_active : Gboolean)
  fun gtk_toggle_action_set_draw_as_radio(action : GtkToggleAction*, draw_as_radio : Gboolean)
  fun gtk_toggle_action_toggled(action : GtkToggleAction*)
  fun gtk_toggle_button_get_active(toggle_button : GtkToggleButton*) : Gboolean
  fun gtk_toggle_button_get_inconsistent(toggle_button : GtkToggleButton*) : Gboolean
  fun gtk_toggle_button_get_mode(toggle_button : GtkToggleButton*) : Gboolean
  fun gtk_toggle_button_get_type : GType
  fun gtk_toggle_button_new : GtkWidget*
  fun gtk_toggle_button_new_with_label(label : Gchar*) : GtkWidget*
  fun gtk_toggle_button_new_with_mnemonic(label : Gchar*) : GtkWidget*
  fun gtk_toggle_button_set_active(toggle_button : GtkToggleButton*, is_active : Gboolean)
  fun gtk_toggle_button_set_inconsistent(toggle_button : GtkToggleButton*, setting : Gboolean)
  fun gtk_toggle_button_set_mode(toggle_button : GtkToggleButton*, draw_indicator : Gboolean)
  fun gtk_toggle_button_toggled(toggle_button : GtkToggleButton*)
  fun gtk_toggle_tool_button_get_active(button : GtkToggleToolButton*) : Gboolean
  fun gtk_toggle_tool_button_get_type : GType
  fun gtk_toggle_tool_button_new : GtkToolItem*
  fun gtk_toggle_tool_button_new_from_stock(stock_id : Gchar*) : GtkToolItem*
  fun gtk_toggle_tool_button_set_active(button : GtkToggleToolButton*, is_active : Gboolean)
  fun gtk_tool_button_get_icon_name(button : GtkToolButton*) : Gchar*
  fun gtk_tool_button_get_icon_widget(button : GtkToolButton*) : GtkWidget*
  fun gtk_tool_button_get_label(button : GtkToolButton*) : Gchar*
  fun gtk_tool_button_get_label_widget(button : GtkToolButton*) : GtkWidget*
  fun gtk_tool_button_get_stock_id(button : GtkToolButton*) : Gchar*
  fun gtk_tool_button_get_type : GType
  fun gtk_tool_button_get_use_underline(button : GtkToolButton*) : Gboolean
  fun gtk_tool_button_new(icon_widget : GtkWidget*, label : Gchar*) : GtkToolItem*
  fun gtk_tool_button_new_from_stock(stock_id : Gchar*) : GtkToolItem*
  fun gtk_tool_button_set_icon_name(button : GtkToolButton*, icon_name : Gchar*)
  fun gtk_tool_button_set_icon_widget(button : GtkToolButton*, icon_widget : GtkWidget*)
  fun gtk_tool_button_set_label(button : GtkToolButton*, label : Gchar*)
  fun gtk_tool_button_set_label_widget(button : GtkToolButton*, label_widget : GtkWidget*)
  fun gtk_tool_button_set_stock_id(button : GtkToolButton*, stock_id : Gchar*)
  fun gtk_tool_button_set_use_underline(button : GtkToolButton*, use_underline : Gboolean)
  fun gtk_tool_item_get_ellipsize_mode(tool_item : GtkToolItem*) : PangoEllipsizeMode
  fun gtk_tool_item_get_expand(tool_item : GtkToolItem*) : Gboolean
  fun gtk_tool_item_get_homogeneous(tool_item : GtkToolItem*) : Gboolean
  fun gtk_tool_item_get_icon_size(tool_item : GtkToolItem*) : GtkIconSize
  fun gtk_tool_item_get_is_important(tool_item : GtkToolItem*) : Gboolean
  fun gtk_tool_item_get_orientation(tool_item : GtkToolItem*) : GtkOrientation
  fun gtk_tool_item_get_proxy_menu_item(tool_item : GtkToolItem*, menu_item_id : Gchar*) : GtkWidget*
  fun gtk_tool_item_get_relief_style(tool_item : GtkToolItem*) : GtkReliefStyle
  fun gtk_tool_item_get_text_alignment(tool_item : GtkToolItem*) : Gfloat
  fun gtk_tool_item_get_text_orientation(tool_item : GtkToolItem*) : GtkOrientation
  fun gtk_tool_item_get_text_size_group(tool_item : GtkToolItem*) : GtkSizeGroup*
  fun gtk_tool_item_get_toolbar_style(tool_item : GtkToolItem*) : GtkToolbarStyle
  fun gtk_tool_item_get_type : GType
  fun gtk_tool_item_get_use_drag_window(tool_item : GtkToolItem*) : Gboolean
  fun gtk_tool_item_get_visible_horizontal(tool_item : GtkToolItem*) : Gboolean
  fun gtk_tool_item_get_visible_vertical(tool_item : GtkToolItem*) : Gboolean
  fun gtk_tool_item_group_get_collapsed(group : GtkToolItemGroup*) : Gboolean
  fun gtk_tool_item_group_get_drop_item(group : GtkToolItemGroup*, x : Gint, y : Gint) : GtkToolItem*
  fun gtk_tool_item_group_get_ellipsize(group : GtkToolItemGroup*) : PangoEllipsizeMode
  fun gtk_tool_item_group_get_header_relief(group : GtkToolItemGroup*) : GtkReliefStyle
  fun gtk_tool_item_group_get_item_position(group : GtkToolItemGroup*, item : GtkToolItem*) : Gint
  fun gtk_tool_item_group_get_label(group : GtkToolItemGroup*) : Gchar*
  fun gtk_tool_item_group_get_label_widget(group : GtkToolItemGroup*) : GtkWidget*
  fun gtk_tool_item_group_get_n_items(group : GtkToolItemGroup*) : Guint
  fun gtk_tool_item_group_get_nth_item(group : GtkToolItemGroup*, index : Guint) : GtkToolItem*
  fun gtk_tool_item_group_get_type : GType
  fun gtk_tool_item_group_insert(group : GtkToolItemGroup*, item : GtkToolItem*, position : Gint)
  fun gtk_tool_item_group_new(label : Gchar*) : GtkWidget*
  fun gtk_tool_item_group_set_collapsed(group : GtkToolItemGroup*, collapsed : Gboolean)
  fun gtk_tool_item_group_set_ellipsize(group : GtkToolItemGroup*, ellipsize : PangoEllipsizeMode)
  fun gtk_tool_item_group_set_header_relief(group : GtkToolItemGroup*, style : GtkReliefStyle)
  fun gtk_tool_item_group_set_item_position(group : GtkToolItemGroup*, item : GtkToolItem*, position : Gint)
  fun gtk_tool_item_group_set_label(group : GtkToolItemGroup*, label : Gchar*)
  fun gtk_tool_item_group_set_label_widget(group : GtkToolItemGroup*, label_widget : GtkWidget*)
  fun gtk_tool_item_new : GtkToolItem*
  fun gtk_tool_item_rebuild_menu(tool_item : GtkToolItem*)
  fun gtk_tool_item_retrieve_proxy_menu_item(tool_item : GtkToolItem*) : GtkWidget*
  fun gtk_tool_item_set_expand(tool_item : GtkToolItem*, expand : Gboolean)
  fun gtk_tool_item_set_homogeneous(tool_item : GtkToolItem*, homogeneous : Gboolean)
  fun gtk_tool_item_set_is_important(tool_item : GtkToolItem*, is_important : Gboolean)
  fun gtk_tool_item_set_proxy_menu_item(tool_item : GtkToolItem*, menu_item_id : Gchar*, menu_item : GtkWidget*)
  fun gtk_tool_item_set_tooltip_markup(tool_item : GtkToolItem*, markup : Gchar*)
  fun gtk_tool_item_set_tooltip_text(tool_item : GtkToolItem*, text : Gchar*)
  fun gtk_tool_item_set_use_drag_window(tool_item : GtkToolItem*, use_drag_window : Gboolean)
  fun gtk_tool_item_set_visible_horizontal(tool_item : GtkToolItem*, visible_horizontal : Gboolean)
  fun gtk_tool_item_set_visible_vertical(tool_item : GtkToolItem*, visible_vertical : Gboolean)
  fun gtk_tool_item_toolbar_reconfigured(tool_item : GtkToolItem*)
  fun gtk_tool_palette_add_drag_dest(palette : GtkToolPalette*, widget : GtkWidget*, flags : GtkDestDefaults, targets : GtkToolPaletteDragTargets, actions : GdkDragAction)
  fun gtk_tool_palette_drag_targets_get_type : GType
  fun gtk_tool_palette_get_drag_item(palette : GtkToolPalette*, selection : GtkSelectionData) : GtkWidget*
  fun gtk_tool_palette_get_drag_target_group : GtkTargetEntry*
  fun gtk_tool_palette_get_drag_target_item : GtkTargetEntry*
  fun gtk_tool_palette_get_drop_group(palette : GtkToolPalette*, x : Gint, y : Gint) : GtkToolItemGroup*
  fun gtk_tool_palette_get_drop_item(palette : GtkToolPalette*, x : Gint, y : Gint) : GtkToolItem*
  fun gtk_tool_palette_get_exclusive(palette : GtkToolPalette*, group : GtkToolItemGroup*) : Gboolean
  fun gtk_tool_palette_get_expand(palette : GtkToolPalette*, group : GtkToolItemGroup*) : Gboolean
  fun gtk_tool_palette_get_group_position(palette : GtkToolPalette*, group : GtkToolItemGroup*) : Gint
  fun gtk_tool_palette_get_hadjustment(palette : GtkToolPalette*) : GtkAdjustment*
  fun gtk_tool_palette_get_icon_size(palette : GtkToolPalette*) : GtkIconSize
  fun gtk_tool_palette_get_style(palette : GtkToolPalette*) : GtkToolbarStyle
  fun gtk_tool_palette_get_type : GType
  fun gtk_tool_palette_get_vadjustment(palette : GtkToolPalette*) : GtkAdjustment*
  fun gtk_tool_palette_new : GtkWidget*
  fun gtk_tool_palette_set_drag_source(palette : GtkToolPalette*, targets : GtkToolPaletteDragTargets)
  fun gtk_tool_palette_set_exclusive(palette : GtkToolPalette*, group : GtkToolItemGroup*, exclusive : Gboolean)
  fun gtk_tool_palette_set_expand(palette : GtkToolPalette*, group : GtkToolItemGroup*, expand : Gboolean)
  fun gtk_tool_palette_set_group_position(palette : GtkToolPalette*, group : GtkToolItemGroup*, position : Gint)
  fun gtk_tool_palette_set_icon_size(palette : GtkToolPalette*, icon_size : GtkIconSize)
  fun gtk_tool_palette_set_style(palette : GtkToolPalette*, style : GtkToolbarStyle)
  fun gtk_tool_palette_unset_icon_size(palette : GtkToolPalette*)
  fun gtk_tool_palette_unset_style(palette : GtkToolPalette*)
  fun gtk_tool_shell_get_ellipsize_mode(shell : GtkToolShell) : PangoEllipsizeMode
  fun gtk_tool_shell_get_icon_size(shell : GtkToolShell) : GtkIconSize
  fun gtk_tool_shell_get_orientation(shell : GtkToolShell) : GtkOrientation
  fun gtk_tool_shell_get_relief_style(shell : GtkToolShell) : GtkReliefStyle
  fun gtk_tool_shell_get_style(shell : GtkToolShell) : GtkToolbarStyle
  fun gtk_tool_shell_get_text_alignment(shell : GtkToolShell) : Gfloat
  fun gtk_tool_shell_get_text_orientation(shell : GtkToolShell) : GtkOrientation
  fun gtk_tool_shell_get_text_size_group(shell : GtkToolShell) : GtkSizeGroup*
  fun gtk_tool_shell_get_type : GType
  fun gtk_tool_shell_rebuild_menu(shell : GtkToolShell)
  fun gtk_toolbar_get_drop_index(toolbar : GtkToolbar*, x : Gint, y : Gint) : Gint
  fun gtk_toolbar_get_icon_size(toolbar : GtkToolbar*) : GtkIconSize
  fun gtk_toolbar_get_item_index(toolbar : GtkToolbar*, item : GtkToolItem*) : Gint
  fun gtk_toolbar_get_n_items(toolbar : GtkToolbar*) : Gint
  fun gtk_toolbar_get_nth_item(toolbar : GtkToolbar*, n : Gint) : GtkToolItem*
  fun gtk_toolbar_get_relief_style(toolbar : GtkToolbar*) : GtkReliefStyle
  fun gtk_toolbar_get_show_arrow(toolbar : GtkToolbar*) : Gboolean
  fun gtk_toolbar_get_style(toolbar : GtkToolbar*) : GtkToolbarStyle
  fun gtk_toolbar_get_type : GType
  fun gtk_toolbar_insert(toolbar : GtkToolbar*, item : GtkToolItem*, pos : Gint)
  fun gtk_toolbar_new : GtkWidget*
  fun gtk_toolbar_set_drop_highlight_item(toolbar : GtkToolbar*, tool_item : GtkToolItem*, index_ : Gint)
  fun gtk_toolbar_set_icon_size(toolbar : GtkToolbar*, icon_size : GtkIconSize)
  fun gtk_toolbar_set_show_arrow(toolbar : GtkToolbar*, show_arrow : Gboolean)
  fun gtk_toolbar_set_style(toolbar : GtkToolbar*, style : GtkToolbarStyle)
  fun gtk_toolbar_space_style_get_type : GType
  fun gtk_toolbar_style_get_type : GType
  fun gtk_toolbar_unset_icon_size(toolbar : GtkToolbar*)
  fun gtk_toolbar_unset_style(toolbar : GtkToolbar*)
  fun gtk_tooltip_get_type : GType
  fun gtk_tooltip_set_custom(tooltip : GtkTooltip, custom_widget : GtkWidget*)
  fun gtk_tooltip_set_icon(tooltip : GtkTooltip, pixbuf : GdkPixbuf)
  fun gtk_tooltip_set_icon_from_gicon(tooltip : GtkTooltip, gicon : GIcon, size : GtkIconSize)
  fun gtk_tooltip_set_icon_from_icon_name(tooltip : GtkTooltip, icon_name : Gchar*, size : GtkIconSize)
  fun gtk_tooltip_set_icon_from_stock(tooltip : GtkTooltip, stock_id : Gchar*, size : GtkIconSize)
  fun gtk_tooltip_set_markup(tooltip : GtkTooltip, markup : Gchar*)
  fun gtk_tooltip_set_text(tooltip : GtkTooltip, text : Gchar*)
  fun gtk_tooltip_set_tip_area(tooltip : GtkTooltip, rect : GdkRectangle*)
  fun gtk_tooltip_trigger_tooltip_query(display : GdkDisplay)
  fun gtk_tree_drag_dest_drag_data_received(drag_dest : GtkTreeDragDest, dest : GtkTreePath, selection_data : GtkSelectionData) : Gboolean
  fun gtk_tree_drag_dest_get_type : GType
  fun gtk_tree_drag_dest_row_drop_possible(drag_dest : GtkTreeDragDest, dest_path : GtkTreePath, selection_data : GtkSelectionData) : Gboolean
  fun gtk_tree_drag_source_drag_data_delete(drag_source : GtkTreeDragSource, path : GtkTreePath) : Gboolean
  fun gtk_tree_drag_source_drag_data_get(drag_source : GtkTreeDragSource, path : GtkTreePath, selection_data : GtkSelectionData) : Gboolean
  fun gtk_tree_drag_source_get_type : GType
  fun gtk_tree_drag_source_row_draggable(drag_source : GtkTreeDragSource, path : GtkTreePath) : Gboolean
  fun gtk_tree_get_row_drag_data(selection_data : GtkSelectionData, tree_model : GtkTreeModel*, path : GtkTreePath*) : Gboolean
  fun gtk_tree_iter_copy(iter : GtkTreeIter*) : GtkTreeIter*
  fun gtk_tree_iter_free(iter : GtkTreeIter*)
  fun gtk_tree_iter_get_type : GType
  fun gtk_tree_model_filter_clear_cache(filter : GtkTreeModelFilter*)
  fun gtk_tree_model_filter_convert_child_iter_to_iter(filter : GtkTreeModelFilter*, filter_iter : GtkTreeIter*, child_iter : GtkTreeIter*) : Gboolean
  fun gtk_tree_model_filter_convert_child_path_to_path(filter : GtkTreeModelFilter*, child_path : GtkTreePath) : GtkTreePath
  fun gtk_tree_model_filter_convert_iter_to_child_iter(filter : GtkTreeModelFilter*, child_iter : GtkTreeIter*, filter_iter : GtkTreeIter*)
  fun gtk_tree_model_filter_convert_path_to_child_path(filter : GtkTreeModelFilter*, filter_path : GtkTreePath) : GtkTreePath
  fun gtk_tree_model_filter_get_model(filter : GtkTreeModelFilter*) : GtkTreeModel
  fun gtk_tree_model_filter_get_type : GType
  fun gtk_tree_model_filter_new(child_model : GtkTreeModel, root : GtkTreePath) : GtkTreeModel
  fun gtk_tree_model_filter_refilter(filter : GtkTreeModelFilter*)
  fun gtk_tree_model_filter_set_modify_func(filter : GtkTreeModelFilter*, n_columns : Gint, types : GType*, func : GtkTreeModelFilterModifyFunc, data : Gpointer, destroy : GDestroyNotify)
  fun gtk_tree_model_filter_set_visible_column(filter : GtkTreeModelFilter*, column : Gint)
  fun gtk_tree_model_filter_set_visible_func(filter : GtkTreeModelFilter*, func : GtkTreeModelFilterVisibleFunc, data : Gpointer, destroy : GDestroyNotify)
  fun gtk_tree_model_flags_get_type : GType
  fun gtk_tree_model_foreach(model : GtkTreeModel, func : GtkTreeModelForeachFunc, user_data : Gpointer)
  fun gtk_tree_model_get(tree_model : GtkTreeModel, iter : GtkTreeIter*, ...)
  fun gtk_tree_model_get_column_type(tree_model : GtkTreeModel, index_ : Gint) : GType
  fun gtk_tree_model_get_flags(tree_model : GtkTreeModel) : GtkTreeModelFlags
  fun gtk_tree_model_get_iter(tree_model : GtkTreeModel, iter : GtkTreeIter*, path : GtkTreePath) : Gboolean
  fun gtk_tree_model_get_iter_first(tree_model : GtkTreeModel, iter : GtkTreeIter*) : Gboolean
  fun gtk_tree_model_get_iter_from_string(tree_model : GtkTreeModel, iter : GtkTreeIter*, path_string : Gchar*) : Gboolean
  fun gtk_tree_model_get_n_columns(tree_model : GtkTreeModel) : Gint
  fun gtk_tree_model_get_path(tree_model : GtkTreeModel, iter : GtkTreeIter*) : GtkTreePath
  fun gtk_tree_model_get_string_from_iter(tree_model : GtkTreeModel, iter : GtkTreeIter*) : Gchar*
  fun gtk_tree_model_get_type : GType
  fun gtk_tree_model_get_valist(tree_model : GtkTreeModel, iter : GtkTreeIter*, var_args : VaList)
  fun gtk_tree_model_get_value(tree_model : GtkTreeModel, iter : GtkTreeIter*, column : Gint, value : GValue*)
  fun gtk_tree_model_iter_children(tree_model : GtkTreeModel, iter : GtkTreeIter*, parent : GtkTreeIter*) : Gboolean
  fun gtk_tree_model_iter_has_child(tree_model : GtkTreeModel, iter : GtkTreeIter*) : Gboolean
  fun gtk_tree_model_iter_n_children(tree_model : GtkTreeModel, iter : GtkTreeIter*) : Gint
  fun gtk_tree_model_iter_next(tree_model : GtkTreeModel, iter : GtkTreeIter*) : Gboolean
  fun gtk_tree_model_iter_nth_child(tree_model : GtkTreeModel, iter : GtkTreeIter*, parent : GtkTreeIter*, n : Gint) : Gboolean
  fun gtk_tree_model_iter_parent(tree_model : GtkTreeModel, iter : GtkTreeIter*, child : GtkTreeIter*) : Gboolean
  fun gtk_tree_model_iter_previous(tree_model : GtkTreeModel, iter : GtkTreeIter*) : Gboolean
  fun gtk_tree_model_ref_node(tree_model : GtkTreeModel, iter : GtkTreeIter*)
  fun gtk_tree_model_row_changed(tree_model : GtkTreeModel, path : GtkTreePath, iter : GtkTreeIter*)
  fun gtk_tree_model_row_deleted(tree_model : GtkTreeModel, path : GtkTreePath)
  fun gtk_tree_model_row_has_child_toggled(tree_model : GtkTreeModel, path : GtkTreePath, iter : GtkTreeIter*)
  fun gtk_tree_model_row_inserted(tree_model : GtkTreeModel, path : GtkTreePath, iter : GtkTreeIter*)
  fun gtk_tree_model_rows_reordered(tree_model : GtkTreeModel, path : GtkTreePath, iter : GtkTreeIter*, new_order : Gint*)
  fun gtk_tree_model_rows_reordered_with_length(tree_model : GtkTreeModel, path : GtkTreePath, iter : GtkTreeIter*, new_order : Gint*, length : Gint)
  fun gtk_tree_model_sort_clear_cache(tree_model_sort : GtkTreeModelSort*)
  fun gtk_tree_model_sort_convert_child_iter_to_iter(tree_model_sort : GtkTreeModelSort*, sort_iter : GtkTreeIter*, child_iter : GtkTreeIter*) : Gboolean
  fun gtk_tree_model_sort_convert_child_path_to_path(tree_model_sort : GtkTreeModelSort*, child_path : GtkTreePath) : GtkTreePath
  fun gtk_tree_model_sort_convert_iter_to_child_iter(tree_model_sort : GtkTreeModelSort*, child_iter : GtkTreeIter*, sorted_iter : GtkTreeIter*)
  fun gtk_tree_model_sort_convert_path_to_child_path(tree_model_sort : GtkTreeModelSort*, sorted_path : GtkTreePath) : GtkTreePath
  fun gtk_tree_model_sort_get_model(tree_model : GtkTreeModelSort*) : GtkTreeModel
  fun gtk_tree_model_sort_get_type : GType
  fun gtk_tree_model_sort_iter_is_valid(tree_model_sort : GtkTreeModelSort*, iter : GtkTreeIter*) : Gboolean
  fun gtk_tree_model_sort_new_with_model(child_model : GtkTreeModel) : GtkTreeModel
  fun gtk_tree_model_sort_reset_default_sort_func(tree_model_sort : GtkTreeModelSort*)
  fun gtk_tree_model_unref_node(tree_model : GtkTreeModel, iter : GtkTreeIter*)
  fun gtk_tree_path_append_index(path : GtkTreePath, index_ : Gint)
  fun gtk_tree_path_compare(a : GtkTreePath, b : GtkTreePath) : Gint
  fun gtk_tree_path_copy(path : GtkTreePath) : GtkTreePath
  fun gtk_tree_path_down(path : GtkTreePath)
  fun gtk_tree_path_free(path : GtkTreePath)
  fun gtk_tree_path_get_depth(path : GtkTreePath) : Gint
  fun gtk_tree_path_get_indices(path : GtkTreePath) : Gint*
  fun gtk_tree_path_get_indices_with_depth(path : GtkTreePath, depth : Gint*) : Gint*
  fun gtk_tree_path_get_type : GType
  fun gtk_tree_path_is_ancestor(path : GtkTreePath, descendant : GtkTreePath) : Gboolean
  fun gtk_tree_path_is_descendant(path : GtkTreePath, ancestor : GtkTreePath) : Gboolean
  fun gtk_tree_path_new : GtkTreePath
  fun gtk_tree_path_new_first : GtkTreePath
  fun gtk_tree_path_new_from_indices(first_index : Gint, ...) : GtkTreePath
  fun gtk_tree_path_new_from_indicesv(indices : Gint*, length : Gsize) : GtkTreePath
  fun gtk_tree_path_new_from_string(path : Gchar*) : GtkTreePath
  fun gtk_tree_path_next(path : GtkTreePath)
  fun gtk_tree_path_prepend_index(path : GtkTreePath, index_ : Gint)
  fun gtk_tree_path_prev(path : GtkTreePath) : Gboolean
  fun gtk_tree_path_to_string(path : GtkTreePath) : Gchar*
  fun gtk_tree_path_up(path : GtkTreePath) : Gboolean
  fun gtk_tree_row_reference_copy(reference : GtkTreeRowReference) : GtkTreeRowReference
  fun gtk_tree_row_reference_deleted(proxy : GObject*, path : GtkTreePath)
  fun gtk_tree_row_reference_free(reference : GtkTreeRowReference)
  fun gtk_tree_row_reference_get_model(reference : GtkTreeRowReference) : GtkTreeModel
  fun gtk_tree_row_reference_get_path(reference : GtkTreeRowReference) : GtkTreePath
  fun gtk_tree_row_reference_get_type : GType
  fun gtk_tree_row_reference_inserted(proxy : GObject*, path : GtkTreePath)
  fun gtk_tree_row_reference_new(model : GtkTreeModel, path : GtkTreePath) : GtkTreeRowReference
  fun gtk_tree_row_reference_new_proxy(proxy : GObject*, model : GtkTreeModel, path : GtkTreePath) : GtkTreeRowReference
  fun gtk_tree_row_reference_reordered(proxy : GObject*, path : GtkTreePath, iter : GtkTreeIter*, new_order : Gint*)
  fun gtk_tree_row_reference_valid(reference : GtkTreeRowReference) : Gboolean
  fun gtk_tree_selection_count_selected_rows(selection : GtkTreeSelection*) : Gint
  fun gtk_tree_selection_get_mode(selection : GtkTreeSelection*) : GtkSelectionMode
  fun gtk_tree_selection_get_select_function(selection : GtkTreeSelection*) : GtkTreeSelectionFunc
  fun gtk_tree_selection_get_selected(selection : GtkTreeSelection*, model : GtkTreeModel*, iter : GtkTreeIter*) : Gboolean
  fun gtk_tree_selection_get_selected_rows(selection : GtkTreeSelection*, model : GtkTreeModel*) : GList*
  fun gtk_tree_selection_get_tree_view(selection : GtkTreeSelection*) : GtkTreeView*
  fun gtk_tree_selection_get_type : GType
  fun gtk_tree_selection_get_user_data(selection : GtkTreeSelection*) : Gpointer
  fun gtk_tree_selection_iter_is_selected(selection : GtkTreeSelection*, iter : GtkTreeIter*) : Gboolean
  fun gtk_tree_selection_path_is_selected(selection : GtkTreeSelection*, path : GtkTreePath) : Gboolean
  fun gtk_tree_selection_select_all(selection : GtkTreeSelection*)
  fun gtk_tree_selection_select_iter(selection : GtkTreeSelection*, iter : GtkTreeIter*)
  fun gtk_tree_selection_select_path(selection : GtkTreeSelection*, path : GtkTreePath)
  fun gtk_tree_selection_select_range(selection : GtkTreeSelection*, start_path : GtkTreePath, end_path : GtkTreePath)
  fun gtk_tree_selection_selected_foreach(selection : GtkTreeSelection*, func : GtkTreeSelectionForeachFunc, data : Gpointer)
  fun gtk_tree_selection_set_mode(selection : GtkTreeSelection*, type : GtkSelectionMode)
  fun gtk_tree_selection_set_select_function(selection : GtkTreeSelection*, func : GtkTreeSelectionFunc, data : Gpointer, destroy : GDestroyNotify)
  fun gtk_tree_selection_unselect_all(selection : GtkTreeSelection*)
  fun gtk_tree_selection_unselect_iter(selection : GtkTreeSelection*, iter : GtkTreeIter*)
  fun gtk_tree_selection_unselect_path(selection : GtkTreeSelection*, path : GtkTreePath)
  fun gtk_tree_selection_unselect_range(selection : GtkTreeSelection*, start_path : GtkTreePath, end_path : GtkTreePath)
  fun gtk_tree_set_row_drag_data(selection_data : GtkSelectionData, tree_model : GtkTreeModel, path : GtkTreePath) : Gboolean
  fun gtk_tree_sortable_get_sort_column_id(sortable : GtkTreeSortable, sort_column_id : Gint*, order : GtkSortType*) : Gboolean
  fun gtk_tree_sortable_get_type : GType
  fun gtk_tree_sortable_has_default_sort_func(sortable : GtkTreeSortable) : Gboolean
  fun gtk_tree_sortable_set_default_sort_func(sortable : GtkTreeSortable, sort_func : GtkTreeIterCompareFunc, user_data : Gpointer, destroy : GDestroyNotify)
  fun gtk_tree_sortable_set_sort_column_id(sortable : GtkTreeSortable, sort_column_id : Gint, order : GtkSortType)
  fun gtk_tree_sortable_set_sort_func(sortable : GtkTreeSortable, sort_column_id : Gint, sort_func : GtkTreeIterCompareFunc, user_data : Gpointer, destroy : GDestroyNotify)
  fun gtk_tree_sortable_sort_column_changed(sortable : GtkTreeSortable)
  fun gtk_tree_store_append(tree_store : GtkTreeStore*, iter : GtkTreeIter*, parent : GtkTreeIter*)
  fun gtk_tree_store_clear(tree_store : GtkTreeStore*)
  fun gtk_tree_store_get_type : GType
  fun gtk_tree_store_insert(tree_store : GtkTreeStore*, iter : GtkTreeIter*, parent : GtkTreeIter*, position : Gint)
  fun gtk_tree_store_insert_after(tree_store : GtkTreeStore*, iter : GtkTreeIter*, parent : GtkTreeIter*, sibling : GtkTreeIter*)
  fun gtk_tree_store_insert_before(tree_store : GtkTreeStore*, iter : GtkTreeIter*, parent : GtkTreeIter*, sibling : GtkTreeIter*)
  fun gtk_tree_store_insert_with_values(tree_store : GtkTreeStore*, iter : GtkTreeIter*, parent : GtkTreeIter*, position : Gint, ...)
  fun gtk_tree_store_insert_with_valuesv(tree_store : GtkTreeStore*, iter : GtkTreeIter*, parent : GtkTreeIter*, position : Gint, columns : Gint*, values : GValue*, n_values : Gint)
  fun gtk_tree_store_is_ancestor(tree_store : GtkTreeStore*, iter : GtkTreeIter*, descendant : GtkTreeIter*) : Gboolean
  fun gtk_tree_store_iter_depth(tree_store : GtkTreeStore*, iter : GtkTreeIter*) : Gint
  fun gtk_tree_store_iter_is_valid(tree_store : GtkTreeStore*, iter : GtkTreeIter*) : Gboolean
  fun gtk_tree_store_move_after(tree_store : GtkTreeStore*, iter : GtkTreeIter*, position : GtkTreeIter*)
  fun gtk_tree_store_move_before(tree_store : GtkTreeStore*, iter : GtkTreeIter*, position : GtkTreeIter*)
  fun gtk_tree_store_new(n_columns : Gint, ...) : GtkTreeStore*
  fun gtk_tree_store_newv(n_columns : Gint, types : GType*) : GtkTreeStore*
  fun gtk_tree_store_prepend(tree_store : GtkTreeStore*, iter : GtkTreeIter*, parent : GtkTreeIter*)
  fun gtk_tree_store_remove(tree_store : GtkTreeStore*, iter : GtkTreeIter*) : Gboolean
  fun gtk_tree_store_reorder(tree_store : GtkTreeStore*, parent : GtkTreeIter*, new_order : Gint*)
  fun gtk_tree_store_set(tree_store : GtkTreeStore*, iter : GtkTreeIter*, ...)
  fun gtk_tree_store_set_column_types(tree_store : GtkTreeStore*, n_columns : Gint, types : GType*)
  fun gtk_tree_store_set_valist(tree_store : GtkTreeStore*, iter : GtkTreeIter*, var_args : VaList)
  fun gtk_tree_store_set_value(tree_store : GtkTreeStore*, iter : GtkTreeIter*, column : Gint, value : GValue*)
  fun gtk_tree_store_set_valuesv(tree_store : GtkTreeStore*, iter : GtkTreeIter*, columns : Gint*, values : GValue*, n_values : Gint)
  fun gtk_tree_store_swap(tree_store : GtkTreeStore*, a : GtkTreeIter*, b : GtkTreeIter*)
  fun gtk_tree_view_append_column(tree_view : GtkTreeView*, column : GtkTreeViewColumn*) : Gint
  fun gtk_tree_view_collapse_all(tree_view : GtkTreeView*)
  fun gtk_tree_view_collapse_row(tree_view : GtkTreeView*, path : GtkTreePath) : Gboolean
  fun gtk_tree_view_column_add_attribute(tree_column : GtkTreeViewColumn*, cell_renderer : GtkCellRenderer*, attribute : Gchar*, column : Gint)
  fun gtk_tree_view_column_cell_get_position(tree_column : GtkTreeViewColumn*, cell_renderer : GtkCellRenderer*, x_offset : Gint*, width : Gint*) : Gboolean
  fun gtk_tree_view_column_cell_get_size(tree_column : GtkTreeViewColumn*, cell_area : GdkRectangle*, x_offset : Gint*, y_offset : Gint*, width : Gint*, height : Gint*)
  fun gtk_tree_view_column_cell_is_visible(tree_column : GtkTreeViewColumn*) : Gboolean
  fun gtk_tree_view_column_cell_set_cell_data(tree_column : GtkTreeViewColumn*, tree_model : GtkTreeModel, iter : GtkTreeIter*, is_expander : Gboolean, is_expanded : Gboolean)
  fun gtk_tree_view_column_clear(tree_column : GtkTreeViewColumn*)
  fun gtk_tree_view_column_clear_attributes(tree_column : GtkTreeViewColumn*, cell_renderer : GtkCellRenderer*)
  fun gtk_tree_view_column_clicked(tree_column : GtkTreeViewColumn*)
  fun gtk_tree_view_column_focus_cell(tree_column : GtkTreeViewColumn*, cell : GtkCellRenderer*)
  fun gtk_tree_view_column_get_alignment(tree_column : GtkTreeViewColumn*) : Gfloat
  fun gtk_tree_view_column_get_button(tree_column : GtkTreeViewColumn*) : GtkWidget*
  fun gtk_tree_view_column_get_clickable(tree_column : GtkTreeViewColumn*) : Gboolean
  fun gtk_tree_view_column_get_expand(tree_column : GtkTreeViewColumn*) : Gboolean
  fun gtk_tree_view_column_get_fixed_width(tree_column : GtkTreeViewColumn*) : Gint
  fun gtk_tree_view_column_get_max_width(tree_column : GtkTreeViewColumn*) : Gint
  fun gtk_tree_view_column_get_min_width(tree_column : GtkTreeViewColumn*) : Gint
  fun gtk_tree_view_column_get_reorderable(tree_column : GtkTreeViewColumn*) : Gboolean
  fun gtk_tree_view_column_get_resizable(tree_column : GtkTreeViewColumn*) : Gboolean
  fun gtk_tree_view_column_get_sizing(tree_column : GtkTreeViewColumn*) : GtkTreeViewColumnSizing
  fun gtk_tree_view_column_get_sort_column_id(tree_column : GtkTreeViewColumn*) : Gint
  fun gtk_tree_view_column_get_sort_indicator(tree_column : GtkTreeViewColumn*) : Gboolean
  fun gtk_tree_view_column_get_sort_order(tree_column : GtkTreeViewColumn*) : GtkSortType
  fun gtk_tree_view_column_get_spacing(tree_column : GtkTreeViewColumn*) : Gint
  fun gtk_tree_view_column_get_title(tree_column : GtkTreeViewColumn*) : Gchar*
  fun gtk_tree_view_column_get_tree_view(tree_column : GtkTreeViewColumn*) : GtkWidget*
  fun gtk_tree_view_column_get_type : GType
  fun gtk_tree_view_column_get_visible(tree_column : GtkTreeViewColumn*) : Gboolean
  fun gtk_tree_view_column_get_widget(tree_column : GtkTreeViewColumn*) : GtkWidget*
  fun gtk_tree_view_column_get_width(tree_column : GtkTreeViewColumn*) : Gint
  fun gtk_tree_view_column_get_x_offset(tree_column : GtkTreeViewColumn*) : Gint
  fun gtk_tree_view_column_new : GtkTreeViewColumn*
  fun gtk_tree_view_column_new_with_area(area : GtkCellArea*) : GtkTreeViewColumn*
  fun gtk_tree_view_column_new_with_attributes(title : Gchar*, cell : GtkCellRenderer*, ...) : GtkTreeViewColumn*
  fun gtk_tree_view_column_pack_end(tree_column : GtkTreeViewColumn*, cell : GtkCellRenderer*, expand : Gboolean)
  fun gtk_tree_view_column_pack_start(tree_column : GtkTreeViewColumn*, cell : GtkCellRenderer*, expand : Gboolean)
  fun gtk_tree_view_column_queue_resize(tree_column : GtkTreeViewColumn*)
  fun gtk_tree_view_column_set_alignment(tree_column : GtkTreeViewColumn*, xalign : Gfloat)
  fun gtk_tree_view_column_set_attributes(tree_column : GtkTreeViewColumn*, cell_renderer : GtkCellRenderer*, ...)
  fun gtk_tree_view_column_set_cell_data_func(tree_column : GtkTreeViewColumn*, cell_renderer : GtkCellRenderer*, func : GtkTreeCellDataFunc, func_data : Gpointer, destroy : GDestroyNotify)
  fun gtk_tree_view_column_set_clickable(tree_column : GtkTreeViewColumn*, clickable : Gboolean)
  fun gtk_tree_view_column_set_expand(tree_column : GtkTreeViewColumn*, expand : Gboolean)
  fun gtk_tree_view_column_set_fixed_width(tree_column : GtkTreeViewColumn*, fixed_width : Gint)
  fun gtk_tree_view_column_set_max_width(tree_column : GtkTreeViewColumn*, max_width : Gint)
  fun gtk_tree_view_column_set_min_width(tree_column : GtkTreeViewColumn*, min_width : Gint)
  fun gtk_tree_view_column_set_reorderable(tree_column : GtkTreeViewColumn*, reorderable : Gboolean)
  fun gtk_tree_view_column_set_resizable(tree_column : GtkTreeViewColumn*, resizable : Gboolean)
  fun gtk_tree_view_column_set_sizing(tree_column : GtkTreeViewColumn*, type : GtkTreeViewColumnSizing)
  fun gtk_tree_view_column_set_sort_column_id(tree_column : GtkTreeViewColumn*, sort_column_id : Gint)
  fun gtk_tree_view_column_set_sort_indicator(tree_column : GtkTreeViewColumn*, setting : Gboolean)
  fun gtk_tree_view_column_set_sort_order(tree_column : GtkTreeViewColumn*, order : GtkSortType)
  fun gtk_tree_view_column_set_spacing(tree_column : GtkTreeViewColumn*, spacing : Gint)
  fun gtk_tree_view_column_set_title(tree_column : GtkTreeViewColumn*, title : Gchar*)
  fun gtk_tree_view_column_set_visible(tree_column : GtkTreeViewColumn*, visible : Gboolean)
  fun gtk_tree_view_column_set_widget(tree_column : GtkTreeViewColumn*, widget : GtkWidget*)
  fun gtk_tree_view_column_sizing_get_type : GType
  fun gtk_tree_view_columns_autosize(tree_view : GtkTreeView*)
  fun gtk_tree_view_convert_bin_window_to_tree_coords(tree_view : GtkTreeView*, bx : Gint, by : Gint, tx : Gint*, ty : Gint*)
  fun gtk_tree_view_convert_bin_window_to_widget_coords(tree_view : GtkTreeView*, bx : Gint, by : Gint, wx : Gint*, wy : Gint*)
  fun gtk_tree_view_convert_tree_to_bin_window_coords(tree_view : GtkTreeView*, tx : Gint, ty : Gint, bx : Gint*, by : Gint*)
  fun gtk_tree_view_convert_tree_to_widget_coords(tree_view : GtkTreeView*, tx : Gint, ty : Gint, wx : Gint*, wy : Gint*)
  fun gtk_tree_view_convert_widget_to_bin_window_coords(tree_view : GtkTreeView*, wx : Gint, wy : Gint, bx : Gint*, by : Gint*)
  fun gtk_tree_view_convert_widget_to_tree_coords(tree_view : GtkTreeView*, wx : Gint, wy : Gint, tx : Gint*, ty : Gint*)
  fun gtk_tree_view_create_row_drag_icon(tree_view : GtkTreeView*, path : GtkTreePath) : CairoSurfaceT
  fun gtk_tree_view_drop_position_get_type : GType
  fun gtk_tree_view_enable_model_drag_dest(tree_view : GtkTreeView*, targets : GtkTargetEntry*, n_targets : Gint, actions : GdkDragAction)
  fun gtk_tree_view_enable_model_drag_source(tree_view : GtkTreeView*, start_button_mask : GdkModifierType, targets : GtkTargetEntry*, n_targets : Gint, actions : GdkDragAction)
  fun gtk_tree_view_expand_all(tree_view : GtkTreeView*)
  fun gtk_tree_view_expand_row(tree_view : GtkTreeView*, path : GtkTreePath, open_all : Gboolean) : Gboolean
  fun gtk_tree_view_expand_to_path(tree_view : GtkTreeView*, path : GtkTreePath)
  fun gtk_tree_view_get_activate_on_single_click(tree_view : GtkTreeView*) : Gboolean
  fun gtk_tree_view_get_background_area(tree_view : GtkTreeView*, path : GtkTreePath, column : GtkTreeViewColumn*, rect : GdkRectangle*)
  fun gtk_tree_view_get_bin_window(tree_view : GtkTreeView*) : GdkWindow
  fun gtk_tree_view_get_cell_area(tree_view : GtkTreeView*, path : GtkTreePath, column : GtkTreeViewColumn*, rect : GdkRectangle*)
  fun gtk_tree_view_get_column(tree_view : GtkTreeView*, n : Gint) : GtkTreeViewColumn*
  fun gtk_tree_view_get_columns(tree_view : GtkTreeView*) : GList*
  fun gtk_tree_view_get_cursor(tree_view : GtkTreeView*, path : GtkTreePath*, focus_column : GtkTreeViewColumn**)
  fun gtk_tree_view_get_dest_row_at_pos(tree_view : GtkTreeView*, drag_x : Gint, drag_y : Gint, path : GtkTreePath*, pos : GtkTreeViewDropPosition*) : Gboolean
  fun gtk_tree_view_get_drag_dest_row(tree_view : GtkTreeView*, path : GtkTreePath*, pos : GtkTreeViewDropPosition*)
  fun gtk_tree_view_get_enable_search(tree_view : GtkTreeView*) : Gboolean
  fun gtk_tree_view_get_enable_tree_lines(tree_view : GtkTreeView*) : Gboolean
  fun gtk_tree_view_get_expander_column(tree_view : GtkTreeView*) : GtkTreeViewColumn*
  fun gtk_tree_view_get_fixed_height_mode(tree_view : GtkTreeView*) : Gboolean
  fun gtk_tree_view_get_grid_lines(tree_view : GtkTreeView*) : GtkTreeViewGridLines
  fun gtk_tree_view_get_hadjustment(tree_view : GtkTreeView*) : GtkAdjustment*
  fun gtk_tree_view_get_headers_clickable(tree_view : GtkTreeView*) : Gboolean
  fun gtk_tree_view_get_headers_visible(tree_view : GtkTreeView*) : Gboolean
  fun gtk_tree_view_get_hover_expand(tree_view : GtkTreeView*) : Gboolean
  fun gtk_tree_view_get_hover_selection(tree_view : GtkTreeView*) : Gboolean
  fun gtk_tree_view_get_level_indentation(tree_view : GtkTreeView*) : Gint
  fun gtk_tree_view_get_model(tree_view : GtkTreeView*) : GtkTreeModel
  fun gtk_tree_view_get_n_columns(tree_view : GtkTreeView*) : Guint
  fun gtk_tree_view_get_path_at_pos(tree_view : GtkTreeView*, x : Gint, y : Gint, path : GtkTreePath*, column : GtkTreeViewColumn**, cell_x : Gint*, cell_y : Gint*) : Gboolean
  fun gtk_tree_view_get_reorderable(tree_view : GtkTreeView*) : Gboolean
  fun gtk_tree_view_get_row_separator_func(tree_view : GtkTreeView*) : GtkTreeViewRowSeparatorFunc
  fun gtk_tree_view_get_rubber_banding(tree_view : GtkTreeView*) : Gboolean
  fun gtk_tree_view_get_rules_hint(tree_view : GtkTreeView*) : Gboolean
  fun gtk_tree_view_get_search_column(tree_view : GtkTreeView*) : Gint
  fun gtk_tree_view_get_search_entry(tree_view : GtkTreeView*) : GtkEntry*
  fun gtk_tree_view_get_search_equal_func(tree_view : GtkTreeView*) : GtkTreeViewSearchEqualFunc
  fun gtk_tree_view_get_search_position_func(tree_view : GtkTreeView*) : GtkTreeViewSearchPositionFunc
  fun gtk_tree_view_get_selection(tree_view : GtkTreeView*) : GtkTreeSelection*
  fun gtk_tree_view_get_show_expanders(tree_view : GtkTreeView*) : Gboolean
  fun gtk_tree_view_get_tooltip_column(tree_view : GtkTreeView*) : Gint
  fun gtk_tree_view_get_tooltip_context(tree_view : GtkTreeView*, x : Gint*, y : Gint*, keyboard_tip : Gboolean, model : GtkTreeModel*, path : GtkTreePath*, iter : GtkTreeIter*) : Gboolean
  fun gtk_tree_view_get_type : GType
  fun gtk_tree_view_get_vadjustment(tree_view : GtkTreeView*) : GtkAdjustment*
  fun gtk_tree_view_get_visible_range(tree_view : GtkTreeView*, start_path : GtkTreePath*, end_path : GtkTreePath*) : Gboolean
  fun gtk_tree_view_get_visible_rect(tree_view : GtkTreeView*, visible_rect : GdkRectangle*)
  fun gtk_tree_view_grid_lines_get_type : GType
  fun gtk_tree_view_insert_column(tree_view : GtkTreeView*, column : GtkTreeViewColumn*, position : Gint) : Gint
  fun gtk_tree_view_insert_column_with_attributes(tree_view : GtkTreeView*, position : Gint, title : Gchar*, cell : GtkCellRenderer*, ...) : Gint
  fun gtk_tree_view_insert_column_with_data_func(tree_view : GtkTreeView*, position : Gint, title : Gchar*, cell : GtkCellRenderer*, func : GtkTreeCellDataFunc, data : Gpointer, dnotify : GDestroyNotify) : Gint
  fun gtk_tree_view_is_blank_at_pos(tree_view : GtkTreeView*, x : Gint, y : Gint, path : GtkTreePath*, column : GtkTreeViewColumn**, cell_x : Gint*, cell_y : Gint*) : Gboolean
  fun gtk_tree_view_is_rubber_banding_active(tree_view : GtkTreeView*) : Gboolean
  fun gtk_tree_view_map_expanded_rows(tree_view : GtkTreeView*, func : GtkTreeViewMappingFunc, data : Gpointer)
  fun gtk_tree_view_move_column_after(tree_view : GtkTreeView*, column : GtkTreeViewColumn*, base_column : GtkTreeViewColumn*)
  fun gtk_tree_view_new : GtkWidget*
  fun gtk_tree_view_new_with_model(model : GtkTreeModel) : GtkWidget*
  fun gtk_tree_view_remove_column(tree_view : GtkTreeView*, column : GtkTreeViewColumn*) : Gint
  fun gtk_tree_view_row_activated(tree_view : GtkTreeView*, path : GtkTreePath, column : GtkTreeViewColumn*)
  fun gtk_tree_view_row_expanded(tree_view : GtkTreeView*, path : GtkTreePath) : Gboolean
  fun gtk_tree_view_scroll_to_cell(tree_view : GtkTreeView*, path : GtkTreePath, column : GtkTreeViewColumn*, use_align : Gboolean, row_align : Gfloat, col_align : Gfloat)
  fun gtk_tree_view_scroll_to_point(tree_view : GtkTreeView*, tree_x : Gint, tree_y : Gint)
  fun gtk_tree_view_set_activate_on_single_click(tree_view : GtkTreeView*, single : Gboolean)
  fun gtk_tree_view_set_column_drag_function(tree_view : GtkTreeView*, func : GtkTreeViewColumnDropFunc, user_data : Gpointer, destroy : GDestroyNotify)
  fun gtk_tree_view_set_cursor(tree_view : GtkTreeView*, path : GtkTreePath, focus_column : GtkTreeViewColumn*, start_editing : Gboolean)
  fun gtk_tree_view_set_cursor_on_cell(tree_view : GtkTreeView*, path : GtkTreePath, focus_column : GtkTreeViewColumn*, focus_cell : GtkCellRenderer*, start_editing : Gboolean)
  fun gtk_tree_view_set_destroy_count_func(tree_view : GtkTreeView*, func : GtkTreeDestroyCountFunc, data : Gpointer, destroy : GDestroyNotify)
  fun gtk_tree_view_set_drag_dest_row(tree_view : GtkTreeView*, path : GtkTreePath, pos : GtkTreeViewDropPosition)
  fun gtk_tree_view_set_enable_search(tree_view : GtkTreeView*, enable_search : Gboolean)
  fun gtk_tree_view_set_enable_tree_lines(tree_view : GtkTreeView*, enabled : Gboolean)
  fun gtk_tree_view_set_expander_column(tree_view : GtkTreeView*, column : GtkTreeViewColumn*)
  fun gtk_tree_view_set_fixed_height_mode(tree_view : GtkTreeView*, enable : Gboolean)
  fun gtk_tree_view_set_grid_lines(tree_view : GtkTreeView*, grid_lines : GtkTreeViewGridLines)
  fun gtk_tree_view_set_hadjustment(tree_view : GtkTreeView*, adjustment : GtkAdjustment*)
  fun gtk_tree_view_set_headers_clickable(tree_view : GtkTreeView*, setting : Gboolean)
  fun gtk_tree_view_set_headers_visible(tree_view : GtkTreeView*, headers_visible : Gboolean)
  fun gtk_tree_view_set_hover_expand(tree_view : GtkTreeView*, expand : Gboolean)
  fun gtk_tree_view_set_hover_selection(tree_view : GtkTreeView*, hover : Gboolean)
  fun gtk_tree_view_set_level_indentation(tree_view : GtkTreeView*, indentation : Gint)
  fun gtk_tree_view_set_model(tree_view : GtkTreeView*, model : GtkTreeModel)
  fun gtk_tree_view_set_reorderable(tree_view : GtkTreeView*, reorderable : Gboolean)
  fun gtk_tree_view_set_row_separator_func(tree_view : GtkTreeView*, func : GtkTreeViewRowSeparatorFunc, data : Gpointer, destroy : GDestroyNotify)
  fun gtk_tree_view_set_rubber_banding(tree_view : GtkTreeView*, enable : Gboolean)
  fun gtk_tree_view_set_rules_hint(tree_view : GtkTreeView*, setting : Gboolean)
  fun gtk_tree_view_set_search_column(tree_view : GtkTreeView*, column : Gint)
  fun gtk_tree_view_set_search_entry(tree_view : GtkTreeView*, entry : GtkEntry*)
  fun gtk_tree_view_set_search_equal_func(tree_view : GtkTreeView*, search_equal_func : GtkTreeViewSearchEqualFunc, search_user_data : Gpointer, search_destroy : GDestroyNotify)
  fun gtk_tree_view_set_search_position_func(tree_view : GtkTreeView*, func : GtkTreeViewSearchPositionFunc, data : Gpointer, destroy : GDestroyNotify)
  fun gtk_tree_view_set_show_expanders(tree_view : GtkTreeView*, enabled : Gboolean)
  fun gtk_tree_view_set_tooltip_cell(tree_view : GtkTreeView*, tooltip : GtkTooltip, path : GtkTreePath, column : GtkTreeViewColumn*, cell : GtkCellRenderer*)
  fun gtk_tree_view_set_tooltip_column(tree_view : GtkTreeView*, column : Gint)
  fun gtk_tree_view_set_tooltip_row(tree_view : GtkTreeView*, tooltip : GtkTooltip, path : GtkTreePath)
  fun gtk_tree_view_set_vadjustment(tree_view : GtkTreeView*, adjustment : GtkAdjustment*)
  fun gtk_tree_view_unset_rows_drag_dest(tree_view : GtkTreeView*)
  fun gtk_tree_view_unset_rows_drag_source(tree_view : GtkTreeView*)
  fun gtk_true : Gboolean
  fun gtk_ui_manager_add_ui(manager : GtkUiManager*, merge_id : Guint, path : Gchar*, name : Gchar*, action : Gchar*, type : GtkUiManagerItemType, top : Gboolean)
  fun gtk_ui_manager_add_ui_from_file(manager : GtkUiManager*, filename : Gchar*, error : GError**) : Guint
  fun gtk_ui_manager_add_ui_from_resource(manager : GtkUiManager*, resource_path : Gchar*, error : GError**) : Guint
  fun gtk_ui_manager_add_ui_from_string(manager : GtkUiManager*, buffer : Gchar*, length : Gssize, error : GError**) : Guint
  fun gtk_ui_manager_ensure_update(manager : GtkUiManager*)
  fun gtk_ui_manager_get_accel_group(manager : GtkUiManager*) : GtkAccelGroup*
  fun gtk_ui_manager_get_action(manager : GtkUiManager*, path : Gchar*) : GtkAction*
  fun gtk_ui_manager_get_action_groups(manager : GtkUiManager*) : GList*
  fun gtk_ui_manager_get_add_tearoffs(manager : GtkUiManager*) : Gboolean
  fun gtk_ui_manager_get_toplevels(manager : GtkUiManager*, types : GtkUiManagerItemType) : GsList*
  fun gtk_ui_manager_get_type : GType
  fun gtk_ui_manager_get_ui(manager : GtkUiManager*) : Gchar*
  fun gtk_ui_manager_get_widget(manager : GtkUiManager*, path : Gchar*) : GtkWidget*
  fun gtk_ui_manager_insert_action_group(manager : GtkUiManager*, action_group : GtkActionGroup*, pos : Gint)
  fun gtk_ui_manager_item_type_get_type : GType
  fun gtk_ui_manager_new : GtkUiManager*
  fun gtk_ui_manager_new_merge_id(manager : GtkUiManager*) : Guint
  fun gtk_ui_manager_remove_action_group(manager : GtkUiManager*, action_group : GtkActionGroup*)
  fun gtk_ui_manager_remove_ui(manager : GtkUiManager*, merge_id : Guint)
  fun gtk_ui_manager_set_add_tearoffs(manager : GtkUiManager*, add_tearoffs : Gboolean)
  fun gtk_unit_get_type : GType
  fun gtk_vbox_get_type : GType
  fun gtk_vbox_new(homogeneous : Gboolean, spacing : Gint) : GtkWidget*
  fun gtk_vbutton_box_get_type : GType
  fun gtk_vbutton_box_new : GtkWidget*
  fun gtk_viewport_get_bin_window(viewport : GtkViewport*) : GdkWindow
  fun gtk_viewport_get_hadjustment(viewport : GtkViewport*) : GtkAdjustment*
  fun gtk_viewport_get_shadow_type(viewport : GtkViewport*) : GtkShadowType
  fun gtk_viewport_get_type : GType
  fun gtk_viewport_get_vadjustment(viewport : GtkViewport*) : GtkAdjustment*
  fun gtk_viewport_get_view_window(viewport : GtkViewport*) : GdkWindow
  fun gtk_viewport_new(hadjustment : GtkAdjustment*, vadjustment : GtkAdjustment*) : GtkWidget*
  fun gtk_viewport_set_hadjustment(viewport : GtkViewport*, adjustment : GtkAdjustment*)
  fun gtk_viewport_set_shadow_type(viewport : GtkViewport*, type : GtkShadowType)
  fun gtk_viewport_set_vadjustment(viewport : GtkViewport*, adjustment : GtkAdjustment*)
  fun gtk_volume_button_get_type : GType
  fun gtk_volume_button_new : GtkWidget*
  fun gtk_vpaned_get_type : GType
  fun gtk_vpaned_new : GtkWidget*
  fun gtk_vscale_get_type : GType
  fun gtk_vscale_new(adjustment : GtkAdjustment*) : GtkWidget*
  fun gtk_vscale_new_with_range(min : Gdouble, max : Gdouble, step : Gdouble) : GtkWidget*
  fun gtk_vscrollbar_get_type : GType
  fun gtk_vscrollbar_new(adjustment : GtkAdjustment*) : GtkWidget*
  fun gtk_vseparator_get_type : GType
  fun gtk_vseparator_new : GtkWidget*
  fun gtk_widget_activate(widget : GtkWidget*) : Gboolean
  fun gtk_widget_add_accelerator(widget : GtkWidget*, accel_signal : Gchar*, accel_group : GtkAccelGroup*, accel_key : Guint, accel_mods : GdkModifierType, accel_flags : GtkAccelFlags)
  fun gtk_widget_add_device_events(widget : GtkWidget*, device : GdkDevice, events : GdkEventMask)
  fun gtk_widget_add_events(widget : GtkWidget*, events : Gint)
  fun gtk_widget_add_mnemonic_label(widget : GtkWidget*, label : GtkWidget*)
  fun gtk_widget_add_tick_callback(widget : GtkWidget*, callback : GtkTickCallback, user_data : Gpointer, notify : GDestroyNotify) : Guint
  fun gtk_widget_can_activate_accel(widget : GtkWidget*, signal_id : Guint) : Gboolean
  fun gtk_widget_child_focus(widget : GtkWidget*, direction : GtkDirectionType) : Gboolean
  fun gtk_widget_child_notify(widget : GtkWidget*, child_property : Gchar*)
  fun gtk_widget_class_bind_template_callback_full(widget_class : GtkWidgetClass*, callback_name : Gchar*, callback_symbol : GCallback)
  fun gtk_widget_class_bind_template_child_full(widget_class : GtkWidgetClass*, name : Gchar*, internal_child : Gboolean, struct_offset : Gssize)
  fun gtk_widget_class_find_style_property(klass : GtkWidgetClass*, property_name : Gchar*) : GParamSpec*
  fun gtk_widget_class_install_style_property(klass : GtkWidgetClass*, pspec : GParamSpec*)
  fun gtk_widget_class_install_style_property_parser(klass : GtkWidgetClass*, pspec : GParamSpec*, parser : GtkRcPropertyParser)
  fun gtk_widget_class_list_style_properties(klass : GtkWidgetClass*, n_properties : Guint*) : GParamSpec**
  fun gtk_widget_class_path(widget : GtkWidget*, path_length : Guint*, path : Gchar**, path_reversed : Gchar**)
  fun gtk_widget_class_set_accessible_role(widget_class : GtkWidgetClass*, role : AtkRole)
  fun gtk_widget_class_set_accessible_type(widget_class : GtkWidgetClass*, type : GType)
  fun gtk_widget_class_set_connect_func(widget_class : GtkWidgetClass*, connect_func : GtkBuilderConnectFunc, connect_data : Gpointer, connect_data_destroy : GDestroyNotify)
  fun gtk_widget_class_set_template(widget_class : GtkWidgetClass*, template_bytes : GBytes)
  fun gtk_widget_class_set_template_from_resource(widget_class : GtkWidgetClass*, resource_name : Gchar*)
  fun gtk_widget_compute_expand(widget : GtkWidget*, orientation : GtkOrientation) : Gboolean
  fun gtk_widget_create_pango_context(widget : GtkWidget*) : PangoContext
  fun gtk_widget_create_pango_layout(widget : GtkWidget*, text : Gchar*) : PangoLayout
  fun gtk_widget_destroy(widget : GtkWidget*)
  fun gtk_widget_destroyed(widget : GtkWidget*, widget_pointer : GtkWidget**)
  fun gtk_widget_device_is_shadowed(widget : GtkWidget*, device : GdkDevice) : Gboolean
  fun gtk_widget_draw(widget : GtkWidget*, cr : CairoT)
  fun gtk_widget_ensure_style(widget : GtkWidget*)
  fun gtk_widget_error_bell(widget : GtkWidget*)
  fun gtk_widget_event(widget : GtkWidget*, event : GdkEvent*) : Gboolean
  fun gtk_widget_freeze_child_notify(widget : GtkWidget*)
  fun gtk_widget_get_accessible(widget : GtkWidget*) : AtkObject*
  fun gtk_widget_get_action_group(widget : GtkWidget*, prefix : Gchar*) : GActionGroup
  fun gtk_widget_get_allocated_baseline(widget : GtkWidget*) : LibC::Int
  fun gtk_widget_get_allocated_height(widget : GtkWidget*) : LibC::Int
  fun gtk_widget_get_allocated_width(widget : GtkWidget*) : LibC::Int
  fun gtk_widget_get_allocation(widget : GtkWidget*, allocation : GtkAllocation*)
  fun gtk_widget_get_ancestor(widget : GtkWidget*, widget_type : GType) : GtkWidget*
  fun gtk_widget_get_app_paintable(widget : GtkWidget*) : Gboolean
  fun gtk_widget_get_can_default(widget : GtkWidget*) : Gboolean
  fun gtk_widget_get_can_focus(widget : GtkWidget*) : Gboolean
  fun gtk_widget_get_child_requisition(widget : GtkWidget*, requisition : GtkRequisition*)
  fun gtk_widget_get_child_visible(widget : GtkWidget*) : Gboolean
  fun gtk_widget_get_clip(widget : GtkWidget*, clip : GtkAllocation*)
  fun gtk_widget_get_clipboard(widget : GtkWidget*, selection : GdkAtom) : GtkClipboard
  fun gtk_widget_get_composite_name(widget : GtkWidget*) : Gchar*
  fun gtk_widget_get_default_direction : GtkTextDirection
  fun gtk_widget_get_default_style : GtkStyle*
  fun gtk_widget_get_device_enabled(widget : GtkWidget*, device : GdkDevice) : Gboolean
  fun gtk_widget_get_device_events(widget : GtkWidget*, device : GdkDevice) : GdkEventMask
  fun gtk_widget_get_direction(widget : GtkWidget*) : GtkTextDirection
  fun gtk_widget_get_display(widget : GtkWidget*) : GdkDisplay
  fun gtk_widget_get_double_buffered(widget : GtkWidget*) : Gboolean
  fun gtk_widget_get_events(widget : GtkWidget*) : Gint
  fun gtk_widget_get_font_map(widget : GtkWidget*) : PangoFontMap
  fun gtk_widget_get_font_options(widget : GtkWidget*) : CairoFontOptionsT
  fun gtk_widget_get_frame_clock(widget : GtkWidget*) : GdkFrameClock
  fun gtk_widget_get_halign(widget : GtkWidget*) : GtkAlign
  fun gtk_widget_get_has_tooltip(widget : GtkWidget*) : Gboolean
  fun gtk_widget_get_has_window(widget : GtkWidget*) : Gboolean
  fun gtk_widget_get_hexpand(widget : GtkWidget*) : Gboolean
  fun gtk_widget_get_hexpand_set(widget : GtkWidget*) : Gboolean
  fun gtk_widget_get_mapped(widget : GtkWidget*) : Gboolean
  fun gtk_widget_get_margin_bottom(widget : GtkWidget*) : Gint
  fun gtk_widget_get_margin_end(widget : GtkWidget*) : Gint
  fun gtk_widget_get_margin_left(widget : GtkWidget*) : Gint
  fun gtk_widget_get_margin_right(widget : GtkWidget*) : Gint
  fun gtk_widget_get_margin_start(widget : GtkWidget*) : Gint
  fun gtk_widget_get_margin_top(widget : GtkWidget*) : Gint
  fun gtk_widget_get_modifier_mask(widget : GtkWidget*, intent : GdkModifierIntent) : GdkModifierType
  fun gtk_widget_get_modifier_style(widget : GtkWidget*) : GtkRcStyle*
  fun gtk_widget_get_name(widget : GtkWidget*) : Gchar*
  fun gtk_widget_get_no_show_all(widget : GtkWidget*) : Gboolean
  fun gtk_widget_get_opacity(widget : GtkWidget*) : LibC::Double
  fun gtk_widget_get_pango_context(widget : GtkWidget*) : PangoContext
  fun gtk_widget_get_parent(widget : GtkWidget*) : GtkWidget*
  fun gtk_widget_get_parent_window(widget : GtkWidget*) : GdkWindow
  fun gtk_widget_get_path(widget : GtkWidget*) : GtkWidgetPath
  fun gtk_widget_get_pointer(widget : GtkWidget*, x : Gint*, y : Gint*)
  fun gtk_widget_get_preferred_height(widget : GtkWidget*, minimum_height : Gint*, natural_height : Gint*)
  fun gtk_widget_get_preferred_height_and_baseline_for_width(widget : GtkWidget*, width : Gint, minimum_height : Gint*, natural_height : Gint*, minimum_baseline : Gint*, natural_baseline : Gint*)
  fun gtk_widget_get_preferred_height_for_width(widget : GtkWidget*, width : Gint, minimum_height : Gint*, natural_height : Gint*)
  fun gtk_widget_get_preferred_size(widget : GtkWidget*, minimum_size : GtkRequisition*, natural_size : GtkRequisition*)
  fun gtk_widget_get_preferred_width(widget : GtkWidget*, minimum_width : Gint*, natural_width : Gint*)
  fun gtk_widget_get_preferred_width_for_height(widget : GtkWidget*, height : Gint, minimum_width : Gint*, natural_width : Gint*)
  fun gtk_widget_get_realized(widget : GtkWidget*) : Gboolean
  fun gtk_widget_get_receives_default(widget : GtkWidget*) : Gboolean
  fun gtk_widget_get_request_mode(widget : GtkWidget*) : GtkSizeRequestMode
  fun gtk_widget_get_requisition(widget : GtkWidget*, requisition : GtkRequisition*)
  fun gtk_widget_get_root_window(widget : GtkWidget*) : GdkWindow
  fun gtk_widget_get_scale_factor(widget : GtkWidget*) : Gint
  fun gtk_widget_get_screen(widget : GtkWidget*) : GdkScreen
  fun gtk_widget_get_sensitive(widget : GtkWidget*) : Gboolean
  fun gtk_widget_get_settings(widget : GtkWidget*) : GtkSettings*
  fun gtk_widget_get_size_request(widget : GtkWidget*, width : Gint*, height : Gint*)
  fun gtk_widget_get_state(widget : GtkWidget*) : GtkStateType
  fun gtk_widget_get_state_flags(widget : GtkWidget*) : GtkStateFlags
  fun gtk_widget_get_style(widget : GtkWidget*) : GtkStyle*
  fun gtk_widget_get_style_context(widget : GtkWidget*) : GtkStyleContext*
  fun gtk_widget_get_support_multidevice(widget : GtkWidget*) : Gboolean
  fun gtk_widget_get_template_child(widget : GtkWidget*, widget_type : GType, name : Gchar*) : GObject*
  fun gtk_widget_get_tooltip_markup(widget : GtkWidget*) : Gchar*
  fun gtk_widget_get_tooltip_text(widget : GtkWidget*) : Gchar*
  fun gtk_widget_get_tooltip_window(widget : GtkWidget*) : GtkWindow*
  fun gtk_widget_get_toplevel(widget : GtkWidget*) : GtkWidget*
  fun gtk_widget_get_type : GType
  fun gtk_widget_get_valign(widget : GtkWidget*) : GtkAlign
  fun gtk_widget_get_valign_with_baseline(widget : GtkWidget*) : GtkAlign
  fun gtk_widget_get_vexpand(widget : GtkWidget*) : Gboolean
  fun gtk_widget_get_vexpand_set(widget : GtkWidget*) : Gboolean
  fun gtk_widget_get_visible(widget : GtkWidget*) : Gboolean
  fun gtk_widget_get_visual(widget : GtkWidget*) : GdkVisual
  fun gtk_widget_get_window(widget : GtkWidget*) : GdkWindow
  fun gtk_widget_grab_default(widget : GtkWidget*)
  fun gtk_widget_grab_focus(widget : GtkWidget*)
  fun gtk_widget_has_default(widget : GtkWidget*) : Gboolean
  fun gtk_widget_has_focus(widget : GtkWidget*) : Gboolean
  fun gtk_widget_has_grab(widget : GtkWidget*) : Gboolean
  fun gtk_widget_has_rc_style(widget : GtkWidget*) : Gboolean
  fun gtk_widget_has_screen(widget : GtkWidget*) : Gboolean
  fun gtk_widget_has_visible_focus(widget : GtkWidget*) : Gboolean
  fun gtk_widget_help_type_get_type : GType
  fun gtk_widget_hide(widget : GtkWidget*)
  fun gtk_widget_hide_on_delete(widget : GtkWidget*) : Gboolean
  fun gtk_widget_in_destruction(widget : GtkWidget*) : Gboolean
  fun gtk_widget_init_template(widget : GtkWidget*)
  fun gtk_widget_input_shape_combine_region(widget : GtkWidget*, region : CairoRegionT)
  fun gtk_widget_insert_action_group(widget : GtkWidget*, name : Gchar*, group : GActionGroup)
  fun gtk_widget_intersect(widget : GtkWidget*, area : GdkRectangle*, intersection : GdkRectangle*) : Gboolean
  fun gtk_widget_is_ancestor(widget : GtkWidget*, ancestor : GtkWidget*) : Gboolean
  fun gtk_widget_is_composited(widget : GtkWidget*) : Gboolean
  fun gtk_widget_is_drawable(widget : GtkWidget*) : Gboolean
  fun gtk_widget_is_focus(widget : GtkWidget*) : Gboolean
  fun gtk_widget_is_sensitive(widget : GtkWidget*) : Gboolean
  fun gtk_widget_is_toplevel(widget : GtkWidget*) : Gboolean
  fun gtk_widget_is_visible(widget : GtkWidget*) : Gboolean
  fun gtk_widget_keynav_failed(widget : GtkWidget*, direction : GtkDirectionType) : Gboolean
  fun gtk_widget_list_accel_closures(widget : GtkWidget*) : GList*
  fun gtk_widget_list_action_prefixes(widget : GtkWidget*) : Gchar**
  fun gtk_widget_list_mnemonic_labels(widget : GtkWidget*) : GList*
  fun gtk_widget_map(widget : GtkWidget*)
  fun gtk_widget_mnemonic_activate(widget : GtkWidget*, group_cycling : Gboolean) : Gboolean
  fun gtk_widget_modify_base(widget : GtkWidget*, state : GtkStateType, color : GdkColor*)
  fun gtk_widget_modify_bg(widget : GtkWidget*, state : GtkStateType, color : GdkColor*)
  fun gtk_widget_modify_cursor(widget : GtkWidget*, primary : GdkColor*, secondary : GdkColor*)
  fun gtk_widget_modify_fg(widget : GtkWidget*, state : GtkStateType, color : GdkColor*)
  fun gtk_widget_modify_font(widget : GtkWidget*, font_desc : PangoFontDescription)
  fun gtk_widget_modify_style(widget : GtkWidget*, style : GtkRcStyle*)
  fun gtk_widget_modify_text(widget : GtkWidget*, state : GtkStateType, color : GdkColor*)
  fun gtk_widget_new(type : GType, first_property_name : Gchar*, ...) : GtkWidget*
  fun gtk_widget_override_background_color(widget : GtkWidget*, state : GtkStateFlags, color : GdkRgba*)
  fun gtk_widget_override_color(widget : GtkWidget*, state : GtkStateFlags, color : GdkRgba*)
  fun gtk_widget_override_cursor(widget : GtkWidget*, cursor : GdkRgba*, secondary_cursor : GdkRgba*)
  fun gtk_widget_override_font(widget : GtkWidget*, font_desc : PangoFontDescription)
  fun gtk_widget_override_symbolic_color(widget : GtkWidget*, name : Gchar*, color : GdkRgba*)
  fun gtk_widget_path(widget : GtkWidget*, path_length : Guint*, path : Gchar**, path_reversed : Gchar**)
  fun gtk_widget_path_append_for_widget(path : GtkWidgetPath, widget : GtkWidget*) : Gint
  fun gtk_widget_path_append_type(path : GtkWidgetPath, type : GType) : Gint
  fun gtk_widget_path_append_with_siblings(path : GtkWidgetPath, siblings : GtkWidgetPath, sibling_index : Guint) : Gint
  fun gtk_widget_path_copy(path : GtkWidgetPath) : GtkWidgetPath
  fun gtk_widget_path_free(path : GtkWidgetPath)
  fun gtk_widget_path_get_object_type(path : GtkWidgetPath) : GType
  fun gtk_widget_path_get_type : GType
  fun gtk_widget_path_has_parent(path : GtkWidgetPath, type : GType) : Gboolean
  fun gtk_widget_path_is_type(path : GtkWidgetPath, type : GType) : Gboolean
  fun gtk_widget_path_iter_add_class(path : GtkWidgetPath, pos : Gint, name : Gchar*)
  fun gtk_widget_path_iter_add_qclass(path : GtkWidgetPath, pos : Gint, qname : GQuark)
  fun gtk_widget_path_iter_add_region(path : GtkWidgetPath, pos : Gint, name : Gchar*, flags : GtkRegionFlags)
  fun gtk_widget_path_iter_clear_classes(path : GtkWidgetPath, pos : Gint)
  fun gtk_widget_path_iter_clear_regions(path : GtkWidgetPath, pos : Gint)
  fun gtk_widget_path_iter_get_name(path : GtkWidgetPath, pos : Gint) : Gchar*
  fun gtk_widget_path_iter_get_object_type(path : GtkWidgetPath, pos : Gint) : GType
  fun gtk_widget_path_iter_get_sibling_index(path : GtkWidgetPath, pos : Gint) : Guint
  fun gtk_widget_path_iter_get_siblings(path : GtkWidgetPath, pos : Gint) : GtkWidgetPath
  fun gtk_widget_path_iter_get_state(path : GtkWidgetPath, pos : Gint) : GtkStateFlags
  fun gtk_widget_path_iter_has_class(path : GtkWidgetPath, pos : Gint, name : Gchar*) : Gboolean
  fun gtk_widget_path_iter_has_name(path : GtkWidgetPath, pos : Gint, name : Gchar*) : Gboolean
  fun gtk_widget_path_iter_has_qclass(path : GtkWidgetPath, pos : Gint, qname : GQuark) : Gboolean
  fun gtk_widget_path_iter_has_qname(path : GtkWidgetPath, pos : Gint, qname : GQuark) : Gboolean
  fun gtk_widget_path_iter_has_qregion(path : GtkWidgetPath, pos : Gint, qname : GQuark, flags : GtkRegionFlags*) : Gboolean
  fun gtk_widget_path_iter_has_region(path : GtkWidgetPath, pos : Gint, name : Gchar*, flags : GtkRegionFlags*) : Gboolean
  fun gtk_widget_path_iter_list_classes(path : GtkWidgetPath, pos : Gint) : GsList*
  fun gtk_widget_path_iter_list_regions(path : GtkWidgetPath, pos : Gint) : GsList*
  fun gtk_widget_path_iter_remove_class(path : GtkWidgetPath, pos : Gint, name : Gchar*)
  fun gtk_widget_path_iter_remove_region(path : GtkWidgetPath, pos : Gint, name : Gchar*)
  fun gtk_widget_path_iter_set_name(path : GtkWidgetPath, pos : Gint, name : Gchar*)
  fun gtk_widget_path_iter_set_object_type(path : GtkWidgetPath, pos : Gint, type : GType)
  fun gtk_widget_path_iter_set_state(path : GtkWidgetPath, pos : Gint, state : GtkStateFlags)
  fun gtk_widget_path_length(path : GtkWidgetPath) : Gint
  fun gtk_widget_path_new : GtkWidgetPath
  fun gtk_widget_path_prepend_type(path : GtkWidgetPath, type : GType)
  fun gtk_widget_path_ref(path : GtkWidgetPath) : GtkWidgetPath
  fun gtk_widget_path_to_string(path : GtkWidgetPath) : LibC::Char*
  fun gtk_widget_path_unref(path : GtkWidgetPath)
  fun gtk_widget_pop_composite_child
  fun gtk_widget_push_composite_child
  fun gtk_widget_queue_compute_expand(widget : GtkWidget*)
  fun gtk_widget_queue_draw(widget : GtkWidget*)
  fun gtk_widget_queue_draw_area(widget : GtkWidget*, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_widget_queue_draw_region(widget : GtkWidget*, region : CairoRegionT)
  fun gtk_widget_queue_resize(widget : GtkWidget*)
  fun gtk_widget_queue_resize_no_redraw(widget : GtkWidget*)
  fun gtk_widget_realize(widget : GtkWidget*)
  fun gtk_widget_region_intersect(widget : GtkWidget*, region : CairoRegionT) : CairoRegionT
  fun gtk_widget_register_window(widget : GtkWidget*, window : GdkWindow)
  fun gtk_widget_remove_accelerator(widget : GtkWidget*, accel_group : GtkAccelGroup*, accel_key : Guint, accel_mods : GdkModifierType) : Gboolean
  fun gtk_widget_remove_mnemonic_label(widget : GtkWidget*, label : GtkWidget*)
  fun gtk_widget_remove_tick_callback(widget : GtkWidget*, id : Guint)
  fun gtk_widget_render_icon(widget : GtkWidget*, stock_id : Gchar*, size : GtkIconSize, detail : Gchar*) : GdkPixbuf
  fun gtk_widget_render_icon_pixbuf(widget : GtkWidget*, stock_id : Gchar*, size : GtkIconSize) : GdkPixbuf
  fun gtk_widget_reparent(widget : GtkWidget*, new_parent : GtkWidget*)
  fun gtk_widget_reset_rc_styles(widget : GtkWidget*)
  fun gtk_widget_reset_style(widget : GtkWidget*)
  fun gtk_widget_send_expose(widget : GtkWidget*, event : GdkEvent*) : Gint
  fun gtk_widget_send_focus_change(widget : GtkWidget*, event : GdkEvent*) : Gboolean
  fun gtk_widget_set_accel_path(widget : GtkWidget*, accel_path : Gchar*, accel_group : GtkAccelGroup*)
  fun gtk_widget_set_allocation(widget : GtkWidget*, allocation : GtkAllocation*)
  fun gtk_widget_set_app_paintable(widget : GtkWidget*, app_paintable : Gboolean)
  fun gtk_widget_set_can_default(widget : GtkWidget*, can_default : Gboolean)
  fun gtk_widget_set_can_focus(widget : GtkWidget*, can_focus : Gboolean)
  fun gtk_widget_set_child_visible(widget : GtkWidget*, is_visible : Gboolean)
  fun gtk_widget_set_clip(widget : GtkWidget*, clip : GtkAllocation*)
  fun gtk_widget_set_composite_name(widget : GtkWidget*, name : Gchar*)
  fun gtk_widget_set_default_direction(dir : GtkTextDirection)
  fun gtk_widget_set_device_enabled(widget : GtkWidget*, device : GdkDevice, enabled : Gboolean)
  fun gtk_widget_set_device_events(widget : GtkWidget*, device : GdkDevice, events : GdkEventMask)
  fun gtk_widget_set_direction(widget : GtkWidget*, dir : GtkTextDirection)
  fun gtk_widget_set_double_buffered(widget : GtkWidget*, double_buffered : Gboolean)
  fun gtk_widget_set_events(widget : GtkWidget*, events : Gint)
  fun gtk_widget_set_font_map(widget : GtkWidget*, font_map : PangoFontMap)
  fun gtk_widget_set_font_options(widget : GtkWidget*, options : CairoFontOptionsT)
  fun gtk_widget_set_halign(widget : GtkWidget*, align : GtkAlign)
  fun gtk_widget_set_has_tooltip(widget : GtkWidget*, has_tooltip : Gboolean)
  fun gtk_widget_set_has_window(widget : GtkWidget*, has_window : Gboolean)
  fun gtk_widget_set_hexpand(widget : GtkWidget*, expand : Gboolean)
  fun gtk_widget_set_hexpand_set(widget : GtkWidget*, set : Gboolean)
  fun gtk_widget_set_mapped(widget : GtkWidget*, mapped : Gboolean)
  fun gtk_widget_set_margin_bottom(widget : GtkWidget*, margin : Gint)
  fun gtk_widget_set_margin_end(widget : GtkWidget*, margin : Gint)
  fun gtk_widget_set_margin_left(widget : GtkWidget*, margin : Gint)
  fun gtk_widget_set_margin_right(widget : GtkWidget*, margin : Gint)
  fun gtk_widget_set_margin_start(widget : GtkWidget*, margin : Gint)
  fun gtk_widget_set_margin_top(widget : GtkWidget*, margin : Gint)
  fun gtk_widget_set_name(widget : GtkWidget*, name : Gchar*)
  fun gtk_widget_set_no_show_all(widget : GtkWidget*, no_show_all : Gboolean)
  fun gtk_widget_set_opacity(widget : GtkWidget*, opacity : LibC::Double)
  fun gtk_widget_set_parent(widget : GtkWidget*, parent : GtkWidget*)
  fun gtk_widget_set_parent_window(widget : GtkWidget*, parent_window : GdkWindow)
  fun gtk_widget_set_realized(widget : GtkWidget*, realized : Gboolean)
  fun gtk_widget_set_receives_default(widget : GtkWidget*, receives_default : Gboolean)
  fun gtk_widget_set_redraw_on_allocate(widget : GtkWidget*, redraw_on_allocate : Gboolean)
  fun gtk_widget_set_sensitive(widget : GtkWidget*, sensitive : Gboolean)
  fun gtk_widget_set_size_request(widget : GtkWidget*, width : Gint, height : Gint)
  fun gtk_widget_set_state(widget : GtkWidget*, state : GtkStateType)
  fun gtk_widget_set_state_flags(widget : GtkWidget*, flags : GtkStateFlags, clear : Gboolean)
  fun gtk_widget_set_style(widget : GtkWidget*, style : GtkStyle*)
  fun gtk_widget_set_support_multidevice(widget : GtkWidget*, support_multidevice : Gboolean)
  fun gtk_widget_set_tooltip_markup(widget : GtkWidget*, markup : Gchar*)
  fun gtk_widget_set_tooltip_text(widget : GtkWidget*, text : Gchar*)
  fun gtk_widget_set_tooltip_window(widget : GtkWidget*, custom_window : GtkWindow*)
  fun gtk_widget_set_valign(widget : GtkWidget*, align : GtkAlign)
  fun gtk_widget_set_vexpand(widget : GtkWidget*, expand : Gboolean)
  fun gtk_widget_set_vexpand_set(widget : GtkWidget*, set : Gboolean)
  fun gtk_widget_set_visible(widget : GtkWidget*, visible : Gboolean)
  fun gtk_widget_set_visual(widget : GtkWidget*, visual : GdkVisual)
  fun gtk_widget_set_window(widget : GtkWidget*, window : GdkWindow)
  fun gtk_widget_shape_combine_region(widget : GtkWidget*, region : CairoRegionT)
  fun gtk_widget_show(widget : GtkWidget*)
  fun gtk_widget_show_all(widget : GtkWidget*)
  fun gtk_widget_show_now(widget : GtkWidget*)
  fun gtk_widget_size_allocate(widget : GtkWidget*, allocation : GtkAllocation*)
  fun gtk_widget_size_allocate_with_baseline(widget : GtkWidget*, allocation : GtkAllocation*, baseline : Gint)
  fun gtk_widget_size_request(widget : GtkWidget*, requisition : GtkRequisition*)
  fun gtk_widget_style_attach(widget : GtkWidget*)
  fun gtk_widget_style_get(widget : GtkWidget*, first_property_name : Gchar*, ...)
  fun gtk_widget_style_get_property(widget : GtkWidget*, property_name : Gchar*, value : GValue*)
  fun gtk_widget_style_get_valist(widget : GtkWidget*, first_property_name : Gchar*, var_args : VaList)
  fun gtk_widget_thaw_child_notify(widget : GtkWidget*)
  fun gtk_widget_translate_coordinates(src_widget : GtkWidget*, dest_widget : GtkWidget*, src_x : Gint, src_y : Gint, dest_x : Gint*, dest_y : Gint*) : Gboolean
  fun gtk_widget_trigger_tooltip_query(widget : GtkWidget*)
  fun gtk_widget_unmap(widget : GtkWidget*)
  fun gtk_widget_unparent(widget : GtkWidget*)
  fun gtk_widget_unrealize(widget : GtkWidget*)
  fun gtk_widget_unregister_window(widget : GtkWidget*, window : GdkWindow)
  fun gtk_widget_unset_state_flags(widget : GtkWidget*, flags : GtkStateFlags)
  fun gtk_window_activate_default(window : GtkWindow*) : Gboolean
  fun gtk_window_activate_focus(window : GtkWindow*) : Gboolean
  fun gtk_window_activate_key(window : GtkWindow*, event : GdkEventKey*) : Gboolean
  fun gtk_window_add_accel_group(window : GtkWindow*, accel_group : GtkAccelGroup*)
  fun gtk_window_add_mnemonic(window : GtkWindow*, keyval : Guint, target : GtkWidget*)
  fun gtk_window_begin_move_drag(window : GtkWindow*, button : Gint, root_x : Gint, root_y : Gint, timestamp : Guint32)
  fun gtk_window_begin_resize_drag(window : GtkWindow*, edge : GdkWindowEdge, button : Gint, root_x : Gint, root_y : Gint, timestamp : Guint32)
  fun gtk_window_close(window : GtkWindow*)
  fun gtk_window_deiconify(window : GtkWindow*)
  fun gtk_window_fullscreen(window : GtkWindow*)
  fun gtk_window_fullscreen_on_monitor(window : GtkWindow*, screen : GdkScreen, monitor : Gint)
  fun gtk_window_get_accept_focus(window : GtkWindow*) : Gboolean
  fun gtk_window_get_application(window : GtkWindow*) : GtkApplication*
  fun gtk_window_get_attached_to(window : GtkWindow*) : GtkWidget*
  fun gtk_window_get_decorated(window : GtkWindow*) : Gboolean
  fun gtk_window_get_default_icon_list : GList*
  fun gtk_window_get_default_icon_name : Gchar*
  fun gtk_window_get_default_size(window : GtkWindow*, width : Gint*, height : Gint*)
  fun gtk_window_get_default_widget(window : GtkWindow*) : GtkWidget*
  fun gtk_window_get_deletable(window : GtkWindow*) : Gboolean
  fun gtk_window_get_destroy_with_parent(window : GtkWindow*) : Gboolean
  fun gtk_window_get_focus(window : GtkWindow*) : GtkWidget*
  fun gtk_window_get_focus_on_map(window : GtkWindow*) : Gboolean
  fun gtk_window_get_focus_visible(window : GtkWindow*) : Gboolean
  fun gtk_window_get_gravity(window : GtkWindow*) : GdkGravity
  fun gtk_window_get_group(window : GtkWindow*) : GtkWindowGroup*
  fun gtk_window_get_has_resize_grip(window : GtkWindow*) : Gboolean
  fun gtk_window_get_hide_titlebar_when_maximized(window : GtkWindow*) : Gboolean
  fun gtk_window_get_icon(window : GtkWindow*) : GdkPixbuf
  fun gtk_window_get_icon_list(window : GtkWindow*) : GList*
  fun gtk_window_get_icon_name(window : GtkWindow*) : Gchar*
  fun gtk_window_get_mnemonic_modifier(window : GtkWindow*) : GdkModifierType
  fun gtk_window_get_mnemonics_visible(window : GtkWindow*) : Gboolean
  fun gtk_window_get_modal(window : GtkWindow*) : Gboolean
  fun gtk_window_get_opacity(window : GtkWindow*) : Gdouble
  fun gtk_window_get_position(window : GtkWindow*, root_x : Gint*, root_y : Gint*)
  fun gtk_window_get_resizable(window : GtkWindow*) : Gboolean
  fun gtk_window_get_resize_grip_area(window : GtkWindow*, rect : GdkRectangle*) : Gboolean
  fun gtk_window_get_role(window : GtkWindow*) : Gchar*
  fun gtk_window_get_screen(window : GtkWindow*) : GdkScreen
  fun gtk_window_get_size(window : GtkWindow*, width : Gint*, height : Gint*)
  fun gtk_window_get_skip_pager_hint(window : GtkWindow*) : Gboolean
  fun gtk_window_get_skip_taskbar_hint(window : GtkWindow*) : Gboolean
  fun gtk_window_get_title(window : GtkWindow*) : Gchar*
  fun gtk_window_get_titlebar(window : GtkWindow*) : GtkWidget*
  fun gtk_window_get_transient_for(window : GtkWindow*) : GtkWindow*
  fun gtk_window_get_type : GType
  fun gtk_window_get_type_hint(window : GtkWindow*) : GdkWindowTypeHint
  fun gtk_window_get_urgency_hint(window : GtkWindow*) : Gboolean
  fun gtk_window_get_window_type(window : GtkWindow*) : GtkWindowType
  fun gtk_window_group_add_window(window_group : GtkWindowGroup*, window : GtkWindow*)
  fun gtk_window_group_get_current_device_grab(window_group : GtkWindowGroup*, device : GdkDevice) : GtkWidget*
  fun gtk_window_group_get_current_grab(window_group : GtkWindowGroup*) : GtkWidget*
  fun gtk_window_group_get_type : GType
  fun gtk_window_group_list_windows(window_group : GtkWindowGroup*) : GList*
  fun gtk_window_group_new : GtkWindowGroup*
  fun gtk_window_group_remove_window(window_group : GtkWindowGroup*, window : GtkWindow*)
  fun gtk_window_has_group(window : GtkWindow*) : Gboolean
  fun gtk_window_has_toplevel_focus(window : GtkWindow*) : Gboolean
  fun gtk_window_iconify(window : GtkWindow*)
  fun gtk_window_is_active(window : GtkWindow*) : Gboolean
  fun gtk_window_is_maximized(window : GtkWindow*) : Gboolean
  fun gtk_window_list_toplevels : GList*
  fun gtk_window_maximize(window : GtkWindow*)
  fun gtk_window_mnemonic_activate(window : GtkWindow*, keyval : Guint, modifier : GdkModifierType) : Gboolean
  fun gtk_window_move(window : GtkWindow*, x : Gint, y : Gint)
  fun gtk_window_new(type : GtkWindowType) : GtkWidget*
  fun gtk_window_parse_geometry(window : GtkWindow*, geometry : Gchar*) : Gboolean
  fun gtk_window_position_get_type : GType
  fun gtk_window_present(window : GtkWindow*)
  fun gtk_window_present_with_time(window : GtkWindow*, timestamp : Guint32)
  fun gtk_window_propagate_key_event(window : GtkWindow*, event : GdkEventKey*) : Gboolean
  fun gtk_window_remove_accel_group(window : GtkWindow*, accel_group : GtkAccelGroup*)
  fun gtk_window_remove_mnemonic(window : GtkWindow*, keyval : Guint, target : GtkWidget*)
  fun gtk_window_reshow_with_initial_size(window : GtkWindow*)
  fun gtk_window_resize(window : GtkWindow*, width : Gint, height : Gint)
  fun gtk_window_resize_grip_is_visible(window : GtkWindow*) : Gboolean
  fun gtk_window_resize_to_geometry(window : GtkWindow*, width : Gint, height : Gint)
  fun gtk_window_set_accept_focus(window : GtkWindow*, setting : Gboolean)
  fun gtk_window_set_application(window : GtkWindow*, application : GtkApplication*)
  fun gtk_window_set_attached_to(window : GtkWindow*, attach_widget : GtkWidget*)
  fun gtk_window_set_auto_startup_notification(setting : Gboolean)
  fun gtk_window_set_decorated(window : GtkWindow*, setting : Gboolean)
  fun gtk_window_set_default(window : GtkWindow*, default_widget : GtkWidget*)
  fun gtk_window_set_default_geometry(window : GtkWindow*, width : Gint, height : Gint)
  fun gtk_window_set_default_icon(icon : GdkPixbuf)
  fun gtk_window_set_default_icon_from_file(filename : Gchar*, err : GError**) : Gboolean
  fun gtk_window_set_default_icon_list(list : GList*)
  fun gtk_window_set_default_icon_name(name : Gchar*)
  fun gtk_window_set_default_size(window : GtkWindow*, width : Gint, height : Gint)
  fun gtk_window_set_deletable(window : GtkWindow*, setting : Gboolean)
  fun gtk_window_set_destroy_with_parent(window : GtkWindow*, setting : Gboolean)
  fun gtk_window_set_focus(window : GtkWindow*, focus : GtkWidget*)
  fun gtk_window_set_focus_on_map(window : GtkWindow*, setting : Gboolean)
  fun gtk_window_set_focus_visible(window : GtkWindow*, setting : Gboolean)
  fun gtk_window_set_geometry_hints(window : GtkWindow*, geometry_widget : GtkWidget*, geometry : GdkGeometry*, geom_mask : GdkWindowHints)
  fun gtk_window_set_gravity(window : GtkWindow*, gravity : GdkGravity)
  fun gtk_window_set_has_resize_grip(window : GtkWindow*, value : Gboolean)
  fun gtk_window_set_has_user_ref_count(window : GtkWindow*, setting : Gboolean)
  fun gtk_window_set_hide_titlebar_when_maximized(window : GtkWindow*, setting : Gboolean)
  fun gtk_window_set_icon(window : GtkWindow*, icon : GdkPixbuf)
  fun gtk_window_set_icon_from_file(window : GtkWindow*, filename : Gchar*, err : GError**) : Gboolean
  fun gtk_window_set_icon_list(window : GtkWindow*, list : GList*)
  fun gtk_window_set_icon_name(window : GtkWindow*, name : Gchar*)
  fun gtk_window_set_interactive_debugging(enable : Gboolean)
  fun gtk_window_set_keep_above(window : GtkWindow*, setting : Gboolean)
  fun gtk_window_set_keep_below(window : GtkWindow*, setting : Gboolean)
  fun gtk_window_set_mnemonic_modifier(window : GtkWindow*, modifier : GdkModifierType)
  fun gtk_window_set_mnemonics_visible(window : GtkWindow*, setting : Gboolean)
  fun gtk_window_set_modal(window : GtkWindow*, modal : Gboolean)
  fun gtk_window_set_opacity(window : GtkWindow*, opacity : Gdouble)
  fun gtk_window_set_position(window : GtkWindow*, position : GtkWindowPosition)
  fun gtk_window_set_resizable(window : GtkWindow*, resizable : Gboolean)
  fun gtk_window_set_role(window : GtkWindow*, role : Gchar*)
  fun gtk_window_set_screen(window : GtkWindow*, screen : GdkScreen)
  fun gtk_window_set_skip_pager_hint(window : GtkWindow*, setting : Gboolean)
  fun gtk_window_set_skip_taskbar_hint(window : GtkWindow*, setting : Gboolean)
  fun gtk_window_set_startup_id(window : GtkWindow*, startup_id : Gchar*)
  fun gtk_window_set_title(window : GtkWindow*, title : Gchar*)
  fun gtk_window_set_titlebar(window : GtkWindow*, titlebar : GtkWidget*)
  fun gtk_window_set_transient_for(window : GtkWindow*, parent : GtkWindow*)
  fun gtk_window_set_type_hint(window : GtkWindow*, hint : GdkWindowTypeHint)
  fun gtk_window_set_urgency_hint(window : GtkWindow*, setting : Gboolean)
  fun gtk_window_set_wmclass(window : GtkWindow*, wmclass_name : Gchar*, wmclass_class : Gchar*)
  fun gtk_window_stick(window : GtkWindow*)
  fun gtk_window_type_get_type : GType
  fun gtk_window_unfullscreen(window : GtkWindow*)
  fun gtk_window_unmaximize(window : GtkWindow*)
  fun gtk_window_unstick(window : GtkWindow*)
  fun gtk_wrap_mode_get_type : GType

  struct X_AtkObject
    parent : GObject
    description : Gchar*
    name : Gchar*
    accessible_parent : AtkObject*
    role : AtkRole
    relation_set : AtkRelationSet*
    layer : AtkLayer
  end

  struct X_AtkRelationSet
    parent : GObject
    relations : GPtrArray*
  end

  struct X_CairoRectangleInt
    x : LibC::Int
    y : LibC::Int
    width : LibC::Int
    height : LibC::Int
  end

  struct X_GApplication
    parent_instance : GObject
    priv : GApplicationPrivate
  end

  struct X_GArray
    data : Gchar*
    len : Guint
  end

  struct X_GCancellable
    parent_instance : GObject
    priv : GCancellablePrivate
  end

  struct X_GClosure
    ref_count : Guint
    meta_marshal_nouse : Guint
    n_guards : Guint
    n_fnotifiers : Guint
    n_inotifiers : Guint
    in_inotify : Guint
    floating : Guint
    derivative_flag : Guint
    in_marshal : Guint
    is_invalid : Guint
    marshal : (GClosure*, GValue*, Guint, GValue*, Gpointer, Gpointer -> Void)
    data : Gpointer
    notifiers : GClosureNotifyData*
  end

  struct X_GClosureNotifyData
    data : Gpointer
    notify : GClosureNotify
  end

  struct X_GEmblemedIcon
    parent_instance : GObject
    priv : GEmblemedIconPrivate
  end

  struct X_GError
    domain : GQuark
    code : Gint
    message : Gchar*
  end

  struct X_GList
    data : Gpointer
    next : GList*
    prev : GList*
  end

  struct X_GMarkupParser
    start_element : (GMarkupParseContext, Gchar*, Gchar**, Gchar**, Gpointer, GError** -> Void)
    end_element : (GMarkupParseContext, Gchar*, Gpointer, GError** -> Void)
    text : (GMarkupParseContext, Gchar*, Gsize, Gpointer, GError** -> Void)
    passthrough : (GMarkupParseContext, Gchar*, Gsize, Gpointer, GError** -> Void)
    error : (GMarkupParseContext, GError*, Gpointer -> Void)
  end

  struct X_GMenuModel
    parent_instance : GObject
    priv : GMenuModelPrivate
  end

  struct X_GMountOperation
    parent_instance : GObject
    priv : GMountOperationPrivate
  end

  struct X_GObject
    g_type_instance : GTypeInstance
    ref_count : Guint
    qdata : GData
  end

  struct X_GObjectClass
    g_type_class : GTypeClass
    construct_properties : GsList*
    constructor : (GType, Guint, GObjectConstructParam* -> GObject*)
    set_property : (GObject*, Guint, GValue*, GParamSpec* -> Void)
    get_property : (GObject*, Guint, GValue*, GParamSpec* -> Void)
    dispose : (GObject* -> Void)
    finalize : (GObject* -> Void)
    dispatch_properties_changed : (GObject*, Guint, GParamSpec** -> Void)
    notify : (GObject*, GParamSpec* -> Void)
    constructed : (GObject* -> Void)
    flags : Gsize
    pdummy : Gpointer[6]
  end

  struct X_GObjectConstructParam
    pspec : GParamSpec*
    value : GValue*
  end

  struct X_GOptionEntry
    long_name : Gchar*
    short_name : Gchar
    flags : Gint
    arg : GOptionArg
    arg_data : Gpointer
    description : Gchar*
    arg_description : Gchar*
  end

  struct X_GParamSpec
    g_type_instance : GTypeInstance
    name : Gchar*
    flags : GParamFlags
    value_type : GType
    owner_type : GType
    _nick : Gchar*
    _blurb : Gchar*
    qdata : GData
    ref_count : Guint
    param_id : Guint
  end

  struct X_GPermission
    parent_instance : GObject
    priv : GPermissionPrivate
  end

  struct X_GPtrArray
    pdata : Gpointer*
    len : Guint
  end

  struct X_GScanner
    user_data : Gpointer
    max_parse_errors : Guint
    parse_errors : Guint
    input_name : Gchar*
    qdata : GData
    config : GScannerConfig*
    token : GTokenType
    value : GTokenValue
    line : Guint
    position : Guint
    next_token : GTokenType
    next_value : GTokenValue
    next_line : Guint
    next_position : Guint
    symbol_table : GHashTable
    input_fd : Gint
    text : Gchar*
    text_end : Gchar*
    buffer : Gchar*
    scope_id : Guint
    msg_handler : GScannerMsgFunc
  end

  struct X_GScannerConfig
    cset_skip_characters : Gchar*
    cset_identifier_first : Gchar*
    cset_identifier_nth : Gchar*
    cpair_comment_single : Gchar*
    case_sensitive : Guint
    skip_comment_multi : Guint
    skip_comment_single : Guint
    scan_comment_multi : Guint
    scan_identifier : Guint
    scan_identifier_1char : Guint
    scan_identifier_null : Guint
    scan_symbols : Guint
    scan_binary : Guint
    scan_octal : Guint
    scan_float : Guint
    scan_hex : Guint
    scan_hex_dollar : Guint
    scan_string_sq : Guint
    scan_string_dq : Guint
    numbers_2_int : Guint
    int_2_float : Guint
    identifier_2_string : Guint
    char_2_token : Guint
    symbol_2_token : Guint
    scope_0_fallback : Guint
    store_int64 : Guint
    padding_dummy : Guint
  end

  struct X_GString
    str : Gchar*
    len : Gsize
    allocated_len : Gsize
  end

  struct X_GTypeClass
    g_type : GType
  end

  struct X_GTypeInstance
    g_class : GTypeClass*
  end

  struct X_GValue
    g_type : GType
    data : X_GValueData[2]
  end

  struct X_GdkColor
    pixel : Guint32
    red : Guint16
    green : Guint16
    blue : Guint16
  end

  struct X_GdkEventAny
    type : GdkEventType
    window : GdkWindow
    send_event : Gint8
  end

  struct X_GdkEventButton
    type : GdkEventType
    window : GdkWindow
    send_event : Gint8
    time : Guint32
    x : Gdouble
    y : Gdouble
    axes : Gdouble*
    state : Guint
    button : Guint
    device : GdkDevice
    x_root : Gdouble
    y_root : Gdouble
  end

  struct X_GdkEventConfigure
    type : GdkEventType
    window : GdkWindow
    send_event : Gint8
    x : Gint
    y : Gint
    width : Gint
    height : Gint
  end

  struct X_GdkEventCrossing
    type : GdkEventType
    window : GdkWindow
    send_event : Gint8
    subwindow : GdkWindow
    time : Guint32
    x : Gdouble
    y : Gdouble
    x_root : Gdouble
    y_root : Gdouble
    mode : GdkCrossingMode
    detail : GdkNotifyType
    focus : Gboolean
    state : Guint
  end

  struct X_GdkEventDnd
    type : GdkEventType
    window : GdkWindow
    send_event : Gint8
    context : GdkDragContext
    time : Guint32
    x_root : Gshort
    y_root : Gshort
  end

  struct X_GdkEventExpose
    type : GdkEventType
    window : GdkWindow
    send_event : Gint8
    area : GdkRectangle
    region : CairoRegionT
    count : Gint
  end

  struct X_GdkEventFocus
    type : GdkEventType
    window : GdkWindow
    send_event : Gint8
    in : Gint16
  end

  struct X_GdkEventGrabBroken
    type : GdkEventType
    window : GdkWindow
    send_event : Gint8
    keyboard : Gboolean
    implicit : Gboolean
    grab_window : GdkWindow
  end

  struct X_GdkEventKey
    type : GdkEventType
    window : GdkWindow
    send_event : Gint8
    time : Guint32
    state : Guint
    keyval : Guint
    length : Gint
    string : Gchar*
    hardware_keycode : Guint16
    group : Guint8
    is_modifier : Guint
  end

  struct X_GdkEventMotion
    type : GdkEventType
    window : GdkWindow
    send_event : Gint8
    time : Guint32
    x : Gdouble
    y : Gdouble
    axes : Gdouble*
    state : Guint
    is_hint : Gint16
    device : GdkDevice
    x_root : Gdouble
    y_root : Gdouble
  end

  struct X_GdkEventOwnerChange
    type : GdkEventType
    window : GdkWindow
    send_event : Gint8
    owner : GdkWindow
    reason : GdkOwnerChange
    selection : GdkAtom
    time : Guint32
    selection_time : Guint32
  end

  struct X_GdkEventProperty
    type : GdkEventType
    window : GdkWindow
    send_event : Gint8
    atom : GdkAtom
    time : Guint32
    state : Guint
  end

  struct X_GdkEventProximity
    type : GdkEventType
    window : GdkWindow
    send_event : Gint8
    time : Guint32
    device : GdkDevice
  end

  struct X_GdkEventScroll
    type : GdkEventType
    window : GdkWindow
    send_event : Gint8
    time : Guint32
    x : Gdouble
    y : Gdouble
    state : Guint
    direction : GdkScrollDirection
    device : GdkDevice
    x_root : Gdouble
    y_root : Gdouble
    delta_x : Gdouble
    delta_y : Gdouble
  end

  struct X_GdkEventSelection
    type : GdkEventType
    window : GdkWindow
    send_event : Gint8
    selection : GdkAtom
    target : GdkAtom
    property : GdkAtom
    time : Guint32
    requestor : GdkWindow
  end

  struct X_GdkEventSetting
    type : GdkEventType
    window : GdkWindow
    send_event : Gint8
    action : GdkSettingAction
    name : LibC::Char*
  end

  struct X_GdkEventTouch
    type : GdkEventType
    window : GdkWindow
    send_event : Gint8
    time : Guint32
    x : Gdouble
    y : Gdouble
    axes : Gdouble*
    state : Guint
    sequence : GdkEventSequence
    emulating_pointer : Gboolean
    device : GdkDevice
    x_root : Gdouble
    y_root : Gdouble
  end

  struct X_GdkEventTouchpadPinch
    type : GdkEventType
    window : GdkWindow
    send_event : Gint8
    phase : Gint8
    n_fingers : Gint8
    time : Guint32
    x : Gdouble
    y : Gdouble
    dx : Gdouble
    dy : Gdouble
    angle_delta : Gdouble
    scale : Gdouble
    x_root : Gdouble
    y_root : Gdouble
    state : Guint
  end

  struct X_GdkEventTouchpadSwipe
    type : GdkEventType
    window : GdkWindow
    send_event : Gint8
    phase : Gint8
    n_fingers : Gint8
    time : Guint32
    x : Gdouble
    y : Gdouble
    dx : Gdouble
    dy : Gdouble
    x_root : Gdouble
    y_root : Gdouble
    state : Guint
  end

  struct X_GdkEventVisibility
    type : GdkEventType
    window : GdkWindow
    send_event : Gint8
    state : GdkVisibilityState
  end

  struct X_GdkEventWindowState
    type : GdkEventType
    window : GdkWindow
    send_event : Gint8
    changed_mask : GdkWindowState
    new_window_state : GdkWindowState
  end

  struct X_GdkGeometry
    min_width : Gint
    min_height : Gint
    max_width : Gint
    max_height : Gint
    base_width : Gint
    base_height : Gint
    width_inc : Gint
    height_inc : Gint
    min_aspect : Gdouble
    max_aspect : Gdouble
    win_gravity : GdkGravity
  end

  struct X_GdkPoint
    x : Gint
    y : Gint
  end

  struct X_GdkRgba
    red : Gdouble
    green : Gdouble
    blue : Gdouble
    alpha : Gdouble
  end

  struct X_GsList
    data : Gpointer
    next : GsList*
  end

  struct X_GtkAboutDialog
    parent_instance : GtkDialog
    priv : GtkAboutDialogPrivate
  end

  struct X_GtkAccelGroup
    parent : GObject
    priv : GtkAccelGroupPrivate
  end

  struct X_GtkAccelGroupEntry
    key : GtkAccelKey
    closure : GClosure*
    accel_path_quark : GQuark
  end

  struct X_GtkAccelKey
    accel_key : Guint
    accel_mods : GdkModifierType
    accel_flags : Guint
  end

  struct X_GtkAccelLabel
    label : GtkLabel
    priv : GtkAccelLabelPrivate
  end

  struct X_GtkAccessible
    parent : AtkObject
    priv : GtkAccessiblePrivate
  end

  struct X_GtkAction
    object : GObject
    private_data : GtkActionPrivate
  end

  struct X_GtkActionBar
    bin : GtkBin
  end

  struct X_GtkActionEntry
    name : Gchar*
    stock_id : Gchar*
    label : Gchar*
    accelerator : Gchar*
    tooltip : Gchar*
    callback : GCallback
  end

  struct X_GtkActionGroup
    parent : GObject
    priv : GtkActionGroupPrivate
  end

  struct X_GtkAdjustment
    parent_instance : GInitiallyUnowned
    priv : GtkAdjustmentPrivate
  end

  struct X_GtkAlignment
    bin : GtkBin
    priv : GtkAlignmentPrivate
  end

  struct X_GtkAppChooserButton
    parent : GtkComboBox
    priv : GtkAppChooserButtonPrivate
  end

  struct X_GtkAppChooserDialog
    parent : GtkDialog
    priv : GtkAppChooserDialogPrivate
  end

  struct X_GtkAppChooserWidget
    parent : GtkBox
    priv : GtkAppChooserWidgetPrivate
  end

  struct X_GtkApplication
    parent : GApplication
    priv : GtkApplicationPrivate
  end

  struct X_GtkApplicationWindow
    parent_instance : GtkWindow
    priv : GtkApplicationWindowPrivate
  end

  struct X_GtkArrow
    misc : GtkMisc
    priv : GtkArrowPrivate
  end

  struct X_GtkAspectFrame
    frame : GtkFrame
    priv : GtkAspectFramePrivate
  end

  struct X_GtkAssistant
    parent : GtkWindow
    priv : GtkAssistantPrivate
  end

  struct X_GtkBin
    container : GtkContainer
    priv : GtkBinPrivate
  end

  struct X_GtkBindingArg
    arg_type : GType
    d : X_GtkBindingArgD
  end

  struct X_GtkBindingEntry
    keyval : Guint
    modifiers : GdkModifierType
    binding_set : GtkBindingSet*
    destroyed : Guint
    in_emission : Guint
    marks_unbound : Guint
    set_next : GtkBindingEntry*
    hash_next : GtkBindingEntry*
    signals : GtkBindingSignal*
  end

  struct X_GtkBindingSet
    set_name : Gchar*
    priority : Gint
    widget_path_pspecs : GsList*
    widget_class_pspecs : GsList*
    class_branch_pspecs : GsList*
    entries : GtkBindingEntry*
    current : GtkBindingEntry*
    parsed : Guint
  end

  struct X_GtkBindingSignal
    next : GtkBindingSignal*
    signal_name : Gchar*
    n_args : Guint
    args : GtkBindingArg*
  end

  struct X_GtkBorder
    left : Gint16
    right : Gint16
    top : Gint16
    bottom : Gint16
  end

  struct X_GtkBox
    container : GtkContainer
    priv : GtkBoxPrivate
  end

  struct X_GtkBuilder
    parent_instance : GObject
    priv : GtkBuilderPrivate
  end

  struct X_GtkButton
    bin : GtkBin
    priv : GtkButtonPrivate
  end

  struct X_GtkButtonBox
    box : GtkBox
    priv : GtkButtonBoxPrivate
  end

  struct X_GtkCalendar
    widget : GtkWidget
    priv : GtkCalendarPrivate
  end

  struct X_GtkCellArea
    parent_instance : GInitiallyUnowned
    priv : GtkCellAreaPrivate
  end

  struct X_GtkCellAreaBox
    parent_instance : GtkCellArea
    priv : GtkCellAreaBoxPrivate
  end

  struct X_GtkCellAreaClass
    parent_class : GInitiallyUnownedClass
    add : (GtkCellArea*, GtkCellRenderer* -> Void)
    remove : (GtkCellArea*, GtkCellRenderer* -> Void)
    foreach : (GtkCellArea*, GtkCellCallback, Gpointer -> Void)
    foreach_alloc : (GtkCellArea*, GtkCellAreaContext*, GtkWidget*, GdkRectangle*, GdkRectangle*, GtkCellAllocCallback, Gpointer -> Void)
    event : (GtkCellArea*, GtkCellAreaContext*, GtkWidget*, GdkEvent*, GdkRectangle*, GtkCellRendererState -> Gint)
    render : (GtkCellArea*, GtkCellAreaContext*, GtkWidget*, CairoT, GdkRectangle*, GdkRectangle*, GtkCellRendererState, Gboolean -> Void)
    apply_attributes : (GtkCellArea*, GtkTreeModel, GtkTreeIter*, Gboolean, Gboolean -> Void)
    create_context : (GtkCellArea* -> GtkCellAreaContext*)
    copy_context : (GtkCellArea*, GtkCellAreaContext* -> GtkCellAreaContext*)
    get_request_mode : (GtkCellArea* -> GtkSizeRequestMode)
    get_preferred_width : (GtkCellArea*, GtkCellAreaContext*, GtkWidget*, Gint*, Gint* -> Void)
    get_preferred_height_for_width : (GtkCellArea*, GtkCellAreaContext*, GtkWidget*, Gint, Gint*, Gint* -> Void)
    get_preferred_height : (GtkCellArea*, GtkCellAreaContext*, GtkWidget*, Gint*, Gint* -> Void)
    get_preferred_width_for_height : (GtkCellArea*, GtkCellAreaContext*, GtkWidget*, Gint, Gint*, Gint* -> Void)
    set_cell_property : (GtkCellArea*, GtkCellRenderer*, Guint, GValue*, GParamSpec* -> Void)
    get_cell_property : (GtkCellArea*, GtkCellRenderer*, Guint, GValue*, GParamSpec* -> Void)
    focus : (GtkCellArea*, GtkDirectionType -> Gboolean)
    is_activatable : (GtkCellArea* -> Gboolean)
    activate : (GtkCellArea*, GtkCellAreaContext*, GtkWidget*, GdkRectangle*, GtkCellRendererState, Gboolean -> Gboolean)
    _gtk_reserved1 : (-> Void)
    _gtk_reserved2 : (-> Void)
    _gtk_reserved3 : (-> Void)
    _gtk_reserved4 : (-> Void)
    _gtk_reserved5 : (-> Void)
    _gtk_reserved6 : (-> Void)
    _gtk_reserved7 : (-> Void)
    _gtk_reserved8 : (-> Void)
  end

  struct X_GtkCellAreaContext
    parent_instance : GObject
    priv : GtkCellAreaContextPrivate
  end

  struct X_GtkCellRenderer
    parent_instance : GInitiallyUnowned
    priv : GtkCellRendererPrivate
  end

  struct X_GtkCellRendererClass
    parent_class : GInitiallyUnownedClass
    get_request_mode : (GtkCellRenderer* -> GtkSizeRequestMode)
    get_preferred_width : (GtkCellRenderer*, GtkWidget*, Gint*, Gint* -> Void)
    get_preferred_height_for_width : (GtkCellRenderer*, GtkWidget*, Gint, Gint*, Gint* -> Void)
    get_preferred_height : (GtkCellRenderer*, GtkWidget*, Gint*, Gint* -> Void)
    get_preferred_width_for_height : (GtkCellRenderer*, GtkWidget*, Gint, Gint*, Gint* -> Void)
    get_aligned_area : (GtkCellRenderer*, GtkWidget*, GtkCellRendererState, GdkRectangle*, GdkRectangle* -> Void)
    get_size : (GtkCellRenderer*, GtkWidget*, GdkRectangle*, Gint*, Gint*, Gint*, Gint* -> Void)
    render : (GtkCellRenderer*, CairoT, GtkWidget*, GdkRectangle*, GdkRectangle*, GtkCellRendererState -> Void)
    activate : (GtkCellRenderer*, GdkEvent*, GtkWidget*, Gchar*, GdkRectangle*, GdkRectangle*, GtkCellRendererState -> Gboolean)
    start_editing : (GtkCellRenderer*, GdkEvent*, GtkWidget*, Gchar*, GdkRectangle*, GdkRectangle*, GtkCellRendererState -> GtkCellEditable)
    editing_canceled : (GtkCellRenderer* -> Void)
    editing_started : (GtkCellRenderer*, GtkCellEditable, Gchar* -> Void)
    priv : GtkCellRendererClassPrivate
    _gtk_reserved2 : (-> Void)
    _gtk_reserved3 : (-> Void)
    _gtk_reserved4 : (-> Void)
  end

  struct X_GtkCellRendererText
    parent : GtkCellRenderer
    priv : GtkCellRendererTextPrivate
  end

  struct X_GtkCellRendererToggle
    parent : GtkCellRenderer
    priv : GtkCellRendererTogglePrivate
  end

  struct X_GtkCellView
    parent_instance : GtkWidget
    priv : GtkCellViewPrivate
  end

  struct X_GtkCheckButton
    toggle_button : GtkToggleButton
  end

  struct X_GtkCheckMenuItem
    menu_item : GtkMenuItem
    priv : GtkCheckMenuItemPrivate
  end

  struct X_GtkColorButton
    button : GtkButton
    priv : GtkColorButtonPrivate
  end

  struct X_GtkColorSelection
    parent_instance : GtkBox
    private_data : GtkColorSelectionPrivate
  end

  struct X_GtkColorSelectionDialog
    parent_instance : GtkDialog
    priv : GtkColorSelectionDialogPrivate
  end

  struct X_GtkComboBox
    parent_instance : GtkBin
    priv : GtkComboBoxPrivate
  end

  struct X_GtkComboBoxText
    parent_instance : GtkComboBox
    priv : GtkComboBoxTextPrivate
  end

  struct X_GtkContainer
    widget : GtkWidget
    priv : GtkContainerPrivate
  end

  struct X_GtkContainerClass
    parent_class : GtkWidgetClass
    add : (GtkContainer*, GtkWidget* -> Void)
    remove : (GtkContainer*, GtkWidget* -> Void)
    check_resize : (GtkContainer* -> Void)
    forall : (GtkContainer*, Gboolean, GtkCallback, Gpointer -> Void)
    set_focus_child : (GtkContainer*, GtkWidget* -> Void)
    child_type : (GtkContainer* -> GType)
    composite_name : (GtkContainer*, GtkWidget* -> Gchar*)
    set_child_property : (GtkContainer*, GtkWidget*, Guint, GValue*, GParamSpec* -> Void)
    get_child_property : (GtkContainer*, GtkWidget*, Guint, GValue*, GParamSpec* -> Void)
    get_path_for_child : (GtkContainer*, GtkWidget* -> GtkWidgetPath)
    _handle_border_width : LibC::UInt
    _gtk_reserved1 : (-> Void)
    _gtk_reserved2 : (-> Void)
    _gtk_reserved3 : (-> Void)
    _gtk_reserved4 : (-> Void)
    _gtk_reserved5 : (-> Void)
    _gtk_reserved6 : (-> Void)
    _gtk_reserved7 : (-> Void)
    _gtk_reserved8 : (-> Void)
  end

  struct X_GtkCssProvider
    parent_instance : GObject
    priv : GtkCssProviderPrivate
  end

  struct X_GtkDialog
    window : GtkWindow
    priv : GtkDialogPrivate
  end

  struct X_GtkEntry
    parent_instance : GtkWidget
    priv : GtkEntryPrivate
  end

  struct X_GtkEntryBuffer
    parent_instance : GObject
    priv : GtkEntryBufferPrivate
  end

  struct X_GtkEntryCompletion
    parent_instance : GObject
    priv : GtkEntryCompletionPrivate
  end

  struct X_GtkEventBox
    bin : GtkBin
    priv : GtkEventBoxPrivate
  end

  struct X_GtkExpander
    bin : GtkBin
    priv : GtkExpanderPrivate
  end

  struct X_GtkFileChooserButton
    parent : GtkBox
    priv : GtkFileChooserButtonPrivate
  end

  struct X_GtkFileFilterInfo
    contains : GtkFileFilterFlags
    filename : Gchar*
    uri : Gchar*
    display_name : Gchar*
    mime_type : Gchar*
  end

  struct X_GtkFixed
    container : GtkContainer
    priv : GtkFixedPrivate
  end

  struct X_GtkFlowBox
    container : GtkContainer
  end

  struct X_GtkFlowBoxChild
    parent_instance : GtkBin
  end

  struct X_GtkFontButton
    button : GtkButton
    priv : GtkFontButtonPrivate
  end

  struct X_GtkFontSelection
    parent_instance : GtkBox
    priv : GtkFontSelectionPrivate
  end

  struct X_GtkFontSelectionDialog
    parent_instance : GtkDialog
    priv : GtkFontSelectionDialogPrivate
  end

  struct X_GtkFrame
    bin : GtkBin
    priv : GtkFramePrivate
  end

  struct X_GtkGlArea
    parent_instance : GtkWidget
  end

  struct X_GtkGrid
    container : GtkContainer
    priv : GtkGridPrivate
  end

  struct X_GtkHandleBox
    bin : GtkBin
    priv : GtkHandleBoxPrivate
  end

  struct X_GtkHeaderBar
    container : GtkContainer
  end

  struct X_GtkHsv
    parent_instance : GtkWidget
    priv : GtkHsvPrivate
  end

  struct X_GtkIconFactory
    parent_instance : GObject
    priv : GtkIconFactoryPrivate
  end

  struct X_GtkIconTheme
    parent_instance : GObject
    priv : GtkIconThemePrivate
  end

  struct X_GtkIconView
    parent : GtkContainer
    priv : GtkIconViewPrivate
  end

  struct X_GtkImContext
    parent_instance : GObject
  end

  struct X_GtkImContextSimple
    object : GtkImContext
    priv : GtkImContextSimplePrivate
  end

  struct X_GtkImMulticontext
    object : GtkImContext
    priv : GtkImMulticontextPrivate
  end

  struct X_GtkImage
    misc : GtkMisc
    priv : GtkImagePrivate
  end

  struct X_GtkImageMenuItem
    menu_item : GtkMenuItem
    priv : GtkImageMenuItemPrivate
  end

  struct X_GtkInfoBar
    parent : GtkBox
    priv : GtkInfoBarPrivate
  end

  struct X_GtkInvisible
    widget : GtkWidget
    priv : GtkInvisiblePrivate
  end

  struct X_GtkLabel
    misc : GtkMisc
    priv : GtkLabelPrivate
  end

  struct X_GtkLayout
    container : GtkContainer
    priv : GtkLayoutPrivate
  end

  struct X_GtkLevelBar
    parent : GtkWidget
    priv : GtkLevelBarPrivate
  end

  struct X_GtkLinkButton
    parent_instance : GtkButton
    priv : GtkLinkButtonPrivate
  end

  struct X_GtkListBox
    parent_instance : GtkContainer
  end

  struct X_GtkListBoxRow
    parent_instance : GtkBin
  end

  struct X_GtkListStore
    parent : GObject
    priv : GtkListStorePrivate
  end

  struct X_GtkLockButton
    parent : GtkButton
    priv : GtkLockButtonPrivate
  end

  struct X_GtkMenu
    menu_shell : GtkMenuShell
    priv : GtkMenuPrivate
  end

  struct X_GtkMenuBar
    menu_shell : GtkMenuShell
    priv : GtkMenuBarPrivate
  end

  struct X_GtkMenuButton
    parent : GtkToggleButton
    priv : GtkMenuButtonPrivate
  end

  struct X_GtkMenuItem
    bin : GtkBin
    priv : GtkMenuItemPrivate
  end

  struct X_GtkMenuShell
    container : GtkContainer
    priv : GtkMenuShellPrivate
  end

  struct X_GtkMenuToolButton
    parent : GtkToolButton
    priv : GtkMenuToolButtonPrivate
  end

  struct X_GtkMessageDialog
    parent_instance : GtkDialog
    priv : GtkMessageDialogPrivate
  end

  struct X_GtkMisc
    widget : GtkWidget
    priv : GtkMiscPrivate
  end

  struct X_GtkMountOperation
    parent_instance : GMountOperation
    priv : GtkMountOperationPrivate
  end

  struct X_GtkNotebook
    container : GtkContainer
    priv : GtkNotebookPrivate
  end

  struct X_GtkNumerableIcon
    parent : GEmblemedIcon
    priv : GtkNumerableIconPrivate
  end

  struct X_GtkOffscreenWindow
    parent_object : GtkWindow
  end

  struct X_GtkOverlay
    parent : GtkBin
    priv : GtkOverlayPrivate
  end

  struct X_GtkPageRange
    start : Gint
    _end : Gint
  end

  struct X_GtkPaned
    container : GtkContainer
    priv : GtkPanedPrivate
  end

  struct X_GtkPopover
    parent_instance : GtkBin
    priv : GtkPopoverPrivate
  end

  struct X_GtkPrintOperation
    parent_instance : GObject
    priv : GtkPrintOperationPrivate
  end

  struct X_GtkProgressBar
    parent : GtkWidget
    priv : GtkProgressBarPrivate
  end

  struct X_GtkRadioAction
    parent : GtkToggleAction
    private_data : GtkRadioActionPrivate
  end

  struct X_GtkRadioActionEntry
    name : Gchar*
    stock_id : Gchar*
    label : Gchar*
    accelerator : Gchar*
    tooltip : Gchar*
    value : Gint
  end

  struct X_GtkRadioButton
    check_button : GtkCheckButton
    priv : GtkRadioButtonPrivate
  end

  struct X_GtkRadioMenuItem
    check_menu_item : GtkCheckMenuItem
    priv : GtkRadioMenuItemPrivate
  end

  struct X_GtkRadioToolButton
    parent : GtkToggleToolButton
  end

  struct X_GtkRange
    widget : GtkWidget
    priv : GtkRangePrivate
  end

  struct X_GtkRcStyle
    parent_instance : GObject
    name : Gchar*
    bg_pixmap_name : Gchar*[5]
    font_desc : PangoFontDescription
    color_flags : GtkRcFlags[5]
    fg : GdkColor[5]
    bg : GdkColor[5]
    text : GdkColor[5]
    base : GdkColor[5]
    xthickness : Gint
    ythickness : Gint
    rc_properties : GArray*
    rc_style_lists : GsList*
    icon_factories : GsList*
    engine_specified : Guint
  end

  struct X_GtkRecentAction
    parent_instance : GtkAction
    priv : GtkRecentActionPrivate
  end

  struct X_GtkRecentChooserMenu
    parent_instance : GtkMenu
    priv : GtkRecentChooserMenuPrivate
  end

  struct X_GtkRecentData
    display_name : Gchar*
    description : Gchar*
    mime_type : Gchar*
    app_name : Gchar*
    app_exec : Gchar*
    groups : Gchar**
    is_private : Gboolean
  end

  struct X_GtkRecentFilterInfo
    contains : GtkRecentFilterFlags
    uri : Gchar*
    display_name : Gchar*
    mime_type : Gchar*
    applications : Gchar**
    groups : Gchar**
    age : Gint
  end

  struct X_GtkRecentManager
    parent_instance : GObject
    priv : GtkRecentManagerPrivate
  end

  struct X_GtkRequestedSize
    data : Gpointer
    minimum_size : Gint
    natural_size : Gint
  end

  struct X_GtkRequisition
    width : Gint
    height : Gint
  end

  struct X_GtkRevealer
    parent_instance : GtkBin
  end

  struct X_GtkScale
    range : GtkRange
    priv : GtkScalePrivate
  end

  struct X_GtkScaleButton
    parent : GtkButton
    priv : GtkScaleButtonPrivate
  end

  struct X_GtkScrolledWindow
    container : GtkBin
    priv : GtkScrolledWindowPrivate
  end

  struct X_GtkSearchBar
    parent : GtkBin
  end

  struct X_GtkSearchEntry
    parent : GtkEntry
  end

  struct X_GtkSeparatorToolItem
    parent : GtkToolItem
    priv : GtkSeparatorToolItemPrivate
  end

  struct X_GtkSettings
    parent_instance : GObject
    priv : GtkSettingsPrivate
  end

  struct X_GtkSettingsValue
    origin : Gchar*
    value : GValue
  end

  struct X_GtkSizeGroup
    parent_instance : GObject
    priv : GtkSizeGroupPrivate
  end

  struct X_GtkSpinButton
    entry : GtkEntry
    priv : GtkSpinButtonPrivate
  end

  struct X_GtkSpinner
    parent : GtkWidget
    priv : GtkSpinnerPrivate
  end

  struct X_GtkStack
    parent_instance : GtkContainer
  end

  struct X_GtkStackSidebar
    parent : GtkBin
  end

  struct X_GtkStackSwitcher
    widget : GtkBox
  end

  struct X_GtkStatusIcon
    parent_instance : GObject
    priv : GtkStatusIconPrivate
  end

  struct X_GtkStatusbar
    parent_widget : GtkBox
    priv : GtkStatusbarPrivate
  end

  struct X_GtkStockItem
    stock_id : Gchar*
    label : Gchar*
    modifier : GdkModifierType
    keyval : Guint
    translation_domain : Gchar*
  end

  struct X_GtkStyle
    parent_instance : GObject
    fg : GdkColor[5]
    bg : GdkColor[5]
    light : GdkColor[5]
    dark : GdkColor[5]
    mid : GdkColor[5]
    text : GdkColor[5]
    base : GdkColor[5]
    text_aa : GdkColor[5]
    black : GdkColor
    white : GdkColor
    font_desc : PangoFontDescription
    xthickness : Gint
    ythickness : Gint
    background : CairoPatternT[5]
    attach_count : Gint
    visual : GdkVisual
    private_font_desc : PangoFontDescription
    rc_style : GtkRcStyle*
    styles : GsList*
    property_cache : GArray*
    icon_factories : GsList*
  end

  struct X_GtkStyleContext
    parent_object : GObject
    priv : GtkStyleContextPrivate
  end

  struct X_GtkStyleProperties
    parent_object : GObject
    priv : GtkStylePropertiesPrivate
  end

  struct X_GtkSwitch
    parent_instance : GtkWidget
    priv : GtkSwitchPrivate
  end

  struct X_GtkTable
    container : GtkContainer
    priv : GtkTablePrivate
  end

  struct X_GtkTargetEntry
    target : Gchar*
    flags : Guint
    info : Guint
  end

  struct X_GtkTextAppearance
    bg_color : GdkColor
    fg_color : GdkColor
    rise : Gint
    underline : Guint
    strikethrough : Guint
    draw_bg : Guint
    inside_selection : Guint
    is_text : Guint
    rgba : GdkRgba*[2]
  end

  struct X_GtkTextAttributes
    refcount : Guint
    appearance : GtkTextAppearance
    justification : GtkJustification
    direction : GtkTextDirection
    font : PangoFontDescription
    font_scale : Gdouble
    left_margin : Gint
    right_margin : Gint
    indent : Gint
    pixels_above_lines : Gint
    pixels_below_lines : Gint
    pixels_inside_wrap : Gint
    tabs : PangoTabArray
    wrap_mode : GtkWrapMode
    language : PangoLanguage
    pg_bg_color : GdkColor*
    invisible : Guint
    bg_full_height : Guint
    editable : Guint
    no_fallback : Guint
    pg_bg_rgba : GdkRgba*
    letter_spacing : Gint
    font_features : Gchar*
  end

  struct X_GtkTextBuffer
    parent_instance : GObject
    priv : GtkTextBufferPrivate
  end

  struct X_GtkTextChildAnchor
    parent_instance : GObject
    segment : Gpointer
  end

  struct X_GtkTextIter
    dummy1 : Gpointer
    dummy2 : Gpointer
    dummy3 : Gint
    dummy4 : Gint
    dummy5 : Gint
    dummy6 : Gint
    dummy7 : Gint
    dummy8 : Gint
    dummy9 : Gpointer
    dummy10 : Gpointer
    dummy11 : Gint
    dummy12 : Gint
    dummy13 : Gint
    dummy14 : Gpointer
  end

  struct X_GtkTextMark
    parent_instance : GObject
    segment : Gpointer
  end

  struct X_GtkTextTag
    parent_instance : GObject
    priv : GtkTextTagPrivate
  end

  struct X_GtkTextTagTable
    parent_instance : GObject
    priv : GtkTextTagTablePrivate
  end

  struct X_GtkTextView
    parent_instance : GtkContainer
    priv : GtkTextViewPrivate
  end

  struct X_GtkThemingEngine
    parent_object : GObject
    priv : GtkThemingEnginePrivate
  end

  struct X_GtkToggleAction
    parent : GtkAction
    private_data : GtkToggleActionPrivate
  end

  struct X_GtkToggleActionEntry
    name : Gchar*
    stock_id : Gchar*
    label : Gchar*
    accelerator : Gchar*
    tooltip : Gchar*
    callback : GCallback
    is_active : Gboolean
  end

  struct X_GtkToggleButton
    button : GtkButton
    priv : GtkToggleButtonPrivate
  end

  struct X_GtkToggleToolButton
    parent : GtkToolButton
    priv : GtkToggleToolButtonPrivate
  end

  struct X_GtkToolButton
    parent : GtkToolItem
    priv : GtkToolButtonPrivate
  end

  struct X_GtkToolItem
    parent : GtkBin
    priv : GtkToolItemPrivate
  end

  struct X_GtkToolItemGroup
    parent_instance : GtkContainer
    priv : GtkToolItemGroupPrivate
  end

  struct X_GtkToolPalette
    parent_instance : GtkContainer
    priv : GtkToolPalettePrivate
  end

  struct X_GtkToolbar
    container : GtkContainer
    priv : GtkToolbarPrivate
  end

  struct X_GtkTreeIter
    stamp : Gint
    user_data : Gpointer
    user_data2 : Gpointer
    user_data3 : Gpointer
  end

  struct X_GtkTreeModelFilter
    parent : GObject
    priv : GtkTreeModelFilterPrivate
  end

  struct X_GtkTreeModelSort
    parent : GObject
    priv : GtkTreeModelSortPrivate
  end

  struct X_GtkTreeSelection
    parent : GObject
    priv : GtkTreeSelectionPrivate
  end

  struct X_GtkTreeStore
    parent : GObject
    priv : GtkTreeStorePrivate
  end

  struct X_GtkTreeView
    parent : GtkContainer
    priv : GtkTreeViewPrivate
  end

  struct X_GtkTreeViewColumn
    parent_instance : GInitiallyUnowned
    priv : GtkTreeViewColumnPrivate
  end

  struct X_GtkUiManager
    parent : GObject
    private_data : GtkUiManagerPrivate
  end

  struct X_GtkViewport
    bin : GtkBin
    priv : GtkViewportPrivate
  end

  struct X_GtkWidget
    parent_instance : GInitiallyUnowned
    priv : GtkWidgetPrivate
  end

  struct X_GtkWidgetClass
    parent_class : GInitiallyUnownedClass
    activate_signal : Guint
    dispatch_child_properties_changed : (GtkWidget*, Guint, GParamSpec** -> Void)
    destroy : (GtkWidget* -> Void)
    show : (GtkWidget* -> Void)
    show_all : (GtkWidget* -> Void)
    hide : (GtkWidget* -> Void)
    map : (GtkWidget* -> Void)
    unmap : (GtkWidget* -> Void)
    realize : (GtkWidget* -> Void)
    unrealize : (GtkWidget* -> Void)
    size_allocate : (GtkWidget*, GtkAllocation* -> Void)
    state_changed : (GtkWidget*, GtkStateType -> Void)
    state_flags_changed : (GtkWidget*, GtkStateFlags -> Void)
    parent_set : (GtkWidget*, GtkWidget* -> Void)
    hierarchy_changed : (GtkWidget*, GtkWidget* -> Void)
    style_set : (GtkWidget*, GtkStyle* -> Void)
    direction_changed : (GtkWidget*, GtkTextDirection -> Void)
    grab_notify : (GtkWidget*, Gboolean -> Void)
    child_notify : (GtkWidget*, GParamSpec* -> Void)
    draw : (GtkWidget*, CairoT -> Gboolean)
    get_request_mode : (GtkWidget* -> GtkSizeRequestMode)
    get_preferred_height : (GtkWidget*, Gint*, Gint* -> Void)
    get_preferred_width_for_height : (GtkWidget*, Gint, Gint*, Gint* -> Void)
    get_preferred_width : (GtkWidget*, Gint*, Gint* -> Void)
    get_preferred_height_for_width : (GtkWidget*, Gint, Gint*, Gint* -> Void)
    mnemonic_activate : (GtkWidget*, Gboolean -> Gboolean)
    grab_focus : (GtkWidget* -> Void)
    focus : (GtkWidget*, GtkDirectionType -> Gboolean)
    move_focus : (GtkWidget*, GtkDirectionType -> Void)
    keynav_failed : (GtkWidget*, GtkDirectionType -> Gboolean)
    event : (GtkWidget*, GdkEvent* -> Gboolean)
    button_press_event : (GtkWidget*, GdkEventButton* -> Gboolean)
    button_release_event : (GtkWidget*, GdkEventButton* -> Gboolean)
    scroll_event : (GtkWidget*, GdkEventScroll* -> Gboolean)
    motion_notify_event : (GtkWidget*, GdkEventMotion* -> Gboolean)
    delete_event : (GtkWidget*, GdkEventAny* -> Gboolean)
    destroy_event : (GtkWidget*, GdkEventAny* -> Gboolean)
    key_press_event : (GtkWidget*, GdkEventKey* -> Gboolean)
    key_release_event : (GtkWidget*, GdkEventKey* -> Gboolean)
    enter_notify_event : (GtkWidget*, GdkEventCrossing* -> Gboolean)
    leave_notify_event : (GtkWidget*, GdkEventCrossing* -> Gboolean)
    configure_event : (GtkWidget*, GdkEventConfigure* -> Gboolean)
    focus_in_event : (GtkWidget*, GdkEventFocus* -> Gboolean)
    focus_out_event : (GtkWidget*, GdkEventFocus* -> Gboolean)
    map_event : (GtkWidget*, GdkEventAny* -> Gboolean)
    unmap_event : (GtkWidget*, GdkEventAny* -> Gboolean)
    property_notify_event : (GtkWidget*, GdkEventProperty* -> Gboolean)
    selection_clear_event : (GtkWidget*, GdkEventSelection* -> Gboolean)
    selection_request_event : (GtkWidget*, GdkEventSelection* -> Gboolean)
    selection_notify_event : (GtkWidget*, GdkEventSelection* -> Gboolean)
    proximity_in_event : (GtkWidget*, GdkEventProximity* -> Gboolean)
    proximity_out_event : (GtkWidget*, GdkEventProximity* -> Gboolean)
    visibility_notify_event : (GtkWidget*, GdkEventVisibility* -> Gboolean)
    window_state_event : (GtkWidget*, GdkEventWindowState* -> Gboolean)
    damage_event : (GtkWidget*, GdkEventExpose* -> Gboolean)
    grab_broken_event : (GtkWidget*, GdkEventGrabBroken* -> Gboolean)
    selection_get : (GtkWidget*, GtkSelectionData, Guint, Guint -> Void)
    selection_received : (GtkWidget*, GtkSelectionData, Guint -> Void)
    drag_begin : (GtkWidget*, GdkDragContext -> Void)
    drag_end : (GtkWidget*, GdkDragContext -> Void)
    drag_data_get : (GtkWidget*, GdkDragContext, GtkSelectionData, Guint, Guint -> Void)
    drag_data_delete : (GtkWidget*, GdkDragContext -> Void)
    drag_leave : (GtkWidget*, GdkDragContext, Guint -> Void)
    drag_motion : (GtkWidget*, GdkDragContext, Gint, Gint, Guint -> Gboolean)
    drag_drop : (GtkWidget*, GdkDragContext, Gint, Gint, Guint -> Gboolean)
    drag_data_received : (GtkWidget*, GdkDragContext, Gint, Gint, GtkSelectionData, Guint, Guint -> Void)
    drag_failed : (GtkWidget*, GdkDragContext, GtkDragResult -> Gboolean)
    popup_menu : (GtkWidget* -> Gboolean)
    show_help : (GtkWidget*, GtkWidgetHelpType -> Gboolean)
    get_accessible : (GtkWidget* -> AtkObject*)
    screen_changed : (GtkWidget*, GdkScreen -> Void)
    can_activate_accel : (GtkWidget*, Guint -> Gboolean)
    composited_changed : (GtkWidget* -> Void)
    query_tooltip : (GtkWidget*, Gint, Gint, Gboolean, GtkTooltip -> Gboolean)
    compute_expand : (GtkWidget*, Gboolean*, Gboolean* -> Void)
    adjust_size_request : (GtkWidget*, GtkOrientation, Gint*, Gint* -> Void)
    adjust_size_allocation : (GtkWidget*, GtkOrientation, Gint*, Gint*, Gint*, Gint* -> Void)
    style_updated : (GtkWidget* -> Void)
    touch_event : (GtkWidget*, GdkEventTouch* -> Gboolean)
    get_preferred_height_and_baseline_for_width : (GtkWidget*, Gint, Gint*, Gint*, Gint*, Gint* -> Void)
    adjust_baseline_request : (GtkWidget*, Gint*, Gint* -> Void)
    adjust_baseline_allocation : (GtkWidget*, Gint* -> Void)
    queue_draw_region : (GtkWidget*, CairoRegionT -> Void)
    priv : GtkWidgetClassPrivate
    _gtk_reserved6 : (-> Void)
    _gtk_reserved7 : (-> Void)
  end

  struct X_GtkWindow
    bin : GtkBin
    priv : GtkWindowPrivate
  end

  struct X_GtkWindowGroup
    parent_instance : GObject
    priv : GtkWindowGroupPrivate
  end

  type AtkObject = X_AtkObject
  type AtkRelationSet = X_AtkRelationSet
  type CairoFontOptionsT = Void*
  type CairoPatternT = Void*
  type CairoRectangleIntT = X_CairoRectangleInt
  type CairoRegionT = Void*
  type CairoSurfaceT = Void*
  type CairoT = Void*
  type GActionGroup = Void*
  type GAppInfo = Void*
  type GApplication = X_GApplication
  type GApplicationPrivate = Void*
  type GArray = X_GArray
  type GAsyncResult = Void*
  type GBytes = Void*
  type GCancellable = X_GCancellable
  type GCancellablePrivate = Void*
  type GClosure = X_GClosure
  type GClosureNotifyData = X_GClosureNotifyData
  type GData = Void*
  type GEmblemedIcon = X_GEmblemedIcon
  type GEmblemedIconPrivate = Void*
  type GError = X_GError
  type GFile = Void*
  type GHashTable = Void*
  type GIcon = Void*
  type GInitiallyUnowned = X_GObject
  type GInitiallyUnownedClass = X_GObjectClass
  type GKeyFile = Void*
  type GList = X_GList
  type GListModel = Void*
  type GMarkupParseContext = Void*
  type GMarkupParser = X_GMarkupParser
  type GMenu = Void*
  type GMenuModel = X_GMenuModel
  type GMenuModelPrivate = Void*
  type GMountOperation = X_GMountOperation
  type GMountOperationPrivate = Void*
  type GObject = X_GObject
  type GObjectClass = X_GObjectClass
  type GObjectConstructParam = X_GObjectConstructParam
  type GOptionEntry = X_GOptionEntry
  type GOptionGroup = Void*
  type GParamSpec = X_GParamSpec
  type GPermission = X_GPermission
  type GPermissionPrivate = Void*
  type GPtrArray = X_GPtrArray
  type GScanner = X_GScanner
  type GScannerConfig = X_GScannerConfig
  type GString = X_GString
  type GTokenValue = X_GTokenValue
  type GTypeClass = X_GTypeClass
  type GTypeInstance = X_GTypeInstance
  type GValue = X_GValue
  type GVariant = Void*
  type GdkAtom = Void*
  type GdkColor = X_GdkColor
  type GdkDevice = Void*
  type GdkDisplay = Void*
  type GdkDragContext = Void*
  type GdkEvent = X_GdkEvent
  type GdkEventAny = X_GdkEventAny
  type GdkEventButton = X_GdkEventButton
  type GdkEventConfigure = X_GdkEventConfigure
  type GdkEventCrossing = X_GdkEventCrossing
  type GdkEventDnd = X_GdkEventDnd
  type GdkEventExpose = X_GdkEventExpose
  type GdkEventFocus = X_GdkEventFocus
  type GdkEventGrabBroken = X_GdkEventGrabBroken
  type GdkEventKey = X_GdkEventKey
  type GdkEventMotion = X_GdkEventMotion
  type GdkEventOwnerChange = X_GdkEventOwnerChange
  type GdkEventProperty = X_GdkEventProperty
  type GdkEventProximity = X_GdkEventProximity
  type GdkEventScroll = X_GdkEventScroll
  type GdkEventSelection = X_GdkEventSelection
  type GdkEventSequence = Void*
  type GdkEventSetting = X_GdkEventSetting
  type GdkEventTouch = X_GdkEventTouch
  type GdkEventTouchpadPinch = X_GdkEventTouchpadPinch
  type GdkEventTouchpadSwipe = X_GdkEventTouchpadSwipe
  type GdkEventVisibility = X_GdkEventVisibility
  type GdkEventWindowState = X_GdkEventWindowState
  type GdkFrameClock = Void*
  type GdkGeometry = X_GdkGeometry
  type GdkGlContext = Void*
  type GdkPixbuf = Void*
  type GdkPixbufAnimation = Void*
  type GdkPoint = X_GdkPoint
  type GdkRgba = X_GdkRgba
  type GdkScreen = Void*
  type GdkVisual = Void*
  type GdkWindow = Void*
  type GsList = X_GsList
  type GtkAboutDialog = X_GtkAboutDialog
  type GtkAboutDialogPrivate = Void*
  type GtkAccelGroup = X_GtkAccelGroup
  type GtkAccelGroupEntry = X_GtkAccelGroupEntry
  type GtkAccelGroupPrivate = Void*
  type GtkAccelKey = X_GtkAccelKey
  type GtkAccelLabel = X_GtkAccelLabel
  type GtkAccelLabelPrivate = Void*
  type GtkAccelMap = Void*
  type GtkAccessible = X_GtkAccessible
  type GtkAccessiblePrivate = Void*
  type GtkAction = X_GtkAction
  type GtkActionBar = X_GtkActionBar
  type GtkActionEntry = X_GtkActionEntry
  type GtkActionGroup = X_GtkActionGroup
  type GtkActionGroupPrivate = Void*
  type GtkActionPrivate = Void*
  type GtkActionable = Void*
  type GtkActivatable = Void*
  type GtkAdjustment = X_GtkAdjustment
  type GtkAdjustmentPrivate = Void*
  type GtkAlignment = X_GtkAlignment
  type GtkAlignmentPrivate = Void*
  type GtkAppChooser = Void*
  type GtkAppChooserButton = X_GtkAppChooserButton
  type GtkAppChooserButtonPrivate = Void*
  type GtkAppChooserDialog = X_GtkAppChooserDialog
  type GtkAppChooserDialogPrivate = Void*
  type GtkAppChooserWidget = X_GtkAppChooserWidget
  type GtkAppChooserWidgetPrivate = Void*
  type GtkApplication = X_GtkApplication
  type GtkApplicationPrivate = Void*
  type GtkApplicationWindow = X_GtkApplicationWindow
  type GtkApplicationWindowPrivate = Void*
  type GtkArrow = X_GtkArrow
  type GtkArrowPrivate = Void*
  type GtkAspectFrame = X_GtkAspectFrame
  type GtkAspectFramePrivate = Void*
  type GtkAssistant = X_GtkAssistant
  type GtkAssistantPrivate = Void*
  type GtkBin = X_GtkBin
  type GtkBinPrivate = Void*
  type GtkBindingArg = X_GtkBindingArg
  type GtkBindingEntry = X_GtkBindingEntry
  type GtkBindingSet = X_GtkBindingSet
  type GtkBindingSignal = X_GtkBindingSignal
  type GtkBorder = X_GtkBorder
  type GtkBox = X_GtkBox
  type GtkBoxPrivate = Void*
  type GtkBuildable = Void*
  type GtkBuilder = X_GtkBuilder
  type GtkBuilderPrivate = Void*
  type GtkButton = X_GtkButton
  type GtkButtonBox = X_GtkButtonBox
  type GtkButtonBoxPrivate = Void*
  type GtkButtonPrivate = Void*
  type GtkCalendar = X_GtkCalendar
  type GtkCalendarPrivate = Void*
  type GtkCellArea = X_GtkCellArea
  type GtkCellAreaBox = X_GtkCellAreaBox
  type GtkCellAreaBoxPrivate = Void*
  type GtkCellAreaClass = X_GtkCellAreaClass
  type GtkCellAreaContext = X_GtkCellAreaContext
  type GtkCellAreaContextPrivate = Void*
  type GtkCellAreaPrivate = Void*
  type GtkCellEditable = Void*
  type GtkCellLayout = Void*
  type GtkCellRenderer = X_GtkCellRenderer
  type GtkCellRendererClass = X_GtkCellRendererClass
  type GtkCellRendererClassPrivate = Void*
  type GtkCellRendererPrivate = Void*
  type GtkCellRendererText = X_GtkCellRendererText
  type GtkCellRendererTextPrivate = Void*
  type GtkCellRendererToggle = X_GtkCellRendererToggle
  type GtkCellRendererTogglePrivate = Void*
  type GtkCellView = X_GtkCellView
  type GtkCellViewPrivate = Void*
  type GtkCheckButton = X_GtkCheckButton
  type GtkCheckMenuItem = X_GtkCheckMenuItem
  type GtkCheckMenuItemPrivate = Void*
  type GtkClipboard = Void*
  type GtkColorButton = X_GtkColorButton
  type GtkColorButtonPrivate = Void*
  type GtkColorChooser = Void*
  type GtkColorSelection = X_GtkColorSelection
  type GtkColorSelectionDialog = X_GtkColorSelectionDialog
  type GtkColorSelectionDialogPrivate = Void*
  type GtkColorSelectionPrivate = Void*
  type GtkComboBox = X_GtkComboBox
  type GtkComboBoxPrivate = Void*
  type GtkComboBoxText = X_GtkComboBoxText
  type GtkComboBoxTextPrivate = Void*
  type GtkContainer = X_GtkContainer
  type GtkContainerClass = X_GtkContainerClass
  type GtkContainerPrivate = Void*
  type GtkCssProvider = X_GtkCssProvider
  type GtkCssProviderPrivate = Void*
  type GtkCssSection = Void*
  type GtkDialog = X_GtkDialog
  type GtkDialogPrivate = Void*
  type GtkEditable = Void*
  type GtkEntry = X_GtkEntry
  type GtkEntryBuffer = X_GtkEntryBuffer
  type GtkEntryBufferPrivate = Void*
  type GtkEntryCompletion = X_GtkEntryCompletion
  type GtkEntryCompletionPrivate = Void*
  type GtkEntryPrivate = Void*
  type GtkEventBox = X_GtkEventBox
  type GtkEventBoxPrivate = Void*
  type GtkEventController = Void*
  type GtkExpander = X_GtkExpander
  type GtkExpanderPrivate = Void*
  type GtkFileChooser = Void*
  type GtkFileChooserButton = X_GtkFileChooserButton
  type GtkFileChooserButtonPrivate = Void*
  type GtkFileFilter = Void*
  type GtkFileFilterInfo = X_GtkFileFilterInfo
  type GtkFixed = X_GtkFixed
  type GtkFixedPrivate = Void*
  type GtkFlowBox = X_GtkFlowBox
  type GtkFlowBoxChild = X_GtkFlowBoxChild
  type GtkFontButton = X_GtkFontButton
  type GtkFontButtonPrivate = Void*
  type GtkFontChooser = Void*
  type GtkFontSelection = X_GtkFontSelection
  type GtkFontSelectionDialog = X_GtkFontSelectionDialog
  type GtkFontSelectionDialogPrivate = Void*
  type GtkFontSelectionPrivate = Void*
  type GtkFrame = X_GtkFrame
  type GtkFramePrivate = Void*
  type GtkGesture = Void*
  type GtkGestureDrag = Void*
  type GtkGestureMultiPress = Void*
  type GtkGesturePan = Void*
  type GtkGestureRotate = Void*
  type GtkGestureSingle = Void*
  type GtkGestureSwipe = Void*
  type GtkGestureZoom = Void*
  type GtkGlArea = X_GtkGlArea
  type GtkGradient = Void*
  type GtkGrid = X_GtkGrid
  type GtkGridPrivate = Void*
  type GtkHandleBox = X_GtkHandleBox
  type GtkHandleBoxPrivate = Void*
  type GtkHeaderBar = X_GtkHeaderBar
  type GtkHsv = X_GtkHsv
  type GtkHsvPrivate = Void*
  type GtkIconFactory = X_GtkIconFactory
  type GtkIconFactoryPrivate = Void*
  type GtkIconInfo = Void*
  type GtkIconSet = Void*
  type GtkIconSource = Void*
  type GtkIconTheme = X_GtkIconTheme
  type GtkIconThemePrivate = Void*
  type GtkIconView = X_GtkIconView
  type GtkIconViewPrivate = Void*
  type GtkImContext = X_GtkImContext
  type GtkImContextSimple = X_GtkImContextSimple
  type GtkImContextSimplePrivate = Void*
  type GtkImMulticontext = X_GtkImMulticontext
  type GtkImMulticontextPrivate = Void*
  type GtkImage = X_GtkImage
  type GtkImageMenuItem = X_GtkImageMenuItem
  type GtkImageMenuItemPrivate = Void*
  type GtkImagePrivate = Void*
  type GtkInfoBar = X_GtkInfoBar
  type GtkInfoBarPrivate = Void*
  type GtkInvisible = X_GtkInvisible
  type GtkInvisiblePrivate = Void*
  type GtkLabel = X_GtkLabel
  type GtkLabelPrivate = Void*
  type GtkLayout = X_GtkLayout
  type GtkLayoutPrivate = Void*
  type GtkLevelBar = X_GtkLevelBar
  type GtkLevelBarPrivate = Void*
  type GtkLinkButton = X_GtkLinkButton
  type GtkLinkButtonPrivate = Void*
  type GtkListBox = X_GtkListBox
  type GtkListBoxRow = X_GtkListBoxRow
  type GtkListStore = X_GtkListStore
  type GtkListStorePrivate = Void*
  type GtkLockButton = X_GtkLockButton
  type GtkLockButtonPrivate = Void*
  type GtkMenu = X_GtkMenu
  type GtkMenuBar = X_GtkMenuBar
  type GtkMenuBarPrivate = Void*
  type GtkMenuButton = X_GtkMenuButton
  type GtkMenuButtonPrivate = Void*
  type GtkMenuItem = X_GtkMenuItem
  type GtkMenuItemPrivate = Void*
  type GtkMenuPrivate = Void*
  type GtkMenuShell = X_GtkMenuShell
  type GtkMenuShellPrivate = Void*
  type GtkMenuToolButton = X_GtkMenuToolButton
  type GtkMenuToolButtonPrivate = Void*
  type GtkMessageDialog = X_GtkMessageDialog
  type GtkMessageDialogPrivate = Void*
  type GtkMisc = X_GtkMisc
  type GtkMiscPrivate = Void*
  type GtkMountOperation = X_GtkMountOperation
  type GtkMountOperationPrivate = Void*
  type GtkNotebook = X_GtkNotebook
  type GtkNotebookPrivate = Void*
  type GtkNumerableIcon = X_GtkNumerableIcon
  type GtkNumerableIconPrivate = Void*
  type GtkOffscreenWindow = X_GtkOffscreenWindow
  type GtkOrientable = Void*
  type GtkOverlay = X_GtkOverlay
  type GtkOverlayPrivate = Void*
  type GtkPageRange = X_GtkPageRange
  type GtkPageSetup = Void*
  type GtkPaned = X_GtkPaned
  type GtkPanedPrivate = Void*
  type GtkPaperSize = Void*
  type GtkPlacesSidebar = Void*
  type GtkPopover = X_GtkPopover
  type GtkPopoverMenu = Void*
  type GtkPopoverPrivate = Void*
  type GtkPrintContext = Void*
  type GtkPrintOperation = X_GtkPrintOperation
  type GtkPrintOperationPreview = Void*
  type GtkPrintOperationPrivate = Void*
  type GtkPrintSettings = Void*
  type GtkProgressBar = X_GtkProgressBar
  type GtkProgressBarPrivate = Void*
  type GtkRadioAction = X_GtkRadioAction
  type GtkRadioActionEntry = X_GtkRadioActionEntry
  type GtkRadioActionPrivate = Void*
  type GtkRadioButton = X_GtkRadioButton
  type GtkRadioButtonPrivate = Void*
  type GtkRadioMenuItem = X_GtkRadioMenuItem
  type GtkRadioMenuItemPrivate = Void*
  type GtkRadioToolButton = X_GtkRadioToolButton
  type GtkRange = X_GtkRange
  type GtkRangePrivate = Void*
  type GtkRcStyle = X_GtkRcStyle
  type GtkRecentAction = X_GtkRecentAction
  type GtkRecentActionPrivate = Void*
  type GtkRecentChooser = Void*
  type GtkRecentChooserMenu = X_GtkRecentChooserMenu
  type GtkRecentChooserMenuPrivate = Void*
  type GtkRecentData = X_GtkRecentData
  type GtkRecentFilter = Void*
  type GtkRecentFilterInfo = X_GtkRecentFilterInfo
  type GtkRecentInfo = Void*
  type GtkRecentManager = X_GtkRecentManager
  type GtkRecentManagerPrivate = Void*
  type GtkRequestedSize = X_GtkRequestedSize
  type GtkRequisition = X_GtkRequisition
  type GtkRevealer = X_GtkRevealer
  type GtkScale = X_GtkScale
  type GtkScaleButton = X_GtkScaleButton
  type GtkScaleButtonPrivate = Void*
  type GtkScalePrivate = Void*
  type GtkScrollable = Void*
  type GtkScrolledWindow = X_GtkScrolledWindow
  type GtkScrolledWindowPrivate = Void*
  type GtkSearchBar = X_GtkSearchBar
  type GtkSearchEntry = X_GtkSearchEntry
  type GtkSelectionData = Void*
  type GtkSeparatorToolItem = X_GtkSeparatorToolItem
  type GtkSeparatorToolItemPrivate = Void*
  type GtkSettings = X_GtkSettings
  type GtkSettingsPrivate = Void*
  type GtkSettingsValue = X_GtkSettingsValue
  type GtkSizeGroup = X_GtkSizeGroup
  type GtkSizeGroupPrivate = Void*
  type GtkSpinButton = X_GtkSpinButton
  type GtkSpinButtonPrivate = Void*
  type GtkSpinner = X_GtkSpinner
  type GtkSpinnerPrivate = Void*
  type GtkStack = X_GtkStack
  type GtkStackSidebar = X_GtkStackSidebar
  type GtkStackSwitcher = X_GtkStackSwitcher
  type GtkStatusIcon = X_GtkStatusIcon
  type GtkStatusIconPrivate = Void*
  type GtkStatusbar = X_GtkStatusbar
  type GtkStatusbarPrivate = Void*
  type GtkStockItem = X_GtkStockItem
  type GtkStyle = X_GtkStyle
  type GtkStyleContext = X_GtkStyleContext
  type GtkStyleContextPrivate = Void*
  type GtkStyleProperties = X_GtkStyleProperties
  type GtkStylePropertiesPrivate = Void*
  type GtkStyleProvider = Void*
  type GtkSwitch = X_GtkSwitch
  type GtkSwitchPrivate = Void*
  type GtkSymbolicColor = Void*
  type GtkTable = X_GtkTable
  type GtkTablePrivate = Void*
  type GtkTargetEntry = X_GtkTargetEntry
  type GtkTargetList = Void*
  type GtkTextAppearance = X_GtkTextAppearance
  type GtkTextAttributes = X_GtkTextAttributes
  type GtkTextBuffer = X_GtkTextBuffer
  type GtkTextBufferPrivate = Void*
  type GtkTextChildAnchor = X_GtkTextChildAnchor
  type GtkTextIter = X_GtkTextIter
  type GtkTextMark = X_GtkTextMark
  type GtkTextTag = X_GtkTextTag
  type GtkTextTagPrivate = Void*
  type GtkTextTagTable = X_GtkTextTagTable
  type GtkTextTagTablePrivate = Void*
  type GtkTextView = X_GtkTextView
  type GtkTextViewPrivate = Void*
  type GtkThemingEngine = X_GtkThemingEngine
  type GtkThemingEnginePrivate = Void*
  type GtkToggleAction = X_GtkToggleAction
  type GtkToggleActionEntry = X_GtkToggleActionEntry
  type GtkToggleActionPrivate = Void*
  type GtkToggleButton = X_GtkToggleButton
  type GtkToggleButtonPrivate = Void*
  type GtkToggleToolButton = X_GtkToggleToolButton
  type GtkToggleToolButtonPrivate = Void*
  type GtkToolButton = X_GtkToolButton
  type GtkToolButtonPrivate = Void*
  type GtkToolItem = X_GtkToolItem
  type GtkToolItemGroup = X_GtkToolItemGroup
  type GtkToolItemGroupPrivate = Void*
  type GtkToolItemPrivate = Void*
  type GtkToolPalette = X_GtkToolPalette
  type GtkToolPalettePrivate = Void*
  type GtkToolShell = Void*
  type GtkToolbar = X_GtkToolbar
  type GtkToolbarPrivate = Void*
  type GtkTooltip = Void*
  type GtkTreeDragDest = Void*
  type GtkTreeDragSource = Void*
  type GtkTreeIter = X_GtkTreeIter
  type GtkTreeModel = Void*
  type GtkTreeModelFilter = X_GtkTreeModelFilter
  type GtkTreeModelFilterPrivate = Void*
  type GtkTreeModelSort = X_GtkTreeModelSort
  type GtkTreeModelSortPrivate = Void*
  type GtkTreePath = Void*
  type GtkTreeRowReference = Void*
  type GtkTreeSelection = X_GtkTreeSelection
  type GtkTreeSelectionPrivate = Void*
  type GtkTreeSortable = Void*
  type GtkTreeStore = X_GtkTreeStore
  type GtkTreeStorePrivate = Void*
  type GtkTreeView = X_GtkTreeView
  type GtkTreeViewColumn = X_GtkTreeViewColumn
  type GtkTreeViewColumnPrivate = Void*
  type GtkTreeViewPrivate = Void*
  type GtkUiManager = X_GtkUiManager
  type GtkUiManagerPrivate = Void*
  type GtkViewport = X_GtkViewport
  type GtkViewportPrivate = Void*
  type GtkWidget = X_GtkWidget
  type GtkWidgetClass = X_GtkWidgetClass
  type GtkWidgetClassPrivate = Void*
  type GtkWidgetPath = Void*
  type GtkWidgetPrivate = Void*
  type GtkWindow = X_GtkWindow
  type GtkWindowGroup = X_GtkWindowGroup
  type GtkWindowGroupPrivate = Void*
  type GtkWindowPrivate = Void*
  type PangoAttrList = Void*
  type PangoContext = Void*
  type PangoFontDescription = Void*
  type PangoFontFace = Void*
  type PangoFontFamily = Void*
  type PangoFontMap = Void*
  type PangoLanguage = Void*
  type PangoLayout = Void*
  type PangoTabArray = Void*

  union X_GTokenValue
    v_symbol : Gpointer
    v_identifier : Gchar*
    v_binary : Gulong
    v_octal : Gulong
    v_int : Gulong
    v_int64 : Guint64
    v_float : Gdouble
    v_hex : Gulong
    v_string : Gchar*
    v_comment : Gchar*
    v_char : Guchar
    v_error : Guint
  end

  union X_GValueData
    v_int : Gint
    v_uint : Guint
    v_long : Glong
    v_ulong : Gulong
    v_int64 : Gint64
    v_uint64 : Guint64
    v_float : Gfloat
    v_double : Gdouble
    v_pointer : Gpointer
  end

  union X_GdkEvent
    type : GdkEventType
    any : GdkEventAny
    expose : GdkEventExpose
    visibility : GdkEventVisibility
    motion : GdkEventMotion
    button : GdkEventButton
    touch : GdkEventTouch
    scroll : GdkEventScroll
    key : GdkEventKey
    crossing : GdkEventCrossing
    focus_change : GdkEventFocus
    configure : GdkEventConfigure
    property : GdkEventProperty
    selection : GdkEventSelection
    owner_change : GdkEventOwnerChange
    proximity : GdkEventProximity
    dnd : GdkEventDnd
    window_state : GdkEventWindowState
    setting : GdkEventSetting
    grab_broken : GdkEventGrabBroken
    touchpad_swipe : GdkEventTouchpadSwipe
    touchpad_pinch : GdkEventTouchpadPinch
  end

  union X_GtkBindingArgD
    long_data : Glong
    double_data : Gdouble
    string_data : Gchar*
  end
end
