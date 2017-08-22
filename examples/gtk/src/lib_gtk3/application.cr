@[Link(ldflags: "`command -v pkg-config > /dev/null && pkg-config --libs gtk+-3.0 2> /dev/null|| printf %s '-lgtk-3 -lgdk-3 -lpangocairo-1.0 -lpango-1.0 -latk-1.0 -lcairo-gobject -lcairo -lgdk_pixbuf-2.0 -lgio-2.0 -lgobject-2.0 -lglib-2.0'`")]
lib LibGTK3
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
  enum GtkApplicationInhibitFlags
    GtkApplicationInhibitLogout  = 1
    GtkApplicationInhibitSwitch  = 2
    GtkApplicationInhibitSuspend = 4
    GtkApplicationInhibitIdle    = 8
  end
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

  struct X_GMenuModel
    parent_instance : GObject
    priv : GMenuModelPrivate
  end

  struct X_GtkApplicationWindow
    parent_instance : GtkWindow
    priv : GtkApplicationWindowPrivate
  end

  type GMenu = Void*
  type GMenuModel = X_GMenuModel
  type GMenuModelPrivate = Void*
  type GVariant = Void*
  type GtkApplicationWindow = X_GtkApplicationWindow
  type GtkApplicationWindowPrivate = Void*
end
