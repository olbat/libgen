@[Link(ldflags: "`command -v pkg-config > /dev/null && pkg-config --libs gtk+-3.0 2> /dev/null|| printf %s '-lgtk-3 -lgdk-3 -lpangocairo-1.0 -lpango-1.0 -latk-1.0 -lcairo-gobject -lcairo -lgdk_pixbuf-2.0 -lgio-2.0 -lgobject-2.0 -lglib-2.0'`")]
lib LibGTK3
  alias GCallback = (-> Void)
  alias GDestroyNotify = (Gpointer -> Void)
  alias Gfloat = LibC::Float
  alias Gint16 = LibC::Short
  alias Gint64 = LibC::Long
  alias Glong = LibC::Long
  alias Gshort = LibC::Short
  alias Gssize = LibC::Long
  alias GtkAllocation = GdkRectangle
  alias GtkBuilderConnectFunc = (GtkBuilder*, GObject*, Gchar*, Gchar*, GObject*, GConnectFlags, Gpointer -> Void)
  alias GtkRcPropertyParser = (GParamSpec*, GString*, GValue* -> Gboolean)
  alias GtkTickCallback = (GtkWidget*, GdkFrameClock, Gpointer -> Gboolean)
  alias Guint64 = LibC::ULong
  alias Gulong = LibC::ULong
  alias VaList = X__GnucVaList
  alias X__GnucVaList = LibC::VaList
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
  enum GdkModifierIntent
    GdkModifierIntentPrimaryAccelerator = 0
    GdkModifierIntentContextMenu        = 1
    GdkModifierIntentExtendSelection    = 2
    GdkModifierIntentModifySelection    = 3
    GdkModifierIntentNoTextInput        = 4
    GdkModifierIntentShiftGroup         = 5
    GdkModifierIntentDefaultModMask     = 6
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
  enum GtkIconSize
    GtkIconSizeInvalid      = 0
    GtkIconSizeMenu         = 1
    GtkIconSizeSmallToolbar = 2
    GtkIconSizeLargeToolbar = 3
    GtkIconSizeButton       = 4
    GtkIconSizeDnd          = 5
    GtkIconSizeDialog       = 6
  end
  enum GtkOrientation
    GtkOrientationHorizontal = 0
    GtkOrientationVertical   = 1
  end
  enum GtkRcFlags
    GtkRcFg   = 1
    GtkRcBg   = 2
    GtkRcText = 4
    GtkRcBase = 8
  end
  enum GtkRegionFlags
    GtkRegionEven   =  1
    GtkRegionOdd    =  2
    GtkRegionFirst  =  4
    GtkRegionLast   =  8
    GtkRegionOnly   = 16
    GtkRegionSorted = 32
  end
  enum GtkSizeRequestMode
    GtkSizeRequestHeightForWidth = 0
    GtkSizeRequestWidthForHeight = 1
    GtkSizeRequestConstantSize   = 2
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
  enum GtkWidgetHelpType
    GtkWidgetHelpTooltip   = 0
    GtkWidgetHelpWhatsThis = 1
  end
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

  struct X_GString
    str : Gchar*
    len : Gsize
    allocated_len : Gsize
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

  struct X_GtkBuilder
    parent_instance : GObject
    priv : GtkBuilderPrivate
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

  struct X_GtkRequisition
    width : Gint
    height : Gint
  end

  struct X_GtkSettings
    parent_instance : GObject
    priv : GtkSettingsPrivate
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

  type AtkObject = X_AtkObject
  type AtkRelationSet = X_AtkRelationSet
  type CairoFontOptionsT = Void*
  type CairoPatternT = Void*
  type CairoRegionT = Void*
  type CairoT = Void*
  type GActionGroup = Void*
  type GArray = X_GArray
  type GBytes = Void*
  type GInitiallyUnownedClass = X_GObjectClass
  type GObjectConstructParam = X_GObjectConstructParam
  type GParamSpec = X_GParamSpec
  type GPtrArray = X_GPtrArray
  type GString = X_GString
  type GValue = X_GValue
  type GdkAtom = Void*
  type GdkColor = X_GdkColor
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
  type GdkRgba = X_GdkRgba
  type GdkVisual = Void*
  type GsList = X_GsList
  type GtkBuilder = X_GtkBuilder
  type GtkBuilderPrivate = Void*
  type GtkClipboard = Void*
  type GtkRcStyle = X_GtkRcStyle
  type GtkRequisition = X_GtkRequisition
  type GtkSelectionData = Void*
  type GtkSettings = X_GtkSettings
  type GtkSettingsPrivate = Void*
  type GtkStyle = X_GtkStyle
  type GtkStyleContext = X_GtkStyleContext
  type GtkStyleContextPrivate = Void*
  type GtkTooltip = Void*
  type GtkWidgetClass = X_GtkWidgetClass
  type GtkWidgetClassPrivate = Void*
  type GtkWidgetPath = Void*
  type PangoContext = Void*
  type PangoFontDescription = Void*
  type PangoFontMap = Void*
  type PangoLayout = Void*

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
end
