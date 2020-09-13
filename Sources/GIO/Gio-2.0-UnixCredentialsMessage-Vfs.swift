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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixCredentialsMessage` instance.
    var unix_credentials_message_ptr: UnsafeMutablePointer<GUnixCredentialsMessage>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixCredentialsMessageRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixCredentialsMessage>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixCredentialsMessage>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixCredentialsMessage>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixCredentialsMessage>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `UnixCredentialsMessageProtocol`
    @inlinable init<T: UnixCredentialsMessageProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GUnixCredentialsMessage` with credentials matching the current processes.
    @inlinable init() {
        let rv = g_unix_credentials_message_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GUnixCredentialsMessage` holding `credentials`.
    @inlinable init<CredentialsT: CredentialsProtocol>(credentials: CredentialsT) {
        let rv = g_unix_credentials_message_new_with_credentials(credentials.credentials_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GUnixCredentialsMessage` holding `credentials`.
    @inlinable static func newWith<CredentialsT: CredentialsProtocol>(credentials: CredentialsT) -> SocketControlMessageRef! {
        guard let rv = SocketControlMessageRef(gconstpointer: gconstpointer(g_unix_credentials_message_new_with_credentials(credentials.credentials_ptr))) else { return nil }
        return rv
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
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixCredentialsMessage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GUnixCredentialsMessage>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixCredentialsMessage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GUnixCredentialsMessage>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixCredentialsMessage` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixCredentialsMessage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixCredentialsMessage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GUnixCredentialsMessage>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixCredentialsMessage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GUnixCredentialsMessage>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GUnixCredentialsMessage`.
    /// i.e., ownership is transferred to the `UnixCredentialsMessage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GUnixCredentialsMessage>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `UnixCredentialsMessageProtocol`
    /// Will retain `GUnixCredentialsMessage`.
    /// - Parameter other: an instance of a related type that implements `UnixCredentialsMessageProtocol`
    @inlinable public init<T: UnixCredentialsMessageProtocol>(unixCredentialsMessage other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GUnixCredentialsMessage` with credentials matching the current processes.
    @inlinable public init() {
        let rv = g_unix_credentials_message_new()
        super.init(gpointer: (rv))
    }

    /// Creates a new `GUnixCredentialsMessage` holding `credentials`.
    @inlinable public init<CredentialsT: CredentialsProtocol>(credentials: CredentialsT) {
        let rv = g_unix_credentials_message_new_with_credentials(credentials.credentials_ptr)
        super.init(gpointer: (rv))
    }

    /// Creates a new `GUnixCredentialsMessage` holding `credentials`.
    @inlinable public static func newWith<CredentialsT: CredentialsProtocol>(credentials: CredentialsT) -> SocketControlMessage! {
        guard let rv = SocketControlMessage(gconstpointer: gconstpointer(g_unix_credentials_message_new_with_credentials(credentials.credentials_ptr))) else { return nil }
        return rv
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: UnixCredentialsMessagePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a UnixCredentialsMessage property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: UnixCredentialsMessagePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a UnixCredentialsMessage property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: UnixCredentialsMessagePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
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
    @inlinable @discardableResult func connect(signal kind: UnixCredentialsMessageSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: UnixCredentialsMessage Class: UnixCredentialsMessageProtocol extension (methods and fields)
public extension UnixCredentialsMessageProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixCredentialsMessage` instance.
    @inlinable var unix_credentials_message_ptr: UnsafeMutablePointer<GUnixCredentialsMessage>! { return ptr?.assumingMemoryBound(to: GUnixCredentialsMessage.self) }

    /// Gets the credentials stored in `message`.
    @inlinable func getCredentials() -> CredentialsRef! {
        let rv = CredentialsRef(gconstpointer: gconstpointer(g_unix_credentials_message_get_credentials(unix_credentials_message_ptr)))
        return rv
    }
    /// The credentials stored in the message.
    @inlinable var credentials: CredentialsRef! {
        /// Gets the credentials stored in `message`.
        get {
            let rv = CredentialsRef(gconstpointer: gconstpointer(g_unix_credentials_message_get_credentials(unix_credentials_message_ptr)))
            return rv
        }
    }

    @inlinable var parentInstance: GSocketControlMessage {
        get {
            let rv = unix_credentials_message_ptr.pointee.parent_instance
            return rv
        }
    }

    @inlinable var priv: UnixCredentialsMessagePrivateRef! {
        get {
            let rv = UnixCredentialsMessagePrivateRef(gconstpointer: gconstpointer(unix_credentials_message_ptr.pointee.priv))
            return rv
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
public protocol UnixFDListProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GUnixFDList` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixFDList` instance.
    var unix_fd_list_ptr: UnsafeMutablePointer<GUnixFDList>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixFDListRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixFDList>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixFDList>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixFDList>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixFDList>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `UnixFDListProtocol`
    @inlinable init<T: UnixFDListProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GUnixFDList` containing no file descriptors.
    @inlinable init() {
        let rv = g_unix_fd_list_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GUnixFDList` containing the file descriptors given in
    /// `fds`.  The file descriptors become the property of the new list and
    /// may no longer be used by the caller.  The array itself is owned by
    /// the caller.
    /// 
    /// Each file descriptor in the array should be set to close-on-exec.
    /// 
    /// If `n_fds` is -1 then `fds` must be terminated with -1.
    @inlinable init(array fds: UnsafePointer<gint>!, nFds: Int) {
        let rv = g_unix_fd_list_new_from_array(fds, gint(nFds))
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GUnixFDList` containing the file descriptors given in
    /// `fds`.  The file descriptors become the property of the new list and
    /// may no longer be used by the caller.  The array itself is owned by
    /// the caller.
    /// 
    /// Each file descriptor in the array should be set to close-on-exec.
    /// 
    /// If `n_fds` is -1 then `fds` must be terminated with -1.
    @inlinable static func newFrom(array fds: UnsafePointer<gint>!, nFds: Int) -> UnixFDListRef! {
        guard let rv = UnixFDListRef(gconstpointer: gconstpointer(g_unix_fd_list_new_from_array(fds, gint(nFds)))) else { return nil }
        return rv
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
open class UnixFDList: GLibObject.Object, UnixFDListProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GUnixFDList>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GUnixFDList>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDList` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GUnixFDList>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GUnixFDList>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GUnixFDList`.
    /// i.e., ownership is transferred to the `UnixFDList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GUnixFDList>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `UnixFDListProtocol`
    /// Will retain `GUnixFDList`.
    /// - Parameter other: an instance of a related type that implements `UnixFDListProtocol`
    @inlinable public init<T: UnixFDListProtocol>(unixFDList other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GUnixFDList` containing no file descriptors.
    @inlinable public init() {
        let rv = g_unix_fd_list_new()
        super.init(gpointer: (rv))
    }

    /// Creates a new `GUnixFDList` containing the file descriptors given in
    /// `fds`.  The file descriptors become the property of the new list and
    /// may no longer be used by the caller.  The array itself is owned by
    /// the caller.
    /// 
    /// Each file descriptor in the array should be set to close-on-exec.
    /// 
    /// If `n_fds` is -1 then `fds` must be terminated with -1.
    @inlinable public init(array fds: UnsafePointer<gint>!, nFds: Int) {
        let rv = g_unix_fd_list_new_from_array(fds, gint(nFds))
        super.init(gpointer: (rv))
    }

    /// Creates a new `GUnixFDList` containing the file descriptors given in
    /// `fds`.  The file descriptors become the property of the new list and
    /// may no longer be used by the caller.  The array itself is owned by
    /// the caller.
    /// 
    /// Each file descriptor in the array should be set to close-on-exec.
    /// 
    /// If `n_fds` is -1 then `fds` must be terminated with -1.
    @inlinable public static func newFrom(array fds: UnsafePointer<gint>!, nFds: Int) -> UnixFDList! {
        guard let rv = UnixFDList(gconstpointer: gconstpointer(g_unix_fd_list_new_from_array(fds, gint(nFds)))) else { return nil }
        return rv
    }

}

// MARK: no UnixFDList properties

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
    @inlinable @discardableResult func connect(signal kind: UnixFDListSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: UnixFDList Class: UnixFDListProtocol extension (methods and fields)
public extension UnixFDListProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixFDList` instance.
    @inlinable var unix_fd_list_ptr: UnsafeMutablePointer<GUnixFDList>! { return ptr?.assumingMemoryBound(to: GUnixFDList.self) }

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
    @inlinable func append(fd: Int) throws -> Int {
        var error: UnsafeMutablePointer<GError>?
        let rv = Int(g_unix_fd_list_append(unix_fd_list_ptr, gint(fd), &error))
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func get(index_: Int) throws -> Int {
        var error: UnsafeMutablePointer<GError>?
        let rv = Int(g_unix_fd_list_get(unix_fd_list_ptr, gint(index_), &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Gets the length of `list` (ie: the number of file descriptors
    /// contained within).
    @inlinable func getLength() -> Int {
        let rv = Int(g_unix_fd_list_get_length(unix_fd_list_ptr))
        return rv
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
    @inlinable func peekFds(length: UnsafeMutablePointer<gint>! = nil) -> UnsafePointer<gint>! {
        let rv = g_unix_fd_list_peek_fds(unix_fd_list_ptr, length)
        return rv
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
    @inlinable func stealFds(length: UnsafeMutablePointer<gint>! = nil) -> UnsafeMutablePointer<gint>! {
        let rv = g_unix_fd_list_steal_fds(unix_fd_list_ptr, length)
        return rv
    }
    /// Gets the length of `list` (ie: the number of file descriptors
    /// contained within).
    @inlinable var length: Int {
        /// Gets the length of `list` (ie: the number of file descriptors
        /// contained within).
        get {
            let rv = Int(g_unix_fd_list_get_length(unix_fd_list_ptr))
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = unix_fd_list_ptr.pointee.parent_instance
            return rv
        }
    }

    @inlinable var priv: UnixFDListPrivateRef! {
        get {
            let rv = UnixFDListPrivateRef(gconstpointer: gconstpointer(unix_fd_list_ptr.pointee.priv))
            return rv
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixFDMessage` instance.
    var unix_fd_message_ptr: UnsafeMutablePointer<GUnixFDMessage>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixFDMessageRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixFDMessage>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixFDMessage>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixFDMessage>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixFDMessage>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `UnixFDMessageProtocol`
    @inlinable init<T: UnixFDMessageProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GUnixFDMessage` containing an empty file descriptor
    /// list.
    @inlinable init() {
        let rv = g_unix_fd_message_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GUnixFDMessage` containing `list`.
    @inlinable init<UnixFDListT: UnixFDListProtocol>(fdList fdList: UnixFDListT) {
        let rv = g_unix_fd_message_new_with_fd_list(fdList.unix_fd_list_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GUnixFDMessage` containing `list`.
    @inlinable static func newWith<UnixFDListT: UnixFDListProtocol>(fdList fdList: UnixFDListT) -> SocketControlMessageRef! {
        guard let rv = SocketControlMessageRef(gconstpointer: gconstpointer(g_unix_fd_message_new_with_fd_list(fdList.unix_fd_list_ptr))) else { return nil }
        return rv
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
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDMessage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GUnixFDMessage>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDMessage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GUnixFDMessage>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDMessage` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDMessage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDMessage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GUnixFDMessage>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDMessage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GUnixFDMessage>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GUnixFDMessage`.
    /// i.e., ownership is transferred to the `UnixFDMessage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GUnixFDMessage>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `UnixFDMessageProtocol`
    /// Will retain `GUnixFDMessage`.
    /// - Parameter other: an instance of a related type that implements `UnixFDMessageProtocol`
    @inlinable public init<T: UnixFDMessageProtocol>(unixFDMessage other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GUnixFDMessage` containing an empty file descriptor
    /// list.
    @inlinable public init() {
        let rv = g_unix_fd_message_new()
        super.init(gpointer: (rv))
    }

    /// Creates a new `GUnixFDMessage` containing `list`.
    @inlinable public init<UnixFDListT: UnixFDListProtocol>(fdList fdList: UnixFDListT) {
        let rv = g_unix_fd_message_new_with_fd_list(fdList.unix_fd_list_ptr)
        super.init(gpointer: (rv))
    }

    /// Creates a new `GUnixFDMessage` containing `list`.
    @inlinable public static func newWith<UnixFDListT: UnixFDListProtocol>(fdList fdList: UnixFDListT) -> SocketControlMessage! {
        guard let rv = SocketControlMessage(gconstpointer: gconstpointer(g_unix_fd_message_new_with_fd_list(fdList.unix_fd_list_ptr))) else { return nil }
        return rv
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: UnixFDMessagePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a UnixFDMessage property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: UnixFDMessagePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a UnixFDMessage property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: UnixFDMessagePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
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
    @inlinable @discardableResult func connect(signal kind: UnixFDMessageSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: UnixFDMessage Class: UnixFDMessageProtocol extension (methods and fields)
public extension UnixFDMessageProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixFDMessage` instance.
    @inlinable var unix_fd_message_ptr: UnsafeMutablePointer<GUnixFDMessage>! { return ptr?.assumingMemoryBound(to: GUnixFDMessage.self) }

    /// Adds a file descriptor to `message`.
    /// 
    /// The file descriptor is duplicated using `dup()`. You keep your copy
    /// of the descriptor and the copy contained in `message` will be closed
    /// when `message` is finalized.
    /// 
    /// A possible cause of failure is exceeding the per-process or
    /// system-wide file descriptor limit.
    @inlinable func append(fd: Int) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_unix_fd_message_append_fd(unix_fd_message_ptr, gint(fd), &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Gets the `GUnixFDList` contained in `message`.  This function does not
    /// return a reference to the caller, but the returned list is valid for
    /// the lifetime of `message`.
    @inlinable func getFdList() -> UnixFDListRef! {
        let rv = UnixFDListRef(gconstpointer: gconstpointer(g_unix_fd_message_get_fd_list(unix_fd_message_ptr)))
        return rv
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
    @inlinable func stealFds(length: UnsafeMutablePointer<gint>! = nil) -> UnsafeMutablePointer<gint>! {
        let rv = g_unix_fd_message_steal_fds(unix_fd_message_ptr, length)
        return rv
    }
    /// Gets the `GUnixFDList` contained in `message`.  This function does not
    /// return a reference to the caller, but the returned list is valid for
    /// the lifetime of `message`.
    @inlinable var fdList: UnixFDListRef! {
        /// Gets the `GUnixFDList` contained in `message`.  This function does not
        /// return a reference to the caller, but the returned list is valid for
        /// the lifetime of `message`.
        get {
            let rv = UnixFDListRef(gconstpointer: gconstpointer(g_unix_fd_message_get_fd_list(unix_fd_message_ptr)))
            return rv
        }
    }

    @inlinable var parentInstance: GSocketControlMessage {
        get {
            let rv = unix_fd_message_ptr.pointee.parent_instance
            return rv
        }
    }

    @inlinable var priv: UnixFDMessagePrivateRef! {
        get {
            let rv = UnixFDMessagePrivateRef(gconstpointer: gconstpointer(unix_fd_message_ptr.pointee.priv))
            return rv
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixInputStream` instance.
    var unix_input_stream_ptr: UnsafeMutablePointer<GUnixInputStream>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixInputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixInputStream>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixInputStream>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixInputStream>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixInputStream>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `UnixInputStreamProtocol`
    @inlinable init<T: UnixInputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GUnixInputStream` for the given `fd`.
    /// 
    /// If `close_fd` is `true`, the file descriptor will be closed
    /// when the stream is closed.
    @inlinable init( fd: Int, closeFd: Bool) {
        let rv = g_unix_input_stream_new(gint(fd), gboolean((closeFd) ? 1 : 0))
        ptr = UnsafeMutableRawPointer(rv)
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
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GUnixInputStream>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GUnixInputStream>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixInputStream` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GUnixInputStream>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GUnixInputStream>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GUnixInputStream`.
    /// i.e., ownership is transferred to the `UnixInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GUnixInputStream>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `UnixInputStreamProtocol`
    /// Will retain `GUnixInputStream`.
    /// - Parameter other: an instance of a related type that implements `UnixInputStreamProtocol`
    @inlinable public init<T: UnixInputStreamProtocol>(unixInputStream other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GUnixInputStream` for the given `fd`.
    /// 
    /// If `close_fd` is `true`, the file descriptor will be closed
    /// when the stream is closed.
    @inlinable public init( fd: Int, closeFd: Bool) {
        let rv = g_unix_input_stream_new(gint(fd), gboolean((closeFd) ? 1 : 0))
        super.init(gpointer: (rv))
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: UnixInputStreamPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a UnixInputStream property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: UnixInputStreamPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a UnixInputStream property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: UnixInputStreamPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
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
    @inlinable @discardableResult func connect(signal kind: UnixInputStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: UnixInputStream Class: UnixInputStreamProtocol extension (methods and fields)
public extension UnixInputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixInputStream` instance.
    @inlinable var unix_input_stream_ptr: UnsafeMutablePointer<GUnixInputStream>! { return ptr?.assumingMemoryBound(to: GUnixInputStream.self) }

    /// Returns whether the file descriptor of `stream` will be
    /// closed when the stream is closed.
    @inlinable func getCloseFd() -> Bool {
        let rv = ((g_unix_input_stream_get_close_fd(unix_input_stream_ptr)) != 0)
        return rv
    }

    /// Return the UNIX file descriptor that the stream reads from.
    @inlinable func getFd() -> Int {
        let rv = Int(g_unix_input_stream_get_fd(unix_input_stream_ptr))
        return rv
    }

    /// Sets whether the file descriptor of `stream` shall be closed
    /// when the stream is closed.
    @inlinable func set(closeFd: Bool) {
        g_unix_input_stream_set_close_fd(unix_input_stream_ptr, gboolean((closeFd) ? 1 : 0))
    
    }
    /// Returns whether the file descriptor of `stream` will be
    /// closed when the stream is closed.
    @inlinable var closeFd: Bool {
        /// Returns whether the file descriptor of `stream` will be
        /// closed when the stream is closed.
        get {
            let rv = ((g_unix_input_stream_get_close_fd(unix_input_stream_ptr)) != 0)
            return rv
        }
        /// Sets whether the file descriptor of `stream` shall be closed
        /// when the stream is closed.
        nonmutating set {
            g_unix_input_stream_set_close_fd(unix_input_stream_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// The file descriptor that the stream reads from.
    @inlinable var fd: Int {
        /// Return the UNIX file descriptor that the stream reads from.
        get {
            let rv = Int(g_unix_input_stream_get_fd(unix_input_stream_ptr))
            return rv
        }
    }

    @inlinable var parentInstance: GInputStream {
        get {
            let rv = unix_input_stream_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - UnixMountMonitor Class

/// The `UnixMountMonitorProtocol` protocol exposes the methods and properties of an underlying `GUnixMountMonitor` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixMountMonitor`.
/// Alternatively, use `UnixMountMonitorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Watches `GUnixMounts` for changes.
public protocol UnixMountMonitorProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GUnixMountMonitor` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixMountMonitor` instance.
    var unix_mount_monitor_ptr: UnsafeMutablePointer<GUnixMountMonitor>! { get }

}

/// The `UnixMountMonitorRef` type acts as a lightweight Swift reference to an underlying `GUnixMountMonitor` instance.
/// It exposes methods that can operate on this data type through `UnixMountMonitorProtocol` conformance.
/// Use `UnixMountMonitorRef` only as an `unowned` reference to an existing `GUnixMountMonitor` instance.
///
/// Watches `GUnixMounts` for changes.
public struct UnixMountMonitorRef: UnixMountMonitorProtocol {
        /// Untyped pointer to the underlying `GUnixMountMonitor` instance.
    /// For type-safe access, use the generated, typed pointer `unix_mount_monitor_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixMountMonitorRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixMountMonitor>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixMountMonitor>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixMountMonitor>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixMountMonitor>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `UnixMountMonitorProtocol`
    @inlinable init<T: UnixMountMonitorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Deprecated alias for `g_unix_mount_monitor_get()`.
    /// 
    /// This function was never a true constructor, which is why it was
    /// renamed.
    ///
    /// **new is deprecated:**
    /// Use g_unix_mount_monitor_get() instead.
    @available(*, deprecated) @inlinable init() {
        let rv = g_unix_mount_monitor_new()
        ptr = UnsafeMutableRawPointer(rv)
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
    @inlinable static func unixMountMonitorGet() -> UnixMountMonitorRef! {
        guard let rv = UnixMountMonitorRef(gconstpointer: gconstpointer(g_unix_mount_monitor_get())) else { return nil }
        return rv
    }
}

/// The `UnixMountMonitor` type acts as a reference-counted owner of an underlying `GUnixMountMonitor` instance.
/// It provides the methods that can operate on this data type through `UnixMountMonitorProtocol` conformance.
/// Use `UnixMountMonitor` as a strong reference or owner of a `GUnixMountMonitor` instance.
///
/// Watches `GUnixMounts` for changes.
open class UnixMountMonitor: GLibObject.Object, UnixMountMonitorProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GUnixMountMonitor>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GUnixMountMonitor>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountMonitor` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GUnixMountMonitor>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GUnixMountMonitor>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GUnixMountMonitor`.
    /// i.e., ownership is transferred to the `UnixMountMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GUnixMountMonitor>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `UnixMountMonitorProtocol`
    /// Will retain `GUnixMountMonitor`.
    /// - Parameter other: an instance of a related type that implements `UnixMountMonitorProtocol`
    @inlinable public init<T: UnixMountMonitorProtocol>(unixMountMonitor other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Deprecated alias for `g_unix_mount_monitor_get()`.
    /// 
    /// This function was never a true constructor, which is why it was
    /// renamed.
    ///
    /// **new is deprecated:**
    /// Use g_unix_mount_monitor_get() instead.
    @available(*, deprecated) @inlinable public init() {
        let rv = g_unix_mount_monitor_new()
        super.init(gpointer: (rv))
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
    @inlinable public static func unixMountMonitorGet() -> UnixMountMonitor! {
        guard let rv = UnixMountMonitor(gconstpointer: gconstpointer(g_unix_mount_monitor_get())) else { return nil }
        return rv
    }

}

// MARK: no UnixMountMonitor properties

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
    @inlinable @discardableResult func connect(signal kind: UnixMountMonitorSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: UnixMountMonitor Class: UnixMountMonitorProtocol extension (methods and fields)
public extension UnixMountMonitorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixMountMonitor` instance.
    @inlinable var unix_mount_monitor_ptr: UnsafeMutablePointer<GUnixMountMonitor>! { return ptr?.assumingMemoryBound(to: GUnixMountMonitor.self) }

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
    @available(*, deprecated) @inlinable func setRateLimit(limitMsec: Int) {
        g_unix_mount_monitor_set_rate_limit(unix_mount_monitor_ptr, gint(limitMsec))
    
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixOutputStream` instance.
    var unix_output_stream_ptr: UnsafeMutablePointer<GUnixOutputStream>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixOutputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixOutputStream>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixOutputStream>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixOutputStream>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixOutputStream>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `UnixOutputStreamProtocol`
    @inlinable init<T: UnixOutputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GUnixOutputStream` for the given `fd`.
    /// 
    /// If `close_fd`, is `true`, the file descriptor will be closed when
    /// the output stream is destroyed.
    @inlinable init( fd: Int, closeFd: Bool) {
        let rv = g_unix_output_stream_new(gint(fd), gboolean((closeFd) ? 1 : 0))
        ptr = UnsafeMutableRawPointer(rv)
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
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GUnixOutputStream>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GUnixOutputStream>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixOutputStream` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GUnixOutputStream>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GUnixOutputStream>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GUnixOutputStream`.
    /// i.e., ownership is transferred to the `UnixOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GUnixOutputStream>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `UnixOutputStreamProtocol`
    /// Will retain `GUnixOutputStream`.
    /// - Parameter other: an instance of a related type that implements `UnixOutputStreamProtocol`
    @inlinable public init<T: UnixOutputStreamProtocol>(unixOutputStream other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GUnixOutputStream` for the given `fd`.
    /// 
    /// If `close_fd`, is `true`, the file descriptor will be closed when
    /// the output stream is destroyed.
    @inlinable public init( fd: Int, closeFd: Bool) {
        let rv = g_unix_output_stream_new(gint(fd), gboolean((closeFd) ? 1 : 0))
        super.init(gpointer: (rv))
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: UnixOutputStreamPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a UnixOutputStream property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: UnixOutputStreamPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a UnixOutputStream property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: UnixOutputStreamPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
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
    @inlinable @discardableResult func connect(signal kind: UnixOutputStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: UnixOutputStream Class: UnixOutputStreamProtocol extension (methods and fields)
public extension UnixOutputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixOutputStream` instance.
    @inlinable var unix_output_stream_ptr: UnsafeMutablePointer<GUnixOutputStream>! { return ptr?.assumingMemoryBound(to: GUnixOutputStream.self) }

    /// Returns whether the file descriptor of `stream` will be
    /// closed when the stream is closed.
    @inlinable func getCloseFd() -> Bool {
        let rv = ((g_unix_output_stream_get_close_fd(unix_output_stream_ptr)) != 0)
        return rv
    }

    /// Return the UNIX file descriptor that the stream writes to.
    @inlinable func getFd() -> Int {
        let rv = Int(g_unix_output_stream_get_fd(unix_output_stream_ptr))
        return rv
    }

    /// Sets whether the file descriptor of `stream` shall be closed
    /// when the stream is closed.
    @inlinable func set(closeFd: Bool) {
        g_unix_output_stream_set_close_fd(unix_output_stream_ptr, gboolean((closeFd) ? 1 : 0))
    
    }
    /// Returns whether the file descriptor of `stream` will be
    /// closed when the stream is closed.
    @inlinable var closeFd: Bool {
        /// Returns whether the file descriptor of `stream` will be
        /// closed when the stream is closed.
        get {
            let rv = ((g_unix_output_stream_get_close_fd(unix_output_stream_ptr)) != 0)
            return rv
        }
        /// Sets whether the file descriptor of `stream` shall be closed
        /// when the stream is closed.
        nonmutating set {
            g_unix_output_stream_set_close_fd(unix_output_stream_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// The file descriptor that the stream writes to.
    @inlinable var fd: Int {
        /// Return the UNIX file descriptor that the stream writes to.
        get {
            let rv = Int(g_unix_output_stream_get_fd(unix_output_stream_ptr))
            return rv
        }
    }

    @inlinable var parentInstance: GOutputStream {
        get {
            let rv = unix_output_stream_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixSocketAddress` instance.
    var unix_socket_address_ptr: UnsafeMutablePointer<GUnixSocketAddress>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixSocketAddressRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixSocketAddress>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixSocketAddress>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixSocketAddress>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixSocketAddress>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `UnixSocketAddressProtocol`
    @inlinable init<T: UnixSocketAddressProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GUnixSocketAddress` for `path`.
    /// 
    /// To create abstract socket addresses, on systems that support that,
    /// use `g_unix_socket_address_new_abstract()`.
    @inlinable init( path: UnsafePointer<gchar>!) {
        let rv = g_unix_socket_address_new(path)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED`
    /// `GUnixSocketAddress` for `path`.
    ///
    /// **new_abstract is deprecated:**
    /// Use g_unix_socket_address_new_with_type().
    @available(*, deprecated) @inlinable init(abstract path: UnsafePointer<gchar>!, pathLen: Int) {
        let rv = g_unix_socket_address_new_abstract(path, gint(pathLen))
        ptr = UnsafeMutableRawPointer(rv)
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
    @inlinable init(type path: UnsafePointer<gchar>!, pathLen: Int, type: GUnixSocketAddressType) {
        let rv = g_unix_socket_address_new_with_type(path, gint(pathLen), type)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED`
    /// `GUnixSocketAddress` for `path`.
    ///
    /// **new_abstract is deprecated:**
    /// Use g_unix_socket_address_new_with_type().
    @available(*, deprecated) @inlinable static func new(abstract path: UnsafePointer<gchar>!, pathLen: Int) -> SocketAddressRef! {
        guard let rv = SocketAddressRef(gconstpointer: gconstpointer(g_unix_socket_address_new_abstract(path, gint(pathLen)))) else { return nil }
        return rv
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
    @inlinable static func newWith(type path: UnsafePointer<gchar>!, pathLen: Int, type: GUnixSocketAddressType) -> SocketAddressRef! {
        guard let rv = SocketAddressRef(gconstpointer: gconstpointer(g_unix_socket_address_new_with_type(path, gint(pathLen), type))) else { return nil }
        return rv
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
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixSocketAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GUnixSocketAddress>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixSocketAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GUnixSocketAddress>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixSocketAddress` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixSocketAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixSocketAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GUnixSocketAddress>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixSocketAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GUnixSocketAddress>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GUnixSocketAddress`.
    /// i.e., ownership is transferred to the `UnixSocketAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GUnixSocketAddress>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `UnixSocketAddressProtocol`
    /// Will retain `GUnixSocketAddress`.
    /// - Parameter other: an instance of a related type that implements `UnixSocketAddressProtocol`
    @inlinable public init<T: UnixSocketAddressProtocol>(unixSocketAddress other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GUnixSocketAddress` for `path`.
    /// 
    /// To create abstract socket addresses, on systems that support that,
    /// use `g_unix_socket_address_new_abstract()`.
    @inlinable public init( path: UnsafePointer<gchar>!) {
        let rv = g_unix_socket_address_new(path)
        super.init(gpointer: (rv))
    }

    /// Creates a new `G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED`
    /// `GUnixSocketAddress` for `path`.
    ///
    /// **new_abstract is deprecated:**
    /// Use g_unix_socket_address_new_with_type().
    @available(*, deprecated) @inlinable public init(abstract path: UnsafePointer<gchar>!, pathLen: Int) {
        let rv = g_unix_socket_address_new_abstract(path, gint(pathLen))
        super.init(gpointer: (rv))
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
    @inlinable public init(type path: UnsafePointer<gchar>!, pathLen: Int, type: GUnixSocketAddressType) {
        let rv = g_unix_socket_address_new_with_type(path, gint(pathLen), type)
        super.init(gpointer: (rv))
    }

    /// Creates a new `G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED`
    /// `GUnixSocketAddress` for `path`.
    ///
    /// **new_abstract is deprecated:**
    /// Use g_unix_socket_address_new_with_type().
    @available(*, deprecated) @inlinable public static func new(abstract path: UnsafePointer<gchar>!, pathLen: Int) -> SocketAddress! {
        guard let rv = SocketAddress(gconstpointer: gconstpointer(g_unix_socket_address_new_abstract(path, gint(pathLen)))) else { return nil }
        return rv
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
    @inlinable public static func newWith(type path: UnsafePointer<gchar>!, pathLen: Int, type: GUnixSocketAddressType) -> SocketAddress! {
        guard let rv = SocketAddress(gconstpointer: gconstpointer(g_unix_socket_address_new_with_type(path, gint(pathLen), type))) else { return nil }
        return rv
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: UnixSocketAddressPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a UnixSocketAddress property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: UnixSocketAddressPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a UnixSocketAddress property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: UnixSocketAddressPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
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
    @inlinable @discardableResult func connect(signal kind: UnixSocketAddressSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: UnixSocketAddress Class: UnixSocketAddressProtocol extension (methods and fields)
public extension UnixSocketAddressProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixSocketAddress` instance.
    @inlinable var unix_socket_address_ptr: UnsafeMutablePointer<GUnixSocketAddress>! { return ptr?.assumingMemoryBound(to: GUnixSocketAddress.self) }

    /// Gets `address`'s type.
    @inlinable func getAddressType() -> GUnixSocketAddressType {
        let rv = g_unix_socket_address_get_address_type(unix_socket_address_ptr)
        return rv
    }

    /// Tests if `address` is abstract.
    ///
    /// **get_is_abstract is deprecated:**
    /// Use g_unix_socket_address_get_address_type()
    @available(*, deprecated) @inlinable func getIsAbstract() -> Bool {
        let rv = ((g_unix_socket_address_get_is_abstract(unix_socket_address_ptr)) != 0)
        return rv
    }

    /// Gets `address`'s path, or for abstract sockets the "name".
    /// 
    /// Guaranteed to be zero-terminated, but an abstract socket
    /// may contain embedded zeros, and thus you should use
    /// `g_unix_socket_address_get_path_len()` to get the true length
    /// of this string.
    @inlinable func getPath() -> String! {
        let rv = g_unix_socket_address_get_path(unix_socket_address_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the length of `address`'s path.
    /// 
    /// For details, see `g_unix_socket_address_get_path()`.
    @inlinable func getPathLen() -> Int {
        let rv = Int(g_unix_socket_address_get_path_len(unix_socket_address_ptr))
        return rv
    }
    /// Gets `address`'s type.
    @inlinable var addressType: GUnixSocketAddressType {
        /// Gets `address`'s type.
        get {
            let rv = g_unix_socket_address_get_address_type(unix_socket_address_ptr)
            return rv
        }
    }

    /// Tests if `address` is abstract.
    ///
    /// **get_is_abstract is deprecated:**
    /// Use g_unix_socket_address_get_address_type()
    @inlinable var isAbstract: Bool {
        /// Tests if `address` is abstract.
        ///
        /// **get_is_abstract is deprecated:**
        /// Use g_unix_socket_address_get_address_type()
        @available(*, deprecated) get {
            let rv = ((g_unix_socket_address_get_is_abstract(unix_socket_address_ptr)) != 0)
            return rv
        }
    }

    @inlinable var path: String! {
        /// Gets `address`'s path, or for abstract sockets the "name".
        /// 
        /// Guaranteed to be zero-terminated, but an abstract socket
        /// may contain embedded zeros, and thus you should use
        /// `g_unix_socket_address_get_path_len()` to get the true length
        /// of this string.
        get {
            let rv = g_unix_socket_address_get_path(unix_socket_address_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the length of `address`'s path.
    /// 
    /// For details, see `g_unix_socket_address_get_path()`.
    @inlinable var pathLen: Int {
        /// Gets the length of `address`'s path.
        /// 
        /// For details, see `g_unix_socket_address_get_path()`.
        get {
            let rv = Int(g_unix_socket_address_get_path_len(unix_socket_address_ptr))
            return rv
        }
    }

    @inlinable var parentInstance: GSocketAddress {
        get {
            let rv = unix_socket_address_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - Vfs Class

/// The `VfsProtocol` protocol exposes the methods and properties of an underlying `GVfs` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Vfs`.
/// Alternatively, use `VfsRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Entry point for using GIO functionality.
public protocol VfsProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GVfs` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GVfs` instance.
    var vfs_ptr: UnsafeMutablePointer<GVfs>! { get }

}

/// The `VfsRef` type acts as a lightweight Swift reference to an underlying `GVfs` instance.
/// It exposes methods that can operate on this data type through `VfsProtocol` conformance.
/// Use `VfsRef` only as an `unowned` reference to an existing `GVfs` instance.
///
/// Entry point for using GIO functionality.
public struct VfsRef: VfsProtocol {
        /// Untyped pointer to the underlying `GVfs` instance.
    /// For type-safe access, use the generated, typed pointer `vfs_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension VfsRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GVfs>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GVfs>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GVfs>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GVfs>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `VfsProtocol`
    @inlinable init<T: VfsProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Gets the default `GVfs` for the system.
    @inlinable static func getDefault() -> VfsRef! {
        guard let rv = VfsRef(gconstpointer: gconstpointer(g_vfs_get_default())) else { return nil }
        return rv
    }

    /// Gets the local `GVfs` for the system.
    @inlinable static func getLocal() -> VfsRef! {
        guard let rv = VfsRef(gconstpointer: gconstpointer(g_vfs_get_local())) else { return nil }
        return rv
    }
}

/// The `Vfs` type acts as a reference-counted owner of an underlying `GVfs` instance.
/// It provides the methods that can operate on this data type through `VfsProtocol` conformance.
/// Use `Vfs` as a strong reference or owner of a `GVfs` instance.
///
/// Entry point for using GIO functionality.
open class Vfs: GLibObject.Object, VfsProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Vfs` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GVfs>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Vfs` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GVfs>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Vfs` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Vfs` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Vfs` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GVfs>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Vfs` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GVfs>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GVfs`.
    /// i.e., ownership is transferred to the `Vfs` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GVfs>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `VfsProtocol`
    /// Will retain `GVfs`.
    /// - Parameter other: an instance of a related type that implements `VfsProtocol`
    @inlinable public init<T: VfsProtocol>(vfs other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    /// Gets the default `GVfs` for the system.
    @inlinable public static func getDefault() -> Vfs! {
        guard let rv = Vfs(gconstpointer: gconstpointer(g_vfs_get_default())) else { return nil }
        return rv
    }

    /// Gets the local `GVfs` for the system.
    @inlinable public static func getLocal() -> Vfs! {
        guard let rv = Vfs(gconstpointer: gconstpointer(g_vfs_get_local())) else { return nil }
        return rv
    }

}

// MARK: no Vfs properties

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
    @inlinable @discardableResult func connect(signal kind: VfsSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: Vfs Class: VfsProtocol extension (methods and fields)
public extension VfsProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GVfs` instance.
    @inlinable var vfs_ptr: UnsafeMutablePointer<GVfs>! { return ptr?.assumingMemoryBound(to: GVfs.self) }

    /// Gets a `GFile` for `path`.
    @inlinable func getFileFor(path: UnsafePointer<CChar>!) -> FileRef! {
        let rv = FileRef(gconstpointer: gconstpointer(g_vfs_get_file_for_path(vfs_ptr, path)))
        return rv
    }

    /// Gets a `GFile` for `uri`.
    /// 
    /// This operation never fails, but the returned object
    /// might not support any I/O operation if the URI
    /// is malformed or if the URI scheme is not supported.
    @inlinable func getFileFor(uri: UnsafePointer<CChar>!) -> FileRef! {
        let rv = FileRef(gconstpointer: gconstpointer(g_vfs_get_file_for_uri(vfs_ptr, uri)))
        return rv
    }

    /// Gets a list of URI schemes supported by `vfs`.
    @inlinable func getSupportedURISchemes() -> UnsafePointer<UnsafePointer<gchar>?>! {
        let rv = g_vfs_get_supported_uri_schemes(vfs_ptr)
        return rv
    }

    /// This operation never fails, but the returned object might
    /// not support any I/O operations if the `parse_name` cannot
    /// be parsed by the `GVfs` module.
    @inlinable func parseName(parseName: UnsafePointer<CChar>!) -> FileRef! {
        let rv = FileRef(gconstpointer: gconstpointer(g_vfs_parse_name(vfs_ptr, parseName)))
        return rv
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
    @inlinable func registerURI(scheme: UnsafePointer<CChar>!, uriFunc: GVfsFileLookupFunc? = nil, uriData: gpointer! = nil, uriDestroy: GDestroyNotify? = nil, parseNameFunc: GVfsFileLookupFunc? = nil, parseNameData: gpointer! = nil, parseNameDestroy: GDestroyNotify? = nil) -> Bool {
        let rv = ((g_vfs_register_uri_scheme(vfs_ptr, scheme, uriFunc, uriData, uriDestroy, parseNameFunc, parseNameData, parseNameDestroy)) != 0)
        return rv
    }

    /// Unregisters the URI handler for `scheme` previously registered with
    /// `g_vfs_register_uri_scheme()`.
    @inlinable func unregisterURI(scheme: UnsafePointer<CChar>!) -> Bool {
        let rv = ((g_vfs_unregister_uri_scheme(vfs_ptr, scheme)) != 0)
        return rv
    }
    /// Checks if the VFS is active.
    @inlinable var isActive: Bool {
        /// Checks if the VFS is active.
        get {
            let rv = ((g_vfs_is_active(vfs_ptr)) != 0)
            return rv
        }
    }

    /// Gets a list of URI schemes supported by `vfs`.
    @inlinable var supportedURISchemes: UnsafePointer<UnsafePointer<gchar>?>! {
        /// Gets a list of URI schemes supported by `vfs`.
        get {
            let rv = g_vfs_get_supported_uri_schemes(vfs_ptr)
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = vfs_ptr.pointee.parent_instance
            return rv
        }
    }

}



