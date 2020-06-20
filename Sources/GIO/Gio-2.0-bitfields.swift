import CGLib
import GLib
import GLibObject

/// Flags used when creating a `GAppInfo`.
public struct AppInfoCreateFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GAppInfoCreateFlags` enum value
    public var value: GAppInfoCreateFlags { get { GAppInfoCreateFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GAppInfoCreateFlags` enum value
    public init(_ enumValue: GAppInfoCreateFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No flags.
    public static let `none` = AppInfoCreateFlags(0) /* G_APP_INFO_CREATE_NONE */
    /// Application opens in a terminal window.
    public static let needsTerminal = AppInfoCreateFlags(1) /* G_APP_INFO_CREATE_NEEDS_TERMINAL */
    /// Application supports URI arguments.
    public static let supportsURIs = AppInfoCreateFlags(2) /* G_APP_INFO_CREATE_SUPPORTS_URIS */
    /// Application supports startup notification. Since 2.26
    public static let supportsStartupNotification = AppInfoCreateFlags(4) /* G_APP_INFO_CREATE_SUPPORTS_STARTUP_NOTIFICATION */

    /// No flags.
    @available(*, deprecated) public static let none_ = AppInfoCreateFlags(0) /* G_APP_INFO_CREATE_NONE */
    /// Application opens in a terminal window.
    @available(*, deprecated) public static let needs_terminal = AppInfoCreateFlags(1) /* G_APP_INFO_CREATE_NEEDS_TERMINAL */
    /// Application supports URI arguments.
    @available(*, deprecated) public static let supports_uris = AppInfoCreateFlags(2) /* G_APP_INFO_CREATE_SUPPORTS_URIS */
    /// Application supports startup notification. Since 2.26
    @available(*, deprecated) public static let supports_startup_notification = AppInfoCreateFlags(4) /* G_APP_INFO_CREATE_SUPPORTS_STARTUP_NOTIFICATION */
}
func cast<I: BinaryInteger>(_ param: I) -> AppInfoCreateFlags { AppInfoCreateFlags(rawValue: cast(param)) }
func cast(_ param: AppInfoCreateFlags) -> UInt32 { cast(param.rawValue) }


/// Flags used to define the behaviour of a `GApplication`.
public struct ApplicationFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GApplicationFlags` enum value
    public var value: GApplicationFlags { get { GApplicationFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GApplicationFlags` enum value
    public init(_ enumValue: GApplicationFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// Default
    public static let flagsNone = ApplicationFlags(0) /* G_APPLICATION_FLAGS_NONE */
    /// Run as a service. In this mode, registration
    ///      fails if the service is already running, and the application
    ///      will initially wait up to 10 seconds for an initial activation
    ///      message to arrive.
    public static let isService = ApplicationFlags(1) /* G_APPLICATION_IS_SERVICE */
    /// Don't try to become the primary instance.
    public static let isLauncher = ApplicationFlags(2) /* G_APPLICATION_IS_LAUNCHER */
    /// This application handles opening files (in
    ///     the primary instance). Note that this flag only affects the default
    ///     implementation of `local_command_line()`, and has no effect if
    ///     `G_APPLICATION_HANDLES_COMMAND_LINE` is given.
    ///     See `g_application_run()` for details.
    public static let handlesOpen = ApplicationFlags(4) /* G_APPLICATION_HANDLES_OPEN */
    /// This application handles command line
    ///     arguments (in the primary instance). Note that this flag only affect
    ///     the default implementation of `local_command_line()`.
    ///     See `g_application_run()` for details.
    public static let handlesCommandLine = ApplicationFlags(8) /* G_APPLICATION_HANDLES_COMMAND_LINE */
    /// Send the environment of the
    ///     launching process to the primary instance. Set this flag if your
    ///     application is expected to behave differently depending on certain
    ///     environment variables. For instance, an editor might be expected
    ///     to use the `GIT_COMMITTER_NAME` environment variable
    ///     when editing a git commit message. The environment is available
    ///     to the `GApplication::command`-line signal handler, via
    ///     `g_application_command_line_getenv()`.
    public static let sendEnvironment = ApplicationFlags(16) /* G_APPLICATION_SEND_ENVIRONMENT */
    /// Make no attempts to do any of the typical
    ///     single-instance application negotiation, even if the application
    ///     ID is given.  The application neither attempts to become the
    ///     owner of the application ID nor does it check if an existing
    ///     owner already exists.  Everything occurs in the local process.
    ///     Since: 2.30.
    public static let nonUnique = ApplicationFlags(32) /* G_APPLICATION_NON_UNIQUE */
    /// Allow users to override the
    ///     application ID from the command line with `--gapplication-app-id`.
    ///     Since: 2.48
    public static let canOverrideAppID = ApplicationFlags(64) /* G_APPLICATION_CAN_OVERRIDE_APP_ID */
    /// Allow another instance to take over
    ///     the bus name. Since: 2.60
    public static let allowReplacement = ApplicationFlags(128) /* G_APPLICATION_ALLOW_REPLACEMENT */
    /// Take over from another instance. This flag is
    ///     usually set by passing `--gapplication-replace` on the commandline.
    ///     Since: 2.60
    public static let replace = ApplicationFlags(256) /* G_APPLICATION_REPLACE */

    /// Default
    @available(*, deprecated) public static let flags_none = ApplicationFlags(0) /* G_APPLICATION_FLAGS_NONE */
    /// Run as a service. In this mode, registration
    ///      fails if the service is already running, and the application
    ///      will initially wait up to 10 seconds for an initial activation
    ///      message to arrive.
    @available(*, deprecated) public static let is_service = ApplicationFlags(1) /* G_APPLICATION_IS_SERVICE */
    /// Don't try to become the primary instance.
    @available(*, deprecated) public static let is_launcher = ApplicationFlags(2) /* G_APPLICATION_IS_LAUNCHER */
    /// This application handles opening files (in
    ///     the primary instance). Note that this flag only affects the default
    ///     implementation of `local_command_line()`, and has no effect if
    ///     `G_APPLICATION_HANDLES_COMMAND_LINE` is given.
    ///     See `g_application_run()` for details.
    @available(*, deprecated) public static let handles_open = ApplicationFlags(4) /* G_APPLICATION_HANDLES_OPEN */
    /// This application handles command line
    ///     arguments (in the primary instance). Note that this flag only affect
    ///     the default implementation of `local_command_line()`.
    ///     See `g_application_run()` for details.
    @available(*, deprecated) public static let handles_command_line = ApplicationFlags(8) /* G_APPLICATION_HANDLES_COMMAND_LINE */
    /// Send the environment of the
    ///     launching process to the primary instance. Set this flag if your
    ///     application is expected to behave differently depending on certain
    ///     environment variables. For instance, an editor might be expected
    ///     to use the `GIT_COMMITTER_NAME` environment variable
    ///     when editing a git commit message. The environment is available
    ///     to the `GApplication::command`-line signal handler, via
    ///     `g_application_command_line_getenv()`.
    @available(*, deprecated) public static let send_environment = ApplicationFlags(16) /* G_APPLICATION_SEND_ENVIRONMENT */
    /// Make no attempts to do any of the typical
    ///     single-instance application negotiation, even if the application
    ///     ID is given.  The application neither attempts to become the
    ///     owner of the application ID nor does it check if an existing
    ///     owner already exists.  Everything occurs in the local process.
    ///     Since: 2.30.
    @available(*, deprecated) public static let non_unique = ApplicationFlags(32) /* G_APPLICATION_NON_UNIQUE */
    /// Allow users to override the
    ///     application ID from the command line with `--gapplication-app-id`.
    ///     Since: 2.48
    @available(*, deprecated) public static let can_override_app_id = ApplicationFlags(64) /* G_APPLICATION_CAN_OVERRIDE_APP_ID */
    /// Allow another instance to take over
    ///     the bus name. Since: 2.60
    @available(*, deprecated) public static let allow_replacement = ApplicationFlags(128) /* G_APPLICATION_ALLOW_REPLACEMENT */
}
func cast<I: BinaryInteger>(_ param: I) -> ApplicationFlags { ApplicationFlags(rawValue: cast(param)) }
func cast(_ param: ApplicationFlags) -> UInt32 { cast(param.rawValue) }


/// `GAskPasswordFlags` are used to request specific information from the
/// user, or to notify the user of their choices in an authentication
/// situation.
public struct AskPasswordFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GAskPasswordFlags` enum value
    public var value: GAskPasswordFlags { get { GAskPasswordFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GAskPasswordFlags` enum value
    public init(_ enumValue: GAskPasswordFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// operation requires a password.
    public static let needPassword = AskPasswordFlags(1) /* G_ASK_PASSWORD_NEED_PASSWORD */
    /// operation requires a username.
    public static let needUsername = AskPasswordFlags(2) /* G_ASK_PASSWORD_NEED_USERNAME */
    /// operation requires a domain.
    public static let needDomain = AskPasswordFlags(4) /* G_ASK_PASSWORD_NEED_DOMAIN */
    /// operation supports saving settings.
    public static let savingSupported = AskPasswordFlags(8) /* G_ASK_PASSWORD_SAVING_SUPPORTED */
    /// operation supports anonymous users.
    public static let anonymousSupported = AskPasswordFlags(16) /* G_ASK_PASSWORD_ANONYMOUS_SUPPORTED */
    /// operation takes TCRYPT parameters (Since: 2.58)
    public static let tcrypt = AskPasswordFlags(32) /* G_ASK_PASSWORD_TCRYPT */

    /// operation requires a password.
    @available(*, deprecated) public static let need_password = AskPasswordFlags(1) /* G_ASK_PASSWORD_NEED_PASSWORD */
    /// operation requires a username.
    @available(*, deprecated) public static let need_username = AskPasswordFlags(2) /* G_ASK_PASSWORD_NEED_USERNAME */
    /// operation requires a domain.
    @available(*, deprecated) public static let need_domain = AskPasswordFlags(4) /* G_ASK_PASSWORD_NEED_DOMAIN */
    /// operation supports saving settings.
    @available(*, deprecated) public static let saving_supported = AskPasswordFlags(8) /* G_ASK_PASSWORD_SAVING_SUPPORTED */
    /// operation supports anonymous users.
    @available(*, deprecated) public static let anonymous_supported = AskPasswordFlags(16) /* G_ASK_PASSWORD_ANONYMOUS_SUPPORTED */
}
func cast<I: BinaryInteger>(_ param: I) -> AskPasswordFlags { AskPasswordFlags(rawValue: cast(param)) }
func cast(_ param: AskPasswordFlags) -> UInt32 { cast(param.rawValue) }


/// Flags used in `g_bus_own_name()`.
public struct BusNameOwnerFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GBusNameOwnerFlags` enum value
    public var value: GBusNameOwnerFlags { get { GBusNameOwnerFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GBusNameOwnerFlags` enum value
    public init(_ enumValue: GBusNameOwnerFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No flags set.
    public static let `none` = BusNameOwnerFlags(0) /* G_BUS_NAME_OWNER_FLAGS_NONE */
    /// Allow another message bus connection to claim the name.
    public static let allowReplacement = BusNameOwnerFlags(1) /* G_BUS_NAME_OWNER_FLAGS_ALLOW_REPLACEMENT */
    /// If another message bus connection owns the name and have
    /// specified `G_BUS_NAME_OWNER_FLAGS_ALLOW_REPLACEMENT`, then take the name from the other connection.
    public static let replace = BusNameOwnerFlags(2) /* G_BUS_NAME_OWNER_FLAGS_REPLACE */
    /// If another message bus connection owns the name, immediately
    /// return an error from `g_bus_own_name()` rather than entering the waiting queue for that name. (Since 2.54)
    public static let doNotQueue = BusNameOwnerFlags(4) /* G_BUS_NAME_OWNER_FLAGS_DO_NOT_QUEUE */

    /// No flags set.
    @available(*, deprecated) public static let none_ = BusNameOwnerFlags(0) /* G_BUS_NAME_OWNER_FLAGS_NONE */
    /// Allow another message bus connection to claim the name.
    @available(*, deprecated) public static let allow_replacement = BusNameOwnerFlags(1) /* G_BUS_NAME_OWNER_FLAGS_ALLOW_REPLACEMENT */
    /// If another message bus connection owns the name, immediately
    /// return an error from `g_bus_own_name()` rather than entering the waiting queue for that name. (Since 2.54)
    @available(*, deprecated) public static let do_not_queue = BusNameOwnerFlags(4) /* G_BUS_NAME_OWNER_FLAGS_DO_NOT_QUEUE */
}
func cast<I: BinaryInteger>(_ param: I) -> BusNameOwnerFlags { BusNameOwnerFlags(rawValue: cast(param)) }
func cast(_ param: BusNameOwnerFlags) -> UInt32 { cast(param.rawValue) }


/// Flags used in `g_bus_watch_name()`.
public struct BusNameWatcherFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GBusNameWatcherFlags` enum value
    public var value: GBusNameWatcherFlags { get { GBusNameWatcherFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GBusNameWatcherFlags` enum value
    public init(_ enumValue: GBusNameWatcherFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No flags set.
    public static let `none` = BusNameWatcherFlags(0) /* G_BUS_NAME_WATCHER_FLAGS_NONE */
    /// If no-one owns the name when
    /// beginning to watch the name, ask the bus to launch an owner for the
    /// name.
    public static let autoStart = BusNameWatcherFlags(1) /* G_BUS_NAME_WATCHER_FLAGS_AUTO_START */

    /// No flags set.
    @available(*, deprecated) public static let none_ = BusNameWatcherFlags(0) /* G_BUS_NAME_WATCHER_FLAGS_NONE */
    /// If no-one owns the name when
    /// beginning to watch the name, ask the bus to launch an owner for the
    /// name.
    @available(*, deprecated) public static let auto_start = BusNameWatcherFlags(1) /* G_BUS_NAME_WATCHER_FLAGS_AUTO_START */
}
func cast<I: BinaryInteger>(_ param: I) -> BusNameWatcherFlags { BusNameWatcherFlags(rawValue: cast(param)) }
func cast(_ param: BusNameWatcherFlags) -> UInt32 { cast(param.rawValue) }


/// Flags used when calling a `g_converter_convert()`.
public struct ConverterFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GConverterFlags` enum value
    public var value: GConverterFlags { get { GConverterFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GConverterFlags` enum value
    public init(_ enumValue: GConverterFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No flags.
    public static let `none` = ConverterFlags(0) /* G_CONVERTER_NO_FLAGS */
    /// At end of input data
    public static let inputAtEnd = ConverterFlags(1) /* G_CONVERTER_INPUT_AT_END */
    /// Flush data
    public static let flush = ConverterFlags(2) /* G_CONVERTER_FLUSH */

    /// No flags.
    @available(*, deprecated) public static let none_ = ConverterFlags(0) /* G_CONVERTER_NO_FLAGS */
    /// At end of input data
    @available(*, deprecated) public static let input_at_end = ConverterFlags(1) /* G_CONVERTER_INPUT_AT_END */
}
func cast<I: BinaryInteger>(_ param: I) -> ConverterFlags { ConverterFlags(rawValue: cast(param)) }
func cast(_ param: ConverterFlags) -> UInt32 { cast(param.rawValue) }


/// Flags used in `g_dbus_connection_call()` and similar APIs.
public struct DBusCallFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GDBusCallFlags` enum value
    public var value: GDBusCallFlags { get { GDBusCallFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GDBusCallFlags` enum value
    public init(_ enumValue: GDBusCallFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No flags set.
    public static let `none` = DBusCallFlags(0) /* G_DBUS_CALL_FLAGS_NONE */
    /// The bus must not launch
    /// an owner for the destination name in response to this method
    /// invocation.
    public static let noAutoStart = DBusCallFlags(1) /* G_DBUS_CALL_FLAGS_NO_AUTO_START */
    /// the caller is prepared to
    /// wait for interactive authorization. Since 2.46.
    public static let allowInteractiveAuthorization = DBusCallFlags(2) /* G_DBUS_CALL_FLAGS_ALLOW_INTERACTIVE_AUTHORIZATION */

    /// No flags set.
    @available(*, deprecated) public static let none_ = DBusCallFlags(0) /* G_DBUS_CALL_FLAGS_NONE */
    /// The bus must not launch
    /// an owner for the destination name in response to this method
    /// invocation.
    @available(*, deprecated) public static let no_auto_start = DBusCallFlags(1) /* G_DBUS_CALL_FLAGS_NO_AUTO_START */
    /// the caller is prepared to
    /// wait for interactive authorization. Since 2.46.
    @available(*, deprecated) public static let allow_interactive_authorization = DBusCallFlags(2) /* G_DBUS_CALL_FLAGS_ALLOW_INTERACTIVE_AUTHORIZATION */
}
func cast<I: BinaryInteger>(_ param: I) -> DBusCallFlags { DBusCallFlags(rawValue: cast(param)) }
func cast(_ param: DBusCallFlags) -> UInt32 { cast(param.rawValue) }


/// Capabilities negotiated with the remote peer.
public struct DBusCapabilityFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GDBusCapabilityFlags` enum value
    public var value: GDBusCapabilityFlags { get { GDBusCapabilityFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GDBusCapabilityFlags` enum value
    public init(_ enumValue: GDBusCapabilityFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No flags set.
    public static let `none` = DBusCapabilityFlags(0) /* G_DBUS_CAPABILITY_FLAGS_NONE */
    /// The connection
    /// supports exchanging UNIX file descriptors with the remote peer.
    public static let unixFdPassing = DBusCapabilityFlags(1) /* G_DBUS_CAPABILITY_FLAGS_UNIX_FD_PASSING */

    /// No flags set.
    @available(*, deprecated) public static let none_ = DBusCapabilityFlags(0) /* G_DBUS_CAPABILITY_FLAGS_NONE */
    /// The connection
    /// supports exchanging UNIX file descriptors with the remote peer.
    @available(*, deprecated) public static let unix_fd_passing = DBusCapabilityFlags(1) /* G_DBUS_CAPABILITY_FLAGS_UNIX_FD_PASSING */
}
func cast<I: BinaryInteger>(_ param: I) -> DBusCapabilityFlags { DBusCapabilityFlags(rawValue: cast(param)) }
func cast(_ param: DBusCapabilityFlags) -> UInt32 { cast(param.rawValue) }


/// Flags used when creating a new `GDBusConnection`.
public struct DBusConnectionFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GDBusConnectionFlags` enum value
    public var value: GDBusConnectionFlags { get { GDBusConnectionFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GDBusConnectionFlags` enum value
    public init(_ enumValue: GDBusConnectionFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No flags set.
    public static let `none` = DBusConnectionFlags(0) /* G_DBUS_CONNECTION_FLAGS_NONE */
    /// Perform authentication against server.
    public static let authenticationClient = DBusConnectionFlags(1) /* G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_CLIENT */
    /// Perform authentication against client.
    public static let authenticationServer = DBusConnectionFlags(2) /* G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_SERVER */
    /// When
    /// authenticating as a server, allow the anonymous authentication
    /// method.
    public static let authenticationAllowAnonymous = DBusConnectionFlags(4) /* G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_ALLOW_ANONYMOUS */
    /// Pass this flag if connecting to a peer that is a
    /// message bus. This means that the `Hello()` method will be invoked as part of the connection setup.
    public static let messageBusConnection = DBusConnectionFlags(8) /* G_DBUS_CONNECTION_FLAGS_MESSAGE_BUS_CONNECTION */
    /// If set, processing of D-Bus messages is
    /// delayed until `g_dbus_connection_start_message_processing()` is called.
    public static let delayMessageProcessing = DBusConnectionFlags(16) /* G_DBUS_CONNECTION_FLAGS_DELAY_MESSAGE_PROCESSING */

    /// No flags set.
    @available(*, deprecated) public static let none_ = DBusConnectionFlags(0) /* G_DBUS_CONNECTION_FLAGS_NONE */
    /// Perform authentication against server.
    @available(*, deprecated) public static let authentication_client = DBusConnectionFlags(1) /* G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_CLIENT */
    /// Perform authentication against client.
    @available(*, deprecated) public static let authentication_server = DBusConnectionFlags(2) /* G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_SERVER */
    /// When
    /// authenticating as a server, allow the anonymous authentication
    /// method.
    @available(*, deprecated) public static let authentication_allow_anonymous = DBusConnectionFlags(4) /* G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_ALLOW_ANONYMOUS */
    /// Pass this flag if connecting to a peer that is a
    /// message bus. This means that the `Hello()` method will be invoked as part of the connection setup.
    @available(*, deprecated) public static let message_bus_connection = DBusConnectionFlags(8) /* G_DBUS_CONNECTION_FLAGS_MESSAGE_BUS_CONNECTION */
    /// If set, processing of D-Bus messages is
    /// delayed until `g_dbus_connection_start_message_processing()` is called.
    @available(*, deprecated) public static let delay_message_processing = DBusConnectionFlags(16) /* G_DBUS_CONNECTION_FLAGS_DELAY_MESSAGE_PROCESSING */
}
func cast<I: BinaryInteger>(_ param: I) -> DBusConnectionFlags { DBusConnectionFlags(rawValue: cast(param)) }
func cast(_ param: DBusConnectionFlags) -> UInt32 { cast(param.rawValue) }


/// Flags describing the behavior of a `GDBusInterfaceSkeleton` instance.
public struct DBusInterfaceSkeletonFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GDBusInterfaceSkeletonFlags` enum value
    public var value: GDBusInterfaceSkeletonFlags { get { GDBusInterfaceSkeletonFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GDBusInterfaceSkeletonFlags` enum value
    public init(_ enumValue: GDBusInterfaceSkeletonFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No flags set.
    public static let `none` = DBusInterfaceSkeletonFlags(0) /* G_DBUS_INTERFACE_SKELETON_FLAGS_NONE */
    /// Each method invocation is handled in
    ///   a thread dedicated to the invocation. This means that the method implementation can use blocking IO
    ///   without blocking any other part of the process. It also means that the method implementation must
    ///   use locking to access data structures used by other threads.
    public static let handleMethodInvocationsInThread = DBusInterfaceSkeletonFlags(1) /* G_DBUS_INTERFACE_SKELETON_FLAGS_HANDLE_METHOD_INVOCATIONS_IN_THREAD */

    /// No flags set.
    @available(*, deprecated) public static let none_ = DBusInterfaceSkeletonFlags(0) /* G_DBUS_INTERFACE_SKELETON_FLAGS_NONE */
    /// Each method invocation is handled in
    ///   a thread dedicated to the invocation. This means that the method implementation can use blocking IO
    ///   without blocking any other part of the process. It also means that the method implementation must
    ///   use locking to access data structures used by other threads.
    @available(*, deprecated) public static let handle_method_invocations_in_thread = DBusInterfaceSkeletonFlags(1) /* G_DBUS_INTERFACE_SKELETON_FLAGS_HANDLE_METHOD_INVOCATIONS_IN_THREAD */
}
func cast<I: BinaryInteger>(_ param: I) -> DBusInterfaceSkeletonFlags { DBusInterfaceSkeletonFlags(rawValue: cast(param)) }
func cast(_ param: DBusInterfaceSkeletonFlags) -> UInt32 { cast(param.rawValue) }


/// Message flags used in `GDBusMessage`.
public struct DBusMessageFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GDBusMessageFlags` enum value
    public var value: GDBusMessageFlags { get { GDBusMessageFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GDBusMessageFlags` enum value
    public init(_ enumValue: GDBusMessageFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No flags set.
    public static let `none` = DBusMessageFlags(0) /* G_DBUS_MESSAGE_FLAGS_NONE */
    /// A reply is not expected.
    public static let noReplyExpected = DBusMessageFlags(1) /* G_DBUS_MESSAGE_FLAGS_NO_REPLY_EXPECTED */
    /// The bus must not launch an
    /// owner for the destination name in response to this message.
    public static let noAutoStart = DBusMessageFlags(2) /* G_DBUS_MESSAGE_FLAGS_NO_AUTO_START */
    /// If set on a method
    /// call, this flag means that the caller is prepared to wait for interactive
    /// authorization. Since 2.46.
    public static let allowInteractiveAuthorization = DBusMessageFlags(4) /* G_DBUS_MESSAGE_FLAGS_ALLOW_INTERACTIVE_AUTHORIZATION */

    /// No flags set.
    @available(*, deprecated) public static let none_ = DBusMessageFlags(0) /* G_DBUS_MESSAGE_FLAGS_NONE */
    /// A reply is not expected.
    @available(*, deprecated) public static let no_reply_expected = DBusMessageFlags(1) /* G_DBUS_MESSAGE_FLAGS_NO_REPLY_EXPECTED */
    /// The bus must not launch an
    /// owner for the destination name in response to this message.
    @available(*, deprecated) public static let no_auto_start = DBusMessageFlags(2) /* G_DBUS_MESSAGE_FLAGS_NO_AUTO_START */
    /// If set on a method
    /// call, this flag means that the caller is prepared to wait for interactive
    /// authorization. Since 2.46.
    @available(*, deprecated) public static let allow_interactive_authorization = DBusMessageFlags(4) /* G_DBUS_MESSAGE_FLAGS_ALLOW_INTERACTIVE_AUTHORIZATION */
}
func cast<I: BinaryInteger>(_ param: I) -> DBusMessageFlags { DBusMessageFlags(rawValue: cast(param)) }
func cast(_ param: DBusMessageFlags) -> UInt32 { cast(param.rawValue) }


/// Flags used when constructing a `GDBusObjectManagerClient`.
public struct DBusObjectManagerClientFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GDBusObjectManagerClientFlags` enum value
    public var value: GDBusObjectManagerClientFlags { get { GDBusObjectManagerClientFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GDBusObjectManagerClientFlags` enum value
    public init(_ enumValue: GDBusObjectManagerClientFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No flags set.
    public static let `none` = DBusObjectManagerClientFlags(0) /* G_DBUS_OBJECT_MANAGER_CLIENT_FLAGS_NONE */
    /// If not set and the
    ///   manager is for a well-known name, then request the bus to launch
    ///   an owner for the name if no-one owns the name. This flag can only
    ///   be used in managers for well-known names.
    public static let doNotAutoStart = DBusObjectManagerClientFlags(1) /* G_DBUS_OBJECT_MANAGER_CLIENT_FLAGS_DO_NOT_AUTO_START */

    /// No flags set.
    @available(*, deprecated) public static let none_ = DBusObjectManagerClientFlags(0) /* G_DBUS_OBJECT_MANAGER_CLIENT_FLAGS_NONE */
    /// If not set and the
    ///   manager is for a well-known name, then request the bus to launch
    ///   an owner for the name if no-one owns the name. This flag can only
    ///   be used in managers for well-known names.
    @available(*, deprecated) public static let do_not_auto_start = DBusObjectManagerClientFlags(1) /* G_DBUS_OBJECT_MANAGER_CLIENT_FLAGS_DO_NOT_AUTO_START */
}
func cast<I: BinaryInteger>(_ param: I) -> DBusObjectManagerClientFlags { DBusObjectManagerClientFlags(rawValue: cast(param)) }
func cast(_ param: DBusObjectManagerClientFlags) -> UInt32 { cast(param.rawValue) }


/// Flags describing the access control of a D-Bus property.
public struct DBusPropertyInfoFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GDBusPropertyInfoFlags` enum value
    public var value: GDBusPropertyInfoFlags { get { GDBusPropertyInfoFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GDBusPropertyInfoFlags` enum value
    public init(_ enumValue: GDBusPropertyInfoFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No flags set.
    public static let `none` = DBusPropertyInfoFlags(0) /* G_DBUS_PROPERTY_INFO_FLAGS_NONE */
    /// Property is readable.
    public static let readable = DBusPropertyInfoFlags(1) /* G_DBUS_PROPERTY_INFO_FLAGS_READABLE */
    /// Property is writable.
    public static let writable = DBusPropertyInfoFlags(2) /* G_DBUS_PROPERTY_INFO_FLAGS_WRITABLE */

    /// No flags set.
    @available(*, deprecated) public static let none_ = DBusPropertyInfoFlags(0) /* G_DBUS_PROPERTY_INFO_FLAGS_NONE */
}
func cast<I: BinaryInteger>(_ param: I) -> DBusPropertyInfoFlags { DBusPropertyInfoFlags(rawValue: cast(param)) }
func cast(_ param: DBusPropertyInfoFlags) -> UInt32 { cast(param.rawValue) }


/// Flags used when constructing an instance of a `GDBusProxy` derived class.
public struct DBusProxyFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GDBusProxyFlags` enum value
    public var value: GDBusProxyFlags { get { GDBusProxyFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GDBusProxyFlags` enum value
    public init(_ enumValue: GDBusProxyFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No flags set.
    public static let `none` = DBusProxyFlags(0) /* G_DBUS_PROXY_FLAGS_NONE */
    /// Don't load properties.
    public static let doNotLoadProperties = DBusProxyFlags(1) /* G_DBUS_PROXY_FLAGS_DO_NOT_LOAD_PROPERTIES */
    /// Don't connect to signals on the remote object.
    public static let doNotConnectSignals = DBusProxyFlags(2) /* G_DBUS_PROXY_FLAGS_DO_NOT_CONNECT_SIGNALS */
    /// If the proxy is for a well-known name,
    /// do not ask the bus to launch an owner during proxy initialization or a method call.
    /// This flag is only meaningful in proxies for well-known names.
    public static let doNotAutoStart = DBusProxyFlags(4) /* G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START */
    /// If set, the property value for any __invalidated property__ will be (asynchronously) retrieved upon receiving the [`PropertiesChanged`](http://dbus.freedesktop.org/doc/dbus-specification.html`standard`-interfaces-properties) D-Bus signal and the property will not cause emission of the `GDBusProxy::g`-properties-changed signal. When the value is received the `GDBusProxy::g`-properties-changed signal is emitted for the property along with the retrieved value. Since 2.32.
    public static let getInvalidatedProperties = DBusProxyFlags(8) /* G_DBUS_PROXY_FLAGS_GET_INVALIDATED_PROPERTIES */
    /// If the proxy is for a well-known name,
    /// do not ask the bus to launch an owner during proxy initialization, but allow it to be
    /// autostarted by a method call. This flag is only meaningful in proxies for well-known names,
    /// and only if `G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START` is not also specified.
    public static let doNotAutoStartAtConstruction = DBusProxyFlags(16) /* G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START_AT_CONSTRUCTION */

    /// No flags set.
    @available(*, deprecated) public static let none_ = DBusProxyFlags(0) /* G_DBUS_PROXY_FLAGS_NONE */
    /// Don't load properties.
    @available(*, deprecated) public static let do_not_load_properties = DBusProxyFlags(1) /* G_DBUS_PROXY_FLAGS_DO_NOT_LOAD_PROPERTIES */
    /// Don't connect to signals on the remote object.
    @available(*, deprecated) public static let do_not_connect_signals = DBusProxyFlags(2) /* G_DBUS_PROXY_FLAGS_DO_NOT_CONNECT_SIGNALS */
    /// If the proxy is for a well-known name,
    /// do not ask the bus to launch an owner during proxy initialization or a method call.
    /// This flag is only meaningful in proxies for well-known names.
    @available(*, deprecated) public static let do_not_auto_start = DBusProxyFlags(4) /* G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START */
    /// If set, the property value for any __invalidated property__ will be (asynchronously) retrieved upon receiving the [`PropertiesChanged`](http://dbus.freedesktop.org/doc/dbus-specification.html`standard`-interfaces-properties) D-Bus signal and the property will not cause emission of the `GDBusProxy::g`-properties-changed signal. When the value is received the `GDBusProxy::g`-properties-changed signal is emitted for the property along with the retrieved value. Since 2.32.
    @available(*, deprecated) public static let get_invalidated_properties = DBusProxyFlags(8) /* G_DBUS_PROXY_FLAGS_GET_INVALIDATED_PROPERTIES */
    /// If the proxy is for a well-known name,
    /// do not ask the bus to launch an owner during proxy initialization, but allow it to be
    /// autostarted by a method call. This flag is only meaningful in proxies for well-known names,
    /// and only if `G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START` is not also specified.
    @available(*, deprecated) public static let do_not_auto_start_at_construction = DBusProxyFlags(16) /* G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START_AT_CONSTRUCTION */
}
func cast<I: BinaryInteger>(_ param: I) -> DBusProxyFlags { DBusProxyFlags(rawValue: cast(param)) }
func cast(_ param: DBusProxyFlags) -> UInt32 { cast(param.rawValue) }


/// Flags used when sending `GDBusMessages` on a `GDBusConnection`.
public struct DBusSendMessageFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GDBusSendMessageFlags` enum value
    public var value: GDBusSendMessageFlags { get { GDBusSendMessageFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GDBusSendMessageFlags` enum value
    public init(_ enumValue: GDBusSendMessageFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No flags set.
    public static let `none` = DBusSendMessageFlags(0) /* G_DBUS_SEND_MESSAGE_FLAGS_NONE */
    /// Do not automatically
    /// assign a serial number from the `GDBusConnection` object when
    /// sending a message.
    public static let preserveSerial = DBusSendMessageFlags(1) /* G_DBUS_SEND_MESSAGE_FLAGS_PRESERVE_SERIAL */

    /// No flags set.
    @available(*, deprecated) public static let none_ = DBusSendMessageFlags(0) /* G_DBUS_SEND_MESSAGE_FLAGS_NONE */
    /// Do not automatically
    /// assign a serial number from the `GDBusConnection` object when
    /// sending a message.
    @available(*, deprecated) public static let preserve_serial = DBusSendMessageFlags(1) /* G_DBUS_SEND_MESSAGE_FLAGS_PRESERVE_SERIAL */
}
func cast<I: BinaryInteger>(_ param: I) -> DBusSendMessageFlags { DBusSendMessageFlags(rawValue: cast(param)) }
func cast(_ param: DBusSendMessageFlags) -> UInt32 { cast(param.rawValue) }


/// Flags used when creating a `GDBusServer`.
public struct DBusServerFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GDBusServerFlags` enum value
    public var value: GDBusServerFlags { get { GDBusServerFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GDBusServerFlags` enum value
    public init(_ enumValue: GDBusServerFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No flags set.
    public static let `none` = DBusServerFlags(0) /* G_DBUS_SERVER_FLAGS_NONE */
    /// All `GDBusServer::new`-connection
    /// signals will run in separated dedicated threads (see signal for
    /// details).
    public static let runInThread = DBusServerFlags(1) /* G_DBUS_SERVER_FLAGS_RUN_IN_THREAD */
    /// Allow the anonymous
    /// authentication method.
    public static let authenticationAllowAnonymous = DBusServerFlags(2) /* G_DBUS_SERVER_FLAGS_AUTHENTICATION_ALLOW_ANONYMOUS */

    /// No flags set.
    @available(*, deprecated) public static let none_ = DBusServerFlags(0) /* G_DBUS_SERVER_FLAGS_NONE */
    /// All `GDBusServer::new`-connection
    /// signals will run in separated dedicated threads (see signal for
    /// details).
    @available(*, deprecated) public static let run_in_thread = DBusServerFlags(1) /* G_DBUS_SERVER_FLAGS_RUN_IN_THREAD */
    /// Allow the anonymous
    /// authentication method.
    @available(*, deprecated) public static let authentication_allow_anonymous = DBusServerFlags(2) /* G_DBUS_SERVER_FLAGS_AUTHENTICATION_ALLOW_ANONYMOUS */
}
func cast<I: BinaryInteger>(_ param: I) -> DBusServerFlags { DBusServerFlags(rawValue: cast(param)) }
func cast(_ param: DBusServerFlags) -> UInt32 { cast(param.rawValue) }


/// Flags used when subscribing to signals via `g_dbus_connection_signal_subscribe()`.
public struct DBusSignalFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GDBusSignalFlags` enum value
    public var value: GDBusSignalFlags { get { GDBusSignalFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GDBusSignalFlags` enum value
    public init(_ enumValue: GDBusSignalFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No flags set.
    public static let `none` = DBusSignalFlags(0) /* G_DBUS_SIGNAL_FLAGS_NONE */
    /// Don't actually send the AddMatch
    /// D-Bus call for this signal subscription.  This gives you more control
    /// over which match rules you add (but you must add them manually).
    public static let noMatchRule = DBusSignalFlags(1) /* G_DBUS_SIGNAL_FLAGS_NO_MATCH_RULE */
    /// Match first arguments that
    /// contain a bus or interface name with the given namespace.
    public static let matchArg0Namespace = DBusSignalFlags(2) /* G_DBUS_SIGNAL_FLAGS_MATCH_ARG0_NAMESPACE */
    /// Match first arguments that
    /// contain an object path that is either equivalent to the given path,
    /// or one of the paths is a subpath of the other.
    public static let matchArg0Path = DBusSignalFlags(4) /* G_DBUS_SIGNAL_FLAGS_MATCH_ARG0_PATH */

    /// No flags set.
    @available(*, deprecated) public static let none_ = DBusSignalFlags(0) /* G_DBUS_SIGNAL_FLAGS_NONE */
    /// Don't actually send the AddMatch
    /// D-Bus call for this signal subscription.  This gives you more control
    /// over which match rules you add (but you must add them manually).
    @available(*, deprecated) public static let no_match_rule = DBusSignalFlags(1) /* G_DBUS_SIGNAL_FLAGS_NO_MATCH_RULE */
    /// Match first arguments that
    /// contain a bus or interface name with the given namespace.
    @available(*, deprecated) public static let match_arg0_namespace = DBusSignalFlags(2) /* G_DBUS_SIGNAL_FLAGS_MATCH_ARG0_NAMESPACE */
    /// Match first arguments that
    /// contain an object path that is either equivalent to the given path,
    /// or one of the paths is a subpath of the other.
    @available(*, deprecated) public static let match_arg0_path = DBusSignalFlags(4) /* G_DBUS_SIGNAL_FLAGS_MATCH_ARG0_PATH */
}
func cast<I: BinaryInteger>(_ param: I) -> DBusSignalFlags { DBusSignalFlags(rawValue: cast(param)) }
func cast(_ param: DBusSignalFlags) -> UInt32 { cast(param.rawValue) }


/// Flags passed to `g_dbus_connection_register_subtree()`.
public struct DBusSubtreeFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GDBusSubtreeFlags` enum value
    public var value: GDBusSubtreeFlags { get { GDBusSubtreeFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GDBusSubtreeFlags` enum value
    public init(_ enumValue: GDBusSubtreeFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No flags set.
    public static let `none` = DBusSubtreeFlags(0) /* G_DBUS_SUBTREE_FLAGS_NONE */
    /// Method calls to objects not in the enumerated range
    ///                                                       will still be dispatched. This is useful if you want
    ///                                                       to dynamically spawn objects in the subtree.
    public static let dispatchToUnenumeratedNodes = DBusSubtreeFlags(1) /* G_DBUS_SUBTREE_FLAGS_DISPATCH_TO_UNENUMERATED_NODES */

    /// No flags set.
    @available(*, deprecated) public static let none_ = DBusSubtreeFlags(0) /* G_DBUS_SUBTREE_FLAGS_NONE */
    /// Method calls to objects not in the enumerated range
    ///                                                       will still be dispatched. This is useful if you want
    ///                                                       to dynamically spawn objects in the subtree.
    @available(*, deprecated) public static let dispatch_to_unenumerated_nodes = DBusSubtreeFlags(1) /* G_DBUS_SUBTREE_FLAGS_DISPATCH_TO_UNENUMERATED_NODES */
}
func cast<I: BinaryInteger>(_ param: I) -> DBusSubtreeFlags { DBusSubtreeFlags(rawValue: cast(param)) }
func cast(_ param: DBusSubtreeFlags) -> UInt32 { cast(param.rawValue) }


/// Flags used when starting a drive.
public struct DriveStartFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GDriveStartFlags` enum value
    public var value: GDriveStartFlags { get { GDriveStartFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GDriveStartFlags` enum value
    public init(_ enumValue: GDriveStartFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No flags set.
    public static let `none` = DriveStartFlags(0) /* G_DRIVE_START_NONE */

    /// No flags set.
    @available(*, deprecated) public static let none_ = DriveStartFlags(0) /* G_DRIVE_START_NONE */
}
func cast<I: BinaryInteger>(_ param: I) -> DriveStartFlags { DriveStartFlags(rawValue: cast(param)) }
func cast(_ param: DriveStartFlags) -> UInt32 { cast(param.rawValue) }


/// Flags specifying the behaviour of an attribute.
public struct FileAttributeInfoFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GFileAttributeInfoFlags` enum value
    public var value: GFileAttributeInfoFlags { get { GFileAttributeInfoFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GFileAttributeInfoFlags` enum value
    public init(_ enumValue: GFileAttributeInfoFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// no flags set.
    public static let `none` = FileAttributeInfoFlags(0) /* G_FILE_ATTRIBUTE_INFO_NONE */
    /// copy the attribute values when the file is copied.
    public static let copyWithFile = FileAttributeInfoFlags(1) /* G_FILE_ATTRIBUTE_INFO_COPY_WITH_FILE */
    /// copy the attribute values when the file is moved.
    public static let copyWhenMoved = FileAttributeInfoFlags(2) /* G_FILE_ATTRIBUTE_INFO_COPY_WHEN_MOVED */

    /// no flags set.
    @available(*, deprecated) public static let none_ = FileAttributeInfoFlags(0) /* G_FILE_ATTRIBUTE_INFO_NONE */
    /// copy the attribute values when the file is copied.
    @available(*, deprecated) public static let copy_with_file = FileAttributeInfoFlags(1) /* G_FILE_ATTRIBUTE_INFO_COPY_WITH_FILE */
    /// copy the attribute values when the file is moved.
    @available(*, deprecated) public static let copy_when_moved = FileAttributeInfoFlags(2) /* G_FILE_ATTRIBUTE_INFO_COPY_WHEN_MOVED */
}
func cast<I: BinaryInteger>(_ param: I) -> FileAttributeInfoFlags { FileAttributeInfoFlags(rawValue: cast(param)) }
func cast(_ param: FileAttributeInfoFlags) -> UInt32 { cast(param.rawValue) }


/// Flags used when copying or moving files.
public struct FileCopyFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GFileCopyFlags` enum value
    public var value: GFileCopyFlags { get { GFileCopyFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GFileCopyFlags` enum value
    public init(_ enumValue: GFileCopyFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No flags set.
    public static let `none` = FileCopyFlags(0) /* G_FILE_COPY_NONE */
    /// Overwrite any existing files
    public static let overwrite = FileCopyFlags(1) /* G_FILE_COPY_OVERWRITE */
    /// Make a backup of any existing files.
    public static let backup = FileCopyFlags(2) /* G_FILE_COPY_BACKUP */
    /// Don't follow symlinks.
    public static let nofollowSymlinks = FileCopyFlags(4) /* G_FILE_COPY_NOFOLLOW_SYMLINKS */
    /// Copy all file metadata instead of just default set used for copy (see `GFileInfo`).
    public static let allMetadata = FileCopyFlags(8) /* G_FILE_COPY_ALL_METADATA */
    /// Don't use copy and delete fallback if native move not supported.
    public static let noFallbackForMove = FileCopyFlags(16) /* G_FILE_COPY_NO_FALLBACK_FOR_MOVE */
    /// Leaves target file with default perms, instead of setting the source file perms.
    public static let targetDefaultPerms = FileCopyFlags(32) /* G_FILE_COPY_TARGET_DEFAULT_PERMS */

    /// No flags set.
    @available(*, deprecated) public static let none_ = FileCopyFlags(0) /* G_FILE_COPY_NONE */
    /// Don't follow symlinks.
    @available(*, deprecated) public static let nofollow_symlinks = FileCopyFlags(4) /* G_FILE_COPY_NOFOLLOW_SYMLINKS */
    /// Copy all file metadata instead of just default set used for copy (see `GFileInfo`).
    @available(*, deprecated) public static let all_metadata = FileCopyFlags(8) /* G_FILE_COPY_ALL_METADATA */
    /// Don't use copy and delete fallback if native move not supported.
    @available(*, deprecated) public static let no_fallback_for_move = FileCopyFlags(16) /* G_FILE_COPY_NO_FALLBACK_FOR_MOVE */
    /// Leaves target file with default perms, instead of setting the source file perms.
    @available(*, deprecated) public static let target_default_perms = FileCopyFlags(32) /* G_FILE_COPY_TARGET_DEFAULT_PERMS */
}
func cast<I: BinaryInteger>(_ param: I) -> FileCopyFlags { FileCopyFlags(rawValue: cast(param)) }
func cast(_ param: FileCopyFlags) -> UInt32 { cast(param.rawValue) }


/// Flags used when an operation may create a file.
public struct FileCreateFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GFileCreateFlags` enum value
    public var value: GFileCreateFlags { get { GFileCreateFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GFileCreateFlags` enum value
    public init(_ enumValue: GFileCreateFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No flags set.
    public static let `none` = FileCreateFlags(0) /* G_FILE_CREATE_NONE */
    /// Create a file that can only be
    ///    accessed by the current user.
    public static let `private` = FileCreateFlags(1) /* G_FILE_CREATE_PRIVATE */
    /// Replace the destination
    ///    as if it didn't exist before. Don't try to keep any old
    ///    permissions, replace instead of following links. This
    ///    is generally useful if you're doing a "copy over"
    ///    rather than a "save new version of" replace operation.
    ///    You can think of it as "unlink destination" before
    ///    writing to it, although the implementation may not
    ///    be exactly like that. Since 2.20
    public static let replaceDestination = FileCreateFlags(2) /* G_FILE_CREATE_REPLACE_DESTINATION */

    /// No flags set.
    @available(*, deprecated) public static let none_ = FileCreateFlags(0) /* G_FILE_CREATE_NONE */
    /// Create a file that can only be
    ///    accessed by the current user.
    @available(*, deprecated) public static let private_ = FileCreateFlags(1) /* G_FILE_CREATE_PRIVATE */
    /// Replace the destination
    ///    as if it didn't exist before. Don't try to keep any old
    ///    permissions, replace instead of following links. This
    ///    is generally useful if you're doing a "copy over"
    ///    rather than a "save new version of" replace operation.
    ///    You can think of it as "unlink destination" before
    ///    writing to it, although the implementation may not
    ///    be exactly like that. Since 2.20
    @available(*, deprecated) public static let replace_destination = FileCreateFlags(2) /* G_FILE_CREATE_REPLACE_DESTINATION */
}
func cast<I: BinaryInteger>(_ param: I) -> FileCreateFlags { FileCreateFlags(rawValue: cast(param)) }
func cast(_ param: FileCreateFlags) -> UInt32 { cast(param.rawValue) }


/// Flags that can be used with `g_file_measure_disk_usage()`.
public struct FileMeasureFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GFileMeasureFlags` enum value
    public var value: GFileMeasureFlags { get { GFileMeasureFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GFileMeasureFlags` enum value
    public init(_ enumValue: GFileMeasureFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No flags set.
    public static let `none` = FileMeasureFlags(0) /* G_FILE_MEASURE_NONE */
    /// Report any error encountered
    ///   while traversing the directory tree.  Normally errors are only
    ///   reported for the toplevel file.
    public static let reportAnyError = FileMeasureFlags(2) /* G_FILE_MEASURE_REPORT_ANY_ERROR */
    /// Tally usage based on apparent file
    ///   sizes.  Normally, the block-size is used, if available, as this is a
    ///   more accurate representation of disk space used.
    ///   Compare with `du --apparent-size`.
    public static let apparentSize = FileMeasureFlags(4) /* G_FILE_MEASURE_APPARENT_SIZE */
    /// Do not cross mount point boundaries.
    ///   Compare with `du -x`.
    public static let noXdev = FileMeasureFlags(8) /* G_FILE_MEASURE_NO_XDEV */

    /// No flags set.
    @available(*, deprecated) public static let none_ = FileMeasureFlags(0) /* G_FILE_MEASURE_NONE */
    /// Report any error encountered
    ///   while traversing the directory tree.  Normally errors are only
    ///   reported for the toplevel file.
    @available(*, deprecated) public static let report_any_error = FileMeasureFlags(2) /* G_FILE_MEASURE_REPORT_ANY_ERROR */
    /// Tally usage based on apparent file
    ///   sizes.  Normally, the block-size is used, if available, as this is a
    ///   more accurate representation of disk space used.
    ///   Compare with `du --apparent-size`.
    @available(*, deprecated) public static let apparent_size = FileMeasureFlags(4) /* G_FILE_MEASURE_APPARENT_SIZE */
    /// Do not cross mount point boundaries.
    ///   Compare with `du -x`.
    @available(*, deprecated) public static let no_xdev = FileMeasureFlags(8) /* G_FILE_MEASURE_NO_XDEV */
}
func cast<I: BinaryInteger>(_ param: I) -> FileMeasureFlags { FileMeasureFlags(rawValue: cast(param)) }
func cast(_ param: FileMeasureFlags) -> UInt32 { cast(param.rawValue) }


/// Flags used to set what a `GFileMonitor` will watch for.
public struct FileMonitorFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GFileMonitorFlags` enum value
    public var value: GFileMonitorFlags { get { GFileMonitorFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GFileMonitorFlags` enum value
    public init(_ enumValue: GFileMonitorFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No flags set.
    public static let `none` = FileMonitorFlags(0) /* G_FILE_MONITOR_NONE */
    /// Watch for mount events.
    public static let watchMounts = FileMonitorFlags(1) /* G_FILE_MONITOR_WATCH_MOUNTS */
    /// Pair DELETED and CREATED events caused
    ///   by file renames (moves) and send a single G_FILE_MONITOR_EVENT_MOVED
    ///   event instead (NB: not supported on all backends; the default
    ///   behaviour -without specifying this flag- is to send single DELETED
    ///   and CREATED events).  Deprecated since 2.46: use
    ///   `G_FILE_MONITOR_WATCH_MOVES` instead.
    public static let sendMoved = FileMonitorFlags(2) /* G_FILE_MONITOR_SEND_MOVED */
    /// Watch for changes to the file made
    ///   via another hard link. Since 2.36.
    public static let watchHardLinks = FileMonitorFlags(4) /* G_FILE_MONITOR_WATCH_HARD_LINKS */
    /// Watch for rename operations on a
    ///   monitored directory.  This causes `G_FILE_MONITOR_EVENT_RENAMED`,
    ///   `G_FILE_MONITOR_EVENT_MOVED_IN` and `G_FILE_MONITOR_EVENT_MOVED_OUT`
    ///   events to be emitted when possible.  Since: 2.46.
    public static let watchMoves = FileMonitorFlags(8) /* G_FILE_MONITOR_WATCH_MOVES */

    /// No flags set.
    @available(*, deprecated) public static let none_ = FileMonitorFlags(0) /* G_FILE_MONITOR_NONE */
    /// Watch for mount events.
    @available(*, deprecated) public static let watch_mounts = FileMonitorFlags(1) /* G_FILE_MONITOR_WATCH_MOUNTS */
    /// Pair DELETED and CREATED events caused
    ///   by file renames (moves) and send a single G_FILE_MONITOR_EVENT_MOVED
    ///   event instead (NB: not supported on all backends; the default
    ///   behaviour -without specifying this flag- is to send single DELETED
    ///   and CREATED events).  Deprecated since 2.46: use
    ///   `G_FILE_MONITOR_WATCH_MOVES` instead.
    @available(*, deprecated) public static let send_moved = FileMonitorFlags(2) /* G_FILE_MONITOR_SEND_MOVED */
    /// Watch for changes to the file made
    ///   via another hard link. Since 2.36.
    @available(*, deprecated) public static let watch_hard_links = FileMonitorFlags(4) /* G_FILE_MONITOR_WATCH_HARD_LINKS */
    /// Watch for rename operations on a
    ///   monitored directory.  This causes `G_FILE_MONITOR_EVENT_RENAMED`,
    ///   `G_FILE_MONITOR_EVENT_MOVED_IN` and `G_FILE_MONITOR_EVENT_MOVED_OUT`
    ///   events to be emitted when possible.  Since: 2.46.
    @available(*, deprecated) public static let watch_moves = FileMonitorFlags(8) /* G_FILE_MONITOR_WATCH_MOVES */
}
func cast<I: BinaryInteger>(_ param: I) -> FileMonitorFlags { FileMonitorFlags(rawValue: cast(param)) }
func cast(_ param: FileMonitorFlags) -> UInt32 { cast(param.rawValue) }


/// Flags used when querying a `GFileInfo`.
public struct FileQueryInfoFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GFileQueryInfoFlags` enum value
    public var value: GFileQueryInfoFlags { get { GFileQueryInfoFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GFileQueryInfoFlags` enum value
    public init(_ enumValue: GFileQueryInfoFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No flags set.
    public static let `none` = FileQueryInfoFlags(0) /* G_FILE_QUERY_INFO_NONE */
    /// Don't follow symlinks.
    public static let nofollowSymlinks = FileQueryInfoFlags(1) /* G_FILE_QUERY_INFO_NOFOLLOW_SYMLINKS */

    /// No flags set.
    @available(*, deprecated) public static let none_ = FileQueryInfoFlags(0) /* G_FILE_QUERY_INFO_NONE */
    /// Don't follow symlinks.
    @available(*, deprecated) public static let nofollow_symlinks = FileQueryInfoFlags(1) /* G_FILE_QUERY_INFO_NOFOLLOW_SYMLINKS */
}
func cast<I: BinaryInteger>(_ param: I) -> FileQueryInfoFlags { FileQueryInfoFlags(rawValue: cast(param)) }
func cast(_ param: FileQueryInfoFlags) -> UInt32 { cast(param.rawValue) }


/// GIOStreamSpliceFlags determine how streams should be spliced.
public struct IOStreamSpliceFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GIOStreamSpliceFlags` enum value
    public var value: GIOStreamSpliceFlags { get { GIOStreamSpliceFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GIOStreamSpliceFlags` enum value
    public init(_ enumValue: GIOStreamSpliceFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// Do not close either stream.
    public static let `none` = IOStreamSpliceFlags(0) /* G_IO_STREAM_SPLICE_NONE */
    /// Close the first stream after
    ///     the splice.
    public static let closeStream1 = IOStreamSpliceFlags(1) /* G_IO_STREAM_SPLICE_CLOSE_STREAM1 */
    /// Close the second stream after
    ///     the splice.
    public static let closeStream2 = IOStreamSpliceFlags(2) /* G_IO_STREAM_SPLICE_CLOSE_STREAM2 */
    /// Wait for both splice operations to finish
    ///     before calling the callback.
    public static let waitForBoth = IOStreamSpliceFlags(4) /* G_IO_STREAM_SPLICE_WAIT_FOR_BOTH */

    /// Do not close either stream.
    @available(*, deprecated) public static let none_ = IOStreamSpliceFlags(0) /* G_IO_STREAM_SPLICE_NONE */
    /// Close the first stream after
    ///     the splice.
    @available(*, deprecated) public static let close_stream1 = IOStreamSpliceFlags(1) /* G_IO_STREAM_SPLICE_CLOSE_STREAM1 */
    /// Close the second stream after
    ///     the splice.
    @available(*, deprecated) public static let close_stream2 = IOStreamSpliceFlags(2) /* G_IO_STREAM_SPLICE_CLOSE_STREAM2 */
    /// Wait for both splice operations to finish
    ///     before calling the callback.
    @available(*, deprecated) public static let wait_for_both = IOStreamSpliceFlags(4) /* G_IO_STREAM_SPLICE_WAIT_FOR_BOTH */
}
func cast<I: BinaryInteger>(_ param: I) -> IOStreamSpliceFlags { IOStreamSpliceFlags(rawValue: cast(param)) }
func cast(_ param: IOStreamSpliceFlags) -> UInt32 { cast(param.rawValue) }


/// Flags used when mounting a mount.
public struct MountMountFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GMountMountFlags` enum value
    public var value: GMountMountFlags { get { GMountMountFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GMountMountFlags` enum value
    public init(_ enumValue: GMountMountFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No flags set.
    public static let `none` = MountMountFlags(0) /* G_MOUNT_MOUNT_NONE */

    /// No flags set.
    @available(*, deprecated) public static let none_ = MountMountFlags(0) /* G_MOUNT_MOUNT_NONE */
}
func cast<I: BinaryInteger>(_ param: I) -> MountMountFlags { MountMountFlags(rawValue: cast(param)) }
func cast(_ param: MountMountFlags) -> UInt32 { cast(param.rawValue) }


/// Flags used when an unmounting a mount.
public struct MountUnmountFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GMountUnmountFlags` enum value
    public var value: GMountUnmountFlags { get { GMountUnmountFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GMountUnmountFlags` enum value
    public init(_ enumValue: GMountUnmountFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No flags set.
    public static let `none` = MountUnmountFlags(0) /* G_MOUNT_UNMOUNT_NONE */
    /// Unmount even if there are outstanding
    ///  file operations on the mount.
    public static let force = MountUnmountFlags(1) /* G_MOUNT_UNMOUNT_FORCE */

    /// No flags set.
    @available(*, deprecated) public static let none_ = MountUnmountFlags(0) /* G_MOUNT_UNMOUNT_NONE */
}
func cast<I: BinaryInteger>(_ param: I) -> MountUnmountFlags { MountUnmountFlags(rawValue: cast(param)) }
func cast(_ param: MountUnmountFlags) -> UInt32 { cast(param.rawValue) }


/// GOutputStreamSpliceFlags determine how streams should be spliced.
public struct OutputStreamSpliceFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GOutputStreamSpliceFlags` enum value
    public var value: GOutputStreamSpliceFlags { get { GOutputStreamSpliceFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GOutputStreamSpliceFlags` enum value
    public init(_ enumValue: GOutputStreamSpliceFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// Do not close either stream.
    public static let `none` = OutputStreamSpliceFlags(0) /* G_OUTPUT_STREAM_SPLICE_NONE */
    /// Close the source stream after
    ///     the splice.
    public static let closeSource = OutputStreamSpliceFlags(1) /* G_OUTPUT_STREAM_SPLICE_CLOSE_SOURCE */
    /// Close the target stream after
    ///     the splice.
    public static let closeTarget = OutputStreamSpliceFlags(2) /* G_OUTPUT_STREAM_SPLICE_CLOSE_TARGET */

    /// Do not close either stream.
    @available(*, deprecated) public static let none_ = OutputStreamSpliceFlags(0) /* G_OUTPUT_STREAM_SPLICE_NONE */
    /// Close the source stream after
    ///     the splice.
    @available(*, deprecated) public static let close_source = OutputStreamSpliceFlags(1) /* G_OUTPUT_STREAM_SPLICE_CLOSE_SOURCE */
    /// Close the target stream after
    ///     the splice.
    @available(*, deprecated) public static let close_target = OutputStreamSpliceFlags(2) /* G_OUTPUT_STREAM_SPLICE_CLOSE_TARGET */
}
func cast<I: BinaryInteger>(_ param: I) -> OutputStreamSpliceFlags { OutputStreamSpliceFlags(rawValue: cast(param)) }
func cast(_ param: OutputStreamSpliceFlags) -> UInt32 { cast(param.rawValue) }


/// Flags to modify lookup behavior.
public struct ResolverNameLookupFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GResolverNameLookupFlags` enum value
    public var value: GResolverNameLookupFlags { get { GResolverNameLookupFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GResolverNameLookupFlags` enum value
    public init(_ enumValue: GResolverNameLookupFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// default behavior (same as `g_resolver_lookup_by_name()`)
    public static let `default` = ResolverNameLookupFlags(0) /* G_RESOLVER_NAME_LOOKUP_FLAGS_DEFAULT */
    /// only resolve ipv4 addresses
    public static let ipv4Only = ResolverNameLookupFlags(1) /* G_RESOLVER_NAME_LOOKUP_FLAGS_IPV4_ONLY */
    /// only resolve ipv6 addresses
    public static let ipv6Only = ResolverNameLookupFlags(2) /* G_RESOLVER_NAME_LOOKUP_FLAGS_IPV6_ONLY */

    /// default behavior (same as `g_resolver_lookup_by_name()`)
    @available(*, deprecated) public static let default_ = ResolverNameLookupFlags(0) /* G_RESOLVER_NAME_LOOKUP_FLAGS_DEFAULT */
    /// only resolve ipv4 addresses
    @available(*, deprecated) public static let ipv4_only = ResolverNameLookupFlags(1) /* G_RESOLVER_NAME_LOOKUP_FLAGS_IPV4_ONLY */
    /// only resolve ipv6 addresses
    @available(*, deprecated) public static let ipv6_only = ResolverNameLookupFlags(2) /* G_RESOLVER_NAME_LOOKUP_FLAGS_IPV6_ONLY */
}
func cast<I: BinaryInteger>(_ param: I) -> ResolverNameLookupFlags { ResolverNameLookupFlags(rawValue: cast(param)) }
func cast(_ param: ResolverNameLookupFlags) -> UInt32 { cast(param.rawValue) }


/// GResourceFlags give information about a particular file inside a resource
/// bundle.
public struct ResourceFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GResourceFlags` enum value
    public var value: GResourceFlags { get { GResourceFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GResourceFlags` enum value
    public init(_ enumValue: GResourceFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No flags set.
    public static let `none` = ResourceFlags(0) /* G_RESOURCE_FLAGS_NONE */
    /// The file is compressed.
    public static let compressed = ResourceFlags(1) /* G_RESOURCE_FLAGS_COMPRESSED */

    /// No flags set.
    @available(*, deprecated) public static let none_ = ResourceFlags(0) /* G_RESOURCE_FLAGS_NONE */
}
func cast<I: BinaryInteger>(_ param: I) -> ResourceFlags { ResourceFlags(rawValue: cast(param)) }
func cast(_ param: ResourceFlags) -> UInt32 { cast(param.rawValue) }


/// GResourceLookupFlags determine how resource path lookups are handled.
public struct ResourceLookupFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GResourceLookupFlags` enum value
    public var value: GResourceLookupFlags { get { GResourceLookupFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GResourceLookupFlags` enum value
    public init(_ enumValue: GResourceLookupFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No flags set.
    public static let `none` = ResourceLookupFlags(0) /* G_RESOURCE_LOOKUP_FLAGS_NONE */

    /// No flags set.
    @available(*, deprecated) public static let none_ = ResourceLookupFlags(0) /* G_RESOURCE_LOOKUP_FLAGS_NONE */
}
func cast<I: BinaryInteger>(_ param: I) -> ResourceLookupFlags { ResourceLookupFlags(rawValue: cast(param)) }
func cast(_ param: ResourceLookupFlags) -> UInt32 { cast(param.rawValue) }


/// Flags used when creating a binding. These flags determine in which
/// direction the binding works. The default is to synchronize in both
/// directions.
public struct SettingsBindFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GSettingsBindFlags` enum value
    public var value: GSettingsBindFlags { get { GSettingsBindFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GSettingsBindFlags` enum value
    public init(_ enumValue: GSettingsBindFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// Equivalent to `G_SETTINGS_BIND_GET|G_SETTINGS_BIND_SET`
    public static let `default` = SettingsBindFlags(0) /* G_SETTINGS_BIND_DEFAULT */
    /// Update the `GObject` property when the setting changes.
    ///     It is an error to use this flag if the property is not writable.
    public static let get = SettingsBindFlags(1) /* G_SETTINGS_BIND_GET */
    /// Update the setting when the `GObject` property changes.
    ///     It is an error to use this flag if the property is not readable.
    public static let set = SettingsBindFlags(2) /* G_SETTINGS_BIND_SET */
    /// Do not try to bind a "sensitivity" property to the writability of the setting
    public static let noSensitivity = SettingsBindFlags(4) /* G_SETTINGS_BIND_NO_SENSITIVITY */
    /// When set in addition to `G_SETTINGS_BIND_GET`, set the `GObject` property
    ///     value initially from the setting, but do not listen for changes of the setting
    public static let getNoChanges = SettingsBindFlags(8) /* G_SETTINGS_BIND_GET_NO_CHANGES */
    /// When passed to `g_settings_bind()`, uses a pair of mapping functions that invert
    ///     the boolean value when mapping between the setting and the property.  The setting and property must both
    ///     be booleans.  You cannot pass this flag to `g_settings_bind_with_mapping()`.
    public static let invertBoolean = SettingsBindFlags(16) /* G_SETTINGS_BIND_INVERT_BOOLEAN */

    /// Equivalent to `G_SETTINGS_BIND_GET|G_SETTINGS_BIND_SET`
    @available(*, deprecated) public static let default_ = SettingsBindFlags(0) /* G_SETTINGS_BIND_DEFAULT */
    /// Do not try to bind a "sensitivity" property to the writability of the setting
    @available(*, deprecated) public static let no_sensitivity = SettingsBindFlags(4) /* G_SETTINGS_BIND_NO_SENSITIVITY */
    /// When set in addition to `G_SETTINGS_BIND_GET`, set the `GObject` property
    ///     value initially from the setting, but do not listen for changes of the setting
    @available(*, deprecated) public static let get_no_changes = SettingsBindFlags(8) /* G_SETTINGS_BIND_GET_NO_CHANGES */
    /// When passed to `g_settings_bind()`, uses a pair of mapping functions that invert
    ///     the boolean value when mapping between the setting and the property.  The setting and property must both
    ///     be booleans.  You cannot pass this flag to `g_settings_bind_with_mapping()`.
    @available(*, deprecated) public static let invert_boolean = SettingsBindFlags(16) /* G_SETTINGS_BIND_INVERT_BOOLEAN */
}
func cast<I: BinaryInteger>(_ param: I) -> SettingsBindFlags { SettingsBindFlags(rawValue: cast(param)) }
func cast(_ param: SettingsBindFlags) -> UInt32 { cast(param.rawValue) }


/// Flags used in `g_socket_receive_message()` and `g_socket_send_message()`.
/// The flags listed in the enum are some commonly available flags, but the
/// values used for them are the same as on the platform, and any other flags
/// are passed in/out as is. So to use a platform specific flag, just include
/// the right system header and pass in the flag.
public struct SocketMsgFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GSocketMsgFlags` enum value
    public var value: GSocketMsgFlags { get { GSocketMsgFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GSocketMsgFlags` enum value
    public init(_ enumValue: GSocketMsgFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No flags.
    public static let `none` = SocketMsgFlags(0) /* G_SOCKET_MSG_NONE */
    /// Request to send/receive out of band data.
    public static let oob = SocketMsgFlags(1) /* G_SOCKET_MSG_OOB */
    /// Read data from the socket without removing it from
    ///     the queue.
    public static let peek = SocketMsgFlags(2) /* G_SOCKET_MSG_PEEK */
    /// Don't use a gateway to send out the packet,
    ///     only send to hosts on directly connected networks.
    public static let dontroute = SocketMsgFlags(4) /* G_SOCKET_MSG_DONTROUTE */

    /// No flags.
    @available(*, deprecated) public static let none_ = SocketMsgFlags(0) /* G_SOCKET_MSG_NONE */
}
func cast<I: BinaryInteger>(_ param: I) -> SocketMsgFlags { SocketMsgFlags(rawValue: cast(param)) }
func cast(_ param: SocketMsgFlags) -> UInt32 { cast(param.rawValue) }


/// Flags to define the behaviour of a `GSubprocess`.
/// 
/// Note that the default for stdin is to redirect from `/dev/null`.  For
/// stdout and stderr the default are for them to inherit the
/// corresponding descriptor from the calling process.
/// 
/// Note that it is a programmer error to mix 'incompatible' flags.  For
/// example, you may not request both `G_SUBPROCESS_FLAGS_STDOUT_PIPE` and
/// `G_SUBPROCESS_FLAGS_STDOUT_SILENCE`.
public struct SubprocessFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GSubprocessFlags` enum value
    public var value: GSubprocessFlags { get { GSubprocessFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GSubprocessFlags` enum value
    public init(_ enumValue: GSubprocessFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No flags.
    public static let `none` = SubprocessFlags(0) /* G_SUBPROCESS_FLAGS_NONE */
    /// create a pipe for the stdin of the
    ///   spawned process that can be accessed with
    ///   `g_subprocess_get_stdin_pipe()`.
    public static let stdinPipe = SubprocessFlags(1) /* G_SUBPROCESS_FLAGS_STDIN_PIPE */
    /// stdin is inherited from the
    ///   calling process.
    public static let stdinInherit = SubprocessFlags(2) /* G_SUBPROCESS_FLAGS_STDIN_INHERIT */
    /// create a pipe for the stdout of the
    ///   spawned process that can be accessed with
    ///   `g_subprocess_get_stdout_pipe()`.
    public static let stdoutPipe = SubprocessFlags(4) /* G_SUBPROCESS_FLAGS_STDOUT_PIPE */
    /// silence the stdout of the spawned
    ///   process (ie: redirect to `/dev/null`).
    public static let stdoutSilence = SubprocessFlags(8) /* G_SUBPROCESS_FLAGS_STDOUT_SILENCE */
    /// create a pipe for the stderr of the
    ///   spawned process that can be accessed with
    ///   `g_subprocess_get_stderr_pipe()`.
    public static let stderrPipe = SubprocessFlags(16) /* G_SUBPROCESS_FLAGS_STDERR_PIPE */
    /// silence the stderr of the spawned
    ///   process (ie: redirect to `/dev/null`).
    public static let stderrSilence = SubprocessFlags(32) /* G_SUBPROCESS_FLAGS_STDERR_SILENCE */
    /// merge the stderr of the spawned
    ///   process with whatever the stdout happens to be.  This is a good way
    ///   of directing both streams to a common log file, for example.
    public static let stderrMerge = SubprocessFlags(64) /* G_SUBPROCESS_FLAGS_STDERR_MERGE */
    /// spawned processes will inherit the
    ///   file descriptors of their parent, unless those descriptors have
    ///   been explicitly marked as close-on-exec.  This flag has no effect
    ///   over the "standard" file descriptors (stdin, stdout, stderr).
    public static let inheritFds = SubprocessFlags(128) /* G_SUBPROCESS_FLAGS_INHERIT_FDS */

    /// No flags.
    @available(*, deprecated) public static let none_ = SubprocessFlags(0) /* G_SUBPROCESS_FLAGS_NONE */
    /// create a pipe for the stdin of the
    ///   spawned process that can be accessed with
    ///   `g_subprocess_get_stdin_pipe()`.
    @available(*, deprecated) public static let stdin_pipe = SubprocessFlags(1) /* G_SUBPROCESS_FLAGS_STDIN_PIPE */
    /// stdin is inherited from the
    ///   calling process.
    @available(*, deprecated) public static let stdin_inherit = SubprocessFlags(2) /* G_SUBPROCESS_FLAGS_STDIN_INHERIT */
    /// create a pipe for the stdout of the
    ///   spawned process that can be accessed with
    ///   `g_subprocess_get_stdout_pipe()`.
    @available(*, deprecated) public static let stdout_pipe = SubprocessFlags(4) /* G_SUBPROCESS_FLAGS_STDOUT_PIPE */
    /// silence the stdout of the spawned
    ///   process (ie: redirect to `/dev/null`).
    @available(*, deprecated) public static let stdout_silence = SubprocessFlags(8) /* G_SUBPROCESS_FLAGS_STDOUT_SILENCE */
    /// create a pipe for the stderr of the
    ///   spawned process that can be accessed with
    ///   `g_subprocess_get_stderr_pipe()`.
    @available(*, deprecated) public static let stderr_pipe = SubprocessFlags(16) /* G_SUBPROCESS_FLAGS_STDERR_PIPE */
    /// silence the stderr of the spawned
    ///   process (ie: redirect to `/dev/null`).
    @available(*, deprecated) public static let stderr_silence = SubprocessFlags(32) /* G_SUBPROCESS_FLAGS_STDERR_SILENCE */
    /// merge the stderr of the spawned
    ///   process with whatever the stdout happens to be.  This is a good way
    ///   of directing both streams to a common log file, for example.
    @available(*, deprecated) public static let stderr_merge = SubprocessFlags(64) /* G_SUBPROCESS_FLAGS_STDERR_MERGE */
    /// spawned processes will inherit the
    ///   file descriptors of their parent, unless those descriptors have
    ///   been explicitly marked as close-on-exec.  This flag has no effect
    ///   over the "standard" file descriptors (stdin, stdout, stderr).
    @available(*, deprecated) public static let inherit_fds = SubprocessFlags(128) /* G_SUBPROCESS_FLAGS_INHERIT_FDS */
}
func cast<I: BinaryInteger>(_ param: I) -> SubprocessFlags { SubprocessFlags(rawValue: cast(param)) }
func cast(_ param: SubprocessFlags) -> UInt32 { cast(param.rawValue) }


/// Flags to define future `GTestDBus` behaviour.
public struct TestDBusFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GTestDBusFlags` enum value
    public var value: GTestDBusFlags { get { GTestDBusFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GTestDBusFlags` enum value
    public init(_ enumValue: GTestDBusFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No flags.
    public static let `none` = TestDBusFlags(0) /* G_TEST_DBUS_NONE */

    /// No flags.
    @available(*, deprecated) public static let none_ = TestDBusFlags(0) /* G_TEST_DBUS_NONE */
}
func cast<I: BinaryInteger>(_ param: I) -> TestDBusFlags { TestDBusFlags(rawValue: cast(param)) }
func cast(_ param: TestDBusFlags) -> UInt32 { cast(param.rawValue) }


/// A set of flags describing TLS certification validation. This can be
/// used to set which validation steps to perform (eg, with
/// `g_tls_client_connection_set_validation_flags()`), or to describe why
/// a particular certificate was rejected (eg, in
/// `GTlsConnection::accept`-certificate).
public struct TLSCertificateFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GTlsCertificateFlags` enum value
    public var value: GTlsCertificateFlags { get { GTlsCertificateFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GTlsCertificateFlags` enum value
    public init(_ enumValue: GTlsCertificateFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// The signing certificate authority is
    ///   not known.
    public static let unknownCa = TLSCertificateFlags(1) /* G_TLS_CERTIFICATE_UNKNOWN_CA */
    /// The certificate does not match the
    ///   expected identity of the site that it was retrieved from.
    public static let badIdentity = TLSCertificateFlags(2) /* G_TLS_CERTIFICATE_BAD_IDENTITY */
    /// The certificate's activation time
    ///   is still in the future
    public static let notActivated = TLSCertificateFlags(4) /* G_TLS_CERTIFICATE_NOT_ACTIVATED */
    /// The certificate has expired
    public static let expired = TLSCertificateFlags(8) /* G_TLS_CERTIFICATE_EXPIRED */
    /// The certificate has been revoked
    ///   according to the `GTlsConnection`'s certificate revocation list.
    public static let revoked = TLSCertificateFlags(16) /* G_TLS_CERTIFICATE_REVOKED */
    /// The certificate's algorithm is
    ///   considered insecure.
    public static let insecure = TLSCertificateFlags(32) /* G_TLS_CERTIFICATE_INSECURE */
    /// Some other error occurred validating
    ///   the certificate
    public static let genericError = TLSCertificateFlags(64) /* G_TLS_CERTIFICATE_GENERIC_ERROR */
    /// the combination of all of the above
    ///   flags
    public static let validateAll = TLSCertificateFlags(127) /* G_TLS_CERTIFICATE_VALIDATE_ALL */

    /// The signing certificate authority is
    ///   not known.
    @available(*, deprecated) public static let unknown_ca = TLSCertificateFlags(1) /* G_TLS_CERTIFICATE_UNKNOWN_CA */
    /// The certificate does not match the
    ///   expected identity of the site that it was retrieved from.
    @available(*, deprecated) public static let bad_identity = TLSCertificateFlags(2) /* G_TLS_CERTIFICATE_BAD_IDENTITY */
    /// The certificate's activation time
    ///   is still in the future
    @available(*, deprecated) public static let not_activated = TLSCertificateFlags(4) /* G_TLS_CERTIFICATE_NOT_ACTIVATED */
    /// Some other error occurred validating
    ///   the certificate
    @available(*, deprecated) public static let generic_error = TLSCertificateFlags(64) /* G_TLS_CERTIFICATE_GENERIC_ERROR */
    /// the combination of all of the above
    ///   flags
    @available(*, deprecated) public static let validate_all = TLSCertificateFlags(127) /* G_TLS_CERTIFICATE_VALIDATE_ALL */
}
func cast<I: BinaryInteger>(_ param: I) -> TLSCertificateFlags { TLSCertificateFlags(rawValue: cast(param)) }
func cast(_ param: TLSCertificateFlags) -> UInt32 { cast(param.rawValue) }


/// Flags for `g_tls_database_verify_chain()`.
public struct TLSDatabaseVerifyFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GTlsDatabaseVerifyFlags` enum value
    public var value: GTlsDatabaseVerifyFlags { get { GTlsDatabaseVerifyFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GTlsDatabaseVerifyFlags` enum value
    public init(_ enumValue: GTlsDatabaseVerifyFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No verification flags
    public static let `none` = TLSDatabaseVerifyFlags(0) /* G_TLS_DATABASE_VERIFY_NONE */

    /// No verification flags
    @available(*, deprecated) public static let none_ = TLSDatabaseVerifyFlags(0) /* G_TLS_DATABASE_VERIFY_NONE */
}
func cast<I: BinaryInteger>(_ param: I) -> TLSDatabaseVerifyFlags { TLSDatabaseVerifyFlags(rawValue: cast(param)) }
func cast(_ param: TLSDatabaseVerifyFlags) -> UInt32 { cast(param.rawValue) }


/// Various flags for the password.
public struct TLSPasswordFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GTlsPasswordFlags` enum value
    public var value: GTlsPasswordFlags { get { GTlsPasswordFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GTlsPasswordFlags` enum value
    public init(_ enumValue: GTlsPasswordFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// No flags
    public static let `none` = TLSPasswordFlags(0) /* G_TLS_PASSWORD_NONE */
    /// The password was wrong, and the user should retry.
    public static let retry = TLSPasswordFlags(2) /* G_TLS_PASSWORD_RETRY */
    /// Hint to the user that the password has been
    ///    wrong many times, and the user may not have many chances left.
    public static let manyTries = TLSPasswordFlags(4) /* G_TLS_PASSWORD_MANY_TRIES */
    /// Hint to the user that this is the last try to get
    ///    this password right.
    public static let finalTry = TLSPasswordFlags(8) /* G_TLS_PASSWORD_FINAL_TRY */

    /// No flags
    @available(*, deprecated) public static let none_ = TLSPasswordFlags(0) /* G_TLS_PASSWORD_NONE */
    /// Hint to the user that the password has been
    ///    wrong many times, and the user may not have many chances left.
    @available(*, deprecated) public static let many_tries = TLSPasswordFlags(4) /* G_TLS_PASSWORD_MANY_TRIES */
    /// Hint to the user that this is the last try to get
    ///    this password right.
    @available(*, deprecated) public static let final_try = TLSPasswordFlags(8) /* G_TLS_PASSWORD_FINAL_TRY */
}
func cast<I: BinaryInteger>(_ param: I) -> TLSPasswordFlags { TLSPasswordFlags(rawValue: cast(param)) }
func cast(_ param: TLSPasswordFlags) -> UInt32 { cast(param.rawValue) }
