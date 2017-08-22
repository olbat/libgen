@[Link(ldflags: "`command -v pkg-config > /dev/null && pkg-config --libs gtk+-2.0 2> /dev/null|| printf %s '-lgtk-x11-2.0 -lgdk-x11-2.0 -lpangocairo-1.0 -latk-1.0 -lcairo -lgdk_pixbuf-2.0 -lgio-2.0 -lpangoft2-1.0 -lpango-1.0 -lgobject-2.0 -lglib-2.0 -lfontconfig -lfreetype'`")]
lib LibGTK2
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

  struct X_GError
    domain : GQuark
    code : Gint
    message : Gchar*
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

  type GError = X_GError
  type GdkGeometry = X_GdkGeometry
end
