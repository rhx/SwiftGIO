import CGLib
import GLib
import GLibObject

/// An enumeration for well-known message buses.
public typealias BusType = GBusType

public extension BusType {
    /// An alias for the message bus that activated the process, if any.
    static let starter = G_BUS_TYPE_STARTER /* -1 */
    /// Not a message bus.
    static let `none` = G_BUS_TYPE_NONE /* 0 */
    /// The system-wide message bus.
    static let system = G_BUS_TYPE_SYSTEM /* 1 */
    /// The login session message bus.
    static let session = G_BUS_TYPE_SESSION /* 2 */
    /// Not a message bus.
    @available(*, deprecated) static let none_ = BusType.`none` /* G_BUS_TYPE_NONE */
}
func cast<I: BinaryInteger>(_ param: I) -> BusType { BusType(rawValue: cast(param)) }
func cast(_ param: BusType) -> UInt32 { cast(param.rawValue) }


/// Results returned from `g_converter_convert()`.
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
func cast<I: BinaryInteger>(_ param: I) -> ConverterResult { ConverterResult(rawValue: cast(param)) }
func cast(_ param: ConverterResult) -> UInt32 { cast(param.rawValue) }


/// Enumeration describing different kinds of native credential types.
public typealias CredentialsType = GCredentialsType

public extension CredentialsType {
    /// Indicates an invalid native credential type.
    static let invalid = G_CREDENTIALS_TYPE_INVALID /* 0 */
    /// The native credentials type is a struct ucred.
    static let linuxUcred = G_CREDENTIALS_TYPE_LINUX_UCRED /* 1 */
    /// The native credentials type is a struct cmsgcred.
    static let freebsdCmsgcred = G_CREDENTIALS_TYPE_FREEBSD_CMSGCRED /* 2 */
    /// The native credentials type is a struct sockpeercred. Added in 2.30.
    static let openbsdSockpeercred = G_CREDENTIALS_TYPE_OPENBSD_SOCKPEERCRED /* 3 */
    /// The native credentials type is a ucred_t. Added in 2.40.
    static let solarisUcred = G_CREDENTIALS_TYPE_SOLARIS_UCRED /* 4 */
    /// The native credentials type is a struct unpcbid.
    static let netbsdUnpcbid = G_CREDENTIALS_TYPE_NETBSD_UNPCBID /* 5 */
    /// The native credentials type is a struct ucred.
    @available(*, deprecated) static let linux_ucred = CredentialsType.linuxUcred /* G_CREDENTIALS_TYPE_LINUX_UCRED */
    /// The native credentials type is a struct cmsgcred.
    @available(*, deprecated) static let freebsd_cmsgcred = CredentialsType.freebsdCmsgcred /* G_CREDENTIALS_TYPE_FREEBSD_CMSGCRED */
    /// The native credentials type is a struct sockpeercred. Added in 2.30.
    @available(*, deprecated) static let openbsd_sockpeercred = CredentialsType.openbsdSockpeercred /* G_CREDENTIALS_TYPE_OPENBSD_SOCKPEERCRED */
    /// The native credentials type is a ucred_t. Added in 2.40.
    @available(*, deprecated) static let solaris_ucred = CredentialsType.solarisUcred /* G_CREDENTIALS_TYPE_SOLARIS_UCRED */
    /// The native credentials type is a struct unpcbid.
    @available(*, deprecated) static let netbsd_unpcbid = CredentialsType.netbsdUnpcbid /* G_CREDENTIALS_TYPE_NETBSD_UNPCBID */
}
func cast<I: BinaryInteger>(_ param: I) -> CredentialsType { CredentialsType(rawValue: cast(param)) }
func cast(_ param: CredentialsType) -> UInt32 { cast(param.rawValue) }


/// Error codes for the `G_DBUS_ERROR` error domain.
public typealias DBusError = GDBusError

public extension DBusError {
    /// A generic error; "something went wrong" - see the error message for
    /// more.
    static let failed = G_DBUS_ERROR_FAILED /* 0 */
    /// There was not enough memory to complete an operation.
    static let noMemory = G_DBUS_ERROR_NO_MEMORY /* 1 */
    /// The bus doesn't know how to launch a service to supply the bus name
    /// you wanted.
    static let serviceUnknown = G_DBUS_ERROR_SERVICE_UNKNOWN /* 2 */
    /// The bus name you referenced doesn't exist (i.e. no application owns
    /// it).
    static let nameHasNoOwner = G_DBUS_ERROR_NAME_HAS_NO_OWNER /* 3 */
    /// No reply to a message expecting one, usually means a timeout occurred.
    static let noReply = G_DBUS_ERROR_NO_REPLY /* 4 */
    /// Something went wrong reading or writing to a socket, for example.
    static let ioError = G_DBUS_ERROR_IO_ERROR /* 5 */
    /// A D-Bus bus address was malformed.
    static let badAddress = G_DBUS_ERROR_BAD_ADDRESS /* 6 */
    /// Requested operation isn't supported (like ENOSYS on UNIX).
    static let notSupported = G_DBUS_ERROR_NOT_SUPPORTED /* 7 */
    /// Some limited resource is exhausted.
    static let limitsExceeded = G_DBUS_ERROR_LIMITS_EXCEEDED /* 8 */
    /// Security restrictions don't allow doing what you're trying to do.
    static let accessDenied = G_DBUS_ERROR_ACCESS_DENIED /* 9 */
    /// Authentication didn't work.
    static let authFailed = G_DBUS_ERROR_AUTH_FAILED /* 10 */
    /// Unable to connect to server (probably caused by ECONNREFUSED on a
    /// socket).
    static let noServer = G_DBUS_ERROR_NO_SERVER /* 11 */
    /// Certain timeout errors, possibly ETIMEDOUT on a socket.  Note that
    /// `G_DBUS_ERROR_NO_REPLY` is used for message reply timeouts. Warning:
    /// this is confusingly-named given that `G_DBUS_ERROR_TIMED_OUT` also
    /// exists. We can't fix it for compatibility reasons so just be
    /// careful.
    static let timeout = G_DBUS_ERROR_TIMEOUT /* 12 */
    /// No network access (probably ENETUNREACH on a socket).
    static let noNetwork = G_DBUS_ERROR_NO_NETWORK /* 13 */
    /// Can't bind a socket since its address is in use (i.e. EADDRINUSE).
    static let addressInUse = G_DBUS_ERROR_ADDRESS_IN_USE /* 14 */
    /// The connection is disconnected and you're trying to use it.
    static let disconnected = G_DBUS_ERROR_DISCONNECTED /* 15 */
    /// Invalid arguments passed to a method call.
    static let invalidArgs = G_DBUS_ERROR_INVALID_ARGS /* 16 */
    /// Missing file.
    static let fileNotFound = G_DBUS_ERROR_FILE_NOT_FOUND /* 17 */
    /// Existing file and the operation you're using does not silently overwrite.
    static let fileExists = G_DBUS_ERROR_FILE_EXISTS /* 18 */
    /// Method name you invoked isn't known by the object you invoked it on.
    static let unknownMethod = G_DBUS_ERROR_UNKNOWN_METHOD /* 19 */
    /// Certain timeout errors, e.g. while starting a service. Warning: this is
    /// confusingly-named given that `G_DBUS_ERROR_TIMEOUT` also exists. We
    /// can't fix it for compatibility reasons so just be careful.
    static let timedOut = G_DBUS_ERROR_TIMED_OUT /* 20 */
    /// Tried to remove or modify a match rule that didn't exist.
    static let matchRuleNotFound = G_DBUS_ERROR_MATCH_RULE_NOT_FOUND /* 21 */
    /// The match rule isn't syntactically valid.
    static let matchRuleInvalid = G_DBUS_ERROR_MATCH_RULE_INVALID /* 22 */
    /// While starting a new process, the `exec()` call failed.
    static let spawnExecFailed = G_DBUS_ERROR_SPAWN_EXEC_FAILED /* 23 */
    /// While starting a new process, the `fork()` call failed.
    static let spawnForkFailed = G_DBUS_ERROR_SPAWN_FORK_FAILED /* 24 */
    /// While starting a new process, the child exited with a status code.
    static let spawnChildExited = G_DBUS_ERROR_SPAWN_CHILD_EXITED /* 25 */
    /// While starting a new process, the child exited on a signal.
    static let spawnChildSignaled = G_DBUS_ERROR_SPAWN_CHILD_SIGNALED /* 26 */
    /// While starting a new process, something went wrong.
    static let spawnFailed = G_DBUS_ERROR_SPAWN_FAILED /* 27 */
    /// We failed to setup the environment correctly.
    static let spawnSetupFailed = G_DBUS_ERROR_SPAWN_SETUP_FAILED /* 28 */
    /// We failed to setup the config parser correctly.
    static let spawnConfigInvalid = G_DBUS_ERROR_SPAWN_CONFIG_INVALID /* 29 */
    /// Bus name was not valid.
    static let spawnServiceInvalid = G_DBUS_ERROR_SPAWN_SERVICE_INVALID /* 30 */
    /// Service file not found in system-services directory.
    static let spawnServiceNotFound = G_DBUS_ERROR_SPAWN_SERVICE_NOT_FOUND /* 31 */
    /// Permissions are incorrect on the setuid helper.
    static let spawnPermissionsInvalid = G_DBUS_ERROR_SPAWN_PERMISSIONS_INVALID /* 32 */
    /// Service file invalid (Name, User or Exec missing).
    static let spawnFileInvalid = G_DBUS_ERROR_SPAWN_FILE_INVALID /* 33 */
    /// Tried to get a UNIX process ID and it wasn't available.
    static let spawnNoMemory = G_DBUS_ERROR_SPAWN_NO_MEMORY /* 34 */
    /// Tried to get a UNIX process ID and it wasn't available.
    static let unixProcessIDUnknown = G_DBUS_ERROR_UNIX_PROCESS_ID_UNKNOWN /* 35 */
    /// A type signature is not valid.
    static let invalidSignature = G_DBUS_ERROR_INVALID_SIGNATURE /* 36 */
    /// A file contains invalid syntax or is otherwise broken.
    static let invalidFileContent = G_DBUS_ERROR_INVALID_FILE_CONTENT /* 37 */
    /// Asked for SELinux security context and it wasn't available.
    static let selinuxSecurityContextUnknown = G_DBUS_ERROR_SELINUX_SECURITY_CONTEXT_UNKNOWN /* 38 */
    /// Asked for ADT audit data and it wasn't available.
    static let adtAuditDataUnknown = G_DBUS_ERROR_ADT_AUDIT_DATA_UNKNOWN /* 39 */
    /// There's already an object with the requested object path.
    static let objectPathInUse = G_DBUS_ERROR_OBJECT_PATH_IN_USE /* 40 */
    /// Object you invoked a method on isn't known. Since 2.42
    static let unknownObject = G_DBUS_ERROR_UNKNOWN_OBJECT /* 41 */
    /// Interface you invoked a method on isn't known by the object. Since 2.42
    static let unknownInterface = G_DBUS_ERROR_UNKNOWN_INTERFACE /* 42 */
    /// Property you tried to access isn't known by the object. Since 2.42
    static let unknownProperty = G_DBUS_ERROR_UNKNOWN_PROPERTY /* 43 */
    /// Property you tried to set is read-only. Since 2.42
    static let propertyReadOnly = G_DBUS_ERROR_PROPERTY_READ_ONLY /* 44 */
    /// There was not enough memory to complete an operation.
    @available(*, deprecated) static let no_memory = DBusError.noMemory /* G_DBUS_ERROR_NO_MEMORY */
    /// The bus doesn't know how to launch a service to supply the bus name
    /// you wanted.
    @available(*, deprecated) static let service_unknown = DBusError.serviceUnknown /* G_DBUS_ERROR_SERVICE_UNKNOWN */
    /// The bus name you referenced doesn't exist (i.e. no application owns
    /// it).
    @available(*, deprecated) static let name_has_no_owner = DBusError.nameHasNoOwner /* G_DBUS_ERROR_NAME_HAS_NO_OWNER */
    /// No reply to a message expecting one, usually means a timeout occurred.
    @available(*, deprecated) static let no_reply = DBusError.noReply /* G_DBUS_ERROR_NO_REPLY */
    /// Something went wrong reading or writing to a socket, for example.
    @available(*, deprecated) static let io_error = DBusError.ioError /* G_DBUS_ERROR_IO_ERROR */
    /// A D-Bus bus address was malformed.
    @available(*, deprecated) static let bad_address = DBusError.badAddress /* G_DBUS_ERROR_BAD_ADDRESS */
    /// Requested operation isn't supported (like ENOSYS on UNIX).
    @available(*, deprecated) static let not_supported = DBusError.notSupported /* G_DBUS_ERROR_NOT_SUPPORTED */
    /// Some limited resource is exhausted.
    @available(*, deprecated) static let limits_exceeded = DBusError.limitsExceeded /* G_DBUS_ERROR_LIMITS_EXCEEDED */
    /// Security restrictions don't allow doing what you're trying to do.
    @available(*, deprecated) static let access_denied = DBusError.accessDenied /* G_DBUS_ERROR_ACCESS_DENIED */
    /// Authentication didn't work.
    @available(*, deprecated) static let auth_failed = DBusError.authFailed /* G_DBUS_ERROR_AUTH_FAILED */
    /// Unable to connect to server (probably caused by ECONNREFUSED on a
    /// socket).
    @available(*, deprecated) static let no_server = DBusError.noServer /* G_DBUS_ERROR_NO_SERVER */
    /// No network access (probably ENETUNREACH on a socket).
    @available(*, deprecated) static let no_network = DBusError.noNetwork /* G_DBUS_ERROR_NO_NETWORK */
    /// Can't bind a socket since its address is in use (i.e. EADDRINUSE).
    @available(*, deprecated) static let address_in_use = DBusError.addressInUse /* G_DBUS_ERROR_ADDRESS_IN_USE */
    /// Invalid arguments passed to a method call.
    @available(*, deprecated) static let invalid_args = DBusError.invalidArgs /* G_DBUS_ERROR_INVALID_ARGS */
    /// Missing file.
    @available(*, deprecated) static let file_not_found = DBusError.fileNotFound /* G_DBUS_ERROR_FILE_NOT_FOUND */
    /// Existing file and the operation you're using does not silently overwrite.
    @available(*, deprecated) static let file_exists = DBusError.fileExists /* G_DBUS_ERROR_FILE_EXISTS */
    /// Method name you invoked isn't known by the object you invoked it on.
    @available(*, deprecated) static let unknown_method = DBusError.unknownMethod /* G_DBUS_ERROR_UNKNOWN_METHOD */
    /// Certain timeout errors, e.g. while starting a service. Warning: this is
    /// confusingly-named given that `G_DBUS_ERROR_TIMEOUT` also exists. We
    /// can't fix it for compatibility reasons so just be careful.
    @available(*, deprecated) static let timed_out = DBusError.timedOut /* G_DBUS_ERROR_TIMED_OUT */
    /// Tried to remove or modify a match rule that didn't exist.
    @available(*, deprecated) static let match_rule_not_found = DBusError.matchRuleNotFound /* G_DBUS_ERROR_MATCH_RULE_NOT_FOUND */
    /// The match rule isn't syntactically valid.
    @available(*, deprecated) static let match_rule_invalid = DBusError.matchRuleInvalid /* G_DBUS_ERROR_MATCH_RULE_INVALID */
    /// While starting a new process, the `exec()` call failed.
    @available(*, deprecated) static let spawn_exec_failed = DBusError.spawnExecFailed /* G_DBUS_ERROR_SPAWN_EXEC_FAILED */
    /// While starting a new process, the `fork()` call failed.
    @available(*, deprecated) static let spawn_fork_failed = DBusError.spawnForkFailed /* G_DBUS_ERROR_SPAWN_FORK_FAILED */
    /// While starting a new process, the child exited with a status code.
    @available(*, deprecated) static let spawn_child_exited = DBusError.spawnChildExited /* G_DBUS_ERROR_SPAWN_CHILD_EXITED */
    /// While starting a new process, the child exited on a signal.
    @available(*, deprecated) static let spawn_child_signaled = DBusError.spawnChildSignaled /* G_DBUS_ERROR_SPAWN_CHILD_SIGNALED */
    /// While starting a new process, something went wrong.
    @available(*, deprecated) static let spawn_failed = DBusError.spawnFailed /* G_DBUS_ERROR_SPAWN_FAILED */
    /// We failed to setup the environment correctly.
    @available(*, deprecated) static let spawn_setup_failed = DBusError.spawnSetupFailed /* G_DBUS_ERROR_SPAWN_SETUP_FAILED */
    /// We failed to setup the config parser correctly.
    @available(*, deprecated) static let spawn_config_invalid = DBusError.spawnConfigInvalid /* G_DBUS_ERROR_SPAWN_CONFIG_INVALID */
    /// Bus name was not valid.
    @available(*, deprecated) static let spawn_service_invalid = DBusError.spawnServiceInvalid /* G_DBUS_ERROR_SPAWN_SERVICE_INVALID */
    /// Service file not found in system-services directory.
    @available(*, deprecated) static let spawn_service_not_found = DBusError.spawnServiceNotFound /* G_DBUS_ERROR_SPAWN_SERVICE_NOT_FOUND */
    /// Permissions are incorrect on the setuid helper.
    @available(*, deprecated) static let spawn_permissions_invalid = DBusError.spawnPermissionsInvalid /* G_DBUS_ERROR_SPAWN_PERMISSIONS_INVALID */
    /// Service file invalid (Name, User or Exec missing).
    @available(*, deprecated) static let spawn_file_invalid = DBusError.spawnFileInvalid /* G_DBUS_ERROR_SPAWN_FILE_INVALID */
    /// Tried to get a UNIX process ID and it wasn't available.
    @available(*, deprecated) static let spawn_no_memory = DBusError.spawnNoMemory /* G_DBUS_ERROR_SPAWN_NO_MEMORY */
    /// Tried to get a UNIX process ID and it wasn't available.
    @available(*, deprecated) static let unix_process_id_unknown = DBusError.unixProcessIDUnknown /* G_DBUS_ERROR_UNIX_PROCESS_ID_UNKNOWN */
    /// A type signature is not valid.
    @available(*, deprecated) static let invalid_signature = DBusError.invalidSignature /* G_DBUS_ERROR_INVALID_SIGNATURE */
    /// A file contains invalid syntax or is otherwise broken.
    @available(*, deprecated) static let invalid_file_content = DBusError.invalidFileContent /* G_DBUS_ERROR_INVALID_FILE_CONTENT */
    /// Asked for SELinux security context and it wasn't available.
    @available(*, deprecated) static let selinux_security_context_unknown = DBusError.selinuxSecurityContextUnknown /* G_DBUS_ERROR_SELINUX_SECURITY_CONTEXT_UNKNOWN */
    /// Asked for ADT audit data and it wasn't available.
    @available(*, deprecated) static let adt_audit_data_unknown = DBusError.adtAuditDataUnknown /* G_DBUS_ERROR_ADT_AUDIT_DATA_UNKNOWN */
    /// There's already an object with the requested object path.
    @available(*, deprecated) static let object_path_in_use = DBusError.objectPathInUse /* G_DBUS_ERROR_OBJECT_PATH_IN_USE */
    /// Object you invoked a method on isn't known. Since 2.42
    @available(*, deprecated) static let unknown_object = DBusError.unknownObject /* G_DBUS_ERROR_UNKNOWN_OBJECT */
    /// Interface you invoked a method on isn't known by the object. Since 2.42
    @available(*, deprecated) static let unknown_interface = DBusError.unknownInterface /* G_DBUS_ERROR_UNKNOWN_INTERFACE */
    /// Property you tried to access isn't known by the object. Since 2.42
    @available(*, deprecated) static let unknown_property = DBusError.unknownProperty /* G_DBUS_ERROR_UNKNOWN_PROPERTY */
    /// Property you tried to set is read-only. Since 2.42
    @available(*, deprecated) static let property_read_only = DBusError.propertyReadOnly /* G_DBUS_ERROR_PROPERTY_READ_ONLY */
}
func cast<I: BinaryInteger>(_ param: I) -> DBusError { DBusError(rawValue: cast(param)) }
func cast(_ param: DBusError) -> UInt32 { cast(param.rawValue) }


/// Enumeration used to describe the byte order of a D-Bus message.
public typealias DBusMessageByteOrder = GDBusMessageByteOrder

public extension DBusMessageByteOrder {
    /// The byte order is big endian.
    static let bigEndian = G_DBUS_MESSAGE_BYTE_ORDER_BIG_ENDIAN /* 66 */
    /// The byte order is little endian.
    static let littleEndian = G_DBUS_MESSAGE_BYTE_ORDER_LITTLE_ENDIAN /* 108 */
    /// The byte order is big endian.
    @available(*, deprecated) static let big_endian = DBusMessageByteOrder.bigEndian /* G_DBUS_MESSAGE_BYTE_ORDER_BIG_ENDIAN */
    /// The byte order is little endian.
    @available(*, deprecated) static let little_endian = DBusMessageByteOrder.littleEndian /* G_DBUS_MESSAGE_BYTE_ORDER_LITTLE_ENDIAN */
}
func cast<I: BinaryInteger>(_ param: I) -> DBusMessageByteOrder { DBusMessageByteOrder(rawValue: cast(param)) }
func cast(_ param: DBusMessageByteOrder) -> UInt32 { cast(param.rawValue) }


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
    static let errorName = G_DBUS_MESSAGE_HEADER_FIELD_ERROR_NAME /* 4 */
    /// The serial number the message is a reply to.
    static let replySerial = G_DBUS_MESSAGE_HEADER_FIELD_REPLY_SERIAL /* 5 */
    /// The name the message is intended for.
    static let destination = G_DBUS_MESSAGE_HEADER_FIELD_DESTINATION /* 6 */
    /// Unique name of the sender of the message (filled in by the bus).
    static let sender = G_DBUS_MESSAGE_HEADER_FIELD_SENDER /* 7 */
    /// The signature of the message body.
    static let signature = G_DBUS_MESSAGE_HEADER_FIELD_SIGNATURE /* 8 */
    /// The number of UNIX file descriptors that accompany the message.
    static let numUnixFds = G_DBUS_MESSAGE_HEADER_FIELD_NUM_UNIX_FDS /* 9 */
    /// The name of the error that occurred.
    @available(*, deprecated) static let error_name = DBusMessageHeaderField.errorName /* G_DBUS_MESSAGE_HEADER_FIELD_ERROR_NAME */
    /// The serial number the message is a reply to.
    @available(*, deprecated) static let reply_serial = DBusMessageHeaderField.replySerial /* G_DBUS_MESSAGE_HEADER_FIELD_REPLY_SERIAL */
    /// The number of UNIX file descriptors that accompany the message.
    @available(*, deprecated) static let num_unix_fds = DBusMessageHeaderField.numUnixFds /* G_DBUS_MESSAGE_HEADER_FIELD_NUM_UNIX_FDS */
}
func cast<I: BinaryInteger>(_ param: I) -> DBusMessageHeaderField { DBusMessageHeaderField(rawValue: cast(param)) }
func cast(_ param: DBusMessageHeaderField) -> UInt32 { cast(param.rawValue) }


/// Message types used in `GDBusMessage`.
public typealias DBusMessageType = GDBusMessageType

public extension DBusMessageType {
    /// Message is of invalid type.
    static let invalid = G_DBUS_MESSAGE_TYPE_INVALID /* 0 */
    /// Method call.
    static let methodCall = G_DBUS_MESSAGE_TYPE_METHOD_CALL /* 1 */
    /// Method reply.
    static let methodReturn = G_DBUS_MESSAGE_TYPE_METHOD_RETURN /* 2 */
    /// Error reply.
    static let error = G_DBUS_MESSAGE_TYPE_ERROR /* 3 */
    /// Signal emission.
    static let signal = G_DBUS_MESSAGE_TYPE_SIGNAL /* 4 */
    /// Method call.
    @available(*, deprecated) static let method_call = DBusMessageType.methodCall /* G_DBUS_MESSAGE_TYPE_METHOD_CALL */
    /// Method reply.
    @available(*, deprecated) static let method_return = DBusMessageType.methodReturn /* G_DBUS_MESSAGE_TYPE_METHOD_RETURN */
}
func cast<I: BinaryInteger>(_ param: I) -> DBusMessageType { DBusMessageType(rawValue: cast(param)) }
func cast(_ param: DBusMessageType) -> UInt32 { cast(param.rawValue) }


/// `GDataStreamByteOrder` is used to ensure proper endianness of streaming data sources
/// across various machine architectures.
public typealias DataStreamByteOrder = GDataStreamByteOrder

public extension DataStreamByteOrder {
    /// Selects Big Endian byte order.
    static let bigEndian = G_DATA_STREAM_BYTE_ORDER_BIG_ENDIAN /* 0 */
    /// Selects Little Endian byte order.
    static let littleEndian = G_DATA_STREAM_BYTE_ORDER_LITTLE_ENDIAN /* 1 */
    /// Selects endianness based on host machine's architecture.
    static let hostEndian = G_DATA_STREAM_BYTE_ORDER_HOST_ENDIAN /* 2 */
    /// Selects Big Endian byte order.
    @available(*, deprecated) static let big_endian = DataStreamByteOrder.bigEndian /* G_DATA_STREAM_BYTE_ORDER_BIG_ENDIAN */
    /// Selects Little Endian byte order.
    @available(*, deprecated) static let little_endian = DataStreamByteOrder.littleEndian /* G_DATA_STREAM_BYTE_ORDER_LITTLE_ENDIAN */
    /// Selects endianness based on host machine's architecture.
    @available(*, deprecated) static let host_endian = DataStreamByteOrder.hostEndian /* G_DATA_STREAM_BYTE_ORDER_HOST_ENDIAN */
}
func cast<I: BinaryInteger>(_ param: I) -> DataStreamByteOrder { DataStreamByteOrder(rawValue: cast(param)) }
func cast(_ param: DataStreamByteOrder) -> UInt32 { cast(param.rawValue) }


/// `GDataStreamNewlineType` is used when checking for or setting the line endings for a given file.
public typealias DataStreamNewlineType = GDataStreamNewlineType

public extension DataStreamNewlineType {
    /// Selects "LF" line endings, common on most modern UNIX platforms.
    static let lf = G_DATA_STREAM_NEWLINE_TYPE_LF /* 0 */
    /// Selects "CR" line endings.
    static let cr = G_DATA_STREAM_NEWLINE_TYPE_CR /* 1 */
    /// Selects "CR, LF" line ending, common on Microsoft Windows.
    static let crLf = G_DATA_STREAM_NEWLINE_TYPE_CR_LF /* 2 */
    /// Automatically try to handle any line ending type.
    static let any = G_DATA_STREAM_NEWLINE_TYPE_ANY /* 3 */
    /// Selects "CR, LF" line ending, common on Microsoft Windows.
    @available(*, deprecated) static let cr_lf = DataStreamNewlineType.crLf /* G_DATA_STREAM_NEWLINE_TYPE_CR_LF */
}
func cast<I: BinaryInteger>(_ param: I) -> DataStreamNewlineType { DataStreamNewlineType(rawValue: cast(param)) }
func cast(_ param: DataStreamNewlineType) -> UInt32 { cast(param.rawValue) }


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
func cast<I: BinaryInteger>(_ param: I) -> DriveStartStopType { DriveStartStopType(rawValue: cast(param)) }
func cast(_ param: DriveStartStopType) -> UInt32 { cast(param.rawValue) }


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
func cast<I: BinaryInteger>(_ param: I) -> EmblemOrigin { EmblemOrigin(rawValue: cast(param)) }
func cast(_ param: EmblemOrigin) -> UInt32 { cast(param.rawValue) }


/// Used by `g_file_set_attributes_from_info()` when setting file attributes.
public typealias FileAttributeStatus = GFileAttributeStatus

public extension FileAttributeStatus {
    /// Attribute value is unset (empty).
    static let unset = G_FILE_ATTRIBUTE_STATUS_UNSET /* 0 */
    /// Attribute value is set.
    static let set = G_FILE_ATTRIBUTE_STATUS_SET /* 1 */
    /// Indicates an error in setting the value.
    static let errorSetting = G_FILE_ATTRIBUTE_STATUS_ERROR_SETTING /* 2 */
    /// Indicates an error in setting the value.
    @available(*, deprecated) static let error_setting = FileAttributeStatus.errorSetting /* G_FILE_ATTRIBUTE_STATUS_ERROR_SETTING */
}
func cast<I: BinaryInteger>(_ param: I) -> FileAttributeStatus { FileAttributeStatus(rawValue: cast(param)) }
func cast(_ param: FileAttributeStatus) -> UInt32 { cast(param.rawValue) }


/// The data types for file attributes.
public typealias FileAttributeType = GFileAttributeType

public extension FileAttributeType {
    /// indicates an invalid or uninitalized type.
    static let invalid = G_FILE_ATTRIBUTE_TYPE_INVALID /* 0 */
    /// a null terminated UTF8 string.
    static let string = G_FILE_ATTRIBUTE_TYPE_STRING /* 1 */
    /// a zero terminated string of non-zero bytes.
    static let byteString = G_FILE_ATTRIBUTE_TYPE_BYTE_STRING /* 2 */
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
    /// a zero terminated string of non-zero bytes.
    @available(*, deprecated) static let byte_string = FileAttributeType.byteString /* G_FILE_ATTRIBUTE_TYPE_BYTE_STRING */
}
func cast<I: BinaryInteger>(_ param: I) -> FileAttributeType { FileAttributeType(rawValue: cast(param)) }
func cast(_ param: FileAttributeType) -> UInt32 { cast(param.rawValue) }


/// Specifies what type of event a monitor event is.
public typealias FileMonitorEvent = GFileMonitorEvent

public extension FileMonitorEvent {
    /// a file changed.
    static let changed = G_FILE_MONITOR_EVENT_CHANGED /* 0 */
    /// a hint that this was probably the last change in a set of changes.
    static let changesDoneHint = G_FILE_MONITOR_EVENT_CHANGES_DONE_HINT /* 1 */
    /// a file was deleted.
    static let deleted = G_FILE_MONITOR_EVENT_DELETED /* 2 */
    /// a file was created.
    static let created = G_FILE_MONITOR_EVENT_CREATED /* 3 */
    /// a file attribute was changed.
    static let attributeChanged = G_FILE_MONITOR_EVENT_ATTRIBUTE_CHANGED /* 4 */
    /// the file location will soon be unmounted.
    static let preUnmount = G_FILE_MONITOR_EVENT_PRE_UNMOUNT /* 5 */
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
    static let movedIn = G_FILE_MONITOR_EVENT_MOVED_IN /* 9 */
    /// the file was moved out of the
    ///   monitored directory to another location -- only sent if the
    ///   `G_FILE_MONITOR_WATCH_MOVES` flag is set.  Since: 2.46
    static let movedOut = G_FILE_MONITOR_EVENT_MOVED_OUT /* 10 */
    /// a hint that this was probably the last change in a set of changes.
    @available(*, deprecated) static let changes_done_hint = FileMonitorEvent.changesDoneHint /* G_FILE_MONITOR_EVENT_CHANGES_DONE_HINT */
    /// a file attribute was changed.
    @available(*, deprecated) static let attribute_changed = FileMonitorEvent.attributeChanged /* G_FILE_MONITOR_EVENT_ATTRIBUTE_CHANGED */
    /// the file location will soon be unmounted.
    @available(*, deprecated) static let pre_unmount = FileMonitorEvent.preUnmount /* G_FILE_MONITOR_EVENT_PRE_UNMOUNT */
    /// the file was moved into the
    ///   monitored directory from another location -- only sent if the
    ///   `G_FILE_MONITOR_WATCH_MOVES` flag is set.  Since: 2.46.
    @available(*, deprecated) static let moved_in = FileMonitorEvent.movedIn /* G_FILE_MONITOR_EVENT_MOVED_IN */
    /// the file was moved out of the
    ///   monitored directory to another location -- only sent if the
    ///   `G_FILE_MONITOR_WATCH_MOVES` flag is set.  Since: 2.46
    @available(*, deprecated) static let moved_out = FileMonitorEvent.movedOut /* G_FILE_MONITOR_EVENT_MOVED_OUT */
}
func cast<I: BinaryInteger>(_ param: I) -> FileMonitorEvent { FileMonitorEvent(rawValue: cast(param)) }
func cast(_ param: FileMonitorEvent) -> UInt32 { cast(param.rawValue) }


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
    static let symbolicLink = G_FILE_TYPE_SYMBOLIC_LINK /* 3 */
    /// File is a "special" file, such as a socket, fifo,
    ///    block device, or character device.
    static let special = G_FILE_TYPE_SPECIAL /* 4 */
    /// File is a shortcut (Windows systems).
    static let shortcut = G_FILE_TYPE_SHORTCUT /* 5 */
    /// File is a mountable location.
    static let mountable = G_FILE_TYPE_MOUNTABLE /* 6 */
    /// File handle represents a symbolic link
    ///    (Unix systems).
    @available(*, deprecated) static let symbolic_link = FileType.symbolicLink /* G_FILE_TYPE_SYMBOLIC_LINK */
}
func cast<I: BinaryInteger>(_ param: I) -> FileType { FileType(rawValue: cast(param)) }
func cast(_ param: FileType) -> UInt32 { cast(param.rawValue) }


/// Indicates a hint from the file system whether files should be
/// previewed in a file manager. Returned as the value of the key
/// `G_FILE_ATTRIBUTE_FILESYSTEM_USE_PREVIEW`.
public typealias FilesystemPreviewType = GFilesystemPreviewType

public extension FilesystemPreviewType {
    /// Only preview files if user has explicitly requested it.
    static let ifAlways = G_FILESYSTEM_PREVIEW_TYPE_IF_ALWAYS /* 0 */
    /// Preview files if user has requested preview of "local" files.
    static let ifLocal = G_FILESYSTEM_PREVIEW_TYPE_IF_LOCAL /* 1 */
    /// Never preview files.
    static let never = G_FILESYSTEM_PREVIEW_TYPE_NEVER /* 2 */
    /// Only preview files if user has explicitly requested it.
    @available(*, deprecated) static let if_always = FilesystemPreviewType.ifAlways /* G_FILESYSTEM_PREVIEW_TYPE_IF_ALWAYS */
    /// Preview files if user has requested preview of "local" files.
    @available(*, deprecated) static let if_local = FilesystemPreviewType.ifLocal /* G_FILESYSTEM_PREVIEW_TYPE_IF_LOCAL */
}
func cast<I: BinaryInteger>(_ param: I) -> FilesystemPreviewType { FilesystemPreviewType(rawValue: cast(param)) }
func cast(_ param: FilesystemPreviewType) -> UInt32 { cast(param.rawValue) }


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
    static let notFound = G_IO_ERROR_NOT_FOUND /* 1 */
    /// File already exists.
    static let exists = G_IO_ERROR_EXISTS /* 2 */
    /// File is a directory.
    static let isDirectory = G_IO_ERROR_IS_DIRECTORY /* 3 */
    /// File is not a directory.
    static let notDirectory = G_IO_ERROR_NOT_DIRECTORY /* 4 */
    /// File is a directory that isn't empty.
    static let notEmpty = G_IO_ERROR_NOT_EMPTY /* 5 */
    /// File is not a regular file.
    static let notRegularFile = G_IO_ERROR_NOT_REGULAR_FILE /* 6 */
    /// File is not a symbolic link.
    static let notSymbolicLink = G_IO_ERROR_NOT_SYMBOLIC_LINK /* 7 */
    /// File cannot be mounted.
    static let notMountableFile = G_IO_ERROR_NOT_MOUNTABLE_FILE /* 8 */
    /// Filename is too many characters.
    static let filenameTooLong = G_IO_ERROR_FILENAME_TOO_LONG /* 9 */
    /// Filename is invalid or contains invalid characters.
    static let invalidFilename = G_IO_ERROR_INVALID_FILENAME /* 10 */
    /// File contains too many symbolic links.
    static let tooManyLinks = G_IO_ERROR_TOO_MANY_LINKS /* 11 */
    /// No space left on drive.
    static let noSpace = G_IO_ERROR_NO_SPACE /* 12 */
    /// Invalid argument.
    static let invalidArgument = G_IO_ERROR_INVALID_ARGUMENT /* 13 */
    /// Permission denied.
    static let permissionDenied = G_IO_ERROR_PERMISSION_DENIED /* 14 */
    /// Operation (or one of its parameters) not supported
    static let notSupported = G_IO_ERROR_NOT_SUPPORTED /* 15 */
    /// File isn't mounted.
    static let notMounted = G_IO_ERROR_NOT_MOUNTED /* 16 */
    /// File is already mounted.
    static let alreadyMounted = G_IO_ERROR_ALREADY_MOUNTED /* 17 */
    /// File was closed.
    static let closed = G_IO_ERROR_CLOSED /* 18 */
    /// Operation was cancelled. See `GCancellable`.
    static let cancelled = G_IO_ERROR_CANCELLED /* 19 */
    /// Operations are still pending.
    static let pending = G_IO_ERROR_PENDING /* 20 */
    /// File is read only.
    static let readOnly = G_IO_ERROR_READ_ONLY /* 21 */
    /// Backup couldn't be created.
    static let cantCreateBackup = G_IO_ERROR_CANT_CREATE_BACKUP /* 22 */
    /// File's Entity Tag was incorrect.
    static let wrongEtag = G_IO_ERROR_WRONG_ETAG /* 23 */
    /// Operation timed out.
    static let timedOut = G_IO_ERROR_TIMED_OUT /* 24 */
    /// Operation would be recursive.
    static let wouldRecurse = G_IO_ERROR_WOULD_RECURSE /* 25 */
    /// File is busy.
    static let busy = G_IO_ERROR_BUSY /* 26 */
    /// Operation would block.
    static let wouldBlock = G_IO_ERROR_WOULD_BLOCK /* 27 */
    /// Host couldn't be found (remote operations).
    static let hostNotFound = G_IO_ERROR_HOST_NOT_FOUND /* 28 */
    /// Operation would merge files.
    static let wouldMerge = G_IO_ERROR_WOULD_MERGE /* 29 */
    /// Operation failed and a helper program has
    ///     already interacted with the user. Do not display any error dialog.
    static let failedHandled = G_IO_ERROR_FAILED_HANDLED /* 30 */
    /// The current process has too many files
    ///     open and can't open any more. Duplicate descriptors do count toward
    ///     this limit. Since 2.20
    static let tooManyOpenFiles = G_IO_ERROR_TOO_MANY_OPEN_FILES /* 31 */
    /// The object has not been initialized. Since 2.22
    static let notInitialized = G_IO_ERROR_NOT_INITIALIZED /* 32 */
    /// The requested address is already in use. Since 2.22
    static let addressInUse = G_IO_ERROR_ADDRESS_IN_USE /* 33 */
    /// Need more input to finish operation. Since 2.24
    static let partialInput = G_IO_ERROR_PARTIAL_INPUT /* 34 */
    /// The input data was invalid. Since 2.24
    static let invalidData = G_IO_ERROR_INVALID_DATA /* 35 */
    /// A remote object generated an error that
    ///     doesn't correspond to a locally registered `GError` error
    ///     domain. Use `g_dbus_error_get_remote_error()` to extract the D-Bus
    ///     error name and `g_dbus_error_strip_remote_error()` to fix up the
    ///     message so it matches what was received on the wire. Since 2.26.
    static let dbusError = G_IO_ERROR_DBUS_ERROR /* 36 */
    /// Host unreachable. Since 2.26
    static let hostUnreachable = G_IO_ERROR_HOST_UNREACHABLE /* 37 */
    /// Network unreachable. Since 2.26
    static let networkUnreachable = G_IO_ERROR_NETWORK_UNREACHABLE /* 38 */
    /// Connection refused. Since 2.26
    static let connectionRefused = G_IO_ERROR_CONNECTION_REFUSED /* 39 */
    /// Connection to proxy server failed. Since 2.26
    static let proxyFailed = G_IO_ERROR_PROXY_FAILED /* 40 */
    /// Proxy authentication failed. Since 2.26
    static let proxyAuthFailed = G_IO_ERROR_PROXY_AUTH_FAILED /* 41 */
    /// Proxy server needs authentication. Since 2.26
    static let proxyNeedAuth = G_IO_ERROR_PROXY_NEED_AUTH /* 42 */
    /// Proxy connection is not allowed by ruleset.
    ///     Since 2.26
    static let proxyNotAllowed = G_IO_ERROR_PROXY_NOT_ALLOWED /* 43 */
    /// Broken pipe. Since 2.36
    static let brokenPipe = G_IO_ERROR_BROKEN_PIPE /* 44 */
    /// Connection closed by peer. Note that this
    ///     is the same code as `G_IO_ERROR_BROKEN_PIPE`; before 2.44 some
    ///     "connection closed" errors returned `G_IO_ERROR_BROKEN_PIPE`, but others
    ///     returned `G_IO_ERROR_FAILED`. Now they should all return the same
    ///     value, which has this more logical name. Since 2.44.
    static let connectionClosed = G_IO_ERROR_CONNECTION_CLOSED /* 44 */
    /// Transport endpoint is not connected. Since 2.44
    static let notConnected = G_IO_ERROR_NOT_CONNECTED /* 45 */
    /// Message too large. Since 2.48.
    static let messageTooLarge = G_IO_ERROR_MESSAGE_TOO_LARGE /* 46 */
    /// File not found.
    @available(*, deprecated) static let not_found = IOErrorEnum.notFound /* G_IO_ERROR_NOT_FOUND */
    /// File is a directory.
    @available(*, deprecated) static let is_directory = IOErrorEnum.isDirectory /* G_IO_ERROR_IS_DIRECTORY */
    /// File is not a directory.
    @available(*, deprecated) static let not_directory = IOErrorEnum.notDirectory /* G_IO_ERROR_NOT_DIRECTORY */
    /// File is a directory that isn't empty.
    @available(*, deprecated) static let not_empty = IOErrorEnum.notEmpty /* G_IO_ERROR_NOT_EMPTY */
    /// File is not a regular file.
    @available(*, deprecated) static let not_regular_file = IOErrorEnum.notRegularFile /* G_IO_ERROR_NOT_REGULAR_FILE */
    /// File is not a symbolic link.
    @available(*, deprecated) static let not_symbolic_link = IOErrorEnum.notSymbolicLink /* G_IO_ERROR_NOT_SYMBOLIC_LINK */
    /// File cannot be mounted.
    @available(*, deprecated) static let not_mountable_file = IOErrorEnum.notMountableFile /* G_IO_ERROR_NOT_MOUNTABLE_FILE */
    /// Filename is too many characters.
    @available(*, deprecated) static let filename_too_long = IOErrorEnum.filenameTooLong /* G_IO_ERROR_FILENAME_TOO_LONG */
    /// Filename is invalid or contains invalid characters.
    @available(*, deprecated) static let invalid_filename = IOErrorEnum.invalidFilename /* G_IO_ERROR_INVALID_FILENAME */
    /// File contains too many symbolic links.
    @available(*, deprecated) static let too_many_links = IOErrorEnum.tooManyLinks /* G_IO_ERROR_TOO_MANY_LINKS */
    /// No space left on drive.
    @available(*, deprecated) static let no_space = IOErrorEnum.noSpace /* G_IO_ERROR_NO_SPACE */
    /// Invalid argument.
    @available(*, deprecated) static let invalid_argument = IOErrorEnum.invalidArgument /* G_IO_ERROR_INVALID_ARGUMENT */
    /// Permission denied.
    @available(*, deprecated) static let permission_denied = IOErrorEnum.permissionDenied /* G_IO_ERROR_PERMISSION_DENIED */
    /// Operation (or one of its parameters) not supported
    @available(*, deprecated) static let not_supported = IOErrorEnum.notSupported /* G_IO_ERROR_NOT_SUPPORTED */
    /// File isn't mounted.
    @available(*, deprecated) static let not_mounted = IOErrorEnum.notMounted /* G_IO_ERROR_NOT_MOUNTED */
    /// File is already mounted.
    @available(*, deprecated) static let already_mounted = IOErrorEnum.alreadyMounted /* G_IO_ERROR_ALREADY_MOUNTED */
    /// File is read only.
    @available(*, deprecated) static let read_only = IOErrorEnum.readOnly /* G_IO_ERROR_READ_ONLY */
    /// Backup couldn't be created.
    @available(*, deprecated) static let cant_create_backup = IOErrorEnum.cantCreateBackup /* G_IO_ERROR_CANT_CREATE_BACKUP */
    /// File's Entity Tag was incorrect.
    @available(*, deprecated) static let wrong_etag = IOErrorEnum.wrongEtag /* G_IO_ERROR_WRONG_ETAG */
    /// Operation timed out.
    @available(*, deprecated) static let timed_out = IOErrorEnum.timedOut /* G_IO_ERROR_TIMED_OUT */
    /// Operation would be recursive.
    @available(*, deprecated) static let would_recurse = IOErrorEnum.wouldRecurse /* G_IO_ERROR_WOULD_RECURSE */
    /// Operation would block.
    @available(*, deprecated) static let would_block = IOErrorEnum.wouldBlock /* G_IO_ERROR_WOULD_BLOCK */
    /// Host couldn't be found (remote operations).
    @available(*, deprecated) static let host_not_found = IOErrorEnum.hostNotFound /* G_IO_ERROR_HOST_NOT_FOUND */
    /// Operation would merge files.
    @available(*, deprecated) static let would_merge = IOErrorEnum.wouldMerge /* G_IO_ERROR_WOULD_MERGE */
    /// Operation failed and a helper program has
    ///     already interacted with the user. Do not display any error dialog.
    @available(*, deprecated) static let failed_handled = IOErrorEnum.failedHandled /* G_IO_ERROR_FAILED_HANDLED */
    /// The current process has too many files
    ///     open and can't open any more. Duplicate descriptors do count toward
    ///     this limit. Since 2.20
    @available(*, deprecated) static let too_many_open_files = IOErrorEnum.tooManyOpenFiles /* G_IO_ERROR_TOO_MANY_OPEN_FILES */
    /// The object has not been initialized. Since 2.22
    @available(*, deprecated) static let not_initialized = IOErrorEnum.notInitialized /* G_IO_ERROR_NOT_INITIALIZED */
    /// The requested address is already in use. Since 2.22
    @available(*, deprecated) static let address_in_use = IOErrorEnum.addressInUse /* G_IO_ERROR_ADDRESS_IN_USE */
    /// Need more input to finish operation. Since 2.24
    @available(*, deprecated) static let partial_input = IOErrorEnum.partialInput /* G_IO_ERROR_PARTIAL_INPUT */
    /// The input data was invalid. Since 2.24
    @available(*, deprecated) static let invalid_data = IOErrorEnum.invalidData /* G_IO_ERROR_INVALID_DATA */
    /// A remote object generated an error that
    ///     doesn't correspond to a locally registered `GError` error
    ///     domain. Use `g_dbus_error_get_remote_error()` to extract the D-Bus
    ///     error name and `g_dbus_error_strip_remote_error()` to fix up the
    ///     message so it matches what was received on the wire. Since 2.26.
    @available(*, deprecated) static let dbus_error = IOErrorEnum.dbusError /* G_IO_ERROR_DBUS_ERROR */
    /// Host unreachable. Since 2.26
    @available(*, deprecated) static let host_unreachable = IOErrorEnum.hostUnreachable /* G_IO_ERROR_HOST_UNREACHABLE */
    /// Network unreachable. Since 2.26
    @available(*, deprecated) static let network_unreachable = IOErrorEnum.networkUnreachable /* G_IO_ERROR_NETWORK_UNREACHABLE */
    /// Connection refused. Since 2.26
    @available(*, deprecated) static let connection_refused = IOErrorEnum.connectionRefused /* G_IO_ERROR_CONNECTION_REFUSED */
    /// Connection to proxy server failed. Since 2.26
    @available(*, deprecated) static let proxy_failed = IOErrorEnum.proxyFailed /* G_IO_ERROR_PROXY_FAILED */
    /// Proxy authentication failed. Since 2.26
    @available(*, deprecated) static let proxy_auth_failed = IOErrorEnum.proxyAuthFailed /* G_IO_ERROR_PROXY_AUTH_FAILED */
    /// Proxy server needs authentication. Since 2.26
    @available(*, deprecated) static let proxy_need_auth = IOErrorEnum.proxyNeedAuth /* G_IO_ERROR_PROXY_NEED_AUTH */
    /// Proxy connection is not allowed by ruleset.
    ///     Since 2.26
    @available(*, deprecated) static let proxy_not_allowed = IOErrorEnum.proxyNotAllowed /* G_IO_ERROR_PROXY_NOT_ALLOWED */
    /// Broken pipe. Since 2.36
    @available(*, deprecated) static let broken_pipe = IOErrorEnum.brokenPipe /* G_IO_ERROR_BROKEN_PIPE */
    /// Connection closed by peer. Note that this
    ///     is the same code as `G_IO_ERROR_BROKEN_PIPE`; before 2.44 some
    ///     "connection closed" errors returned `G_IO_ERROR_BROKEN_PIPE`, but others
    ///     returned `G_IO_ERROR_FAILED`. Now they should all return the same
    ///     value, which has this more logical name. Since 2.44.
    @available(*, deprecated) static let connection_closed = IOErrorEnum.connectionClosed /* G_IO_ERROR_CONNECTION_CLOSED */
    /// Transport endpoint is not connected. Since 2.44
    @available(*, deprecated) static let not_connected = IOErrorEnum.notConnected /* G_IO_ERROR_NOT_CONNECTED */
    /// Message too large. Since 2.48.
    @available(*, deprecated) static let message_too_large = IOErrorEnum.messageTooLarge /* G_IO_ERROR_MESSAGE_TOO_LARGE */
}
func cast<I: BinaryInteger>(_ param: I) -> IOErrorEnum { IOErrorEnum(rawValue: cast(param)) }
func cast(_ param: IOErrorEnum) -> UInt32 { cast(param.rawValue) }


/// Flags for use with `g_io_module_scope_new()`.
public typealias IOModuleScopeFlags = GIOModuleScopeFlags

public extension IOModuleScopeFlags {
    /// No module scan flags
    static let `none` = G_IO_MODULE_SCOPE_NONE /* 0 */
    /// When using this scope to load or
    ///     scan modules, automatically block a modules which has the same base
    ///     basename as previously loaded module.
    static let blockDuplicates = G_IO_MODULE_SCOPE_BLOCK_DUPLICATES /* 1 */
    /// No module scan flags
    @available(*, deprecated) static let none_ = IOModuleScopeFlags.`none` /* G_IO_MODULE_SCOPE_NONE */
    /// When using this scope to load or
    ///     scan modules, automatically block a modules which has the same base
    ///     basename as previously loaded module.
    @available(*, deprecated) static let block_duplicates = IOModuleScopeFlags.blockDuplicates /* G_IO_MODULE_SCOPE_BLOCK_DUPLICATES */
}
func cast<I: BinaryInteger>(_ param: I) -> IOModuleScopeFlags { IOModuleScopeFlags(rawValue: cast(param)) }
func cast(_ param: IOModuleScopeFlags) -> UInt32 { cast(param.rawValue) }


/// Memory availability warning levels.
/// 
/// Note that because new values might be added, it is recommended that applications check
/// `GMemoryMonitorWarningLevel` as ranges, for example:
/// (C Language Example):
/// ```C
/// if (warning_level > G_MEMORY_MONITOR_WARNING_LEVEL_LOW)
///   drop_caches ();
/// ```
/// 
public typealias MemoryMonitorWarningLevel = GMemoryMonitorWarningLevel

public extension MemoryMonitorWarningLevel {
    /// Memory on the device is low, processes
    ///   should free up unneeded resources (for example, in-memory caches) so they can
    ///   be used elsewhere.
    static let low = G_MEMORY_MONITOR_WARNING_LEVEL_LOW /* 50 */
    /// Same as `G_MEMORY_MONITOR_WARNING_LEVEL_LOW`
    ///   but the device has even less free memory, so processes should try harder to free
    ///   up unneeded resources. If your process does not need to stay running, it is a
    ///   good time for it to quit.
    static let medium = G_MEMORY_MONITOR_WARNING_LEVEL_MEDIUM /* 100 */
    /// The system will soon start terminating
    ///   processes to reclaim memory, including background processes.
    static let critical = G_MEMORY_MONITOR_WARNING_LEVEL_CRITICAL /* 255 */

}
func cast<I: BinaryInteger>(_ param: I) -> MemoryMonitorWarningLevel { MemoryMonitorWarningLevel(rawValue: cast(param)) }
func cast(_ param: MemoryMonitorWarningLevel) -> UInt32 { cast(param.rawValue) }


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
func cast<I: BinaryInteger>(_ param: I) -> MountOperationResult { MountOperationResult(rawValue: cast(param)) }
func cast(_ param: MountOperationResult) -> UInt32 { cast(param.rawValue) }


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
func cast<I: BinaryInteger>(_ param: I) -> NetworkConnectivity { NetworkConnectivity(rawValue: cast(param)) }
func cast(_ param: NetworkConnectivity) -> UInt32 { cast(param.rawValue) }


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
func cast<I: BinaryInteger>(_ param: I) -> NotificationPriority { NotificationPriority(rawValue: cast(param)) }
func cast(_ param: NotificationPriority) -> UInt32 { cast(param.rawValue) }


/// `GPasswordSave` is used to indicate the lifespan of a saved password.
/// 
/// `Gvfs` stores passwords in the Gnome keyring when this flag allows it
/// to, and later retrieves it again from there.
public typealias PasswordSave = GPasswordSave

public extension PasswordSave {
    /// never save a password.
    static let never = G_PASSWORD_SAVE_NEVER /* 0 */
    /// save a password for the session.
    static let forSession = G_PASSWORD_SAVE_FOR_SESSION /* 1 */
    /// save a password permanently.
    static let permanently = G_PASSWORD_SAVE_PERMANENTLY /* 2 */
    /// save a password for the session.
    @available(*, deprecated) static let for_session = PasswordSave.forSession /* G_PASSWORD_SAVE_FOR_SESSION */
}
func cast<I: BinaryInteger>(_ param: I) -> PasswordSave { PasswordSave(rawValue: cast(param)) }
func cast(_ param: PasswordSave) -> UInt32 { cast(param.rawValue) }


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
    static let wouldBlock = G_POLLABLE_RETURN_WOULD_BLOCK /* -27 */
    /// The operation would block.
    @available(*, deprecated) static let would_block = PollableReturn.wouldBlock /* G_POLLABLE_RETURN_WOULD_BLOCK */
}
func cast<I: BinaryInteger>(_ param: I) -> PollableReturn { PollableReturn(rawValue: cast(param)) }
func cast(_ param: PollableReturn) -> UInt32 { cast(param.rawValue) }


/// An error code used with `G_RESOLVER_ERROR` in a `GError` returned
/// from a `GResolver` routine.
public typealias ResolverError = GResolverError

public extension ResolverError {
    /// the requested name/address/service was not
    ///     found
    static let notFound = G_RESOLVER_ERROR_NOT_FOUND /* 0 */
    /// the requested information could not
    ///     be looked up due to a network error or similar problem
    static let temporaryFailure = G_RESOLVER_ERROR_TEMPORARY_FAILURE /* 1 */
    /// unknown error
    static let `internal` = G_RESOLVER_ERROR_INTERNAL /* 2 */
    /// the requested name/address/service was not
    ///     found
    @available(*, deprecated) static let not_found = ResolverError.notFound /* G_RESOLVER_ERROR_NOT_FOUND */
    /// the requested information could not
    ///     be looked up due to a network error or similar problem
    @available(*, deprecated) static let temporary_failure = ResolverError.temporaryFailure /* G_RESOLVER_ERROR_TEMPORARY_FAILURE */
    /// unknown error
    @available(*, deprecated) static let internal_ = ResolverError.`internal` /* G_RESOLVER_ERROR_INTERNAL */
}
func cast<I: BinaryInteger>(_ param: I) -> ResolverError { ResolverError(rawValue: cast(param)) }
func cast(_ param: ResolverError) -> UInt32 { cast(param.rawValue) }


/// The type of record that `g_resolver_lookup_records()` or
/// `g_resolver_lookup_records_async()` should retrieve. The records are returned
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
func cast<I: BinaryInteger>(_ param: I) -> ResolverRecordType { ResolverRecordType(rawValue: cast(param)) }
func cast(_ param: ResolverRecordType) -> UInt32 { cast(param.rawValue) }


/// An error code used with `G_RESOURCE_ERROR` in a `GError` returned
/// from a `GResource` routine.
public typealias ResourceError = GResourceError

public extension ResourceError {
    /// no file was found at the requested path
    static let notFound = G_RESOURCE_ERROR_NOT_FOUND /* 0 */
    /// unknown error
    static let `internal` = G_RESOURCE_ERROR_INTERNAL /* 1 */
    /// no file was found at the requested path
    @available(*, deprecated) static let not_found = ResourceError.notFound /* G_RESOURCE_ERROR_NOT_FOUND */
    /// unknown error
    @available(*, deprecated) static let internal_ = ResourceError.`internal` /* G_RESOURCE_ERROR_INTERNAL */
}
func cast<I: BinaryInteger>(_ param: I) -> ResourceError { ResourceError(rawValue: cast(param)) }
func cast(_ param: ResourceError) -> UInt32 { cast(param.rawValue) }


/// Describes an event occurring on a `GSocketClient`. See the
/// `GSocketClient::event` signal for more details.
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
    static let proxyNegotiating = G_SOCKET_CLIENT_PROXY_NEGOTIATING /* 4 */
    /// The client has negotiated
    ///   with the proxy server.
    static let proxyNegotiated = G_SOCKET_CLIENT_PROXY_NEGOTIATED /* 5 */
    /// The client is performing a
    ///   TLS handshake.
    static let tlsHandshaking = G_SOCKET_CLIENT_TLS_HANDSHAKING /* 6 */
    /// The client has performed a
    ///   TLS handshake.
    static let tlsHandshaked = G_SOCKET_CLIENT_TLS_HANDSHAKED /* 7 */
    /// The client is done with a particular
    ///   `GSocketConnectable`.
    static let complete = G_SOCKET_CLIENT_COMPLETE /* 8 */
    /// The client is negotiating
    ///   with a proxy to connect to the destination server.
    @available(*, deprecated) static let proxy_negotiating = SocketClientEvent.proxyNegotiating /* G_SOCKET_CLIENT_PROXY_NEGOTIATING */
    /// The client has negotiated
    ///   with the proxy server.
    @available(*, deprecated) static let proxy_negotiated = SocketClientEvent.proxyNegotiated /* G_SOCKET_CLIENT_PROXY_NEGOTIATED */
    /// The client is performing a
    ///   TLS handshake.
    @available(*, deprecated) static let tls_handshaking = SocketClientEvent.tlsHandshaking /* G_SOCKET_CLIENT_TLS_HANDSHAKING */
    /// The client has performed a
    ///   TLS handshake.
    @available(*, deprecated) static let tls_handshaked = SocketClientEvent.tlsHandshaked /* G_SOCKET_CLIENT_TLS_HANDSHAKED */
}
func cast<I: BinaryInteger>(_ param: I) -> SocketClientEvent { SocketClientEvent(rawValue: cast(param)) }
func cast(_ param: SocketClientEvent) -> UInt32 { cast(param.rawValue) }


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
func cast<I: BinaryInteger>(_ param: I) -> SocketFamily { SocketFamily(rawValue: cast(param)) }
func cast(_ param: SocketFamily) -> UInt32 { cast(param.rawValue) }


/// Describes an event occurring on a `GSocketListener`. See the
/// `GSocketListener::event` signal for more details.
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
func cast<I: BinaryInteger>(_ param: I) -> SocketListenerEvent { SocketListenerEvent(rawValue: cast(param)) }
func cast(_ param: SocketListenerEvent) -> UInt32 { cast(param.rawValue) }


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
    static let `default` = G_SOCKET_PROTOCOL_DEFAULT /* 0 */
    /// TCP over IP
    static let tcp = G_SOCKET_PROTOCOL_TCP /* 6 */
    /// UDP over IP
    static let udp = G_SOCKET_PROTOCOL_UDP /* 17 */
    /// SCTP over IP
    static let sctp = G_SOCKET_PROTOCOL_SCTP /* 132 */
    /// The default protocol for the family/type
    @available(*, deprecated) static let default_ = Socket_Protocol.`default` /* G_SOCKET_PROTOCOL_DEFAULT */
}
func cast<I: BinaryInteger>(_ param: I) -> Socket_Protocol { Socket_Protocol(rawValue: cast(param)) }
func cast(_ param: Socket_Protocol) -> UInt32 { cast(param.rawValue) }


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
func cast<I: BinaryInteger>(_ param: I) -> SocketType { SocketType(rawValue: cast(param)) }
func cast(_ param: SocketType) -> UInt32 { cast(param.rawValue) }


/// The client authentication mode for a `GTlsServerConnection`.
public typealias TLSAuthenticationMode = GTlsAuthenticationMode

public extension TLSAuthenticationMode {
    /// client authentication not required
    static let `none` = G_TLS_AUTHENTICATION_NONE /* 0 */
    /// client authentication is requested
    static let requested = G_TLS_AUTHENTICATION_REQUESTED /* 1 */
    /// client authentication is required
    static let `required` = G_TLS_AUTHENTICATION_REQUIRED /* 2 */
    /// client authentication not required
    @available(*, deprecated) static let none_ = TLSAuthenticationMode.`none` /* G_TLS_AUTHENTICATION_NONE */
    /// client authentication is required
    @available(*, deprecated) static let required_ = TLSAuthenticationMode.`required` /* G_TLS_AUTHENTICATION_REQUIRED */
}
func cast<I: BinaryInteger>(_ param: I) -> TLSAuthenticationMode { TLSAuthenticationMode(rawValue: cast(param)) }
func cast(_ param: TLSAuthenticationMode) -> UInt32 { cast(param.rawValue) }


/// Flags for `g_tls_interaction_request_certificate()`,
/// `g_tls_interaction_request_certificate_async()`, and
/// `g_tls_interaction_invoke_request_certificate()`.
public typealias TLSCertificateRequestFlags = GTlsCertificateRequestFlags

public extension TLSCertificateRequestFlags {
    /// No flags
    static let `none` = G_TLS_CERTIFICATE_REQUEST_NONE /* 0 */
    /// No flags
    @available(*, deprecated) static let none_ = TLSCertificateRequestFlags.`none` /* G_TLS_CERTIFICATE_REQUEST_NONE */
}
func cast<I: BinaryInteger>(_ param: I) -> TLSCertificateRequestFlags { TLSCertificateRequestFlags(rawValue: cast(param)) }
func cast(_ param: TLSCertificateRequestFlags) -> UInt32 { cast(param.rawValue) }


/// Flags for `g_tls_database_lookup_certificate_for_handle()`,
/// `g_tls_database_lookup_certificate_issuer()`,
/// and `g_tls_database_lookup_certificates_issued_by()`.
public typealias TLSDatabaseLookupFlags = GTlsDatabaseLookupFlags

public extension TLSDatabaseLookupFlags {
    /// No lookup flags
    static let `none` = G_TLS_DATABASE_LOOKUP_NONE /* 0 */
    /// Restrict lookup to certificates that have
    ///     a private key.
    static let keypair = G_TLS_DATABASE_LOOKUP_KEYPAIR /* 1 */
    /// No lookup flags
    @available(*, deprecated) static let none_ = TLSDatabaseLookupFlags.`none` /* G_TLS_DATABASE_LOOKUP_NONE */
}
func cast<I: BinaryInteger>(_ param: I) -> TLSDatabaseLookupFlags { TLSDatabaseLookupFlags(rawValue: cast(param)) }
func cast(_ param: TLSDatabaseLookupFlags) -> UInt32 { cast(param.rawValue) }


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
    static let badCertificate = G_TLS_ERROR_BAD_CERTIFICATE /* 2 */
    /// The TLS handshake failed because the
    ///   peer does not seem to be a TLS server.
    static let notTLS = G_TLS_ERROR_NOT_TLS /* 3 */
    /// The TLS handshake failed because the
    ///   peer's certificate was not acceptable.
    static let handshake = G_TLS_ERROR_HANDSHAKE /* 4 */
    /// The TLS handshake failed because
    ///   the server requested a client-side certificate, but none was
    ///   provided. See `g_tls_connection_set_certificate()`.
    static let certificateRequired = G_TLS_ERROR_CERTIFICATE_REQUIRED /* 5 */
    /// The TLS connection was closed without proper
    ///   notice, which may indicate an attack. See
    ///   `g_tls_connection_set_require_close_notify()`.
    static let eof = G_TLS_ERROR_EOF /* 6 */
    /// The TLS handshake failed
    ///   because the client sent the fallback SCSV, indicating a protocol
    ///   downgrade attack. Since: 2.60
    static let inappropriateFallback = G_TLS_ERROR_INAPPROPRIATE_FALLBACK /* 7 */
    /// The certificate presented could not
    ///   be parsed or failed validation.
    @available(*, deprecated) static let bad_certificate = TLSError.badCertificate /* G_TLS_ERROR_BAD_CERTIFICATE */
    /// The TLS handshake failed because the
    ///   peer does not seem to be a TLS server.
    @available(*, deprecated) static let not_tls = TLSError.notTLS /* G_TLS_ERROR_NOT_TLS */
    /// The TLS handshake failed because
    ///   the server requested a client-side certificate, but none was
    ///   provided. See `g_tls_connection_set_certificate()`.
    @available(*, deprecated) static let certificate_required = TLSError.certificateRequired /* G_TLS_ERROR_CERTIFICATE_REQUIRED */
    /// The TLS handshake failed
    ///   because the client sent the fallback SCSV, indicating a protocol
    ///   downgrade attack. Since: 2.60
    @available(*, deprecated) static let inappropriate_fallback = TLSError.inappropriateFallback /* G_TLS_ERROR_INAPPROPRIATE_FALLBACK */
}
func cast<I: BinaryInteger>(_ param: I) -> TLSError { TLSError(rawValue: cast(param)) }
func cast(_ param: TLSError) -> UInt32 { cast(param.rawValue) }


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
func cast<I: BinaryInteger>(_ param: I) -> TLSInteractionResult { TLSInteractionResult(rawValue: cast(param)) }
func cast(_ param: TLSInteractionResult) -> UInt32 { cast(param.rawValue) }


/// When to allow rehandshaking. See
/// `g_tls_connection_set_rehandshake_mode()`.
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
func cast<I: BinaryInteger>(_ param: I) -> TLSRehandshakeMode { TLSRehandshakeMode(rawValue: cast(param)) }
func cast(_ param: TLSRehandshakeMode) -> UInt32 { cast(param.rawValue) }


/// The type of name used by a `GUnixSocketAddress`.
/// `G_UNIX_SOCKET_ADDRESS_PATH` indicates a traditional unix domain
/// socket bound to a filesystem path. `G_UNIX_SOCKET_ADDRESS_ANONYMOUS`
/// indicates a socket not bound to any name (eg, a client-side socket,
/// or a socket created with `socketpair()`).
/// 
/// For abstract sockets, there are two incompatible ways of naming
/// them; the man pages suggest using the entire `struct sockaddr_un`
/// as the name, padding the unused parts of the `sun_path` field with
/// zeroes; this corresponds to `G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED`.
/// However, many programs instead just use a portion of `sun_path`, and
/// pass an appropriate smaller length to `bind()` or `connect()`. This is
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
    static let abstractPadded = G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED /* 4 */
    /// an abstract name, 0-padded
    ///   to the full length of a unix socket name
    @available(*, deprecated) static let abstract_padded = UnixSocketAddressType.abstractPadded /* G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED */
}
func cast<I: BinaryInteger>(_ param: I) -> UnixSocketAddressType { UnixSocketAddressType(rawValue: cast(param)) }
func cast(_ param: UnixSocketAddressType) -> UInt32 { cast(param.rawValue) }


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
func cast<I: BinaryInteger>(_ param: I) -> ZlibCompressorFormat { ZlibCompressorFormat(rawValue: cast(param)) }
func cast(_ param: ZlibCompressorFormat) -> UInt32 { cast(param.rawValue) }
