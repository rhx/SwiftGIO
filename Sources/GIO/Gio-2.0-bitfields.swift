import CGLib
import GLib
import GLibObject

/// Flags used when creating a `GAppInfo`.
public typealias AppInfoCreateFlags = GAppInfoCreateFlags

public extension AppInfoCreateFlags {
    /// No flags.
    static let none_ = G_APP_INFO_CREATE_NONE /* 0 */
    /// Application opens in a terminal window.
    static let needs_terminal = G_APP_INFO_CREATE_NEEDS_TERMINAL /* 1 */
    /// Application supports URI arguments.
    static let supports_uris = G_APP_INFO_CREATE_SUPPORTS_URIS /* 2 */
    /// Application supports startup notification. Since 2.26
    static let supports_startup_notification = G_APP_INFO_CREATE_SUPPORTS_STARTUP_NOTIFICATION /* 4 */
}

/// Flags used to define the behaviour of a `GApplication`.
public typealias ApplicationFlags = GApplicationFlags

public extension ApplicationFlags {
    /// Default
    static let flags_none = G_APPLICATION_FLAGS_NONE /* 0 */
    /// Run as a service. In this mode, registration
    ///      fails if the service is already running, and the application
    ///      will initially wait up to 10 seconds for an initial activation
    ///      message to arrive.
    static let is_service = G_APPLICATION_IS_SERVICE /* 1 */
    /// Don't try to become the primary instance.
    static let is_launcher = G_APPLICATION_IS_LAUNCHER /* 2 */
    /// This application handles opening files (in
    ///     the primary instance). Note that this flag only affects the default
    ///     implementation of `local_command_line()`, and has no effect if
    ///     `G_APPLICATION_HANDLES_COMMAND_LINE` is given.
    ///     See `g_application_run()` for details.
    static let handles_open = G_APPLICATION_HANDLES_OPEN /* 4 */
    /// This application handles command line
    ///     arguments (in the primary instance). Note that this flag only affect
    ///     the default implementation of `local_command_line()`.
    ///     See `g_application_run()` for details.
    static let handles_command_line = G_APPLICATION_HANDLES_COMMAND_LINE /* 8 */
    /// Send the environment of the
    ///     launching process to the primary instance. Set this flag if your
    ///     application is expected to behave differently depending on certain
    ///     environment variables. For instance, an editor might be expected
    ///     to use the `GIT_COMMITTER_NAME` environment variable
    ///     when editing a git commit message. The environment is available
    ///     to the `GApplication::command`-line signal handler, via
    ///     `g_application_command_line_getenv()`.
    static let send_environment = G_APPLICATION_SEND_ENVIRONMENT /* 16 */
    /// Make no attempts to do any of the typical
    ///     single-instance application negotiation, even if the application
    ///     ID is given.  The application neither attempts to become the
    ///     owner of the application ID nor does it check if an existing
    ///     owner already exists.  Everything occurs in the local process.
    ///     Since: 2.30.
    static let non_unique = G_APPLICATION_NON_UNIQUE /* 32 */
    /// Allow users to override the
    ///     application ID from the command line with `--gapplication-app-id`.
    ///     Since: 2.48
    static let can_override_app_id = G_APPLICATION_CAN_OVERRIDE_APP_ID /* 64 */
    /// Allow another instance to take over
    ///     the bus name. Since: 2.60
    static let allow_replacement = G_APPLICATION_ALLOW_REPLACEMENT /* 128 */
    /// Take over from another instance. This flag is
    ///     usually set by passing `--gapplication-replace` on the commandline.
    ///     Since: 2.60
    static let replace = G_APPLICATION_REPLACE /* 256 */
}

/// `GAskPasswordFlags` are used to request specific information from the
/// user, or to notify the user of their choices in an authentication
/// situation.
public typealias AskPasswordFlags = GAskPasswordFlags

public extension AskPasswordFlags {
    /// operation requires a password.
    static let need_password = G_ASK_PASSWORD_NEED_PASSWORD /* 1 */
    /// operation requires a username.
    static let need_username = G_ASK_PASSWORD_NEED_USERNAME /* 2 */
    /// operation requires a domain.
    static let need_domain = G_ASK_PASSWORD_NEED_DOMAIN /* 4 */
    /// operation supports saving settings.
    static let saving_supported = G_ASK_PASSWORD_SAVING_SUPPORTED /* 8 */
    /// operation supports anonymous users.
    static let anonymous_supported = G_ASK_PASSWORD_ANONYMOUS_SUPPORTED /* 16 */
    /// operation takes TCRYPT parameters (Since: 2.58)
    static let tcrypt = G_ASK_PASSWORD_TCRYPT /* 32 */
}

/// Flags used in `g_bus_own_name()`.
public typealias BusNameOwnerFlags = GBusNameOwnerFlags

public extension BusNameOwnerFlags {
    /// No flags set.
    static let none_ = G_BUS_NAME_OWNER_FLAGS_NONE /* 0 */
    /// Allow another message bus connection to claim the name.
    static let allow_replacement = G_BUS_NAME_OWNER_FLAGS_ALLOW_REPLACEMENT /* 1 */
    /// If another message bus connection owns the name and have
    /// specified `G_BUS_NAME_OWNER_FLAGS_ALLOW_REPLACEMENT`, then take the name from the other connection.
    static let replace = G_BUS_NAME_OWNER_FLAGS_REPLACE /* 2 */
    /// If another message bus connection owns the name, immediately
    /// return an error from `g_bus_own_name()` rather than entering the waiting queue for that name. (Since 2.54)
    static let do_not_queue = G_BUS_NAME_OWNER_FLAGS_DO_NOT_QUEUE /* 4 */
}

/// Flags used in `g_bus_watch_name()`.
public typealias BusNameWatcherFlags = GBusNameWatcherFlags

public extension BusNameWatcherFlags {
    /// No flags set.
    static let none_ = G_BUS_NAME_WATCHER_FLAGS_NONE /* 0 */
    /// If no-one owns the name when
    /// beginning to watch the name, ask the bus to launch an owner for the
    /// name.
    static let auto_start = G_BUS_NAME_WATCHER_FLAGS_AUTO_START /* 1 */
}

/// Flags used when calling a `g_converter_convert()`.
public typealias ConverterFlags = GConverterFlags

public extension ConverterFlags {
    /// No flags.
    static let none_ = G_CONVERTER_NO_FLAGS /* 0 */
    /// At end of input data
    static let input_at_end = G_CONVERTER_INPUT_AT_END /* 1 */
    /// Flush data
    static let flush = G_CONVERTER_FLUSH /* 2 */
}

/// Flags used in `g_dbus_connection_call()` and similar APIs.
public typealias DBusCallFlags = GDBusCallFlags

public extension DBusCallFlags {
    /// No flags set.
    static let none_ = G_DBUS_CALL_FLAGS_NONE /* 0 */
    /// The bus must not launch
    /// an owner for the destination name in response to this method
    /// invocation.
    static let no_auto_start = G_DBUS_CALL_FLAGS_NO_AUTO_START /* 1 */
    /// the caller is prepared to
    /// wait for interactive authorization. Since 2.46.
    static let allow_interactive_authorization = G_DBUS_CALL_FLAGS_ALLOW_INTERACTIVE_AUTHORIZATION /* 2 */
}

/// Capabilities negotiated with the remote peer.
public typealias DBusCapabilityFlags = GDBusCapabilityFlags

public extension DBusCapabilityFlags {
    /// No flags set.
    static let none_ = G_DBUS_CAPABILITY_FLAGS_NONE /* 0 */
    /// The connection
    /// supports exchanging UNIX file descriptors with the remote peer.
    static let unix_fd_passing = G_DBUS_CAPABILITY_FLAGS_UNIX_FD_PASSING /* 1 */
}

/// Flags used when creating a new `GDBusConnection`.
public typealias DBusConnectionFlags = GDBusConnectionFlags

public extension DBusConnectionFlags {
    /// No flags set.
    static let none_ = G_DBUS_CONNECTION_FLAGS_NONE /* 0 */
    /// Perform authentication against server.
    static let authentication_client = G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_CLIENT /* 1 */
    /// Perform authentication against client.
    static let authentication_server = G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_SERVER /* 2 */
    /// When
    /// authenticating as a server, allow the anonymous authentication
    /// method.
    static let authentication_allow_anonymous = G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_ALLOW_ANONYMOUS /* 4 */
    /// Pass this flag if connecting to a peer that is a
    /// message bus. This means that the `Hello()` method will be invoked as part of the connection setup.
    static let message_bus_connection = G_DBUS_CONNECTION_FLAGS_MESSAGE_BUS_CONNECTION /* 8 */
    /// If set, processing of D-Bus messages is
    /// delayed until `g_dbus_connection_start_message_processing()` is called.
    static let delay_message_processing = G_DBUS_CONNECTION_FLAGS_DELAY_MESSAGE_PROCESSING /* 16 */
}

/// Flags describing the behavior of a `GDBusInterfaceSkeleton` instance.
public typealias DBusInterfaceSkeletonFlags = GDBusInterfaceSkeletonFlags

public extension DBusInterfaceSkeletonFlags {
    /// No flags set.
    static let none_ = G_DBUS_INTERFACE_SKELETON_FLAGS_NONE /* 0 */
    /// Each method invocation is handled in
    ///   a thread dedicated to the invocation. This means that the method implementation can use blocking IO
    ///   without blocking any other part of the process. It also means that the method implementation must
    ///   use locking to access data structures used by other threads.
    static let handle_method_invocations_in_thread = G_DBUS_INTERFACE_SKELETON_FLAGS_HANDLE_METHOD_INVOCATIONS_IN_THREAD /* 1 */
}

/// Message flags used in `GDBusMessage`.
public typealias DBusMessageFlags = GDBusMessageFlags

public extension DBusMessageFlags {
    /// No flags set.
    static let none_ = G_DBUS_MESSAGE_FLAGS_NONE /* 0 */
    /// A reply is not expected.
    static let no_reply_expected = G_DBUS_MESSAGE_FLAGS_NO_REPLY_EXPECTED /* 1 */
    /// The bus must not launch an
    /// owner for the destination name in response to this message.
    static let no_auto_start = G_DBUS_MESSAGE_FLAGS_NO_AUTO_START /* 2 */
    /// If set on a method
    /// call, this flag means that the caller is prepared to wait for interactive
    /// authorization. Since 2.46.
    static let allow_interactive_authorization = G_DBUS_MESSAGE_FLAGS_ALLOW_INTERACTIVE_AUTHORIZATION /* 4 */
}

/// Flags used when constructing a `GDBusObjectManagerClient`.
public typealias DBusObjectManagerClientFlags = GDBusObjectManagerClientFlags

public extension DBusObjectManagerClientFlags {
    /// No flags set.
    static let none_ = G_DBUS_OBJECT_MANAGER_CLIENT_FLAGS_NONE /* 0 */
    /// If not set and the
    ///   manager is for a well-known name, then request the bus to launch
    ///   an owner for the name if no-one owns the name. This flag can only
    ///   be used in managers for well-known names.
    static let do_not_auto_start = G_DBUS_OBJECT_MANAGER_CLIENT_FLAGS_DO_NOT_AUTO_START /* 1 */
}

/// Flags describing the access control of a D-Bus property.
public typealias DBusPropertyInfoFlags = GDBusPropertyInfoFlags

public extension DBusPropertyInfoFlags {
    /// No flags set.
    static let none_ = G_DBUS_PROPERTY_INFO_FLAGS_NONE /* 0 */
    /// Property is readable.
    static let readable = G_DBUS_PROPERTY_INFO_FLAGS_READABLE /* 1 */
    /// Property is writable.
    static let writable = G_DBUS_PROPERTY_INFO_FLAGS_WRITABLE /* 2 */
}

/// Flags used when constructing an instance of a `GDBusProxy` derived class.
public typealias DBusProxyFlags = GDBusProxyFlags

public extension DBusProxyFlags {
    /// No flags set.
    static let none_ = G_DBUS_PROXY_FLAGS_NONE /* 0 */
    /// Don't load properties.
    static let do_not_load_properties = G_DBUS_PROXY_FLAGS_DO_NOT_LOAD_PROPERTIES /* 1 */
    /// Don't connect to signals on the remote object.
    static let do_not_connect_signals = G_DBUS_PROXY_FLAGS_DO_NOT_CONNECT_SIGNALS /* 2 */
    /// If the proxy is for a well-known name,
    /// do not ask the bus to launch an owner during proxy initialization or a method call.
    /// This flag is only meaningful in proxies for well-known names.
    static let do_not_auto_start = G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START /* 4 */
    /// If set, the property value for any __invalidated property__ will be (asynchronously) retrieved upon receiving the [`PropertiesChanged`](http://dbus.freedesktop.org/doc/dbus-specification.html`standard`-interfaces-properties) D-Bus signal and the property will not cause emission of the `GDBusProxy::g`-properties-changed signal. When the value is received the `GDBusProxy::g`-properties-changed signal is emitted for the property along with the retrieved value. Since 2.32.
    static let get_invalidated_properties = G_DBUS_PROXY_FLAGS_GET_INVALIDATED_PROPERTIES /* 8 */
    /// If the proxy is for a well-known name,
    /// do not ask the bus to launch an owner during proxy initialization, but allow it to be
    /// autostarted by a method call. This flag is only meaningful in proxies for well-known names,
    /// and only if `G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START` is not also specified.
    static let do_not_auto_start_at_construction = G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START_AT_CONSTRUCTION /* 16 */
}

/// Flags used when sending `GDBusMessages` on a `GDBusConnection`.
public typealias DBusSendMessageFlags = GDBusSendMessageFlags

public extension DBusSendMessageFlags {
    /// No flags set.
    static let none_ = G_DBUS_SEND_MESSAGE_FLAGS_NONE /* 0 */
    /// Do not automatically
    /// assign a serial number from the `GDBusConnection` object when
    /// sending a message.
    static let preserve_serial = G_DBUS_SEND_MESSAGE_FLAGS_PRESERVE_SERIAL /* 1 */
}

/// Flags used when creating a `GDBusServer`.
public typealias DBusServerFlags = GDBusServerFlags

public extension DBusServerFlags {
    /// No flags set.
    static let none_ = G_DBUS_SERVER_FLAGS_NONE /* 0 */
    /// All `GDBusServer::new`-connection
    /// signals will run in separated dedicated threads (see signal for
    /// details).
    static let run_in_thread = G_DBUS_SERVER_FLAGS_RUN_IN_THREAD /* 1 */
    /// Allow the anonymous
    /// authentication method.
    static let authentication_allow_anonymous = G_DBUS_SERVER_FLAGS_AUTHENTICATION_ALLOW_ANONYMOUS /* 2 */
}

/// Flags used when subscribing to signals via `g_dbus_connection_signal_subscribe()`.
public typealias DBusSignalFlags = GDBusSignalFlags

public extension DBusSignalFlags {
    /// No flags set.
    static let none_ = G_DBUS_SIGNAL_FLAGS_NONE /* 0 */
    /// Don't actually send the AddMatch
    /// D-Bus call for this signal subscription.  This gives you more control
    /// over which match rules you add (but you must add them manually).
    static let no_match_rule = G_DBUS_SIGNAL_FLAGS_NO_MATCH_RULE /* 1 */
    /// Match first arguments that
    /// contain a bus or interface name with the given namespace.
    static let match_arg0_namespace = G_DBUS_SIGNAL_FLAGS_MATCH_ARG0_NAMESPACE /* 2 */
    /// Match first arguments that
    /// contain an object path that is either equivalent to the given path,
    /// or one of the paths is a subpath of the other.
    static let match_arg0_path = G_DBUS_SIGNAL_FLAGS_MATCH_ARG0_PATH /* 4 */
}

/// Flags passed to `g_dbus_connection_register_subtree()`.
public typealias DBusSubtreeFlags = GDBusSubtreeFlags

public extension DBusSubtreeFlags {
    /// No flags set.
    static let none_ = G_DBUS_SUBTREE_FLAGS_NONE /* 0 */
    /// Method calls to objects not in the enumerated range
    ///                                                       will still be dispatched. This is useful if you want
    ///                                                       to dynamically spawn objects in the subtree.
    static let dispatch_to_unenumerated_nodes = G_DBUS_SUBTREE_FLAGS_DISPATCH_TO_UNENUMERATED_NODES /* 1 */
}

/// Flags used when starting a drive.
public typealias DriveStartFlags = GDriveStartFlags

public extension DriveStartFlags {
    /// No flags set.
    static let none_ = G_DRIVE_START_NONE /* 0 */
}

/// Flags specifying the behaviour of an attribute.
public typealias FileAttributeInfoFlags = GFileAttributeInfoFlags

public extension FileAttributeInfoFlags {
    /// no flags set.
    static let none_ = G_FILE_ATTRIBUTE_INFO_NONE /* 0 */
    /// copy the attribute values when the file is copied.
    static let copy_with_file = G_FILE_ATTRIBUTE_INFO_COPY_WITH_FILE /* 1 */
    /// copy the attribute values when the file is moved.
    static let copy_when_moved = G_FILE_ATTRIBUTE_INFO_COPY_WHEN_MOVED /* 2 */
}

/// Flags used when copying or moving files.
public typealias FileCopyFlags = GFileCopyFlags

public extension FileCopyFlags {
    /// No flags set.
    static let none_ = G_FILE_COPY_NONE /* 0 */
    /// Overwrite any existing files
    static let overwrite = G_FILE_COPY_OVERWRITE /* 1 */
    /// Make a backup of any existing files.
    static let backup = G_FILE_COPY_BACKUP /* 2 */
    /// Don't follow symlinks.
    static let nofollow_symlinks = G_FILE_COPY_NOFOLLOW_SYMLINKS /* 4 */
    /// Copy all file metadata instead of just default set used for copy (see `GFileInfo`).
    static let all_metadata = G_FILE_COPY_ALL_METADATA /* 8 */
    /// Don't use copy and delete fallback if native move not supported.
    static let no_fallback_for_move = G_FILE_COPY_NO_FALLBACK_FOR_MOVE /* 16 */
    /// Leaves target file with default perms, instead of setting the source file perms.
    static let target_default_perms = G_FILE_COPY_TARGET_DEFAULT_PERMS /* 32 */
}

/// Flags used when an operation may create a file.
public typealias FileCreateFlags = GFileCreateFlags

public extension FileCreateFlags {
    /// No flags set.
    static let none_ = G_FILE_CREATE_NONE /* 0 */
    /// Create a file that can only be
    ///    accessed by the current user.
    static let private_ = G_FILE_CREATE_PRIVATE /* 1 */
    /// Replace the destination
    ///    as if it didn't exist before. Don't try to keep any old
    ///    permissions, replace instead of following links. This
    ///    is generally useful if you're doing a "copy over"
    ///    rather than a "save new version of" replace operation.
    ///    You can think of it as "unlink destination" before
    ///    writing to it, although the implementation may not
    ///    be exactly like that. Since 2.20
    static let replace_destination = G_FILE_CREATE_REPLACE_DESTINATION /* 2 */
}

/// Flags that can be used with `g_file_measure_disk_usage()`.
public typealias FileMeasureFlags = GFileMeasureFlags

public extension FileMeasureFlags {
    /// No flags set.
    static let none_ = G_FILE_MEASURE_NONE /* 0 */
    /// Report any error encountered
    ///   while traversing the directory tree.  Normally errors are only
    ///   reported for the toplevel file.
    static let report_any_error = G_FILE_MEASURE_REPORT_ANY_ERROR /* 2 */
    /// Tally usage based on apparent file
    ///   sizes.  Normally, the block-size is used, if available, as this is a
    ///   more accurate representation of disk space used.
    ///   Compare with `du --apparent-size`.
    static let apparent_size = G_FILE_MEASURE_APPARENT_SIZE /* 4 */
    /// Do not cross mount point boundaries.
    ///   Compare with `du -x`.
    static let no_xdev = G_FILE_MEASURE_NO_XDEV /* 8 */
}

/// Flags used to set what a `GFileMonitor` will watch for.
public typealias FileMonitorFlags = GFileMonitorFlags

public extension FileMonitorFlags {
    /// No flags set.
    static let none_ = G_FILE_MONITOR_NONE /* 0 */
    /// Watch for mount events.
    static let watch_mounts = G_FILE_MONITOR_WATCH_MOUNTS /* 1 */
    /// Pair DELETED and CREATED events caused
    ///   by file renames (moves) and send a single G_FILE_MONITOR_EVENT_MOVED
    ///   event instead (NB: not supported on all backends; the default
    ///   behaviour -without specifying this flag- is to send single DELETED
    ///   and CREATED events).  Deprecated since 2.46: use
    ///   `G_FILE_MONITOR_WATCH_MOVES` instead.
    static let send_moved = G_FILE_MONITOR_SEND_MOVED /* 2 */
    /// Watch for changes to the file made
    ///   via another hard link. Since 2.36.
    static let watch_hard_links = G_FILE_MONITOR_WATCH_HARD_LINKS /* 4 */
    /// Watch for rename operations on a
    ///   monitored directory.  This causes `G_FILE_MONITOR_EVENT_RENAMED`,
    ///   `G_FILE_MONITOR_EVENT_MOVED_IN` and `G_FILE_MONITOR_EVENT_MOVED_OUT`
    ///   events to be emitted when possible.  Since: 2.46.
    static let watch_moves = G_FILE_MONITOR_WATCH_MOVES /* 8 */
}

/// Flags used when querying a `GFileInfo`.
public typealias FileQueryInfoFlags = GFileQueryInfoFlags

public extension FileQueryInfoFlags {
    /// No flags set.
    static let none_ = G_FILE_QUERY_INFO_NONE /* 0 */
    /// Don't follow symlinks.
    static let nofollow_symlinks = G_FILE_QUERY_INFO_NOFOLLOW_SYMLINKS /* 1 */
}

/// GIOStreamSpliceFlags determine how streams should be spliced.
public typealias IOStreamSpliceFlags = GIOStreamSpliceFlags

public extension IOStreamSpliceFlags {
    /// Do not close either stream.
    static let none_ = G_IO_STREAM_SPLICE_NONE /* 0 */
    /// Close the first stream after
    ///     the splice.
    static let close_stream1 = G_IO_STREAM_SPLICE_CLOSE_STREAM1 /* 1 */
    /// Close the second stream after
    ///     the splice.
    static let close_stream2 = G_IO_STREAM_SPLICE_CLOSE_STREAM2 /* 2 */
    /// Wait for both splice operations to finish
    ///     before calling the callback.
    static let wait_for_both = G_IO_STREAM_SPLICE_WAIT_FOR_BOTH /* 4 */
}

/// Flags used when mounting a mount.
public typealias MountMountFlags = GMountMountFlags

public extension MountMountFlags {
    /// No flags set.
    static let none_ = G_MOUNT_MOUNT_NONE /* 0 */
}

/// Flags used when an unmounting a mount.
public typealias MountUnmountFlags = GMountUnmountFlags

public extension MountUnmountFlags {
    /// No flags set.
    static let none_ = G_MOUNT_UNMOUNT_NONE /* 0 */
    /// Unmount even if there are outstanding
    ///  file operations on the mount.
    static let force = G_MOUNT_UNMOUNT_FORCE /* 1 */
}

/// GOutputStreamSpliceFlags determine how streams should be spliced.
public typealias OutputStreamSpliceFlags = GOutputStreamSpliceFlags

public extension OutputStreamSpliceFlags {
    /// Do not close either stream.
    static let none_ = G_OUTPUT_STREAM_SPLICE_NONE /* 0 */
    /// Close the source stream after
    ///     the splice.
    static let close_source = G_OUTPUT_STREAM_SPLICE_CLOSE_SOURCE /* 1 */
    /// Close the target stream after
    ///     the splice.
    static let close_target = G_OUTPUT_STREAM_SPLICE_CLOSE_TARGET /* 2 */
}

/// Flags to modify lookup behavior.
public typealias ResolverNameLookupFlags = GResolverNameLookupFlags

public extension ResolverNameLookupFlags {
    /// default behavior (same as `g_resolver_lookup_by_name()`)
    static let default_ = G_RESOLVER_NAME_LOOKUP_FLAGS_DEFAULT /* 0 */
    /// only resolve ipv4 addresses
    static let ipv4_only = G_RESOLVER_NAME_LOOKUP_FLAGS_IPV4_ONLY /* 1 */
    /// only resolve ipv6 addresses
    static let ipv6_only = G_RESOLVER_NAME_LOOKUP_FLAGS_IPV6_ONLY /* 2 */
}

/// GResourceFlags give information about a particular file inside a resource
/// bundle.
public typealias ResourceFlags = GResourceFlags

public extension ResourceFlags {
    /// No flags set.
    static let none_ = G_RESOURCE_FLAGS_NONE /* 0 */
    /// The file is compressed.
    static let compressed = G_RESOURCE_FLAGS_COMPRESSED /* 1 */
}

/// GResourceLookupFlags determine how resource path lookups are handled.
public typealias ResourceLookupFlags = GResourceLookupFlags

public extension ResourceLookupFlags {
    /// No flags set.
    static let none_ = G_RESOURCE_LOOKUP_FLAGS_NONE /* 0 */
}

/// Flags used when creating a binding. These flags determine in which
/// direction the binding works. The default is to synchronize in both
/// directions.
public typealias SettingsBindFlags = GSettingsBindFlags

public extension SettingsBindFlags {
    /// Equivalent to `G_SETTINGS_BIND_GET|G_SETTINGS_BIND_SET`
    static let default_ = G_SETTINGS_BIND_DEFAULT /* 0 */
    /// Update the `GObject` property when the setting changes.
    ///     It is an error to use this flag if the property is not writable.
    static let get = G_SETTINGS_BIND_GET /* 1 */
    /// Update the setting when the `GObject` property changes.
    ///     It is an error to use this flag if the property is not readable.
    static let set = G_SETTINGS_BIND_SET /* 2 */
    /// Do not try to bind a "sensitivity" property to the writability of the setting
    static let no_sensitivity = G_SETTINGS_BIND_NO_SENSITIVITY /* 4 */
    /// When set in addition to `G_SETTINGS_BIND_GET`, set the `GObject` property
    ///     value initially from the setting, but do not listen for changes of the setting
    static let get_no_changes = G_SETTINGS_BIND_GET_NO_CHANGES /* 8 */
    /// When passed to `g_settings_bind()`, uses a pair of mapping functions that invert
    ///     the boolean value when mapping between the setting and the property.  The setting and property must both
    ///     be booleans.  You cannot pass this flag to `g_settings_bind_with_mapping()`.
    static let invert_boolean = G_SETTINGS_BIND_INVERT_BOOLEAN /* 16 */
}

/// Flags used in `g_socket_receive_message()` and `g_socket_send_message()`.
/// The flags listed in the enum are some commonly available flags, but the
/// values used for them are the same as on the platform, and any other flags
/// are passed in/out as is. So to use a platform specific flag, just include
/// the right system header and pass in the flag.
public typealias SocketMsgFlags = GSocketMsgFlags

public extension SocketMsgFlags {
    /// No flags.
    static let none_ = G_SOCKET_MSG_NONE /* 0 */
    /// Request to send/receive out of band data.
    static let oob = G_SOCKET_MSG_OOB /* 1 */
    /// Read data from the socket without removing it from
    ///     the queue.
    static let peek = G_SOCKET_MSG_PEEK /* 2 */
    /// Don't use a gateway to send out the packet,
    ///     only send to hosts on directly connected networks.
    static let dontroute = G_SOCKET_MSG_DONTROUTE /* 4 */
}

/// Flags to define the behaviour of a `GSubprocess`.
/// 
/// Note that the default for stdin is to redirect from `/dev/null`.  For
/// stdout and stderr the default are for them to inherit the
/// corresponding descriptor from the calling process.
/// 
/// Note that it is a programmer error to mix 'incompatible' flags.  For
/// example, you may not request both `G_SUBPROCESS_FLAGS_STDOUT_PIPE` and
/// `G_SUBPROCESS_FLAGS_STDOUT_SILENCE`.
public typealias SubprocessFlags = GSubprocessFlags

public extension SubprocessFlags {
    /// No flags.
    static let none_ = G_SUBPROCESS_FLAGS_NONE /* 0 */
    /// create a pipe for the stdin of the
    ///   spawned process that can be accessed with
    ///   `g_subprocess_get_stdin_pipe()`.
    static let stdin_pipe = G_SUBPROCESS_FLAGS_STDIN_PIPE /* 1 */
    /// stdin is inherited from the
    ///   calling process.
    static let stdin_inherit = G_SUBPROCESS_FLAGS_STDIN_INHERIT /* 2 */
    /// create a pipe for the stdout of the
    ///   spawned process that can be accessed with
    ///   `g_subprocess_get_stdout_pipe()`.
    static let stdout_pipe = G_SUBPROCESS_FLAGS_STDOUT_PIPE /* 4 */
    /// silence the stdout of the spawned
    ///   process (ie: redirect to `/dev/null`).
    static let stdout_silence = G_SUBPROCESS_FLAGS_STDOUT_SILENCE /* 8 */
    /// create a pipe for the stderr of the
    ///   spawned process that can be accessed with
    ///   `g_subprocess_get_stderr_pipe()`.
    static let stderr_pipe = G_SUBPROCESS_FLAGS_STDERR_PIPE /* 16 */
    /// silence the stderr of the spawned
    ///   process (ie: redirect to `/dev/null`).
    static let stderr_silence = G_SUBPROCESS_FLAGS_STDERR_SILENCE /* 32 */
    /// merge the stderr of the spawned
    ///   process with whatever the stdout happens to be.  This is a good way
    ///   of directing both streams to a common log file, for example.
    static let stderr_merge = G_SUBPROCESS_FLAGS_STDERR_MERGE /* 64 */
    /// spawned processes will inherit the
    ///   file descriptors of their parent, unless those descriptors have
    ///   been explicitly marked as close-on-exec.  This flag has no effect
    ///   over the "standard" file descriptors (stdin, stdout, stderr).
    static let inherit_fds = G_SUBPROCESS_FLAGS_INHERIT_FDS /* 128 */
}

/// Flags to define future `GTestDBus` behaviour.
public typealias TestDBusFlags = GTestDBusFlags

public extension TestDBusFlags {
    /// No flags.
    static let none_ = G_TEST_DBUS_NONE /* 0 */
}

/// A set of flags describing TLS certification validation. This can be
/// used to set which validation steps to perform (eg, with
/// `g_tls_client_connection_set_validation_flags()`), or to describe why
/// a particular certificate was rejected (eg, in
/// `GTlsConnection::accept`-certificate).
public typealias TLSCertificateFlags = GTlsCertificateFlags

public extension TLSCertificateFlags {
    /// The signing certificate authority is
    ///   not known.
    static let unknown_ca = G_TLS_CERTIFICATE_UNKNOWN_CA /* 1 */
    /// The certificate does not match the
    ///   expected identity of the site that it was retrieved from.
    static let bad_identity = G_TLS_CERTIFICATE_BAD_IDENTITY /* 2 */
    /// The certificate's activation time
    ///   is still in the future
    static let not_activated = G_TLS_CERTIFICATE_NOT_ACTIVATED /* 4 */
    /// The certificate has expired
    static let expired = G_TLS_CERTIFICATE_EXPIRED /* 8 */
    /// The certificate has been revoked
    ///   according to the `GTlsConnection`'s certificate revocation list.
    static let revoked = G_TLS_CERTIFICATE_REVOKED /* 16 */
    /// The certificate's algorithm is
    ///   considered insecure.
    static let insecure = G_TLS_CERTIFICATE_INSECURE /* 32 */
    /// Some other error occurred validating
    ///   the certificate
    static let generic_error = G_TLS_CERTIFICATE_GENERIC_ERROR /* 64 */
    /// the combination of all of the above
    ///   flags
    static let validate_all = G_TLS_CERTIFICATE_VALIDATE_ALL /* 127 */
}

/// Flags for `g_tls_database_verify_chain()`.
public typealias TLSDatabaseVerifyFlags = GTlsDatabaseVerifyFlags

public extension TLSDatabaseVerifyFlags {
    /// No verification flags
    static let none_ = G_TLS_DATABASE_VERIFY_NONE /* 0 */
}

/// Various flags for the password.
public typealias TLSPasswordFlags = GTlsPasswordFlags

public extension TLSPasswordFlags {
    /// No flags
    static let none_ = G_TLS_PASSWORD_NONE /* 0 */
    /// The password was wrong, and the user should retry.
    static let retry = G_TLS_PASSWORD_RETRY /* 2 */
    /// Hint to the user that the password has been
    ///    wrong many times, and the user may not have many chances left.
    static let many_tries = G_TLS_PASSWORD_MANY_TRIES /* 4 */
    /// Hint to the user that this is the last try to get
    ///    this password right.
    static let final_try = G_TLS_PASSWORD_FINAL_TRY /* 8 */
}
