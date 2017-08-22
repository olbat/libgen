@[Link(ldflags: "`command -v pkg-config > /dev/null && pkg-config --libs gtk+-3.0 2> /dev/null|| printf %s '-lgtk-3 -lgdk-3 -lpangocairo-1.0 -lpango-1.0 -latk-1.0 -lcairo-gobject -lcairo -lgdk_pixbuf-2.0 -lgio-2.0 -lgobject-2.0 -lglib-2.0'`")]
lib LibGTK3
  alias GQuark = Guint32
  alias GType = Gsize
  alias Gboolean = Gint
  alias Gchar = LibC::Char
  alias GdkRectangle = CairoRectangleIntT
  alias Gdouble = LibC::Double
  alias Gint = LibC::Int
  alias Gint8 = LibC::Char
  alias Gpointer = Void*
  alias Gsize = LibC::ULong
  alias Guint = LibC::UInt
  alias Guint16 = LibC::UShort
  alias Guint32 = LibC::UInt
  alias Guint8 = UInt8
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

  struct X_GtkAccelGroup
    parent : GObject
    priv : GtkAccelGroupPrivate
  end

  struct X_GtkApplication
    parent : GApplication
    priv : GtkApplicationPrivate
  end

  struct X_GtkBin
    container : GtkContainer
    priv : GtkBinPrivate
  end

  struct X_GtkContainer
    widget : GtkWidget
    priv : GtkContainerPrivate
  end

  struct X_GtkWidget
    parent_instance : GInitiallyUnowned
    priv : GtkWidgetPrivate
  end

  struct X_GtkWindow
    bin : GtkBin
    priv : GtkWindowPrivate
  end

  type CairoRectangleIntT = X_CairoRectangleInt
  type GApplication = X_GApplication
  type GApplicationPrivate = Void*
  type GData = Void*
  type GInitiallyUnowned = X_GObject
  type GList = X_GList
  type GObject = X_GObject
  type GTypeClass = X_GTypeClass
  type GTypeInstance = X_GTypeInstance
  type GdkDevice = Void*
  type GdkEventKey = X_GdkEventKey
  type GdkPixbuf = Void*
  type GdkScreen = Void*
  type GdkWindow = Void*
  type GtkAccelGroup = X_GtkAccelGroup
  type GtkAccelGroupPrivate = Void*
  type GtkApplication = X_GtkApplication
  type GtkApplicationPrivate = Void*
  type GtkBin = X_GtkBin
  type GtkBinPrivate = Void*
  type GtkContainer = X_GtkContainer
  type GtkContainerPrivate = Void*
  type GtkWidget = X_GtkWidget
  type GtkWidgetPrivate = Void*
  type GtkWindow = X_GtkWindow
  type GtkWindowPrivate = Void*
end

require "./application.cr"
require "./window.cr"
require "./widget.cr"
