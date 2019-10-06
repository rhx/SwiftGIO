import CGLib
import GLib
import GLibObject

// MARK: - UnixCredentialsMessage Class

/// The `UnixCredentialsMessageProtocol` protocol exposes the methods and properties of an underlying `GUnixCredentialsMessage` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixCredentialsMessage`.
/// Alternatively, use `UnixCredentialsMessageRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// This `GSocketControlMessage` contains a `GCredentials` instance.  It
/// may be sent using `g_socket_send_message()` and received using
/// `g_socket_receive_message()` over UNIX sockets (ie: sockets in the
/// `G_SOCKET_FAMILY_UNIX` family).
/// 
/// For an easier way to send and receive credentials over
/// stream-oriented UNIX sockets, see
/// `g_unix_connection_send_credentials()` and
/// `g_unix_connection_receive_credentials()`. To receive credentials of
/// a foreign process connected to a socket, use
/// `g_socket_get_credentials()`.
public protocol UnixCredentialsMessageProtocol: SocketControlMessageProtocol {
    /// Untyped pointer to the underlying `GUnixCredentialsMessage` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GUnixCredentialsMessage` instance.
    var unix_credentials_message_ptr: UnsafeMutablePointer<GUnixCredentialsMessage> { get }
}

/// The `UnixCredentialsMessageRef` type acts as a lightweight Swift reference to an underlying `GUnixCredentialsMessage` instance.
/// It exposes methods that can operate on this data type through `UnixCredentialsMessageProtocol` conformance.
/// Use `UnixCredentialsMessageRef` only as an `unowned` reference to an existing `GUnixCredentialsMessage` instance.
///
/// This `GSocketControlMessage` contains a `GCredentials` instance.  It
/// may be sent using `g_socket_send_message()` and received using
/// `g_socket_receive_message()` over UNIX sockets (ie: sockets in the
/// `G_SOCKET_FAMILY_UNIX` family).
/// 
/// For an easier way to send and receive credentials over
/// stream-oriented UNIX sockets, see
/// `g_unix_connection_send_credentials()` and
/// `g_unix_connection_receive_credentials()`. To receive credentials of
/// a foreign process connected to a socket, use
/// `g_socket_get_credentials()`.
public struct UnixCredentialsMessageRef: UnixCredentialsMessageProtocol {
    /// Untyped pointer to the underlying `GUnixCredentialsMessage` instance.
    /// For type-safe access, use the generated, typed pointer `unix_credentials_message_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension UnixCredentialsMessageRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GUnixCredentialsMessage>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `UnixCredentialsMessageProtocol`
    init<T: UnixCredentialsMessageProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GUnixCredentialsMessage` with credentials matching the current processes.
    init() {
        let rv = g_unix_credentials_message_new()
        self.init(cast(rv))
    }

    /// Creates a new `GUnixCredentialsMessage` holding `credentials`.
    init(credentials: CredentialsProtocol) {
        let rv = g_unix_credentials_message_new_with_credentials(cast(credentials.ptr))
        self.init(cast(rv))
    }
    /// Creates a new `GUnixCredentialsMessage` holding `credentials`.
    static func newWith(credentials: CredentialsProtocol) -> UnixCredentialsMessageRef! {
        let rv = g_unix_credentials_message_new_with_credentials(cast(credentials.ptr))
        return rv.map { UnixCredentialsMessageRef(cast($0)) }
    }
}

/// The `UnixCredentialsMessage` type acts as a reference-counted owner of an underlying `GUnixCredentialsMessage` instance.
/// It provides the methods that can operate on this data type through `UnixCredentialsMessageProtocol` conformance.
/// Use `UnixCredentialsMessage` as a strong reference or owner of a `GUnixCredentialsMessage` instance.
///
/// This `GSocketControlMessage` contains a `GCredentials` instance.  It
/// may be sent using `g_socket_send_message()` and received using
/// `g_socket_receive_message()` over UNIX sockets (ie: sockets in the
/// `G_SOCKET_FAMILY_UNIX` family).
/// 
/// For an easier way to send and receive credentials over
/// stream-oriented UNIX sockets, see
/// `g_unix_connection_send_credentials()` and
/// `g_unix_connection_receive_credentials()`. To receive credentials of
/// a foreign process connected to a socket, use
/// `g_socket_get_credentials()`.
open class UnixCredentialsMessage: SocketControlMessage, UnixCredentialsMessageProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `UnixCredentialsMessage` instance.
    public init(_ op: UnsafeMutablePointer<GUnixCredentialsMessage>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `UnixCredentialsMessageProtocol`
    /// Will retain `GUnixCredentialsMessage`.
    public convenience init<T: UnixCredentialsMessageProtocol>(_ other: T) {
        self.init(cast(other.unix_credentials_message_ptr))
        g_object_ref(cast(unix_credentials_message_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GUnixCredentialsMessage.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GUnixCredentialsMessage.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GUnixCredentialsMessage.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GUnixCredentialsMessage>(opaquePointer))
    }

    /// Creates a new `GUnixCredentialsMessage` with credentials matching the current processes.
    public convenience init() {
        let rv = g_unix_credentials_message_new()
        self.init(cast(rv))
    }

    /// Creates a new `GUnixCredentialsMessage` holding `credentials`.
    public convenience init(credentials: CredentialsProtocol) {
        let rv = g_unix_credentials_message_new_with_credentials(cast(credentials.ptr))
        self.init(cast(rv))
    }

    /// Creates a new `GUnixCredentialsMessage` holding `credentials`.
    public static func newWith(credentials: CredentialsProtocol) -> UnixCredentialsMessage! {
        let rv = g_unix_credentials_message_new_with_credentials(cast(credentials.ptr))
        return rv.map { UnixCredentialsMessage(cast($0)) }
    }

}

public enum UnixCredentialsMessagePropertyName: String, PropertyNameProtocol {
    /// The credentials stored in the message.
    case credentials = "credentials"
}

public extension UnixCredentialsMessageProtocol {
    /// Bind a `UnixCredentialsMessagePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: UnixCredentialsMessagePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(unix_credentials_message_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum UnixCredentialsMessageSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The credentials stored in the message.
    case notifyCredentials = "notify::credentials"
}

public extension UnixCredentialsMessageProtocol {
    /// Connect a `UnixCredentialsMessageSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: UnixCredentialsMessageSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(unix_credentials_message_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension UnixCredentialsMessageProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixCredentialsMessage` instance.
    var unix_credentials_message_ptr: UnsafeMutablePointer<GUnixCredentialsMessage> { return ptr.assumingMemoryBound(to: GUnixCredentialsMessage.self) }

    /// Gets the credentials stored in `message`.
    func getCredentials() -> UnsafeMutablePointer<GCredentials>! {
        let rv = g_unix_credentials_message_get_credentials(cast(unix_credentials_message_ptr))
        return cast(rv)
    }
    /// The credentials stored in the message.
    var credentials: UnsafeMutablePointer<GCredentials>! {
        /// Gets the credentials stored in `message`.
        get {
            let rv = g_unix_credentials_message_get_credentials(cast(unix_credentials_message_ptr))
            return cast(rv)
        }
    }
}



// MARK: - UnixFDList Class

/// The `UnixFDListProtocol` protocol exposes the methods and properties of an underlying `GUnixFDList` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixFDList`.
/// Alternatively, use `UnixFDListRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GUnixFDList` contains a list of file descriptors.  It owns the file
/// descriptors that it contains, closing them when finalized.
/// 
/// It may be wrapped in a `GUnixFDMessage` and sent over a `GSocket` in
/// the `G_SOCKET_FAMILY_UNIX` family by using `g_socket_send_message()`
/// and received using `g_socket_receive_message()`.
/// 
/// Note that `<gio/gunixfdlist.h>` belongs to the UNIX-specific GIO
/// interfaces, thus you have to use the `gio-unix-2.0.pc` pkg-config
/// file when using it.
public protocol UnixFDListProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `GUnixFDList` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GUnixFDList` instance.
    var unix_fd_list_ptr: UnsafeMutablePointer<GUnixFDList> { get }
}

/// The `UnixFDListRef` type acts as a lightweight Swift reference to an underlying `GUnixFDList` instance.
/// It exposes methods that can operate on this data type through `UnixFDListProtocol` conformance.
/// Use `UnixFDListRef` only as an `unowned` reference to an existing `GUnixFDList` instance.
///
/// A `GUnixFDList` contains a list of file descriptors.  It owns the file
/// descriptors that it contains, closing them when finalized.
/// 
/// It may be wrapped in a `GUnixFDMessage` and sent over a `GSocket` in
/// the `G_SOCKET_FAMILY_UNIX` family by using `g_socket_send_message()`
/// and received using `g_socket_receive_message()`.
/// 
/// Note that `<gio/gunixfdlist.h>` belongs to the UNIX-specific GIO
/// interfaces, thus you have to use the `gio-unix-2.0.pc` pkg-config
/// file when using it.
public struct UnixFDListRef: UnixFDListProtocol {
    /// Untyped pointer to the underlying `GUnixFDList` instance.
    /// For type-safe access, use the generated, typed pointer `unix_fd_list_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension UnixFDListRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GUnixFDList>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `UnixFDListProtocol`
    init<T: UnixFDListProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GUnixFDList` containing no file descriptors.
    init() {
        let rv = g_unix_fd_list_new()
        self.init(cast(rv))
    }

    /// Creates a new `GUnixFDList` containing the file descriptors given in
    /// `fds`.  The file descriptors become the property of the new list and
    /// may no longer be used by the caller.  The array itself is owned by
    /// the caller.
    /// 
    /// Each file descriptor in the array should be set to close-on-exec.
    /// 
    /// If `n_fds` is -1 then `fds` must be terminated with -1.
    init(array fds: UnsafePointer<CInt>, nFds n_fds: CInt) {
        let rv = g_unix_fd_list_new_from_array(cast(fds), gint(n_fds))
        self.init(cast(rv))
    }
    /// Creates a new `GUnixFDList` containing the file descriptors given in
    /// `fds`.  The file descriptors become the property of the new list and
    /// may no longer be used by the caller.  The array itself is owned by
    /// the caller.
    /// 
    /// Each file descriptor in the array should be set to close-on-exec.
    /// 
    /// If `n_fds` is -1 then `fds` must be terminated with -1.
    static func newFrom(array fds: UnsafePointer<CInt>, nFds n_fds: CInt) -> UnixFDListRef! {
        let rv = g_unix_fd_list_new_from_array(cast(fds), gint(n_fds))
        return rv.map { UnixFDListRef(cast($0)) }
    }
}

/// The `UnixFDList` type acts as a reference-counted owner of an underlying `GUnixFDList` instance.
/// It provides the methods that can operate on this data type through `UnixFDListProtocol` conformance.
/// Use `UnixFDList` as a strong reference or owner of a `GUnixFDList` instance.
///
/// A `GUnixFDList` contains a list of file descriptors.  It owns the file
/// descriptors that it contains, closing them when finalized.
/// 
/// It may be wrapped in a `GUnixFDMessage` and sent over a `GSocket` in
/// the `G_SOCKET_FAMILY_UNIX` family by using `g_socket_send_message()`
/// and received using `g_socket_receive_message()`.
/// 
/// Note that `<gio/gunixfdlist.h>` belongs to the UNIX-specific GIO
/// interfaces, thus you have to use the `gio-unix-2.0.pc` pkg-config
/// file when using it.
open class UnixFDList: Object, UnixFDListProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `UnixFDList` instance.
    public init(_ op: UnsafeMutablePointer<GUnixFDList>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `UnixFDListProtocol`
    /// Will retain `GUnixFDList`.
    public convenience init<T: UnixFDListProtocol>(_ other: T) {
        self.init(cast(other.unix_fd_list_ptr))
        g_object_ref(cast(unix_fd_list_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GUnixFDList.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GUnixFDList.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GUnixFDList.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GUnixFDList>(opaquePointer))
    }

    /// Creates a new `GUnixFDList` containing no file descriptors.
    public convenience init() {
        let rv = g_unix_fd_list_new()
        self.init(cast(rv))
    }

    /// Creates a new `GUnixFDList` containing the file descriptors given in
    /// `fds`.  The file descriptors become the property of the new list and
    /// may no longer be used by the caller.  The array itself is owned by
    /// the caller.
    /// 
    /// Each file descriptor in the array should be set to close-on-exec.
    /// 
    /// If `n_fds` is -1 then `fds` must be terminated with -1.
    public convenience init(array fds: UnsafePointer<CInt>, nFds n_fds: CInt) {
        let rv = g_unix_fd_list_new_from_array(cast(fds), gint(n_fds))
        self.init(cast(rv))
    }

    /// Creates a new `GUnixFDList` containing the file descriptors given in
    /// `fds`.  The file descriptors become the property of the new list and
    /// may no longer be used by the caller.  The array itself is owned by
    /// the caller.
    /// 
    /// Each file descriptor in the array should be set to close-on-exec.
    /// 
    /// If `n_fds` is -1 then `fds` must be terminated with -1.
    public static func newFrom(array fds: UnsafePointer<CInt>, nFds n_fds: CInt) -> UnixFDList! {
        let rv = g_unix_fd_list_new_from_array(cast(fds), gint(n_fds))
        return rv.map { UnixFDList(cast($0)) }
    }

}

// MARK: - no UnixFDList properties

public enum UnixFDListSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"

}

public extension UnixFDListProtocol {
    /// Connect a `UnixFDListSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: UnixFDListSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(unix_fd_list_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension UnixFDListProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixFDList` instance.
    var unix_fd_list_ptr: UnsafeMutablePointer<GUnixFDList> { return ptr.assumingMemoryBound(to: GUnixFDList.self) }

    /// Adds a file descriptor to `list`.
    /// 
    /// The file descriptor is duplicated using `dup()`. You keep your copy
    /// of the descriptor and the copy contained in `list` will be closed
    /// when `list` is finalized.
    /// 
    /// A possible cause of failure is exceeding the per-process or
    /// system-wide file descriptor limit.
    /// 
    /// The index of the file descriptor in the list is returned.  If you use
    /// this index with `g_unix_fd_list_get()` then you will receive back a
    /// duplicated copy of the same file descriptor.
    func append(fd: CInt) throws -> CInt {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_unix_fd_list_append(cast(unix_fd_list_ptr), gint(fd), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return CInt(rv)
    }

    /// Gets a file descriptor out of `list`.
    /// 
    /// `index_` specifies the index of the file descriptor to get.  It is a
    /// programmer error for `index_` to be out of range; see
    /// `g_unix_fd_list_get_length()`.
    /// 
    /// The file descriptor is duplicated using `dup()` and set as
    /// close-on-exec before being returned.  You must call `close()` on it
    /// when you are done.
    /// 
    /// A possible cause of failure is exceeding the per-process or
    /// system-wide file descriptor limit.
    func get(index_: CInt) throws -> CInt {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_unix_fd_list_get(cast(unix_fd_list_ptr), gint(index_), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return CInt(rv)
    }

    /// Gets the length of `list` (ie: the number of file descriptors
    /// contained within).
    func getLength() -> CInt {
        let rv = g_unix_fd_list_get_length(cast(unix_fd_list_ptr))
        return CInt(rv)
    }

    /// Returns the array of file descriptors that is contained in this
    /// object.
    /// 
    /// After this call, the descriptors remain the property of `list`.  The
    /// caller must not close them and must not free the array.  The array is
    /// valid only until `list` is changed in any way.
    /// 
    /// If `length` is non-`nil` then it is set to the number of file
    /// descriptors in the returned array. The returned array is also
    /// terminated with -1.
    /// 
    /// This function never returns `nil`. In case there are no file
    /// descriptors contained in `list`, an empty array is returned.
    func peekFds(length: UnsafeMutablePointer<CInt>) -> UnsafePointer<CInt>! {
        let rv = g_unix_fd_list_peek_fds(cast(unix_fd_list_ptr), cast(length))
        return cast(rv)
    }

    /// Returns the array of file descriptors that is contained in this
    /// object.
    /// 
    /// After this call, the descriptors are no longer contained in
    /// `list`. Further calls will return an empty list (unless more
    /// descriptors have been added).
    /// 
    /// The return result of this function must be freed with `g_free()`.
    /// The caller is also responsible for closing all of the file
    /// descriptors.  The file descriptors in the array are set to
    /// close-on-exec.
    /// 
    /// If `length` is non-`nil` then it is set to the number of file
    /// descriptors in the returned array. The returned array is also
    /// terminated with -1.
    /// 
    /// This function never returns `nil`. In case there are no file
    /// descriptors contained in `list`, an empty array is returned.
    func stealFds(length: UnsafeMutablePointer<CInt>) -> UnsafeMutablePointer<CInt>! {
        let rv = g_unix_fd_list_steal_fds(cast(unix_fd_list_ptr), cast(length))
        return cast(rv)
    }
    /// Gets the length of `list` (ie: the number of file descriptors
    /// contained within).
    var length: CInt {
        /// Gets the length of `list` (ie: the number of file descriptors
        /// contained within).
        get {
            let rv = g_unix_fd_list_get_length(cast(unix_fd_list_ptr))
            return CInt(rv)
        }
    }
}



// MARK: - UnixFDMessage Class

/// The `UnixFDMessageProtocol` protocol exposes the methods and properties of an underlying `GUnixFDMessage` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixFDMessage`.
/// Alternatively, use `UnixFDMessageRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// This `GSocketControlMessage` contains a `GUnixFDList`.
/// It may be sent using `g_socket_send_message()` and received using
/// `g_socket_receive_message()` over UNIX sockets (ie: sockets in the
/// `G_SOCKET_FAMILY_UNIX` family). The file descriptors are copied
/// between processes by the kernel.
/// 
/// For an easier way to send and receive file descriptors over
/// stream-oriented UNIX sockets, see `g_unix_connection_send_fd()` and
/// `g_unix_connection_receive_fd()`.
/// 
/// Note that `<gio/gunixfdmessage.h>` belongs to the UNIX-specific GIO
/// interfaces, thus you have to use the `gio-unix-2.0.pc` pkg-config
/// file when using it.
public protocol UnixFDMessageProtocol: SocketControlMessageProtocol {
    /// Untyped pointer to the underlying `GUnixFDMessage` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GUnixFDMessage` instance.
    var unix_fd_message_ptr: UnsafeMutablePointer<GUnixFDMessage> { get }
}

/// The `UnixFDMessageRef` type acts as a lightweight Swift reference to an underlying `GUnixFDMessage` instance.
/// It exposes methods that can operate on this data type through `UnixFDMessageProtocol` conformance.
/// Use `UnixFDMessageRef` only as an `unowned` reference to an existing `GUnixFDMessage` instance.
///
/// This `GSocketControlMessage` contains a `GUnixFDList`.
/// It may be sent using `g_socket_send_message()` and received using
/// `g_socket_receive_message()` over UNIX sockets (ie: sockets in the
/// `G_SOCKET_FAMILY_UNIX` family). The file descriptors are copied
/// between processes by the kernel.
/// 
/// For an easier way to send and receive file descriptors over
/// stream-oriented UNIX sockets, see `g_unix_connection_send_fd()` and
/// `g_unix_connection_receive_fd()`.
/// 
/// Note that `<gio/gunixfdmessage.h>` belongs to the UNIX-specific GIO
/// interfaces, thus you have to use the `gio-unix-2.0.pc` pkg-config
/// file when using it.
public struct UnixFDMessageRef: UnixFDMessageProtocol {
    /// Untyped pointer to the underlying `GUnixFDMessage` instance.
    /// For type-safe access, use the generated, typed pointer `unix_fd_message_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension UnixFDMessageRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GUnixFDMessage>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `UnixFDMessageProtocol`
    init<T: UnixFDMessageProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GUnixFDMessage` containing an empty file descriptor
    /// list.
    init() {
        let rv = g_unix_fd_message_new()
        self.init(cast(rv))
    }

    /// Creates a new `GUnixFDMessage` containing `list`.
    init(fdList fd_list: UnixFDListProtocol) {
        let rv = g_unix_fd_message_new_with_fd_list(cast(fd_list.ptr))
        self.init(cast(rv))
    }
    /// Creates a new `GUnixFDMessage` containing `list`.
    static func newWith(fdList fd_list: UnixFDListProtocol) -> UnixFDMessageRef! {
        let rv = g_unix_fd_message_new_with_fd_list(cast(fd_list.ptr))
        return rv.map { UnixFDMessageRef(cast($0)) }
    }
}

/// The `UnixFDMessage` type acts as a reference-counted owner of an underlying `GUnixFDMessage` instance.
/// It provides the methods that can operate on this data type through `UnixFDMessageProtocol` conformance.
/// Use `UnixFDMessage` as a strong reference or owner of a `GUnixFDMessage` instance.
///
/// This `GSocketControlMessage` contains a `GUnixFDList`.
/// It may be sent using `g_socket_send_message()` and received using
/// `g_socket_receive_message()` over UNIX sockets (ie: sockets in the
/// `G_SOCKET_FAMILY_UNIX` family). The file descriptors are copied
/// between processes by the kernel.
/// 
/// For an easier way to send and receive file descriptors over
/// stream-oriented UNIX sockets, see `g_unix_connection_send_fd()` and
/// `g_unix_connection_receive_fd()`.
/// 
/// Note that `<gio/gunixfdmessage.h>` belongs to the UNIX-specific GIO
/// interfaces, thus you have to use the `gio-unix-2.0.pc` pkg-config
/// file when using it.
open class UnixFDMessage: SocketControlMessage, UnixFDMessageProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `UnixFDMessage` instance.
    public init(_ op: UnsafeMutablePointer<GUnixFDMessage>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `UnixFDMessageProtocol`
    /// Will retain `GUnixFDMessage`.
    public convenience init<T: UnixFDMessageProtocol>(_ other: T) {
        self.init(cast(other.unix_fd_message_ptr))
        g_object_ref(cast(unix_fd_message_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GUnixFDMessage.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GUnixFDMessage.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GUnixFDMessage.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GUnixFDMessage>(opaquePointer))
    }

    /// Creates a new `GUnixFDMessage` containing an empty file descriptor
    /// list.
    public convenience init() {
        let rv = g_unix_fd_message_new()
        self.init(cast(rv))
    }

    /// Creates a new `GUnixFDMessage` containing `list`.
    public convenience init(fdList fd_list: UnixFDListProtocol) {
        let rv = g_unix_fd_message_new_with_fd_list(cast(fd_list.ptr))
        self.init(cast(rv))
    }

    /// Creates a new `GUnixFDMessage` containing `list`.
    public static func newWith(fdList fd_list: UnixFDListProtocol) -> UnixFDMessage! {
        let rv = g_unix_fd_message_new_with_fd_list(cast(fd_list.ptr))
        return rv.map { UnixFDMessage(cast($0)) }
    }

}

public enum UnixFDMessagePropertyName: String, PropertyNameProtocol {
    case fdList = "fd-list"
}

public extension UnixFDMessageProtocol {
    /// Bind a `UnixFDMessagePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: UnixFDMessagePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(unix_fd_message_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum UnixFDMessageSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    case notifyFdList = "notify::fd-list"
}

public extension UnixFDMessageProtocol {
    /// Connect a `UnixFDMessageSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: UnixFDMessageSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(unix_fd_message_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension UnixFDMessageProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixFDMessage` instance.
    var unix_fd_message_ptr: UnsafeMutablePointer<GUnixFDMessage> { return ptr.assumingMemoryBound(to: GUnixFDMessage.self) }

    /// Adds a file descriptor to `message`.
    /// 
    /// The file descriptor is duplicated using `dup()`. You keep your copy
    /// of the descriptor and the copy contained in `message` will be closed
    /// when `message` is finalized.
    /// 
    /// A possible cause of failure is exceeding the per-process or
    /// system-wide file descriptor limit.
    func append(fd: CInt) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_unix_fd_message_append_fd(cast(unix_fd_message_ptr), gint(fd), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Gets the `GUnixFDList` contained in `message`.  This function does not
    /// return a reference to the caller, but the returned list is valid for
    /// the lifetime of `message`.
    func getFdList() -> UnsafeMutablePointer<GUnixFDList>! {
        let rv = g_unix_fd_message_get_fd_list(cast(unix_fd_message_ptr))
        return cast(rv)
    }

    /// Returns the array of file descriptors that is contained in this
    /// object.
    /// 
    /// After this call, the descriptors are no longer contained in
    /// `message`. Further calls will return an empty list (unless more
    /// descriptors have been added).
    /// 
    /// The return result of this function must be freed with `g_free()`.
    /// The caller is also responsible for closing all of the file
    /// descriptors.
    /// 
    /// If `length` is non-`nil` then it is set to the number of file
    /// descriptors in the returned array. The returned array is also
    /// terminated with -1.
    /// 
    /// This function never returns `nil`. In case there are no file
    /// descriptors contained in `message`, an empty array is returned.
    func stealFds(length: UnsafeMutablePointer<CInt>) -> UnsafeMutablePointer<CInt>! {
        let rv = g_unix_fd_message_steal_fds(cast(unix_fd_message_ptr), cast(length))
        return cast(rv)
    }
    /// Gets the `GUnixFDList` contained in `message`.  This function does not
    /// return a reference to the caller, but the returned list is valid for
    /// the lifetime of `message`.
    var fdList: UnsafeMutablePointer<GUnixFDList>! {
        /// Gets the `GUnixFDList` contained in `message`.  This function does not
        /// return a reference to the caller, but the returned list is valid for
        /// the lifetime of `message`.
        get {
            let rv = g_unix_fd_message_get_fd_list(cast(unix_fd_message_ptr))
            return cast(rv)
        }
    }
}



// MARK: - UnixInputStream Class

/// The `UnixInputStreamProtocol` protocol exposes the methods and properties of an underlying `GUnixInputStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixInputStream`.
/// Alternatively, use `UnixInputStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GUnixInputStream` implements `GInputStream` for reading from a UNIX
/// file descriptor, including asynchronous operations. (If the file
/// descriptor refers to a socket or pipe, this will use `poll()` to do
/// asynchronous I/O. If it refers to a regular file, it will fall back
/// to doing asynchronous I/O in another thread.)
/// 
/// Note that `<gio/gunixinputstream.h>` belongs to the UNIX-specific GIO
/// interfaces, thus you have to use the `gio-unix-2.0.pc` pkg-config
/// file when using it.
public protocol UnixInputStreamProtocol: InputStreamProtocol, FileDescriptorBasedProtocol, PollableInputStreamProtocol {
    /// Untyped pointer to the underlying `GUnixInputStream` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GUnixInputStream` instance.
    var unix_input_stream_ptr: UnsafeMutablePointer<GUnixInputStream> { get }
}

/// The `UnixInputStreamRef` type acts as a lightweight Swift reference to an underlying `GUnixInputStream` instance.
/// It exposes methods that can operate on this data type through `UnixInputStreamProtocol` conformance.
/// Use `UnixInputStreamRef` only as an `unowned` reference to an existing `GUnixInputStream` instance.
///
/// `GUnixInputStream` implements `GInputStream` for reading from a UNIX
/// file descriptor, including asynchronous operations. (If the file
/// descriptor refers to a socket or pipe, this will use `poll()` to do
/// asynchronous I/O. If it refers to a regular file, it will fall back
/// to doing asynchronous I/O in another thread.)
/// 
/// Note that `<gio/gunixinputstream.h>` belongs to the UNIX-specific GIO
/// interfaces, thus you have to use the `gio-unix-2.0.pc` pkg-config
/// file when using it.
public struct UnixInputStreamRef: UnixInputStreamProtocol {
    /// Untyped pointer to the underlying `GUnixInputStream` instance.
    /// For type-safe access, use the generated, typed pointer `unix_input_stream_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension UnixInputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GUnixInputStream>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `UnixInputStreamProtocol`
    init<T: UnixInputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GUnixInputStream` for the given `fd`.
    /// 
    /// If `close_fd` is `true`, the file descriptor will be closed
    /// when the stream is closed.
    init( fd: CInt, closeFd close_fd: Bool) {
        let rv = g_unix_input_stream_new(gint(fd), gboolean(close_fd ? 1 : 0))
        self.init(cast(rv))
    }
}

/// The `UnixInputStream` type acts as a reference-counted owner of an underlying `GUnixInputStream` instance.
/// It provides the methods that can operate on this data type through `UnixInputStreamProtocol` conformance.
/// Use `UnixInputStream` as a strong reference or owner of a `GUnixInputStream` instance.
///
/// `GUnixInputStream` implements `GInputStream` for reading from a UNIX
/// file descriptor, including asynchronous operations. (If the file
/// descriptor refers to a socket or pipe, this will use `poll()` to do
/// asynchronous I/O. If it refers to a regular file, it will fall back
/// to doing asynchronous I/O in another thread.)
/// 
/// Note that `<gio/gunixinputstream.h>` belongs to the UNIX-specific GIO
/// interfaces, thus you have to use the `gio-unix-2.0.pc` pkg-config
/// file when using it.
open class UnixInputStream: InputStream, UnixInputStreamProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `UnixInputStream` instance.
    public init(_ op: UnsafeMutablePointer<GUnixInputStream>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `UnixInputStreamProtocol`
    /// Will retain `GUnixInputStream`.
    public convenience init<T: UnixInputStreamProtocol>(_ other: T) {
        self.init(cast(other.unix_input_stream_ptr))
        g_object_ref(cast(unix_input_stream_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GUnixInputStream.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GUnixInputStream.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GUnixInputStream.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GUnixInputStream>(opaquePointer))
    }

    /// Creates a new `GUnixInputStream` for the given `fd`.
    /// 
    /// If `close_fd` is `true`, the file descriptor will be closed
    /// when the stream is closed.
    public convenience init( fd: CInt, closeFd close_fd: Bool) {
        let rv = g_unix_input_stream_new(gint(fd), gboolean(close_fd ? 1 : 0))
        self.init(cast(rv))
    }


}

public enum UnixInputStreamPropertyName: String, PropertyNameProtocol {
    /// Whether to close the file descriptor when the stream is closed.
    case closeFd = "close-fd"
    /// The file descriptor that the stream reads from.
    case fd = "fd"
}

public extension UnixInputStreamProtocol {
    /// Bind a `UnixInputStreamPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: UnixInputStreamPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(unix_input_stream_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum UnixInputStreamSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// Whether to close the file descriptor when the stream is closed.
    case notifyCloseFd = "notify::close-fd"
    /// The file descriptor that the stream reads from.
    case notifyFd = "notify::fd"
}

public extension UnixInputStreamProtocol {
    /// Connect a `UnixInputStreamSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: UnixInputStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(unix_input_stream_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension UnixInputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixInputStream` instance.
    var unix_input_stream_ptr: UnsafeMutablePointer<GUnixInputStream> { return ptr.assumingMemoryBound(to: GUnixInputStream.self) }

    /// Returns whether the file descriptor of `stream` will be
    /// closed when the stream is closed.
    func getCloseFd() -> Bool {
        let rv = g_unix_input_stream_get_close_fd(cast(unix_input_stream_ptr))
        return Bool(rv != 0)
    }

    /// Return the UNIX file descriptor that the stream reads from.
    func getFd() -> CInt {
        let rv = g_unix_input_stream_get_fd(cast(unix_input_stream_ptr))
        return CInt(rv)
    }

    /// Sets whether the file descriptor of `stream` shall be closed
    /// when the stream is closed.
    func set(closeFd close_fd: Bool) {
        g_unix_input_stream_set_close_fd(cast(unix_input_stream_ptr), gboolean(close_fd ? 1 : 0))
    
    }
    /// Returns whether the file descriptor of `stream` will be
    /// closed when the stream is closed.
    var closeFd: Bool {
        /// Returns whether the file descriptor of `stream` will be
        /// closed when the stream is closed.
        get {
            let rv = g_unix_input_stream_get_close_fd(cast(unix_input_stream_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether the file descriptor of `stream` shall be closed
        /// when the stream is closed.
        nonmutating set {
            g_unix_input_stream_set_close_fd(cast(unix_input_stream_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// The file descriptor that the stream reads from.
    var fd: CInt {
        /// Return the UNIX file descriptor that the stream reads from.
        get {
            let rv = g_unix_input_stream_get_fd(cast(unix_input_stream_ptr))
            return CInt(rv)
        }
    }
}



// MARK: - UnixMountMonitor Class

/// The `UnixMountMonitorProtocol` protocol exposes the methods and properties of an underlying `GUnixMountMonitor` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixMountMonitor`.
/// Alternatively, use `UnixMountMonitorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Watches `GUnixMounts` for changes.
public protocol UnixMountMonitorProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `GUnixMountMonitor` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GUnixMountMonitor` instance.
    var unix_mount_monitor_ptr: UnsafeMutablePointer<GUnixMountMonitor> { get }
}

/// The `UnixMountMonitorRef` type acts as a lightweight Swift reference to an underlying `GUnixMountMonitor` instance.
/// It exposes methods that can operate on this data type through `UnixMountMonitorProtocol` conformance.
/// Use `UnixMountMonitorRef` only as an `unowned` reference to an existing `GUnixMountMonitor` instance.
///
/// Watches `GUnixMounts` for changes.
public struct UnixMountMonitorRef: UnixMountMonitorProtocol {
    /// Untyped pointer to the underlying `GUnixMountMonitor` instance.
    /// For type-safe access, use the generated, typed pointer `unix_mount_monitor_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension UnixMountMonitorRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GUnixMountMonitor>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `UnixMountMonitorProtocol`
    init<T: UnixMountMonitorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Deprecated alias for `g_unix_mount_monitor_get()`.
    /// 
    /// This function was never a true constructor, which is why it was
    /// renamed.
    ///
    /// **new is deprecated:**
    /// Use g_unix_mount_monitor_get() instead.
    @available(*, deprecated) init() {
        let rv = g_unix_mount_monitor_new()
        self.init(cast(rv))
    }
    /// Gets the `GUnixMountMonitor` for the current thread-default main
    /// context.
    /// 
    /// The mount monitor can be used to monitor for changes to the list of
    /// mounted filesystems as well as the list of mount points (ie: fstab
    /// entries).
    /// 
    /// You must only call `g_object_unref()` on the return value from under
    /// the same main context as you called this function.
    static func unixMountMonitorGet() -> UnixMountMonitorRef! {
        let rv = g_unix_mount_monitor_get()
        return rv.map { UnixMountMonitorRef(cast($0)) }
    }
}

/// The `UnixMountMonitor` type acts as a reference-counted owner of an underlying `GUnixMountMonitor` instance.
/// It provides the methods that can operate on this data type through `UnixMountMonitorProtocol` conformance.
/// Use `UnixMountMonitor` as a strong reference or owner of a `GUnixMountMonitor` instance.
///
/// Watches `GUnixMounts` for changes.
open class UnixMountMonitor: Object, UnixMountMonitorProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `UnixMountMonitor` instance.
    public init(_ op: UnsafeMutablePointer<GUnixMountMonitor>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `UnixMountMonitorProtocol`
    /// Will retain `GUnixMountMonitor`.
    public convenience init<T: UnixMountMonitorProtocol>(_ other: T) {
        self.init(cast(other.unix_mount_monitor_ptr))
        g_object_ref(cast(unix_mount_monitor_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GUnixMountMonitor.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GUnixMountMonitor.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GUnixMountMonitor.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GUnixMountMonitor>(opaquePointer))
    }

    /// Deprecated alias for `g_unix_mount_monitor_get()`.
    /// 
    /// This function was never a true constructor, which is why it was
    /// renamed.
    ///
    /// **new is deprecated:**
    /// Use g_unix_mount_monitor_get() instead.
    @available(*, deprecated) public convenience init() {
        let rv = g_unix_mount_monitor_new()
        self.init(cast(rv))
    }

    /// Gets the `GUnixMountMonitor` for the current thread-default main
    /// context.
    /// 
    /// The mount monitor can be used to monitor for changes to the list of
    /// mounted filesystems as well as the list of mount points (ie: fstab
    /// entries).
    /// 
    /// You must only call `g_object_unref()` on the return value from under
    /// the same main context as you called this function.
    public static func unixMountMonitorGet() -> UnixMountMonitor! {
        let rv = g_unix_mount_monitor_get()
        return rv.map { UnixMountMonitor(cast($0)) }
    }

}

// MARK: - no UnixMountMonitor properties

public enum UnixMountMonitorSignalName: String, SignalNameProtocol {
    /// Emitted when the unix mount points have changed.
    case mountpointsChanged = "mountpoints-changed"
    /// Emitted when the unix mounts have changed.
    case mountsChanged = "mounts-changed"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"

}

public extension UnixMountMonitorProtocol {
    /// Connect a `UnixMountMonitorSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: UnixMountMonitorSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(unix_mount_monitor_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension UnixMountMonitorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixMountMonitor` instance.
    var unix_mount_monitor_ptr: UnsafeMutablePointer<GUnixMountMonitor> { return ptr.assumingMemoryBound(to: GUnixMountMonitor.self) }

    /// This function does nothing.
    /// 
    /// Before 2.44, this was a partially-effective way of controlling the
    /// rate at which events would be reported under some uncommon
    /// circumstances.  Since `mount_monitor` is a singleton, it also meant
    /// that calling this function would have side effects for other users of
    /// the monitor.
    ///
    /// **set_rate_limit is deprecated:**
    /// This function does nothing.  Don't call it.
    @available(*, deprecated) func setRateLimit(limitMsec limit_msec: CInt) {
        g_unix_mount_monitor_set_rate_limit(cast(unix_mount_monitor_ptr), limit_msec)
    
    }
}



// MARK: - UnixOutputStream Class

/// The `UnixOutputStreamProtocol` protocol exposes the methods and properties of an underlying `GUnixOutputStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixOutputStream`.
/// Alternatively, use `UnixOutputStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GUnixOutputStream` implements `GOutputStream` for writing to a UNIX
/// file descriptor, including asynchronous operations. (If the file
/// descriptor refers to a socket or pipe, this will use `poll()` to do
/// asynchronous I/O. If it refers to a regular file, it will fall back
/// to doing asynchronous I/O in another thread.)
/// 
/// Note that `<gio/gunixoutputstream.h>` belongs to the UNIX-specific GIO
/// interfaces, thus you have to use the `gio-unix-2.0.pc` pkg-config file
/// when using it.
public protocol UnixOutputStreamProtocol: OutputStreamProtocol, FileDescriptorBasedProtocol, PollableOutputStreamProtocol {
    /// Untyped pointer to the underlying `GUnixOutputStream` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GUnixOutputStream` instance.
    var unix_output_stream_ptr: UnsafeMutablePointer<GUnixOutputStream> { get }
}

/// The `UnixOutputStreamRef` type acts as a lightweight Swift reference to an underlying `GUnixOutputStream` instance.
/// It exposes methods that can operate on this data type through `UnixOutputStreamProtocol` conformance.
/// Use `UnixOutputStreamRef` only as an `unowned` reference to an existing `GUnixOutputStream` instance.
///
/// `GUnixOutputStream` implements `GOutputStream` for writing to a UNIX
/// file descriptor, including asynchronous operations. (If the file
/// descriptor refers to a socket or pipe, this will use `poll()` to do
/// asynchronous I/O. If it refers to a regular file, it will fall back
/// to doing asynchronous I/O in another thread.)
/// 
/// Note that `<gio/gunixoutputstream.h>` belongs to the UNIX-specific GIO
/// interfaces, thus you have to use the `gio-unix-2.0.pc` pkg-config file
/// when using it.
public struct UnixOutputStreamRef: UnixOutputStreamProtocol {
    /// Untyped pointer to the underlying `GUnixOutputStream` instance.
    /// For type-safe access, use the generated, typed pointer `unix_output_stream_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension UnixOutputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GUnixOutputStream>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `UnixOutputStreamProtocol`
    init<T: UnixOutputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GUnixOutputStream` for the given `fd`.
    /// 
    /// If `close_fd`, is `true`, the file descriptor will be closed when
    /// the output stream is destroyed.
    init( fd: CInt, closeFd close_fd: Bool) {
        let rv = g_unix_output_stream_new(gint(fd), gboolean(close_fd ? 1 : 0))
        self.init(cast(rv))
    }
}

/// The `UnixOutputStream` type acts as a reference-counted owner of an underlying `GUnixOutputStream` instance.
/// It provides the methods that can operate on this data type through `UnixOutputStreamProtocol` conformance.
/// Use `UnixOutputStream` as a strong reference or owner of a `GUnixOutputStream` instance.
///
/// `GUnixOutputStream` implements `GOutputStream` for writing to a UNIX
/// file descriptor, including asynchronous operations. (If the file
/// descriptor refers to a socket or pipe, this will use `poll()` to do
/// asynchronous I/O. If it refers to a regular file, it will fall back
/// to doing asynchronous I/O in another thread.)
/// 
/// Note that `<gio/gunixoutputstream.h>` belongs to the UNIX-specific GIO
/// interfaces, thus you have to use the `gio-unix-2.0.pc` pkg-config file
/// when using it.
open class UnixOutputStream: OutputStream, UnixOutputStreamProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `UnixOutputStream` instance.
    public init(_ op: UnsafeMutablePointer<GUnixOutputStream>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `UnixOutputStreamProtocol`
    /// Will retain `GUnixOutputStream`.
    public convenience init<T: UnixOutputStreamProtocol>(_ other: T) {
        self.init(cast(other.unix_output_stream_ptr))
        g_object_ref(cast(unix_output_stream_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GUnixOutputStream.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GUnixOutputStream.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GUnixOutputStream.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GUnixOutputStream>(opaquePointer))
    }

    /// Creates a new `GUnixOutputStream` for the given `fd`.
    /// 
    /// If `close_fd`, is `true`, the file descriptor will be closed when
    /// the output stream is destroyed.
    public convenience init( fd: CInt, closeFd close_fd: Bool) {
        let rv = g_unix_output_stream_new(gint(fd), gboolean(close_fd ? 1 : 0))
        self.init(cast(rv))
    }


}

public enum UnixOutputStreamPropertyName: String, PropertyNameProtocol {
    /// Whether to close the file descriptor when the stream is closed.
    case closeFd = "close-fd"
    /// The file descriptor that the stream writes to.
    case fd = "fd"
}

public extension UnixOutputStreamProtocol {
    /// Bind a `UnixOutputStreamPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: UnixOutputStreamPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(unix_output_stream_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum UnixOutputStreamSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// Whether to close the file descriptor when the stream is closed.
    case notifyCloseFd = "notify::close-fd"
    /// The file descriptor that the stream writes to.
    case notifyFd = "notify::fd"
}

public extension UnixOutputStreamProtocol {
    /// Connect a `UnixOutputStreamSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: UnixOutputStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(unix_output_stream_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension UnixOutputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixOutputStream` instance.
    var unix_output_stream_ptr: UnsafeMutablePointer<GUnixOutputStream> { return ptr.assumingMemoryBound(to: GUnixOutputStream.self) }

    /// Returns whether the file descriptor of `stream` will be
    /// closed when the stream is closed.
    func getCloseFd() -> Bool {
        let rv = g_unix_output_stream_get_close_fd(cast(unix_output_stream_ptr))
        return Bool(rv != 0)
    }

    /// Return the UNIX file descriptor that the stream writes to.
    func getFd() -> CInt {
        let rv = g_unix_output_stream_get_fd(cast(unix_output_stream_ptr))
        return CInt(rv)
    }

    /// Sets whether the file descriptor of `stream` shall be closed
    /// when the stream is closed.
    func set(closeFd close_fd: Bool) {
        g_unix_output_stream_set_close_fd(cast(unix_output_stream_ptr), gboolean(close_fd ? 1 : 0))
    
    }
    /// Returns whether the file descriptor of `stream` will be
    /// closed when the stream is closed.
    var closeFd: Bool {
        /// Returns whether the file descriptor of `stream` will be
        /// closed when the stream is closed.
        get {
            let rv = g_unix_output_stream_get_close_fd(cast(unix_output_stream_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether the file descriptor of `stream` shall be closed
        /// when the stream is closed.
        nonmutating set {
            g_unix_output_stream_set_close_fd(cast(unix_output_stream_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// The file descriptor that the stream writes to.
    var fd: CInt {
        /// Return the UNIX file descriptor that the stream writes to.
        get {
            let rv = g_unix_output_stream_get_fd(cast(unix_output_stream_ptr))
            return CInt(rv)
        }
    }
}



// MARK: - UnixSocketAddress Class

/// The `UnixSocketAddressProtocol` protocol exposes the methods and properties of an underlying `GUnixSocketAddress` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixSocketAddress`.
/// Alternatively, use `UnixSocketAddressRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Support for UNIX-domain (also known as local) sockets.
/// 
/// UNIX domain sockets are generally visible in the filesystem.
/// However, some systems support abstract socket names which are not
/// visible in the filesystem and not affected by the filesystem
/// permissions, visibility, etc. Currently this is only supported
/// under Linux. If you attempt to use abstract sockets on other
/// systems, function calls may return `G_IO_ERROR_NOT_SUPPORTED`
/// errors. You can use `g_unix_socket_address_abstract_names_supported()`
/// to see if abstract names are supported.
/// 
/// Note that `<gio/gunixsocketaddress.h>` belongs to the UNIX-specific GIO
/// interfaces, thus you have to use the `gio-unix-2.0.pc` pkg-config file
/// when using it.
public protocol UnixSocketAddressProtocol: SocketAddressProtocol {
    /// Untyped pointer to the underlying `GUnixSocketAddress` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GUnixSocketAddress` instance.
    var unix_socket_address_ptr: UnsafeMutablePointer<GUnixSocketAddress> { get }
}

/// The `UnixSocketAddressRef` type acts as a lightweight Swift reference to an underlying `GUnixSocketAddress` instance.
/// It exposes methods that can operate on this data type through `UnixSocketAddressProtocol` conformance.
/// Use `UnixSocketAddressRef` only as an `unowned` reference to an existing `GUnixSocketAddress` instance.
///
/// Support for UNIX-domain (also known as local) sockets.
/// 
/// UNIX domain sockets are generally visible in the filesystem.
/// However, some systems support abstract socket names which are not
/// visible in the filesystem and not affected by the filesystem
/// permissions, visibility, etc. Currently this is only supported
/// under Linux. If you attempt to use abstract sockets on other
/// systems, function calls may return `G_IO_ERROR_NOT_SUPPORTED`
/// errors. You can use `g_unix_socket_address_abstract_names_supported()`
/// to see if abstract names are supported.
/// 
/// Note that `<gio/gunixsocketaddress.h>` belongs to the UNIX-specific GIO
/// interfaces, thus you have to use the `gio-unix-2.0.pc` pkg-config file
/// when using it.
public struct UnixSocketAddressRef: UnixSocketAddressProtocol {
    /// Untyped pointer to the underlying `GUnixSocketAddress` instance.
    /// For type-safe access, use the generated, typed pointer `unix_socket_address_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension UnixSocketAddressRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GUnixSocketAddress>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `UnixSocketAddressProtocol`
    init<T: UnixSocketAddressProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GUnixSocketAddress` for `path`.
    /// 
    /// To create abstract socket addresses, on systems that support that,
    /// use `g_unix_socket_address_new_abstract()`.
    init( path: UnsafePointer<gchar>) {
        let rv = g_unix_socket_address_new(path)
        self.init(cast(rv))
    }

    /// Creates a new `G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED`
    /// `GUnixSocketAddress` for `path`.
    ///
    /// **new_abstract is deprecated:**
    /// Use g_unix_socket_address_new_with_type().
    @available(*, deprecated) init(abstract path: UnsafePointer<gchar>, pathLen path_len: CInt) {
        let rv = g_unix_socket_address_new_abstract(cast(path), gint(path_len))
        self.init(cast(rv))
    }

    /// Creates a new `GUnixSocketAddress` of type `type` with name `path`.
    /// 
    /// If `type` is `G_UNIX_SOCKET_ADDRESS_PATH`, this is equivalent to
    /// calling `g_unix_socket_address_new()`.
    /// 
    /// If `type` is `G_UNIX_SOCKET_ADDRESS_ANONYMOUS`, `path` and `path_len` will be
    /// ignored.
    /// 
    /// If `path_type` is `G_UNIX_SOCKET_ADDRESS_ABSTRACT`, then `path_len`
    /// bytes of `path` will be copied to the socket's path, and only those
    /// bytes will be considered part of the name. (If `path_len` is -1,
    /// then `path` is assumed to be NUL-terminated.) For example, if `path`
    /// was "test", then calling `g_socket_address_get_native_size()` on the
    /// returned socket would return 7 (2 bytes of overhead, 1 byte for the
    /// abstract-socket indicator byte, and 4 bytes for the name "test").
    /// 
    /// If `path_type` is `G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED`, then
    /// `path_len` bytes of `path` will be copied to the socket's path, the
    /// rest of the path will be padded with 0 bytes, and the entire
    /// zero-padded buffer will be considered the name. (As above, if
    /// `path_len` is -1, then `path` is assumed to be NUL-terminated.) In
    /// this case, `g_socket_address_get_native_size()` will always return
    /// the full size of a `struct sockaddr_un`, although
    /// `g_unix_socket_address_get_path_len()` will still return just the
    /// length of `path`.
    /// 
    /// `G_UNIX_SOCKET_ADDRESS_ABSTRACT` is preferred over
    /// `G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED` for new programs. Of course,
    /// when connecting to a server created by another process, you must
    /// use the appropriate type corresponding to how that process created
    /// its listening socket.
    init(type path: UnsafePointer<gchar>, pathLen path_len: CInt, type: UnixSocketAddressType) {
        let rv = g_unix_socket_address_new_with_type(cast(path), gint(path_len), type)
        self.init(cast(rv))
    }
    /// Creates a new `G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED`
    /// `GUnixSocketAddress` for `path`.
    ///
    /// **new_abstract is deprecated:**
    /// Use g_unix_socket_address_new_with_type().
    @available(*, deprecated) static func new(abstract path: UnsafePointer<gchar>, pathLen path_len: CInt) -> UnixSocketAddressRef! {
        let rv = g_unix_socket_address_new_abstract(cast(path), gint(path_len))
        return rv.map { UnixSocketAddressRef(cast($0)) }
    }

    /// Creates a new `GUnixSocketAddress` of type `type` with name `path`.
    /// 
    /// If `type` is `G_UNIX_SOCKET_ADDRESS_PATH`, this is equivalent to
    /// calling `g_unix_socket_address_new()`.
    /// 
    /// If `type` is `G_UNIX_SOCKET_ADDRESS_ANONYMOUS`, `path` and `path_len` will be
    /// ignored.
    /// 
    /// If `path_type` is `G_UNIX_SOCKET_ADDRESS_ABSTRACT`, then `path_len`
    /// bytes of `path` will be copied to the socket's path, and only those
    /// bytes will be considered part of the name. (If `path_len` is -1,
    /// then `path` is assumed to be NUL-terminated.) For example, if `path`
    /// was "test", then calling `g_socket_address_get_native_size()` on the
    /// returned socket would return 7 (2 bytes of overhead, 1 byte for the
    /// abstract-socket indicator byte, and 4 bytes for the name "test").
    /// 
    /// If `path_type` is `G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED`, then
    /// `path_len` bytes of `path` will be copied to the socket's path, the
    /// rest of the path will be padded with 0 bytes, and the entire
    /// zero-padded buffer will be considered the name. (As above, if
    /// `path_len` is -1, then `path` is assumed to be NUL-terminated.) In
    /// this case, `g_socket_address_get_native_size()` will always return
    /// the full size of a `struct sockaddr_un`, although
    /// `g_unix_socket_address_get_path_len()` will still return just the
    /// length of `path`.
    /// 
    /// `G_UNIX_SOCKET_ADDRESS_ABSTRACT` is preferred over
    /// `G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED` for new programs. Of course,
    /// when connecting to a server created by another process, you must
    /// use the appropriate type corresponding to how that process created
    /// its listening socket.
    static func newWith(type path: UnsafePointer<gchar>, pathLen path_len: CInt, type: UnixSocketAddressType) -> UnixSocketAddressRef! {
        let rv = g_unix_socket_address_new_with_type(cast(path), gint(path_len), type)
        return rv.map { UnixSocketAddressRef(cast($0)) }
    }
}

/// The `UnixSocketAddress` type acts as a reference-counted owner of an underlying `GUnixSocketAddress` instance.
/// It provides the methods that can operate on this data type through `UnixSocketAddressProtocol` conformance.
/// Use `UnixSocketAddress` as a strong reference or owner of a `GUnixSocketAddress` instance.
///
/// Support for UNIX-domain (also known as local) sockets.
/// 
/// UNIX domain sockets are generally visible in the filesystem.
/// However, some systems support abstract socket names which are not
/// visible in the filesystem and not affected by the filesystem
/// permissions, visibility, etc. Currently this is only supported
/// under Linux. If you attempt to use abstract sockets on other
/// systems, function calls may return `G_IO_ERROR_NOT_SUPPORTED`
/// errors. You can use `g_unix_socket_address_abstract_names_supported()`
/// to see if abstract names are supported.
/// 
/// Note that `<gio/gunixsocketaddress.h>` belongs to the UNIX-specific GIO
/// interfaces, thus you have to use the `gio-unix-2.0.pc` pkg-config file
/// when using it.
open class UnixSocketAddress: SocketAddress, UnixSocketAddressProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `UnixSocketAddress` instance.
    public init(_ op: UnsafeMutablePointer<GUnixSocketAddress>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `UnixSocketAddressProtocol`
    /// Will retain `GUnixSocketAddress`.
    public convenience init<T: UnixSocketAddressProtocol>(_ other: T) {
        self.init(cast(other.unix_socket_address_ptr))
        g_object_ref(cast(unix_socket_address_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GUnixSocketAddress.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GUnixSocketAddress.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GUnixSocketAddress.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GUnixSocketAddress>(opaquePointer))
    }

    /// Creates a new `GUnixSocketAddress` for `path`.
    /// 
    /// To create abstract socket addresses, on systems that support that,
    /// use `g_unix_socket_address_new_abstract()`.
    public convenience init( path: UnsafePointer<gchar>) {
        let rv = g_unix_socket_address_new(path)
        self.init(cast(rv))
    }

    /// Creates a new `G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED`
    /// `GUnixSocketAddress` for `path`.
    ///
    /// **new_abstract is deprecated:**
    /// Use g_unix_socket_address_new_with_type().
    @available(*, deprecated) public convenience init(abstract path: UnsafePointer<gchar>, pathLen path_len: CInt) {
        let rv = g_unix_socket_address_new_abstract(cast(path), gint(path_len))
        self.init(cast(rv))
    }

    /// Creates a new `GUnixSocketAddress` of type `type` with name `path`.
    /// 
    /// If `type` is `G_UNIX_SOCKET_ADDRESS_PATH`, this is equivalent to
    /// calling `g_unix_socket_address_new()`.
    /// 
    /// If `type` is `G_UNIX_SOCKET_ADDRESS_ANONYMOUS`, `path` and `path_len` will be
    /// ignored.
    /// 
    /// If `path_type` is `G_UNIX_SOCKET_ADDRESS_ABSTRACT`, then `path_len`
    /// bytes of `path` will be copied to the socket's path, and only those
    /// bytes will be considered part of the name. (If `path_len` is -1,
    /// then `path` is assumed to be NUL-terminated.) For example, if `path`
    /// was "test", then calling `g_socket_address_get_native_size()` on the
    /// returned socket would return 7 (2 bytes of overhead, 1 byte for the
    /// abstract-socket indicator byte, and 4 bytes for the name "test").
    /// 
    /// If `path_type` is `G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED`, then
    /// `path_len` bytes of `path` will be copied to the socket's path, the
    /// rest of the path will be padded with 0 bytes, and the entire
    /// zero-padded buffer will be considered the name. (As above, if
    /// `path_len` is -1, then `path` is assumed to be NUL-terminated.) In
    /// this case, `g_socket_address_get_native_size()` will always return
    /// the full size of a `struct sockaddr_un`, although
    /// `g_unix_socket_address_get_path_len()` will still return just the
    /// length of `path`.
    /// 
    /// `G_UNIX_SOCKET_ADDRESS_ABSTRACT` is preferred over
    /// `G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED` for new programs. Of course,
    /// when connecting to a server created by another process, you must
    /// use the appropriate type corresponding to how that process created
    /// its listening socket.
    public convenience init(type path: UnsafePointer<gchar>, pathLen path_len: CInt, type: UnixSocketAddressType) {
        let rv = g_unix_socket_address_new_with_type(cast(path), gint(path_len), type)
        self.init(cast(rv))
    }

    /// Creates a new `G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED`
    /// `GUnixSocketAddress` for `path`.
    ///
    /// **new_abstract is deprecated:**
    /// Use g_unix_socket_address_new_with_type().
    @available(*, deprecated) public static func new(abstract path: UnsafePointer<gchar>, pathLen path_len: CInt) -> UnixSocketAddress! {
        let rv = g_unix_socket_address_new_abstract(cast(path), gint(path_len))
        return rv.map { UnixSocketAddress(cast($0)) }
    }

    /// Creates a new `GUnixSocketAddress` of type `type` with name `path`.
    /// 
    /// If `type` is `G_UNIX_SOCKET_ADDRESS_PATH`, this is equivalent to
    /// calling `g_unix_socket_address_new()`.
    /// 
    /// If `type` is `G_UNIX_SOCKET_ADDRESS_ANONYMOUS`, `path` and `path_len` will be
    /// ignored.
    /// 
    /// If `path_type` is `G_UNIX_SOCKET_ADDRESS_ABSTRACT`, then `path_len`
    /// bytes of `path` will be copied to the socket's path, and only those
    /// bytes will be considered part of the name. (If `path_len` is -1,
    /// then `path` is assumed to be NUL-terminated.) For example, if `path`
    /// was "test", then calling `g_socket_address_get_native_size()` on the
    /// returned socket would return 7 (2 bytes of overhead, 1 byte for the
    /// abstract-socket indicator byte, and 4 bytes for the name "test").
    /// 
    /// If `path_type` is `G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED`, then
    /// `path_len` bytes of `path` will be copied to the socket's path, the
    /// rest of the path will be padded with 0 bytes, and the entire
    /// zero-padded buffer will be considered the name. (As above, if
    /// `path_len` is -1, then `path` is assumed to be NUL-terminated.) In
    /// this case, `g_socket_address_get_native_size()` will always return
    /// the full size of a `struct sockaddr_un`, although
    /// `g_unix_socket_address_get_path_len()` will still return just the
    /// length of `path`.
    /// 
    /// `G_UNIX_SOCKET_ADDRESS_ABSTRACT` is preferred over
    /// `G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED` for new programs. Of course,
    /// when connecting to a server created by another process, you must
    /// use the appropriate type corresponding to how that process created
    /// its listening socket.
    public static func newWith(type path: UnsafePointer<gchar>, pathLen path_len: CInt, type: UnixSocketAddressType) -> UnixSocketAddress! {
        let rv = g_unix_socket_address_new_with_type(cast(path), gint(path_len), type)
        return rv.map { UnixSocketAddress(cast($0)) }
    }

}

public enum UnixSocketAddressPropertyName: String, PropertyNameProtocol {
    /// Whether or not this is an abstract address
    ///
    /// **abstract is deprecated:**
    /// Use #GUnixSocketAddress:address-type, which
    /// distinguishes between zero-padded and non-zero-padded
    /// abstract addresses.
    case abstract = "abstract"
    case addressType = "address-type"
    case family = "family"
    case path = "path"
    case pathAsArray = "path-as-array"
}

public extension UnixSocketAddressProtocol {
    /// Bind a `UnixSocketAddressPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: UnixSocketAddressPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(unix_socket_address_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum UnixSocketAddressSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// Whether or not this is an abstract address
    ///
    /// **abstract is deprecated:**
    /// Use #GUnixSocketAddress:address-type, which
    /// distinguishes between zero-padded and non-zero-padded
    /// abstract addresses.
    case notifyAbstract = "notify::abstract"
    case notifyAddressType = "notify::address-type"
    case notifyFamily = "notify::family"
    case notifyPath = "notify::path"
    case notifyPathAsArray = "notify::path-as-array"
}

public extension UnixSocketAddressProtocol {
    /// Connect a `UnixSocketAddressSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: UnixSocketAddressSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(unix_socket_address_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension UnixSocketAddressProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixSocketAddress` instance.
    var unix_socket_address_ptr: UnsafeMutablePointer<GUnixSocketAddress> { return ptr.assumingMemoryBound(to: GUnixSocketAddress.self) }

    /// Gets `address`'s type.
    func getAddressType() -> GUnixSocketAddressType {
        let rv = g_unix_socket_address_get_address_type(cast(unix_socket_address_ptr))
        return rv
    }

    /// Tests if `address` is abstract.
    ///
    /// **get_is_abstract is deprecated:**
    /// Use g_unix_socket_address_get_address_type()
    @available(*, deprecated) func getIsAbstract() -> Bool {
        let rv = g_unix_socket_address_get_is_abstract(cast(unix_socket_address_ptr))
        return Bool(rv != 0)
    }

    /// Gets `address`'s path, or for abstract sockets the "name".
    /// 
    /// Guaranteed to be zero-terminated, but an abstract socket
    /// may contain embedded zeros, and thus you should use
    /// `g_unix_socket_address_get_path_len()` to get the true length
    /// of this string.
    func getPath() -> String! {
        let rv = g_unix_socket_address_get_path(cast(unix_socket_address_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the length of `address`'s path.
    /// 
    /// For details, see `g_unix_socket_address_get_path()`.
    func getPathLen() -> Int {
        let rv = g_unix_socket_address_get_path_len(cast(unix_socket_address_ptr))
        return Int(rv)
    }
    /// Gets `address`'s type.
    var addressType: GUnixSocketAddressType {
        /// Gets `address`'s type.
        get {
            let rv = g_unix_socket_address_get_address_type(cast(unix_socket_address_ptr))
            return rv
        }
    }

    /// Tests if `address` is abstract.
    ///
    /// **get_is_abstract is deprecated:**
    /// Use g_unix_socket_address_get_address_type()
    var isAbstract: Bool {
        /// Tests if `address` is abstract.
        ///
        /// **get_is_abstract is deprecated:**
        /// Use g_unix_socket_address_get_address_type()
        @available(*, deprecated) get {
            let rv = g_unix_socket_address_get_is_abstract(cast(unix_socket_address_ptr))
            return Bool(rv != 0)
        }
    }

    var path: String! {
        /// Gets `address`'s path, or for abstract sockets the "name".
        /// 
        /// Guaranteed to be zero-terminated, but an abstract socket
        /// may contain embedded zeros, and thus you should use
        /// `g_unix_socket_address_get_path_len()` to get the true length
        /// of this string.
        get {
            let rv = g_unix_socket_address_get_path(cast(unix_socket_address_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the length of `address`'s path.
    /// 
    /// For details, see `g_unix_socket_address_get_path()`.
    var pathLen: Int {
        /// Gets the length of `address`'s path.
        /// 
        /// For details, see `g_unix_socket_address_get_path()`.
        get {
            let rv = g_unix_socket_address_get_path_len(cast(unix_socket_address_ptr))
            return Int(rv)
        }
    }
}



// MARK: - Vfs Class

/// The `VfsProtocol` protocol exposes the methods and properties of an underlying `GVfs` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Vfs`.
/// Alternatively, use `VfsRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Entry point for using GIO functionality.
public protocol VfsProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `GVfs` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GVfs` instance.
    var vfs_ptr: UnsafeMutablePointer<GVfs> { get }
}

/// The `VfsRef` type acts as a lightweight Swift reference to an underlying `GVfs` instance.
/// It exposes methods that can operate on this data type through `VfsProtocol` conformance.
/// Use `VfsRef` only as an `unowned` reference to an existing `GVfs` instance.
///
/// Entry point for using GIO functionality.
public struct VfsRef: VfsProtocol {
    /// Untyped pointer to the underlying `GVfs` instance.
    /// For type-safe access, use the generated, typed pointer `vfs_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension VfsRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GVfs>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `VfsProtocol`
    init<T: VfsProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Gets the default `GVfs` for the system.
    static func getDefault() -> VfsRef! {
        let rv = g_vfs_get_default()
        return rv.map { VfsRef(cast($0)) }
    }

    /// Gets the local `GVfs` for the system.
    static func getLocal() -> VfsRef! {
        let rv = g_vfs_get_local()
        return rv.map { VfsRef(cast($0)) }
    }
}

/// The `Vfs` type acts as a reference-counted owner of an underlying `GVfs` instance.
/// It provides the methods that can operate on this data type through `VfsProtocol` conformance.
/// Use `Vfs` as a strong reference or owner of a `GVfs` instance.
///
/// Entry point for using GIO functionality.
open class Vfs: Object, VfsProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Vfs` instance.
    public init(_ op: UnsafeMutablePointer<GVfs>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `VfsProtocol`
    /// Will retain `GVfs`.
    public convenience init<T: VfsProtocol>(_ other: T) {
        self.init(cast(other.vfs_ptr))
        g_object_ref(cast(vfs_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GVfs.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GVfs.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GVfs.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GVfs>(opaquePointer))
    }


    /// Gets the default `GVfs` for the system.
    public static func getDefault() -> Vfs! {
        let rv = g_vfs_get_default()
        return rv.map { Vfs(cast($0)) }
    }

    /// Gets the local `GVfs` for the system.
    public static func getLocal() -> Vfs! {
        let rv = g_vfs_get_local()
        return rv.map { Vfs(cast($0)) }
    }

}

// MARK: - no Vfs properties

public enum VfsSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"

}

public extension VfsProtocol {
    /// Connect a `VfsSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: VfsSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(vfs_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension VfsProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GVfs` instance.
    var vfs_ptr: UnsafeMutablePointer<GVfs> { return ptr.assumingMemoryBound(to: GVfs.self) }

    /// Gets a `GFile` for `path`.
    func getFileFor(path: UnsafePointer<CChar>) -> UnsafeMutablePointer<GFile>! {
        let rv = g_vfs_get_file_for_path(cast(vfs_ptr), path)
        return cast(rv)
    }

    /// Gets a `GFile` for `uri`.
    /// 
    /// This operation never fails, but the returned object
    /// might not support any I/O operation if the URI
    /// is malformed or if the URI scheme is not supported.
    func getFileFor(uri: UnsafePointer<CChar>) -> UnsafeMutablePointer<GFile>! {
        let rv = g_vfs_get_file_for_uri(cast(vfs_ptr), uri)
        return cast(rv)
    }

    /// Gets a list of URI schemes supported by `vfs`.
    func getSupportedURISchemes() -> UnsafePointer<UnsafePointer<gchar>>! {
        let rv = g_vfs_get_supported_uri_schemes(cast(vfs_ptr))
        return cast(rv)
    }

    /// This operation never fails, but the returned object might
    /// not support any I/O operations if the `parse_name` cannot
    /// be parsed by the `GVfs` module.
    func parseName(parseName parse_name: UnsafePointer<CChar>) -> UnsafeMutablePointer<GFile>! {
        let rv = g_vfs_parse_name(cast(vfs_ptr), parse_name)
        return cast(rv)
    }

    /// Registers `uri_func` and `parse_name_func` as the `GFile` URI and parse name
    /// lookup functions for URIs with a scheme matching `scheme`.
    /// Note that `scheme` is registered only within the running application, as
    /// opposed to desktop-wide as it happens with GVfs backends.
    /// 
    /// When a `GFile` is requested with an URI containing `scheme` (e.g. through
    /// `g_file_new_for_uri()`), `uri_func` will be called to allow a custom
    /// constructor. The implementation of `uri_func` should not be blocking, and
    /// must not call `g_vfs_register_uri_scheme()` or `g_vfs_unregister_uri_scheme()`.
    /// 
    /// When `g_file_parse_name()` is called with a parse name obtained from such file,
    /// `parse_name_func` will be called to allow the `GFile` to be created again. In
    /// that case, it's responsibility of `parse_name_func` to make sure the parse
    /// name matches what the custom `GFile` implementation returned when
    /// `g_file_get_parse_name()` was previously called. The implementation of
    /// `parse_name_func` should not be blocking, and must not call
    /// `g_vfs_register_uri_scheme()` or `g_vfs_unregister_uri_scheme()`.
    /// 
    /// It's an error to call this function twice with the same scheme. To unregister
    /// a custom URI scheme, use `g_vfs_unregister_uri_scheme()`.
    func registerURI(scheme: UnsafePointer<CChar>, uriFunc uri_func: @escaping VfsFileLookupFunc, uriData uri_data: UnsafeMutableRawPointer, uriDestroy uri_destroy: @escaping GLib.DestroyNotify, parseNameFunc parse_name_func: @escaping VfsFileLookupFunc, parseNameData parse_name_data: UnsafeMutableRawPointer, parseNameDestroy parse_name_destroy: @escaping GLib.DestroyNotify) -> Bool {
        let rv = g_vfs_register_uri_scheme(cast(vfs_ptr), scheme, uri_func, cast(uri_data), uri_destroy, parse_name_func, cast(parse_name_data), parse_name_destroy)
        return Bool(rv != 0)
    }

    /// Unregisters the URI handler for `scheme` previously registered with
    /// `g_vfs_register_uri_scheme()`.
    func unregisterURI(scheme: UnsafePointer<CChar>) -> Bool {
        let rv = g_vfs_unregister_uri_scheme(cast(vfs_ptr), scheme)
        return Bool(rv != 0)
    }
    /// Checks if the VFS is active.
    var isActive: Bool {
        /// Checks if the VFS is active.
        get {
            let rv = g_vfs_is_active(cast(vfs_ptr))
            return Bool(rv != 0)
        }
    }

    /// Gets a list of URI schemes supported by `vfs`.
    var supportedURISchemes: UnsafePointer<UnsafePointer<gchar>>! {
        /// Gets a list of URI schemes supported by `vfs`.
        get {
            let rv = g_vfs_get_supported_uri_schemes(cast(vfs_ptr))
            return cast(rv)
        }
    }
}



