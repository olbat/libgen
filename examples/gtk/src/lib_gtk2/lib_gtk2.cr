@[Link(ldflags: "`command -v pkg-config > /dev/null && pkg-config --libs gtk+-2.0 2> /dev/null|| printf %s '-lgtk-x11-2.0 -lgdk-x11-2.0 -lpangocairo-1.0 -latk-1.0 -lcairo -lgdk_pixbuf-2.0 -lgio-2.0 -lpangoft2-1.0 -lpango-1.0 -lgobject-2.0 -lglib-2.0 -lfontconfig -lfreetype'`")]
lib LibGTK2
  $gtk_binary_age : Guint
  $gtk_debug_flags : Guint
  $gtk_interface_age : Guint
  $gtk_major_version : Guint
  $gtk_micro_version : Guint
  $gtk_minor_version : Guint
  alias GBaseInitFunc = (Gpointer -> Void)
  alias GCallback = (-> Void)
  alias GClosureMarshal = (GClosure*, GValue*, Guint, GValue*, Gpointer, Gpointer -> Void)
  alias GClosureNotify = (Gpointer, GClosure* -> Void)
  alias GCompareFunc = (Gconstpointer, Gconstpointer -> Gint)
  alias GDestroyNotify = (Gpointer -> Void)
  alias GInstanceInitFunc = (GTypeInstance*, Gpointer -> Void)
  alias GQuark = Guint32
  alias GScannerMsgFunc = (GScanner*, Gchar*, Gboolean -> Void)
  alias GSignalCMarshaller = GClosureMarshal
  alias GType = Gsize
  alias Gboolean = Gint
  alias Gchar = LibC::Char
  alias Gconstpointer = Void*
  alias GdkInputFunction = (Gpointer, Gint, GdkInputCondition -> Void)
  alias GdkNativeWindow = Guint32
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
  alias GtkAboutDialogActivateLinkFunc = (GtkAboutDialog*, Gchar*, Gpointer -> Void)
  alias GtkAccelGroupFindFunc = (GtkAccelKey*, GClosure*, Gpointer -> Gboolean)
  alias GtkAccelMapForeach = (Gpointer, Gchar*, Guint, GdkModifierType, Gboolean -> Void)
  alias GtkAllocation = GdkRectangle
  alias GtkAssistantPageFunc = (Gint, Gpointer -> Gint)
  alias GtkBuilderConnectFunc = (GtkBuilder*, GObject*, Gchar*, Gchar*, GObject*, GConnectFlags, Gpointer -> Void)
  alias GtkCListCompareFunc = (GtkCList*, Gconstpointer, Gconstpointer -> Gint)
  alias GtkCTreeCompareDragFunc = (GtkCTree*, GtkCTreeNode*, GtkCTreeNode*, GtkCTreeNode* -> Gboolean)
  alias GtkCTreeFunc = (GtkCTree*, GtkCTreeNode*, Gpointer -> Void)
  alias GtkCTreeGNodeFunc = (GtkCTree*, Guint, GNode*, GtkCTreeNode*, Gpointer -> Gboolean)
  alias GtkCalendarDetailFunc = (GtkCalendar*, Guint, Guint, Guint, Gpointer -> Gchar*)
  alias GtkCallback = (GtkWidget*, Gpointer -> Void)
  alias GtkCallbackMarshal = (GtkObject*, Gpointer, Guint, GtkArg* -> Void)
  alias GtkCellLayoutDataFunc = (GtkCellLayout, GtkCellRenderer*, GtkTreeModel, GtkTreeIter*, Gpointer -> Void)
  alias GtkClassInitFunc = GBaseInitFunc
  alias GtkClipboardClearFunc = (GtkClipboard, Gpointer -> Void)
  alias GtkClipboardGetFunc = (GtkClipboard, GtkSelectionData*, Guint, Gpointer -> Void)
  alias GtkClipboardImageReceivedFunc = (GtkClipboard, GdkPixbuf, Gpointer -> Void)
  alias GtkClipboardReceivedFunc = (GtkClipboard, GtkSelectionData*, Gpointer -> Void)
  alias GtkClipboardRichTextReceivedFunc = (GtkClipboard, GdkAtom, Guint8*, Gsize, Gpointer -> Void)
  alias GtkClipboardTargetsReceivedFunc = (GtkClipboard, GdkAtom*, Gint, Gpointer -> Void)
  alias GtkClipboardTextReceivedFunc = (GtkClipboard, Gchar*, Gpointer -> Void)
  alias GtkClipboardUriReceivedFunc = (GtkClipboard, Gchar**, Gpointer -> Void)
  alias GtkColorSelectionChangePaletteFunc = (GdkColor*, Gint -> Void)
  alias GtkColorSelectionChangePaletteWithScreenFunc = (GdkScreen*, GdkColor*, Gint -> Void)
  alias GtkEntryCompletionMatchFunc = (GtkEntryCompletion*, Gchar*, GtkTreeIter*, Gpointer -> Gboolean)
  alias GtkEnumValue = GEnumValue
  alias GtkFileFilterFunc = (GtkFileFilterInfo*, Gpointer -> Gboolean)
  alias GtkFlagValue = GFlagsValue
  alias GtkFunction = (Gpointer -> Gboolean)
  alias GtkIconViewForeachFunc = (GtkIconView*, GtkTreePath, Gpointer -> Void)
  alias GtkItemFactoryCallback = (-> Void)
  alias GtkKeySnoopFunc = (GtkWidget*, GdkEventKey*, Gpointer -> Gint)
  alias GtkLinkButtonUriFunc = (GtkLinkButton*, Gchar*, Gpointer -> Void)
  alias GtkMenuCallback = (GtkWidget*, Gpointer -> Void)
  alias GtkMenuDetachFunc = (GtkWidget*, GtkMenu* -> Void)
  alias GtkMenuPositionFunc = (GtkMenu*, Gint*, Gint*, Gboolean*, Gpointer -> Void)
  alias GtkNotebookWindowCreationFunc = (GtkNotebook*, GtkWidget*, Gint, Gint, Gpointer -> GtkNotebook*)
  alias GtkObjectInitFunc = GInstanceInitFunc
  alias GtkPageSetupDoneFunc = (GtkPageSetup, Gpointer -> Void)
  alias GtkPrintSettingsFunc = (Gchar*, Gchar*, Gpointer -> Void)
  alias GtkRcPropertyParser = (GParamSpec*, GString*, GValue* -> Gboolean)
  alias GtkRecentFilterFunc = (GtkRecentFilterInfo*, Gpointer -> Gboolean)
  alias GtkRecentSortFunc = (GtkRecentInfo, GtkRecentInfo, Gpointer -> Gint)
  alias GtkTextBufferDeserializeFunc = (GtkTextBuffer*, GtkTextBuffer*, GtkTextIter*, Guint8*, Gsize, Gboolean, Gpointer, GError** -> Gboolean)
  alias GtkTextBufferSerializeFunc = (GtkTextBuffer*, GtkTextBuffer*, GtkTextIter*, GtkTextIter*, Gsize*, Gpointer -> Guint8*)
  alias GtkTextCharPredicate = (Gunichar, Gpointer -> Gboolean)
  alias GtkTextTagTableForeach = (GtkTextTag*, Gpointer -> Void)
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
  alias GtkType = GType
  alias Guchar = UInt8
  alias Guint = LibC::UInt
  alias Guint16 = LibC::UShort
  alias Guint32 = LibC::UInt
  alias Guint64 = LibC::ULong
  alias Guint8 = UInt8
  alias Gulong = LibC::ULong
  alias Gunichar = Guint32
  alias Gushort = LibC::UShort
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
  enum GSignalMatchType
    GSignalMatchId        =  1
    GSignalMatchDetail    =  2
    GSignalMatchClosure   =  4
    GSignalMatchFunc      =  8
    GSignalMatchData      = 16
    GSignalMatchUnblocked = 32
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
  enum GTypeDebugFlags
    GTypeDebugNone          = 0
    GTypeDebugObjects       = 1
    GTypeDebugSignals       = 2
    GTypeDebugInstanceCount = 4
    GTypeDebugMask          = 7
  end
  enum GdkAxisUse
    GdkAxisIgnore   = 0
    GdkAxisX        = 1
    GdkAxisY        = 2
    GdkAxisPressure = 3
    GdkAxisXtilt    = 4
    GdkAxisYtilt    = 5
    GdkAxisWheel    = 6
    GdkAxisLast     = 7
  end
  enum GdkByteOrder
    GdkLsbFirst = 0
    GdkMsbFirst = 1
  end
  enum GdkCapStyle
    GdkCapNotLast    = 0
    GdkCapButt       = 1
    GdkCapRound      = 2
    GdkCapProjecting = 3
  end
  enum GdkCrossingMode
    GdkCrossingNormal       = 0
    GdkCrossingGrab         = 1
    GdkCrossingUngrab       = 2
    GdkCrossingGtkGrab      = 3
    GdkCrossingGtkUngrab    = 4
    GdkCrossingStateChanged = 5
  end
  enum GdkCursorType
    GdkXCursor           =   0
    GdkArrow             =   2
    GdkBasedArrowDown    =   4
    GdkBasedArrowUp      =   6
    GdkBoat              =   8
    GdkBogosity          =  10
    GdkBottomLeftCorner  =  12
    GdkBottomRightCorner =  14
    GdkBottomSide        =  16
    GdkBottomTee         =  18
    GdkBoxSpiral         =  20
    GdkCenterPtr         =  22
    GdkCircle            =  24
    GdkClock             =  26
    GdkCoffeeMug         =  28
    GdkCross             =  30
    GdkCrossReverse      =  32
    GdkCrosshair         =  34
    GdkDiamondCross      =  36
    GdkDot               =  38
    GdkDotbox            =  40
    GdkDoubleArrow       =  42
    GdkDraftLarge        =  44
    GdkDraftSmall        =  46
    GdkDrapedBox         =  48
    GdkExchange          =  50
    GdkFleur             =  52
    GdkGobbler           =  54
    GdkGumby             =  56
    GdkHand1             =  58
    GdkHand2             =  60
    GdkHeart             =  62
    GdkIcon              =  64
    GdkIronCross         =  66
    GdkLeftPtr           =  68
    GdkLeftSide          =  70
    GdkLeftTee           =  72
    GdkLeftbutton        =  74
    GdkLlAngle           =  76
    GdkLrAngle           =  78
    GdkMan               =  80
    GdkMiddlebutton      =  82
    GdkMouse             =  84
    GdkPencil            =  86
    GdkPirate            =  88
    GdkPlus              =  90
    GdkQuestionArrow     =  92
    GdkRightPtr          =  94
    GdkRightSide         =  96
    GdkRightTee          =  98
    GdkRightbutton       = 100
    GdkRtlLogo           = 102
    GdkSailboat          = 104
    GdkSbDownArrow       = 106
    GdkSbHDoubleArrow    = 108
    GdkSbLeftArrow       = 110
    GdkSbRightArrow      = 112
    GdkSbUpArrow         = 114
    GdkSbVDoubleArrow    = 116
    GdkShuttle           = 118
    GdkSizing            = 120
    GdkSpider            = 122
    GdkSpraycan          = 124
    GdkStar              = 126
    GdkTarget            = 128
    GdkTcross            = 130
    GdkTopLeftArrow      = 132
    GdkTopLeftCorner     = 134
    GdkTopRightCorner    = 136
    GdkTopSide           = 138
    GdkTopTee            = 140
    GdkTrek              = 142
    GdkUlAngle           = 144
    GdkUmbrella          = 146
    GdkUrAngle           = 148
    GdkWatch             = 150
    GdkXterm             = 152
    GdkLastCursor        = 153
    GdkBlankCursor       =  -2
    GdkCursorIsPixmap    =  -1
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
    GdkDragProtoMotif          = 0
    GdkDragProtoXdnd           = 1
    GdkDragProtoRootwin        = 2
    GdkDragProtoNone           = 3
    GdkDragProtoWin32Dropfiles = 4
    GdkDragProtoOle2           = 5
    GdkDragProtoLocal          = 6
  end
  enum GdkEventType
    GdkNothing          = -1
    GdkDelete           =  0
    GdkDestroy          =  1
    GdkExpose           =  2
    GdkMotionNotify     =  3
    GdkButtonPress      =  4
    Gdk2ButtonPress     =  5
    Gdk3ButtonPress     =  6
    GdkButtonRelease    =  7
    GdkKeyPress         =  8
    GdkKeyRelease       =  9
    GdkEnterNotify      = 10
    GdkLeaveNotify      = 11
    GdkFocusChange      = 12
    GdkConfigure        = 13
    GdkMap              = 14
    GdkUnmap            = 15
    GdkPropertyNotify   = 16
    GdkSelectionClear   = 17
    GdkSelectionRequest = 18
    GdkSelectionNotify  = 19
    GdkProximityIn      = 20
    GdkProximityOut     = 21
    GdkDragEnter        = 22
    GdkDragLeave        = 23
    GdkDragMotion       = 24
    GdkDragStatus       = 25
    GdkDropStart        = 26
    GdkDropFinished     = 27
    GdkClientEvent      = 28
    GdkVisibilityNotify = 29
    GdkNoExpose         = 30
    GdkScroll           = 31
    GdkWindowState      = 32
    GdkSetting          = 33
    GdkOwnerChange      = 34
    GdkGrabBroken       = 35
    GdkDamage           = 36
    GdkEventLast        = 37
  end
  enum GdkExtensionMode
    GdkExtensionEventsNone   = 0
    GdkExtensionEventsAll    = 1
    GdkExtensionEventsCursor = 2
  end
  enum GdkFill
    GdkSolid          = 0
    GdkTiled          = 1
    GdkStippled       = 2
    GdkOpaqueStippled = 3
  end
  enum GdkFontType
    GdkFontFont    = 0
    GdkFontFontset = 1
  end
  enum GdkFunction
    GdkCopy       =  0
    GdkInvert     =  1
    GdkXor        =  2
    GdkClear      =  3
    GdkAnd        =  4
    GdkAndReverse =  5
    GdkAndInvert  =  6
    GdkNoop       =  7
    GdkOr         =  8
    GdkEquiv      =  9
    GdkOrReverse  = 10
    GdkCopyInvert = 11
    GdkOrInvert   = 12
    GdkNand       = 13
    GdkNor        = 14
    GdkSet        = 15
  end
  enum GdkGcValuesMask
    GdkGcForeground  =      1
    GdkGcBackground  =      2
    GdkGcFont        =      4
    GdkGcFunction    =      8
    GdkGcFill        =     16
    GdkGcTile        =     32
    GdkGcStipple     =     64
    GdkGcClipMask    =    128
    GdkGcSubwindow   =    256
    GdkGcTsXOrigin   =    512
    GdkGcTsYOrigin   =   1024
    GdkGcClipXOrigin =   2048
    GdkGcClipYOrigin =   4096
    GdkGcExposures   =   8192
    GdkGcLineWidth   =  16384
    GdkGcLineStyle   =  32768
    GdkGcCapStyle    =  65536
    GdkGcJoinStyle   = 131072
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
  enum GdkImageType
    GdkImageNormal  = 0
    GdkImageShared  = 1
    GdkImageFastest = 2
  end
  enum GdkInputCondition
    GdkInputRead      = 1
    GdkInputWrite     = 2
    GdkInputException = 4
  end
  enum GdkInputMode
    GdkModeDisabled = 0
    GdkModeScreen   = 1
    GdkModeWindow   = 2
  end
  enum GdkInputSource
    GdkSourceMouse  = 0
    GdkSourcePen    = 1
    GdkSourceEraser = 2
    GdkSourceCursor = 3
  end
  enum GdkJoinStyle
    GdkJoinMiter = 0
    GdkJoinRound = 1
    GdkJoinBevel = 2
  end
  enum GdkLineStyle
    GdkLineSolid      = 0
    GdkLineOnOffDash  = 1
    GdkLineDoubleDash = 2
  end
  enum GdkModifierType
    GdkShiftMask    =          1
    GdkLockMask     =          2
    GdkControlMask  =          4
    GdkMod1Mask     =          8
    GdkMod2Mask     =         16
    GdkMod3Mask     =         32
    GdkMod4Mask     =         64
    GdkMod5Mask     =        128
    GdkButton1Mask  =        256
    GdkButton2Mask  =        512
    GdkButton3Mask  =       1024
    GdkButton4Mask  =       2048
    GdkButton5Mask  =       4096
    GdkSuperMask    =   67108864
    GdkHyperMask    =  134217728
    GdkMetaMask     =  268435456
    GdkReleaseMask  = 1073741824
    GdkModifierMask = 1543512063
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
  enum GdkRgbDither
    GdkRgbDitherNone   = 0
    GdkRgbDitherNormal = 1
    GdkRgbDitherMax    = 2
  end
  enum GdkScrollDirection
    GdkScrollUp    = 0
    GdkScrollDown  = 1
    GdkScrollLeft  = 2
    GdkScrollRight = 3
  end
  enum GdkSettingAction
    GdkSettingActionNew     = 0
    GdkSettingActionChanged = 1
    GdkSettingActionDeleted = 2
  end
  enum GdkSubwindowMode
    GdkClipByChildren   = 0
    GdkIncludeInferiors = 1
  end
  enum GdkVisibilityState
    GdkVisibilityUnobscured    = 0
    GdkVisibilityPartial       = 1
    GdkVisibilityFullyObscured = 2
  end
  enum GdkVisualType
    GdkVisualStaticGray  = 0
    GdkVisualGrayscale   = 1
    GdkVisualStaticColor = 2
    GdkVisualPseudoColor = 3
    GdkVisualTrueColor   = 4
    GdkVisualDirectColor = 5
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
    GdkWindowStateWithdrawn  =  1
    GdkWindowStateIconified  =  2
    GdkWindowStateMaximized  =  4
    GdkWindowStateSticky     =  8
    GdkWindowStateFullscreen = 16
    GdkWindowStateAbove      = 32
    GdkWindowStateBelow      = 64
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
  end
  enum GtkAttachOptions
    GtkExpand = 1
    GtkShrink = 2
    GtkFill   = 4
  end
  enum GtkButtonBoxStyle
    GtkButtonboxDefaultStyle = 0
    GtkButtonboxSpread       = 1
    GtkButtonboxEdge         = 2
    GtkButtonboxStart        = 3
    GtkButtonboxEnd          = 4
    GtkButtonboxCenter       = 5
  end
  enum GtkButtonsType
    GtkButtonsNone     = 0
    GtkButtonsOk       = 1
    GtkButtonsClose    = 2
    GtkButtonsCancel   = 3
    GtkButtonsYesNo    = 4
    GtkButtonsOkCancel = 5
  end
  enum GtkCListDragPos
    GtkClistDragNone   = 0
    GtkClistDragBefore = 1
    GtkClistDragInto   = 2
    GtkClistDragAfter  = 3
  end
  enum GtkCTreeExpanderStyle
    GtkCtreeExpanderNone     = 0
    GtkCtreeExpanderSquare   = 1
    GtkCtreeExpanderTriangle = 2
    GtkCtreeExpanderCircular = 3
  end
  enum GtkCTreeLineStyle
    GtkCtreeLinesNone   = 0
    GtkCtreeLinesSolid  = 1
    GtkCtreeLinesDotted = 2
    GtkCtreeLinesTabbed = 3
  end
  enum GtkCalendarDisplayOptions
    GtkCalendarShowHeading     =  1
    GtkCalendarShowDayNames    =  2
    GtkCalendarNoMonthChange   =  4
    GtkCalendarShowWeekNumbers =  8
    GtkCalendarWeekStartMonday = 16
    GtkCalendarShowDetails     = 32
  end
  enum GtkCellRendererState
    GtkCellRendererSelected    =  1
    GtkCellRendererPrelit      =  2
    GtkCellRendererInsensitive =  4
    GtkCellRendererSorted      =  8
    GtkCellRendererFocused     = 16
  end
  enum GtkCellType
    GtkCellEmpty   = 0
    GtkCellText    = 1
    GtkCellPixmap  = 2
    GtkCellPixtext = 3
    GtkCellWidget  = 4
  end
  enum GtkCornerType
    GtkCornerTopLeft     = 0
    GtkCornerBottomLeft  = 1
    GtkCornerTopRight    = 2
    GtkCornerBottomRight = 3
  end
  enum GtkCurveType
    GtkCurveTypeLinear = 0
    GtkCurveTypeSpline = 1
    GtkCurveTypeFree   = 2
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
    GtkDialogNoSeparator       = 4
  end
  enum GtkDirectionType
    GtkDirTabForward  = 0
    GtkDirTabBackward = 1
    GtkDirUp          = 2
    GtkDirDown        = 3
    GtkDirLeft        = 4
    GtkDirRight       = 5
  end
  enum GtkEntryIconPosition
    GtkEntryIconPrimary   = 0
    GtkEntryIconSecondary = 1
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
    GtkIconLookupNoSvg           =  1
    GtkIconLookupForceSvg        =  2
    GtkIconLookupUseBuiltin      =  4
    GtkIconLookupGenericFallback =  8
    GtkIconLookupForceSize       = 16
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
    GtkImagePixmap    = 1
    GtkImageImage     = 2
    GtkImagePixbuf    = 3
    GtkImageStock     = 4
    GtkImageIconSet   = 5
    GtkImageAnimation = 6
    GtkImageIconName  = 7
    GtkImageGicon     = 8
  end
  enum GtkJustification
    GtkJustifyLeft   = 0
    GtkJustifyRight  = 1
    GtkJustifyCenter = 2
    GtkJustifyFill   = 3
  end
  enum GtkMessageType
    GtkMessageInfo     = 0
    GtkMessageWarning  = 1
    GtkMessageQuestion = 2
    GtkMessageError    = 3
    GtkMessageOther    = 4
  end
  enum GtkMetricType
    GtkPixels      = 0
    GtkInches      = 1
    GtkCentimeters = 2
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
  enum GtkPolicyType
    GtkPolicyAlways    = 0
    GtkPolicyAutomatic = 1
    GtkPolicyNever     = 2
  end
  enum GtkPositionType
    GtkPosLeft   = 0
    GtkPosRight  = 1
    GtkPosTop    = 2
    GtkPosBottom = 3
  end
  enum GtkPreviewType
    GtkPreviewColor     = 0
    GtkPreviewGrayscale = 1
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
  enum GtkProgressBarOrientation
    GtkProgressLeftToRight = 0
    GtkProgressRightToLeft = 1
    GtkProgressBottomToTop = 2
    GtkProgressTopToBottom = 3
  end
  enum GtkProgressBarStyle
    GtkProgressContinuous = 0
    GtkProgressDiscrete   = 1
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
  enum GtkScrollType
    GtkScrollNone         =  0
    GtkScrollJump         =  1
    GtkScrollStepBackward =  2
    GtkScrollStepForward  =  3
    GtkScrollPageBackward =  4
    GtkScrollPageForward  =  5
    GtkScrollStepUp       =  6
    GtkScrollStepDown     =  7
    GtkScrollPageUp       =  8
    GtkScrollPageDown     =  9
    GtkScrollStepLeft     = 10
    GtkScrollStepRight    = 11
    GtkScrollPageLeft     = 12
    GtkScrollPageRight    = 13
    GtkScrollStart        = 14
    GtkScrollEnd          = 15
  end
  enum GtkSelectionMode
    GtkSelectionNone     = 0
    GtkSelectionSingle   = 1
    GtkSelectionBrowse   = 2
    GtkSelectionMultiple = 3
    GtkSelectionExtended = 3
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
  enum GtkSignalRunType
    GtkRunFirst     =  1
    GtkRunLast      =  2
    GtkRunBoth      =  3
    GtkRunNoRecurse =  8
    GtkRunAction    = 32
    GtkRunNoHooks   = 64
  end
  enum GtkSizeGroupMode
    GtkSizeGroupNone       = 0
    GtkSizeGroupHorizontal = 1
    GtkSizeGroupVertical   = 2
    GtkSizeGroupBoth       = 3
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
  enum GtkStateType
    GtkStateNormal      = 0
    GtkStateActive      = 1
    GtkStatePrelight    = 2
    GtkStateSelected    = 3
    GtkStateInsensitive = 4
  end
  enum GtkTextDirection
    GtkTextDirNone = 0
    GtkTextDirLtr  = 1
    GtkTextDirRtl  = 2
  end
  enum GtkTextSearchFlags
    GtkTextSearchVisibleOnly = 1
    GtkTextSearchTextOnly    = 2
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
  enum GtkToolbarChildType
    GtkToolbarChildSpace        = 0
    GtkToolbarChildButton       = 1
    GtkToolbarChildTogglebutton = 2
    GtkToolbarChildRadiobutton  = 3
    GtkToolbarChildWidget       = 4
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
    GtkUnitPixel  = 0
    GtkUnitPoints = 1
    GtkUnitInch   = 2
    GtkUnitMm     = 3
  end
  enum GtkUpdateType
    GtkUpdateContinuous    = 0
    GtkUpdateDiscontinuous = 1
    GtkUpdateDelayed       = 2
  end
  enum GtkVisibility
    GtkVisibilityNone    = 0
    GtkVisibilityPartial = 1
    GtkVisibilityFull    = 2
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
  enum PangoEllipsizeMode
    PangoEllipsizeNone   = 0
    PangoEllipsizeStart  = 1
    PangoEllipsizeMiddle = 2
    PangoEllipsizeEnd    = 3
  end
  enum PangoUnderline
    PangoUnderlineNone   = 0
    PangoUnderlineSingle = 1
    PangoUnderlineDouble = 2
    PangoUnderlineLow    = 3
    PangoUnderlineError  = 4
  end
  enum PangoWrapMode
    PangoWrapWord     = 0
    PangoWrapChar     = 1
    PangoWrapWordChar = 2
  end
  fun gtk_about_dialog_get_artists(about : GtkAboutDialog*) : Gchar**
  fun gtk_about_dialog_get_authors(about : GtkAboutDialog*) : Gchar**
  fun gtk_about_dialog_get_comments(about : GtkAboutDialog*) : Gchar*
  fun gtk_about_dialog_get_copyright(about : GtkAboutDialog*) : Gchar*
  fun gtk_about_dialog_get_documenters(about : GtkAboutDialog*) : Gchar**
  fun gtk_about_dialog_get_license(about : GtkAboutDialog*) : Gchar*
  fun gtk_about_dialog_get_logo(about : GtkAboutDialog*) : GdkPixbuf
  fun gtk_about_dialog_get_logo_icon_name(about : GtkAboutDialog*) : Gchar*
  fun gtk_about_dialog_get_name(about : GtkAboutDialog*) : Gchar*
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
  fun gtk_about_dialog_set_email_hook(func : GtkAboutDialogActivateLinkFunc, data : Gpointer, destroy : GDestroyNotify) : GtkAboutDialogActivateLinkFunc
  fun gtk_about_dialog_set_license(about : GtkAboutDialog*, license : Gchar*)
  fun gtk_about_dialog_set_logo(about : GtkAboutDialog*, logo : GdkPixbuf)
  fun gtk_about_dialog_set_logo_icon_name(about : GtkAboutDialog*, icon_name : Gchar*)
  fun gtk_about_dialog_set_name(about : GtkAboutDialog*, name : Gchar*)
  fun gtk_about_dialog_set_program_name(about : GtkAboutDialog*, name : Gchar*)
  fun gtk_about_dialog_set_translator_credits(about : GtkAboutDialog*, translator_credits : Gchar*)
  fun gtk_about_dialog_set_url_hook(func : GtkAboutDialogActivateLinkFunc, data : Gpointer, destroy : GDestroyNotify) : GtkAboutDialogActivateLinkFunc
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
  fun gtk_accel_label_get_accel_widget(accel_label : GtkAccelLabel*) : GtkWidget*
  fun gtk_accel_label_get_accel_width(accel_label : GtkAccelLabel*) : Guint
  fun gtk_accel_label_get_type : GType
  fun gtk_accel_label_new(string : Gchar*) : GtkWidget*
  fun gtk_accel_label_refetch(accel_label : GtkAccelLabel*) : Gboolean
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
  fun gtk_accelerator_get_default_mod_mask : Guint
  fun gtk_accelerator_get_label(accelerator_key : Guint, accelerator_mods : GdkModifierType) : Gchar*
  fun gtk_accelerator_name(accelerator_key : Guint, accelerator_mods : GdkModifierType) : Gchar*
  fun gtk_accelerator_parse(accelerator : Gchar*, accelerator_key : Guint*, accelerator_mods : GdkModifierType*)
  fun gtk_accelerator_set_default_mod_mask(default_mod_mask : GdkModifierType)
  fun gtk_accelerator_valid(keyval : Guint, modifiers : GdkModifierType) : Gboolean
  fun gtk_accessible_connect_widget_destroyed(accessible : GtkAccessible*)
  fun gtk_accessible_get_type : GType
  fun gtk_accessible_get_widget(accessible : GtkAccessible*) : GtkWidget*
  fun gtk_accessible_set_widget(accessible : GtkAccessible*, widget : GtkWidget*)
  fun gtk_action_activate(action : GtkAction*)
  fun gtk_action_block_activate(action : GtkAction*)
  fun gtk_action_block_activate_from(action : GtkAction*, proxy : GtkWidget*)
  fun gtk_action_connect_accelerator(action : GtkAction*)
  fun gtk_action_connect_proxy(action : GtkAction*, proxy : GtkWidget*)
  fun gtk_action_create_icon(action : GtkAction*, icon_size : GtkIconSize) : GtkWidget*
  fun gtk_action_create_menu(action : GtkAction*) : GtkWidget*
  fun gtk_action_create_menu_item(action : GtkAction*) : GtkWidget*
  fun gtk_action_create_tool_item(action : GtkAction*) : GtkWidget*
  fun gtk_action_disconnect_accelerator(action : GtkAction*)
  fun gtk_action_disconnect_proxy(action : GtkAction*, proxy : GtkWidget*)
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
  fun gtk_action_group_get_action(action_group : GtkActionGroup*, action_name : Gchar*) : GtkAction*
  fun gtk_action_group_get_name(action_group : GtkActionGroup*) : Gchar*
  fun gtk_action_group_get_sensitive(action_group : GtkActionGroup*) : Gboolean
  fun gtk_action_group_get_type : GType
  fun gtk_action_group_get_visible(action_group : GtkActionGroup*) : Gboolean
  fun gtk_action_group_list_actions(action_group : GtkActionGroup*) : GList*
  fun gtk_action_group_new(name : Gchar*) : GtkActionGroup*
  fun gtk_action_group_remove_action(action_group : GtkActionGroup*, action : GtkAction*)
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
  fun gtk_action_unblock_activate_from(action : GtkAction*, proxy : GtkWidget*)
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
  fun gtk_adjustment_get_page_increment(adjustment : GtkAdjustment*) : Gdouble
  fun gtk_adjustment_get_page_size(adjustment : GtkAdjustment*) : Gdouble
  fun gtk_adjustment_get_step_increment(adjustment : GtkAdjustment*) : Gdouble
  fun gtk_adjustment_get_type : GType
  fun gtk_adjustment_get_upper(adjustment : GtkAdjustment*) : Gdouble
  fun gtk_adjustment_get_value(adjustment : GtkAdjustment*) : Gdouble
  fun gtk_adjustment_new(value : Gdouble, lower : Gdouble, upper : Gdouble, step_increment : Gdouble, page_increment : Gdouble, page_size : Gdouble) : GtkObject*
  fun gtk_adjustment_set_lower(adjustment : GtkAdjustment*, lower : Gdouble)
  fun gtk_adjustment_set_page_increment(adjustment : GtkAdjustment*, page_increment : Gdouble)
  fun gtk_adjustment_set_page_size(adjustment : GtkAdjustment*, page_size : Gdouble)
  fun gtk_adjustment_set_step_increment(adjustment : GtkAdjustment*, step_increment : Gdouble)
  fun gtk_adjustment_set_upper(adjustment : GtkAdjustment*, upper : Gdouble)
  fun gtk_adjustment_set_value(adjustment : GtkAdjustment*, value : Gdouble)
  fun gtk_adjustment_value_changed(adjustment : GtkAdjustment*)
  fun gtk_alignment_get_padding(alignment : GtkAlignment*, padding_top : Guint*, padding_bottom : Guint*, padding_left : Guint*, padding_right : Guint*)
  fun gtk_alignment_get_type : GType
  fun gtk_alignment_new(xalign : Gfloat, yalign : Gfloat, xscale : Gfloat, yscale : Gfloat) : GtkWidget*
  fun gtk_alignment_set(alignment : GtkAlignment*, xalign : Gfloat, yalign : Gfloat, xscale : Gfloat, yscale : Gfloat)
  fun gtk_alignment_set_padding(alignment : GtkAlignment*, padding_top : Guint, padding_bottom : Guint, padding_left : Guint, padding_right : Guint)
  fun gtk_alternative_dialog_button_order(screen : GdkScreen*) : Gboolean
  fun gtk_anchor_type_get_type : GType
  fun gtk_arg_flags_get_type : GType
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
  fun gtk_assistant_get_page_header_image(assistant : GtkAssistant*, page : GtkWidget*) : GdkPixbuf
  fun gtk_assistant_get_page_side_image(assistant : GtkAssistant*, page : GtkWidget*) : GdkPixbuf
  fun gtk_assistant_get_page_title(assistant : GtkAssistant*, page : GtkWidget*) : Gchar*
  fun gtk_assistant_get_page_type(assistant : GtkAssistant*, page : GtkWidget*) : GtkAssistantPageType
  fun gtk_assistant_get_type : GType
  fun gtk_assistant_insert_page(assistant : GtkAssistant*, page : GtkWidget*, position : Gint) : Gint
  fun gtk_assistant_new : GtkWidget*
  fun gtk_assistant_page_type_get_type : GType
  fun gtk_assistant_prepend_page(assistant : GtkAssistant*, page : GtkWidget*) : Gint
  fun gtk_assistant_remove_action_widget(assistant : GtkAssistant*, child : GtkWidget*)
  fun gtk_assistant_set_current_page(assistant : GtkAssistant*, page_num : Gint)
  fun gtk_assistant_set_forward_page_func(assistant : GtkAssistant*, page_func : GtkAssistantPageFunc, data : Gpointer, destroy : GDestroyNotify)
  fun gtk_assistant_set_page_complete(assistant : GtkAssistant*, page : GtkWidget*, complete : Gboolean)
  fun gtk_assistant_set_page_header_image(assistant : GtkAssistant*, page : GtkWidget*, pixbuf : GdkPixbuf)
  fun gtk_assistant_set_page_side_image(assistant : GtkAssistant*, page : GtkWidget*, pixbuf : GdkPixbuf)
  fun gtk_assistant_set_page_title(assistant : GtkAssistant*, page : GtkWidget*, title : Gchar*)
  fun gtk_assistant_set_page_type(assistant : GtkAssistant*, page : GtkWidget*, type : GtkAssistantPageType)
  fun gtk_assistant_update_buttons_state(assistant : GtkAssistant*)
  fun gtk_attach_options_get_type : GType
  fun gtk_bin_get_child(bin : GtkBin*) : GtkWidget*
  fun gtk_bin_get_type : GType
  fun gtk_binding_entry_add_signal(binding_set : GtkBindingSet*, keyval : Guint, modifiers : GdkModifierType, signal_name : Gchar*, n_args : Guint, ...)
  fun gtk_binding_entry_add_signall(binding_set : GtkBindingSet*, keyval : Guint, modifiers : GdkModifierType, signal_name : Gchar*, binding_args : GsList*)
  fun gtk_binding_entry_clear(binding_set : GtkBindingSet*, keyval : Guint, modifiers : GdkModifierType)
  fun gtk_binding_entry_remove(binding_set : GtkBindingSet*, keyval : Guint, modifiers : GdkModifierType)
  fun gtk_binding_entry_skip(binding_set : GtkBindingSet*, keyval : Guint, modifiers : GdkModifierType)
  fun gtk_binding_parse_binding(scanner : GScanner*) : Guint
  fun gtk_binding_set_activate(binding_set : GtkBindingSet*, keyval : Guint, modifiers : GdkModifierType, object : GtkObject*) : Gboolean
  fun gtk_binding_set_add_path(binding_set : GtkBindingSet*, path_type : GtkPathType, path_pattern : Gchar*, priority : GtkPathPriorityType)
  fun gtk_binding_set_by_class(object_class : Gpointer) : GtkBindingSet*
  fun gtk_binding_set_find(set_name : Gchar*) : GtkBindingSet*
  fun gtk_binding_set_new(set_name : Gchar*) : GtkBindingSet*
  fun gtk_bindings_activate(object : GtkObject*, keyval : Guint, modifiers : GdkModifierType) : Gboolean
  fun gtk_bindings_activate_event(object : GtkObject*, event : GdkEventKey*) : Gboolean
  fun gtk_border_copy(border_ : GtkBorder*) : GtkBorder*
  fun gtk_border_free(border_ : GtkBorder*)
  fun gtk_border_get_type : GType
  fun gtk_border_new : GtkBorder*
  fun gtk_box_get_homogeneous(box : GtkBox*) : Gboolean
  fun gtk_box_get_spacing(box : GtkBox*) : Gint
  fun gtk_box_get_type : GType
  fun gtk_box_pack_end(box : GtkBox*, child : GtkWidget*, expand : Gboolean, fill : Gboolean, padding : Guint)
  fun gtk_box_pack_end_defaults(box : GtkBox*, widget : GtkWidget*)
  fun gtk_box_pack_start(box : GtkBox*, child : GtkWidget*, expand : Gboolean, fill : Gboolean, padding : Guint)
  fun gtk_box_pack_start_defaults(box : GtkBox*, widget : GtkWidget*)
  fun gtk_box_query_child_packing(box : GtkBox*, child : GtkWidget*, expand : Gboolean*, fill : Gboolean*, padding : Guint*, pack_type : GtkPackType*)
  fun gtk_box_reorder_child(box : GtkBox*, child : GtkWidget*, position : Gint)
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
  fun gtk_builder_add_from_file(builder : GtkBuilder*, filename : Gchar*, error : GError**) : Guint
  fun gtk_builder_add_from_string(builder : GtkBuilder*, buffer : Gchar*, length : Gsize, error : GError**) : Guint
  fun gtk_builder_add_objects_from_file(builder : GtkBuilder*, filename : Gchar*, object_ids : Gchar**, error : GError**) : Guint
  fun gtk_builder_add_objects_from_string(builder : GtkBuilder*, buffer : Gchar*, length : Gsize, object_ids : Gchar**, error : GError**) : Guint
  fun gtk_builder_connect_signals(builder : GtkBuilder*, user_data : Gpointer)
  fun gtk_builder_connect_signals_full(builder : GtkBuilder*, func : GtkBuilderConnectFunc, user_data : Gpointer)
  fun gtk_builder_error_get_type : GType
  fun gtk_builder_error_quark : GQuark
  fun gtk_builder_get_object(builder : GtkBuilder*, name : Gchar*) : GObject*
  fun gtk_builder_get_objects(builder : GtkBuilder*) : GsList*
  fun gtk_builder_get_translation_domain(builder : GtkBuilder*) : Gchar*
  fun gtk_builder_get_type : GType
  fun gtk_builder_get_type_from_name(builder : GtkBuilder*, type_name : LibC::Char*) : GType
  fun gtk_builder_new : GtkBuilder*
  fun gtk_builder_set_translation_domain(builder : GtkBuilder*, domain : Gchar*)
  fun gtk_builder_value_from_string(builder : GtkBuilder*, pspec : GParamSpec*, string : Gchar*, value : GValue*, error : GError**) : Gboolean
  fun gtk_builder_value_from_string_type(builder : GtkBuilder*, type : GType, string : Gchar*, value : GValue*, error : GError**) : Gboolean
  fun gtk_button_action_get_type : GType
  fun gtk_button_box_get_child_ipadding(widget : GtkButtonBox*, ipad_x : Gint*, ipad_y : Gint*)
  fun gtk_button_box_get_child_secondary(widget : GtkButtonBox*, child : GtkWidget*) : Gboolean
  fun gtk_button_box_get_child_size(widget : GtkButtonBox*, min_width : Gint*, min_height : Gint*)
  fun gtk_button_box_get_layout(widget : GtkButtonBox*) : GtkButtonBoxStyle
  fun gtk_button_box_get_type : GType
  fun gtk_button_box_set_child_ipadding(widget : GtkButtonBox*, ipad_x : Gint, ipad_y : Gint)
  fun gtk_button_box_set_child_secondary(widget : GtkButtonBox*, child : GtkWidget*, is_secondary : Gboolean)
  fun gtk_button_box_set_child_size(widget : GtkButtonBox*, min_width : Gint, min_height : Gint)
  fun gtk_button_box_set_layout(widget : GtkButtonBox*, layout_style : GtkButtonBoxStyle)
  fun gtk_button_box_style_get_type : GType
  fun gtk_button_clicked(button : GtkButton*)
  fun gtk_button_enter(button : GtkButton*)
  fun gtk_button_get_alignment(button : GtkButton*, xalign : Gfloat*, yalign : Gfloat*)
  fun gtk_button_get_event_window(button : GtkButton*) : GdkWindow*
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
  fun gtk_button_new_from_stock(stock_id : Gchar*) : GtkWidget*
  fun gtk_button_new_with_label(label : Gchar*) : GtkWidget*
  fun gtk_button_new_with_mnemonic(label : Gchar*) : GtkWidget*
  fun gtk_button_pressed(button : GtkButton*)
  fun gtk_button_released(button : GtkButton*)
  fun gtk_button_set_alignment(button : GtkButton*, xalign : Gfloat, yalign : Gfloat)
  fun gtk_button_set_focus_on_click(button : GtkButton*, focus_on_click : Gboolean)
  fun gtk_button_set_image(button : GtkButton*, image : GtkWidget*)
  fun gtk_button_set_image_position(button : GtkButton*, position : GtkPositionType)
  fun gtk_button_set_label(button : GtkButton*, label : Gchar*)
  fun gtk_button_set_relief(button : GtkButton*, newstyle : GtkReliefStyle)
  fun gtk_button_set_use_stock(button : GtkButton*, use_stock : Gboolean)
  fun gtk_button_set_use_underline(button : GtkButton*, use_underline : Gboolean)
  fun gtk_buttons_type_get_type : GType
  fun gtk_calendar_clear_marks(calendar : GtkCalendar*)
  fun gtk_calendar_display_options(calendar : GtkCalendar*, flags : GtkCalendarDisplayOptions)
  fun gtk_calendar_display_options_get_type : GType
  fun gtk_calendar_freeze(calendar : GtkCalendar*)
  fun gtk_calendar_get_date(calendar : GtkCalendar*, year : Guint*, month : Guint*, day : Guint*)
  fun gtk_calendar_get_detail_height_rows(calendar : GtkCalendar*) : Gint
  fun gtk_calendar_get_detail_width_chars(calendar : GtkCalendar*) : Gint
  fun gtk_calendar_get_display_options(calendar : GtkCalendar*) : GtkCalendarDisplayOptions
  fun gtk_calendar_get_type : GType
  fun gtk_calendar_mark_day(calendar : GtkCalendar*, day : Guint) : Gboolean
  fun gtk_calendar_new : GtkWidget*
  fun gtk_calendar_select_day(calendar : GtkCalendar*, day : Guint)
  fun gtk_calendar_select_month(calendar : GtkCalendar*, month : Guint, year : Guint) : Gboolean
  fun gtk_calendar_set_detail_func(calendar : GtkCalendar*, func : GtkCalendarDetailFunc, data : Gpointer, destroy : GDestroyNotify)
  fun gtk_calendar_set_detail_height_rows(calendar : GtkCalendar*, rows : Gint)
  fun gtk_calendar_set_detail_width_chars(calendar : GtkCalendar*, chars : Gint)
  fun gtk_calendar_set_display_options(calendar : GtkCalendar*, flags : GtkCalendarDisplayOptions)
  fun gtk_calendar_thaw(calendar : GtkCalendar*)
  fun gtk_calendar_unmark_day(calendar : GtkCalendar*, day : Guint) : Gboolean
  fun gtk_cell_editable_editing_done(cell_editable : GtkCellEditable)
  fun gtk_cell_editable_get_type : GType
  fun gtk_cell_editable_remove_widget(cell_editable : GtkCellEditable)
  fun gtk_cell_editable_start_editing(cell_editable : GtkCellEditable, event : GdkEvent*)
  fun gtk_cell_layout_add_attribute(cell_layout : GtkCellLayout, cell : GtkCellRenderer*, attribute : Gchar*, column : Gint)
  fun gtk_cell_layout_clear(cell_layout : GtkCellLayout)
  fun gtk_cell_layout_clear_attributes(cell_layout : GtkCellLayout, cell : GtkCellRenderer*)
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
  fun gtk_cell_renderer_combo_get_type : GType
  fun gtk_cell_renderer_combo_new : GtkCellRenderer*
  fun gtk_cell_renderer_editing_canceled(cell : GtkCellRenderer*)
  fun gtk_cell_renderer_get_alignment(cell : GtkCellRenderer*, xalign : Gfloat*, yalign : Gfloat*)
  fun gtk_cell_renderer_get_fixed_size(cell : GtkCellRenderer*, width : Gint*, height : Gint*)
  fun gtk_cell_renderer_get_padding(cell : GtkCellRenderer*, xpad : Gint*, ypad : Gint*)
  fun gtk_cell_renderer_get_sensitive(cell : GtkCellRenderer*) : Gboolean
  fun gtk_cell_renderer_get_size(cell : GtkCellRenderer*, widget : GtkWidget*, cell_area : GdkRectangle*, x_offset : Gint*, y_offset : Gint*, width : Gint*, height : Gint*)
  fun gtk_cell_renderer_get_type : GType
  fun gtk_cell_renderer_get_visible(cell : GtkCellRenderer*) : Gboolean
  fun gtk_cell_renderer_mode_get_type : GType
  fun gtk_cell_renderer_pixbuf_get_type : GType
  fun gtk_cell_renderer_pixbuf_new : GtkCellRenderer*
  fun gtk_cell_renderer_progress_get_type : GType
  fun gtk_cell_renderer_progress_new : GtkCellRenderer*
  fun gtk_cell_renderer_render(cell : GtkCellRenderer*, window : GdkWindow*, widget : GtkWidget*, background_area : GdkRectangle*, cell_area : GdkRectangle*, expose_area : GdkRectangle*, flags : GtkCellRendererState)
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
  fun gtk_cell_type_get_type : GType
  fun gtk_cell_view_get_cell_renderers(cell_view : GtkCellView*) : GList*
  fun gtk_cell_view_get_displayed_row(cell_view : GtkCellView*) : GtkTreePath
  fun gtk_cell_view_get_model(cell_view : GtkCellView*) : GtkTreeModel
  fun gtk_cell_view_get_size_of_row(cell_view : GtkCellView*, path : GtkTreePath, requisition : GtkRequisition*) : Gboolean
  fun gtk_cell_view_get_type : GType
  fun gtk_cell_view_new : GtkWidget*
  fun gtk_cell_view_new_with_markup(markup : Gchar*) : GtkWidget*
  fun gtk_cell_view_new_with_pixbuf(pixbuf : GdkPixbuf) : GtkWidget*
  fun gtk_cell_view_new_with_text(text : Gchar*) : GtkWidget*
  fun gtk_cell_view_set_background_color(cell_view : GtkCellView*, color : GdkColor*)
  fun gtk_cell_view_set_displayed_row(cell_view : GtkCellView*, path : GtkTreePath)
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
  fun gtk_check_menu_item_set_show_toggle(menu_item : GtkCheckMenuItem*, always : Gboolean)
  fun gtk_check_menu_item_toggled(check_menu_item : GtkCheckMenuItem*)
  fun gtk_check_version(required_major : Guint, required_minor : Guint, required_micro : Guint) : Gchar*
  fun gtk_clipboard_clear(clipboard : GtkClipboard)
  fun gtk_clipboard_get(selection : GdkAtom) : GtkClipboard
  fun gtk_clipboard_get_display(clipboard : GtkClipboard) : GdkDisplay*
  fun gtk_clipboard_get_for_display(display : GdkDisplay*, selection : GdkAtom) : GtkClipboard
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
  fun gtk_clipboard_wait_for_contents(clipboard : GtkClipboard, target : GdkAtom) : GtkSelectionData*
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
  fun gtk_clist_append(clist : GtkCList*, text : Gchar**) : Gint
  fun gtk_clist_clear(clist : GtkCList*)
  fun gtk_clist_column_title_active(clist : GtkCList*, column : Gint)
  fun gtk_clist_column_title_passive(clist : GtkCList*, column : Gint)
  fun gtk_clist_column_titles_active(clist : GtkCList*)
  fun gtk_clist_column_titles_hide(clist : GtkCList*)
  fun gtk_clist_column_titles_passive(clist : GtkCList*)
  fun gtk_clist_column_titles_show(clist : GtkCList*)
  fun gtk_clist_columns_autosize(clist : GtkCList*) : Gint
  fun gtk_clist_drag_pos_get_type : GType
  fun gtk_clist_find_row_from_data(clist : GtkCList*, data : Gpointer) : Gint
  fun gtk_clist_freeze(clist : GtkCList*)
  fun gtk_clist_get_cell_style(clist : GtkCList*, row : Gint, column : Gint) : GtkStyle*
  fun gtk_clist_get_cell_type(clist : GtkCList*, row : Gint, column : Gint) : GtkCellType
  fun gtk_clist_get_column_title(clist : GtkCList*, column : Gint) : Gchar*
  fun gtk_clist_get_column_widget(clist : GtkCList*, column : Gint) : GtkWidget*
  fun gtk_clist_get_hadjustment(clist : GtkCList*) : GtkAdjustment*
  fun gtk_clist_get_pixmap(clist : GtkCList*, row : Gint, column : Gint, pixmap : GdkPixmap**, mask : GdkBitmap**) : Gint
  fun gtk_clist_get_pixtext(clist : GtkCList*, row : Gint, column : Gint, text : Gchar**, spacing : Guint8*, pixmap : GdkPixmap**, mask : GdkBitmap**) : Gint
  fun gtk_clist_get_row_data(clist : GtkCList*, row : Gint) : Gpointer
  fun gtk_clist_get_row_style(clist : GtkCList*, row : Gint) : GtkStyle*
  fun gtk_clist_get_selectable(clist : GtkCList*, row : Gint) : Gboolean
  fun gtk_clist_get_selection_info(clist : GtkCList*, x : Gint, y : Gint, row : Gint*, column : Gint*) : Gint
  fun gtk_clist_get_text(clist : GtkCList*, row : Gint, column : Gint, text : Gchar**) : Gint
  fun gtk_clist_get_type : GType
  fun gtk_clist_get_vadjustment(clist : GtkCList*) : GtkAdjustment*
  fun gtk_clist_insert(clist : GtkCList*, row : Gint, text : Gchar**) : Gint
  fun gtk_clist_moveto(clist : GtkCList*, row : Gint, column : Gint, row_align : Gfloat, col_align : Gfloat)
  fun gtk_clist_new(columns : Gint) : GtkWidget*
  fun gtk_clist_new_with_titles(columns : Gint, titles : Gchar**) : GtkWidget*
  fun gtk_clist_optimal_column_width(clist : GtkCList*, column : Gint) : Gint
  fun gtk_clist_prepend(clist : GtkCList*, text : Gchar**) : Gint
  fun gtk_clist_remove(clist : GtkCList*, row : Gint)
  fun gtk_clist_row_is_visible(clist : GtkCList*, row : Gint) : GtkVisibility
  fun gtk_clist_row_move(clist : GtkCList*, source_row : Gint, dest_row : Gint)
  fun gtk_clist_select_all(clist : GtkCList*)
  fun gtk_clist_select_row(clist : GtkCList*, row : Gint, column : Gint)
  fun gtk_clist_set_auto_sort(clist : GtkCList*, auto_sort : Gboolean)
  fun gtk_clist_set_background(clist : GtkCList*, row : Gint, color : GdkColor*)
  fun gtk_clist_set_button_actions(clist : GtkCList*, button : Guint, button_actions : Guint8)
  fun gtk_clist_set_cell_style(clist : GtkCList*, row : Gint, column : Gint, style : GtkStyle*)
  fun gtk_clist_set_column_auto_resize(clist : GtkCList*, column : Gint, auto_resize : Gboolean)
  fun gtk_clist_set_column_justification(clist : GtkCList*, column : Gint, justification : GtkJustification)
  fun gtk_clist_set_column_max_width(clist : GtkCList*, column : Gint, max_width : Gint)
  fun gtk_clist_set_column_min_width(clist : GtkCList*, column : Gint, min_width : Gint)
  fun gtk_clist_set_column_resizeable(clist : GtkCList*, column : Gint, resizeable : Gboolean)
  fun gtk_clist_set_column_title(clist : GtkCList*, column : Gint, title : Gchar*)
  fun gtk_clist_set_column_visibility(clist : GtkCList*, column : Gint, visible : Gboolean)
  fun gtk_clist_set_column_widget(clist : GtkCList*, column : Gint, widget : GtkWidget*)
  fun gtk_clist_set_column_width(clist : GtkCList*, column : Gint, width : Gint)
  fun gtk_clist_set_compare_func(clist : GtkCList*, cmp_func : GtkCListCompareFunc)
  fun gtk_clist_set_foreground(clist : GtkCList*, row : Gint, color : GdkColor*)
  fun gtk_clist_set_hadjustment(clist : GtkCList*, adjustment : GtkAdjustment*)
  fun gtk_clist_set_pixmap(clist : GtkCList*, row : Gint, column : Gint, pixmap : GdkPixmap*, mask : GdkBitmap*)
  fun gtk_clist_set_pixtext(clist : GtkCList*, row : Gint, column : Gint, text : Gchar*, spacing : Guint8, pixmap : GdkPixmap*, mask : GdkBitmap*)
  fun gtk_clist_set_reorderable(clist : GtkCList*, reorderable : Gboolean)
  fun gtk_clist_set_row_data(clist : GtkCList*, row : Gint, data : Gpointer)
  fun gtk_clist_set_row_data_full(clist : GtkCList*, row : Gint, data : Gpointer, destroy : GDestroyNotify)
  fun gtk_clist_set_row_height(clist : GtkCList*, height : Guint)
  fun gtk_clist_set_row_style(clist : GtkCList*, row : Gint, style : GtkStyle*)
  fun gtk_clist_set_selectable(clist : GtkCList*, row : Gint, selectable : Gboolean)
  fun gtk_clist_set_selection_mode(clist : GtkCList*, mode : GtkSelectionMode)
  fun gtk_clist_set_shadow_type(clist : GtkCList*, type : GtkShadowType)
  fun gtk_clist_set_shift(clist : GtkCList*, row : Gint, column : Gint, vertical : Gint, horizontal : Gint)
  fun gtk_clist_set_sort_column(clist : GtkCList*, column : Gint)
  fun gtk_clist_set_sort_type(clist : GtkCList*, sort_type : GtkSortType)
  fun gtk_clist_set_text(clist : GtkCList*, row : Gint, column : Gint, text : Gchar*)
  fun gtk_clist_set_use_drag_icons(clist : GtkCList*, use_icons : Gboolean)
  fun gtk_clist_set_vadjustment(clist : GtkCList*, adjustment : GtkAdjustment*)
  fun gtk_clist_sort(clist : GtkCList*)
  fun gtk_clist_swap_rows(clist : GtkCList*, row1 : Gint, row2 : Gint)
  fun gtk_clist_thaw(clist : GtkCList*)
  fun gtk_clist_undo_selection(clist : GtkCList*)
  fun gtk_clist_unselect_all(clist : GtkCList*)
  fun gtk_clist_unselect_row(clist : GtkCList*, row : Gint, column : Gint)
  fun gtk_color_button_get_alpha(color_button : GtkColorButton*) : Guint16
  fun gtk_color_button_get_color(color_button : GtkColorButton*, color : GdkColor*)
  fun gtk_color_button_get_title(color_button : GtkColorButton*) : Gchar*
  fun gtk_color_button_get_type : GType
  fun gtk_color_button_get_use_alpha(color_button : GtkColorButton*) : Gboolean
  fun gtk_color_button_new : GtkWidget*
  fun gtk_color_button_new_with_color(color : GdkColor*) : GtkWidget*
  fun gtk_color_button_set_alpha(color_button : GtkColorButton*, alpha : Guint16)
  fun gtk_color_button_set_color(color_button : GtkColorButton*, color : GdkColor*)
  fun gtk_color_button_set_title(color_button : GtkColorButton*, title : Gchar*)
  fun gtk_color_button_set_use_alpha(color_button : GtkColorButton*, use_alpha : Gboolean)
  fun gtk_color_selection_dialog_get_color_selection(colorsel : GtkColorSelectionDialog*) : GtkWidget*
  fun gtk_color_selection_dialog_get_type : GType
  fun gtk_color_selection_dialog_new(title : Gchar*) : GtkWidget*
  fun gtk_color_selection_get_color(colorsel : GtkColorSelection*, color : Gdouble*)
  fun gtk_color_selection_get_current_alpha(colorsel : GtkColorSelection*) : Guint16
  fun gtk_color_selection_get_current_color(colorsel : GtkColorSelection*, color : GdkColor*)
  fun gtk_color_selection_get_has_opacity_control(colorsel : GtkColorSelection*) : Gboolean
  fun gtk_color_selection_get_has_palette(colorsel : GtkColorSelection*) : Gboolean
  fun gtk_color_selection_get_previous_alpha(colorsel : GtkColorSelection*) : Guint16
  fun gtk_color_selection_get_previous_color(colorsel : GtkColorSelection*, color : GdkColor*)
  fun gtk_color_selection_get_type : GType
  fun gtk_color_selection_is_adjusting(colorsel : GtkColorSelection*) : Gboolean
  fun gtk_color_selection_new : GtkWidget*
  fun gtk_color_selection_palette_from_string(str : Gchar*, colors : GdkColor**, n_colors : Gint*) : Gboolean
  fun gtk_color_selection_palette_to_string(colors : GdkColor*, n_colors : Gint) : Gchar*
  fun gtk_color_selection_set_change_palette_hook(func : GtkColorSelectionChangePaletteFunc) : GtkColorSelectionChangePaletteFunc
  fun gtk_color_selection_set_change_palette_with_screen_hook(func : GtkColorSelectionChangePaletteWithScreenFunc) : GtkColorSelectionChangePaletteWithScreenFunc
  fun gtk_color_selection_set_color(colorsel : GtkColorSelection*, color : Gdouble*)
  fun gtk_color_selection_set_current_alpha(colorsel : GtkColorSelection*, alpha : Guint16)
  fun gtk_color_selection_set_current_color(colorsel : GtkColorSelection*, color : GdkColor*)
  fun gtk_color_selection_set_has_opacity_control(colorsel : GtkColorSelection*, has_opacity : Gboolean)
  fun gtk_color_selection_set_has_palette(colorsel : GtkColorSelection*, has_palette : Gboolean)
  fun gtk_color_selection_set_previous_alpha(colorsel : GtkColorSelection*, alpha : Guint16)
  fun gtk_color_selection_set_previous_color(colorsel : GtkColorSelection*, color : GdkColor*)
  fun gtk_color_selection_set_update_policy(colorsel : GtkColorSelection*, policy : GtkUpdateType)
  fun gtk_combo_box_append_text(combo_box : GtkComboBox*, text : Gchar*)
  fun gtk_combo_box_entry_get_text_column(entry_box : GtkComboBoxEntry*) : Gint
  fun gtk_combo_box_entry_get_type : GType
  fun gtk_combo_box_entry_new : GtkWidget*
  fun gtk_combo_box_entry_new_text : GtkWidget*
  fun gtk_combo_box_entry_new_with_model(model : GtkTreeModel, text_column : Gint) : GtkWidget*
  fun gtk_combo_box_entry_set_text_column(entry_box : GtkComboBoxEntry*, text_column : Gint)
  fun gtk_combo_box_get_active(combo_box : GtkComboBox*) : Gint
  fun gtk_combo_box_get_active_iter(combo_box : GtkComboBox*, iter : GtkTreeIter*) : Gboolean
  fun gtk_combo_box_get_active_text(combo_box : GtkComboBox*) : Gchar*
  fun gtk_combo_box_get_add_tearoffs(combo_box : GtkComboBox*) : Gboolean
  fun gtk_combo_box_get_button_sensitivity(combo_box : GtkComboBox*) : GtkSensitivityType
  fun gtk_combo_box_get_column_span_column(combo_box : GtkComboBox*) : Gint
  fun gtk_combo_box_get_entry_text_column(combo_box : GtkComboBox*) : Gint
  fun gtk_combo_box_get_focus_on_click(combo : GtkComboBox*) : Gboolean
  fun gtk_combo_box_get_has_entry(combo_box : GtkComboBox*) : Gboolean
  fun gtk_combo_box_get_model(combo_box : GtkComboBox*) : GtkTreeModel
  fun gtk_combo_box_get_popup_accessible(combo_box : GtkComboBox*) : AtkObject*
  fun gtk_combo_box_get_row_separator_func(combo_box : GtkComboBox*) : GtkTreeViewRowSeparatorFunc
  fun gtk_combo_box_get_row_span_column(combo_box : GtkComboBox*) : Gint
  fun gtk_combo_box_get_title(combo_box : GtkComboBox*) : Gchar*
  fun gtk_combo_box_get_type : GType
  fun gtk_combo_box_get_wrap_width(combo_box : GtkComboBox*) : Gint
  fun gtk_combo_box_insert_text(combo_box : GtkComboBox*, position : Gint, text : Gchar*)
  fun gtk_combo_box_new : GtkWidget*
  fun gtk_combo_box_new_text : GtkWidget*
  fun gtk_combo_box_new_with_entry : GtkWidget*
  fun gtk_combo_box_new_with_model(model : GtkTreeModel) : GtkWidget*
  fun gtk_combo_box_new_with_model_and_entry(model : GtkTreeModel) : GtkWidget*
  fun gtk_combo_box_popdown(combo_box : GtkComboBox*)
  fun gtk_combo_box_popup(combo_box : GtkComboBox*)
  fun gtk_combo_box_prepend_text(combo_box : GtkComboBox*, text : Gchar*)
  fun gtk_combo_box_remove_text(combo_box : GtkComboBox*, position : Gint)
  fun gtk_combo_box_set_active(combo_box : GtkComboBox*, index_ : Gint)
  fun gtk_combo_box_set_active_iter(combo_box : GtkComboBox*, iter : GtkTreeIter*)
  fun gtk_combo_box_set_add_tearoffs(combo_box : GtkComboBox*, add_tearoffs : Gboolean)
  fun gtk_combo_box_set_button_sensitivity(combo_box : GtkComboBox*, sensitivity : GtkSensitivityType)
  fun gtk_combo_box_set_column_span_column(combo_box : GtkComboBox*, column_span : Gint)
  fun gtk_combo_box_set_entry_text_column(combo_box : GtkComboBox*, text_column : Gint)
  fun gtk_combo_box_set_focus_on_click(combo : GtkComboBox*, focus_on_click : Gboolean)
  fun gtk_combo_box_set_model(combo_box : GtkComboBox*, model : GtkTreeModel)
  fun gtk_combo_box_set_row_separator_func(combo_box : GtkComboBox*, func : GtkTreeViewRowSeparatorFunc, data : Gpointer, destroy : GDestroyNotify)
  fun gtk_combo_box_set_row_span_column(combo_box : GtkComboBox*, row_span : Gint)
  fun gtk_combo_box_set_title(combo_box : GtkComboBox*, title : Gchar*)
  fun gtk_combo_box_set_wrap_width(combo_box : GtkComboBox*, width : Gint)
  fun gtk_combo_box_text_append_text(combo_box : GtkComboBoxText*, text : Gchar*)
  fun gtk_combo_box_text_get_active_text(combo_box : GtkComboBoxText*) : Gchar*
  fun gtk_combo_box_text_get_type : GType
  fun gtk_combo_box_text_insert_text(combo_box : GtkComboBoxText*, position : Gint, text : Gchar*)
  fun gtk_combo_box_text_new : GtkWidget*
  fun gtk_combo_box_text_new_with_entry : GtkWidget*
  fun gtk_combo_box_text_prepend_text(combo_box : GtkComboBoxText*, text : Gchar*)
  fun gtk_combo_box_text_remove(combo_box : GtkComboBoxText*, position : Gint)
  fun gtk_combo_disable_activate(combo : GtkCombo*)
  fun gtk_combo_get_type : GType
  fun gtk_combo_new : GtkWidget*
  fun gtk_combo_set_case_sensitive(combo : GtkCombo*, val : Gboolean)
  fun gtk_combo_set_item_string(combo : GtkCombo*, item : GtkItem*, item_value : Gchar*)
  fun gtk_combo_set_popdown_strings(combo : GtkCombo*, strings : GList*)
  fun gtk_combo_set_use_arrows(combo : GtkCombo*, val : Gboolean)
  fun gtk_combo_set_use_arrows_always(combo : GtkCombo*, val : Gboolean)
  fun gtk_combo_set_value_in_list(combo : GtkCombo*, val : Gboolean, ok_if_empty : Gboolean)
  fun gtk_container_add(container : GtkContainer*, widget : GtkWidget*)
  fun gtk_container_add_with_properties(container : GtkContainer*, widget : GtkWidget*, first_prop_name : Gchar*, ...)
  fun gtk_container_check_resize(container : GtkContainer*)
  fun gtk_container_child_get(container : GtkContainer*, child : GtkWidget*, first_prop_name : Gchar*, ...)
  fun gtk_container_child_get_property(container : GtkContainer*, child : GtkWidget*, property_name : Gchar*, value : GValue*)
  fun gtk_container_child_get_valist(container : GtkContainer*, child : GtkWidget*, first_property_name : Gchar*, var_args : VaList)
  fun gtk_container_child_set(container : GtkContainer*, child : GtkWidget*, first_prop_name : Gchar*, ...)
  fun gtk_container_child_set_property(container : GtkContainer*, child : GtkWidget*, property_name : Gchar*, value : GValue*)
  fun gtk_container_child_set_valist(container : GtkContainer*, child : GtkWidget*, first_property_name : Gchar*, var_args : VaList)
  fun gtk_container_child_type(container : GtkContainer*) : GType
  fun gtk_container_class_find_child_property(cclass : GObjectClass*, property_name : Gchar*) : GParamSpec*
  fun gtk_container_class_install_child_property(cclass : GtkContainerClass*, property_id : Guint, pspec : GParamSpec*)
  fun gtk_container_class_list_child_properties(cclass : GObjectClass*, n_properties : Guint*) : GParamSpec**
  fun gtk_container_forall(container : GtkContainer*, callback : GtkCallback, callback_data : Gpointer)
  fun gtk_container_foreach(container : GtkContainer*, callback : GtkCallback, callback_data : Gpointer)
  fun gtk_container_foreach_full(container : GtkContainer*, callback : GtkCallback, marshal : GtkCallbackMarshal, callback_data : Gpointer, notify : GDestroyNotify)
  fun gtk_container_get_border_width(container : GtkContainer*) : Guint
  fun gtk_container_get_children(container : GtkContainer*) : GList*
  fun gtk_container_get_focus_chain(container : GtkContainer*, focusable_widgets : GList**) : Gboolean
  fun gtk_container_get_focus_child(container : GtkContainer*) : GtkWidget*
  fun gtk_container_get_focus_hadjustment(container : GtkContainer*) : GtkAdjustment*
  fun gtk_container_get_focus_vadjustment(container : GtkContainer*) : GtkAdjustment*
  fun gtk_container_get_resize_mode(container : GtkContainer*) : GtkResizeMode
  fun gtk_container_get_type : GType
  fun gtk_container_propagate_expose(container : GtkContainer*, child : GtkWidget*, event : GdkEventExpose*)
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
  fun gtk_ctree_collapse(ctree : GtkCTree*, node : GtkCTreeNode*)
  fun gtk_ctree_collapse_recursive(ctree : GtkCTree*, node : GtkCTreeNode*)
  fun gtk_ctree_collapse_to_depth(ctree : GtkCTree*, node : GtkCTreeNode*, depth : Gint)
  fun gtk_ctree_expand(ctree : GtkCTree*, node : GtkCTreeNode*)
  fun gtk_ctree_expand_recursive(ctree : GtkCTree*, node : GtkCTreeNode*)
  fun gtk_ctree_expand_to_depth(ctree : GtkCTree*, node : GtkCTreeNode*, depth : Gint)
  fun gtk_ctree_expander_style_get_type : GType
  fun gtk_ctree_expansion_type_get_type : GType
  fun gtk_ctree_export_to_gnode(ctree : GtkCTree*, parent : GNode*, sibling : GNode*, node : GtkCTreeNode*, func : GtkCTreeGNodeFunc, data : Gpointer) : GNode*
  fun gtk_ctree_find(ctree : GtkCTree*, node : GtkCTreeNode*, child : GtkCTreeNode*) : Gboolean
  fun gtk_ctree_find_all_by_row_data(ctree : GtkCTree*, node : GtkCTreeNode*, data : Gpointer) : GList*
  fun gtk_ctree_find_all_by_row_data_custom(ctree : GtkCTree*, node : GtkCTreeNode*, data : Gpointer, func : GCompareFunc) : GList*
  fun gtk_ctree_find_by_row_data(ctree : GtkCTree*, node : GtkCTreeNode*, data : Gpointer) : GtkCTreeNode*
  fun gtk_ctree_find_by_row_data_custom(ctree : GtkCTree*, node : GtkCTreeNode*, data : Gpointer, func : GCompareFunc) : GtkCTreeNode*
  fun gtk_ctree_find_node_ptr(ctree : GtkCTree*, ctree_row : GtkCTreeRow*) : GtkCTreeNode*
  fun gtk_ctree_get_node_info(ctree : GtkCTree*, node : GtkCTreeNode*, text : Gchar**, spacing : Guint8*, pixmap_closed : GdkPixmap**, mask_closed : GdkBitmap**, pixmap_opened : GdkPixmap**, mask_opened : GdkBitmap**, is_leaf : Gboolean*, expanded : Gboolean*) : Gboolean
  fun gtk_ctree_get_type : GType
  fun gtk_ctree_insert_gnode(ctree : GtkCTree*, parent : GtkCTreeNode*, sibling : GtkCTreeNode*, gnode : GNode*, func : GtkCTreeGNodeFunc, data : Gpointer) : GtkCTreeNode*
  fun gtk_ctree_insert_node(ctree : GtkCTree*, parent : GtkCTreeNode*, sibling : GtkCTreeNode*, text : Gchar**, spacing : Guint8, pixmap_closed : GdkPixmap*, mask_closed : GdkBitmap*, pixmap_opened : GdkPixmap*, mask_opened : GdkBitmap*, is_leaf : Gboolean, expanded : Gboolean) : GtkCTreeNode*
  fun gtk_ctree_is_ancestor(ctree : GtkCTree*, node : GtkCTreeNode*, child : GtkCTreeNode*) : Gboolean
  fun gtk_ctree_is_hot_spot(ctree : GtkCTree*, x : Gint, y : Gint) : Gboolean
  fun gtk_ctree_is_viewable(ctree : GtkCTree*, node : GtkCTreeNode*) : Gboolean
  fun gtk_ctree_last(ctree : GtkCTree*, node : GtkCTreeNode*) : GtkCTreeNode*
  fun gtk_ctree_line_style_get_type : GType
  fun gtk_ctree_move(ctree : GtkCTree*, node : GtkCTreeNode*, new_parent : GtkCTreeNode*, new_sibling : GtkCTreeNode*)
  fun gtk_ctree_new(columns : Gint, tree_column : Gint) : GtkWidget*
  fun gtk_ctree_new_with_titles(columns : Gint, tree_column : Gint, titles : Gchar**) : GtkWidget*
  fun gtk_ctree_node_get_cell_style(ctree : GtkCTree*, node : GtkCTreeNode*, column : Gint) : GtkStyle*
  fun gtk_ctree_node_get_cell_type(ctree : GtkCTree*, node : GtkCTreeNode*, column : Gint) : GtkCellType
  fun gtk_ctree_node_get_pixmap(ctree : GtkCTree*, node : GtkCTreeNode*, column : Gint, pixmap : GdkPixmap**, mask : GdkBitmap**) : Gboolean
  fun gtk_ctree_node_get_pixtext(ctree : GtkCTree*, node : GtkCTreeNode*, column : Gint, text : Gchar**, spacing : Guint8*, pixmap : GdkPixmap**, mask : GdkBitmap**) : Gboolean
  fun gtk_ctree_node_get_row_data(ctree : GtkCTree*, node : GtkCTreeNode*) : Gpointer
  fun gtk_ctree_node_get_row_style(ctree : GtkCTree*, node : GtkCTreeNode*) : GtkStyle*
  fun gtk_ctree_node_get_selectable(ctree : GtkCTree*, node : GtkCTreeNode*) : Gboolean
  fun gtk_ctree_node_get_text(ctree : GtkCTree*, node : GtkCTreeNode*, column : Gint, text : Gchar**) : Gboolean
  fun gtk_ctree_node_get_type : GType
  fun gtk_ctree_node_is_visible(ctree : GtkCTree*, node : GtkCTreeNode*) : GtkVisibility
  fun gtk_ctree_node_moveto(ctree : GtkCTree*, node : GtkCTreeNode*, column : Gint, row_align : Gfloat, col_align : Gfloat)
  fun gtk_ctree_node_nth(ctree : GtkCTree*, row : Guint) : GtkCTreeNode*
  fun gtk_ctree_node_set_background(ctree : GtkCTree*, node : GtkCTreeNode*, color : GdkColor*)
  fun gtk_ctree_node_set_cell_style(ctree : GtkCTree*, node : GtkCTreeNode*, column : Gint, style : GtkStyle*)
  fun gtk_ctree_node_set_foreground(ctree : GtkCTree*, node : GtkCTreeNode*, color : GdkColor*)
  fun gtk_ctree_node_set_pixmap(ctree : GtkCTree*, node : GtkCTreeNode*, column : Gint, pixmap : GdkPixmap*, mask : GdkBitmap*)
  fun gtk_ctree_node_set_pixtext(ctree : GtkCTree*, node : GtkCTreeNode*, column : Gint, text : Gchar*, spacing : Guint8, pixmap : GdkPixmap*, mask : GdkBitmap*)
  fun gtk_ctree_node_set_row_data(ctree : GtkCTree*, node : GtkCTreeNode*, data : Gpointer)
  fun gtk_ctree_node_set_row_data_full(ctree : GtkCTree*, node : GtkCTreeNode*, data : Gpointer, destroy : GDestroyNotify)
  fun gtk_ctree_node_set_row_style(ctree : GtkCTree*, node : GtkCTreeNode*, style : GtkStyle*)
  fun gtk_ctree_node_set_selectable(ctree : GtkCTree*, node : GtkCTreeNode*, selectable : Gboolean)
  fun gtk_ctree_node_set_shift(ctree : GtkCTree*, node : GtkCTreeNode*, column : Gint, vertical : Gint, horizontal : Gint)
  fun gtk_ctree_node_set_text(ctree : GtkCTree*, node : GtkCTreeNode*, column : Gint, text : Gchar*)
  fun gtk_ctree_pos_get_type : GType
  fun gtk_ctree_post_recursive(ctree : GtkCTree*, node : GtkCTreeNode*, func : GtkCTreeFunc, data : Gpointer)
  fun gtk_ctree_post_recursive_to_depth(ctree : GtkCTree*, node : GtkCTreeNode*, depth : Gint, func : GtkCTreeFunc, data : Gpointer)
  fun gtk_ctree_pre_recursive(ctree : GtkCTree*, node : GtkCTreeNode*, func : GtkCTreeFunc, data : Gpointer)
  fun gtk_ctree_pre_recursive_to_depth(ctree : GtkCTree*, node : GtkCTreeNode*, depth : Gint, func : GtkCTreeFunc, data : Gpointer)
  fun gtk_ctree_real_select_recursive(ctree : GtkCTree*, node : GtkCTreeNode*, state : Gint)
  fun gtk_ctree_remove_node(ctree : GtkCTree*, node : GtkCTreeNode*)
  fun gtk_ctree_select(ctree : GtkCTree*, node : GtkCTreeNode*)
  fun gtk_ctree_select_recursive(ctree : GtkCTree*, node : GtkCTreeNode*)
  fun gtk_ctree_set_drag_compare_func(ctree : GtkCTree*, cmp_func : GtkCTreeCompareDragFunc)
  fun gtk_ctree_set_expander_style(ctree : GtkCTree*, expander_style : GtkCTreeExpanderStyle)
  fun gtk_ctree_set_indent(ctree : GtkCTree*, indent : Gint)
  fun gtk_ctree_set_line_style(ctree : GtkCTree*, line_style : GtkCTreeLineStyle)
  fun gtk_ctree_set_node_info(ctree : GtkCTree*, node : GtkCTreeNode*, text : Gchar*, spacing : Guint8, pixmap_closed : GdkPixmap*, mask_closed : GdkBitmap*, pixmap_opened : GdkPixmap*, mask_opened : GdkBitmap*, is_leaf : Gboolean, expanded : Gboolean)
  fun gtk_ctree_set_show_stub(ctree : GtkCTree*, show_stub : Gboolean)
  fun gtk_ctree_set_spacing(ctree : GtkCTree*, spacing : Gint)
  fun gtk_ctree_sort_node(ctree : GtkCTree*, node : GtkCTreeNode*)
  fun gtk_ctree_sort_recursive(ctree : GtkCTree*, node : GtkCTreeNode*)
  fun gtk_ctree_toggle_expansion(ctree : GtkCTree*, node : GtkCTreeNode*)
  fun gtk_ctree_toggle_expansion_recursive(ctree : GtkCTree*, node : GtkCTreeNode*)
  fun gtk_ctree_unselect(ctree : GtkCTree*, node : GtkCTreeNode*)
  fun gtk_ctree_unselect_recursive(ctree : GtkCTree*, node : GtkCTreeNode*)
  fun gtk_curve_get_type : GType
  fun gtk_curve_get_vector(curve : GtkCurve*, veclen : LibC::Int, vector : Gfloat*)
  fun gtk_curve_new : GtkWidget*
  fun gtk_curve_reset(curve : GtkCurve*)
  fun gtk_curve_set_curve_type(curve : GtkCurve*, type : GtkCurveType)
  fun gtk_curve_set_gamma(curve : GtkCurve*, gamma_ : Gfloat)
  fun gtk_curve_set_range(curve : GtkCurve*, min_x : Gfloat, max_x : Gfloat, min_y : Gfloat, max_y : Gfloat)
  fun gtk_curve_set_vector(curve : GtkCurve*, veclen : LibC::Int, vector : Gfloat*)
  fun gtk_curve_type_get_type : GType
  fun gtk_debug_flag_get_type : GType
  fun gtk_delete_type_get_type : GType
  fun gtk_dest_defaults_get_type : GType
  fun gtk_dialog_add_action_widget(dialog : GtkDialog*, child : GtkWidget*, response_id : Gint)
  fun gtk_dialog_add_button(dialog : GtkDialog*, button_text : Gchar*, response_id : Gint) : GtkWidget*
  fun gtk_dialog_add_buttons(dialog : GtkDialog*, first_button_text : Gchar*, ...)
  fun gtk_dialog_flags_get_type : GType
  fun gtk_dialog_get_action_area(dialog : GtkDialog*) : GtkWidget*
  fun gtk_dialog_get_content_area(dialog : GtkDialog*) : GtkWidget*
  fun gtk_dialog_get_has_separator(dialog : GtkDialog*) : Gboolean
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
  fun gtk_dialog_set_has_separator(dialog : GtkDialog*, setting : Gboolean)
  fun gtk_dialog_set_response_sensitive(dialog : GtkDialog*, response_id : Gint, setting : Gboolean)
  fun gtk_direction_type_get_type : GType
  fun gtk_disable_setlocale
  fun gtk_drag_begin(widget : GtkWidget*, targets : GtkTargetList*, actions : GdkDragAction, button : Gint, event : GdkEvent*) : GdkDragContext*
  fun gtk_drag_check_threshold(widget : GtkWidget*, start_x : Gint, start_y : Gint, current_x : Gint, current_y : Gint) : Gboolean
  fun gtk_drag_dest_add_image_targets(widget : GtkWidget*)
  fun gtk_drag_dest_add_text_targets(widget : GtkWidget*)
  fun gtk_drag_dest_add_uri_targets(widget : GtkWidget*)
  fun gtk_drag_dest_find_target(widget : GtkWidget*, context : GdkDragContext*, target_list : GtkTargetList*) : GdkAtom
  fun gtk_drag_dest_get_target_list(widget : GtkWidget*) : GtkTargetList*
  fun gtk_drag_dest_get_track_motion(widget : GtkWidget*) : Gboolean
  fun gtk_drag_dest_set(widget : GtkWidget*, flags : GtkDestDefaults, targets : GtkTargetEntry*, n_targets : Gint, actions : GdkDragAction)
  fun gtk_drag_dest_set_proxy(widget : GtkWidget*, proxy_window : GdkWindow*, protocol : GdkDragProtocol, use_coordinates : Gboolean)
  fun gtk_drag_dest_set_target_list(widget : GtkWidget*, target_list : GtkTargetList*)
  fun gtk_drag_dest_set_track_motion(widget : GtkWidget*, track_motion : Gboolean)
  fun gtk_drag_dest_unset(widget : GtkWidget*)
  fun gtk_drag_finish(context : GdkDragContext*, success : Gboolean, del : Gboolean, time_ : Guint32)
  fun gtk_drag_get_data(widget : GtkWidget*, context : GdkDragContext*, target : GdkAtom, time_ : Guint32)
  fun gtk_drag_get_source_widget(context : GdkDragContext*) : GtkWidget*
  fun gtk_drag_highlight(widget : GtkWidget*)
  fun gtk_drag_result_get_type : GType
  fun gtk_drag_set_default_icon(colormap : GdkColormap*, pixmap : GdkPixmap*, mask : GdkBitmap*, hot_x : Gint, hot_y : Gint)
  fun gtk_drag_set_icon_default(context : GdkDragContext*)
  fun gtk_drag_set_icon_name(context : GdkDragContext*, icon_name : Gchar*, hot_x : Gint, hot_y : Gint)
  fun gtk_drag_set_icon_pixbuf(context : GdkDragContext*, pixbuf : GdkPixbuf, hot_x : Gint, hot_y : Gint)
  fun gtk_drag_set_icon_pixmap(context : GdkDragContext*, colormap : GdkColormap*, pixmap : GdkPixmap*, mask : GdkBitmap*, hot_x : Gint, hot_y : Gint)
  fun gtk_drag_set_icon_stock(context : GdkDragContext*, stock_id : Gchar*, hot_x : Gint, hot_y : Gint)
  fun gtk_drag_set_icon_widget(context : GdkDragContext*, widget : GtkWidget*, hot_x : Gint, hot_y : Gint)
  fun gtk_drag_source_add_image_targets(widget : GtkWidget*)
  fun gtk_drag_source_add_text_targets(widget : GtkWidget*)
  fun gtk_drag_source_add_uri_targets(widget : GtkWidget*)
  fun gtk_drag_source_get_target_list(widget : GtkWidget*) : GtkTargetList*
  fun gtk_drag_source_set(widget : GtkWidget*, start_button_mask : GdkModifierType, targets : GtkTargetEntry*, n_targets : Gint, actions : GdkDragAction)
  fun gtk_drag_source_set_icon(widget : GtkWidget*, colormap : GdkColormap*, pixmap : GdkPixmap*, mask : GdkBitmap*)
  fun gtk_drag_source_set_icon_name(widget : GtkWidget*, icon_name : Gchar*)
  fun gtk_drag_source_set_icon_pixbuf(widget : GtkWidget*, pixbuf : GdkPixbuf)
  fun gtk_drag_source_set_icon_stock(widget : GtkWidget*, stock_id : Gchar*)
  fun gtk_drag_source_set_target_list(widget : GtkWidget*, target_list : GtkTargetList*)
  fun gtk_drag_source_unset(widget : GtkWidget*)
  fun gtk_drag_unhighlight(widget : GtkWidget*)
  fun gtk_draw_arrow(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, shadow_type : GtkShadowType, arrow_type : GtkArrowType, fill : Gboolean, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_draw_box(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, shadow_type : GtkShadowType, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_draw_box_gap(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, shadow_type : GtkShadowType, x : Gint, y : Gint, width : Gint, height : Gint, gap_side : GtkPositionType, gap_x : Gint, gap_width : Gint)
  fun gtk_draw_check(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, shadow_type : GtkShadowType, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_draw_diamond(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, shadow_type : GtkShadowType, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_draw_expander(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, x : Gint, y : Gint, expander_style : GtkExpanderStyle)
  fun gtk_draw_extension(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, shadow_type : GtkShadowType, x : Gint, y : Gint, width : Gint, height : Gint, gap_side : GtkPositionType)
  fun gtk_draw_flat_box(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, shadow_type : GtkShadowType, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_draw_focus(style : GtkStyle*, window : GdkWindow*, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_draw_handle(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, shadow_type : GtkShadowType, x : Gint, y : Gint, width : Gint, height : Gint, orientation : GtkOrientation)
  fun gtk_draw_hline(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, x1 : Gint, x2 : Gint, y : Gint)
  fun gtk_draw_insertion_cursor(widget : GtkWidget*, drawable : GdkDrawable*, area : GdkRectangle*, location : GdkRectangle*, is_primary : Gboolean, direction : GtkTextDirection, draw_arrow : Gboolean)
  fun gtk_draw_layout(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, use_text : Gboolean, x : Gint, y : Gint, layout : PangoLayout)
  fun gtk_draw_option(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, shadow_type : GtkShadowType, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_draw_polygon(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, shadow_type : GtkShadowType, points : GdkPoint*, npoints : Gint, fill : Gboolean)
  fun gtk_draw_resize_grip(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, edge : GdkWindowEdge, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_draw_shadow(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, shadow_type : GtkShadowType, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_draw_shadow_gap(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, shadow_type : GtkShadowType, x : Gint, y : Gint, width : Gint, height : Gint, gap_side : GtkPositionType, gap_x : Gint, gap_width : Gint)
  fun gtk_draw_slider(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, shadow_type : GtkShadowType, x : Gint, y : Gint, width : Gint, height : Gint, orientation : GtkOrientation)
  fun gtk_draw_string(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, x : Gint, y : Gint, string : Gchar*)
  fun gtk_draw_tab(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, shadow_type : GtkShadowType, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_draw_vline(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, y1_ : Gint, y2_ : Gint, x : Gint)
  fun gtk_drawing_area_get_type : GType
  fun gtk_drawing_area_new : GtkWidget*
  fun gtk_drawing_area_size(darea : GtkDrawingArea*, width : Gint, height : Gint)
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
  fun gtk_entry_append_text(entry : GtkEntry*, text : Gchar*)
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
  fun gtk_entry_get_buffer(entry : GtkEntry*) : GtkEntryBuffer*
  fun gtk_entry_get_completion(entry : GtkEntry*) : GtkEntryCompletion*
  fun gtk_entry_get_current_icon_drag_source(entry : GtkEntry*) : Gint
  fun gtk_entry_get_cursor_hadjustment(entry : GtkEntry*) : GtkAdjustment*
  fun gtk_entry_get_has_frame(entry : GtkEntry*) : Gboolean
  fun gtk_entry_get_icon_activatable(entry : GtkEntry*, icon_pos : GtkEntryIconPosition) : Gboolean
  fun gtk_entry_get_icon_at_pos(entry : GtkEntry*, x : Gint, y : Gint) : Gint
  fun gtk_entry_get_icon_gicon(entry : GtkEntry*, icon_pos : GtkEntryIconPosition) : GIcon
  fun gtk_entry_get_icon_name(entry : GtkEntry*, icon_pos : GtkEntryIconPosition) : Gchar*
  fun gtk_entry_get_icon_pixbuf(entry : GtkEntry*, icon_pos : GtkEntryIconPosition) : GdkPixbuf
  fun gtk_entry_get_icon_sensitive(entry : GtkEntry*, icon_pos : GtkEntryIconPosition) : Gboolean
  fun gtk_entry_get_icon_stock(entry : GtkEntry*, icon_pos : GtkEntryIconPosition) : Gchar*
  fun gtk_entry_get_icon_storage_type(entry : GtkEntry*, icon_pos : GtkEntryIconPosition) : GtkImageType
  fun gtk_entry_get_icon_tooltip_markup(entry : GtkEntry*, icon_pos : GtkEntryIconPosition) : Gchar*
  fun gtk_entry_get_icon_tooltip_text(entry : GtkEntry*, icon_pos : GtkEntryIconPosition) : Gchar*
  fun gtk_entry_get_icon_window(entry : GtkEntry*, icon_pos : GtkEntryIconPosition) : GdkWindow*
  fun gtk_entry_get_inner_border(entry : GtkEntry*) : GtkBorder*
  fun gtk_entry_get_invisible_char(entry : GtkEntry*) : Gunichar
  fun gtk_entry_get_layout(entry : GtkEntry*) : PangoLayout
  fun gtk_entry_get_layout_offsets(entry : GtkEntry*, x : Gint*, y : Gint*)
  fun gtk_entry_get_max_length(entry : GtkEntry*) : Gint
  fun gtk_entry_get_overwrite_mode(entry : GtkEntry*) : Gboolean
  fun gtk_entry_get_progress_fraction(entry : GtkEntry*) : Gdouble
  fun gtk_entry_get_progress_pulse_step(entry : GtkEntry*) : Gdouble
  fun gtk_entry_get_text(entry : GtkEntry*) : Gchar*
  fun gtk_entry_get_text_length(entry : GtkEntry*) : Guint16
  fun gtk_entry_get_text_window(entry : GtkEntry*) : GdkWindow*
  fun gtk_entry_get_type : GType
  fun gtk_entry_get_visibility(entry : GtkEntry*) : Gboolean
  fun gtk_entry_get_width_chars(entry : GtkEntry*) : Gint
  fun gtk_entry_icon_position_get_type : GType
  fun gtk_entry_im_context_filter_keypress(entry : GtkEntry*, event : GdkEventKey*) : Gboolean
  fun gtk_entry_layout_index_to_text_index(entry : GtkEntry*, layout_index : Gint) : Gint
  fun gtk_entry_new : GtkWidget*
  fun gtk_entry_new_with_buffer(buffer : GtkEntryBuffer*) : GtkWidget*
  fun gtk_entry_new_with_max_length(max : Gint) : GtkWidget*
  fun gtk_entry_prepend_text(entry : GtkEntry*, text : Gchar*)
  fun gtk_entry_progress_pulse(entry : GtkEntry*)
  fun gtk_entry_reset_im_context(entry : GtkEntry*)
  fun gtk_entry_select_region(entry : GtkEntry*, start : Gint, _end : Gint)
  fun gtk_entry_set_activates_default(entry : GtkEntry*, setting : Gboolean)
  fun gtk_entry_set_alignment(entry : GtkEntry*, xalign : Gfloat)
  fun gtk_entry_set_buffer(entry : GtkEntry*, buffer : GtkEntryBuffer*)
  fun gtk_entry_set_completion(entry : GtkEntry*, completion : GtkEntryCompletion*)
  fun gtk_entry_set_cursor_hadjustment(entry : GtkEntry*, adjustment : GtkAdjustment*)
  fun gtk_entry_set_editable(entry : GtkEntry*, editable : Gboolean)
  fun gtk_entry_set_has_frame(entry : GtkEntry*, setting : Gboolean)
  fun gtk_entry_set_icon_activatable(entry : GtkEntry*, icon_pos : GtkEntryIconPosition, activatable : Gboolean)
  fun gtk_entry_set_icon_drag_source(entry : GtkEntry*, icon_pos : GtkEntryIconPosition, target_list : GtkTargetList*, actions : GdkDragAction)
  fun gtk_entry_set_icon_from_gicon(entry : GtkEntry*, icon_pos : GtkEntryIconPosition, icon : GIcon)
  fun gtk_entry_set_icon_from_icon_name(entry : GtkEntry*, icon_pos : GtkEntryIconPosition, icon_name : Gchar*)
  fun gtk_entry_set_icon_from_pixbuf(entry : GtkEntry*, icon_pos : GtkEntryIconPosition, pixbuf : GdkPixbuf)
  fun gtk_entry_set_icon_from_stock(entry : GtkEntry*, icon_pos : GtkEntryIconPosition, stock_id : Gchar*)
  fun gtk_entry_set_icon_sensitive(entry : GtkEntry*, icon_pos : GtkEntryIconPosition, sensitive : Gboolean)
  fun gtk_entry_set_icon_tooltip_markup(entry : GtkEntry*, icon_pos : GtkEntryIconPosition, tooltip : Gchar*)
  fun gtk_entry_set_icon_tooltip_text(entry : GtkEntry*, icon_pos : GtkEntryIconPosition, tooltip : Gchar*)
  fun gtk_entry_set_inner_border(entry : GtkEntry*, border : GtkBorder*)
  fun gtk_entry_set_invisible_char(entry : GtkEntry*, ch : Gunichar)
  fun gtk_entry_set_max_length(entry : GtkEntry*, max : Gint)
  fun gtk_entry_set_overwrite_mode(entry : GtkEntry*, overwrite : Gboolean)
  fun gtk_entry_set_position(entry : GtkEntry*, position : Gint)
  fun gtk_entry_set_progress_fraction(entry : GtkEntry*, fraction : Gdouble)
  fun gtk_entry_set_progress_pulse_step(entry : GtkEntry*, fraction : Gdouble)
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
  fun gtk_events_pending : Gboolean
  fun gtk_exit(error_code : Gint)
  fun gtk_expander_get_expanded(expander : GtkExpander*) : Gboolean
  fun gtk_expander_get_label(expander : GtkExpander*) : Gchar*
  fun gtk_expander_get_label_fill(expander : GtkExpander*) : Gboolean
  fun gtk_expander_get_label_widget(expander : GtkExpander*) : GtkWidget*
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
  fun gtk_file_chooser_button_new_with_backend(title : Gchar*, action : GtkFileChooserAction, backend : Gchar*) : GtkWidget*
  fun gtk_file_chooser_button_new_with_dialog(dialog : GtkWidget*) : GtkWidget*
  fun gtk_file_chooser_button_set_focus_on_click(button : GtkFileChooserButton*, focus_on_click : Gboolean)
  fun gtk_file_chooser_button_set_title(button : GtkFileChooserButton*, title : Gchar*)
  fun gtk_file_chooser_button_set_width_chars(button : GtkFileChooserButton*, n_chars : Gint)
  fun gtk_file_chooser_confirmation_get_type : GType
  fun gtk_file_chooser_dialog_get_type : GType
  fun gtk_file_chooser_dialog_new(title : Gchar*, parent : GtkWindow*, action : GtkFileChooserAction, first_button_text : Gchar*, ...) : GtkWidget*
  fun gtk_file_chooser_dialog_new_with_backend(title : Gchar*, parent : GtkWindow*, action : GtkFileChooserAction, backend : Gchar*, first_button_text : Gchar*, ...) : GtkWidget*
  fun gtk_file_chooser_error_get_type : GType
  fun gtk_file_chooser_error_quark : GQuark
  fun gtk_file_chooser_get_action(chooser : GtkFileChooser) : GtkFileChooserAction
  fun gtk_file_chooser_get_create_folders(chooser : GtkFileChooser) : Gboolean
  fun gtk_file_chooser_get_current_folder(chooser : GtkFileChooser) : Gchar*
  fun gtk_file_chooser_get_current_folder_file(chooser : GtkFileChooser) : GFile
  fun gtk_file_chooser_get_current_folder_uri(chooser : GtkFileChooser) : Gchar*
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
  fun gtk_file_chooser_widget_new_with_backend(action : GtkFileChooserAction, backend : Gchar*) : GtkWidget*
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
  fun gtk_file_selection_complete(filesel : GtkFileSelection*, pattern : Gchar*)
  fun gtk_file_selection_get_filename(filesel : GtkFileSelection*) : Gchar*
  fun gtk_file_selection_get_select_multiple(filesel : GtkFileSelection*) : Gboolean
  fun gtk_file_selection_get_selections(filesel : GtkFileSelection*) : Gchar**
  fun gtk_file_selection_get_type : GType
  fun gtk_file_selection_hide_fileop_buttons(filesel : GtkFileSelection*)
  fun gtk_file_selection_new(title : Gchar*) : GtkWidget*
  fun gtk_file_selection_set_filename(filesel : GtkFileSelection*, filename : Gchar*)
  fun gtk_file_selection_set_select_multiple(filesel : GtkFileSelection*, select_multiple : Gboolean)
  fun gtk_file_selection_show_fileop_buttons(filesel : GtkFileSelection*)
  fun gtk_fixed_get_has_window(fixed : GtkFixed*) : Gboolean
  fun gtk_fixed_get_type : GType
  fun gtk_fixed_move(fixed : GtkFixed*, widget : GtkWidget*, x : Gint, y : Gint)
  fun gtk_fixed_new : GtkWidget*
  fun gtk_fixed_put(fixed : GtkFixed*, widget : GtkWidget*, x : Gint, y : Gint)
  fun gtk_fixed_set_has_window(fixed : GtkFixed*, has_window : Gboolean)
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
  fun gtk_font_selection_dialog_get_apply_button(fsd : GtkFontSelectionDialog*) : GtkWidget*
  fun gtk_font_selection_dialog_get_cancel_button(fsd : GtkFontSelectionDialog*) : GtkWidget*
  fun gtk_font_selection_dialog_get_font(fsd : GtkFontSelectionDialog*) : GdkFont*
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
  fun gtk_font_selection_get_font(fontsel : GtkFontSelection*) : GdkFont*
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
  fun gtk_gamma_curve_get_type : GType
  fun gtk_gamma_curve_new : GtkWidget*
  fun gtk_gc_get(depth : Gint, colormap : GdkColormap*, values : GdkGcValues*, values_mask : GdkGcValuesMask) : GdkGc*
  fun gtk_gc_release(gc : GdkGc*)
  fun gtk_get_current_event : GdkEvent*
  fun gtk_get_current_event_state(state : GdkModifierType*) : Gboolean
  fun gtk_get_current_event_time : Guint32
  fun gtk_get_default_language : PangoLanguage
  fun gtk_get_event_widget(event : GdkEvent*) : GtkWidget*
  fun gtk_get_option_group(open_default_display : Gboolean) : GOptionGroup
  fun gtk_grab_add(widget : GtkWidget*)
  fun gtk_grab_get_current : GtkWidget*
  fun gtk_grab_remove(widget : GtkWidget*)
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
  fun gtk_hbutton_box_get_layout_default : GtkButtonBoxStyle
  fun gtk_hbutton_box_get_spacing_default : Gint
  fun gtk_hbutton_box_get_type : GType
  fun gtk_hbutton_box_new : GtkWidget*
  fun gtk_hbutton_box_set_layout_default(layout : GtkButtonBoxStyle)
  fun gtk_hbutton_box_set_spacing_default(spacing : Gint)
  fun gtk_hpaned_get_type : GType
  fun gtk_hpaned_new : GtkWidget*
  fun gtk_hruler_get_type : GType
  fun gtk_hruler_new : GtkWidget*
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
  fun gtk_icon_info_get_base_size(icon_info : GtkIconInfo) : Gint
  fun gtk_icon_info_get_builtin_pixbuf(icon_info : GtkIconInfo) : GdkPixbuf
  fun gtk_icon_info_get_display_name(icon_info : GtkIconInfo) : Gchar*
  fun gtk_icon_info_get_embedded_rect(icon_info : GtkIconInfo, rectangle : GdkRectangle*) : Gboolean
  fun gtk_icon_info_get_filename(icon_info : GtkIconInfo) : Gchar*
  fun gtk_icon_info_get_type : GType
  fun gtk_icon_info_load_icon(icon_info : GtkIconInfo, error : GError**) : GdkPixbuf
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
  fun gtk_icon_set_render_icon(icon_set : GtkIconSet, style : GtkStyle*, direction : GtkTextDirection, state : GtkStateType, size : GtkIconSize, widget : GtkWidget*, detail : LibC::Char*) : GdkPixbuf
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
  fun gtk_icon_theme_append_search_path(icon_theme : GtkIconTheme*, path : Gchar*)
  fun gtk_icon_theme_choose_icon(icon_theme : GtkIconTheme*, icon_names : Gchar**, size : Gint, flags : GtkIconLookupFlags) : GtkIconInfo
  fun gtk_icon_theme_error_get_type : GType
  fun gtk_icon_theme_error_quark : GQuark
  fun gtk_icon_theme_get_default : GtkIconTheme*
  fun gtk_icon_theme_get_example_icon_name(icon_theme : GtkIconTheme*) : LibC::Char*
  fun gtk_icon_theme_get_for_screen(screen : GdkScreen*) : GtkIconTheme*
  fun gtk_icon_theme_get_icon_sizes(icon_theme : GtkIconTheme*, icon_name : Gchar*) : Gint*
  fun gtk_icon_theme_get_search_path(icon_theme : GtkIconTheme*, path : Gchar***, n_elements : Gint*)
  fun gtk_icon_theme_get_type : GType
  fun gtk_icon_theme_has_icon(icon_theme : GtkIconTheme*, icon_name : Gchar*) : Gboolean
  fun gtk_icon_theme_list_contexts(icon_theme : GtkIconTheme*) : GList*
  fun gtk_icon_theme_list_icons(icon_theme : GtkIconTheme*, context : Gchar*) : GList*
  fun gtk_icon_theme_load_icon(icon_theme : GtkIconTheme*, icon_name : Gchar*, size : Gint, flags : GtkIconLookupFlags, error : GError**) : GdkPixbuf
  fun gtk_icon_theme_lookup_by_gicon(icon_theme : GtkIconTheme*, icon : GIcon, size : Gint, flags : GtkIconLookupFlags) : GtkIconInfo
  fun gtk_icon_theme_lookup_icon(icon_theme : GtkIconTheme*, icon_name : Gchar*, size : Gint, flags : GtkIconLookupFlags) : GtkIconInfo
  fun gtk_icon_theme_new : GtkIconTheme*
  fun gtk_icon_theme_prepend_search_path(icon_theme : GtkIconTheme*, path : Gchar*)
  fun gtk_icon_theme_rescan_if_needed(icon_theme : GtkIconTheme*) : Gboolean
  fun gtk_icon_theme_set_custom_theme(icon_theme : GtkIconTheme*, theme_name : Gchar*)
  fun gtk_icon_theme_set_screen(icon_theme : GtkIconTheme*, screen : GdkScreen*)
  fun gtk_icon_theme_set_search_path(icon_theme : GtkIconTheme*, path : Gchar**, n_elements : Gint)
  fun gtk_icon_view_convert_widget_to_bin_window_coords(icon_view : GtkIconView*, wx : Gint, wy : Gint, bx : Gint*, by : Gint*)
  fun gtk_icon_view_create_drag_icon(icon_view : GtkIconView*, path : GtkTreePath) : GdkPixmap*
  fun gtk_icon_view_drop_position_get_type : GType
  fun gtk_icon_view_enable_model_drag_dest(icon_view : GtkIconView*, targets : GtkTargetEntry*, n_targets : Gint, actions : GdkDragAction)
  fun gtk_icon_view_enable_model_drag_source(icon_view : GtkIconView*, start_button_mask : GdkModifierType, targets : GtkTargetEntry*, n_targets : Gint, actions : GdkDragAction)
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
  fun gtk_icon_view_get_orientation(icon_view : GtkIconView*) : GtkOrientation
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
  fun gtk_icon_view_new_with_model(model : GtkTreeModel) : GtkWidget*
  fun gtk_icon_view_path_is_selected(icon_view : GtkIconView*, path : GtkTreePath) : Gboolean
  fun gtk_icon_view_scroll_to_path(icon_view : GtkIconView*, path : GtkTreePath, use_align : Gboolean, row_align : Gfloat, col_align : Gfloat)
  fun gtk_icon_view_select_all(icon_view : GtkIconView*)
  fun gtk_icon_view_select_path(icon_view : GtkIconView*, path : GtkTreePath)
  fun gtk_icon_view_selected_foreach(icon_view : GtkIconView*, func : GtkIconViewForeachFunc, data : Gpointer)
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
  fun gtk_icon_view_set_orientation(icon_view : GtkIconView*, orientation : GtkOrientation)
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
  fun gtk_identifier_get_type : GType
  fun gtk_idle_add(function : GtkFunction, data : Gpointer) : Guint
  fun gtk_idle_add_full(priority : Gint, function : GtkFunction, marshal : GtkCallbackMarshal, data : Gpointer, destroy : GDestroyNotify) : Guint
  fun gtk_idle_add_priority(priority : Gint, function : GtkFunction, data : Gpointer) : Guint
  fun gtk_idle_remove(idle_handler_id : Guint)
  fun gtk_idle_remove_by_data(data : Gpointer)
  fun gtk_im_context_delete_surrounding(context : GtkImContext*, offset : Gint, n_chars : Gint) : Gboolean
  fun gtk_im_context_filter_keypress(context : GtkImContext*, event : GdkEventKey*) : Gboolean
  fun gtk_im_context_focus_in(context : GtkImContext*)
  fun gtk_im_context_focus_out(context : GtkImContext*)
  fun gtk_im_context_get_preedit_string(context : GtkImContext*, str : Gchar**, attrs : PangoAttrList*, cursor_pos : Gint*)
  fun gtk_im_context_get_surrounding(context : GtkImContext*, text : Gchar**, cursor_index : Gint*) : Gboolean
  fun gtk_im_context_get_type : GType
  fun gtk_im_context_reset(context : GtkImContext*)
  fun gtk_im_context_set_client_window(context : GtkImContext*, window : GdkWindow*)
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
  fun gtk_image_get(image : GtkImage*, val : GdkImage**, mask : GdkBitmap**)
  fun gtk_image_get_animation(image : GtkImage*) : GdkPixbufAnimation
  fun gtk_image_get_gicon(image : GtkImage*, gicon : GIcon*, size : GtkIconSize*)
  fun gtk_image_get_icon_name(image : GtkImage*, icon_name : Gchar**, size : GtkIconSize*)
  fun gtk_image_get_icon_set(image : GtkImage*, icon_set : GtkIconSet*, size : GtkIconSize*)
  fun gtk_image_get_image(image : GtkImage*, gdk_image : GdkImage**, mask : GdkBitmap**)
  fun gtk_image_get_pixbuf(image : GtkImage*) : GdkPixbuf
  fun gtk_image_get_pixel_size(image : GtkImage*) : Gint
  fun gtk_image_get_pixmap(image : GtkImage*, pixmap : GdkPixmap**, mask : GdkBitmap**)
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
  fun gtk_image_new_from_image(image : GdkImage*, mask : GdkBitmap*) : GtkWidget*
  fun gtk_image_new_from_pixbuf(pixbuf : GdkPixbuf) : GtkWidget*
  fun gtk_image_new_from_pixmap(pixmap : GdkPixmap*, mask : GdkBitmap*) : GtkWidget*
  fun gtk_image_new_from_stock(stock_id : Gchar*, size : GtkIconSize) : GtkWidget*
  fun gtk_image_set(image : GtkImage*, val : GdkImage*, mask : GdkBitmap*)
  fun gtk_image_set_from_animation(image : GtkImage*, animation : GdkPixbufAnimation)
  fun gtk_image_set_from_file(image : GtkImage*, filename : Gchar*)
  fun gtk_image_set_from_gicon(image : GtkImage*, icon : GIcon, size : GtkIconSize)
  fun gtk_image_set_from_icon_name(image : GtkImage*, icon_name : Gchar*, size : GtkIconSize)
  fun gtk_image_set_from_icon_set(image : GtkImage*, icon_set : GtkIconSet, size : GtkIconSize)
  fun gtk_image_set_from_image(image : GtkImage*, gdk_image : GdkImage*, mask : GdkBitmap*)
  fun gtk_image_set_from_pixbuf(image : GtkImage*, pixbuf : GdkPixbuf)
  fun gtk_image_set_from_pixmap(image : GtkImage*, pixmap : GdkPixmap*, mask : GdkBitmap*)
  fun gtk_image_set_from_stock(image : GtkImage*, stock_id : Gchar*, size : GtkIconSize)
  fun gtk_image_set_pixel_size(image : GtkImage*, pixel_size : Gint)
  fun gtk_image_type_get_type : GType
  fun gtk_info_bar_add_action_widget(info_bar : GtkInfoBar*, child : GtkWidget*, response_id : Gint)
  fun gtk_info_bar_add_button(info_bar : GtkInfoBar*, button_text : Gchar*, response_id : Gint) : GtkWidget*
  fun gtk_info_bar_add_buttons(info_bar : GtkInfoBar*, first_button_text : Gchar*, ...)
  fun gtk_info_bar_get_action_area(info_bar : GtkInfoBar*) : GtkWidget*
  fun gtk_info_bar_get_content_area(info_bar : GtkInfoBar*) : GtkWidget*
  fun gtk_info_bar_get_message_type(info_bar : GtkInfoBar*) : GtkMessageType
  fun gtk_info_bar_get_type : GType
  fun gtk_info_bar_new : GtkWidget*
  fun gtk_info_bar_new_with_buttons(first_button_text : Gchar*, ...) : GtkWidget*
  fun gtk_info_bar_response(info_bar : GtkInfoBar*, response_id : Gint)
  fun gtk_info_bar_set_default_response(info_bar : GtkInfoBar*, response_id : Gint)
  fun gtk_info_bar_set_message_type(info_bar : GtkInfoBar*, message_type : GtkMessageType)
  fun gtk_info_bar_set_response_sensitive(info_bar : GtkInfoBar*, response_id : Gint, setting : Gboolean)
  fun gtk_init(argc : LibC::Int*, argv : LibC::Char***)
  fun gtk_init_add(function : GtkFunction, data : Gpointer)
  fun gtk_init_check(argc : LibC::Int*, argv : LibC::Char***) : Gboolean
  fun gtk_init_with_args(argc : LibC::Int*, argv : LibC::Char***, parameter_string : LibC::Char*, entries : GOptionEntry*, translation_domain : LibC::Char*, error : GError**) : Gboolean
  fun gtk_input_add_full(source : Gint, condition : GdkInputCondition, function : GdkInputFunction, marshal : GtkCallbackMarshal, data : Gpointer, destroy : GDestroyNotify) : Guint
  fun gtk_input_dialog_get_type : GType
  fun gtk_input_dialog_new : GtkWidget*
  fun gtk_input_remove(input_handler_id : Guint)
  fun gtk_invisible_get_screen(invisible : GtkInvisible*) : GdkScreen*
  fun gtk_invisible_get_type : GType
  fun gtk_invisible_new : GtkWidget*
  fun gtk_invisible_new_for_screen(screen : GdkScreen*) : GtkWidget*
  fun gtk_invisible_set_screen(invisible : GtkInvisible*, screen : GdkScreen*)
  fun gtk_item_deselect(item : GtkItem*)
  fun gtk_item_factories_path_delete(ifactory_path : Gchar*, path : Gchar*)
  fun gtk_item_factory_add_foreign(accel_widget : GtkWidget*, full_path : Gchar*, accel_group : GtkAccelGroup*, keyval : Guint, modifiers : GdkModifierType)
  fun gtk_item_factory_construct(ifactory : GtkItemFactory*, container_type : GType, path : Gchar*, accel_group : GtkAccelGroup*)
  fun gtk_item_factory_create_item(ifactory : GtkItemFactory*, entry : GtkItemFactoryEntry*, callback_data : Gpointer, callback_type : Guint)
  fun gtk_item_factory_create_items(ifactory : GtkItemFactory*, n_entries : Guint, entries : GtkItemFactoryEntry*, callback_data : Gpointer)
  fun gtk_item_factory_create_items_ac(ifactory : GtkItemFactory*, n_entries : Guint, entries : GtkItemFactoryEntry*, callback_data : Gpointer, callback_type : Guint)
  fun gtk_item_factory_create_menu_entries(n_entries : Guint, entries : GtkMenuEntry*)
  fun gtk_item_factory_delete_entries(ifactory : GtkItemFactory*, n_entries : Guint, entries : GtkItemFactoryEntry*)
  fun gtk_item_factory_delete_entry(ifactory : GtkItemFactory*, entry : GtkItemFactoryEntry*)
  fun gtk_item_factory_delete_item(ifactory : GtkItemFactory*, path : Gchar*)
  fun gtk_item_factory_from_path(path : Gchar*) : GtkItemFactory*
  fun gtk_item_factory_from_widget(widget : GtkWidget*) : GtkItemFactory*
  fun gtk_item_factory_get_item(ifactory : GtkItemFactory*, path : Gchar*) : GtkWidget*
  fun gtk_item_factory_get_item_by_action(ifactory : GtkItemFactory*, action : Guint) : GtkWidget*
  fun gtk_item_factory_get_type : GType
  fun gtk_item_factory_get_widget(ifactory : GtkItemFactory*, path : Gchar*) : GtkWidget*
  fun gtk_item_factory_get_widget_by_action(ifactory : GtkItemFactory*, action : Guint) : GtkWidget*
  fun gtk_item_factory_new(container_type : GType, path : Gchar*, accel_group : GtkAccelGroup*) : GtkItemFactory*
  fun gtk_item_factory_path_from_widget(widget : GtkWidget*) : Gchar*
  fun gtk_item_factory_popup(ifactory : GtkItemFactory*, x : Guint, y : Guint, mouse_button : Guint, time_ : Guint32)
  fun gtk_item_factory_popup_data(ifactory : GtkItemFactory*) : Gpointer
  fun gtk_item_factory_popup_data_from_widget(widget : GtkWidget*) : Gpointer
  fun gtk_item_factory_popup_with_data(ifactory : GtkItemFactory*, popup_data : Gpointer, destroy : GDestroyNotify, x : Guint, y : Guint, mouse_button : Guint, time_ : Guint32)
  fun gtk_item_factory_set_translate_func(ifactory : GtkItemFactory*, func : GtkTranslateFunc, data : Gpointer, notify : GDestroyNotify)
  fun gtk_item_get_type : GType
  fun gtk_item_select(item : GtkItem*)
  fun gtk_item_toggle(item : GtkItem*)
  fun gtk_justification_get_type : GType
  fun gtk_key_snooper_install(snooper : GtkKeySnoopFunc, func_data : Gpointer) : Guint
  fun gtk_key_snooper_remove(snooper_handler_id : Guint)
  fun gtk_label_get(label : GtkLabel*, str : Gchar**)
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
  fun gtk_label_new(str : Gchar*) : GtkWidget*
  fun gtk_label_new_with_mnemonic(str : Gchar*) : GtkWidget*
  fun gtk_label_parse_uline(label : GtkLabel*, string : Gchar*) : Guint
  fun gtk_label_select_region(label : GtkLabel*, start_offset : Gint, end_offset : Gint)
  fun gtk_label_set_angle(label : GtkLabel*, angle : Gdouble)
  fun gtk_label_set_attributes(label : GtkLabel*, attrs : PangoAttrList)
  fun gtk_label_set_ellipsize(label : GtkLabel*, mode : PangoEllipsizeMode)
  fun gtk_label_set_justify(label : GtkLabel*, jtype : GtkJustification)
  fun gtk_label_set_label(label : GtkLabel*, str : Gchar*)
  fun gtk_label_set_line_wrap(label : GtkLabel*, wrap : Gboolean)
  fun gtk_label_set_line_wrap_mode(label : GtkLabel*, wrap_mode : PangoWrapMode)
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
  fun gtk_layout_freeze(layout : GtkLayout*)
  fun gtk_layout_get_bin_window(layout : GtkLayout*) : GdkWindow*
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
  fun gtk_layout_thaw(layout : GtkLayout*)
  fun gtk_link_button_get_type : GType
  fun gtk_link_button_get_uri(link_button : GtkLinkButton*) : Gchar*
  fun gtk_link_button_get_visited(link_button : GtkLinkButton*) : Gboolean
  fun gtk_link_button_new(uri : Gchar*) : GtkWidget*
  fun gtk_link_button_new_with_label(uri : Gchar*, label : Gchar*) : GtkWidget*
  fun gtk_link_button_set_uri(link_button : GtkLinkButton*, uri : Gchar*)
  fun gtk_link_button_set_uri_hook(func : GtkLinkButtonUriFunc, data : Gpointer, destroy : GDestroyNotify) : GtkLinkButtonUriFunc
  fun gtk_link_button_set_visited(link_button : GtkLinkButton*, visited : Gboolean)
  fun gtk_list_append_items(list : GtkList*, items : GList*)
  fun gtk_list_child_position(list : GtkList*, child : GtkWidget*) : Gint
  fun gtk_list_clear_items(list : GtkList*, start : Gint, _end : Gint)
  fun gtk_list_end_drag_selection(list : GtkList*)
  fun gtk_list_end_selection(list : GtkList*)
  fun gtk_list_extend_selection(list : GtkList*, scroll_type : GtkScrollType, position : Gfloat, auto_start_selection : Gboolean)
  fun gtk_list_get_type : GType
  fun gtk_list_insert_items(list : GtkList*, items : GList*, position : Gint)
  fun gtk_list_item_deselect(list_item : GtkListItem*)
  fun gtk_list_item_get_type : GType
  fun gtk_list_item_new : GtkWidget*
  fun gtk_list_item_new_with_label(label : Gchar*) : GtkWidget*
  fun gtk_list_item_select(list_item : GtkListItem*)
  fun gtk_list_new : GtkWidget*
  fun gtk_list_prepend_items(list : GtkList*, items : GList*)
  fun gtk_list_remove_items(list : GtkList*, items : GList*)
  fun gtk_list_remove_items_no_unref(list : GtkList*, items : GList*)
  fun gtk_list_scroll_horizontal(list : GtkList*, scroll_type : GtkScrollType, position : Gfloat)
  fun gtk_list_scroll_vertical(list : GtkList*, scroll_type : GtkScrollType, position : Gfloat)
  fun gtk_list_select_all(list : GtkList*)
  fun gtk_list_select_child(list : GtkList*, child : GtkWidget*)
  fun gtk_list_select_item(list : GtkList*, item : Gint)
  fun gtk_list_set_selection_mode(list : GtkList*, mode : GtkSelectionMode)
  fun gtk_list_start_selection(list : GtkList*)
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
  fun gtk_list_toggle_add_mode(list : GtkList*)
  fun gtk_list_toggle_focus_row(list : GtkList*)
  fun gtk_list_toggle_row(list : GtkList*, item : GtkWidget*)
  fun gtk_list_undo_selection(list : GtkList*)
  fun gtk_list_unselect_all(list : GtkList*)
  fun gtk_list_unselect_child(list : GtkList*, child : GtkWidget*)
  fun gtk_list_unselect_item(list : GtkList*, item : Gint)
  fun gtk_main
  fun gtk_main_do_event(event : GdkEvent*)
  fun gtk_main_iteration : Gboolean
  fun gtk_main_iteration_do(blocking : Gboolean) : Gboolean
  fun gtk_main_level : Guint
  fun gtk_main_quit
  fun gtk_marshal_boolean__pointer = gtk_marshal_BOOLEAN__POINTER(closure : GClosure*, return_value : GValue*, n_param_values : Guint, param_values : GValue*, invocation_hint : Gpointer, marshal_data : Gpointer)
  fun gtk_marshal_boolean__pointer_int_int = gtk_marshal_BOOLEAN__POINTER_INT_INT(closure : GClosure*, return_value : GValue*, n_param_values : Guint, param_values : GValue*, invocation_hint : Gpointer, marshal_data : Gpointer)
  fun gtk_marshal_boolean__pointer_int_int_uint = gtk_marshal_BOOLEAN__POINTER_INT_INT_UINT(closure : GClosure*, return_value : GValue*, n_param_values : Guint, param_values : GValue*, invocation_hint : Gpointer, marshal_data : Gpointer)
  fun gtk_marshal_boolean__pointer_pointer_int_int = gtk_marshal_BOOLEAN__POINTER_POINTER_INT_INT(closure : GClosure*, return_value : GValue*, n_param_values : Guint, param_values : GValue*, invocation_hint : Gpointer, marshal_data : Gpointer)
  fun gtk_marshal_boolean__pointer_string_string_pointer = gtk_marshal_BOOLEAN__POINTER_STRING_STRING_POINTER(closure : GClosure*, return_value : GValue*, n_param_values : Guint, param_values : GValue*, invocation_hint : Gpointer, marshal_data : Gpointer)
  fun gtk_marshal_boolean__void = gtk_marshal_BOOLEAN__VOID(closure : GClosure*, return_value : GValue*, n_param_values : Guint, param_values : GValue*, invocation_hint : Gpointer, marshal_data : Gpointer)
  fun gtk_marshal_enum__enum = gtk_marshal_ENUM__ENUM(closure : GClosure*, return_value : GValue*, n_param_values : Guint, param_values : GValue*, invocation_hint : Gpointer, marshal_data : Gpointer)
  fun gtk_marshal_int__pointer = gtk_marshal_INT__POINTER(closure : GClosure*, return_value : GValue*, n_param_values : Guint, param_values : GValue*, invocation_hint : Gpointer, marshal_data : Gpointer)
  fun gtk_marshal_int__pointer_char_char = gtk_marshal_INT__POINTER_CHAR_CHAR(closure : GClosure*, return_value : GValue*, n_param_values : Guint, param_values : GValue*, invocation_hint : Gpointer, marshal_data : Gpointer)
  fun gtk_marshal_void__enum_float = gtk_marshal_VOID__ENUM_FLOAT(closure : GClosure*, return_value : GValue*, n_param_values : Guint, param_values : GValue*, invocation_hint : Gpointer, marshal_data : Gpointer)
  fun gtk_marshal_void__enum_float_boolean = gtk_marshal_VOID__ENUM_FLOAT_BOOLEAN(closure : GClosure*, return_value : GValue*, n_param_values : Guint, param_values : GValue*, invocation_hint : Gpointer, marshal_data : Gpointer)
  fun gtk_marshal_void__int_int = gtk_marshal_VOID__INT_INT(closure : GClosure*, return_value : GValue*, n_param_values : Guint, param_values : GValue*, invocation_hint : Gpointer, marshal_data : Gpointer)
  fun gtk_marshal_void__int_int_pointer = gtk_marshal_VOID__INT_INT_POINTER(closure : GClosure*, return_value : GValue*, n_param_values : Guint, param_values : GValue*, invocation_hint : Gpointer, marshal_data : Gpointer)
  fun gtk_marshal_void__pointer_int = gtk_marshal_VOID__POINTER_INT(closure : GClosure*, return_value : GValue*, n_param_values : Guint, param_values : GValue*, invocation_hint : Gpointer, marshal_data : Gpointer)
  fun gtk_marshal_void__pointer_int_int_pointer_uint_uint = gtk_marshal_VOID__POINTER_INT_INT_POINTER_UINT_UINT(closure : GClosure*, return_value : GValue*, n_param_values : Guint, param_values : GValue*, invocation_hint : Gpointer, marshal_data : Gpointer)
  fun gtk_marshal_void__pointer_pointer = gtk_marshal_VOID__POINTER_POINTER(closure : GClosure*, return_value : GValue*, n_param_values : Guint, param_values : GValue*, invocation_hint : Gpointer, marshal_data : Gpointer)
  fun gtk_marshal_void__pointer_pointer_pointer = gtk_marshal_VOID__POINTER_POINTER_POINTER(closure : GClosure*, return_value : GValue*, n_param_values : Guint, param_values : GValue*, invocation_hint : Gpointer, marshal_data : Gpointer)
  fun gtk_marshal_void__pointer_pointer_uint_uint = gtk_marshal_VOID__POINTER_POINTER_UINT_UINT(closure : GClosure*, return_value : GValue*, n_param_values : Guint, param_values : GValue*, invocation_hint : Gpointer, marshal_data : Gpointer)
  fun gtk_marshal_void__pointer_string_string = gtk_marshal_VOID__POINTER_STRING_STRING(closure : GClosure*, return_value : GValue*, n_param_values : Guint, param_values : GValue*, invocation_hint : Gpointer, marshal_data : Gpointer)
  fun gtk_marshal_void__pointer_uint = gtk_marshal_VOID__POINTER_UINT(closure : GClosure*, return_value : GValue*, n_param_values : Guint, param_values : GValue*, invocation_hint : Gpointer, marshal_data : Gpointer)
  fun gtk_marshal_void__pointer_uint_enum = gtk_marshal_VOID__POINTER_UINT_ENUM(closure : GClosure*, return_value : GValue*, n_param_values : Guint, param_values : GValue*, invocation_hint : Gpointer, marshal_data : Gpointer)
  fun gtk_marshal_void__pointer_uint_uint = gtk_marshal_VOID__POINTER_UINT_UINT(closure : GClosure*, return_value : GValue*, n_param_values : Guint, param_values : GValue*, invocation_hint : Gpointer, marshal_data : Gpointer)
  fun gtk_marshal_void__string_int_pointer = gtk_marshal_VOID__STRING_INT_POINTER(closure : GClosure*, return_value : GValue*, n_param_values : Guint, param_values : GValue*, invocation_hint : Gpointer, marshal_data : Gpointer)
  fun gtk_marshal_void__uint_pointer_uint_enum_enum_pointer = gtk_marshal_VOID__UINT_POINTER_UINT_ENUM_ENUM_POINTER(closure : GClosure*, return_value : GValue*, n_param_values : Guint, param_values : GValue*, invocation_hint : Gpointer, marshal_data : Gpointer)
  fun gtk_marshal_void__uint_pointer_uint_uint_enum = gtk_marshal_VOID__UINT_POINTER_UINT_UINT_ENUM(closure : GClosure*, return_value : GValue*, n_param_values : Guint, param_values : GValue*, invocation_hint : Gpointer, marshal_data : Gpointer)
  fun gtk_marshal_void__uint_string = gtk_marshal_VOID__UINT_STRING(closure : GClosure*, return_value : GValue*, n_param_values : Guint, param_values : GValue*, invocation_hint : Gpointer, marshal_data : Gpointer)
  fun gtk_match_type_get_type : GType
  fun gtk_menu_attach(menu : GtkMenu*, child : GtkWidget*, left_attach : Guint, right_attach : Guint, top_attach : Guint, bottom_attach : Guint)
  fun gtk_menu_attach_to_widget(menu : GtkMenu*, attach_widget : GtkWidget*, detacher : GtkMenuDetachFunc)
  fun gtk_menu_bar_get_child_pack_direction(menubar : GtkMenuBar*) : GtkPackDirection
  fun gtk_menu_bar_get_pack_direction(menubar : GtkMenuBar*) : GtkPackDirection
  fun gtk_menu_bar_get_type : GType
  fun gtk_menu_bar_new : GtkWidget*
  fun gtk_menu_bar_set_child_pack_direction(menubar : GtkMenuBar*, child_pack_dir : GtkPackDirection)
  fun gtk_menu_bar_set_pack_direction(menubar : GtkMenuBar*, pack_dir : GtkPackDirection)
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
  fun gtk_menu_item_get_right_justified(menu_item : GtkMenuItem*) : Gboolean
  fun gtk_menu_item_get_submenu(menu_item : GtkMenuItem*) : GtkWidget*
  fun gtk_menu_item_get_type : GType
  fun gtk_menu_item_get_use_underline(menu_item : GtkMenuItem*) : Gboolean
  fun gtk_menu_item_new : GtkWidget*
  fun gtk_menu_item_new_with_label(label : Gchar*) : GtkWidget*
  fun gtk_menu_item_new_with_mnemonic(label : Gchar*) : GtkWidget*
  fun gtk_menu_item_remove_submenu(menu_item : GtkMenuItem*)
  fun gtk_menu_item_select(menu_item : GtkMenuItem*)
  fun gtk_menu_item_set_accel_path(menu_item : GtkMenuItem*, accel_path : Gchar*)
  fun gtk_menu_item_set_label(menu_item : GtkMenuItem*, label : Gchar*)
  fun gtk_menu_item_set_right_justified(menu_item : GtkMenuItem*, right_justified : Gboolean)
  fun gtk_menu_item_set_submenu(menu_item : GtkMenuItem*, submenu : GtkWidget*)
  fun gtk_menu_item_set_use_underline(menu_item : GtkMenuItem*, setting : Gboolean)
  fun gtk_menu_item_toggle_size_allocate(menu_item : GtkMenuItem*, allocation : Gint)
  fun gtk_menu_item_toggle_size_request(menu_item : GtkMenuItem*, requisition : Gint*)
  fun gtk_menu_new : GtkWidget*
  fun gtk_menu_popdown(menu : GtkMenu*)
  fun gtk_menu_popup(menu : GtkMenu*, parent_menu_shell : GtkWidget*, parent_menu_item : GtkWidget*, func : GtkMenuPositionFunc, data : Gpointer, button : Guint, activate_time : Guint32)
  fun gtk_menu_reorder_child(menu : GtkMenu*, child : GtkWidget*, position : Gint)
  fun gtk_menu_reposition(menu : GtkMenu*)
  fun gtk_menu_set_accel_group(menu : GtkMenu*, accel_group : GtkAccelGroup*)
  fun gtk_menu_set_accel_path(menu : GtkMenu*, accel_path : Gchar*)
  fun gtk_menu_set_active(menu : GtkMenu*, index_ : Guint)
  fun gtk_menu_set_monitor(menu : GtkMenu*, monitor_num : Gint)
  fun gtk_menu_set_reserve_toggle_size(menu : GtkMenu*, reserve_toggle_size : Gboolean)
  fun gtk_menu_set_screen(menu : GtkMenu*, screen : GdkScreen*)
  fun gtk_menu_set_tearoff_state(menu : GtkMenu*, torn_off : Gboolean)
  fun gtk_menu_set_title(menu : GtkMenu*, title : Gchar*)
  fun gtk_menu_shell_activate_item(menu_shell : GtkMenuShell*, menu_item : GtkWidget*, force_deactivate : Gboolean)
  fun gtk_menu_shell_append(menu_shell : GtkMenuShell*, child : GtkWidget*)
  fun gtk_menu_shell_cancel(menu_shell : GtkMenuShell*)
  fun gtk_menu_shell_deactivate(menu_shell : GtkMenuShell*)
  fun gtk_menu_shell_deselect(menu_shell : GtkMenuShell*)
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
  fun gtk_menu_tool_button_set_arrow_tooltip(button : GtkMenuToolButton*, tooltips : GtkTooltips*, tip_text : Gchar*, tip_private : Gchar*)
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
  fun gtk_metric_type_get_type : GType
  fun gtk_misc_get_alignment(misc : GtkMisc*, xalign : Gfloat*, yalign : Gfloat*)
  fun gtk_misc_get_padding(misc : GtkMisc*, xpad : Gint*, ypad : Gint*)
  fun gtk_misc_get_type : GType
  fun gtk_misc_set_alignment(misc : GtkMisc*, xalign : Gfloat, yalign : Gfloat)
  fun gtk_misc_set_padding(misc : GtkMisc*, xpad : Gint, ypad : Gint)
  fun gtk_mount_operation_get_parent(op : GtkMountOperation*) : GtkWindow*
  fun gtk_mount_operation_get_screen(op : GtkMountOperation*) : GdkScreen*
  fun gtk_mount_operation_get_type : GType
  fun gtk_mount_operation_is_showing(op : GtkMountOperation*) : Gboolean
  fun gtk_mount_operation_new(parent : GtkWindow*) : GMountOperation*
  fun gtk_mount_operation_set_parent(op : GtkMountOperation*, parent : GtkWindow*)
  fun gtk_mount_operation_set_screen(op : GtkMountOperation*, screen : GdkScreen*)
  fun gtk_movement_step_get_type : GType
  fun gtk_notebook_append_page(notebook : GtkNotebook*, child : GtkWidget*, tab_label : GtkWidget*) : Gint
  fun gtk_notebook_append_page_menu(notebook : GtkNotebook*, child : GtkWidget*, tab_label : GtkWidget*, menu_label : GtkWidget*) : Gint
  fun gtk_notebook_get_action_widget(notebook : GtkNotebook*, pack_type : GtkPackType) : GtkWidget*
  fun gtk_notebook_get_current_page(notebook : GtkNotebook*) : Gint
  fun gtk_notebook_get_group(notebook : GtkNotebook*) : Gpointer
  fun gtk_notebook_get_group_id(notebook : GtkNotebook*) : Gint
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
  fun gtk_notebook_query_tab_label_packing(notebook : GtkNotebook*, child : GtkWidget*, expand : Gboolean*, fill : Gboolean*, pack_type : GtkPackType*)
  fun gtk_notebook_remove_page(notebook : GtkNotebook*, page_num : Gint)
  fun gtk_notebook_reorder_child(notebook : GtkNotebook*, child : GtkWidget*, position : Gint)
  fun gtk_notebook_set_action_widget(notebook : GtkNotebook*, widget : GtkWidget*, pack_type : GtkPackType)
  fun gtk_notebook_set_current_page(notebook : GtkNotebook*, page_num : Gint)
  fun gtk_notebook_set_group(notebook : GtkNotebook*, group : Gpointer)
  fun gtk_notebook_set_group_id(notebook : GtkNotebook*, group_id : Gint)
  fun gtk_notebook_set_group_name(notebook : GtkNotebook*, group_name : Gchar*)
  fun gtk_notebook_set_homogeneous_tabs(notebook : GtkNotebook*, homogeneous : Gboolean)
  fun gtk_notebook_set_menu_label(notebook : GtkNotebook*, child : GtkWidget*, menu_label : GtkWidget*)
  fun gtk_notebook_set_menu_label_text(notebook : GtkNotebook*, child : GtkWidget*, menu_text : Gchar*)
  fun gtk_notebook_set_scrollable(notebook : GtkNotebook*, scrollable : Gboolean)
  fun gtk_notebook_set_show_border(notebook : GtkNotebook*, show_border : Gboolean)
  fun gtk_notebook_set_show_tabs(notebook : GtkNotebook*, show_tabs : Gboolean)
  fun gtk_notebook_set_tab_border(notebook : GtkNotebook*, border_width : Guint)
  fun gtk_notebook_set_tab_detachable(notebook : GtkNotebook*, child : GtkWidget*, detachable : Gboolean)
  fun gtk_notebook_set_tab_hborder(notebook : GtkNotebook*, tab_hborder : Guint)
  fun gtk_notebook_set_tab_label(notebook : GtkNotebook*, child : GtkWidget*, tab_label : GtkWidget*)
  fun gtk_notebook_set_tab_label_packing(notebook : GtkNotebook*, child : GtkWidget*, expand : Gboolean, fill : Gboolean, pack_type : GtkPackType)
  fun gtk_notebook_set_tab_label_text(notebook : GtkNotebook*, child : GtkWidget*, tab_text : Gchar*)
  fun gtk_notebook_set_tab_pos(notebook : GtkNotebook*, pos : GtkPositionType)
  fun gtk_notebook_set_tab_reorderable(notebook : GtkNotebook*, child : GtkWidget*, reorderable : Gboolean)
  fun gtk_notebook_set_tab_vborder(notebook : GtkNotebook*, tab_vborder : Guint)
  fun gtk_notebook_set_window_creation_hook(func : GtkNotebookWindowCreationFunc, data : Gpointer, destroy : GDestroyNotify)
  fun gtk_notebook_tab_get_type : GType
  fun gtk_number_up_layout_get_type : GType
  fun gtk_object_add_arg_type(arg_name : Gchar*, arg_type : GType, arg_flags : Guint, arg_id : Guint)
  fun gtk_object_destroy(object : GtkObject*)
  fun gtk_object_flags_get_type : GType
  fun gtk_object_get(object : GtkObject*, first_property_name : Gchar*, ...)
  fun gtk_object_get_data(object : GtkObject*, key : Gchar*) : Gpointer
  fun gtk_object_get_data_by_id(object : GtkObject*, data_id : GQuark) : Gpointer
  fun gtk_object_get_type : GType
  fun gtk_object_get_user_data(object : GtkObject*) : Gpointer
  fun gtk_object_new(type : GType, first_property_name : Gchar*, ...) : GtkObject*
  fun gtk_object_ref(object : GtkObject*) : GtkObject*
  fun gtk_object_remove_data(object : GtkObject*, key : Gchar*)
  fun gtk_object_remove_data_by_id(object : GtkObject*, data_id : GQuark)
  fun gtk_object_remove_no_notify(object : GtkObject*, key : Gchar*)
  fun gtk_object_remove_no_notify_by_id(object : GtkObject*, key_id : GQuark)
  fun gtk_object_set(object : GtkObject*, first_property_name : Gchar*, ...)
  fun gtk_object_set_data(object : GtkObject*, key : Gchar*, data : Gpointer)
  fun gtk_object_set_data_by_id(object : GtkObject*, data_id : GQuark, data : Gpointer)
  fun gtk_object_set_data_by_id_full(object : GtkObject*, data_id : GQuark, data : Gpointer, destroy : GDestroyNotify)
  fun gtk_object_set_data_full(object : GtkObject*, key : Gchar*, data : Gpointer, destroy : GDestroyNotify)
  fun gtk_object_set_user_data(object : GtkObject*, data : Gpointer)
  fun gtk_object_sink(object : GtkObject*)
  fun gtk_object_unref(object : GtkObject*)
  fun gtk_object_weakref(object : GtkObject*, notify : GDestroyNotify, data : Gpointer)
  fun gtk_object_weakunref(object : GtkObject*, notify : GDestroyNotify, data : Gpointer)
  fun gtk_offscreen_window_get_pixbuf(offscreen : GtkOffscreenWindow*) : GdkPixbuf
  fun gtk_offscreen_window_get_pixmap(offscreen : GtkOffscreenWindow*) : GdkPixmap*
  fun gtk_offscreen_window_get_type : GType
  fun gtk_offscreen_window_new : GtkWidget*
  fun gtk_old_editable_changed(old_editable : GtkOldEditable*)
  fun gtk_old_editable_claim_selection(old_editable : GtkOldEditable*, claim : Gboolean, time_ : Guint32)
  fun gtk_old_editable_get_type : GType
  fun gtk_option_menu_get_history(option_menu : GtkOptionMenu*) : Gint
  fun gtk_option_menu_get_menu(option_menu : GtkOptionMenu*) : GtkWidget*
  fun gtk_option_menu_get_type : GType
  fun gtk_option_menu_new : GtkWidget*
  fun gtk_option_menu_remove_menu(option_menu : GtkOptionMenu*)
  fun gtk_option_menu_set_history(option_menu : GtkOptionMenu*, index_ : Guint)
  fun gtk_option_menu_set_menu(option_menu : GtkOptionMenu*, menu : GtkWidget*)
  fun gtk_orientable_get_orientation(orientable : GtkOrientable) : GtkOrientation
  fun gtk_orientable_get_type : GType
  fun gtk_orientable_set_orientation(orientable : GtkOrientable, orientation : GtkOrientation)
  fun gtk_orientation_get_type : GType
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
  fun gtk_paint_arrow(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, shadow_type : GtkShadowType, area : GdkRectangle*, widget : GtkWidget*, detail : Gchar*, arrow_type : GtkArrowType, fill : Gboolean, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_paint_box(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, shadow_type : GtkShadowType, area : GdkRectangle*, widget : GtkWidget*, detail : Gchar*, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_paint_box_gap(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, shadow_type : GtkShadowType, area : GdkRectangle*, widget : GtkWidget*, detail : Gchar*, x : Gint, y : Gint, width : Gint, height : Gint, gap_side : GtkPositionType, gap_x : Gint, gap_width : Gint)
  fun gtk_paint_check(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, shadow_type : GtkShadowType, area : GdkRectangle*, widget : GtkWidget*, detail : Gchar*, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_paint_diamond(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, shadow_type : GtkShadowType, area : GdkRectangle*, widget : GtkWidget*, detail : Gchar*, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_paint_expander(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, area : GdkRectangle*, widget : GtkWidget*, detail : Gchar*, x : Gint, y : Gint, expander_style : GtkExpanderStyle)
  fun gtk_paint_extension(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, shadow_type : GtkShadowType, area : GdkRectangle*, widget : GtkWidget*, detail : Gchar*, x : Gint, y : Gint, width : Gint, height : Gint, gap_side : GtkPositionType)
  fun gtk_paint_flat_box(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, shadow_type : GtkShadowType, area : GdkRectangle*, widget : GtkWidget*, detail : Gchar*, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_paint_focus(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, area : GdkRectangle*, widget : GtkWidget*, detail : Gchar*, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_paint_handle(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, shadow_type : GtkShadowType, area : GdkRectangle*, widget : GtkWidget*, detail : Gchar*, x : Gint, y : Gint, width : Gint, height : Gint, orientation : GtkOrientation)
  fun gtk_paint_hline(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, area : GdkRectangle*, widget : GtkWidget*, detail : Gchar*, x1 : Gint, x2 : Gint, y : Gint)
  fun gtk_paint_layout(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, use_text : Gboolean, area : GdkRectangle*, widget : GtkWidget*, detail : Gchar*, x : Gint, y : Gint, layout : PangoLayout)
  fun gtk_paint_option(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, shadow_type : GtkShadowType, area : GdkRectangle*, widget : GtkWidget*, detail : Gchar*, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_paint_polygon(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, shadow_type : GtkShadowType, area : GdkRectangle*, widget : GtkWidget*, detail : Gchar*, points : GdkPoint*, n_points : Gint, fill : Gboolean)
  fun gtk_paint_resize_grip(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, area : GdkRectangle*, widget : GtkWidget*, detail : Gchar*, edge : GdkWindowEdge, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_paint_shadow(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, shadow_type : GtkShadowType, area : GdkRectangle*, widget : GtkWidget*, detail : Gchar*, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_paint_shadow_gap(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, shadow_type : GtkShadowType, area : GdkRectangle*, widget : GtkWidget*, detail : Gchar*, x : Gint, y : Gint, width : Gint, height : Gint, gap_side : GtkPositionType, gap_x : Gint, gap_width : Gint)
  fun gtk_paint_slider(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, shadow_type : GtkShadowType, area : GdkRectangle*, widget : GtkWidget*, detail : Gchar*, x : Gint, y : Gint, width : Gint, height : Gint, orientation : GtkOrientation)
  fun gtk_paint_spinner(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, area : GdkRectangle*, widget : GtkWidget*, detail : Gchar*, step : Guint, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_paint_string(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, area : GdkRectangle*, widget : GtkWidget*, detail : Gchar*, x : Gint, y : Gint, string : Gchar*)
  fun gtk_paint_tab(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, shadow_type : GtkShadowType, area : GdkRectangle*, widget : GtkWidget*, detail : Gchar*, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_paint_vline(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType, area : GdkRectangle*, widget : GtkWidget*, detail : Gchar*, y1_ : Gint, y2_ : Gint, x : Gint)
  fun gtk_paned_add1(paned : GtkPaned*, child : GtkWidget*)
  fun gtk_paned_add2(paned : GtkPaned*, child : GtkWidget*)
  fun gtk_paned_compute_position(paned : GtkPaned*, allocation : Gint, child1_req : Gint, child2_req : Gint)
  fun gtk_paned_get_child1(paned : GtkPaned*) : GtkWidget*
  fun gtk_paned_get_child2(paned : GtkPaned*) : GtkWidget*
  fun gtk_paned_get_handle_window(paned : GtkPaned*) : GdkWindow*
  fun gtk_paned_get_position(paned : GtkPaned*) : Gint
  fun gtk_paned_get_type : GType
  fun gtk_paned_pack1(paned : GtkPaned*, child : GtkWidget*, resize : Gboolean, shrink : Gboolean)
  fun gtk_paned_pack2(paned : GtkPaned*, child : GtkWidget*, resize : Gboolean, shrink : Gboolean)
  fun gtk_paned_set_position(paned : GtkPaned*, position : Gint)
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
  fun gtk_paper_size_new(name : Gchar*) : GtkPaperSize
  fun gtk_paper_size_new_custom(name : Gchar*, display_name : Gchar*, width : Gdouble, height : Gdouble, unit : GtkUnit) : GtkPaperSize
  fun gtk_paper_size_new_from_key_file(key_file : GKeyFile, group_name : Gchar*, error : GError**) : GtkPaperSize
  fun gtk_paper_size_new_from_ppd(ppd_name : Gchar*, ppd_display_name : Gchar*, width : Gdouble, height : Gdouble) : GtkPaperSize
  fun gtk_paper_size_set_size(size : GtkPaperSize, width : Gdouble, height : Gdouble, unit : GtkUnit)
  fun gtk_paper_size_to_key_file(size : GtkPaperSize, key_file : GKeyFile, group_name : Gchar*)
  fun gtk_parse_args(argc : LibC::Int*, argv : LibC::Char***) : Gboolean
  fun gtk_path_priority_type_get_type : GType
  fun gtk_path_type_get_type : GType
  fun gtk_pixmap_get(pixmap : GtkPixmap*, val : GdkPixmap**, mask : GdkBitmap**)
  fun gtk_pixmap_get_type : GType
  fun gtk_pixmap_new(pixmap : GdkPixmap*, mask : GdkBitmap*) : GtkWidget*
  fun gtk_pixmap_set(pixmap : GtkPixmap*, val : GdkPixmap*, mask : GdkBitmap*)
  fun gtk_pixmap_set_build_insensitive(pixmap : GtkPixmap*, build : Gboolean)
  fun gtk_plug_construct(plug : GtkPlug*, socket_id : GdkNativeWindow)
  fun gtk_plug_construct_for_display(plug : GtkPlug*, display : GdkDisplay*, socket_id : GdkNativeWindow)
  fun gtk_plug_get_embedded(plug : GtkPlug*) : Gboolean
  fun gtk_plug_get_id(plug : GtkPlug*) : GdkNativeWindow
  fun gtk_plug_get_socket_window(plug : GtkPlug*) : GdkWindow*
  fun gtk_plug_get_type : GType
  fun gtk_plug_new(socket_id : GdkNativeWindow) : GtkWidget*
  fun gtk_plug_new_for_display(display : GdkDisplay*, socket_id : GdkNativeWindow) : GtkWidget*
  fun gtk_policy_type_get_type : GType
  fun gtk_position_type_get_type : GType
  fun gtk_preview_draw_row(preview : GtkPreview*, data : Guchar*, x : Gint, y : Gint, w : Gint)
  fun gtk_preview_get_cmap : GdkColormap*
  fun gtk_preview_get_info : GtkPreviewInfo*
  fun gtk_preview_get_type : GType
  fun gtk_preview_get_visual : GdkVisual*
  fun gtk_preview_new(type : GtkPreviewType) : GtkWidget*
  fun gtk_preview_put(preview : GtkPreview*, window : GdkWindow*, gc : GdkGc*, srcx : Gint, srcy : Gint, destx : Gint, desty : Gint, width : Gint, height : Gint)
  fun gtk_preview_reset
  fun gtk_preview_set_color_cube(nred_shades : Guint, ngreen_shades : Guint, nblue_shades : Guint, ngray_shades : Guint)
  fun gtk_preview_set_dither(preview : GtkPreview*, dither : GdkRgbDither)
  fun gtk_preview_set_expand(preview : GtkPreview*, expand : Gboolean)
  fun gtk_preview_set_gamma(gamma_ : LibC::Double)
  fun gtk_preview_set_install_cmap(install_cmap : Gint)
  fun gtk_preview_set_reserved(nreserved : Gint)
  fun gtk_preview_size(preview : GtkPreview*, width : Gint, height : Gint)
  fun gtk_preview_type_get_type : GType
  fun gtk_preview_uninit
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
  fun gtk_private_flags_get_type : GType
  fun gtk_progress_bar_get_ellipsize(pbar : GtkProgressBar*) : PangoEllipsizeMode
  fun gtk_progress_bar_get_fraction(pbar : GtkProgressBar*) : Gdouble
  fun gtk_progress_bar_get_orientation(pbar : GtkProgressBar*) : GtkProgressBarOrientation
  fun gtk_progress_bar_get_pulse_step(pbar : GtkProgressBar*) : Gdouble
  fun gtk_progress_bar_get_text(pbar : GtkProgressBar*) : Gchar*
  fun gtk_progress_bar_get_type : GType
  fun gtk_progress_bar_new : GtkWidget*
  fun gtk_progress_bar_new_with_adjustment(adjustment : GtkAdjustment*) : GtkWidget*
  fun gtk_progress_bar_orientation_get_type : GType
  fun gtk_progress_bar_pulse(pbar : GtkProgressBar*)
  fun gtk_progress_bar_set_activity_blocks(pbar : GtkProgressBar*, blocks : Guint)
  fun gtk_progress_bar_set_activity_step(pbar : GtkProgressBar*, step : Guint)
  fun gtk_progress_bar_set_bar_style(pbar : GtkProgressBar*, style : GtkProgressBarStyle)
  fun gtk_progress_bar_set_discrete_blocks(pbar : GtkProgressBar*, blocks : Guint)
  fun gtk_progress_bar_set_ellipsize(pbar : GtkProgressBar*, mode : PangoEllipsizeMode)
  fun gtk_progress_bar_set_fraction(pbar : GtkProgressBar*, fraction : Gdouble)
  fun gtk_progress_bar_set_orientation(pbar : GtkProgressBar*, orientation : GtkProgressBarOrientation)
  fun gtk_progress_bar_set_pulse_step(pbar : GtkProgressBar*, fraction : Gdouble)
  fun gtk_progress_bar_set_text(pbar : GtkProgressBar*, text : Gchar*)
  fun gtk_progress_bar_style_get_type : GType
  fun gtk_progress_bar_update(pbar : GtkProgressBar*, percentage : Gdouble)
  fun gtk_progress_configure(progress : GtkProgress*, value : Gdouble, min : Gdouble, max : Gdouble)
  fun gtk_progress_get_current_percentage(progress : GtkProgress*) : Gdouble
  fun gtk_progress_get_current_text(progress : GtkProgress*) : Gchar*
  fun gtk_progress_get_percentage_from_value(progress : GtkProgress*, value : Gdouble) : Gdouble
  fun gtk_progress_get_text_from_value(progress : GtkProgress*, value : Gdouble) : Gchar*
  fun gtk_progress_get_type : GType
  fun gtk_progress_get_value(progress : GtkProgress*) : Gdouble
  fun gtk_progress_set_activity_mode(progress : GtkProgress*, activity_mode : Gboolean)
  fun gtk_progress_set_adjustment(progress : GtkProgress*, adjustment : GtkAdjustment*)
  fun gtk_progress_set_format_string(progress : GtkProgress*, format : Gchar*)
  fun gtk_progress_set_percentage(progress : GtkProgress*, percentage : Gdouble)
  fun gtk_progress_set_show_text(progress : GtkProgress*, show_text : Gboolean)
  fun gtk_progress_set_text_alignment(progress : GtkProgress*, x_align : Gfloat, y_align : Gfloat)
  fun gtk_progress_set_value(progress : GtkProgress*, value : Gdouble)
  fun gtk_propagate_event(widget : GtkWidget*, event : GdkEvent*)
  fun gtk_quit_add(main_level : Guint, function : GtkFunction, data : Gpointer) : Guint
  fun gtk_quit_add_destroy(main_level : Guint, object : GtkObject*)
  fun gtk_quit_add_full(main_level : Guint, function : GtkFunction, marshal : GtkCallbackMarshal, data : Gpointer, destroy : GDestroyNotify) : Guint
  fun gtk_quit_remove(quit_handler_id : Guint)
  fun gtk_quit_remove_by_data(data : Gpointer)
  fun gtk_radio_action_get_current_value(action : GtkRadioAction*) : Gint
  fun gtk_radio_action_get_group(action : GtkRadioAction*) : GsList*
  fun gtk_radio_action_get_type : GType
  fun gtk_radio_action_new(name : Gchar*, label : Gchar*, tooltip : Gchar*, stock_id : Gchar*, value : Gint) : GtkRadioAction*
  fun gtk_radio_action_set_current_value(action : GtkRadioAction*, current_value : Gint)
  fun gtk_radio_action_set_group(action : GtkRadioAction*, group : GsList*)
  fun gtk_radio_button_get_group(radio_button : GtkRadioButton*) : GsList*
  fun gtk_radio_button_get_type : GType
  fun gtk_radio_button_new(group : GsList*) : GtkWidget*
  fun gtk_radio_button_new_from_widget(radio_group_member : GtkRadioButton*) : GtkWidget*
  fun gtk_radio_button_new_with_label(group : GsList*, label : Gchar*) : GtkWidget*
  fun gtk_radio_button_new_with_label_from_widget(radio_group_member : GtkRadioButton*, label : Gchar*) : GtkWidget*
  fun gtk_radio_button_new_with_mnemonic(group : GsList*, label : Gchar*) : GtkWidget*
  fun gtk_radio_button_new_with_mnemonic_from_widget(radio_group_member : GtkRadioButton*, label : Gchar*) : GtkWidget*
  fun gtk_radio_button_set_group(radio_button : GtkRadioButton*, group : GsList*)
  fun gtk_radio_menu_item_get_group(radio_menu_item : GtkRadioMenuItem*) : GsList*
  fun gtk_radio_menu_item_get_type : GType
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
  fun gtk_range_get_update_policy(range : GtkRange*) : GtkUpdateType
  fun gtk_range_get_upper_stepper_sensitivity(range : GtkRange*) : GtkSensitivityType
  fun gtk_range_get_value(range : GtkRange*) : Gdouble
  fun gtk_range_set_adjustment(range : GtkRange*, adjustment : GtkAdjustment*)
  fun gtk_range_set_fill_level(range : GtkRange*, fill_level : Gdouble)
  fun gtk_range_set_flippable(range : GtkRange*, flippable : Gboolean)
  fun gtk_range_set_increments(range : GtkRange*, step : Gdouble, page : Gdouble)
  fun gtk_range_set_inverted(range : GtkRange*, setting : Gboolean)
  fun gtk_range_set_lower_stepper_sensitivity(range : GtkRange*, sensitivity : GtkSensitivityType)
  fun gtk_range_set_min_slider_size(range : GtkRange*, min_size : Gboolean)
  fun gtk_range_set_range(range : GtkRange*, min : Gdouble, max : Gdouble)
  fun gtk_range_set_restrict_to_fill_level(range : GtkRange*, restrict_to_fill_level : Gboolean)
  fun gtk_range_set_round_digits(range : GtkRange*, round_digits : Gint)
  fun gtk_range_set_show_fill_level(range : GtkRange*, show_fill_level : Gboolean)
  fun gtk_range_set_slider_size_fixed(range : GtkRange*, size_fixed : Gboolean)
  fun gtk_range_set_update_policy(range : GtkRange*, policy : GtkUpdateType)
  fun gtk_range_set_upper_stepper_sensitivity(range : GtkRange*, sensitivity : GtkSensitivityType)
  fun gtk_range_set_value(range : GtkRange*, value : Gdouble)
  fun gtk_rc_add_class_style(rc_style : GtkRcStyle*, pattern : Gchar*)
  fun gtk_rc_add_default_file(filename : Gchar*)
  fun gtk_rc_add_widget_class_style(rc_style : GtkRcStyle*, pattern : Gchar*)
  fun gtk_rc_add_widget_name_style(rc_style : GtkRcStyle*, pattern : Gchar*)
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
  fun gtk_rc_style_ref(rc_style : GtkRcStyle*)
  fun gtk_rc_style_unref(rc_style : GtkRcStyle*)
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
  fun gtk_recent_chooser_get_show_numbers(chooser : GtkRecentChooser) : Gboolean
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
  fun gtk_recent_chooser_set_show_numbers(chooser : GtkRecentChooser, show_numbers : Gboolean)
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
  fun gtk_recent_info_exists(info : GtkRecentInfo) : Gboolean
  fun gtk_recent_info_get_added(info : GtkRecentInfo) : TimeT
  fun gtk_recent_info_get_age(info : GtkRecentInfo) : Gint
  fun gtk_recent_info_get_application_info(info : GtkRecentInfo, app_name : Gchar*, app_exec : Gchar**, count : Guint*, time_ : TimeT*) : Gboolean
  fun gtk_recent_info_get_applications(info : GtkRecentInfo, length : Gsize*) : Gchar**
  fun gtk_recent_info_get_description(info : GtkRecentInfo) : Gchar*
  fun gtk_recent_info_get_display_name(info : GtkRecentInfo) : Gchar*
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
  fun gtk_recent_manager_get_for_screen(screen : GdkScreen*) : GtkRecentManager*
  fun gtk_recent_manager_get_items(manager : GtkRecentManager*) : GList*
  fun gtk_recent_manager_get_limit(manager : GtkRecentManager*) : Gint
  fun gtk_recent_manager_get_type : GType
  fun gtk_recent_manager_has_item(manager : GtkRecentManager*, uri : Gchar*) : Gboolean
  fun gtk_recent_manager_lookup_item(manager : GtkRecentManager*, uri : Gchar*, error : GError**) : GtkRecentInfo
  fun gtk_recent_manager_move_item(manager : GtkRecentManager*, uri : Gchar*, new_uri : Gchar*, error : GError**) : Gboolean
  fun gtk_recent_manager_new : GtkRecentManager*
  fun gtk_recent_manager_purge_items(manager : GtkRecentManager*, error : GError**) : Gint
  fun gtk_recent_manager_remove_item(manager : GtkRecentManager*, uri : Gchar*, error : GError**) : Gboolean
  fun gtk_recent_manager_set_limit(manager : GtkRecentManager*, limit : Gint)
  fun gtk_recent_manager_set_screen(manager : GtkRecentManager*, screen : GdkScreen*)
  fun gtk_recent_sort_type_get_type : GType
  fun gtk_relief_style_get_type : GType
  fun gtk_requisition_copy(requisition : GtkRequisition*) : GtkRequisition*
  fun gtk_requisition_free(requisition : GtkRequisition*)
  fun gtk_requisition_get_type : GType
  fun gtk_resize_mode_get_type : GType
  fun gtk_response_type_get_type : GType
  fun gtk_rgb_to_hsv(r : Gdouble, g : Gdouble, b : Gdouble, h : Gdouble*, s : Gdouble*, v : Gdouble*)
  fun gtk_ruler_draw_pos(ruler : GtkRuler*)
  fun gtk_ruler_draw_ticks(ruler : GtkRuler*)
  fun gtk_ruler_get_metric(ruler : GtkRuler*) : GtkMetricType
  fun gtk_ruler_get_range(ruler : GtkRuler*, lower : Gdouble*, upper : Gdouble*, position : Gdouble*, max_size : Gdouble*)
  fun gtk_ruler_get_type : GType
  fun gtk_ruler_set_metric(ruler : GtkRuler*, metric : GtkMetricType)
  fun gtk_ruler_set_range(ruler : GtkRuler*, lower : Gdouble, upper : Gdouble, position : Gdouble, max_size : Gdouble)
  fun gtk_scale_add_mark(scale : GtkScale*, value : Gdouble, position : GtkPositionType, markup : Gchar*)
  fun gtk_scale_button_get_adjustment(button : GtkScaleButton*) : GtkAdjustment*
  fun gtk_scale_button_get_minus_button(button : GtkScaleButton*) : GtkWidget*
  fun gtk_scale_button_get_orientation(button : GtkScaleButton*) : GtkOrientation
  fun gtk_scale_button_get_plus_button(button : GtkScaleButton*) : GtkWidget*
  fun gtk_scale_button_get_popup(button : GtkScaleButton*) : GtkWidget*
  fun gtk_scale_button_get_type : GType
  fun gtk_scale_button_get_value(button : GtkScaleButton*) : Gdouble
  fun gtk_scale_button_new(size : GtkIconSize, min : Gdouble, max : Gdouble, step : Gdouble, icons : Gchar**) : GtkWidget*
  fun gtk_scale_button_set_adjustment(button : GtkScaleButton*, adjustment : GtkAdjustment*)
  fun gtk_scale_button_set_icons(button : GtkScaleButton*, icons : Gchar**)
  fun gtk_scale_button_set_orientation(button : GtkScaleButton*, orientation : GtkOrientation)
  fun gtk_scale_button_set_value(button : GtkScaleButton*, value : Gdouble)
  fun gtk_scale_clear_marks(scale : GtkScale*)
  fun gtk_scale_get_digits(scale : GtkScale*) : Gint
  fun gtk_scale_get_draw_value(scale : GtkScale*) : Gboolean
  fun gtk_scale_get_layout(scale : GtkScale*) : PangoLayout
  fun gtk_scale_get_layout_offsets(scale : GtkScale*, x : Gint*, y : Gint*)
  fun gtk_scale_get_type : GType
  fun gtk_scale_get_value_pos(scale : GtkScale*) : GtkPositionType
  fun gtk_scale_set_digits(scale : GtkScale*, digits : Gint)
  fun gtk_scale_set_draw_value(scale : GtkScale*, draw_value : Gboolean)
  fun gtk_scale_set_value_pos(scale : GtkScale*, pos : GtkPositionType)
  fun gtk_scroll_step_get_type : GType
  fun gtk_scroll_type_get_type : GType
  fun gtk_scrollbar_get_type : GType
  fun gtk_scrolled_window_add_with_viewport(scrolled_window : GtkScrolledWindow*, child : GtkWidget*)
  fun gtk_scrolled_window_get_hadjustment(scrolled_window : GtkScrolledWindow*) : GtkAdjustment*
  fun gtk_scrolled_window_get_hscrollbar(scrolled_window : GtkScrolledWindow*) : GtkWidget*
  fun gtk_scrolled_window_get_placement(scrolled_window : GtkScrolledWindow*) : GtkCornerType
  fun gtk_scrolled_window_get_policy(scrolled_window : GtkScrolledWindow*, hscrollbar_policy : GtkPolicyType*, vscrollbar_policy : GtkPolicyType*)
  fun gtk_scrolled_window_get_shadow_type(scrolled_window : GtkScrolledWindow*) : GtkShadowType
  fun gtk_scrolled_window_get_type : GType
  fun gtk_scrolled_window_get_vadjustment(scrolled_window : GtkScrolledWindow*) : GtkAdjustment*
  fun gtk_scrolled_window_get_vscrollbar(scrolled_window : GtkScrolledWindow*) : GtkWidget*
  fun gtk_scrolled_window_new(hadjustment : GtkAdjustment*, vadjustment : GtkAdjustment*) : GtkWidget*
  fun gtk_scrolled_window_set_hadjustment(scrolled_window : GtkScrolledWindow*, hadjustment : GtkAdjustment*)
  fun gtk_scrolled_window_set_placement(scrolled_window : GtkScrolledWindow*, window_placement : GtkCornerType)
  fun gtk_scrolled_window_set_policy(scrolled_window : GtkScrolledWindow*, hscrollbar_policy : GtkPolicyType, vscrollbar_policy : GtkPolicyType)
  fun gtk_scrolled_window_set_shadow_type(scrolled_window : GtkScrolledWindow*, type : GtkShadowType)
  fun gtk_scrolled_window_set_vadjustment(scrolled_window : GtkScrolledWindow*, vadjustment : GtkAdjustment*)
  fun gtk_scrolled_window_unset_placement(scrolled_window : GtkScrolledWindow*)
  fun gtk_selection_add_target(widget : GtkWidget*, selection : GdkAtom, target : GdkAtom, info : Guint)
  fun gtk_selection_add_targets(widget : GtkWidget*, selection : GdkAtom, targets : GtkTargetEntry*, ntargets : Guint)
  fun gtk_selection_clear(widget : GtkWidget*, event : GdkEventSelection*) : Gboolean
  fun gtk_selection_clear_targets(widget : GtkWidget*, selection : GdkAtom)
  fun gtk_selection_convert(widget : GtkWidget*, selection : GdkAtom, target : GdkAtom, time_ : Guint32) : Gboolean
  fun gtk_selection_data_copy(data : GtkSelectionData*) : GtkSelectionData*
  fun gtk_selection_data_free(data : GtkSelectionData*)
  fun gtk_selection_data_get_data(selection_data : GtkSelectionData*) : Guchar*
  fun gtk_selection_data_get_data_type(selection_data : GtkSelectionData*) : GdkAtom
  fun gtk_selection_data_get_display(selection_data : GtkSelectionData*) : GdkDisplay*
  fun gtk_selection_data_get_format(selection_data : GtkSelectionData*) : Gint
  fun gtk_selection_data_get_length(selection_data : GtkSelectionData*) : Gint
  fun gtk_selection_data_get_pixbuf(selection_data : GtkSelectionData*) : GdkPixbuf
  fun gtk_selection_data_get_selection(selection_data : GtkSelectionData*) : GdkAtom
  fun gtk_selection_data_get_target(selection_data : GtkSelectionData*) : GdkAtom
  fun gtk_selection_data_get_targets(selection_data : GtkSelectionData*, targets : GdkAtom**, n_atoms : Gint*) : Gboolean
  fun gtk_selection_data_get_text(selection_data : GtkSelectionData*) : Guchar*
  fun gtk_selection_data_get_type : GType
  fun gtk_selection_data_get_uris(selection_data : GtkSelectionData*) : Gchar**
  fun gtk_selection_data_set(selection_data : GtkSelectionData*, type : GdkAtom, format : Gint, data : Guchar*, length : Gint)
  fun gtk_selection_data_set_pixbuf(selection_data : GtkSelectionData*, pixbuf : GdkPixbuf) : Gboolean
  fun gtk_selection_data_set_text(selection_data : GtkSelectionData*, str : Gchar*, len : Gint) : Gboolean
  fun gtk_selection_data_set_uris(selection_data : GtkSelectionData*, uris : Gchar**) : Gboolean
  fun gtk_selection_data_targets_include_image(selection_data : GtkSelectionData*, writable : Gboolean) : Gboolean
  fun gtk_selection_data_targets_include_rich_text(selection_data : GtkSelectionData*, buffer : GtkTextBuffer*) : Gboolean
  fun gtk_selection_data_targets_include_text(selection_data : GtkSelectionData*) : Gboolean
  fun gtk_selection_data_targets_include_uri(selection_data : GtkSelectionData*) : Gboolean
  fun gtk_selection_mode_get_type : GType
  fun gtk_selection_owner_set(widget : GtkWidget*, selection : GdkAtom, time_ : Guint32) : Gboolean
  fun gtk_selection_owner_set_for_display(display : GdkDisplay*, widget : GtkWidget*, selection : GdkAtom, time_ : Guint32) : Gboolean
  fun gtk_selection_remove_all(widget : GtkWidget*)
  fun gtk_sensitivity_type_get_type : GType
  fun gtk_separator_get_type : GType
  fun gtk_separator_menu_item_get_type : GType
  fun gtk_separator_menu_item_new : GtkWidget*
  fun gtk_separator_tool_item_get_draw(item : GtkSeparatorToolItem*) : Gboolean
  fun gtk_separator_tool_item_get_type : GType
  fun gtk_separator_tool_item_new : GtkToolItem*
  fun gtk_separator_tool_item_set_draw(item : GtkSeparatorToolItem*, draw : Gboolean)
  fun gtk_set_locale : Gchar*
  fun gtk_settings_get_default : GtkSettings*
  fun gtk_settings_get_for_screen(screen : GdkScreen*) : GtkSettings*
  fun gtk_settings_get_type : GType
  fun gtk_settings_install_property(pspec : GParamSpec*)
  fun gtk_settings_install_property_parser(pspec : GParamSpec*, parser : GtkRcPropertyParser)
  fun gtk_settings_set_double_property(settings : GtkSettings*, name : Gchar*, v_double : Gdouble, origin : Gchar*)
  fun gtk_settings_set_long_property(settings : GtkSettings*, name : Gchar*, v_long : Glong, origin : Gchar*)
  fun gtk_settings_set_property_value(settings : GtkSettings*, name : Gchar*, svalue : GtkSettingsValue*)
  fun gtk_settings_set_string_property(settings : GtkSettings*, name : Gchar*, v_string : Gchar*, origin : Gchar*)
  fun gtk_shadow_type_get_type : GType
  fun gtk_show_about_dialog(parent : GtkWindow*, first_property_name : Gchar*, ...)
  fun gtk_show_uri(screen : GdkScreen*, uri : Gchar*, timestamp : Guint32, error : GError**) : Gboolean
  fun gtk_side_type_get_type : GType
  fun gtk_signal_compat_matched(object : GtkObject*, func : GCallback, data : Gpointer, match : GSignalMatchType, action : Guint)
  fun gtk_signal_connect_full(object : GtkObject*, name : Gchar*, func : GCallback, unsupported : GtkCallbackMarshal, data : Gpointer, destroy_func : GDestroyNotify, object_signal : Gint, after : Gint) : Gulong
  fun gtk_signal_connect_object_while_alive(object : GtkObject*, name : Gchar*, func : GCallback, alive_object : GtkObject*)
  fun gtk_signal_connect_while_alive(object : GtkObject*, name : Gchar*, func : GCallback, func_data : Gpointer, alive_object : GtkObject*)
  fun gtk_signal_emit(object : GtkObject*, signal_id : Guint, ...)
  fun gtk_signal_emit_by_name(object : GtkObject*, name : Gchar*, ...)
  fun gtk_signal_emit_stop_by_name(object : GtkObject*, name : Gchar*)
  fun gtk_signal_emitv(object : GtkObject*, signal_id : Guint, args : GtkArg*)
  fun gtk_signal_emitv_by_name(object : GtkObject*, name : Gchar*, args : GtkArg*)
  fun gtk_signal_new(name : Gchar*, signal_flags : GtkSignalRunType, object_type : GType, function_offset : Guint, marshaller : GSignalCMarshaller, return_val : GType, n_args : Guint, ...) : Guint
  fun gtk_signal_newv(name : Gchar*, signal_flags : GtkSignalRunType, object_type : GType, function_offset : Guint, marshaller : GSignalCMarshaller, return_val : GType, n_args : Guint, args : GType*) : Guint
  fun gtk_signal_run_type_get_type : GType
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
  fun gtk_socket_add_id(socket_ : GtkSocket*, window_id : GdkNativeWindow)
  fun gtk_socket_get_id(socket_ : GtkSocket*) : GdkNativeWindow
  fun gtk_socket_get_plug_window(socket_ : GtkSocket*) : GdkWindow*
  fun gtk_socket_get_type : GType
  fun gtk_socket_new : GtkWidget*
  fun gtk_socket_steal(socket_ : GtkSocket*, wid : GdkNativeWindow)
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
  fun gtk_state_type_get_type : GType
  fun gtk_status_icon_get_blinking(status_icon : GtkStatusIcon*) : Gboolean
  fun gtk_status_icon_get_geometry(status_icon : GtkStatusIcon*, screen : GdkScreen**, area : GdkRectangle*, orientation : GtkOrientation*) : Gboolean
  fun gtk_status_icon_get_gicon(status_icon : GtkStatusIcon*) : GIcon
  fun gtk_status_icon_get_has_tooltip(status_icon : GtkStatusIcon*) : Gboolean
  fun gtk_status_icon_get_icon_name(status_icon : GtkStatusIcon*) : Gchar*
  fun gtk_status_icon_get_pixbuf(status_icon : GtkStatusIcon*) : GdkPixbuf
  fun gtk_status_icon_get_screen(status_icon : GtkStatusIcon*) : GdkScreen*
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
  fun gtk_status_icon_set_blinking(status_icon : GtkStatusIcon*, blinking : Gboolean)
  fun gtk_status_icon_set_from_file(status_icon : GtkStatusIcon*, filename : Gchar*)
  fun gtk_status_icon_set_from_gicon(status_icon : GtkStatusIcon*, icon : GIcon)
  fun gtk_status_icon_set_from_icon_name(status_icon : GtkStatusIcon*, icon_name : Gchar*)
  fun gtk_status_icon_set_from_pixbuf(status_icon : GtkStatusIcon*, pixbuf : GdkPixbuf)
  fun gtk_status_icon_set_from_stock(status_icon : GtkStatusIcon*, stock_id : Gchar*)
  fun gtk_status_icon_set_has_tooltip(status_icon : GtkStatusIcon*, has_tooltip : Gboolean)
  fun gtk_status_icon_set_name(status_icon : GtkStatusIcon*, name : Gchar*)
  fun gtk_status_icon_set_screen(status_icon : GtkStatusIcon*, screen : GdkScreen*)
  fun gtk_status_icon_set_title(status_icon : GtkStatusIcon*, title : Gchar*)
  fun gtk_status_icon_set_tooltip(status_icon : GtkStatusIcon*, tooltip_text : Gchar*)
  fun gtk_status_icon_set_tooltip_markup(status_icon : GtkStatusIcon*, markup : Gchar*)
  fun gtk_status_icon_set_tooltip_text(status_icon : GtkStatusIcon*, text : Gchar*)
  fun gtk_status_icon_set_visible(status_icon : GtkStatusIcon*, visible : Gboolean)
  fun gtk_statusbar_get_context_id(statusbar : GtkStatusbar*, context_description : Gchar*) : Guint
  fun gtk_statusbar_get_has_resize_grip(statusbar : GtkStatusbar*) : Gboolean
  fun gtk_statusbar_get_message_area(statusbar : GtkStatusbar*) : GtkWidget*
  fun gtk_statusbar_get_type : GType
  fun gtk_statusbar_new : GtkWidget*
  fun gtk_statusbar_pop(statusbar : GtkStatusbar*, context_id : Guint)
  fun gtk_statusbar_push(statusbar : GtkStatusbar*, context_id : Guint, text : Gchar*) : Guint
  fun gtk_statusbar_remove(statusbar : GtkStatusbar*, context_id : Guint, message_id : Guint)
  fun gtk_statusbar_remove_all(statusbar : GtkStatusbar*, context_id : Guint)
  fun gtk_statusbar_set_has_resize_grip(statusbar : GtkStatusbar*, setting : Gboolean)
  fun gtk_stock_add(items : GtkStockItem*, n_items : Guint)
  fun gtk_stock_add_static(items : GtkStockItem*, n_items : Guint)
  fun gtk_stock_item_copy(item : GtkStockItem*) : GtkStockItem*
  fun gtk_stock_item_free(item : GtkStockItem*)
  fun gtk_stock_list_ids : GsList*
  fun gtk_stock_lookup(stock_id : Gchar*, item : GtkStockItem*) : Gboolean
  fun gtk_stock_set_translate_func(domain : Gchar*, func : GtkTranslateFunc, data : Gpointer, notify : GDestroyNotify)
  fun gtk_style_apply_default_background(style : GtkStyle*, window : GdkWindow*, set_bg : Gboolean, state_type : GtkStateType, area : GdkRectangle*, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_style_attach(style : GtkStyle*, window : GdkWindow*) : GtkStyle*
  fun gtk_style_copy(style : GtkStyle*) : GtkStyle*
  fun gtk_style_detach(style : GtkStyle*)
  fun gtk_style_get(style : GtkStyle*, widget_type : GType, first_property_name : Gchar*, ...)
  fun gtk_style_get_font(style : GtkStyle*) : GdkFont*
  fun gtk_style_get_style_property(style : GtkStyle*, widget_type : GType, property_name : Gchar*, value : GValue*)
  fun gtk_style_get_type : GType
  fun gtk_style_get_valist(style : GtkStyle*, widget_type : GType, first_property_name : Gchar*, var_args : VaList)
  fun gtk_style_lookup_color(style : GtkStyle*, color_name : Gchar*, color : GdkColor*) : Gboolean
  fun gtk_style_lookup_icon_set(style : GtkStyle*, stock_id : Gchar*) : GtkIconSet
  fun gtk_style_new : GtkStyle*
  fun gtk_style_ref(style : GtkStyle*) : GtkStyle*
  fun gtk_style_render_icon(style : GtkStyle*, source : GtkIconSource, direction : GtkTextDirection, state : GtkStateType, size : GtkIconSize, widget : GtkWidget*, detail : Gchar*) : GdkPixbuf
  fun gtk_style_set_background(style : GtkStyle*, window : GdkWindow*, state_type : GtkStateType)
  fun gtk_style_set_font(style : GtkStyle*, font : GdkFont*)
  fun gtk_style_unref(style : GtkStyle*)
  fun gtk_submenu_direction_get_type : GType
  fun gtk_submenu_placement_get_type : GType
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
  fun gtk_target_flags_get_type : GType
  fun gtk_target_list_add(list : GtkTargetList*, target : GdkAtom, flags : Guint, info : Guint)
  fun gtk_target_list_add_image_targets(list : GtkTargetList*, info : Guint, writable : Gboolean)
  fun gtk_target_list_add_rich_text_targets(list : GtkTargetList*, info : Guint, deserializable : Gboolean, buffer : GtkTextBuffer*)
  fun gtk_target_list_add_table(list : GtkTargetList*, targets : GtkTargetEntry*, ntargets : Guint)
  fun gtk_target_list_add_text_targets(list : GtkTargetList*, info : Guint)
  fun gtk_target_list_add_uri_targets(list : GtkTargetList*, info : Guint)
  fun gtk_target_list_find(list : GtkTargetList*, target : GdkAtom, info : Guint*) : Gboolean
  fun gtk_target_list_get_type : GType
  fun gtk_target_list_new(targets : GtkTargetEntry*, ntargets : Guint) : GtkTargetList*
  fun gtk_target_list_ref(list : GtkTargetList*) : GtkTargetList*
  fun gtk_target_list_remove(list : GtkTargetList*, target : GdkAtom)
  fun gtk_target_list_unref(list : GtkTargetList*)
  fun gtk_target_table_free(targets : GtkTargetEntry*, n_targets : Gint)
  fun gtk_target_table_new_from_list(list : GtkTargetList*, n_targets : Gint*) : GtkTargetEntry*
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
  fun gtk_text_buffer_get_copy_target_list(buffer : GtkTextBuffer*) : GtkTargetList*
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
  fun gtk_text_buffer_get_paste_target_list(buffer : GtkTextBuffer*) : GtkTargetList*
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
  fun gtk_text_tag_table_add(table : GtkTextTagTable*, tag : GtkTextTag*)
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
  fun gtk_text_view_get_buffer(text_view : GtkTextView*) : GtkTextBuffer*
  fun gtk_text_view_get_cursor_visible(text_view : GtkTextView*) : Gboolean
  fun gtk_text_view_get_default_attributes(text_view : GtkTextView*) : GtkTextAttributes*
  fun gtk_text_view_get_editable(text_view : GtkTextView*) : Gboolean
  fun gtk_text_view_get_hadjustment(text_view : GtkTextView*) : GtkAdjustment*
  fun gtk_text_view_get_indent(text_view : GtkTextView*) : Gint
  fun gtk_text_view_get_iter_at_location(text_view : GtkTextView*, iter : GtkTextIter*, x : Gint, y : Gint)
  fun gtk_text_view_get_iter_at_position(text_view : GtkTextView*, iter : GtkTextIter*, trailing : Gint*, x : Gint, y : Gint)
  fun gtk_text_view_get_iter_location(text_view : GtkTextView*, iter : GtkTextIter*, location : GdkRectangle*)
  fun gtk_text_view_get_justification(text_view : GtkTextView*) : GtkJustification
  fun gtk_text_view_get_left_margin(text_view : GtkTextView*) : Gint
  fun gtk_text_view_get_line_at_y(text_view : GtkTextView*, target_iter : GtkTextIter*, y : Gint, line_top : Gint*)
  fun gtk_text_view_get_line_yrange(text_view : GtkTextView*, iter : GtkTextIter*, y : Gint*, height : Gint*)
  fun gtk_text_view_get_overwrite(text_view : GtkTextView*) : Gboolean
  fun gtk_text_view_get_pixels_above_lines(text_view : GtkTextView*) : Gint
  fun gtk_text_view_get_pixels_below_lines(text_view : GtkTextView*) : Gint
  fun gtk_text_view_get_pixels_inside_wrap(text_view : GtkTextView*) : Gint
  fun gtk_text_view_get_right_margin(text_view : GtkTextView*) : Gint
  fun gtk_text_view_get_tabs(text_view : GtkTextView*) : PangoTabArray
  fun gtk_text_view_get_type : GType
  fun gtk_text_view_get_vadjustment(text_view : GtkTextView*) : GtkAdjustment*
  fun gtk_text_view_get_visible_rect(text_view : GtkTextView*, visible_rect : GdkRectangle*)
  fun gtk_text_view_get_window(text_view : GtkTextView*, win : GtkTextWindowType) : GdkWindow*
  fun gtk_text_view_get_window_type(text_view : GtkTextView*, window : GdkWindow*) : GtkTextWindowType
  fun gtk_text_view_get_wrap_mode(text_view : GtkTextView*) : GtkWrapMode
  fun gtk_text_view_im_context_filter_keypress(text_view : GtkTextView*, event : GdkEventKey*) : Gboolean
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
  fun gtk_text_view_set_buffer(text_view : GtkTextView*, buffer : GtkTextBuffer*)
  fun gtk_text_view_set_cursor_visible(text_view : GtkTextView*, setting : Gboolean)
  fun gtk_text_view_set_editable(text_view : GtkTextView*, setting : Gboolean)
  fun gtk_text_view_set_indent(text_view : GtkTextView*, indent : Gint)
  fun gtk_text_view_set_justification(text_view : GtkTextView*, justification : GtkJustification)
  fun gtk_text_view_set_left_margin(text_view : GtkTextView*, left_margin : Gint)
  fun gtk_text_view_set_overwrite(text_view : GtkTextView*, overwrite : Gboolean)
  fun gtk_text_view_set_pixels_above_lines(text_view : GtkTextView*, pixels_above_lines : Gint)
  fun gtk_text_view_set_pixels_below_lines(text_view : GtkTextView*, pixels_below_lines : Gint)
  fun gtk_text_view_set_pixels_inside_wrap(text_view : GtkTextView*, pixels_inside_wrap : Gint)
  fun gtk_text_view_set_right_margin(text_view : GtkTextView*, right_margin : Gint)
  fun gtk_text_view_set_tabs(text_view : GtkTextView*, tabs : PangoTabArray)
  fun gtk_text_view_set_wrap_mode(text_view : GtkTextView*, wrap_mode : GtkWrapMode)
  fun gtk_text_view_starts_display_line(text_view : GtkTextView*, iter : GtkTextIter*) : Gboolean
  fun gtk_text_view_window_to_buffer_coords(text_view : GtkTextView*, win : GtkTextWindowType, window_x : Gint, window_y : Gint, buffer_x : Gint*, buffer_y : Gint*)
  fun gtk_text_window_type_get_type : GType
  fun gtk_timeout_add(interval : Guint32, function : GtkFunction, data : Gpointer) : Guint
  fun gtk_timeout_add_full(interval : Guint32, function : GtkFunction, marshal : GtkCallbackMarshal, data : Gpointer, destroy : GDestroyNotify) : Guint
  fun gtk_timeout_remove(timeout_handler_id : Guint)
  fun gtk_tips_query_get_type : GType
  fun gtk_tips_query_new : GtkWidget*
  fun gtk_tips_query_set_caller(tips_query : GtkTipsQuery*, caller : GtkWidget*)
  fun gtk_tips_query_set_labels(tips_query : GtkTipsQuery*, label_inactive : Gchar*, label_no_tip : Gchar*)
  fun gtk_tips_query_start_query(tips_query : GtkTipsQuery*)
  fun gtk_tips_query_stop_query(tips_query : GtkTipsQuery*)
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
  fun gtk_tool_item_set_tooltip(tool_item : GtkToolItem*, tooltips : GtkTooltips*, tip_text : Gchar*, tip_private : Gchar*)
  fun gtk_tool_item_set_tooltip_markup(tool_item : GtkToolItem*, markup : Gchar*)
  fun gtk_tool_item_set_tooltip_text(tool_item : GtkToolItem*, text : Gchar*)
  fun gtk_tool_item_set_use_drag_window(tool_item : GtkToolItem*, use_drag_window : Gboolean)
  fun gtk_tool_item_set_visible_horizontal(tool_item : GtkToolItem*, visible_horizontal : Gboolean)
  fun gtk_tool_item_set_visible_vertical(tool_item : GtkToolItem*, visible_vertical : Gboolean)
  fun gtk_tool_item_toolbar_reconfigured(tool_item : GtkToolItem*)
  fun gtk_tool_palette_add_drag_dest(palette : GtkToolPalette*, widget : GtkWidget*, flags : GtkDestDefaults, targets : GtkToolPaletteDragTargets, actions : GdkDragAction)
  fun gtk_tool_palette_drag_targets_get_type : GType
  fun gtk_tool_palette_get_drag_item(palette : GtkToolPalette*, selection : GtkSelectionData*) : GtkWidget*
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
  fun gtk_toolbar_append_element(toolbar : GtkToolbar*, type : GtkToolbarChildType, widget : GtkWidget*, text : LibC::Char*, tooltip_text : LibC::Char*, tooltip_private_text : LibC::Char*, icon : GtkWidget*, callback : GCallback, user_data : Gpointer) : GtkWidget*
  fun gtk_toolbar_append_item(toolbar : GtkToolbar*, text : LibC::Char*, tooltip_text : LibC::Char*, tooltip_private_text : LibC::Char*, icon : GtkWidget*, callback : GCallback, user_data : Gpointer) : GtkWidget*
  fun gtk_toolbar_append_space(toolbar : GtkToolbar*)
  fun gtk_toolbar_append_widget(toolbar : GtkToolbar*, widget : GtkWidget*, tooltip_text : LibC::Char*, tooltip_private_text : LibC::Char*)
  fun gtk_toolbar_child_type_get_type : GType
  fun gtk_toolbar_get_drop_index(toolbar : GtkToolbar*, x : Gint, y : Gint) : Gint
  fun gtk_toolbar_get_icon_size(toolbar : GtkToolbar*) : GtkIconSize
  fun gtk_toolbar_get_item_index(toolbar : GtkToolbar*, item : GtkToolItem*) : Gint
  fun gtk_toolbar_get_n_items(toolbar : GtkToolbar*) : Gint
  fun gtk_toolbar_get_nth_item(toolbar : GtkToolbar*, n : Gint) : GtkToolItem*
  fun gtk_toolbar_get_orientation(toolbar : GtkToolbar*) : GtkOrientation
  fun gtk_toolbar_get_relief_style(toolbar : GtkToolbar*) : GtkReliefStyle
  fun gtk_toolbar_get_show_arrow(toolbar : GtkToolbar*) : Gboolean
  fun gtk_toolbar_get_style(toolbar : GtkToolbar*) : GtkToolbarStyle
  fun gtk_toolbar_get_tooltips(toolbar : GtkToolbar*) : Gboolean
  fun gtk_toolbar_get_type : GType
  fun gtk_toolbar_insert(toolbar : GtkToolbar*, item : GtkToolItem*, pos : Gint)
  fun gtk_toolbar_insert_element(toolbar : GtkToolbar*, type : GtkToolbarChildType, widget : GtkWidget*, text : LibC::Char*, tooltip_text : LibC::Char*, tooltip_private_text : LibC::Char*, icon : GtkWidget*, callback : GCallback, user_data : Gpointer, position : Gint) : GtkWidget*
  fun gtk_toolbar_insert_item(toolbar : GtkToolbar*, text : LibC::Char*, tooltip_text : LibC::Char*, tooltip_private_text : LibC::Char*, icon : GtkWidget*, callback : GCallback, user_data : Gpointer, position : Gint) : GtkWidget*
  fun gtk_toolbar_insert_space(toolbar : GtkToolbar*, position : Gint)
  fun gtk_toolbar_insert_stock(toolbar : GtkToolbar*, stock_id : Gchar*, tooltip_text : LibC::Char*, tooltip_private_text : LibC::Char*, callback : GCallback, user_data : Gpointer, position : Gint) : GtkWidget*
  fun gtk_toolbar_insert_widget(toolbar : GtkToolbar*, widget : GtkWidget*, tooltip_text : LibC::Char*, tooltip_private_text : LibC::Char*, position : Gint)
  fun gtk_toolbar_new : GtkWidget*
  fun gtk_toolbar_prepend_element(toolbar : GtkToolbar*, type : GtkToolbarChildType, widget : GtkWidget*, text : LibC::Char*, tooltip_text : LibC::Char*, tooltip_private_text : LibC::Char*, icon : GtkWidget*, callback : GCallback, user_data : Gpointer) : GtkWidget*
  fun gtk_toolbar_prepend_item(toolbar : GtkToolbar*, text : LibC::Char*, tooltip_text : LibC::Char*, tooltip_private_text : LibC::Char*, icon : GtkWidget*, callback : GCallback, user_data : Gpointer) : GtkWidget*
  fun gtk_toolbar_prepend_space(toolbar : GtkToolbar*)
  fun gtk_toolbar_prepend_widget(toolbar : GtkToolbar*, widget : GtkWidget*, tooltip_text : LibC::Char*, tooltip_private_text : LibC::Char*)
  fun gtk_toolbar_remove_space(toolbar : GtkToolbar*, position : Gint)
  fun gtk_toolbar_set_drop_highlight_item(toolbar : GtkToolbar*, tool_item : GtkToolItem*, index_ : Gint)
  fun gtk_toolbar_set_icon_size(toolbar : GtkToolbar*, icon_size : GtkIconSize)
  fun gtk_toolbar_set_orientation(toolbar : GtkToolbar*, orientation : GtkOrientation)
  fun gtk_toolbar_set_show_arrow(toolbar : GtkToolbar*, show_arrow : Gboolean)
  fun gtk_toolbar_set_style(toolbar : GtkToolbar*, style : GtkToolbarStyle)
  fun gtk_toolbar_set_tooltips(toolbar : GtkToolbar*, enable : Gboolean)
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
  fun gtk_tooltip_trigger_tooltip_query(display : GdkDisplay*)
  fun gtk_tooltips_data_get(widget : GtkWidget*) : GtkTooltipsData*
  fun gtk_tooltips_disable(tooltips : GtkTooltips*)
  fun gtk_tooltips_enable(tooltips : GtkTooltips*)
  fun gtk_tooltips_force_window(tooltips : GtkTooltips*)
  fun gtk_tooltips_get_info_from_tip_window(tip_window : GtkWindow*, tooltips : GtkTooltips**, current_widget : GtkWidget**) : Gboolean
  fun gtk_tooltips_get_type : GType
  fun gtk_tooltips_new : GtkTooltips*
  fun gtk_tooltips_set_delay(tooltips : GtkTooltips*, delay : Guint)
  fun gtk_tooltips_set_tip(tooltips : GtkTooltips*, widget : GtkWidget*, tip_text : Gchar*, tip_private : Gchar*)
  fun gtk_tree_drag_dest_drag_data_received(drag_dest : GtkTreeDragDest, dest : GtkTreePath, selection_data : GtkSelectionData*) : Gboolean
  fun gtk_tree_drag_dest_get_type : GType
  fun gtk_tree_drag_dest_row_drop_possible(drag_dest : GtkTreeDragDest, dest_path : GtkTreePath, selection_data : GtkSelectionData*) : Gboolean
  fun gtk_tree_drag_source_drag_data_delete(drag_source : GtkTreeDragSource, path : GtkTreePath) : Gboolean
  fun gtk_tree_drag_source_drag_data_get(drag_source : GtkTreeDragSource, path : GtkTreePath, selection_data : GtkSelectionData*) : Gboolean
  fun gtk_tree_drag_source_get_type : GType
  fun gtk_tree_drag_source_row_draggable(drag_source : GtkTreeDragSource, path : GtkTreePath) : Gboolean
  fun gtk_tree_get_row_drag_data(selection_data : GtkSelectionData*, tree_model : GtkTreeModel*, path : GtkTreePath*) : Gboolean
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
  fun gtk_tree_model_ref_node(tree_model : GtkTreeModel, iter : GtkTreeIter*)
  fun gtk_tree_model_row_changed(tree_model : GtkTreeModel, path : GtkTreePath, iter : GtkTreeIter*)
  fun gtk_tree_model_row_deleted(tree_model : GtkTreeModel, path : GtkTreePath)
  fun gtk_tree_model_row_has_child_toggled(tree_model : GtkTreeModel, path : GtkTreePath, iter : GtkTreeIter*)
  fun gtk_tree_model_row_inserted(tree_model : GtkTreeModel, path : GtkTreePath, iter : GtkTreeIter*)
  fun gtk_tree_model_rows_reordered(tree_model : GtkTreeModel, path : GtkTreePath, iter : GtkTreeIter*, new_order : Gint*)
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
  fun gtk_tree_set_row_drag_data(selection_data : GtkSelectionData*, tree_model : GtkTreeModel, path : GtkTreePath) : Gboolean
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
  fun gtk_tree_view_column_cell_get_position(tree_column : GtkTreeViewColumn*, cell_renderer : GtkCellRenderer*, start_pos : Gint*, width : Gint*) : Gboolean
  fun gtk_tree_view_column_cell_get_size(tree_column : GtkTreeViewColumn*, cell_area : GdkRectangle*, x_offset : Gint*, y_offset : Gint*, width : Gint*, height : Gint*)
  fun gtk_tree_view_column_cell_is_visible(tree_column : GtkTreeViewColumn*) : Gboolean
  fun gtk_tree_view_column_cell_set_cell_data(tree_column : GtkTreeViewColumn*, tree_model : GtkTreeModel, iter : GtkTreeIter*, is_expander : Gboolean, is_expanded : Gboolean)
  fun gtk_tree_view_column_clear(tree_column : GtkTreeViewColumn*)
  fun gtk_tree_view_column_clear_attributes(tree_column : GtkTreeViewColumn*, cell_renderer : GtkCellRenderer*)
  fun gtk_tree_view_column_clicked(tree_column : GtkTreeViewColumn*)
  fun gtk_tree_view_column_focus_cell(tree_column : GtkTreeViewColumn*, cell : GtkCellRenderer*)
  fun gtk_tree_view_column_get_alignment(tree_column : GtkTreeViewColumn*) : Gfloat
  fun gtk_tree_view_column_get_cell_renderers(tree_column : GtkTreeViewColumn*) : GList*
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
  fun gtk_tree_view_column_new : GtkTreeViewColumn*
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
  fun gtk_tree_view_create_row_drag_icon(tree_view : GtkTreeView*, path : GtkTreePath) : GdkPixmap*
  fun gtk_tree_view_drop_position_get_type : GType
  fun gtk_tree_view_enable_model_drag_dest(tree_view : GtkTreeView*, targets : GtkTargetEntry*, n_targets : Gint, actions : GdkDragAction)
  fun gtk_tree_view_enable_model_drag_source(tree_view : GtkTreeView*, start_button_mask : GdkModifierType, targets : GtkTargetEntry*, n_targets : Gint, actions : GdkDragAction)
  fun gtk_tree_view_expand_all(tree_view : GtkTreeView*)
  fun gtk_tree_view_expand_row(tree_view : GtkTreeView*, path : GtkTreePath, open_all : Gboolean) : Gboolean
  fun gtk_tree_view_expand_to_path(tree_view : GtkTreeView*, path : GtkTreePath)
  fun gtk_tree_view_get_background_area(tree_view : GtkTreeView*, path : GtkTreePath, column : GtkTreeViewColumn*, rect : GdkRectangle*)
  fun gtk_tree_view_get_bin_window(tree_view : GtkTreeView*) : GdkWindow*
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
  fun gtk_tree_view_is_rubber_banding_active(tree_view : GtkTreeView*) : Gboolean
  fun gtk_tree_view_map_expanded_rows(tree_view : GtkTreeView*, func : GtkTreeViewMappingFunc, data : Gpointer)
  fun gtk_tree_view_mode_get_type : GType
  fun gtk_tree_view_move_column_after(tree_view : GtkTreeView*, column : GtkTreeViewColumn*, base_column : GtkTreeViewColumn*)
  fun gtk_tree_view_new : GtkWidget*
  fun gtk_tree_view_new_with_model(model : GtkTreeModel) : GtkWidget*
  fun gtk_tree_view_remove_column(tree_view : GtkTreeView*, column : GtkTreeViewColumn*) : Gint
  fun gtk_tree_view_row_activated(tree_view : GtkTreeView*, path : GtkTreePath, column : GtkTreeViewColumn*)
  fun gtk_tree_view_row_expanded(tree_view : GtkTreeView*, path : GtkTreePath) : Gboolean
  fun gtk_tree_view_scroll_to_cell(tree_view : GtkTreeView*, path : GtkTreePath, column : GtkTreeViewColumn*, use_align : Gboolean, row_align : Gfloat, col_align : Gfloat)
  fun gtk_tree_view_scroll_to_point(tree_view : GtkTreeView*, tree_x : Gint, tree_y : Gint)
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
  fun gtk_tree_view_tree_to_widget_coords(tree_view : GtkTreeView*, tx : Gint, ty : Gint, wx : Gint*, wy : Gint*)
  fun gtk_tree_view_unset_rows_drag_dest(tree_view : GtkTreeView*)
  fun gtk_tree_view_unset_rows_drag_source(tree_view : GtkTreeView*)
  fun gtk_tree_view_widget_to_tree_coords(tree_view : GtkTreeView*, wx : Gint, wy : Gint, tx : Gint*, ty : Gint*)
  fun gtk_true : Gboolean
  fun gtk_type_class(type : GtkType) : Gpointer
  fun gtk_type_enum_find_value(enum_type : GtkType, value_name : Gchar*) : GtkEnumValue*
  fun gtk_type_enum_get_values(enum_type : GtkType) : GtkEnumValue*
  fun gtk_type_flags_find_value(flags_type : GtkType, value_name : Gchar*) : GtkFlagValue*
  fun gtk_type_flags_get_values(flags_type : GtkType) : GtkFlagValue*
  fun gtk_type_init(debug_flags : GTypeDebugFlags)
  fun gtk_type_new(type : GtkType) : Gpointer
  fun gtk_type_unique(parent_type : GtkType, gtkinfo : GtkTypeInfo*) : GtkType
  fun gtk_ui_manager_add_ui(self : GtkUiManager*, merge_id : Guint, path : Gchar*, name : Gchar*, action : Gchar*, type : GtkUiManagerItemType, top : Gboolean)
  fun gtk_ui_manager_add_ui_from_file(self : GtkUiManager*, filename : Gchar*, error : GError**) : Guint
  fun gtk_ui_manager_add_ui_from_string(self : GtkUiManager*, buffer : Gchar*, length : Gssize, error : GError**) : Guint
  fun gtk_ui_manager_ensure_update(self : GtkUiManager*)
  fun gtk_ui_manager_get_accel_group(self : GtkUiManager*) : GtkAccelGroup*
  fun gtk_ui_manager_get_action(self : GtkUiManager*, path : Gchar*) : GtkAction*
  fun gtk_ui_manager_get_action_groups(self : GtkUiManager*) : GList*
  fun gtk_ui_manager_get_add_tearoffs(self : GtkUiManager*) : Gboolean
  fun gtk_ui_manager_get_toplevels(self : GtkUiManager*, types : GtkUiManagerItemType) : GsList*
  fun gtk_ui_manager_get_type : GType
  fun gtk_ui_manager_get_ui(self : GtkUiManager*) : Gchar*
  fun gtk_ui_manager_get_widget(self : GtkUiManager*, path : Gchar*) : GtkWidget*
  fun gtk_ui_manager_insert_action_group(self : GtkUiManager*, action_group : GtkActionGroup*, pos : Gint)
  fun gtk_ui_manager_item_type_get_type : GType
  fun gtk_ui_manager_new : GtkUiManager*
  fun gtk_ui_manager_new_merge_id(self : GtkUiManager*) : Guint
  fun gtk_ui_manager_remove_action_group(self : GtkUiManager*, action_group : GtkActionGroup*)
  fun gtk_ui_manager_remove_ui(self : GtkUiManager*, merge_id : Guint)
  fun gtk_ui_manager_set_add_tearoffs(self : GtkUiManager*, add_tearoffs : Gboolean)
  fun gtk_unit_get_type : GType
  fun gtk_update_type_get_type : GType
  fun gtk_vbox_get_type : GType
  fun gtk_vbox_new(homogeneous : Gboolean, spacing : Gint) : GtkWidget*
  fun gtk_vbutton_box_get_layout_default : GtkButtonBoxStyle
  fun gtk_vbutton_box_get_spacing_default : Gint
  fun gtk_vbutton_box_get_type : GType
  fun gtk_vbutton_box_new : GtkWidget*
  fun gtk_vbutton_box_set_layout_default(layout : GtkButtonBoxStyle)
  fun gtk_vbutton_box_set_spacing_default(spacing : Gint)
  fun gtk_viewport_get_bin_window(viewport : GtkViewport*) : GdkWindow*
  fun gtk_viewport_get_hadjustment(viewport : GtkViewport*) : GtkAdjustment*
  fun gtk_viewport_get_shadow_type(viewport : GtkViewport*) : GtkShadowType
  fun gtk_viewport_get_type : GType
  fun gtk_viewport_get_vadjustment(viewport : GtkViewport*) : GtkAdjustment*
  fun gtk_viewport_get_view_window(viewport : GtkViewport*) : GdkWindow*
  fun gtk_viewport_new(hadjustment : GtkAdjustment*, vadjustment : GtkAdjustment*) : GtkWidget*
  fun gtk_viewport_set_hadjustment(viewport : GtkViewport*, adjustment : GtkAdjustment*)
  fun gtk_viewport_set_shadow_type(viewport : GtkViewport*, type : GtkShadowType)
  fun gtk_viewport_set_vadjustment(viewport : GtkViewport*, adjustment : GtkAdjustment*)
  fun gtk_visibility_get_type : GType
  fun gtk_volume_button_get_type : GType
  fun gtk_volume_button_new : GtkWidget*
  fun gtk_vpaned_get_type : GType
  fun gtk_vpaned_new : GtkWidget*
  fun gtk_vruler_get_type : GType
  fun gtk_vruler_new : GtkWidget*
  fun gtk_vscale_get_type : GType
  fun gtk_vscale_new(adjustment : GtkAdjustment*) : GtkWidget*
  fun gtk_vscale_new_with_range(min : Gdouble, max : Gdouble, step : Gdouble) : GtkWidget*
  fun gtk_vscrollbar_get_type : GType
  fun gtk_vscrollbar_new(adjustment : GtkAdjustment*) : GtkWidget*
  fun gtk_vseparator_get_type : GType
  fun gtk_vseparator_new : GtkWidget*
  fun gtk_widget_activate(widget : GtkWidget*) : Gboolean
  fun gtk_widget_add_accelerator(widget : GtkWidget*, accel_signal : Gchar*, accel_group : GtkAccelGroup*, accel_key : Guint, accel_mods : GdkModifierType, accel_flags : GtkAccelFlags)
  fun gtk_widget_add_events(widget : GtkWidget*, events : Gint)
  fun gtk_widget_add_mnemonic_label(widget : GtkWidget*, label : GtkWidget*)
  fun gtk_widget_can_activate_accel(widget : GtkWidget*, signal_id : Guint) : Gboolean
  fun gtk_widget_child_focus(widget : GtkWidget*, direction : GtkDirectionType) : Gboolean
  fun gtk_widget_child_notify(widget : GtkWidget*, child_property : Gchar*)
  fun gtk_widget_class_find_style_property(klass : GtkWidgetClass*, property_name : Gchar*) : GParamSpec*
  fun gtk_widget_class_install_style_property(klass : GtkWidgetClass*, pspec : GParamSpec*)
  fun gtk_widget_class_install_style_property_parser(klass : GtkWidgetClass*, pspec : GParamSpec*, parser : GtkRcPropertyParser)
  fun gtk_widget_class_list_style_properties(klass : GtkWidgetClass*, n_properties : Guint*) : GParamSpec**
  fun gtk_widget_class_path(widget : GtkWidget*, path_length : Guint*, path : Gchar**, path_reversed : Gchar**)
  fun gtk_widget_create_pango_context(widget : GtkWidget*) : PangoContext
  fun gtk_widget_create_pango_layout(widget : GtkWidget*, text : Gchar*) : PangoLayout
  fun gtk_widget_destroy(widget : GtkWidget*)
  fun gtk_widget_destroyed(widget : GtkWidget*, widget_pointer : GtkWidget**)
  fun gtk_widget_draw(widget : GtkWidget*, area : GdkRectangle*)
  fun gtk_widget_ensure_style(widget : GtkWidget*)
  fun gtk_widget_error_bell(widget : GtkWidget*)
  fun gtk_widget_event(widget : GtkWidget*, event : GdkEvent*) : Gboolean
  fun gtk_widget_flags_get_type : GType
  fun gtk_widget_freeze_child_notify(widget : GtkWidget*)
  fun gtk_widget_get_accessible(widget : GtkWidget*) : AtkObject*
  fun gtk_widget_get_action(widget : GtkWidget*) : GtkAction*
  fun gtk_widget_get_allocation(widget : GtkWidget*, allocation : GtkAllocation*)
  fun gtk_widget_get_ancestor(widget : GtkWidget*, widget_type : GType) : GtkWidget*
  fun gtk_widget_get_app_paintable(widget : GtkWidget*) : Gboolean
  fun gtk_widget_get_can_default(widget : GtkWidget*) : Gboolean
  fun gtk_widget_get_can_focus(widget : GtkWidget*) : Gboolean
  fun gtk_widget_get_child_requisition(widget : GtkWidget*, requisition : GtkRequisition*)
  fun gtk_widget_get_child_visible(widget : GtkWidget*) : Gboolean
  fun gtk_widget_get_clipboard(widget : GtkWidget*, selection : GdkAtom) : GtkClipboard
  fun gtk_widget_get_colormap(widget : GtkWidget*) : GdkColormap*
  fun gtk_widget_get_composite_name(widget : GtkWidget*) : Gchar*
  fun gtk_widget_get_default_colormap : GdkColormap*
  fun gtk_widget_get_default_direction : GtkTextDirection
  fun gtk_widget_get_default_style : GtkStyle*
  fun gtk_widget_get_default_visual : GdkVisual*
  fun gtk_widget_get_direction(widget : GtkWidget*) : GtkTextDirection
  fun gtk_widget_get_display(widget : GtkWidget*) : GdkDisplay*
  fun gtk_widget_get_double_buffered(widget : GtkWidget*) : Gboolean
  fun gtk_widget_get_events(widget : GtkWidget*) : Gint
  fun gtk_widget_get_extension_events(widget : GtkWidget*) : GdkExtensionMode
  fun gtk_widget_get_has_tooltip(widget : GtkWidget*) : Gboolean
  fun gtk_widget_get_has_window(widget : GtkWidget*) : Gboolean
  fun gtk_widget_get_mapped(widget : GtkWidget*) : Gboolean
  fun gtk_widget_get_modifier_style(widget : GtkWidget*) : GtkRcStyle*
  fun gtk_widget_get_name(widget : GtkWidget*) : Gchar*
  fun gtk_widget_get_no_show_all(widget : GtkWidget*) : Gboolean
  fun gtk_widget_get_pango_context(widget : GtkWidget*) : PangoContext
  fun gtk_widget_get_parent(widget : GtkWidget*) : GtkWidget*
  fun gtk_widget_get_parent_window(widget : GtkWidget*) : GdkWindow*
  fun gtk_widget_get_pointer(widget : GtkWidget*, x : Gint*, y : Gint*)
  fun gtk_widget_get_realized(widget : GtkWidget*) : Gboolean
  fun gtk_widget_get_receives_default(widget : GtkWidget*) : Gboolean
  fun gtk_widget_get_requisition(widget : GtkWidget*, requisition : GtkRequisition*)
  fun gtk_widget_get_root_window(widget : GtkWidget*) : GdkWindow*
  fun gtk_widget_get_screen(widget : GtkWidget*) : GdkScreen*
  fun gtk_widget_get_sensitive(widget : GtkWidget*) : Gboolean
  fun gtk_widget_get_settings(widget : GtkWidget*) : GtkSettings*
  fun gtk_widget_get_size_request(widget : GtkWidget*, width : Gint*, height : Gint*)
  fun gtk_widget_get_snapshot(widget : GtkWidget*, clip_rect : GdkRectangle*) : GdkPixmap*
  fun gtk_widget_get_state(widget : GtkWidget*) : GtkStateType
  fun gtk_widget_get_style(widget : GtkWidget*) : GtkStyle*
  fun gtk_widget_get_tooltip_markup(widget : GtkWidget*) : Gchar*
  fun gtk_widget_get_tooltip_text(widget : GtkWidget*) : Gchar*
  fun gtk_widget_get_tooltip_window(widget : GtkWidget*) : GtkWindow*
  fun gtk_widget_get_toplevel(widget : GtkWidget*) : GtkWidget*
  fun gtk_widget_get_type : GType
  fun gtk_widget_get_visible(widget : GtkWidget*) : Gboolean
  fun gtk_widget_get_visual(widget : GtkWidget*) : GdkVisual*
  fun gtk_widget_get_window(widget : GtkWidget*) : GdkWindow*
  fun gtk_widget_grab_default(widget : GtkWidget*)
  fun gtk_widget_grab_focus(widget : GtkWidget*)
  fun gtk_widget_has_default(widget : GtkWidget*) : Gboolean
  fun gtk_widget_has_focus(widget : GtkWidget*) : Gboolean
  fun gtk_widget_has_grab(widget : GtkWidget*) : Gboolean
  fun gtk_widget_has_rc_style(widget : GtkWidget*) : Gboolean
  fun gtk_widget_has_screen(widget : GtkWidget*) : Gboolean
  fun gtk_widget_help_type_get_type : GType
  fun gtk_widget_hide(widget : GtkWidget*)
  fun gtk_widget_hide_all(widget : GtkWidget*)
  fun gtk_widget_hide_on_delete(widget : GtkWidget*) : Gboolean
  fun gtk_widget_input_shape_combine_mask(widget : GtkWidget*, shape_mask : GdkBitmap*, offset_x : Gint, offset_y : Gint)
  fun gtk_widget_intersect(widget : GtkWidget*, area : GdkRectangle*, intersection : GdkRectangle*) : Gboolean
  fun gtk_widget_is_ancestor(widget : GtkWidget*, ancestor : GtkWidget*) : Gboolean
  fun gtk_widget_is_composited(widget : GtkWidget*) : Gboolean
  fun gtk_widget_is_drawable(widget : GtkWidget*) : Gboolean
  fun gtk_widget_is_focus(widget : GtkWidget*) : Gboolean
  fun gtk_widget_is_sensitive(widget : GtkWidget*) : Gboolean
  fun gtk_widget_is_toplevel(widget : GtkWidget*) : Gboolean
  fun gtk_widget_keynav_failed(widget : GtkWidget*, direction : GtkDirectionType) : Gboolean
  fun gtk_widget_list_accel_closures(widget : GtkWidget*) : GList*
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
  fun gtk_widget_path(widget : GtkWidget*, path_length : Guint*, path : Gchar**, path_reversed : Gchar**)
  fun gtk_widget_pop_colormap
  fun gtk_widget_pop_composite_child
  fun gtk_widget_push_colormap(cmap : GdkColormap*)
  fun gtk_widget_push_composite_child
  fun gtk_widget_queue_clear(widget : GtkWidget*)
  fun gtk_widget_queue_clear_area(widget : GtkWidget*, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_widget_queue_draw(widget : GtkWidget*)
  fun gtk_widget_queue_draw_area(widget : GtkWidget*, x : Gint, y : Gint, width : Gint, height : Gint)
  fun gtk_widget_queue_resize(widget : GtkWidget*)
  fun gtk_widget_queue_resize_no_redraw(widget : GtkWidget*)
  fun gtk_widget_realize(widget : GtkWidget*)
  fun gtk_widget_ref(widget : GtkWidget*) : GtkWidget*
  fun gtk_widget_region_intersect(widget : GtkWidget*, region : GdkRegion) : GdkRegion
  fun gtk_widget_remove_accelerator(widget : GtkWidget*, accel_group : GtkAccelGroup*, accel_key : Guint, accel_mods : GdkModifierType) : Gboolean
  fun gtk_widget_remove_mnemonic_label(widget : GtkWidget*, label : GtkWidget*)
  fun gtk_widget_render_icon(widget : GtkWidget*, stock_id : Gchar*, size : GtkIconSize, detail : Gchar*) : GdkPixbuf
  fun gtk_widget_reparent(widget : GtkWidget*, new_parent : GtkWidget*)
  fun gtk_widget_reset_rc_styles(widget : GtkWidget*)
  fun gtk_widget_reset_shapes(widget : GtkWidget*)
  fun gtk_widget_send_expose(widget : GtkWidget*, event : GdkEvent*) : Gint
  fun gtk_widget_send_focus_change(widget : GtkWidget*, event : GdkEvent*) : Gboolean
  fun gtk_widget_set(widget : GtkWidget*, first_property_name : Gchar*, ...)
  fun gtk_widget_set_accel_path(widget : GtkWidget*, accel_path : Gchar*, accel_group : GtkAccelGroup*)
  fun gtk_widget_set_allocation(widget : GtkWidget*, allocation : GtkAllocation*)
  fun gtk_widget_set_app_paintable(widget : GtkWidget*, app_paintable : Gboolean)
  fun gtk_widget_set_can_default(widget : GtkWidget*, can_default : Gboolean)
  fun gtk_widget_set_can_focus(widget : GtkWidget*, can_focus : Gboolean)
  fun gtk_widget_set_child_visible(widget : GtkWidget*, is_visible : Gboolean)
  fun gtk_widget_set_colormap(widget : GtkWidget*, colormap : GdkColormap*)
  fun gtk_widget_set_composite_name(widget : GtkWidget*, name : Gchar*)
  fun gtk_widget_set_default_colormap(colormap : GdkColormap*)
  fun gtk_widget_set_default_direction(dir : GtkTextDirection)
  fun gtk_widget_set_direction(widget : GtkWidget*, dir : GtkTextDirection)
  fun gtk_widget_set_double_buffered(widget : GtkWidget*, double_buffered : Gboolean)
  fun gtk_widget_set_events(widget : GtkWidget*, events : Gint)
  fun gtk_widget_set_extension_events(widget : GtkWidget*, mode : GdkExtensionMode)
  fun gtk_widget_set_has_tooltip(widget : GtkWidget*, has_tooltip : Gboolean)
  fun gtk_widget_set_has_window(widget : GtkWidget*, has_window : Gboolean)
  fun gtk_widget_set_mapped(widget : GtkWidget*, mapped : Gboolean)
  fun gtk_widget_set_name(widget : GtkWidget*, name : Gchar*)
  fun gtk_widget_set_no_show_all(widget : GtkWidget*, no_show_all : Gboolean)
  fun gtk_widget_set_parent(widget : GtkWidget*, parent : GtkWidget*)
  fun gtk_widget_set_parent_window(widget : GtkWidget*, parent_window : GdkWindow*)
  fun gtk_widget_set_realized(widget : GtkWidget*, realized : Gboolean)
  fun gtk_widget_set_receives_default(widget : GtkWidget*, receives_default : Gboolean)
  fun gtk_widget_set_redraw_on_allocate(widget : GtkWidget*, redraw_on_allocate : Gboolean)
  fun gtk_widget_set_scroll_adjustments(widget : GtkWidget*, hadjustment : GtkAdjustment*, vadjustment : GtkAdjustment*) : Gboolean
  fun gtk_widget_set_sensitive(widget : GtkWidget*, sensitive : Gboolean)
  fun gtk_widget_set_size_request(widget : GtkWidget*, width : Gint, height : Gint)
  fun gtk_widget_set_state(widget : GtkWidget*, state : GtkStateType)
  fun gtk_widget_set_style(widget : GtkWidget*, style : GtkStyle*)
  fun gtk_widget_set_tooltip_markup(widget : GtkWidget*, markup : Gchar*)
  fun gtk_widget_set_tooltip_text(widget : GtkWidget*, text : Gchar*)
  fun gtk_widget_set_tooltip_window(widget : GtkWidget*, custom_window : GtkWindow*)
  fun gtk_widget_set_uposition(widget : GtkWidget*, x : Gint, y : Gint)
  fun gtk_widget_set_usize(widget : GtkWidget*, width : Gint, height : Gint)
  fun gtk_widget_set_visible(widget : GtkWidget*, visible : Gboolean)
  fun gtk_widget_set_window(widget : GtkWidget*, window : GdkWindow*)
  fun gtk_widget_shape_combine_mask(widget : GtkWidget*, shape_mask : GdkBitmap*, offset_x : Gint, offset_y : Gint)
  fun gtk_widget_show(widget : GtkWidget*)
  fun gtk_widget_show_all(widget : GtkWidget*)
  fun gtk_widget_show_now(widget : GtkWidget*)
  fun gtk_widget_size_allocate(widget : GtkWidget*, allocation : GtkAllocation*)
  fun gtk_widget_size_request(widget : GtkWidget*, requisition : GtkRequisition*)
  fun gtk_widget_style_attach(style : GtkWidget*)
  fun gtk_widget_style_get(widget : GtkWidget*, first_property_name : Gchar*, ...)
  fun gtk_widget_style_get_property(widget : GtkWidget*, property_name : Gchar*, value : GValue*)
  fun gtk_widget_style_get_valist(widget : GtkWidget*, first_property_name : Gchar*, var_args : VaList)
  fun gtk_widget_thaw_child_notify(widget : GtkWidget*)
  fun gtk_widget_translate_coordinates(src_widget : GtkWidget*, dest_widget : GtkWidget*, src_x : Gint, src_y : Gint, dest_x : Gint*, dest_y : Gint*) : Gboolean
  fun gtk_widget_trigger_tooltip_query(widget : GtkWidget*)
  fun gtk_widget_unmap(widget : GtkWidget*)
  fun gtk_widget_unparent(widget : GtkWidget*)
  fun gtk_widget_unrealize(widget : GtkWidget*)
  fun gtk_widget_unref(widget : GtkWidget*)
  fun gtk_window_activate_default(window : GtkWindow*) : Gboolean
  fun gtk_window_activate_focus(window : GtkWindow*) : Gboolean
  fun gtk_window_activate_key(window : GtkWindow*, event : GdkEventKey*) : Gboolean
  fun gtk_window_add_accel_group(window : GtkWindow*, accel_group : GtkAccelGroup*)
  fun gtk_window_add_embedded_xid(window : GtkWindow*, xid : GdkNativeWindow)
  fun gtk_window_add_mnemonic(window : GtkWindow*, keyval : Guint, target : GtkWidget*)
  fun gtk_window_begin_move_drag(window : GtkWindow*, button : Gint, root_x : Gint, root_y : Gint, timestamp : Guint32)
  fun gtk_window_begin_resize_drag(window : GtkWindow*, edge : GdkWindowEdge, button : Gint, root_x : Gint, root_y : Gint, timestamp : Guint32)
  fun gtk_window_deiconify(window : GtkWindow*)
  fun gtk_window_fullscreen(window : GtkWindow*)
  fun gtk_window_get_accept_focus(window : GtkWindow*) : Gboolean
  fun gtk_window_get_decorated(window : GtkWindow*) : Gboolean
  fun gtk_window_get_default_icon_list : GList*
  fun gtk_window_get_default_icon_name : Gchar*
  fun gtk_window_get_default_size(window : GtkWindow*, width : Gint*, height : Gint*)
  fun gtk_window_get_default_widget(window : GtkWindow*) : GtkWidget*
  fun gtk_window_get_deletable(window : GtkWindow*) : Gboolean
  fun gtk_window_get_destroy_with_parent(window : GtkWindow*) : Gboolean
  fun gtk_window_get_focus(window : GtkWindow*) : GtkWidget*
  fun gtk_window_get_focus_on_map(window : GtkWindow*) : Gboolean
  fun gtk_window_get_frame_dimensions(window : GtkWindow*, left : Gint*, top : Gint*, right : Gint*, bottom : Gint*)
  fun gtk_window_get_gravity(window : GtkWindow*) : GdkGravity
  fun gtk_window_get_group(window : GtkWindow*) : GtkWindowGroup*
  fun gtk_window_get_has_frame(window : GtkWindow*) : Gboolean
  fun gtk_window_get_icon(window : GtkWindow*) : GdkPixbuf
  fun gtk_window_get_icon_list(window : GtkWindow*) : GList*
  fun gtk_window_get_icon_name(window : GtkWindow*) : Gchar*
  fun gtk_window_get_mnemonic_modifier(window : GtkWindow*) : GdkModifierType
  fun gtk_window_get_mnemonics_visible(window : GtkWindow*) : Gboolean
  fun gtk_window_get_modal(window : GtkWindow*) : Gboolean
  fun gtk_window_get_opacity(window : GtkWindow*) : Gdouble
  fun gtk_window_get_position(window : GtkWindow*, root_x : Gint*, root_y : Gint*)
  fun gtk_window_get_resizable(window : GtkWindow*) : Gboolean
  fun gtk_window_get_role(window : GtkWindow*) : Gchar*
  fun gtk_window_get_screen(window : GtkWindow*) : GdkScreen*
  fun gtk_window_get_size(window : GtkWindow*, width : Gint*, height : Gint*)
  fun gtk_window_get_skip_pager_hint(window : GtkWindow*) : Gboolean
  fun gtk_window_get_skip_taskbar_hint(window : GtkWindow*) : Gboolean
  fun gtk_window_get_title(window : GtkWindow*) : Gchar*
  fun gtk_window_get_transient_for(window : GtkWindow*) : GtkWindow*
  fun gtk_window_get_type : GType
  fun gtk_window_get_type_hint(window : GtkWindow*) : GdkWindowTypeHint
  fun gtk_window_get_urgency_hint(window : GtkWindow*) : Gboolean
  fun gtk_window_get_window_type(window : GtkWindow*) : GtkWindowType
  fun gtk_window_group_add_window(window_group : GtkWindowGroup*, window : GtkWindow*)
  fun gtk_window_group_get_current_grab(window_group : GtkWindowGroup*) : GtkWidget*
  fun gtk_window_group_get_type : GType
  fun gtk_window_group_list_windows(window_group : GtkWindowGroup*) : GList*
  fun gtk_window_group_new : GtkWindowGroup*
  fun gtk_window_group_remove_window(window_group : GtkWindowGroup*, window : GtkWindow*)
  fun gtk_window_has_group(window : GtkWindow*) : Gboolean
  fun gtk_window_has_toplevel_focus(window : GtkWindow*) : Gboolean
  fun gtk_window_iconify(window : GtkWindow*)
  fun gtk_window_is_active(window : GtkWindow*) : Gboolean
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
  fun gtk_window_remove_embedded_xid(window : GtkWindow*, xid : GdkNativeWindow)
  fun gtk_window_remove_mnemonic(window : GtkWindow*, keyval : Guint, target : GtkWidget*)
  fun gtk_window_reshow_with_initial_size(window : GtkWindow*)
  fun gtk_window_resize(window : GtkWindow*, width : Gint, height : Gint)
  fun gtk_window_set_accept_focus(window : GtkWindow*, setting : Gboolean)
  fun gtk_window_set_auto_startup_notification(setting : Gboolean)
  fun gtk_window_set_decorated(window : GtkWindow*, setting : Gboolean)
  fun gtk_window_set_default(window : GtkWindow*, default_widget : GtkWidget*)
  fun gtk_window_set_default_icon(icon : GdkPixbuf)
  fun gtk_window_set_default_icon_from_file(filename : Gchar*, err : GError**) : Gboolean
  fun gtk_window_set_default_icon_list(list : GList*)
  fun gtk_window_set_default_icon_name(name : Gchar*)
  fun gtk_window_set_default_size(window : GtkWindow*, width : Gint, height : Gint)
  fun gtk_window_set_deletable(window : GtkWindow*, setting : Gboolean)
  fun gtk_window_set_destroy_with_parent(window : GtkWindow*, setting : Gboolean)
  fun gtk_window_set_focus(window : GtkWindow*, focus : GtkWidget*)
  fun gtk_window_set_focus_on_map(window : GtkWindow*, setting : Gboolean)
  fun gtk_window_set_frame_dimensions(window : GtkWindow*, left : Gint, top : Gint, right : Gint, bottom : Gint)
  fun gtk_window_set_geometry_hints(window : GtkWindow*, geometry_widget : GtkWidget*, geometry : GdkGeometry*, geom_mask : GdkWindowHints)
  fun gtk_window_set_gravity(window : GtkWindow*, gravity : GdkGravity)
  fun gtk_window_set_has_frame(window : GtkWindow*, setting : Gboolean)
  fun gtk_window_set_icon(window : GtkWindow*, icon : GdkPixbuf)
  fun gtk_window_set_icon_from_file(window : GtkWindow*, filename : Gchar*, err : GError**) : Gboolean
  fun gtk_window_set_icon_list(window : GtkWindow*, list : GList*)
  fun gtk_window_set_icon_name(window : GtkWindow*, name : Gchar*)
  fun gtk_window_set_keep_above(window : GtkWindow*, setting : Gboolean)
  fun gtk_window_set_keep_below(window : GtkWindow*, setting : Gboolean)
  fun gtk_window_set_mnemonic_modifier(window : GtkWindow*, modifier : GdkModifierType)
  fun gtk_window_set_mnemonics_visible(window : GtkWindow*, setting : Gboolean)
  fun gtk_window_set_modal(window : GtkWindow*, modal : Gboolean)
  fun gtk_window_set_opacity(window : GtkWindow*, opacity : Gdouble)
  fun gtk_window_set_policy(window : GtkWindow*, allow_shrink : Gint, allow_grow : Gint, auto_shrink : Gint)
  fun gtk_window_set_position(window : GtkWindow*, position : GtkWindowPosition)
  fun gtk_window_set_resizable(window : GtkWindow*, resizable : Gboolean)
  fun gtk_window_set_role(window : GtkWindow*, role : Gchar*)
  fun gtk_window_set_screen(window : GtkWindow*, screen : GdkScreen*)
  fun gtk_window_set_skip_pager_hint(window : GtkWindow*, setting : Gboolean)
  fun gtk_window_set_skip_taskbar_hint(window : GtkWindow*, setting : Gboolean)
  fun gtk_window_set_startup_id(window : GtkWindow*, startup_id : Gchar*)
  fun gtk_window_set_title(window : GtkWindow*, title : Gchar*)
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

  struct GdkKeyboardGrabInfo
    window : GdkWindow*
    native_window : GdkWindow*
    serial : Gulong
    owner_events : Gboolean
    time : Guint32
  end

  struct GdkPointerWindowInfo
    toplevel_under_pointer : GdkWindow*
    window_under_pointer : GdkWindow*
    toplevel_x : Gdouble
    toplevel_y : Gdouble
    state : Guint32
    button : Guint32
    motion_hint_serial : Gulong
  end

  struct GtkMenuEntry
    path : Gchar*
    accelerator : Gchar*
    callback : GtkMenuCallback
    callback_data : Gpointer
    widget : GtkWidget*
  end

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

  struct X_GArray
    data : Gchar*
    len : Guint
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

  struct X_GEnumValue
    value : Gint
    value_name : Gchar*
    value_nick : Gchar*
  end

  struct X_GError
    domain : GQuark
    code : Gint
    message : Gchar*
  end

  struct X_GFlagsValue
    value : Guint
    value_name : Gchar*
    value_nick : Gchar*
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

  struct X_GMountOperation
    parent_instance : GObject
    priv : GMountOperationPrivate
  end

  struct X_GNode
    data : Gpointer
    next : GNode*
    prev : GNode*
    parent : GNode*
    children : GNode*
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

  struct X_GTimeVal
    tv_sec : Glong
    tv_usec : Glong
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

  struct X_GdkColormap
    parent_instance : GObject
    size : Gint
    colors : GdkColor*
    visual : GdkVisual*
    windowing_data : Gpointer
  end

  struct X_GdkCursor
    type : GdkCursorType
    ref_count : Guint
  end

  struct X_GdkDevice
    parent_instance : GObject
    name : Gchar*
    source : GdkInputSource
    mode : GdkInputMode
    has_cursor : Gboolean
    num_axes : Gint
    axes : GdkDeviceAxis*
    num_keys : Gint
    keys : GdkDeviceKey*
  end

  struct X_GdkDeviceAxis
    use : GdkAxisUse
    min : Gdouble
    max : Gdouble
  end

  struct X_GdkDeviceKey
    keyval : Guint
    modifiers : GdkModifierType
  end

  struct X_GdkDisplay
    parent_instance : GObject
    queued_events : GList*
    queued_tail : GList*
    button_click_time : Guint32[2]
    button_window : GdkWindow*[2]
    button_number : Gint[2]
    double_click_time : Guint
    core_pointer : GdkDevice*
    pointer_hooks : GdkDisplayPointerHooks*
    closed : Guint
    ignore_core_events : Guint
    double_click_distance : Guint
    button_x : Gint[2]
    button_y : Gint[2]
    pointer_grabs : GList*
    keyboard_grab : GdkKeyboardGrabInfo
    pointer_info : GdkPointerWindowInfo
    last_event_time : Guint32
  end

  struct X_GdkDisplayPointerHooks
    get_pointer : (GdkDisplay*, GdkScreen**, Gint*, Gint*, GdkModifierType* -> Void)
    window_get_pointer : (GdkDisplay*, GdkWindow*, Gint*, Gint*, GdkModifierType* -> GdkWindow*)
    window_at_pointer : (GdkDisplay*, Gint*, Gint* -> GdkWindow*)
  end

  struct X_GdkDragContext
    parent_instance : GObject
    protocol : GdkDragProtocol
    is_source : Gboolean
    source_window : GdkWindow*
    dest_window : GdkWindow*
    targets : GList*
    actions : GdkDragAction
    suggested_action : GdkDragAction
    action : GdkDragAction
    start_time : Guint32
    windowing_data : Gpointer
  end

  struct X_GdkDrawable
    parent_instance : GObject
  end

  struct X_GdkEventAny
    type : GdkEventType
    window : GdkWindow*
    send_event : Gint8
  end

  struct X_GdkEventButton
    type : GdkEventType
    window : GdkWindow*
    send_event : Gint8
    time : Guint32
    x : Gdouble
    y : Gdouble
    axes : Gdouble*
    state : Guint
    button : Guint
    device : GdkDevice*
    x_root : Gdouble
    y_root : Gdouble
  end

  struct X_GdkEventClient
    type : GdkEventType
    window : GdkWindow*
    send_event : Gint8
    message_type : GdkAtom
    data_format : Gushort
    data : X_GdkEventClientData
  end

  struct X_GdkEventConfigure
    type : GdkEventType
    window : GdkWindow*
    send_event : Gint8
    x : Gint
    y : Gint
    width : Gint
    height : Gint
  end

  struct X_GdkEventCrossing
    type : GdkEventType
    window : GdkWindow*
    send_event : Gint8
    subwindow : GdkWindow*
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
    window : GdkWindow*
    send_event : Gint8
    context : GdkDragContext*
    time : Guint32
    x_root : Gshort
    y_root : Gshort
  end

  struct X_GdkEventExpose
    type : GdkEventType
    window : GdkWindow*
    send_event : Gint8
    area : GdkRectangle
    region : GdkRegion
    count : Gint
  end

  struct X_GdkEventFocus
    type : GdkEventType
    window : GdkWindow*
    send_event : Gint8
    in : Gint16
  end

  struct X_GdkEventGrabBroken
    type : GdkEventType
    window : GdkWindow*
    send_event : Gint8
    keyboard : Gboolean
    implicit : Gboolean
    grab_window : GdkWindow*
  end

  struct X_GdkEventKey
    type : GdkEventType
    window : GdkWindow*
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
    window : GdkWindow*
    send_event : Gint8
    time : Guint32
    x : Gdouble
    y : Gdouble
    axes : Gdouble*
    state : Guint
    is_hint : Gint16
    device : GdkDevice*
    x_root : Gdouble
    y_root : Gdouble
  end

  struct X_GdkEventNoExpose
    type : GdkEventType
    window : GdkWindow*
    send_event : Gint8
  end

  struct X_GdkEventOwnerChange
    type : GdkEventType
    window : GdkWindow*
    send_event : Gint8
    owner : GdkNativeWindow
    reason : GdkOwnerChange
    selection : GdkAtom
    time : Guint32
    selection_time : Guint32
  end

  struct X_GdkEventProperty
    type : GdkEventType
    window : GdkWindow*
    send_event : Gint8
    atom : GdkAtom
    time : Guint32
    state : Guint
  end

  struct X_GdkEventProximity
    type : GdkEventType
    window : GdkWindow*
    send_event : Gint8
    time : Guint32
    device : GdkDevice*
  end

  struct X_GdkEventScroll
    type : GdkEventType
    window : GdkWindow*
    send_event : Gint8
    time : Guint32
    x : Gdouble
    y : Gdouble
    state : Guint
    direction : GdkScrollDirection
    device : GdkDevice*
    x_root : Gdouble
    y_root : Gdouble
  end

  struct X_GdkEventSelection
    type : GdkEventType
    window : GdkWindow*
    send_event : Gint8
    selection : GdkAtom
    target : GdkAtom
    property : GdkAtom
    time : Guint32
    requestor : GdkNativeWindow
  end

  struct X_GdkEventSetting
    type : GdkEventType
    window : GdkWindow*
    send_event : Gint8
    action : GdkSettingAction
    name : LibC::Char*
  end

  struct X_GdkEventVisibility
    type : GdkEventType
    window : GdkWindow*
    send_event : Gint8
    state : GdkVisibilityState
  end

  struct X_GdkEventWindowState
    type : GdkEventType
    window : GdkWindow*
    send_event : Gint8
    changed_mask : GdkWindowState
    new_window_state : GdkWindowState
  end

  struct X_GdkFont
    type : GdkFontType
    ascent : Gint
    descent : Gint
  end

  struct X_GdkGc
    parent_instance : GObject
    clip_x_origin : Gint
    clip_y_origin : Gint
    ts_x_origin : Gint
    ts_y_origin : Gint
    colormap : GdkColormap*
  end

  struct X_GdkGcValues
    foreground : GdkColor
    background : GdkColor
    font : GdkFont*
    function : GdkFunction
    fill : GdkFill
    tile : GdkPixmap*
    stipple : GdkPixmap*
    clip_mask : GdkPixmap*
    subwindow_mode : GdkSubwindowMode
    ts_x_origin : Gint
    ts_y_origin : Gint
    clip_x_origin : Gint
    clip_y_origin : Gint
    graphics_exposures : Gint
    line_width : Gint
    line_style : GdkLineStyle
    cap_style : GdkCapStyle
    join_style : GdkJoinStyle
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

  struct X_GdkImage
    parent_instance : GObject
    type : GdkImageType
    visual : GdkVisual*
    byte_order : GdkByteOrder
    width : Gint
    height : Gint
    depth : Guint16
    bpp : Guint16
    bpl : Guint16
    bits_per_pixel : Guint16
    mem : Gpointer
    colormap : GdkColormap*
    windowing_data : Gpointer
  end

  struct X_GdkPoint
    x : Gint
    y : Gint
  end

  struct X_GdkRectangle
    x : Gint
    y : Gint
    width : Gint
    height : Gint
  end

  struct X_GdkScreen
    parent_instance : GObject
    closed : Guint
    normal_gcs : GdkGc*[32]
    exposure_gcs : GdkGc*[32]
    subwindow_gcs : GdkGc*[32]
    font_options : CairoFontOptionsT
    resolution : LibC::Double
  end

  struct X_GdkVisual
    parent_instance : GObject
    type : GdkVisualType
    depth : Gint
    byte_order : GdkByteOrder
    colormap_size : Gint
    bits_per_rgb : Gint
    red_mask : Guint32
    red_shift : Gint
    red_prec : Gint
    green_mask : Guint32
    green_shift : Gint
    green_prec : Gint
    blue_mask : Guint32
    blue_shift : Gint
    blue_prec : Gint
  end

  struct X_GsList
    data : Gpointer
    next : GsList*
  end

  struct X_GtkAboutDialog
    parent_instance : GtkDialog
    private_data : Gpointer
  end

  struct X_GtkAccelGroup
    parent : GObject
    lock_count : Guint
    modifier_mask : GdkModifierType
    acceleratables : GsList*
    n_accels : Guint
    priv_accels : GtkAccelGroupEntry*
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
    gtk_reserved : Guint
    accel_padding : Guint
    accel_widget : GtkWidget*
    accel_closure : GClosure*
    accel_group : GtkAccelGroup*
    accel_string : Gchar*
    accel_string_width : Guint16
  end

  struct X_GtkAccessible
    parent : AtkObject
    widget : GtkWidget*
  end

  struct X_GtkAction
    object : GObject
    private_data : GtkActionPrivate
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
    private_data : GtkActionGroupPrivate
  end

  struct X_GtkAdjustment
    parent_instance : GtkObject
    lower : Gdouble
    upper : Gdouble
    value : Gdouble
    step_increment : Gdouble
    page_increment : Gdouble
    page_size : Gdouble
  end

  struct X_GtkAlignment
    bin : GtkBin
    xalign : Gfloat
    yalign : Gfloat
    xscale : Gfloat
    yscale : Gfloat
  end

  struct X_GtkArg
    type : GType
    name : Gchar*
    d : X_GtkArgD
  end

  struct X_GtkArgDSignalData
    f : GCallback
    d : Gpointer
  end

  struct X_GtkArrow
    misc : GtkMisc
    arrow_type : Gint16
    shadow_type : Gint16
  end

  struct X_GtkAspectFrame
    frame : GtkFrame
    xalign : Gfloat
    yalign : Gfloat
    ratio : Gfloat
    obey_child : Gboolean
    center_allocation : GtkAllocation
  end

  struct X_GtkAssistant
    parent : GtkWindow
    cancel : GtkWidget*
    forward : GtkWidget*
    back : GtkWidget*
    apply : GtkWidget*
    close : GtkWidget*
    last : GtkWidget*
    priv : GtkAssistantPrivate
  end

  struct X_GtkBin
    container : GtkContainer
    child : GtkWidget*
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
    left : Gint
    right : Gint
    top : Gint
    bottom : Gint
  end

  struct X_GtkBox
    container : GtkContainer
    children : GList*
    spacing : Gint16
    homogeneous : Guint
  end

  struct X_GtkBuilder
    parent_instance : GObject
    priv : GtkBuilderPrivate
  end

  struct X_GtkButton
    bin : GtkBin
    event_window : GdkWindow*
    label_text : Gchar*
    activate_timeout : Guint
    constructed : Guint
    in_button : Guint
    button_down : Guint
    relief : Guint
    use_underline : Guint
    use_stock : Guint
    depressed : Guint
    depress_on_activate : Guint
    focus_on_click : Guint
  end

  struct X_GtkButtonBox
    box : GtkBox
    child_min_width : Gint
    child_min_height : Gint
    child_ipad_x : Gint
    child_ipad_y : Gint
    layout_style : GtkButtonBoxStyle
  end

  struct X_GtkCList
    container : GtkContainer
    flags : Guint16
    reserved1 : Gpointer
    reserved2 : Gpointer
    freeze_count : Guint
    internal_allocation : GdkRectangle
    rows : Gint
    row_height : Gint
    row_list : GList*
    row_list_end : GList*
    columns : Gint
    column_title_area : GdkRectangle
    title_window : GdkWindow*
    column : GtkCListColumn*
    clist_window : GdkWindow*
    clist_window_width : Gint
    clist_window_height : Gint
    hoffset : Gint
    voffset : Gint
    shadow_type : GtkShadowType
    selection_mode : GtkSelectionMode
    selection : GList*
    selection_end : GList*
    undo_selection : GList*
    undo_unselection : GList*
    undo_anchor : Gint
    button_actions : Guint8[5]
    drag_button : Guint8
    click_cell : GtkCListCellInfo
    hadjustment : GtkAdjustment*
    vadjustment : GtkAdjustment*
    xor_gc : GdkGc*
    fg_gc : GdkGc*
    bg_gc : GdkGc*
    cursor_drag : GdkCursor*
    x_drag : Gint
    focus_row : Gint
    focus_header_column : Gint
    anchor : Gint
    anchor_state : GtkStateType
    drag_pos : Gint
    htimer : Gint
    vtimer : Gint
    sort_type : GtkSortType
    compare : GtkCListCompareFunc
    sort_column : Gint
    drag_highlight_row : Gint
    drag_highlight_pos : GtkCListDragPos
  end

  struct X_GtkCListCellInfo
    row : Gint
    column : Gint
  end

  struct X_GtkCListColumn
    title : Gchar*
    area : GdkRectangle
    button : GtkWidget*
    window : GdkWindow*
    width : Gint
    min_width : Gint
    max_width : Gint
    justification : GtkJustification
    visible : Guint
    width_set : Guint
    resizeable : Guint
    auto_resize : Guint
    button_passive : Guint
  end

  struct X_GtkCListRow
    cell : GtkCell*
    state : GtkStateType
    foreground : GdkColor
    background : GdkColor
    style : GtkStyle*
    data : Gpointer
    destroy : GDestroyNotify
    fg_set : Guint
    bg_set : Guint
    selectable : Guint
  end

  struct X_GtkCTree
    clist : GtkCList
    lines_gc : GdkGc*
    tree_indent : Gint
    tree_spacing : Gint
    tree_column : Gint
    line_style : Guint
    expander_style : Guint
    show_stub : Guint
    drag_compare : GtkCTreeCompareDragFunc
  end

  struct X_GtkCTreeNode
    list : GList
  end

  struct X_GtkCTreeRow
    row : GtkCListRow
    parent : GtkCTreeNode*
    sibling : GtkCTreeNode*
    children : GtkCTreeNode*
    pixmap_closed : GdkPixmap*
    mask_closed : GdkBitmap*
    pixmap_opened : GdkPixmap*
    mask_opened : GdkBitmap*
    level : Guint16
    is_leaf : Guint
    expanded : Guint
  end

  struct X_GtkCalendar
    widget : GtkWidget
    header_style : GtkStyle*
    label_style : GtkStyle*
    month : Gint
    year : Gint
    selected_day : Gint
    day_month : Gint[7][6]
    day : Gint[7][6]
    num_marked_dates : Gint
    marked_date : Gint[31]
    display_flags : GtkCalendarDisplayOptions
    marked_date_color : GdkColor[31]
    gc : GdkGc*
    xor_gc : GdkGc*
    focus_row : Gint
    focus_col : Gint
    highlight_row : Gint
    highlight_col : Gint
    priv : GtkCalendarPrivate
    grow_space : Gchar[32]
    _gtk_reserved1 : (-> Void)
    _gtk_reserved2 : (-> Void)
    _gtk_reserved3 : (-> Void)
    _gtk_reserved4 : (-> Void)
  end

  struct X_GtkCell
    type : GtkCellType
    vertical : Gint16
    horizontal : Gint16
    style : GtkStyle*
    u : X_GtkCellU
  end

  struct X_GtkCellRenderer
    parent : GtkObject
    xalign : Gfloat
    yalign : Gfloat
    width : Gint
    height : Gint
    xpad : Guint16
    ypad : Guint16
    mode : Guint
    visible : Guint
    is_expander : Guint
    is_expanded : Guint
    cell_background_set : Guint
    sensitive : Guint
    editing : Guint
  end

  struct X_GtkCellRendererText
    parent : GtkCellRenderer
    text : Gchar*
    font : PangoFontDescription
    font_scale : Gdouble
    foreground : PangoColor
    background : PangoColor
    extra_attrs : PangoAttrList
    underline_style : PangoUnderline
    rise : Gint
    fixed_height_rows : Gint
    strikethrough : Guint
    editable : Guint
    scale_set : Guint
    foreground_set : Guint
    background_set : Guint
    underline_set : Guint
    rise_set : Guint
    strikethrough_set : Guint
    editable_set : Guint
    calc_fixed_height : Guint
  end

  struct X_GtkCellRendererToggle
    parent : GtkCellRenderer
    active : Guint
    activatable : Guint
    radio : Guint
  end

  struct X_GtkCellUPm
    pixmap : GdkPixmap*
    mask : GdkBitmap*
  end

  struct X_GtkCellUPt
    text : Gchar*
    spacing : Guint8
    pixmap : GdkPixmap*
    mask : GdkBitmap*
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
    active : Guint
    always_show_toggle : Guint
    inconsistent : Guint
    draw_as_radio : Guint
  end

  struct X_GtkColorButton
    button : GtkButton
    priv : GtkColorButtonPrivate
  end

  struct X_GtkColorSelection
    parent_instance : GtkVBox
    private_data : Gpointer
  end

  struct X_GtkColorSelectionDialog
    parent_instance : GtkDialog
    colorsel : GtkWidget*
    ok_button : GtkWidget*
    cancel_button : GtkWidget*
    help_button : GtkWidget*
  end

  struct X_GtkCombo
    hbox : GtkHBox
    entry : GtkWidget*
    button : GtkWidget*
    popup : GtkWidget*
    popwin : GtkWidget*
    list : GtkWidget*
    entry_change_id : Guint
    list_change_id : Guint
    value_in_list : Guint
    ok_if_empty : Guint
    case_sensitive : Guint
    use_arrows : Guint
    use_arrows_always : Guint
    current_button : Guint16
    activate_id : Guint
  end

  struct X_GtkComboBox
    parent_instance : GtkBin
    priv : GtkComboBoxPrivate
  end

  struct X_GtkComboBoxEntry
    parent_instance : GtkComboBox
    priv : GtkComboBoxEntryPrivate
  end

  struct X_GtkComboBoxText
    parent_instance : GtkComboBox
    priv : GtkComboBoxTextPrivate
  end

  struct X_GtkContainer
    widget : GtkWidget
    focus_child : GtkWidget*
    border_width : Guint
    need_resize : Guint
    resize_mode : Guint
    reallocate_redraws : Guint
    has_focus_chain : Guint
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
    _gtk_reserved1 : (-> Void)
    _gtk_reserved2 : (-> Void)
    _gtk_reserved3 : (-> Void)
    _gtk_reserved4 : (-> Void)
  end

  struct X_GtkCurve
    graph : GtkDrawingArea
    cursor_type : Gint
    min_x : Gfloat
    max_x : Gfloat
    min_y : Gfloat
    max_y : Gfloat
    pixmap : GdkPixmap*
    curve_type : GtkCurveType
    height : Gint
    grab_point : Gint
    last : Gint
    num_points : Gint
    point : GdkPoint*
    num_ctlpoints : Gint
    ctlpoint : Void*
  end

  struct X_GtkDialog
    window : GtkWindow
    vbox : GtkWidget*
    action_area : GtkWidget*
    separator : GtkWidget*
  end

  struct X_GtkDrawingArea
    widget : GtkWidget
    draw_data : Gpointer
  end

  struct X_GtkEntry
    widget : GtkWidget
    text : Gchar*
    editable : Guint
    visible : Guint
    overwrite_mode : Guint
    in_drag : Guint
    text_length : Guint16
    text_max_length : Guint16
    text_area : GdkWindow*
    im_context : GtkImContext*
    popup_menu : GtkWidget*
    current_pos : Gint
    selection_bound : Gint
    cached_layout : PangoLayout
    cache_includes_preedit : Guint
    need_im_reset : Guint
    has_frame : Guint
    activates_default : Guint
    cursor_visible : Guint
    in_click : Guint
    is_cell_renderer : Guint
    editing_canceled : Guint
    mouse_cursor_obscured : Guint
    select_words : Guint
    select_lines : Guint
    resolved_dir : Guint
    truncate_multiline : Guint
    button : Guint
    blink_timeout : Guint
    recompute_idle : Guint
    scroll_offset : Gint
    ascent : Gint
    descent : Gint
    x_text_size : Guint16
    x_n_bytes : Guint16
    preedit_length : Guint16
    preedit_cursor : Guint16
    dnd_position : Gint
    drag_start_x : Gint
    drag_start_y : Gint
    invisible_char : Gunichar
    width_chars : Gint
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
  end

  struct X_GtkExpander
    bin : GtkBin
    priv : GtkExpanderPrivate
  end

  struct X_GtkFileChooserButton
    parent : GtkHBox
    priv : GtkFileChooserButtonPrivate
  end

  struct X_GtkFileFilterInfo
    contains : GtkFileFilterFlags
    filename : Gchar*
    uri : Gchar*
    display_name : Gchar*
    mime_type : Gchar*
  end

  struct X_GtkFileSelection
    parent_instance : GtkDialog
    dir_list : GtkWidget*
    file_list : GtkWidget*
    selection_entry : GtkWidget*
    selection_text : GtkWidget*
    main_vbox : GtkWidget*
    ok_button : GtkWidget*
    cancel_button : GtkWidget*
    help_button : GtkWidget*
    history_pulldown : GtkWidget*
    history_menu : GtkWidget*
    history_list : GList*
    fileop_dialog : GtkWidget*
    fileop_entry : GtkWidget*
    fileop_file : Gchar*
    cmpl_state : Gpointer
    fileop_c_dir : GtkWidget*
    fileop_del_file : GtkWidget*
    fileop_ren_file : GtkWidget*
    button_area : GtkWidget*
    action_area : GtkWidget*
    selected_names : GPtrArray*
    last_selected : Gchar*
  end

  struct X_GtkFixed
    container : GtkContainer
    children : GList*
  end

  struct X_GtkFontButton
    button : GtkButton
    priv : GtkFontButtonPrivate
  end

  struct X_GtkFontSelection
    parent_instance : GtkVBox
    font_entry : GtkWidget*
    family_list : GtkWidget*
    font_style_entry : GtkWidget*
    face_list : GtkWidget*
    size_entry : GtkWidget*
    size_list : GtkWidget*
    pixels_button : GtkWidget*
    points_button : GtkWidget*
    filter_button : GtkWidget*
    preview_entry : GtkWidget*
    family : PangoFontFamily
    face : PangoFontFace
    size : Gint
    font : GdkFont*
  end

  struct X_GtkFontSelectionDialog
    parent_instance : GtkDialog
    fontsel : GtkWidget*
    main_vbox : GtkWidget*
    action_area : GtkWidget*
    ok_button : GtkWidget*
    apply_button : GtkWidget*
    cancel_button : GtkWidget*
    dialog_width : Gint
    auto_resize : Gboolean
  end

  struct X_GtkFrame
    bin : GtkBin
    label_widget : GtkWidget*
    shadow_type : Gint16
    label_xalign : Gfloat
    label_yalign : Gfloat
    child_allocation : GtkAllocation
  end

  struct X_GtkHBox
    box : GtkBox
  end

  struct X_GtkHandleBox
    bin : GtkBin
    bin_window : GdkWindow*
    float_window : GdkWindow*
    shadow_type : GtkShadowType
    handle_position : Guint
    float_window_mapped : Guint
    child_detached : Guint
    in_drag : Guint
    shrink_on_detach : Guint
    snap_edge : LibC::Int
    deskoff_x : Gint
    deskoff_y : Gint
    attach_allocation : GtkAllocation
    float_allocation : GtkAllocation
  end

  struct X_GtkHsv
    parent_instance : GtkWidget
    priv : Gpointer
  end

  struct X_GtkIconFactory
    parent_instance : GObject
    icons : GHashTable
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
    tables : GsList*
    compose_buffer : Guint[8]
    tentative_match : Gunichar
    tentative_match_len : Gint
    in_hex_sequence : Guint
    modifiers_dropped : Guint
  end

  struct X_GtkImMulticontext
    object : GtkImContext
    slave : GtkImContext*
    priv : GtkImMulticontextPrivate
    context_id : Gchar*
  end

  struct X_GtkImage
    misc : GtkMisc
    storage_type : GtkImageType
    data : X_GtkImageData
    mask : GdkBitmap*
    icon_size : GtkIconSize
  end

  struct X_GtkImageAnimationData
    anim : GdkPixbufAnimation
    iter : GdkPixbufAnimationIter
    frame_timeout : Guint
  end

  struct X_GtkImageGIconData
    icon : GIcon
    pixbuf : GdkPixbuf
    theme_change_id : Guint
  end

  struct X_GtkImageIconNameData
    icon_name : Gchar*
    pixbuf : GdkPixbuf
    theme_change_id : Guint
  end

  struct X_GtkImageIconSetData
    icon_set : GtkIconSet
  end

  struct X_GtkImageImageData
    image : GdkImage*
  end

  struct X_GtkImageMenuItem
    menu_item : GtkMenuItem
    image : GtkWidget*
  end

  struct X_GtkImagePixbufData
    pixbuf : GdkPixbuf
  end

  struct X_GtkImagePixmapData
    pixmap : GdkPixmap*
  end

  struct X_GtkImageStockData
    stock_id : Gchar*
  end

  struct X_GtkInfoBar
    parent : GtkHBox
    priv : GtkInfoBarPrivate
  end

  struct X_GtkInvisible
    widget : GtkWidget
    has_user_ref_count : Gboolean
    screen : GdkScreen*
  end

  struct X_GtkItem
    bin : GtkBin
  end

  struct X_GtkItemFactory
    object : GtkObject
    path : Gchar*
    accel_group : GtkAccelGroup*
    widget : GtkWidget*
    items : GsList*
    translate_func : GtkTranslateFunc
    translate_data : Gpointer
    translate_notify : GDestroyNotify
  end

  struct X_GtkItemFactoryEntry
    path : Gchar*
    accelerator : Gchar*
    callback : GtkItemFactoryCallback
    callback_action : Guint
    item_type : Gchar*
    extra_data : Gconstpointer
  end

  struct X_GtkLabel
    misc : GtkMisc
    label : Gchar*
    jtype : Guint
    wrap : Guint
    use_underline : Guint
    use_markup : Guint
    ellipsize : Guint
    single_line_mode : Guint
    have_transform : Guint
    in_click : Guint
    wrap_mode : Guint
    pattern_set : Guint
    track_links : Guint
    mnemonic_keyval : Guint
    text : Gchar*
    attrs : PangoAttrList
    effective_attrs : PangoAttrList
    layout : PangoLayout
    mnemonic_widget : GtkWidget*
    mnemonic_window : GtkWindow*
    select_info : GtkLabelSelectionInfo
  end

  struct X_GtkLayout
    container : GtkContainer
    children : GList*
    width : Guint
    height : Guint
    hadjustment : GtkAdjustment*
    vadjustment : GtkAdjustment*
    bin_window : GdkWindow*
    visibility : GdkVisibilityState
    scroll_x : Gint
    scroll_y : Gint
    freeze_count : Guint
  end

  struct X_GtkLinkButton
    parent_instance : GtkButton
    priv : GtkLinkButtonPrivate
  end

  struct X_GtkList
    container : GtkContainer
    children : GList*
    selection : GList*
    undo_selection : GList*
    undo_unselection : GList*
    last_focus_child : GtkWidget*
    undo_focus_child : GtkWidget*
    htimer : Guint
    vtimer : Guint
    anchor : Gint
    drag_pos : Gint
    anchor_state : GtkStateType
    selection_mode : Guint
    drag_selection : Guint
    add_mode : Guint
  end

  struct X_GtkListItem
    item : GtkItem
  end

  struct X_GtkListStore
    parent : GObject
    stamp : Gint
    seq : Gpointer
    _gtk_reserved1 : Gpointer
    sort_list : GList*
    n_columns : Gint
    sort_column_id : Gint
    order : GtkSortType
    column_headers : GType*
    length : Gint
    default_sort_func : GtkTreeIterCompareFunc
    default_sort_data : Gpointer
    default_sort_destroy : GDestroyNotify
    columns_dirty : Guint
  end

  struct X_GtkMenu
    menu_shell : GtkMenuShell
    parent_menu_item : GtkWidget*
    old_active_menu_item : GtkWidget*
    accel_group : GtkAccelGroup*
    accel_path : Gchar*
    position_func : GtkMenuPositionFunc
    position_func_data : Gpointer
    toggle_size : Guint
    toplevel : GtkWidget*
    tearoff_window : GtkWidget*
    tearoff_hbox : GtkWidget*
    tearoff_scrollbar : GtkWidget*
    tearoff_adjustment : GtkAdjustment*
    view_window : GdkWindow*
    bin_window : GdkWindow*
    scroll_offset : Gint
    saved_scroll_offset : Gint
    scroll_step : Gint
    timeout_id : Guint
    navigation_region : GdkRegion
    navigation_timeout : Guint
    needs_destruction_ref_count : Guint
    torn_off : Guint
    tearoff_active : Guint
    scroll_fast : Guint
    upper_arrow_visible : Guint
    lower_arrow_visible : Guint
    upper_arrow_prelight : Guint
    lower_arrow_prelight : Guint
  end

  struct X_GtkMenuBar
    menu_shell : GtkMenuShell
  end

  struct X_GtkMenuItem
    item : GtkItem
    submenu : GtkWidget*
    event_window : GdkWindow*
    toggle_size : Guint16
    accelerator_width : Guint16
    accel_path : Gchar*
    show_submenu_indicator : Guint
    submenu_placement : Guint
    submenu_direction : Guint
    right_justify : Guint
    timer_from_keypress : Guint
    from_menubar : Guint
    timer : Guint
  end

  struct X_GtkMenuShell
    container : GtkContainer
    children : GList*
    active_menu_item : GtkWidget*
    parent_menu_shell : GtkWidget*
    button : Guint
    activate_time : Guint32
    active : Guint
    have_grab : Guint
    have_xgrab : Guint
    ignore_leave : Guint
    menu_flag : Guint
    ignore_enter : Guint
    keyboard_mode : Guint
  end

  struct X_GtkMenuToolButton
    parent : GtkToolButton
    priv : GtkMenuToolButtonPrivate
  end

  struct X_GtkMessageDialog
    parent_instance : GtkDialog
    image : GtkWidget*
    label : GtkWidget*
  end

  struct X_GtkMisc
    widget : GtkWidget
    xalign : Gfloat
    yalign : Gfloat
    xpad : Guint16
    ypad : Guint16
  end

  struct X_GtkMountOperation
    parent_instance : GMountOperation
    priv : GtkMountOperationPrivate
  end

  struct X_GtkNotebook
    container : GtkContainer
    cur_page : GtkNotebookPage
    children : GList*
    first_tab : GList*
    focus_tab : GList*
    menu : GtkWidget*
    event_window : GdkWindow*
    timer : Guint32
    tab_hborder : Guint16
    tab_vborder : Guint16
    show_tabs : Guint
    homogeneous : Guint
    show_border : Guint
    tab_pos : Guint
    scrollable : Guint
    in_child : Guint
    click_child : Guint
    button : Guint
    need_timer : Guint
    child_has_focus : Guint
    have_visible_child : Guint
    focus_out : Guint
    has_before_previous : Guint
    has_before_next : Guint
    has_after_previous : Guint
    has_after_next : Guint
  end

  struct X_GtkObject
    parent_instance : GInitiallyUnowned
    flags : Guint32
  end

  struct X_GtkObjectClass
    parent_class : GInitiallyUnownedClass
    set_arg : (GtkObject*, GtkArg*, Guint -> Void)
    get_arg : (GtkObject*, GtkArg*, Guint -> Void)
    destroy : (GtkObject* -> Void)
  end

  struct X_GtkOffscreenWindow
    parent_object : GtkWindow
  end

  struct X_GtkOldEditable
    widget : GtkWidget
    current_pos : Guint
    selection_start_pos : Guint
    selection_end_pos : Guint
    has_selection : Guint
    editable : Guint
    visible : Guint
    clipboard_text : Gchar*
  end

  struct X_GtkOptionMenu
    button : GtkButton
    menu : GtkWidget*
    menu_item : GtkWidget*
    width : Guint16
    height : Guint16
  end

  struct X_GtkPageRange
    start : Gint
    _end : Gint
  end

  struct X_GtkPaned
    container : GtkContainer
    child1 : GtkWidget*
    child2 : GtkWidget*
    handle : GdkWindow*
    xor_gc : GdkGc*
    cursor_type : GdkCursorType
    handle_pos : GdkRectangle
    child1_size : Gint
    last_allocation : Gint
    min_position : Gint
    max_position : Gint
    position_set : Guint
    in_drag : Guint
    child1_shrink : Guint
    child1_resize : Guint
    child2_shrink : Guint
    child2_resize : Guint
    orientation : Guint
    in_recursion : Guint
    handle_prelit : Guint
    last_child1_focus : GtkWidget*
    last_child2_focus : GtkWidget*
    priv : GtkPanedPrivate
    drag_pos : Gint
    original_position : Gint
  end

  struct X_GtkPixmap
    misc : GtkMisc
    pixmap : GdkPixmap*
    mask : GdkBitmap*
    pixmap_insensitive : GdkPixmap*
    build_insensitive : Guint
  end

  struct X_GtkPlug
    window : GtkWindow
    socket_window : GdkWindow*
    modality_window : GtkWidget*
    modality_group : GtkWindowGroup*
    grabbed_keys : GHashTable
    same_app : Guint
  end

  struct X_GtkPreview
    widget : GtkWidget
    buffer : Guchar*
    buffer_width : Guint16
    buffer_height : Guint16
    bpp : Guint16
    rowstride : Guint16
    dither : GdkRgbDither
    type : Guint
    expand : Guint
  end

  struct X_GtkPreviewInfo
    lookup : Guchar*
    gamma : Gdouble
  end

  struct X_GtkPrintOperation
    parent_instance : GObject
    priv : GtkPrintOperationPrivate
  end

  struct X_GtkProgress
    widget : GtkWidget
    adjustment : GtkAdjustment*
    offscreen_pixmap : GdkPixmap*
    format : Gchar*
    x_align : Gfloat
    y_align : Gfloat
    show_text : Guint
    activity_mode : Guint
    use_text_format : Guint
  end

  struct X_GtkProgressBar
    progress : GtkProgress
    bar_style : GtkProgressBarStyle
    orientation : GtkProgressBarOrientation
    blocks : Guint
    in_block : Gint
    activity_pos : Gint
    activity_step : Guint
    activity_blocks : Guint
    pulse_fraction : Gdouble
    activity_dir : Guint
    ellipsize : Guint
    dirty : Guint
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
    group : GsList*
  end

  struct X_GtkRadioMenuItem
    check_menu_item : GtkCheckMenuItem
    group : GsList*
  end

  struct X_GtkRadioToolButton
    parent : GtkToggleToolButton
  end

  struct X_GtkRange
    widget : GtkWidget
    adjustment : GtkAdjustment*
    update_policy : GtkUpdateType
    inverted : Guint
    flippable : Guint
    has_stepper_a : Guint
    has_stepper_b : Guint
    has_stepper_c : Guint
    has_stepper_d : Guint
    need_recalc : Guint
    slider_size_fixed : Guint
    min_slider_size : Gint
    orientation : GtkOrientation
    range_rect : GdkRectangle
    slider_start : Gint
    slider_end : Gint
    round_digits : Gint
    trough_click_forward : Guint
    update_pending : Guint
    layout : GtkRangeLayout
    timer : GtkRangeStepTimer
    slide_initial_slider_position : Gint
    slide_initial_coordinate : Gint
    update_timeout_id : Guint
    event_window : GdkWindow*
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

  struct X_GtkRequisition
    width : Gint
    height : Gint
  end

  struct X_GtkRuler
    widget : GtkWidget
    backing_store : GdkPixmap*
    non_gr_exp_gc : GdkGc*
    metric : GtkRulerMetric*
    xsrc : Gint
    ysrc : Gint
    slider_size : Gint
    lower : Gdouble
    upper : Gdouble
    position : Gdouble
    max_size : Gdouble
  end

  struct X_GtkRulerMetric
    metric_name : Gchar*
    abbrev : Gchar*
    pixels_per_unit : Gdouble
    ruler_scale : Gdouble[10]
    subdivide : Gint[5]
  end

  struct X_GtkScale
    range : GtkRange
    digits : Gint
    draw_value : Guint
    value_pos : Guint
  end

  struct X_GtkScaleButton
    parent : GtkButton
    plus_button : GtkWidget*
    minus_button : GtkWidget*
    priv : GtkScaleButtonPrivate
  end

  struct X_GtkScrolledWindow
    container : GtkBin
    hscrollbar : GtkWidget*
    vscrollbar : GtkWidget*
    hscrollbar_policy : Guint
    vscrollbar_policy : Guint
    hscrollbar_visible : Guint
    vscrollbar_visible : Guint
    window_placement : Guint
    focus_out : Guint
    shadow_type : Guint16
  end

  struct X_GtkSelectionData
    selection : GdkAtom
    target : GdkAtom
    type : GdkAtom
    format : Gint
    data : Guchar*
    length : Gint
    display : GdkDisplay*
  end

  struct X_GtkSeparatorToolItem
    parent : GtkToolItem
    priv : GtkSeparatorToolItemPrivate
  end

  struct X_GtkSettings
    parent_instance : GObject
    queued_settings : GData
    property_values : GtkSettingsPropertyValue
    rc_context : GtkRcContext
    screen : GdkScreen*
  end

  struct X_GtkSettingsValue
    origin : Gchar*
    value : GValue
  end

  struct X_GtkSizeGroup
    parent_instance : GObject
    widgets : GsList*
    mode : Guint8
    have_width : Guint
    have_height : Guint
    ignore_hidden : Guint
    requisition : GtkRequisition
  end

  struct X_GtkSocket
    container : GtkContainer
    request_width : Guint16
    request_height : Guint16
    current_width : Guint16
    current_height : Guint16
    plug_window : GdkWindow*
    plug_widget : GtkWidget*
    xembed_version : Gshort
    same_app : Guint
    focus_in : Guint
    have_size : Guint
    need_map : Guint
    is_mapped : Guint
    active : Guint
    accel_group : GtkAccelGroup*
    toplevel : GtkWidget*
  end

  struct X_GtkSpinButton
    entry : GtkEntry
    adjustment : GtkAdjustment*
    panel : GdkWindow*
    timer : Guint32
    climb_rate : Gdouble
    timer_step : Gdouble
    update_policy : GtkSpinButtonUpdatePolicy
    in_child : Guint
    click_child : Guint
    button : Guint
    need_timer : Guint
    timer_calls : Guint
    digits : Guint
    numeric : Guint
    wrap : Guint
    snap_to_ticks : Guint
  end

  struct X_GtkSpinner
    parent : GtkDrawingArea
    priv : GtkSpinnerPrivate
  end

  struct X_GtkStatusIcon
    parent_instance : GObject
    priv : GtkStatusIconPrivate
  end

  struct X_GtkStatusbar
    parent_widget : GtkHBox
    frame : GtkWidget*
    label : GtkWidget*
    messages : GsList*
    keys : GsList*
    seq_context_id : Guint
    seq_message_id : Guint
    grip_window : GdkWindow*
    has_resize_grip : Guint
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
    fg_gc : GdkGc*[5]
    bg_gc : GdkGc*[5]
    light_gc : GdkGc*[5]
    dark_gc : GdkGc*[5]
    mid_gc : GdkGc*[5]
    text_gc : GdkGc*[5]
    base_gc : GdkGc*[5]
    text_aa_gc : GdkGc*[5]
    black_gc : GdkGc*
    white_gc : GdkGc*
    bg_pixmap : GdkPixmap*[5]
    attach_count : Gint
    depth : Gint
    colormap : GdkColormap*
    private_font : GdkFont*
    private_font_desc : PangoFontDescription
    rc_style : GtkRcStyle*
    styles : GsList*
    property_cache : GArray*
    icon_factories : GsList*
  end

  struct X_GtkTable
    container : GtkContainer
    children : GList*
    rows : GtkTableRowCol*
    cols : GtkTableRowCol*
    nrows : Guint16
    ncols : Guint16
    column_spacing : Guint16
    row_spacing : Guint16
    homogeneous : Guint
  end

  struct X_GtkTableRowCol
    requisition : Guint16
    allocation : Guint16
    spacing : Guint16
    need_expand : Guint
    need_shrink : Guint
    expand : Guint
    shrink : Guint
    empty : Guint
  end

  struct X_GtkTargetEntry
    target : Gchar*
    flags : Guint
    info : Guint
  end

  struct X_GtkTargetList
    list : GList*
    ref_count : Guint
  end

  struct X_GtkTextAppearance
    bg_color : GdkColor
    fg_color : GdkColor
    bg_stipple : GdkBitmap*
    fg_stipple : GdkBitmap*
    rise : Gint
    padding1 : Gpointer
    underline : Guint
    strikethrough : Guint
    draw_bg : Guint
    inside_selection : Guint
    is_text : Guint
    pad1 : Guint
    pad2 : Guint
    pad3 : Guint
    pad4 : Guint
  end

  struct X_GtkTextAttributes
    refcount : Guint
    appearance : GtkTextAppearance
    justification : GtkJustification
    direction : GtkTextDirection
    font : PangoFontDescription
    font_scale : Gdouble
    left_margin : Gint
    indent : Gint
    right_margin : Gint
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
    realized : Guint
    pad1 : Guint
    pad2 : Guint
    pad3 : Guint
    pad4 : Guint
  end

  struct X_GtkTextBuffer
    parent_instance : GObject
    tag_table : GtkTextTagTable*
    btree : GtkTextBTree
    clipboard_contents_buffers : GsList*
    selection_clipboards : GsList*
    log_attr_cache : GtkTextLogAttrCache
    user_action_count : Guint
    modified : Guint
    has_selection : Guint
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
    table : GtkTextTagTable*
    name : LibC::Char*
    priority : LibC::Int
    values : GtkTextAttributes*
    bg_color_set : Guint
    bg_stipple_set : Guint
    fg_color_set : Guint
    scale_set : Guint
    fg_stipple_set : Guint
    justification_set : Guint
    left_margin_set : Guint
    indent_set : Guint
    rise_set : Guint
    strikethrough_set : Guint
    right_margin_set : Guint
    pixels_above_lines_set : Guint
    pixels_below_lines_set : Guint
    pixels_inside_wrap_set : Guint
    tabs_set : Guint
    underline_set : Guint
    wrap_mode_set : Guint
    bg_full_height_set : Guint
    invisible_set : Guint
    editable_set : Guint
    language_set : Guint
    pg_bg_color_set : Guint
    accumulative_margin : Guint
    pad1 : Guint
  end

  struct X_GtkTextTagTable
    parent_instance : GObject
    hash : GHashTable
    anonymous : GsList*
    anon_count : Gint
    buffers : GsList*
  end

  struct X_GtkTextView
    parent_instance : GtkContainer
    layout : Void*
    buffer : GtkTextBuffer*
    selection_drag_handler : Guint
    scroll_timeout : Guint
    pixels_above_lines : Gint
    pixels_below_lines : Gint
    pixels_inside_wrap : Gint
    wrap_mode : GtkWrapMode
    justify : GtkJustification
    left_margin : Gint
    right_margin : Gint
    indent : Gint
    tabs : PangoTabArray
    editable : Guint
    overwrite_mode : Guint
    cursor_visible : Guint
    need_im_reset : Guint
    accepts_tab : Guint
    width_changed : Guint
    onscreen_validated : Guint
    mouse_cursor_obscured : Guint
    text_window : GtkTextWindow
    left_window : GtkTextWindow
    right_window : GtkTextWindow
    top_window : GtkTextWindow
    bottom_window : GtkTextWindow
    hadjustment : GtkAdjustment*
    vadjustment : GtkAdjustment*
    xoffset : Gint
    yoffset : Gint
    width : Gint
    height : Gint
    virtual_cursor_x : Gint
    virtual_cursor_y : Gint
    first_para_mark : GtkTextMark*
    first_para_pixels : Gint
    dnd_mark : GtkTextMark*
    blink_timeout : Guint
    first_validate_idle : Guint
    incremental_validate_idle : Guint
    im_context : GtkImContext*
    popup_menu : GtkWidget*
    drag_start_x : Gint
    drag_start_y : Gint
    children : GsList*
    pending_scroll : GtkTextPendingScroll
    pending_place_cursor_button : Gint
  end

  struct X_GtkTipsQuery
    label : GtkLabel
    emit_always : Guint
    in_query : Guint
    label_inactive : Gchar*
    label_no_tip : Gchar*
    caller : GtkWidget*
    last_crossed : GtkWidget*
    query_cursor : GdkCursor*
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
    active : Guint
    draw_indicator : Guint
    inconsistent : Guint
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
    num_children : Gint
    children : GList*
    orientation : GtkOrientation
    style : GtkToolbarStyle
    icon_size : GtkIconSize
    tooltips : GtkTooltips*
    button_maxw : Gint
    button_maxh : Gint
    _gtk_reserved1 : Guint
    _gtk_reserved2 : Guint
    style_set : Guint
    icon_size_set : Guint
  end

  struct X_GtkTooltips
    parent_instance : GtkObject
    tip_window : GtkWidget*
    tip_label : GtkWidget*
    active_tips_data : GtkTooltipsData*
    tips_data_list : GList*
    delay : Guint
    enabled : Guint
    have_grab : Guint
    use_sticky_delay : Guint
    timer_tag : Gint
    last_popdown : GTimeVal
  end

  struct X_GtkTooltipsData
    tooltips : GtkTooltips*
    widget : GtkWidget*
    tip_text : Gchar*
    tip_private : Gchar*
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
    root : Gpointer
    stamp : Gint
    child_flags : Guint
    child_model : GtkTreeModel
    zero_ref_count : Gint
    sort_list : GList*
    sort_column_id : Gint
    order : GtkSortType
    default_sort_func : GtkTreeIterCompareFunc
    default_sort_data : Gpointer
    default_sort_destroy : GDestroyNotify
    changed_id : Guint
    inserted_id : Guint
    has_child_toggled_id : Guint
    deleted_id : Guint
    reordered_id : Guint
  end

  struct X_GtkTreeSelection
    parent : GObject
    tree_view : GtkTreeView*
    type : GtkSelectionMode
    user_func : GtkTreeSelectionFunc
    user_data : Gpointer
    destroy : GDestroyNotify
  end

  struct X_GtkTreeStore
    parent : GObject
    stamp : Gint
    root : Gpointer
    last : Gpointer
    n_columns : Gint
    sort_column_id : Gint
    sort_list : GList*
    order : GtkSortType
    column_headers : GType*
    default_sort_func : GtkTreeIterCompareFunc
    default_sort_data : Gpointer
    default_sort_destroy : GDestroyNotify
    columns_dirty : Guint
  end

  struct X_GtkTreeView
    parent : GtkContainer
    priv : GtkTreeViewPrivate
  end

  struct X_GtkTreeViewColumn
    parent : GtkObject
    tree_view : GtkWidget*
    button : GtkWidget*
    child : GtkWidget*
    arrow : GtkWidget*
    alignment : GtkWidget*
    window : GdkWindow*
    editable_widget : GtkCellEditable
    xalign : Gfloat
    property_changed_signal : Guint
    spacing : Gint
    column_type : GtkTreeViewColumnSizing
    requested_width : Gint
    button_request : Gint
    resized_width : Gint
    width : Gint
    fixed_width : Gint
    min_width : Gint
    max_width : Gint
    drag_x : Gint
    drag_y : Gint
    title : Gchar*
    cell_list : GList*
    sort_clicked_signal : Guint
    sort_column_changed_signal : Guint
    sort_column_id : Gint
    sort_order : GtkSortType
    visible : Guint
    resizable : Guint
    clickable : Guint
    dirty : Guint
    show_sort_indicator : Guint
    maybe_reordered : Guint
    reorderable : Guint
    use_resized_width : Guint
    expand : Guint
  end

  struct X_GtkTypeInfo
    type_name : Gchar*
    object_size : Guint
    class_size : Guint
    class_init_func : GtkClassInitFunc
    object_init_func : GtkObjectInitFunc
    reserved_1 : Gpointer
    reserved_2 : Gpointer
    base_class_init_func : GtkClassInitFunc
  end

  struct X_GtkUiManager
    parent : GObject
    private_data : GtkUiManagerPrivate
  end

  struct X_GtkVBox
    box : GtkBox
  end

  struct X_GtkViewport
    bin : GtkBin
    shadow_type : GtkShadowType
    view_window : GdkWindow*
    bin_window : GdkWindow*
    hadjustment : GtkAdjustment*
    vadjustment : GtkAdjustment*
  end

  struct X_GtkWidget
    object : GtkObject
    private_flags : Guint16
    state : Guint8
    saved_state : Guint8
    name : Gchar*
    style : GtkStyle*
    requisition : GtkRequisition
    allocation : GtkAllocation
    window : GdkWindow*
    parent : GtkWidget*
  end

  struct X_GtkWidgetClass
    parent_class : GtkObjectClass
    activate_signal : Guint
    set_scroll_adjustments_signal : Guint
    dispatch_child_properties_changed : (GtkWidget*, Guint, GParamSpec** -> Void)
    show : (GtkWidget* -> Void)
    show_all : (GtkWidget* -> Void)
    hide : (GtkWidget* -> Void)
    hide_all : (GtkWidget* -> Void)
    map : (GtkWidget* -> Void)
    unmap : (GtkWidget* -> Void)
    realize : (GtkWidget* -> Void)
    unrealize : (GtkWidget* -> Void)
    size_request : (GtkWidget*, GtkRequisition* -> Void)
    size_allocate : (GtkWidget*, GtkAllocation* -> Void)
    state_changed : (GtkWidget*, GtkStateType -> Void)
    parent_set : (GtkWidget*, GtkWidget* -> Void)
    hierarchy_changed : (GtkWidget*, GtkWidget* -> Void)
    style_set : (GtkWidget*, GtkStyle* -> Void)
    direction_changed : (GtkWidget*, GtkTextDirection -> Void)
    grab_notify : (GtkWidget*, Gboolean -> Void)
    child_notify : (GtkWidget*, GParamSpec* -> Void)
    mnemonic_activate : (GtkWidget*, Gboolean -> Gboolean)
    grab_focus : (GtkWidget* -> Void)
    focus : (GtkWidget*, GtkDirectionType -> Gboolean)
    event : (GtkWidget*, GdkEvent* -> Gboolean)
    button_press_event : (GtkWidget*, GdkEventButton* -> Gboolean)
    button_release_event : (GtkWidget*, GdkEventButton* -> Gboolean)
    scroll_event : (GtkWidget*, GdkEventScroll* -> Gboolean)
    motion_notify_event : (GtkWidget*, GdkEventMotion* -> Gboolean)
    delete_event : (GtkWidget*, GdkEventAny* -> Gboolean)
    destroy_event : (GtkWidget*, GdkEventAny* -> Gboolean)
    expose_event : (GtkWidget*, GdkEventExpose* -> Gboolean)
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
    client_event : (GtkWidget*, GdkEventClient* -> Gboolean)
    no_expose_event : (GtkWidget*, GdkEventAny* -> Gboolean)
    window_state_event : (GtkWidget*, GdkEventWindowState* -> Gboolean)
    selection_get : (GtkWidget*, GtkSelectionData*, Guint, Guint -> Void)
    selection_received : (GtkWidget*, GtkSelectionData*, Guint -> Void)
    drag_begin : (GtkWidget*, GdkDragContext* -> Void)
    drag_end : (GtkWidget*, GdkDragContext* -> Void)
    drag_data_get : (GtkWidget*, GdkDragContext*, GtkSelectionData*, Guint, Guint -> Void)
    drag_data_delete : (GtkWidget*, GdkDragContext* -> Void)
    drag_leave : (GtkWidget*, GdkDragContext*, Guint -> Void)
    drag_motion : (GtkWidget*, GdkDragContext*, Gint, Gint, Guint -> Gboolean)
    drag_drop : (GtkWidget*, GdkDragContext*, Gint, Gint, Guint -> Gboolean)
    drag_data_received : (GtkWidget*, GdkDragContext*, Gint, Gint, GtkSelectionData*, Guint, Guint -> Void)
    popup_menu : (GtkWidget* -> Gboolean)
    show_help : (GtkWidget*, GtkWidgetHelpType -> Gboolean)
    get_accessible : (GtkWidget* -> AtkObject*)
    screen_changed : (GtkWidget*, GdkScreen* -> Void)
    can_activate_accel : (GtkWidget*, Guint -> Gboolean)
    grab_broken_event : (GtkWidget*, GdkEventGrabBroken* -> Gboolean)
    composited_changed : (GtkWidget* -> Void)
    query_tooltip : (GtkWidget*, Gint, Gint, Gboolean, GtkTooltip -> Gboolean)
    _gtk_reserved5 : (-> Void)
    _gtk_reserved6 : (-> Void)
    _gtk_reserved7 : (-> Void)
  end

  struct X_GtkWindow
    bin : GtkBin
    title : Gchar*
    wmclass_name : Gchar*
    wmclass_class : Gchar*
    wm_role : Gchar*
    focus_widget : GtkWidget*
    default_widget : GtkWidget*
    transient_parent : GtkWindow*
    geometry_info : GtkWindowGeometryInfo
    frame : GdkWindow*
    group : GtkWindowGroup*
    configure_request_count : Guint16
    allow_shrink : Guint
    allow_grow : Guint
    configure_notify_received : Guint
    need_default_position : Guint
    need_default_size : Guint
    position : Guint
    type : Guint
    has_user_ref_count : Guint
    has_focus : Guint
    modal : Guint
    destroy_with_parent : Guint
    has_frame : Guint
    iconify_initially : Guint
    stick_initially : Guint
    maximize_initially : Guint
    decorated : Guint
    type_hint : Guint
    gravity : Guint
    is_active : Guint
    has_toplevel_focus : Guint
    frame_left : Guint
    frame_top : Guint
    frame_right : Guint
    frame_bottom : Guint
    keys_changed_handler : Guint
    mnemonic_modifier : GdkModifierType
    screen : GdkScreen*
  end

  struct X_GtkWindowGroup
    parent_instance : GObject
    grabs : GsList*
  end

  struct X_PangoColor
    red : Guint16
    green : Guint16
    blue : Guint16
  end

  type AtkObject = X_AtkObject
  type AtkRelationSet = X_AtkRelationSet
  type CairoFontOptionsT = Void*
  type CairoT = Void*
  type GArray = X_GArray
  type GClosure = X_GClosure
  type GClosureNotifyData = X_GClosureNotifyData
  type GData = Void*
  type GEnumValue = X_GEnumValue
  type GError = X_GError
  type GFile = Void*
  type GFlagsValue = X_GFlagsValue
  type GHashTable = Void*
  type GIcon = Void*
  type GInitiallyUnowned = X_GObject
  type GInitiallyUnownedClass = X_GObjectClass
  type GKeyFile = Void*
  type GList = X_GList
  type GMarkupParseContext = Void*
  type GMarkupParser = X_GMarkupParser
  type GMountOperation = X_GMountOperation
  type GMountOperationPrivate = Void*
  type GNode = X_GNode
  type GObject = X_GObject
  type GObjectClass = X_GObjectClass
  type GObjectConstructParam = X_GObjectConstructParam
  type GOptionEntry = X_GOptionEntry
  type GOptionGroup = Void*
  type GParamSpec = X_GParamSpec
  type GPtrArray = X_GPtrArray
  type GScanner = X_GScanner
  type GScannerConfig = X_GScannerConfig
  type GString = X_GString
  type GTimeVal = X_GTimeVal
  type GTokenValue = X_GTokenValue
  type GTypeClass = X_GTypeClass
  type GTypeInstance = X_GTypeInstance
  type GValue = X_GValue
  type GdkAtom = Void*
  type GdkBitmap = X_GdkDrawable
  type GdkColor = X_GdkColor
  type GdkColormap = X_GdkColormap
  type GdkCursor = X_GdkCursor
  type GdkDevice = X_GdkDevice
  type GdkDeviceAxis = X_GdkDeviceAxis
  type GdkDeviceKey = X_GdkDeviceKey
  type GdkDisplay = X_GdkDisplay
  type GdkDisplayPointerHooks = X_GdkDisplayPointerHooks
  type GdkDragContext = X_GdkDragContext
  type GdkDrawable = X_GdkDrawable
  type GdkEvent = X_GdkEvent
  type GdkEventAny = X_GdkEventAny
  type GdkEventButton = X_GdkEventButton
  type GdkEventClient = X_GdkEventClient
  type GdkEventConfigure = X_GdkEventConfigure
  type GdkEventCrossing = X_GdkEventCrossing
  type GdkEventDnd = X_GdkEventDnd
  type GdkEventExpose = X_GdkEventExpose
  type GdkEventFocus = X_GdkEventFocus
  type GdkEventGrabBroken = X_GdkEventGrabBroken
  type GdkEventKey = X_GdkEventKey
  type GdkEventMotion = X_GdkEventMotion
  type GdkEventNoExpose = X_GdkEventNoExpose
  type GdkEventOwnerChange = X_GdkEventOwnerChange
  type GdkEventProperty = X_GdkEventProperty
  type GdkEventProximity = X_GdkEventProximity
  type GdkEventScroll = X_GdkEventScroll
  type GdkEventSelection = X_GdkEventSelection
  type GdkEventSetting = X_GdkEventSetting
  type GdkEventVisibility = X_GdkEventVisibility
  type GdkEventWindowState = X_GdkEventWindowState
  type GdkFont = X_GdkFont
  type GdkGc = X_GdkGc
  type GdkGcValues = X_GdkGcValues
  type GdkGeometry = X_GdkGeometry
  type GdkImage = X_GdkImage
  type GdkPixbuf = Void*
  type GdkPixbufAnimation = Void*
  type GdkPixbufAnimationIter = Void*
  type GdkPixmap = X_GdkDrawable
  type GdkPoint = X_GdkPoint
  type GdkRectangle = X_GdkRectangle
  type GdkRegion = Void*
  type GdkScreen = X_GdkScreen
  type GdkVisual = X_GdkVisual
  type GdkWindow = X_GdkDrawable
  type GsList = X_GsList
  type GtkAboutDialog = X_GtkAboutDialog
  type GtkAccelGroup = X_GtkAccelGroup
  type GtkAccelGroupEntry = X_GtkAccelGroupEntry
  type GtkAccelKey = X_GtkAccelKey
  type GtkAccelLabel = X_GtkAccelLabel
  type GtkAccelMap = Void*
  type GtkAccessible = X_GtkAccessible
  type GtkAction = X_GtkAction
  type GtkActionEntry = X_GtkActionEntry
  type GtkActionGroup = X_GtkActionGroup
  type GtkActionGroupPrivate = Void*
  type GtkActionPrivate = Void*
  type GtkActivatable = Void*
  type GtkAdjustment = X_GtkAdjustment
  type GtkAlignment = X_GtkAlignment
  type GtkArg = X_GtkArg
  type GtkArrow = X_GtkArrow
  type GtkAspectFrame = X_GtkAspectFrame
  type GtkAssistant = X_GtkAssistant
  type GtkAssistantPrivate = Void*
  type GtkBin = X_GtkBin
  type GtkBindingArg = X_GtkBindingArg
  type GtkBindingEntry = X_GtkBindingEntry
  type GtkBindingSet = X_GtkBindingSet
  type GtkBindingSignal = X_GtkBindingSignal
  type GtkBorder = X_GtkBorder
  type GtkBox = X_GtkBox
  type GtkBuildable = Void*
  type GtkBuilder = X_GtkBuilder
  type GtkBuilderPrivate = Void*
  type GtkButton = X_GtkButton
  type GtkButtonBox = X_GtkButtonBox
  type GtkCList = X_GtkCList
  type GtkCListCellInfo = X_GtkCListCellInfo
  type GtkCListColumn = X_GtkCListColumn
  type GtkCListRow = X_GtkCListRow
  type GtkCTree = X_GtkCTree
  type GtkCTreeNode = X_GtkCTreeNode
  type GtkCTreeRow = X_GtkCTreeRow
  type GtkCalendar = X_GtkCalendar
  type GtkCalendarPrivate = Void*
  type GtkCell = X_GtkCell
  type GtkCellEditable = Void*
  type GtkCellLayout = Void*
  type GtkCellRenderer = X_GtkCellRenderer
  type GtkCellRendererText = X_GtkCellRendererText
  type GtkCellRendererToggle = X_GtkCellRendererToggle
  type GtkCellView = X_GtkCellView
  type GtkCellViewPrivate = Void*
  type GtkCheckButton = X_GtkCheckButton
  type GtkCheckMenuItem = X_GtkCheckMenuItem
  type GtkClipboard = Void*
  type GtkColorButton = X_GtkColorButton
  type GtkColorButtonPrivate = Void*
  type GtkColorSelection = X_GtkColorSelection
  type GtkColorSelectionDialog = X_GtkColorSelectionDialog
  type GtkCombo = X_GtkCombo
  type GtkComboBox = X_GtkComboBox
  type GtkComboBoxEntry = X_GtkComboBoxEntry
  type GtkComboBoxEntryPrivate = Void*
  type GtkComboBoxPrivate = Void*
  type GtkComboBoxText = X_GtkComboBoxText
  type GtkComboBoxTextPrivate = Void*
  type GtkContainer = X_GtkContainer
  type GtkContainerClass = X_GtkContainerClass
  type GtkCurve = X_GtkCurve
  type GtkDialog = X_GtkDialog
  type GtkDrawingArea = X_GtkDrawingArea
  type GtkEditable = Void*
  type GtkEntry = X_GtkEntry
  type GtkEntryBuffer = X_GtkEntryBuffer
  type GtkEntryBufferPrivate = Void*
  type GtkEntryCompletion = X_GtkEntryCompletion
  type GtkEntryCompletionPrivate = Void*
  type GtkEventBox = X_GtkEventBox
  type GtkExpander = X_GtkExpander
  type GtkExpanderPrivate = Void*
  type GtkFileChooser = Void*
  type GtkFileChooserButton = X_GtkFileChooserButton
  type GtkFileChooserButtonPrivate = Void*
  type GtkFileFilter = Void*
  type GtkFileFilterInfo = X_GtkFileFilterInfo
  type GtkFileSelection = X_GtkFileSelection
  type GtkFixed = X_GtkFixed
  type GtkFontButton = X_GtkFontButton
  type GtkFontButtonPrivate = Void*
  type GtkFontSelection = X_GtkFontSelection
  type GtkFontSelectionDialog = X_GtkFontSelectionDialog
  type GtkFrame = X_GtkFrame
  type GtkHBox = X_GtkHBox
  type GtkHandleBox = X_GtkHandleBox
  type GtkHsv = X_GtkHsv
  type GtkIconFactory = X_GtkIconFactory
  type GtkIconInfo = Void*
  type GtkIconSet = Void*
  type GtkIconSource = Void*
  type GtkIconTheme = X_GtkIconTheme
  type GtkIconThemePrivate = Void*
  type GtkIconView = X_GtkIconView
  type GtkIconViewPrivate = Void*
  type GtkImContext = X_GtkImContext
  type GtkImContextSimple = X_GtkImContextSimple
  type GtkImMulticontext = X_GtkImMulticontext
  type GtkImMulticontextPrivate = Void*
  type GtkImage = X_GtkImage
  type GtkImageAnimationData = X_GtkImageAnimationData
  type GtkImageGIconData = X_GtkImageGIconData
  type GtkImageIconNameData = X_GtkImageIconNameData
  type GtkImageIconSetData = X_GtkImageIconSetData
  type GtkImageImageData = X_GtkImageImageData
  type GtkImageMenuItem = X_GtkImageMenuItem
  type GtkImagePixbufData = X_GtkImagePixbufData
  type GtkImagePixmapData = X_GtkImagePixmapData
  type GtkImageStockData = X_GtkImageStockData
  type GtkInfoBar = X_GtkInfoBar
  type GtkInfoBarPrivate = Void*
  type GtkInvisible = X_GtkInvisible
  type GtkItem = X_GtkItem
  type GtkItemFactory = X_GtkItemFactory
  type GtkItemFactoryEntry = X_GtkItemFactoryEntry
  type GtkLabel = X_GtkLabel
  type GtkLabelSelectionInfo = Void*
  type GtkLayout = X_GtkLayout
  type GtkLinkButton = X_GtkLinkButton
  type GtkLinkButtonPrivate = Void*
  type GtkList = X_GtkList
  type GtkListItem = X_GtkListItem
  type GtkListStore = X_GtkListStore
  type GtkMenu = X_GtkMenu
  type GtkMenuBar = X_GtkMenuBar
  type GtkMenuItem = X_GtkMenuItem
  type GtkMenuShell = X_GtkMenuShell
  type GtkMenuToolButton = X_GtkMenuToolButton
  type GtkMenuToolButtonPrivate = Void*
  type GtkMessageDialog = X_GtkMessageDialog
  type GtkMisc = X_GtkMisc
  type GtkMountOperation = X_GtkMountOperation
  type GtkMountOperationPrivate = Void*
  type GtkNotebook = X_GtkNotebook
  type GtkNotebookPage = Void*
  type GtkObject = X_GtkObject
  type GtkObjectClass = X_GtkObjectClass
  type GtkOffscreenWindow = X_GtkOffscreenWindow
  type GtkOldEditable = X_GtkOldEditable
  type GtkOptionMenu = X_GtkOptionMenu
  type GtkOrientable = Void*
  type GtkPageRange = X_GtkPageRange
  type GtkPageSetup = Void*
  type GtkPaned = X_GtkPaned
  type GtkPanedPrivate = Void*
  type GtkPaperSize = Void*
  type GtkPixmap = X_GtkPixmap
  type GtkPlug = X_GtkPlug
  type GtkPreview = X_GtkPreview
  type GtkPreviewInfo = X_GtkPreviewInfo
  type GtkPrintContext = Void*
  type GtkPrintOperation = X_GtkPrintOperation
  type GtkPrintOperationPreview = Void*
  type GtkPrintOperationPrivate = Void*
  type GtkPrintSettings = Void*
  type GtkProgress = X_GtkProgress
  type GtkProgressBar = X_GtkProgressBar
  type GtkRadioAction = X_GtkRadioAction
  type GtkRadioActionEntry = X_GtkRadioActionEntry
  type GtkRadioActionPrivate = Void*
  type GtkRadioButton = X_GtkRadioButton
  type GtkRadioMenuItem = X_GtkRadioMenuItem
  type GtkRadioToolButton = X_GtkRadioToolButton
  type GtkRange = X_GtkRange
  type GtkRangeLayout = Void*
  type GtkRangeStepTimer = Void*
  type GtkRcContext = Void*
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
  type GtkRequisition = X_GtkRequisition
  type GtkRuler = X_GtkRuler
  type GtkRulerMetric = X_GtkRulerMetric
  type GtkScale = X_GtkScale
  type GtkScaleButton = X_GtkScaleButton
  type GtkScaleButtonPrivate = Void*
  type GtkScrolledWindow = X_GtkScrolledWindow
  type GtkSelectionData = X_GtkSelectionData
  type GtkSeparatorToolItem = X_GtkSeparatorToolItem
  type GtkSeparatorToolItemPrivate = Void*
  type GtkSettings = X_GtkSettings
  type GtkSettingsPropertyValue = Void*
  type GtkSettingsValue = X_GtkSettingsValue
  type GtkSizeGroup = X_GtkSizeGroup
  type GtkSocket = X_GtkSocket
  type GtkSpinButton = X_GtkSpinButton
  type GtkSpinner = X_GtkSpinner
  type GtkSpinnerPrivate = Void*
  type GtkStatusIcon = X_GtkStatusIcon
  type GtkStatusIconPrivate = Void*
  type GtkStatusbar = X_GtkStatusbar
  type GtkStockItem = X_GtkStockItem
  type GtkStyle = X_GtkStyle
  type GtkTable = X_GtkTable
  type GtkTableRowCol = X_GtkTableRowCol
  type GtkTargetEntry = X_GtkTargetEntry
  type GtkTargetList = X_GtkTargetList
  type GtkTextAppearance = X_GtkTextAppearance
  type GtkTextAttributes = X_GtkTextAttributes
  type GtkTextBTree = Void*
  type GtkTextBuffer = X_GtkTextBuffer
  type GtkTextChildAnchor = X_GtkTextChildAnchor
  type GtkTextIter = X_GtkTextIter
  type GtkTextLogAttrCache = Void*
  type GtkTextMark = X_GtkTextMark
  type GtkTextPendingScroll = Void*
  type GtkTextTag = X_GtkTextTag
  type GtkTextTagTable = X_GtkTextTagTable
  type GtkTextView = X_GtkTextView
  type GtkTextWindow = Void*
  type GtkTipsQuery = X_GtkTipsQuery
  type GtkToggleAction = X_GtkToggleAction
  type GtkToggleActionEntry = X_GtkToggleActionEntry
  type GtkToggleActionPrivate = Void*
  type GtkToggleButton = X_GtkToggleButton
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
  type GtkTooltip = Void*
  type GtkTooltips = X_GtkTooltips
  type GtkTooltipsData = X_GtkTooltipsData
  type GtkTreeDragDest = Void*
  type GtkTreeDragSource = Void*
  type GtkTreeIter = X_GtkTreeIter
  type GtkTreeModel = Void*
  type GtkTreeModelFilter = X_GtkTreeModelFilter
  type GtkTreeModelFilterPrivate = Void*
  type GtkTreeModelSort = X_GtkTreeModelSort
  type GtkTreePath = Void*
  type GtkTreeRowReference = Void*
  type GtkTreeSelection = X_GtkTreeSelection
  type GtkTreeSortable = Void*
  type GtkTreeStore = X_GtkTreeStore
  type GtkTreeView = X_GtkTreeView
  type GtkTreeViewColumn = X_GtkTreeViewColumn
  type GtkTreeViewPrivate = Void*
  type GtkTypeInfo = X_GtkTypeInfo
  type GtkUiManager = X_GtkUiManager
  type GtkUiManagerPrivate = Void*
  type GtkVBox = X_GtkVBox
  type GtkViewport = X_GtkViewport
  type GtkWidget = X_GtkWidget
  type GtkWidgetClass = X_GtkWidgetClass
  type GtkWindow = X_GtkWindow
  type GtkWindowGeometryInfo = Void*
  type GtkWindowGroup = X_GtkWindowGroup
  type PangoAttrList = Void*
  type PangoColor = X_PangoColor
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
    no_expose : GdkEventNoExpose
    visibility : GdkEventVisibility
    motion : GdkEventMotion
    button : GdkEventButton
    scroll : GdkEventScroll
    key : GdkEventKey
    crossing : GdkEventCrossing
    focus_change : GdkEventFocus
    configure : GdkEventConfigure
    property : GdkEventProperty
    selection : GdkEventSelection
    owner_change : GdkEventOwnerChange
    proximity : GdkEventProximity
    client : GdkEventClient
    dnd : GdkEventDnd
    window_state : GdkEventWindowState
    setting : GdkEventSetting
    grab_broken : GdkEventGrabBroken
  end

  union X_GdkEventClientData
    b : LibC::Char[20]
    s : LibC::Short[10]
    l : LibC::Long[5]
  end

  union X_GtkArgD
    char_data : Gchar
    uchar_data : Guchar
    bool_data : Gboolean
    int_data : Gint
    uint_data : Guint
    long_data : Glong
    ulong_data : Gulong
    float_data : Gfloat
    double_data : Gdouble
    string_data : Gchar*
    object_data : GtkObject*
    pointer_data : Gpointer
    signal_data : X_GtkArgDSignalData
  end

  union X_GtkBindingArgD
    long_data : Glong
    double_data : Gdouble
    string_data : Gchar*
  end

  union X_GtkCellU
    text : Gchar*
    pm : X_GtkCellUPm
    pt : X_GtkCellUPt
    widget : GtkWidget*
  end

  union X_GtkImageData
    pixmap : GtkImagePixmapData
    image : GtkImageImageData
    pixbuf : GtkImagePixbufData
    stock : GtkImageStockData
    icon_set : GtkImageIconSetData
    anim : GtkImageAnimationData
    name : GtkImageIconNameData
    gicon : GtkImageGIconData
  end
end
