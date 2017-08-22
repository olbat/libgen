@[Link(ldflags: "`command -v pkg-config > /dev/null && pkg-config --libs gtk+-2.0 2> /dev/null|| printf %s '-lgtk-x11-2.0 -lgdk-x11-2.0 -lpangocairo-1.0 -latk-1.0 -lcairo -lgdk_pixbuf-2.0 -lgio-2.0 -lpangoft2-1.0 -lpango-1.0 -lgobject-2.0 -lglib-2.0 -lfontconfig -lfreetype'`")]
lib LibGTK2
  alias GCallback = (-> Void)
  alias Gint16 = LibC::Short
  alias Gshort = LibC::Short
  alias GtkRcPropertyParser = (GParamSpec*, GString*, GValue* -> Gboolean)
  alias Guchar = UInt8
  alias Gushort = LibC::UShort
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
  enum GdkCrossingMode
    GdkCrossingNormal       = 0
    GdkCrossingGrab         = 1
    GdkCrossingUngrab       = 2
    GdkCrossingGtkGrab      = 3
    GdkCrossingGtkUngrab    = 4
    GdkCrossingStateChanged = 5
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
  enum GdkExtensionMode
    GdkExtensionEventsNone   = 0
    GdkExtensionEventsAll    = 1
    GdkExtensionEventsCursor = 2
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
  enum GdkVisibilityState
    GdkVisibilityUnobscured    = 0
    GdkVisibilityPartial       = 1
    GdkVisibilityFullyObscured = 2
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
  enum GtkAccelFlags
    GtkAccelVisible = 1
    GtkAccelLocked  = 2
    GtkAccelMask    = 7
  end
  enum GtkDirectionType
    GtkDirTabForward  = 0
    GtkDirTabBackward = 1
    GtkDirUp          = 2
    GtkDirDown        = 3
    GtkDirLeft        = 4
    GtkDirRight       = 5
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
  enum GtkWidgetHelpType
    GtkWidgetHelpTooltip   = 0
    GtkWidgetHelpWhatsThis = 1
  end
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

  struct X_GtkAction
    object : GObject
    private_data : GtkActionPrivate
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

  struct X_GtkArg
    type : GType
    name : Gchar*
    d : X_GtkArgD
  end

  struct X_GtkArgDSignalData
    f : GCallback
    d : Gpointer
  end

  struct X_GtkObjectClass
    parent_class : GInitiallyUnownedClass
    set_arg : (GtkObject*, GtkArg*, Guint -> Void)
    get_arg : (GtkObject*, GtkArg*, Guint -> Void)
    destroy : (GtkObject* -> Void)
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

  struct X_GtkSettings
    parent_instance : GObject
    queued_settings : GData
    property_values : GtkSettingsPropertyValue
    rc_context : GtkRcContext
    screen : GdkScreen*
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

  type AtkObject = X_AtkObject
  type AtkRelationSet = X_AtkRelationSet
  type GInitiallyUnownedClass = X_GObjectClass
  type GObjectConstructParam = X_GObjectConstructParam
  type GParamSpec = X_GParamSpec
  type GPtrArray = X_GPtrArray
  type GString = X_GString
  type GdkAtom = Void*
  type GdkBitmap = X_GdkDrawable
  type GdkDevice = X_GdkDevice
  type GdkDeviceAxis = X_GdkDeviceAxis
  type GdkDeviceKey = X_GdkDeviceKey
  type GdkDisplay = X_GdkDisplay
  type GdkDisplayPointerHooks = X_GdkDisplayPointerHooks
  type GdkDragContext = X_GdkDragContext
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
  type GdkRegion = Void*
  type GtkAction = X_GtkAction
  type GtkActionPrivate = Void*
  type GtkAdjustment = X_GtkAdjustment
  type GtkArg = X_GtkArg
  type GtkClipboard = Void*
  type GtkObjectClass = X_GtkObjectClass
  type GtkRcContext = Void*
  type GtkSelectionData = X_GtkSelectionData
  type GtkSettings = X_GtkSettings
  type GtkSettingsPropertyValue = Void*
  type GtkTooltip = Void*
  type GtkWidgetClass = X_GtkWidgetClass
  type PangoContext = Void*
  type PangoLayout = Void*

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
end
