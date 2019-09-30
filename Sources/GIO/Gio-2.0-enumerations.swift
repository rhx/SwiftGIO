import CGLib
import GLib
import GLibObject

/// An enumeration for well-known message buses.
public typealias BusType = GBusType

public extension BusType {
    /// An alias for the message bus that activated the process, if any.
    static let starter = G_BUS_TYPE_STARTER /* -1 */
    /// Not a message bus.
    static let none_ = G_BUS_TYPE_NONE /* 0 */
    /// The system-wide message bus.
    static let system = G_BUS_TYPE_SYSTEM /* 1 */
    /// The login session message bus.
    static let session = G_BUS_TYPE_SESSION /* 2 */
}

/// Results returned from g_converter_convert().
public typealias ConverterResult = GConverterResult

public extension ConverterResult {
    /// There was an error during conversion.
    static let error = G_CONVERTER_ERROR /* 0 */
    /// Some data was consumed or produced
    static let converted = G_CONVERTER_CONVERTED /* 1 */
    /// The conversion is finished
    static let finished = G_CONVERTER_FINISHED /* 2 */
    /// Flushing is finished
    static let flushed = G_CONVERTER_FLUSHED /* 3 */
}

/// Enumeration describing different kinds of native credential types.
public typealias CredentialsType = GCredentialsType

public extension CredentialsType {
    /// Indicates an invalid native credential type.
    static let invalid = G_CREDENTIALS_TYPE_INVALID /* 0 */
    /// The native credentials type is a struct ucred.
    static let linux_ucred = G_CREDENTIALS_TYPE_LINUX_UCRED /* 1 */
    /// The native credentials type is a struct cmsgcred.
    static let freebsd_cmsgcred = G_CREDENTIALS_TYPE_FREEBSD_CMSGCRED /* 2 */
    /// The native credentials type is a struct sockpeercred. Added in 2.30.
    static let openbsd_sockpeercred = G_CREDENTIALS_TYPE_OPENBSD_SOCKPEERCRED /* 3 */
    /// The native credentials type is a ucred_t. Added in 2.40.
    static let solaris_ucred = G_CREDENTIALS_TYPE_SOLARIS_UCRED /* 4 */
    /// The native credentials type is a struct unpcbid.
    static let netbsd_unpcbid = G_CREDENTIALS_TYPE_NETBSD_UNPCBID /* 5 */
}

/// Error codes for the `G_DBUS_ERROR` error domain.
public typealias DBusError = GDBusError

public extension DBusError {
    /// A generic error; "something went wrong" - see the error message for
    /// more.
    static let failed = G_DBUS_ERROR_FAILED /* 0 */
    /// There was not enough memory to complete an operation.
    static let no_memory = G_DBUS_ERROR_NO_MEMORY /* 1 */
    /// The bus doesn't know how to launch a service to supply the bus name
    /// you wanted.
    static let service_unknown = G_DBUS_ERROR_SERVICE_UNKNOWN /* 2 */
    /// The bus name you referenced doesn't exist (i.e. no application owns
    /// it).
    static let name_has_no_owner = G_DBUS_ERROR_NAME_HAS_NO_OWNER /* 3 */
    /// No reply to a message expecting one, usually means a timeout occurred.
    static let no_reply = G_DBUS_ERROR_NO_REPLY /* 4 */
    /// Something went wrong reading or writing to a socket, for example.
    static let io_error = G_DBUS_ERROR_IO_ERROR /* 5 */
    /// A D-Bus bus address was malformed.
    static let bad_address = G_DBUS_ERROR_BAD_ADDRESS /* 6 */
    /// Requested operation isn't supported (like ENOSYS on UNIX).
    static let not_supported = G_DBUS_ERROR_NOT_SUPPORTED /* 7 */
    /// Some limited resource is exhausted.
    static let limits_exceeded = G_DBUS_ERROR_LIMITS_EXCEEDED /* 8 */
    /// Security restrictions don't allow doing what you're trying to do.
    static let access_denied = G_DBUS_ERROR_ACCESS_DENIED /* 9 */
    /// Authentication didn't work.
    static let auth_failed = G_DBUS_ERROR_AUTH_FAILED /* 10 */
    /// Unable to connect to server (probably caused by ECONNREFUSED on a
    /// socket).
    static let no_server = G_DBUS_ERROR_NO_SERVER /* 11 */
    /// Certain timeout errors, possibly ETIMEDOUT on a socket.  Note that
    /// `G_DBUS_ERROR_NO_REPLY` is used for message reply timeouts. Warning:
    /// this is confusingly-named given that `G_DBUS_ERROR_TIMED_OUT` also
    /// exists. We can't fix it for compatibility reasons so just be
    /// careful.
    static let timeout = G_DBUS_ERROR_TIMEOUT /* 12 */
    /// No network access (probably ENETUNREACH on a socket).
    static let no_network = G_DBUS_ERROR_NO_NETWORK /* 13 */
    /// Can't bind a socket since its address is in use (i.e. EADDRINUSE).
    static let address_in_use = G_DBUS_ERROR_ADDRESS_IN_USE /* 14 */
    /// The connection is disconnected and you're trying to use it.
    static let disconnected = G_DBUS_ERROR_DISCONNECTED /* 15 */
    /// Invalid arguments passed to a method call.
    static let invalid_args = G_DBUS_ERROR_INVALID_ARGS /* 16 */
    /// Missing file.
    static let file_not_found = G_DBUS_ERROR_FILE_NOT_FOUND /* 17 */
    /// Existing file and the operation you're using does not silently overwrite.
    static let file_exists = G_DBUS_ERROR_FILE_EXISTS /* 18 */
    /// Method name you invoked isn't known by the object you invoked it on.
    static let unknown_method = G_DBUS_ERROR_UNKNOWN_METHOD /* 19 */
    /// Certain timeout errors, e.g. while starting a service. Warning: this is
    /// confusingly-named given that `G_DBUS_ERROR_TIMEOUT` also exists. We
    /// can't fix it for compatibility reasons so just be careful.
    static let timed_out = G_DBUS_ERROR_TIMED_OUT /* 20 */
    /// Tried to remove or modify a match rule that didn't exist.
    static let match_rule_not_found = G_DBUS_ERROR_MATCH_RULE_NOT_FOUND /* 21 */
    /// The match rule isn't syntactically valid.
    static let match_rule_invalid = G_DBUS_ERROR_MATCH_RULE_INVALID /* 22 */
    /// While starting a new process, the exec() call failed.
    static let spawn_exec_failed = G_DBUS_ERROR_SPAWN_EXEC_FAILED /* 23 */
    /// While starting a new process, the fork() call failed.
    static let spawn_fork_failed = G_DBUS_ERROR_SPAWN_FORK_FAILED /* 24 */
    /// While starting a new process, the child exited with a status code.
    static let spawn_child_exited = G_DBUS_ERROR_SPAWN_CHILD_EXITED /* 25 */
    /// While starting a new process, the child exited on a signal.
    static let spawn_child_signaled = G_DBUS_ERROR_SPAWN_CHILD_SIGNALED /* 26 */
    /// While starting a new process, something went wrong.
    static let spawn_failed = G_DBUS_ERROR_SPAWN_FAILED /* 27 */
    /// We failed to setup the environment correctly.
    static let spawn_setup_failed = G_DBUS_ERROR_SPAWN_SETUP_FAILED /* 28 */
    /// We failed to setup the config parser correctly.
    static let spawn_config_invalid = G_DBUS_ERROR_SPAWN_CONFIG_INVALID /* 29 */
    /// Bus name was not valid.
    static let spawn_service_invalid = G_DBUS_ERROR_SPAWN_SERVICE_INVALID /* 30 */
    /// Service file not found in system-services directory.
    static let spawn_service_not_found = G_DBUS_ERROR_SPAWN_SERVICE_NOT_FOUND /* 31 */
    /// Permissions are incorrect on the setuid helper.
    static let spawn_permissions_invalid = G_DBUS_ERROR_SPAWN_PERMISSIONS_INVALID /* 32 */
    /// Service file invalid (Name, User or Exec missing).
    static let spawn_file_invalid = G_DBUS_ERROR_SPAWN_FILE_INVALID /* 33 */
    /// Tried to get a UNIX process ID and it wasn't available.
    static let spawn_no_memory = G_DBUS_ERROR_SPAWN_NO_MEMORY /* 34 */
    /// Tried to get a UNIX process ID and it wasn't available.
    static let unix_process_id_unknown = G_DBUS_ERROR_UNIX_PROCESS_ID_UNKNOWN /* 35 */
    /// A type signature is not valid.
    static let invalid_signature = G_DBUS_ERROR_INVALID_SIGNATURE /* 36 */
    /// A file contains invalid syntax or is otherwise broken.
    static let invalid_file_content = G_DBUS_ERROR_INVALID_FILE_CONTENT /* 37 */
    /// Asked for SELinux security context and it wasn't available.
    static let selinux_security_context_unknown = G_DBUS_ERROR_SELINUX_SECURITY_CONTEXT_UNKNOWN /* 38 */
    /// Asked for ADT audit data and it wasn't available.
    static let adt_audit_data_unknown = G_DBUS_ERROR_ADT_AUDIT_DATA_UNKNOWN /* 39 */
    /// There's already an object with the requested object path.
    static let object_path_in_use = G_DBUS_ERROR_OBJECT_PATH_IN_USE /* 40 */
    /// Object you invoked a method on isn't known. Since 2.42
    static let unknown_object = G_DBUS_ERROR_UNKNOWN_OBJECT /* 41 */
    /// Interface you invoked a method on isn't known by the object. Since 2.42
    static let unknown_interface = G_DBUS_ERROR_UNKNOWN_INTERFACE /* 42 */
    /// Property you tried to access isn't known by the object. Since 2.42
    static let unknown_property = G_DBUS_ERROR_UNKNOWN_PROPERTY /* 43 */
    /// Property you tried to set is read-only. Since 2.42
    static let property_read_only = G_DBUS_ERROR_PROPERTY_READ_ONLY /* 44 */
}

/// Enumeration used to describe the byte order of a D-Bus message.
public typealias DBusMessageByteOrder = GDBusMessageByteOrder

public extension DBusMessageByteOrder {
    /// The byte order is big endian.
    static let big_endian = G_DBUS_MESSAGE_BYTE_ORDER_BIG_ENDIAN /* 66 */
    /// The byte order is little endian.
    static let little_endian = G_DBUS_MESSAGE_BYTE_ORDER_LITTLE_ENDIAN /* 108 */
}

/// Header fields used in `GDBusMessage`.
public typealias DBusMessageHeaderField = GDBusMessageHeaderField

public extension DBusMessageHeaderField {
    /// Not a valid header field.
    static let invalid = G_DBUS_MESSAGE_HEADER_FIELD_INVALID /* 0 */
    /// The object path.
    static let path = G_DBUS_MESSAGE_HEADER_FIELD_PATH /* 1 */
    /// The interface name.
    static let interface = G_DBUS_MESSAGE_HEADER_FIELD_INTERFACE /* 2 */
    /// The method or signal name.
    static let member = G_DBUS_MESSAGE_HEADER_FIELD_MEMBER /* 3 */
    /// The name of the error that occurred.
    static let error_name = G_DBUS_MESSAGE_HEADER_FIELD_ERROR_NAME /* 4 */
    /// The serial number the message is a reply to.
    static let reply_serial = G_DBUS_MESSAGE_HEADER_FIELD_REPLY_SERIAL /* 5 */
    /// The name the message is intended for.
    static let destination = G_DBUS_MESSAGE_HEADER_FIELD_DESTINATION /* 6 */
    /// Unique name of the sender of the message (filled in by the bus).
    static let sender = G_DBUS_MESSAGE_HEADER_FIELD_SENDER /* 7 */
    /// The signature of the message body.
    static let signature = G_DBUS_MESSAGE_HEADER_FIELD_SIGNATURE /* 8 */
    /// The number of UNIX file descriptors that accompany the message.
    static let num_unix_fds = G_DBUS_MESSAGE_HEADER_FIELD_NUM_UNIX_FDS /* 9 */
}

/// Message types used in `GDBusMessage`.
public typealias DBusMessageType = GDBusMessageType

public extension DBusMessageType {
    /// Message is of invalid type.
    static let invalid = G_DBUS_MESSAGE_TYPE_INVALID /* 0 */
    /// Method call.
    static let method_call = G_DBUS_MESSAGE_TYPE_METHOD_CALL /* 1 */
    /// Method reply.
    static let method_return = G_DBUS_MESSAGE_TYPE_METHOD_RETURN /* 2 */
    /// Error reply.
    static let error = G_DBUS_MESSAGE_TYPE_ERROR /* 3 */
    /// Signal emission.
    static let signal = G_DBUS_MESSAGE_TYPE_SIGNAL /* 4 */
}

/// `GDataStreamByteOrder` is used to ensure proper endianness of streaming data sources
/// across various machine architectures.
public typealias DataStreamByteOrder = GDataStreamByteOrder

public extension DataStreamByteOrder {
    /// Selects Big Endian byte order.
    static let big_endian = G_DATA_STREAM_BYTE_ORDER_BIG_ENDIAN /* 0 */
    /// Selects Little Endian byte order.
    static let little_endian = G_DATA_STREAM_BYTE_ORDER_LITTLE_ENDIAN /* 1 */
    /// Selects endianness based on host machine's architecture.
    static let host_endian = G_DATA_STREAM_BYTE_ORDER_HOST_ENDIAN /* 2 */
}

/// `GDataStreamNewlineType` is used when checking for or setting the line endings for a given file.
public typealias DataStreamNewlineType = GDataStreamNewlineType

public extension DataStreamNewlineType {
    /// Selects "LF" line endings, common on most modern UNIX platforms.
    static let lf = G_DATA_STREAM_NEWLINE_TYPE_LF /* 0 */
    /// Selects "CR" line endings.
    static let cr = G_DATA_STREAM_NEWLINE_TYPE_CR /* 1 */
    /// Selects "CR, LF" line ending, common on Microsoft Windows.
    static let cr_lf = G_DATA_STREAM_NEWLINE_TYPE_CR_LF /* 2 */
    /// Automatically try to handle any line ending type.
    static let any = G_DATA_STREAM_NEWLINE_TYPE_ANY /* 3 */
}

/// Enumeration describing how a drive can be started/stopped.
public typealias DriveStartStopType = GDriveStartStopType

public extension DriveStartStopType {
    /// Unknown or drive doesn't support
    ///    start/stop.
    static let unknown = G_DRIVE_START_STOP_TYPE_UNKNOWN /* 0 */
    /// The stop method will physically
    ///    shut down the drive and e.g. power down the port the drive is
    ///    attached to.
    static let shutdown = G_DRIVE_START_STOP_TYPE_SHUTDOWN /* 1 */
    /// The start/stop methods are used
    ///    for connecting/disconnect to the drive over the network.
    static let network = G_DRIVE_START_STOP_TYPE_NETWORK /* 2 */
    /// The start/stop methods will
    ///    assemble/disassemble a virtual drive from several physical
    ///    drives.
    static let multidisk = G_DRIVE_START_STOP_TYPE_MULTIDISK /* 3 */
    /// The start/stop methods will
    ///    unlock/lock the disk (for example using the ATA <quote>SECURITY
    ///    UNLOCK DEVICE</quote> command)
    static let password = G_DRIVE_START_STOP_TYPE_PASSWORD /* 4 */
}

/// GEmblemOrigin is used to add information about the origin of the emblem
/// to `GEmblem`.
public typealias EmblemOrigin = GEmblemOrigin

public extension EmblemOrigin {
    /// Emblem of unknown origin
    static let unknown = G_EMBLEM_ORIGIN_UNKNOWN /* 0 */
    /// Emblem adds device-specific information
    static let device = G_EMBLEM_ORIGIN_DEVICE /* 1 */
    /// Emblem depicts live metadata, such as "readonly"
    static let livemetadata = G_EMBLEM_ORIGIN_LIVEMETADATA /* 2 */
    /// Emblem comes from a user-defined tag, e.g. set by nautilus (in the future)
    static let tag = G_EMBLEM_ORIGIN_TAG /* 3 */
}

/// Used by g_file_set_attributes_from_info() when setting file attributes.
public typealias FileAttributeStatus = GFileAttributeStatus

public extension FileAttributeStatus {
    /// Attribute value is unset (empty).
    static let unset = G_FILE_ATTRIBUTE_STATUS_UNSET /* 0 */
    /// Attribute value is set.
    static let set = G_FILE_ATTRIBUTE_STATUS_SET /* 1 */
    /// Indicates an error in setting the value.
    static let error_setting = G_FILE_ATTRIBUTE_STATUS_ERROR_SETTING /* 2 */
}

/// The data types for file attributes.
public typealias FileAttributeType = GFileAttributeType

public extension FileAttributeType {
    /// indicates an invalid or uninitalized type.
    static let invalid = G_FILE_ATTRIBUTE_TYPE_INVALID /* 0 */
    /// a null terminated UTF8 string.
    static let string = G_FILE_ATTRIBUTE_TYPE_STRING /* 1 */
    /// a zero terminated string of non-zero bytes.
    static let byte_string = G_FILE_ATTRIBUTE_TYPE_BYTE_STRING /* 2 */
    /// a boolean value.
    static let boolean = G_FILE_ATTRIBUTE_TYPE_BOOLEAN /* 3 */
    /// an unsigned 4-byte/32-bit integer.
    static let uint32 = G_FILE_ATTRIBUTE_TYPE_UINT32 /* 4 */
    /// a signed 4-byte/32-bit integer.
    static let int32 = G_FILE_ATTRIBUTE_TYPE_INT32 /* 5 */
    /// an unsigned 8-byte/64-bit integer.
    static let uint64 = G_FILE_ATTRIBUTE_TYPE_UINT64 /* 6 */
    /// a signed 8-byte/64-bit integer.
    static let int64 = G_FILE_ATTRIBUTE_TYPE_INT64 /* 7 */
    /// a `GObject`.
    static let object = G_FILE_ATTRIBUTE_TYPE_OBJECT /* 8 */
    /// a `nil` terminated char **. Since 2.22
    static let stringv = G_FILE_ATTRIBUTE_TYPE_STRINGV /* 9 */
}

/// Specifies what type of event a monitor event is.
public typealias FileMonitorEvent = GFileMonitorEvent

public extension FileMonitorEvent {
    /// a file changed.
    static let changed = G_FILE_MONITOR_EVENT_CHANGED /* 0 */
    /// a hint that this was probably the last change in a set of changes.
    static let changes_done_hint = G_FILE_MONITOR_EVENT_CHANGES_DONE_HINT /* 1 */
    /// a file was deleted.
    static let deleted = G_FILE_MONITOR_EVENT_DELETED /* 2 */
    /// a file was created.
    static let created = G_FILE_MONITOR_EVENT_CREATED /* 3 */
    /// a file attribute was changed.
    static let attribute_changed = G_FILE_MONITOR_EVENT_ATTRIBUTE_CHANGED /* 4 */
    /// the file location will soon be unmounted.
    static let pre_unmount = G_FILE_MONITOR_EVENT_PRE_UNMOUNT /* 5 */
    /// the file location was unmounted.
    static let unmounted = G_FILE_MONITOR_EVENT_UNMOUNTED /* 6 */
    /// the file was moved -- only sent if the
    ///   (deprecated) `G_FILE_MONITOR_SEND_MOVED` flag is set
    static let moved = G_FILE_MONITOR_EVENT_MOVED /* 7 */
    /// the file was renamed within the
    ///   current directory -- only sent if the `G_FILE_MONITOR_WATCH_MOVES`
    ///   flag is set.  Since: 2.46.
    static let renamed = G_FILE_MONITOR_EVENT_RENAMED /* 8 */
    /// the file was moved into the
    ///   monitored directory from another location -- only sent if the
    ///   `G_FILE_MONITOR_WATCH_MOVES` flag is set.  Since: 2.46.
    static let moved_in = G_FILE_MONITOR_EVENT_MOVED_IN /* 9 */
    /// the file was moved out of the
    ///   monitored directory to another location -- only sent if the
    ///   `G_FILE_MONITOR_WATCH_MOVES` flag is set.  Since: 2.46
    static let moved_out = G_FILE_MONITOR_EVENT_MOVED_OUT /* 10 */
}

/// Indicates the file's on-disk type.
/// 
/// On Windows systems a file will never have `G_FILE_TYPE_SYMBOLIC_LINK` type;
/// use `GFileInfo` and `G_FILE_ATTRIBUTE_STANDARD_IS_SYMLINK` to determine
/// whether a file is a symlink or not. This is due to the fact that NTFS does
/// not have a single filesystem object type for symbolic links - it has
/// files that symlink to files, and directories that symlink to directories.
/// `GFileType` enumeration cannot precisely represent this important distinction,
/// which is why all Windows symlinks will continue to be reported as
/// `G_FILE_TYPE_REGULAR` or `G_FILE_TYPE_DIRECTORY`.
public typealias FileType = GFileType

public extension FileType {
    /// File's type is unknown.
    static let unknown = G_FILE_TYPE_UNKNOWN /* 0 */
    /// File handle represents a regular file.
    static let regular = G_FILE_TYPE_REGULAR /* 1 */
    /// File handle represents a directory.
    static let directory = G_FILE_TYPE_DIRECTORY /* 2 */
    /// File handle represents a symbolic link
    ///    (Unix systems).
    static let symbolic_link = G_FILE_TYPE_SYMBOLIC_LINK /* 3 */
    /// File is a "special" file, such as a socket, fifo,
    ///    block device, or character device.
    static let special = G_FILE_TYPE_SPECIAL /* 4 */
    /// File is a shortcut (Windows systems).
    static let shortcut = G_FILE_TYPE_SHORTCUT /* 5 */
    /// File is a mountable location.
    static let mountable = G_FILE_TYPE_MOUNTABLE /* 6 */
}

/// Indicates a hint from the file system whether files should be
/// previewed in a file manager. Returned as the value of the key
/// `G_FILE_ATTRIBUTE_FILESYSTEM_USE_PREVIEW`.
public typealias FilesystemPreviewType = GFilesystemPreviewType

public extension FilesystemPreviewType {
    /// Only preview files if user has explicitly requested it.
    static let if_always = G_FILESYSTEM_PREVIEW_TYPE_IF_ALWAYS /* 0 */
    /// Preview files if user has requested preview of "local" files.
    static let if_local = G_FILESYSTEM_PREVIEW_TYPE_IF_LOCAL /* 1 */
    /// Never preview files.
    static let never = G_FILESYSTEM_PREVIEW_TYPE_NEVER /* 2 */
}

/// Error codes returned by GIO functions.
/// 
/// Note that this domain may be extended in future GLib releases. In
/// general, new error codes either only apply to new APIs, or else
/// replace `G_IO_ERROR_FAILED` in cases that were not explicitly
/// distinguished before. You should therefore avoid writing code like
/// (C Language Example):
/// ```C
/// if (g_error_matches (error, G_IO_ERROR, G_IO_ERROR_FAILED))
///   {
///     // Assume that this is EPRINTERONFIRE
///     ...
///   }
/// ```
/// 
/// but should instead treat all unrecognized error codes the same as
/// `G_IO_ERROR_FAILED`.
/// 
/// See also `GPollableReturn` for a cheaper way of returning
/// `G_IO_ERROR_WOULD_BLOCK` to callers without allocating a `GError`.
public typealias IOErrorEnum = GIOErrorEnum

public extension IOErrorEnum {
    /// Generic error condition for when an operation fails
    ///     and no more specific `GIOErrorEnum` value is defined.
    static let failed = G_IO_ERROR_FAILED /* 0 */
    /// File not found.
    static let not_found = G_IO_ERROR_NOT_FOUND /* 1 */
    /// File already exists.
    static let exists = G_IO_ERROR_EXISTS /* 2 */
    /// File is a directory.
    static let is_directory = G_IO_ERROR_IS_DIRECTORY /* 3 */
    /// File is not a directory.
    static let not_directory = G_IO_ERROR_NOT_DIRECTORY /* 4 */
    /// File is a directory that isn't empty.
    static let not_empty = G_IO_ERROR_NOT_EMPTY /* 5 */
    /// File is not a regular file.
    static let not_regular_file = G_IO_ERROR_NOT_REGULAR_FILE /* 6 */
    /// File is not a symbolic link.
    static let not_symbolic_link = G_IO_ERROR_NOT_SYMBOLIC_LINK /* 7 */
    /// File cannot be mounted.
    static let not_mountable_file = G_IO_ERROR_NOT_MOUNTABLE_FILE /* 8 */
    /// Filename is too many characters.
    static let filename_too_long = G_IO_ERROR_FILENAME_TOO_LONG /* 9 */
    /// Filename is invalid or contains invalid characters.
    static let invalid_filename = G_IO_ERROR_INVALID_FILENAME /* 10 */
    /// File contains too many symbolic links.
    static let too_many_links = G_IO_ERROR_TOO_MANY_LINKS /* 11 */
    /// No space left on drive.
    static let no_space = G_IO_ERROR_NO_SPACE /* 12 */
    /// Invalid argument.
    static let invalid_argument = G_IO_ERROR_INVALID_ARGUMENT /* 13 */
    /// Permission denied.
    static let permission_denied = G_IO_ERROR_PERMISSION_DENIED /* 14 */
    /// Operation (or one of its parameters) not supported
    static let not_supported = G_IO_ERROR_NOT_SUPPORTED /* 15 */
    /// File isn't mounted.
    static let not_mounted = G_IO_ERROR_NOT_MOUNTED /* 16 */
    /// File is already mounted.
    static let already_mounted = G_IO_ERROR_ALREADY_MOUNTED /* 17 */
    /// File was closed.
    static let closed = G_IO_ERROR_CLOSED /* 18 */
    /// Operation was cancelled. See `GCancellable`.
    static let cancelled = G_IO_ERROR_CANCELLED /* 19 */
    /// Operations are still pending.
    static let pending = G_IO_ERROR_PENDING /* 20 */
    /// File is read only.
    static let read_only = G_IO_ERROR_READ_ONLY /* 21 */
    /// Backup couldn't be created.
    static let cant_create_backup = G_IO_ERROR_CANT_CREATE_BACKUP /* 22 */
    /// File's Entity Tag was incorrect.
    static let wrong_etag = G_IO_ERROR_WRONG_ETAG /* 23 */
    /// Operation timed out.
    static let timed_out = G_IO_ERROR_TIMED_OUT /* 24 */
    /// Operation would be recursive.
    static let would_recurse = G_IO_ERROR_WOULD_RECURSE /* 25 */
    /// File is busy.
    static let busy = G_IO_ERROR_BUSY /* 26 */
    /// Operation would block.
    static let would_block = G_IO_ERROR_WOULD_BLOCK /* 27 */
    /// Host couldn't be found (remote operations).
    static let host_not_found = G_IO_ERROR_HOST_NOT_FOUND /* 28 */
    /// Operation would merge files.
    static let would_merge = G_IO_ERROR_WOULD_MERGE /* 29 */
    /// Operation failed and a helper program has
    ///     already interacted with the user. Do not display any error dialog.
    static let failed_handled = G_IO_ERROR_FAILED_HANDLED /* 30 */
    /// The current process has too many files
    ///     open and can't open any more. Duplicate descriptors do count toward
    ///     this limit. Since 2.20
    static let too_many_open_files = G_IO_ERROR_TOO_MANY_OPEN_FILES /* 31 */
    /// The object has not been initialized. Since 2.22
    static let not_initialized = G_IO_ERROR_NOT_INITIALIZED /* 32 */
    /// The requested address is already in use. Since 2.22
    static let address_in_use = G_IO_ERROR_ADDRESS_IN_USE /* 33 */
    /// Need more input to finish operation. Since 2.24
    static let partial_input = G_IO_ERROR_PARTIAL_INPUT /* 34 */
    /// The input data was invalid. Since 2.24
    static let invalid_data = G_IO_ERROR_INVALID_DATA /* 35 */
    /// A remote object generated an error that
    ///     doesn't correspond to a locally registered `GError` error
    ///     domain. Use g_dbus_error_get_remote_error() to extract the D-Bus
    ///     error name and g_dbus_error_strip_remote_error() to fix up the
    ///     message so it matches what was received on the wire. Since 2.26.
    static let dbus_error = G_IO_ERROR_DBUS_ERROR /* 36 */
    /// Host unreachable. Since 2.26
    static let host_unreachable = G_IO_ERROR_HOST_UNREACHABLE /* 37 */
    /// Network unreachable. Since 2.26
    static let network_unreachable = G_IO_ERROR_NETWORK_UNREACHABLE /* 38 */
    /// Connection refused. Since 2.26
    static let connection_refused = G_IO_ERROR_CONNECTION_REFUSED /* 39 */
    /// Connection to proxy server failed. Since 2.26
    static let proxy_failed = G_IO_ERROR_PROXY_FAILED /* 40 */
    /// Proxy authentication failed. Since 2.26
    static let proxy_auth_failed = G_IO_ERROR_PROXY_AUTH_FAILED /* 41 */
    /// Proxy server needs authentication. Since 2.26
    static let proxy_need_auth = G_IO_ERROR_PROXY_NEED_AUTH /* 42 */
    /// Proxy connection is not allowed by ruleset.
    ///     Since 2.26
    static let proxy_not_allowed = G_IO_ERROR_PROXY_NOT_ALLOWED /* 43 */
    /// Broken pipe. Since 2.36
    static let broken_pipe = G_IO_ERROR_BROKEN_PIPE /* 44 */
    /// Connection closed by peer. Note that this
    ///     is the same code as `G_IO_ERROR_BROKEN_PIPE`; before 2.44 some
    ///     "connection closed" errors returned `G_IO_ERROR_BROKEN_PIPE`, but others
    ///     returned `G_IO_ERROR_FAILED`. Now they should all return the same
    ///     value, which has this more logical name. Since 2.44.
    static let connection_closed = G_IO_ERROR_CONNECTION_CLOSED /* 44 */
    /// Transport endpoint is not connected. Since 2.44
    static let not_connected = G_IO_ERROR_NOT_CONNECTED /* 45 */
    /// Message too large. Since 2.48.
    static let message_too_large = G_IO_ERROR_MESSAGE_TOO_LARGE /* 46 */
}

/// Flags for use with g_io_module_scope_new().
public typealias IOModuleScopeFlags = GIOModuleScopeFlags

public extension IOModuleScopeFlags {
    /// No module scan flags
    static let none_ = G_IO_MODULE_SCOPE_NONE /* 0 */
    /// When using this scope to load or
    ///     scan modules, automatically block a modules which has the same base
    ///     basename as previously loaded module.
    static let block_duplicates = G_IO_MODULE_SCOPE_BLOCK_DUPLICATES /* 1 */
}

/// `GMountOperationResult` is returned as a result when a request for
/// information is send by the mounting operation.
public typealias MountOperationResult = GMountOperationResult

public extension MountOperationResult {
    /// The request was fulfilled and the
    ///     user specified data is now available
    static let handled = G_MOUNT_OPERATION_HANDLED /* 0 */
    /// The user requested the mount operation
    ///     to be aborted
    static let aborted = G_MOUNT_OPERATION_ABORTED /* 1 */
    /// The request was unhandled (i.e. not
    ///     implemented)
    static let unhandled = G_MOUNT_OPERATION_UNHANDLED /* 2 */
}

/// The host's network connectivity state, as reported by `GNetworkMonitor`.
public typealias NetworkConnectivity = GNetworkConnectivity

public extension NetworkConnectivity {
    /// The host is not configured with a
    ///   route to the Internet; it may or may not be connected to a local
    ///   network.
    static let local = G_NETWORK_CONNECTIVITY_LOCAL /* 1 */
    /// The host is connected to a network, but
    ///   does not appear to be able to reach the full Internet, perhaps
    ///   due to upstream network problems.
    static let limited = G_NETWORK_CONNECTIVITY_LIMITED /* 2 */
    /// The host is behind a captive portal and
    ///   cannot reach the full Internet.
    static let portal = G_NETWORK_CONNECTIVITY_PORTAL /* 3 */
    /// The host is connected to a network, and
    ///   appears to be able to reach the full Internet.
    static let full = G_NETWORK_CONNECTIVITY_FULL /* 4 */
}

/// Priority levels for `GNotifications`.
public typealias NotificationPriority = GNotificationPriority

public extension NotificationPriority {
    /// the default priority, to be used for the
    ///   majority of notifications (for example email messages, software updates,
    ///   completed download/sync operations)
    static let normal = G_NOTIFICATION_PRIORITY_NORMAL /* 0 */
    /// for notifications that do not require
    ///   immediate attention - typically used for contextual background
    ///   information, such as contact birthdays or local weather
    static let low = G_NOTIFICATION_PRIORITY_LOW /* 1 */
    /// for events that require more attention,
    ///   usually because responses are time-sensitive (for example chat and SMS
    ///   messages or alarms)
    static let high = G_NOTIFICATION_PRIORITY_HIGH /* 2 */
    /// for urgent notifications, or notifications
    ///   that require a response in a short space of time (for example phone calls
    ///   or emergency warnings)
    static let urgent = G_NOTIFICATION_PRIORITY_URGENT /* 3 */
}

/// `GPasswordSave` is used to indicate the lifespan of a saved password.
/// 
/// `Gvfs` stores passwords in the Gnome keyring when this flag allows it
/// to, and later retrieves it again from there.
public typealias PasswordSave = GPasswordSave

public extension PasswordSave {
    /// never save a password.
    static let never = G_PASSWORD_SAVE_NEVER /* 0 */
    /// save a password for the session.
    static let for_session = G_PASSWORD_SAVE_FOR_SESSION /* 1 */
    /// save a password permanently.
    static let permanently = G_PASSWORD_SAVE_PERMANENTLY /* 2 */
}

/// Return value for various IO operations that signal errors via the
/// return value and not necessarily via a `GError`.
/// 
/// This enum exists to be able to return errors to callers without having to
/// allocate a `GError`. Allocating `GErrors` can be quite expensive for
/// regularly happening errors like `G_IO_ERROR_WOULD_BLOCK`.
/// 
/// In case of `G_POLLABLE_RETURN_FAILED` a `GError` should be set for the
/// operation to give details about the error that happened.
public typealias PollableReturn = GPollableReturn

public extension PollableReturn {
    /// Generic error condition for when an operation fails.
    static let failed = G_POLLABLE_RETURN_FAILED /* 0 */
    /// The operation was successfully finished.
    static let ok = G_POLLABLE_RETURN_OK /* 1 */
    /// The operation would block.
    static let would_block = G_POLLABLE_RETURN_WOULD_BLOCK /* -27 */
}

/// An error code used with `G_RESOLVER_ERROR` in a `GError` returned
/// from a `GResolver` routine.
public typealias ResolverError = GResolverError

public extension ResolverError {
    /// the requested name/address/service was not
    ///     found
    static let not_found = G_RESOLVER_ERROR_NOT_FOUND /* 0 */
    /// the requested information could not
    ///     be looked up due to a network error or similar problem
    static let temporary_failure = G_RESOLVER_ERROR_TEMPORARY_FAILURE /* 1 */
    /// unknown error
    static let internal_ = G_RESOLVER_ERROR_INTERNAL /* 2 */
}

/// The type of record that g_resolver_lookup_records() or
/// g_resolver_lookup_records_async() should retrieve. The records are returned
/// as lists of `GVariant` tuples. Each record type has different values in
/// the variant tuples returned.
/// 
/// `G_RESOLVER_RECORD_SRV` records are returned as variants with the signature
/// `(qqqs)`, containing a `guint16` with the priority, a `guint16` with the
/// weight, a `guint16` with the port, and a string of the hostname.
/// 
/// `G_RESOLVER_RECORD_MX` records are returned as variants with the signature
/// `(qs)`, representing a `guint16` with the preference, and a string containing
/// the mail exchanger hostname.
/// 
/// `G_RESOLVER_RECORD_TXT` records are returned as variants with the signature
/// `(as)`, representing an array of the strings in the text record. Note: Most TXT
/// records only contain a single string, but
/// [RFC 1035](https://tools.ietf.org/html/rfc1035`section`-3.3.14) does allow a
/// record to contain multiple strings. The RFC which defines the interpretation
/// of a specific TXT record will likely require concatenation of multiple
/// strings if they are present, as with
/// [RFC 7208](https://tools.ietf.org/html/rfc7208`section`-3.3).
/// 
/// `G_RESOLVER_RECORD_SOA` records are returned as variants with the signature
/// `(ssuuuuu)`, representing a string containing the primary name server, a
/// string containing the administrator, the serial as a `guint32`, the refresh
/// interval as a `guint32`, the retry interval as a `guint32`, the expire timeout
/// as a `guint32`, and the TTL as a `guint32`.
/// 
/// `G_RESOLVER_RECORD_NS` records are returned as variants with the signature
/// `(s)`, representing a string of the hostname of the name server.
public typealias ResolverRecordType = GResolverRecordType

public extension ResolverRecordType {
    /// look up DNS SRV records for a domain
    static let srv = G_RESOLVER_RECORD_SRV /* 1 */
    /// look up DNS MX records for a domain
    static let mx = G_RESOLVER_RECORD_MX /* 2 */
    /// look up DNS TXT records for a name
    static let txt = G_RESOLVER_RECORD_TXT /* 3 */
    /// look up DNS SOA records for a zone
    static let soa = G_RESOLVER_RECORD_SOA /* 4 */
    /// look up DNS NS records for a domain
    static let ns = G_RESOLVER_RECORD_NS /* 5 */
}

/// An error code used with `G_RESOURCE_ERROR` in a `GError` returned
/// from a `GResource` routine.
public typealias ResourceError = GResourceError

public extension ResourceError {
    /// no file was found at the requested path
    static let not_found = G_RESOURCE_ERROR_NOT_FOUND /* 0 */
    /// unknown error
    static let internal_ = G_RESOURCE_ERROR_INTERNAL /* 1 */
}

/// Describes an event occurring on a `GSocketClient`. See the
/// `GSocketClient`::event signal for more details.
/// 
/// Additional values may be added to this type in the future.
public typealias SocketClientEvent = GSocketClientEvent

public extension SocketClientEvent {
    /// The client is doing a DNS lookup.
    static let resolving = G_SOCKET_CLIENT_RESOLVING /* 0 */
    /// The client has completed a DNS lookup.
    static let resolved = G_SOCKET_CLIENT_RESOLVED /* 1 */
    /// The client is connecting to a remote
    ///   host (either a proxy or the destination server).
    static let connecting = G_SOCKET_CLIENT_CONNECTING /* 2 */
    /// The client has connected to a remote
    ///   host.
    static let connected = G_SOCKET_CLIENT_CONNECTED /* 3 */
    /// The client is negotiating
    ///   with a proxy to connect to the destination server.
    static let proxy_negotiating = G_SOCKET_CLIENT_PROXY_NEGOTIATING /* 4 */
    /// The client has negotiated
    ///   with the proxy server.
    static let proxy_negotiated = G_SOCKET_CLIENT_PROXY_NEGOTIATED /* 5 */
    /// The client is performing a
    ///   TLS handshake.
    static let tls_handshaking = G_SOCKET_CLIENT_TLS_HANDSHAKING /* 6 */
    /// The client has performed a
    ///   TLS handshake.
    static let tls_handshaked = G_SOCKET_CLIENT_TLS_HANDSHAKED /* 7 */
    /// The client is done with a particular
    ///   `GSocketConnectable`.
    static let complete = G_SOCKET_CLIENT_COMPLETE /* 8 */
}

/// The protocol family of a `GSocketAddress`. (These values are
/// identical to the system defines `AF_INET`, `AF_INET6` and `AF_UNIX`,
/// if available.)
public typealias SocketFamily = GSocketFamily

public extension SocketFamily {
    /// no address family
    static let invalid = G_SOCKET_FAMILY_INVALID /* 0 */
    /// the UNIX domain family
    static let unix = G_SOCKET_FAMILY_UNIX /* 1 */
    /// the IPv4 family
    static let ipv4 = G_SOCKET_FAMILY_IPV4 /* 2 */
    /// the IPv6 family
    static let ipv6 = G_SOCKET_FAMILY_IPV6 /* 30 */
}

/// Describes an event occurring on a `GSocketListener`. See the
/// `GSocketListener`::event signal for more details.
/// 
/// Additional values may be added to this type in the future.
public typealias SocketListenerEvent = GSocketListenerEvent

public extension SocketListenerEvent {
    /// The listener is about to bind a socket.
    static let binding = G_SOCKET_LISTENER_BINDING /* 0 */
    /// The listener has bound a socket.
    static let bound = G_SOCKET_LISTENER_BOUND /* 1 */
    /// The listener is about to start
    ///    listening on this socket.
    static let listening = G_SOCKET_LISTENER_LISTENING /* 2 */
    /// The listener is now listening on
    ///   this socket.
    static let listened = G_SOCKET_LISTENER_LISTENED /* 3 */
}

/// A protocol identifier is specified when creating a `GSocket`, which is a
/// family/type specific identifier, where 0 means the default protocol for
/// the particular family/type.
/// 
/// This enum contains a set of commonly available and used protocols. You
/// can also pass any other identifiers handled by the platform in order to
/// use protocols not listed here.
public typealias Socket_Protocol = GSocketProtocol

public extension Socket_Protocol {
    /// The protocol type is unknown
    static let unknown = G_SOCKET_PROTOCOL_UNKNOWN /* -1 */
    /// The default protocol for the family/type
    static let default_ = G_SOCKET_PROTOCOL_DEFAULT /* 0 */
    /// TCP over IP
    static let tcp = G_SOCKET_PROTOCOL_TCP /* 6 */
    /// UDP over IP
    static let udp = G_SOCKET_PROTOCOL_UDP /* 17 */
    /// SCTP over IP
    static let sctp = G_SOCKET_PROTOCOL_SCTP /* 132 */
}

/// Flags used when creating a `GSocket`. Some protocols may not implement
/// all the socket types.
public typealias SocketType = GSocketType

public extension SocketType {
    /// Type unknown or wrong
    static let invalid = G_SOCKET_TYPE_INVALID /* 0 */
    /// Reliable connection-based byte streams (e.g. TCP).
    static let stream = G_SOCKET_TYPE_STREAM /* 1 */
    /// Connectionless, unreliable datagram passing.
    ///     (e.g. UDP)
    static let datagram = G_SOCKET_TYPE_DATAGRAM /* 2 */
    /// Reliable connection-based passing of datagrams
    ///     of fixed maximum length (e.g. SCTP).
    static let seqpacket = G_SOCKET_TYPE_SEQPACKET /* 3 */
}

/// The client authentication mode for a `GTlsServerConnection`.
public typealias TLSAuthenticationMode = GTlsAuthenticationMode

public extension TLSAuthenticationMode {
    /// client authentication not required
    static let none_ = G_TLS_AUTHENTICATION_NONE /* 0 */
    /// client authentication is requested
    static let requested = G_TLS_AUTHENTICATION_REQUESTED /* 1 */
    /// client authentication is required
    static let required_ = G_TLS_AUTHENTICATION_REQUIRED /* 2 */
}

/// Flags for g_tls_interaction_request_certificate(),
/// g_tls_interaction_request_certificate_async(), and
/// g_tls_interaction_invoke_request_certificate().
public typealias TLSCertificateRequestFlags = GTlsCertificateRequestFlags

public extension TLSCertificateRequestFlags {
    /// No flags
    static let none_ = G_TLS_CERTIFICATE_REQUEST_NONE /* 0 */
}

/// Flags for g_tls_database_lookup_certificate_for_handle(),
/// g_tls_database_lookup_certificate_issuer(),
/// and g_tls_database_lookup_certificates_issued_by().
public typealias TLSDatabaseLookupFlags = GTlsDatabaseLookupFlags

public extension TLSDatabaseLookupFlags {
    /// No lookup flags
    static let none_ = G_TLS_DATABASE_LOOKUP_NONE /* 0 */
    /// Restrict lookup to certificates that have
    ///     a private key.
    static let keypair = G_TLS_DATABASE_LOOKUP_KEYPAIR /* 1 */
}

/// An error code used with `G_TLS_ERROR` in a `GError` returned from a
/// TLS-related routine.
public typealias TLSError = GTlsError

public extension TLSError {
    /// No TLS provider is available
    static let unavailable = G_TLS_ERROR_UNAVAILABLE /* 0 */
    /// Miscellaneous TLS error
    static let misc = G_TLS_ERROR_MISC /* 1 */
    /// The certificate presented could not
    ///   be parsed or failed validation.
    static let bad_certificate = G_TLS_ERROR_BAD_CERTIFICATE /* 2 */
    /// The TLS handshake failed because the
    ///   peer does not seem to be a TLS server.
    static let not_tls = G_TLS_ERROR_NOT_TLS /* 3 */
    /// The TLS handshake failed because the
    ///   peer's certificate was not acceptable.
    static let handshake = G_TLS_ERROR_HANDSHAKE /* 4 */
    /// The TLS handshake failed because
    ///   the server requested a client-side certificate, but none was
    ///   provided. See g_tls_connection_set_certificate().
    static let certificate_required = G_TLS_ERROR_CERTIFICATE_REQUIRED /* 5 */
    /// The TLS connection was closed without proper
    ///   notice, which may indicate an attack. See
    ///   g_tls_connection_set_require_close_notify().
    static let eof = G_TLS_ERROR_EOF /* 6 */
    /// The TLS handshake failed
    ///   because the client sent the fallback SCSV, indicating a protocol
    ///   downgrade attack. Since: 2.60
    static let inappropriate_fallback = G_TLS_ERROR_INAPPROPRIATE_FALLBACK /* 7 */
}

/// `GTlsInteractionResult` is returned by various functions in `GTlsInteraction`
/// when finishing an interaction request.
public typealias TLSInteractionResult = GTlsInteractionResult

public extension TLSInteractionResult {
    /// The interaction was unhandled (i.e. not
    ///     implemented).
    static let unhandled = G_TLS_INTERACTION_UNHANDLED /* 0 */
    /// The interaction completed, and resulting data
    ///     is available.
    static let handled = G_TLS_INTERACTION_HANDLED /* 1 */
    /// The interaction has failed, or was cancelled.
    ///     and the operation should be aborted.
    static let failed = G_TLS_INTERACTION_FAILED /* 2 */
}

/// When to allow rehandshaking. See
/// g_tls_connection_set_rehandshake_mode().
///
/// **TLSRehandshakeMode is deprecated:**
/// Changing the rehandshake mode is no longer
///   required for compatibility. Also, rehandshaking has been removed
///   from the TLS protocol in TLS 1.3.
public typealias TLSRehandshakeMode = GTlsRehandshakeMode

public extension TLSRehandshakeMode {
    /// Never allow rehandshaking
    static let never = G_TLS_REHANDSHAKE_NEVER /* 0 */
    /// Allow safe rehandshaking only
    static let safely = G_TLS_REHANDSHAKE_SAFELY /* 1 */
    /// Allow unsafe rehandshaking
    static let unsafely = G_TLS_REHANDSHAKE_UNSAFELY /* 2 */
}

/// The type of name used by a `GUnixSocketAddress`.
/// `G_UNIX_SOCKET_ADDRESS_PATH` indicates a traditional unix domain
/// socket bound to a filesystem path. `G_UNIX_SOCKET_ADDRESS_ANONYMOUS`
/// indicates a socket not bound to any name (eg, a client-side socket,
/// or a socket created with socketpair()).
/// 
/// For abstract sockets, there are two incompatible ways of naming
/// them; the man pages suggest using the entire `struct sockaddr_un`
/// as the name, padding the unused parts of the `sun_path` field with
/// zeroes; this corresponds to `G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED`.
/// However, many programs instead just use a portion of `sun_path`, and
/// pass an appropriate smaller length to bind() or connect(). This is
/// `G_UNIX_SOCKET_ADDRESS_ABSTRACT`.
public typealias UnixSocketAddressType = GUnixSocketAddressType

public extension UnixSocketAddressType {
    /// invalid
    static let invalid = G_UNIX_SOCKET_ADDRESS_INVALID /* 0 */
    /// anonymous
    static let anonymous = G_UNIX_SOCKET_ADDRESS_ANONYMOUS /* 1 */
    /// a filesystem path
    static let path = G_UNIX_SOCKET_ADDRESS_PATH /* 2 */
    /// an abstract name
    static let abstract = G_UNIX_SOCKET_ADDRESS_ABSTRACT /* 3 */
    /// an abstract name, 0-padded
    ///   to the full length of a unix socket name
    static let abstract_padded = G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED /* 4 */
}

/// Used to select the type of data format to use for `GZlibDecompressor`
/// and `GZlibCompressor`.
public typealias ZlibCompressorFormat = GZlibCompressorFormat

public extension ZlibCompressorFormat {
    /// deflate compression with zlib header
    static let zlib = G_ZLIB_COMPRESSOR_FORMAT_ZLIB /* 0 */
    /// gzip file format
    static let gzip = G_ZLIB_COMPRESSOR_FORMAT_GZIP /* 1 */
    /// deflate compression with no header
    static let raw = G_ZLIB_COMPRESSOR_FORMAT_RAW /* 2 */
}
