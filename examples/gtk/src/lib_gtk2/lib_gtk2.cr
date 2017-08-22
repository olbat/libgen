@[Link(ldflags: "`command -v pkg-config > /dev/null && pkg-config --libs gtk+-2.0 2> /dev/null|| printf %s '-lgtk-x11-2.0 -lgdk-x11-2.0 -lpangocairo-1.0 -latk-1.0 -lcairo -lgdk_pixbuf-2.0 -lgio-2.0 -lpangoft2-1.0 -lpango-1.0 -lgobject-2.0 -lglib-2.0 -lfontconfig -lfreetype'`")]
lib LibGTK2
  alias GClosureNotify = (Gpointer, GClosure* -> Void)
  alias GQuark = Guint32
  alias GType = Gsize
  alias Gboolean = Gint
  alias Gchar = LibC::Char
  alias GdkNativeWindow = Guint32
  alias Gdouble = LibC::Double
  alias Gfloat = LibC::Float
  alias Gint = LibC::Int
  alias Gint64 = LibC::Long
  alias Gint8 = LibC::Char
  alias Glong = LibC::Long
  alias Gpointer = Void*
  alias Gsize = LibC::ULong
  alias GtkAllocation = GdkRectangle
  alias Guint = LibC::UInt
  alias Guint16 = LibC::UShort
  alias Guint32 = LibC::UInt
  alias Guint64 = LibC::ULong
  alias Guint8 = UInt8
  alias Gulong = LibC::ULong
  enum GdkByteOrder
    GdkLsbFirst = 0
    GdkMsbFirst = 1
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
  enum GdkFontType
    GdkFontFont    = 0
    GdkFontFontset = 1
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
  enum GdkVisualType
    GdkVisualStaticGray  = 0
    GdkVisualGrayscale   = 1
    GdkVisualStaticColor = 2
    GdkVisualPseudoColor = 3
    GdkVisualTrueColor   = 4
    GdkVisualDirectColor = 5
  end
  enum GtkRcFlags
    GtkRcFg   = 1
    GtkRcBg   = 2
    GtkRcText = 4
    GtkRcBase = 8
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

  struct X_GList
    data : Gpointer
    next : GList*
    prev : GList*
  end

  struct X_GObject
    g_type_instance : GTypeInstance
    ref_count : Guint
    qdata : GData
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

  struct X_GdkDrawable
    parent_instance : GObject
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

  struct X_GtkBin
    container : GtkContainer
    child : GtkWidget*
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

  struct X_GtkObject
    parent_instance : GInitiallyUnowned
    flags : Guint32
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

  type CairoFontOptionsT = Void*
  type GArray = X_GArray
  type GClosure = X_GClosure
  type GClosureNotifyData = X_GClosureNotifyData
  type GData = Void*
  type GInitiallyUnowned = X_GObject
  type GList = X_GList
  type GObject = X_GObject
  type GTypeClass = X_GTypeClass
  type GTypeInstance = X_GTypeInstance
  type GValue = X_GValue
  type GdkColor = X_GdkColor
  type GdkColormap = X_GdkColormap
  type GdkEventKey = X_GdkEventKey
  type GdkFont = X_GdkFont
  type GdkGc = X_GdkGc
  type GdkPixbuf = Void*
  type GdkPixmap = X_GdkDrawable
  type GdkRectangle = X_GdkRectangle
  type GdkScreen = X_GdkScreen
  type GdkVisual = X_GdkVisual
  type GdkWindow = X_GdkDrawable
  type GsList = X_GsList
  type GtkAccelGroup = X_GtkAccelGroup
  type GtkAccelGroupEntry = X_GtkAccelGroupEntry
  type GtkAccelKey = X_GtkAccelKey
  type GtkBin = X_GtkBin
  type GtkContainer = X_GtkContainer
  type GtkObject = X_GtkObject
  type GtkRcStyle = X_GtkRcStyle
  type GtkRequisition = X_GtkRequisition
  type GtkStyle = X_GtkStyle
  type GtkWidget = X_GtkWidget
  type GtkWindow = X_GtkWindow
  type GtkWindowGeometryInfo = Void*
  type GtkWindowGroup = X_GtkWindowGroup
  type PangoFontDescription = Void*

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
end

require "./window.cr"
require "./widget.cr"
