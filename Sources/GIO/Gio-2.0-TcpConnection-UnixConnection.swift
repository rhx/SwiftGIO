import CGLib
import GLib
import GLibObject

// MARK: - TcpConnection Class

/// The `TcpConnectionProtocol` protocol exposes the methods and properties of an underlying `GTcpConnection` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TcpConnection`.
/// Alternatively, use `TcpConnectionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// This is the subclass of `GSocketConnection` that is created
/// for TCP/IP sockets.
public protocol TcpConnectionProtocol: SocketConnectionProtocol {
        /// Untyped pointer to the underlying `GTcpConnection` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTcpConnection` instance.
    var tcp_connection_ptr: UnsafeMutablePointer<GTcpConnection>! { get }

    /// Required Initialiser for types conforming to `TcpConnectionProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `TcpConnectionRef` type acts as a lightweight Swift reference to an underlying `GTcpConnection` instance.
/// It exposes methods that can operate on this data type through `TcpConnectionProtocol` conformance.
/// Use `TcpConnectionRef` only as an `unowned` reference to an existing `GTcpConnection` instance.
///
/// This is the subclass of `GSocketConnection` that is created
/// for TCP/IP sockets.
public struct TcpConnectionRef: TcpConnectionProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GTcpConnection` instance.
    /// For type-safe access, use the generated, typed pointer `tcp_connection_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TcpConnectionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTcpConnection>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTcpConnection>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTcpConnection>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTcpConnection>?) {
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

    /// Reference intialiser for a related type that implements `TcpConnectionProtocol`
    @inlinable init<T: TcpConnectionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: TcpConnectionProtocol>(_ other: T) -> TcpConnectionRef { TcpConnectionRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TcpConnection` type acts as a reference-counted owner of an underlying `GTcpConnection` instance.
/// It provides the methods that can operate on this data type through `TcpConnectionProtocol` conformance.
/// Use `TcpConnection` as a strong reference or owner of a `GTcpConnection` instance.
///
/// This is the subclass of `GSocketConnection` that is created
/// for TCP/IP sockets.
open class TcpConnection: SocketConnection, TcpConnectionProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTcpConnection>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTcpConnection>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpConnection` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTcpConnection>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTcpConnection>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GTcpConnection`.
    /// i.e., ownership is transferred to the `TcpConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTcpConnection>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `TcpConnectionProtocol`
    /// Will retain `GTcpConnection`.
    /// - Parameter other: an instance of a related type that implements `TcpConnectionProtocol`
    @inlinable public init<T: TcpConnectionProtocol>(tcpConnection other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum TcpConnectionPropertyName: String, PropertyNameProtocol {
    case closed = "closed"
    case gracefulDisconnect = "graceful-disconnect"
    case inputStream = "input-stream"
    case outputStream = "output-stream"
    case socket = "socket"
}

public extension TcpConnectionProtocol {
    /// Bind a `TcpConnectionPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: TcpConnectionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a TcpConnection property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: TcpConnectionPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a TcpConnection property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: TcpConnectionPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum TcpConnectionSignalName: String, SignalNameProtocol {
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
    case notifyClosed = "notify::closed"
    case notifyGracefulDisconnect = "notify::graceful-disconnect"
    case notifyInputStream = "notify::input-stream"
    case notifyOutputStream = "notify::output-stream"
    case notifySocket = "notify::socket"
}

// MARK: TcpConnection has no signals
// MARK: TcpConnection Class: TcpConnectionProtocol extension (methods and fields)
public extension TcpConnectionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTcpConnection` instance.
    @inlinable var tcp_connection_ptr: UnsafeMutablePointer<GTcpConnection>! { return ptr?.assumingMemoryBound(to: GTcpConnection.self) }

    /// Checks if graceful disconnects are used. See
    /// `g_tcp_connection_set_graceful_disconnect()`.
    @inlinable func getGracefulDisconnect() -> Bool {
        let rv = ((g_tcp_connection_get_graceful_disconnect(tcp_connection_ptr)) != 0)
        return rv
    }

    /// This enables graceful disconnects on close. A graceful disconnect
    /// means that we signal the receiving end that the connection is terminated
    /// and wait for it to close the connection before closing the connection.
    /// 
    /// A graceful disconnect means that we can be sure that we successfully sent
    /// all the outstanding data to the other end, or get an error reported.
    /// However, it also means we have to wait for all the data to reach the
    /// other side and for it to acknowledge this by closing the socket, which may
    /// take a while. For this reason it is disabled by default.
    @inlinable func set(gracefulDisconnect: Bool) {
        g_tcp_connection_set_graceful_disconnect(tcp_connection_ptr, gboolean((gracefulDisconnect) ? 1 : 0))
    
    }
    /// Checks if graceful disconnects are used. See
    /// `g_tcp_connection_set_graceful_disconnect()`.
    @inlinable var gracefulDisconnect: Bool {
        /// Checks if graceful disconnects are used. See
        /// `g_tcp_connection_set_graceful_disconnect()`.
        get {
            let rv = ((g_tcp_connection_get_graceful_disconnect(tcp_connection_ptr)) != 0)
            return rv
        }
        /// This enables graceful disconnects on close. A graceful disconnect
        /// means that we signal the receiving end that the connection is terminated
        /// and wait for it to close the connection before closing the connection.
        /// 
        /// A graceful disconnect means that we can be sure that we successfully sent
        /// all the outstanding data to the other end, or get an error reported.
        /// However, it also means we have to wait for all the data to reach the
        /// other side and for it to acknowledge this by closing the socket, which may
        /// take a while. For this reason it is disabled by default.
        nonmutating set {
            g_tcp_connection_set_graceful_disconnect(tcp_connection_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var parentInstance: GSocketConnection {
        get {
            let rv = tcp_connection_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - TcpWrapperConnection Class

/// The `TcpWrapperConnectionProtocol` protocol exposes the methods and properties of an underlying `GTcpWrapperConnection` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TcpWrapperConnection`.
/// Alternatively, use `TcpWrapperConnectionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GTcpWrapperConnection` can be used to wrap a `GIOStream` that is
/// based on a `GSocket`, but which is not actually a
/// `GSocketConnection`. This is used by `GSocketClient` so that it can
/// always return a `GSocketConnection`, even when the connection it has
/// actually created is not directly a `GSocketConnection`.
public protocol TcpWrapperConnectionProtocol: TcpConnectionProtocol {
        /// Untyped pointer to the underlying `GTcpWrapperConnection` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTcpWrapperConnection` instance.
    var tcp_wrapper_connection_ptr: UnsafeMutablePointer<GTcpWrapperConnection>! { get }

    /// Required Initialiser for types conforming to `TcpWrapperConnectionProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `TcpWrapperConnectionRef` type acts as a lightweight Swift reference to an underlying `GTcpWrapperConnection` instance.
/// It exposes methods that can operate on this data type through `TcpWrapperConnectionProtocol` conformance.
/// Use `TcpWrapperConnectionRef` only as an `unowned` reference to an existing `GTcpWrapperConnection` instance.
///
/// A `GTcpWrapperConnection` can be used to wrap a `GIOStream` that is
/// based on a `GSocket`, but which is not actually a
/// `GSocketConnection`. This is used by `GSocketClient` so that it can
/// always return a `GSocketConnection`, even when the connection it has
/// actually created is not directly a `GSocketConnection`.
public struct TcpWrapperConnectionRef: TcpWrapperConnectionProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GTcpWrapperConnection` instance.
    /// For type-safe access, use the generated, typed pointer `tcp_wrapper_connection_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TcpWrapperConnectionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTcpWrapperConnection>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTcpWrapperConnection>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTcpWrapperConnection>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTcpWrapperConnection>?) {
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

    /// Reference intialiser for a related type that implements `TcpWrapperConnectionProtocol`
    @inlinable init<T: TcpWrapperConnectionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: TcpWrapperConnectionProtocol>(_ other: T) -> TcpWrapperConnectionRef { TcpWrapperConnectionRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Wraps `base_io_stream` and `socket` together as a `GSocketConnection`.
    @inlinable init<IOStreamT: IOStreamProtocol, SocketT: SocketProtocol>( baseIoStream: IOStreamT, socket: SocketT) {
        let rv = g_tcp_wrapper_connection_new(baseIoStream.io_stream_ptr, socket.socket_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `TcpWrapperConnection` type acts as a reference-counted owner of an underlying `GTcpWrapperConnection` instance.
/// It provides the methods that can operate on this data type through `TcpWrapperConnectionProtocol` conformance.
/// Use `TcpWrapperConnection` as a strong reference or owner of a `GTcpWrapperConnection` instance.
///
/// A `GTcpWrapperConnection` can be used to wrap a `GIOStream` that is
/// based on a `GSocket`, but which is not actually a
/// `GSocketConnection`. This is used by `GSocketClient` so that it can
/// always return a `GSocketConnection`, even when the connection it has
/// actually created is not directly a `GSocketConnection`.
open class TcpWrapperConnection: TcpConnection, TcpWrapperConnectionProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpWrapperConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTcpWrapperConnection>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpWrapperConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTcpWrapperConnection>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpWrapperConnection` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpWrapperConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpWrapperConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTcpWrapperConnection>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpWrapperConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTcpWrapperConnection>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GTcpWrapperConnection`.
    /// i.e., ownership is transferred to the `TcpWrapperConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTcpWrapperConnection>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `TcpWrapperConnectionProtocol`
    /// Will retain `GTcpWrapperConnection`.
    /// - Parameter other: an instance of a related type that implements `TcpWrapperConnectionProtocol`
    @inlinable public init<T: TcpWrapperConnectionProtocol>(tcpWrapperConnection other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Wraps `base_io_stream` and `socket` together as a `GSocketConnection`.
    @inlinable public init<IOStreamT: IOStreamProtocol, SocketT: SocketProtocol>( baseIoStream: IOStreamT, socket: SocketT) {
        let rv = g_tcp_wrapper_connection_new(baseIoStream.io_stream_ptr, socket.socket_ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum TcpWrapperConnectionPropertyName: String, PropertyNameProtocol {
    case baseIoStream = "base-io-stream"
    case closed = "closed"
    case gracefulDisconnect = "graceful-disconnect"
    case inputStream = "input-stream"
    case outputStream = "output-stream"
    case socket = "socket"
}

public extension TcpWrapperConnectionProtocol {
    /// Bind a `TcpWrapperConnectionPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: TcpWrapperConnectionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a TcpWrapperConnection property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: TcpWrapperConnectionPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a TcpWrapperConnection property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: TcpWrapperConnectionPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum TcpWrapperConnectionSignalName: String, SignalNameProtocol {
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
    case notifyBaseIoStream = "notify::base-io-stream"
    case notifyClosed = "notify::closed"
    case notifyGracefulDisconnect = "notify::graceful-disconnect"
    case notifyInputStream = "notify::input-stream"
    case notifyOutputStream = "notify::output-stream"
    case notifySocket = "notify::socket"
}

// MARK: TcpWrapperConnection has no signals
// MARK: TcpWrapperConnection Class: TcpWrapperConnectionProtocol extension (methods and fields)
public extension TcpWrapperConnectionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTcpWrapperConnection` instance.
    @inlinable var tcp_wrapper_connection_ptr: UnsafeMutablePointer<GTcpWrapperConnection>! { return ptr?.assumingMemoryBound(to: GTcpWrapperConnection.self) }

    /// Gets `conn`'s base `GIOStream`
    @inlinable func getBaseIoStream() -> IOStreamRef! {
        guard let rv = IOStreamRef(gconstpointer: gconstpointer(g_tcp_wrapper_connection_get_base_io_stream(tcp_wrapper_connection_ptr))) else { return nil }
        return rv
    }
    /// Gets `conn`'s base `GIOStream`
    @inlinable var baseIoStream: IOStreamRef! {
        /// Gets `conn`'s base `GIOStream`
        get {
            guard let rv = IOStreamRef(gconstpointer: gconstpointer(g_tcp_wrapper_connection_get_base_io_stream(tcp_wrapper_connection_ptr))) else { return nil }
            return rv
        }
    }

    @inlinable var parentInstance: GTcpConnection {
        get {
            let rv = tcp_wrapper_connection_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - TestDBus Class

/// The `TestDBusProtocol` protocol exposes the methods and properties of an underlying `GTestDBus` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TestDBus`.
/// Alternatively, use `TestDBusRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A helper class for testing code which uses D-Bus without touching the user's
/// session bus.
/// 
/// Note that `GTestDBus` modifies the user’s environment, calling `setenv()`.
/// This is not thread-safe, so all `GTestDBus` calls should be completed before
/// threads are spawned, or should have appropriate locking to ensure no access
/// conflicts to environment variables shared between `GTestDBus` and other
/// threads.
/// 
/// ## Creating unit tests using GTestDBus
/// 
/// Testing of D-Bus services can be tricky because normally we only ever run
/// D-Bus services over an existing instance of the D-Bus daemon thus we
/// usually don't activate D-Bus services that are not yet installed into the
/// target system. The `GTestDBus` object makes this easier for us by taking care
/// of the lower level tasks such as running a private D-Bus daemon and looking
/// up uninstalled services in customizable locations, typically in your source
/// code tree.
/// 
/// The first thing you will need is a separate service description file for the
/// D-Bus daemon. Typically a `services` subdirectory of your `tests` directory
/// is a good place to put this file.
/// 
/// The service file should list your service along with an absolute path to the
/// uninstalled service executable in your source tree. Using autotools we would
/// achieve this by adding a file such as `my-server.service.in` in the services
/// directory and have it processed by configure.
/// ```
///     [D-BUS Service]
///     Name=org.gtk.GDBus.Examples.ObjectManager
///     Exec=@abs_top_builddir@/gio/tests/gdbus-example-objectmanager-server
/// ```
/// You will also need to indicate this service directory in your test
/// fixtures, so you will need to pass the path while compiling your
/// test cases. Typically this is done with autotools with an added
/// preprocessor flag specified to compile your tests such as:
/// ```
///     -DTEST_SERVICES=\""$(abs_top_builddir)/tests/services"\"
/// ```
///     Once you have a service definition file which is local to your source tree,
/// you can proceed to set up a GTest fixture using the `GTestDBus` scaffolding.
/// 
/// An example of a test fixture for D-Bus services can be found
/// here:
/// [gdbus-test-fixture.c](https://git.gnome.org/browse/glib/tree/gio/tests/gdbus-test-fixture.c)
/// 
/// Note that these examples only deal with isolating the D-Bus aspect of your
/// service. To successfully run isolated unit tests on your service you may need
/// some additional modifications to your test case fixture. For example; if your
/// service uses GSettings and installs a schema then it is important that your test service
/// not load the schema in the ordinary installed location (chances are that your service
/// and schema files are not yet installed, or worse; there is an older version of the
/// schema file sitting in the install location).
/// 
/// Most of the time we can work around these obstacles using the
/// environment. Since the environment is inherited by the D-Bus daemon
/// created by `GTestDBus` and then in turn inherited by any services the
/// D-Bus daemon activates, using the setup routine for your fixture is
/// a practical place to help sandbox your runtime environment. For the
/// rather typical GSettings case we can work around this by setting
/// `GSETTINGS_SCHEMA_DIR` to the in tree directory holding your schemas
/// in the above `fixture_setup()` routine.
/// 
/// The GSettings schemas need to be locally pre-compiled for this to work. This can be achieved
/// by compiling the schemas locally as a step before running test cases, an autotools setup might
/// do the following in the directory holding schemas:
/// ```
///     all-am:
///             $(GLIB_COMPILE_SCHEMAS) .
/// 
///     CLEANFILES += gschemas.compiled
/// ```
/// 
public protocol TestDBusProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GTestDBus` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTestDBus` instance.
    var test_dbus_ptr: UnsafeMutablePointer<GTestDBus>! { get }

    /// Required Initialiser for types conforming to `TestDBusProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `TestDBusRef` type acts as a lightweight Swift reference to an underlying `GTestDBus` instance.
/// It exposes methods that can operate on this data type through `TestDBusProtocol` conformance.
/// Use `TestDBusRef` only as an `unowned` reference to an existing `GTestDBus` instance.
///
/// A helper class for testing code which uses D-Bus without touching the user's
/// session bus.
/// 
/// Note that `GTestDBus` modifies the user’s environment, calling `setenv()`.
/// This is not thread-safe, so all `GTestDBus` calls should be completed before
/// threads are spawned, or should have appropriate locking to ensure no access
/// conflicts to environment variables shared between `GTestDBus` and other
/// threads.
/// 
/// ## Creating unit tests using GTestDBus
/// 
/// Testing of D-Bus services can be tricky because normally we only ever run
/// D-Bus services over an existing instance of the D-Bus daemon thus we
/// usually don't activate D-Bus services that are not yet installed into the
/// target system. The `GTestDBus` object makes this easier for us by taking care
/// of the lower level tasks such as running a private D-Bus daemon and looking
/// up uninstalled services in customizable locations, typically in your source
/// code tree.
/// 
/// The first thing you will need is a separate service description file for the
/// D-Bus daemon. Typically a `services` subdirectory of your `tests` directory
/// is a good place to put this file.
/// 
/// The service file should list your service along with an absolute path to the
/// uninstalled service executable in your source tree. Using autotools we would
/// achieve this by adding a file such as `my-server.service.in` in the services
/// directory and have it processed by configure.
/// ```
///     [D-BUS Service]
///     Name=org.gtk.GDBus.Examples.ObjectManager
///     Exec=@abs_top_builddir@/gio/tests/gdbus-example-objectmanager-server
/// ```
/// You will also need to indicate this service directory in your test
/// fixtures, so you will need to pass the path while compiling your
/// test cases. Typically this is done with autotools with an added
/// preprocessor flag specified to compile your tests such as:
/// ```
///     -DTEST_SERVICES=\""$(abs_top_builddir)/tests/services"\"
/// ```
///     Once you have a service definition file which is local to your source tree,
/// you can proceed to set up a GTest fixture using the `GTestDBus` scaffolding.
/// 
/// An example of a test fixture for D-Bus services can be found
/// here:
/// [gdbus-test-fixture.c](https://git.gnome.org/browse/glib/tree/gio/tests/gdbus-test-fixture.c)
/// 
/// Note that these examples only deal with isolating the D-Bus aspect of your
/// service. To successfully run isolated unit tests on your service you may need
/// some additional modifications to your test case fixture. For example; if your
/// service uses GSettings and installs a schema then it is important that your test service
/// not load the schema in the ordinary installed location (chances are that your service
/// and schema files are not yet installed, or worse; there is an older version of the
/// schema file sitting in the install location).
/// 
/// Most of the time we can work around these obstacles using the
/// environment. Since the environment is inherited by the D-Bus daemon
/// created by `GTestDBus` and then in turn inherited by any services the
/// D-Bus daemon activates, using the setup routine for your fixture is
/// a practical place to help sandbox your runtime environment. For the
/// rather typical GSettings case we can work around this by setting
/// `GSETTINGS_SCHEMA_DIR` to the in tree directory holding your schemas
/// in the above `fixture_setup()` routine.
/// 
/// The GSettings schemas need to be locally pre-compiled for this to work. This can be achieved
/// by compiling the schemas locally as a step before running test cases, an autotools setup might
/// do the following in the directory holding schemas:
/// ```
///     all-am:
///             $(GLIB_COMPILE_SCHEMAS) .
/// 
///     CLEANFILES += gschemas.compiled
/// ```
/// 
public struct TestDBusRef: TestDBusProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GTestDBus` instance.
    /// For type-safe access, use the generated, typed pointer `test_dbus_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TestDBusRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTestDBus>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTestDBus>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTestDBus>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTestDBus>?) {
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

    /// Reference intialiser for a related type that implements `TestDBusProtocol`
    @inlinable init<T: TestDBusProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: TestDBusProtocol>(_ other: T) -> TestDBusRef { TestDBusRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestDBusProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestDBusProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestDBusProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestDBusProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestDBusProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Create a new `GTestDBus` object.
    @inlinable init( flags: TestDBusFlags) {
        let rv = g_test_dbus_new(flags.value)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `TestDBus` type acts as a reference-counted owner of an underlying `GTestDBus` instance.
/// It provides the methods that can operate on this data type through `TestDBusProtocol` conformance.
/// Use `TestDBus` as a strong reference or owner of a `GTestDBus` instance.
///
/// A helper class for testing code which uses D-Bus without touching the user's
/// session bus.
/// 
/// Note that `GTestDBus` modifies the user’s environment, calling `setenv()`.
/// This is not thread-safe, so all `GTestDBus` calls should be completed before
/// threads are spawned, or should have appropriate locking to ensure no access
/// conflicts to environment variables shared between `GTestDBus` and other
/// threads.
/// 
/// ## Creating unit tests using GTestDBus
/// 
/// Testing of D-Bus services can be tricky because normally we only ever run
/// D-Bus services over an existing instance of the D-Bus daemon thus we
/// usually don't activate D-Bus services that are not yet installed into the
/// target system. The `GTestDBus` object makes this easier for us by taking care
/// of the lower level tasks such as running a private D-Bus daemon and looking
/// up uninstalled services in customizable locations, typically in your source
/// code tree.
/// 
/// The first thing you will need is a separate service description file for the
/// D-Bus daemon. Typically a `services` subdirectory of your `tests` directory
/// is a good place to put this file.
/// 
/// The service file should list your service along with an absolute path to the
/// uninstalled service executable in your source tree. Using autotools we would
/// achieve this by adding a file such as `my-server.service.in` in the services
/// directory and have it processed by configure.
/// ```
///     [D-BUS Service]
///     Name=org.gtk.GDBus.Examples.ObjectManager
///     Exec=@abs_top_builddir@/gio/tests/gdbus-example-objectmanager-server
/// ```
/// You will also need to indicate this service directory in your test
/// fixtures, so you will need to pass the path while compiling your
/// test cases. Typically this is done with autotools with an added
/// preprocessor flag specified to compile your tests such as:
/// ```
///     -DTEST_SERVICES=\""$(abs_top_builddir)/tests/services"\"
/// ```
///     Once you have a service definition file which is local to your source tree,
/// you can proceed to set up a GTest fixture using the `GTestDBus` scaffolding.
/// 
/// An example of a test fixture for D-Bus services can be found
/// here:
/// [gdbus-test-fixture.c](https://git.gnome.org/browse/glib/tree/gio/tests/gdbus-test-fixture.c)
/// 
/// Note that these examples only deal with isolating the D-Bus aspect of your
/// service. To successfully run isolated unit tests on your service you may need
/// some additional modifications to your test case fixture. For example; if your
/// service uses GSettings and installs a schema then it is important that your test service
/// not load the schema in the ordinary installed location (chances are that your service
/// and schema files are not yet installed, or worse; there is an older version of the
/// schema file sitting in the install location).
/// 
/// Most of the time we can work around these obstacles using the
/// environment. Since the environment is inherited by the D-Bus daemon
/// created by `GTestDBus` and then in turn inherited by any services the
/// D-Bus daemon activates, using the setup routine for your fixture is
/// a practical place to help sandbox your runtime environment. For the
/// rather typical GSettings case we can work around this by setting
/// `GSETTINGS_SCHEMA_DIR` to the in tree directory holding your schemas
/// in the above `fixture_setup()` routine.
/// 
/// The GSettings schemas need to be locally pre-compiled for this to work. This can be achieved
/// by compiling the schemas locally as a step before running test cases, an autotools setup might
/// do the following in the directory holding schemas:
/// ```
///     all-am:
///             $(GLIB_COMPILE_SCHEMAS) .
/// 
///     CLEANFILES += gschemas.compiled
/// ```
/// 
open class TestDBus: GLibObject.Object, TestDBusProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestDBus` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTestDBus>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestDBus` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTestDBus>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestDBus` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestDBus` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestDBus` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTestDBus>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TestDBus` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTestDBus>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GTestDBus`.
    /// i.e., ownership is transferred to the `TestDBus` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTestDBus>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `TestDBusProtocol`
    /// Will retain `GTestDBus`.
    /// - Parameter other: an instance of a related type that implements `TestDBusProtocol`
    @inlinable public init<T: TestDBusProtocol>(testDBus other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestDBusProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestDBusProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestDBusProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestDBusProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestDBusProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestDBusProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestDBusProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestDBusProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Create a new `GTestDBus` object.
    @inlinable public init( flags: TestDBusFlags) {
        let rv = g_test_dbus_new(flags.value)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum TestDBusPropertyName: String, PropertyNameProtocol {
    /// `GTestDBusFlags` specifying the behaviour of the D-Bus session.
    case flags = "flags"
}

public extension TestDBusProtocol {
    /// Bind a `TestDBusPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: TestDBusPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a TestDBus property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: TestDBusPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a TestDBus property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: TestDBusPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum TestDBusSignalName: String, SignalNameProtocol {
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
    /// `GTestDBusFlags` specifying the behaviour of the D-Bus session.
    case notifyFlags = "notify::flags"
}

// MARK: TestDBus has no signals
// MARK: TestDBus Class: TestDBusProtocol extension (methods and fields)
public extension TestDBusProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTestDBus` instance.
    @inlinable var test_dbus_ptr: UnsafeMutablePointer<GTestDBus>! { return ptr?.assumingMemoryBound(to: GTestDBus.self) }

    /// Add a path where dbus-daemon will look up .service files. This can't be
    /// called after `g_test_dbus_up()`.
    @inlinable func addServiceDir(path: UnsafePointer<gchar>!) {
        g_test_dbus_add_service_dir(test_dbus_ptr, path)
    
    }

    /// Stop the session bus started by `g_test_dbus_up()`.
    /// 
    /// This will wait for the singleton returned by `g_bus_get()` or `g_bus_get_sync()`
    /// to be destroyed. This is done to ensure that the next unit test won't get a
    /// leaked singleton from this test.
    @inlinable func down() {
        g_test_dbus_down(test_dbus_ptr)
    
    }

    /// Get the address on which dbus-daemon is running. If `g_test_dbus_up()` has not
    /// been called yet, `nil` is returned. This can be used with
    /// `g_dbus_connection_new_for_address()`.
    @inlinable func getBusAddress() -> String! {
        let rv = g_test_dbus_get_bus_address(test_dbus_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Get the flags of the `GTestDBus` object.
    @inlinable func getFlags() -> TestDBusFlags {
        let rv = TestDBusFlags(g_test_dbus_get_flags(test_dbus_ptr))
        return rv
    }

    /// Stop the session bus started by `g_test_dbus_up()`.
    /// 
    /// Unlike `g_test_dbus_down()`, this won't verify the `GDBusConnection`
    /// singleton returned by `g_bus_get()` or `g_bus_get_sync()` is destroyed. Unit
    /// tests wanting to verify behaviour after the session bus has been stopped
    /// can use this function but should still call `g_test_dbus_down()` when done.
    @inlinable func stop() {
        g_test_dbus_stop(test_dbus_ptr)
    
    }

    /// Start a dbus-daemon instance and set DBUS_SESSION_BUS_ADDRESS. After this
    /// call, it is safe for unit tests to start sending messages on the session bus.
    /// 
    /// If this function is called from setup callback of `g_test_add()`,
    /// `g_test_dbus_down()` must be called in its teardown callback.
    /// 
    /// If this function is called from unit test's `main()`, then `g_test_dbus_down()`
    /// must be called after `g_test_run()`.
    @inlinable func up() {
        g_test_dbus_up(test_dbus_ptr)
    
    }
    /// Get the address on which dbus-daemon is running. If `g_test_dbus_up()` has not
    /// been called yet, `nil` is returned. This can be used with
    /// `g_dbus_connection_new_for_address()`.
    @inlinable var busAddress: String! {
        /// Get the address on which dbus-daemon is running. If `g_test_dbus_up()` has not
        /// been called yet, `nil` is returned. This can be used with
        /// `g_dbus_connection_new_for_address()`.
        get {
            let rv = g_test_dbus_get_bus_address(test_dbus_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// `GTestDBusFlags` specifying the behaviour of the D-Bus session.
    @inlinable var flags: TestDBusFlags {
        /// Get the flags of the `GTestDBus` object.
        get {
            let rv = TestDBusFlags(g_test_dbus_get_flags(test_dbus_ptr))
            return rv
        }
    }


}



// MARK: - ThemedIcon Class

/// The `ThemedIconProtocol` protocol exposes the methods and properties of an underlying `GThemedIcon` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ThemedIcon`.
/// Alternatively, use `ThemedIconRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GThemedIcon` is an implementation of `GIcon` that supports icon themes.
/// `GThemedIcon` contains a list of all of the icons present in an icon
/// theme, so that icons can be looked up quickly. `GThemedIcon` does
/// not provide actual pixmaps for icons, just the icon names.
/// IDeally something like `gtk_icon_theme_choose_icon()` should be used to
/// resolve the list of names so that fallback icons work nicely with
/// themes that inherit other themes.
public protocol ThemedIconProtocol: GLibObject.ObjectProtocol, IconProtocol {
        /// Untyped pointer to the underlying `GThemedIcon` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GThemedIcon` instance.
    var themed_icon_ptr: UnsafeMutablePointer<GThemedIcon>! { get }

    /// Required Initialiser for types conforming to `ThemedIconProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ThemedIconRef` type acts as a lightweight Swift reference to an underlying `GThemedIcon` instance.
/// It exposes methods that can operate on this data type through `ThemedIconProtocol` conformance.
/// Use `ThemedIconRef` only as an `unowned` reference to an existing `GThemedIcon` instance.
///
/// `GThemedIcon` is an implementation of `GIcon` that supports icon themes.
/// `GThemedIcon` contains a list of all of the icons present in an icon
/// theme, so that icons can be looked up quickly. `GThemedIcon` does
/// not provide actual pixmaps for icons, just the icon names.
/// IDeally something like `gtk_icon_theme_choose_icon()` should be used to
/// resolve the list of names so that fallback icons work nicely with
/// themes that inherit other themes.
public struct ThemedIconRef: ThemedIconProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GThemedIcon` instance.
    /// For type-safe access, use the generated, typed pointer `themed_icon_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ThemedIconRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GThemedIcon>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GThemedIcon>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GThemedIcon>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GThemedIcon>?) {
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

    /// Reference intialiser for a related type that implements `ThemedIconProtocol`
    @inlinable init<T: ThemedIconProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ThemedIconProtocol>(_ other: T) -> ThemedIconRef { ThemedIconRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ThemedIcon` type acts as a reference-counted owner of an underlying `GThemedIcon` instance.
/// It provides the methods that can operate on this data type through `ThemedIconProtocol` conformance.
/// Use `ThemedIcon` as a strong reference or owner of a `GThemedIcon` instance.
///
/// `GThemedIcon` is an implementation of `GIcon` that supports icon themes.
/// `GThemedIcon` contains a list of all of the icons present in an icon
/// theme, so that icons can be looked up quickly. `GThemedIcon` does
/// not provide actual pixmaps for icons, just the icon names.
/// IDeally something like `gtk_icon_theme_choose_icon()` should be used to
/// resolve the list of names so that fallback icons work nicely with
/// themes that inherit other themes.
open class ThemedIcon: GLibObject.Object, ThemedIconProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThemedIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GThemedIcon>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThemedIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GThemedIcon>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThemedIcon` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThemedIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThemedIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GThemedIcon>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThemedIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GThemedIcon>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GThemedIcon`.
    /// i.e., ownership is transferred to the `ThemedIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GThemedIcon>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ThemedIconProtocol`
    /// Will retain `GThemedIcon`.
    /// - Parameter other: an instance of a related type that implements `ThemedIconProtocol`
    @inlinable public init<T: ThemedIconProtocol>(themedIcon other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum ThemedIconPropertyName: String, PropertyNameProtocol {
    /// The icon name.
    case name = "name"
    /// A `nil`-terminated array of icon names.
    case names = "names"
    /// Whether to use the default fallbacks found by shortening the icon name
    /// at '-' characters. If the "names" array has more than one element,
    /// ignores any past the first.
    /// 
    /// For example, if the icon name was "gnome-dev-cdrom-audio", the array
    /// would become
    /// (C Language Example):
    /// ```C
    /// {
    ///   "gnome-dev-cdrom-audio",
    ///   "gnome-dev-cdrom",
    ///   "gnome-dev",
    ///   "gnome",
    ///   NULL
    /// };
    /// ```
    /// 
    case useDefaultFallbacks = "use-default-fallbacks"
}

public extension ThemedIconProtocol {
    /// Bind a `ThemedIconPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ThemedIconPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a ThemedIcon property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ThemedIconPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a ThemedIcon property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ThemedIconPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum ThemedIconSignalName: String, SignalNameProtocol {
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
    /// The icon name.
    case notifyName = "notify::name"
    /// A `nil`-terminated array of icon names.
    case notifyNames = "notify::names"
    /// Whether to use the default fallbacks found by shortening the icon name
    /// at '-' characters. If the "names" array has more than one element,
    /// ignores any past the first.
    /// 
    /// For example, if the icon name was "gnome-dev-cdrom-audio", the array
    /// would become
    /// (C Language Example):
    /// ```C
    /// {
    ///   "gnome-dev-cdrom-audio",
    ///   "gnome-dev-cdrom",
    ///   "gnome-dev",
    ///   "gnome",
    ///   NULL
    /// };
    /// ```
    /// 
    case notifyUseDefaultFallbacks = "notify::use-default-fallbacks"
}

// MARK: ThemedIcon has no signals
// MARK: ThemedIcon Class: ThemedIconProtocol extension (methods and fields)
public extension ThemedIconProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GThemedIcon` instance.
    @inlinable var themed_icon_ptr: UnsafeMutablePointer<GThemedIcon>! { return ptr?.assumingMemoryBound(to: GThemedIcon.self) }

    /// Append a name to the list of icons from within `icon`.
    /// 
    /// Note that doing so invalidates the hash computed by prior calls
    /// to `g_icon_hash()`.
    @inlinable func appendName(iconname: UnsafePointer<CChar>!) {
        g_themed_icon_append_name(themed_icon_ptr, iconname)
    
    }

    /// Gets the names of icons from within `icon`.
    @inlinable func getNames() -> UnsafePointer<UnsafePointer<gchar>?>! {
        let rv = g_themed_icon_get_names(themed_icon_ptr)
        return rv
    }

    /// Prepend a name to the list of icons from within `icon`.
    /// 
    /// Note that doing so invalidates the hash computed by prior calls
    /// to `g_icon_hash()`.
    @inlinable func prependName(iconname: UnsafePointer<CChar>!) {
        g_themed_icon_prepend_name(themed_icon_ptr, iconname)
    
    }
    /// A `nil`-terminated array of icon names.
    @inlinable var names: UnsafePointer<UnsafePointer<gchar>?>! {
        /// Gets the names of icons from within `icon`.
        get {
            let rv = g_themed_icon_get_names(themed_icon_ptr)
            return rv
        }
    }


}



// MARK: - ThreadedSocketService Class

/// The `ThreadedSocketServiceProtocol` protocol exposes the methods and properties of an underlying `GThreadedSocketService` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ThreadedSocketService`.
/// Alternatively, use `ThreadedSocketServiceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GThreadedSocketService` is a simple subclass of `GSocketService`
/// that handles incoming connections by creating a worker thread and
/// dispatching the connection to it by emitting the
/// `GThreadedSocketService::run` signal in the new thread.
/// 
/// The signal handler may perform blocking IO and need not return
/// until the connection is closed.
/// 
/// The service is implemented using a thread pool, so there is a
/// limited amount of threads available to serve incoming requests.
/// The service automatically stops the `GSocketService` from accepting
/// new connections when all threads are busy.
/// 
/// As with `GSocketService`, you may connect to `GThreadedSocketService::run`,
/// or subclass and override the default handler.
public protocol ThreadedSocketServiceProtocol: SocketServiceProtocol {
        /// Untyped pointer to the underlying `GThreadedSocketService` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GThreadedSocketService` instance.
    var threaded_socket_service_ptr: UnsafeMutablePointer<GThreadedSocketService>! { get }

    /// Required Initialiser for types conforming to `ThreadedSocketServiceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ThreadedSocketServiceRef` type acts as a lightweight Swift reference to an underlying `GThreadedSocketService` instance.
/// It exposes methods that can operate on this data type through `ThreadedSocketServiceProtocol` conformance.
/// Use `ThreadedSocketServiceRef` only as an `unowned` reference to an existing `GThreadedSocketService` instance.
///
/// A `GThreadedSocketService` is a simple subclass of `GSocketService`
/// that handles incoming connections by creating a worker thread and
/// dispatching the connection to it by emitting the
/// `GThreadedSocketService::run` signal in the new thread.
/// 
/// The signal handler may perform blocking IO and need not return
/// until the connection is closed.
/// 
/// The service is implemented using a thread pool, so there is a
/// limited amount of threads available to serve incoming requests.
/// The service automatically stops the `GSocketService` from accepting
/// new connections when all threads are busy.
/// 
/// As with `GSocketService`, you may connect to `GThreadedSocketService::run`,
/// or subclass and override the default handler.
public struct ThreadedSocketServiceRef: ThreadedSocketServiceProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GThreadedSocketService` instance.
    /// For type-safe access, use the generated, typed pointer `threaded_socket_service_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ThreadedSocketServiceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GThreadedSocketService>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GThreadedSocketService>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GThreadedSocketService>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GThreadedSocketService>?) {
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

    /// Reference intialiser for a related type that implements `ThreadedSocketServiceProtocol`
    @inlinable init<T: ThreadedSocketServiceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ThreadedSocketServiceProtocol>(_ other: T) -> ThreadedSocketServiceRef { ThreadedSocketServiceRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GThreadedSocketService` with no listeners. Listeners
    /// must be added with one of the `GSocketListener` "add" methods.
    @inlinable init( maxThreads: Int) {
        let rv = g_threaded_socket_service_new(gint(maxThreads))
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `ThreadedSocketService` type acts as a reference-counted owner of an underlying `GThreadedSocketService` instance.
/// It provides the methods that can operate on this data type through `ThreadedSocketServiceProtocol` conformance.
/// Use `ThreadedSocketService` as a strong reference or owner of a `GThreadedSocketService` instance.
///
/// A `GThreadedSocketService` is a simple subclass of `GSocketService`
/// that handles incoming connections by creating a worker thread and
/// dispatching the connection to it by emitting the
/// `GThreadedSocketService::run` signal in the new thread.
/// 
/// The signal handler may perform blocking IO and need not return
/// until the connection is closed.
/// 
/// The service is implemented using a thread pool, so there is a
/// limited amount of threads available to serve incoming requests.
/// The service automatically stops the `GSocketService` from accepting
/// new connections when all threads are busy.
/// 
/// As with `GSocketService`, you may connect to `GThreadedSocketService::run`,
/// or subclass and override the default handler.
open class ThreadedSocketService: SocketService, ThreadedSocketServiceProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThreadedSocketService` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GThreadedSocketService>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThreadedSocketService` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GThreadedSocketService>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThreadedSocketService` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThreadedSocketService` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThreadedSocketService` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GThreadedSocketService>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThreadedSocketService` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GThreadedSocketService>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GThreadedSocketService`.
    /// i.e., ownership is transferred to the `ThreadedSocketService` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GThreadedSocketService>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ThreadedSocketServiceProtocol`
    /// Will retain `GThreadedSocketService`.
    /// - Parameter other: an instance of a related type that implements `ThreadedSocketServiceProtocol`
    @inlinable public init<T: ThreadedSocketServiceProtocol>(threadedSocketService other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GThreadedSocketService` with no listeners. Listeners
    /// must be added with one of the `GSocketListener` "add" methods.
    @inlinable public init( maxThreads: Int) {
        let rv = g_threaded_socket_service_new(gint(maxThreads))
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum ThreadedSocketServicePropertyName: String, PropertyNameProtocol {
    /// Whether the service is currently accepting connections.
    case active = "active"
    case listenBacklog = "listen-backlog"
    case maxThreads = "max-threads"
}

public extension ThreadedSocketServiceProtocol {
    /// Bind a `ThreadedSocketServicePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ThreadedSocketServicePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a ThreadedSocketService property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ThreadedSocketServicePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a ThreadedSocketService property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ThreadedSocketServicePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum ThreadedSocketServiceSignalName: String, SignalNameProtocol {
    /// Emitted when `listener`'s activity on `socket` changes state.
    /// Note that when `listener` is used to listen on both IPv4 and
    /// IPv6, a separate set of signals will be emitted for each, and
    /// the order they happen in is undefined.
    case event = "event"
    /// The `incoming` signal is emitted when a new incoming connection
    /// to `service` needs to be handled. The handler must initiate the
    /// handling of `connection`, but may not block; in essence,
    /// asynchronous operations must be used.
    /// 
    /// `connection` will be unreffed once the signal handler returns,
    /// so you need to ref it yourself if you are planning to use it.
    case incoming = "incoming"
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
    /// The `run` signal is emitted in a worker thread in response to an
    /// incoming connection. This thread is dedicated to handling
    /// `connection` and may perform blocking IO. The signal handler need
    /// not return until the connection is closed.
    case run = "run"
    /// Whether the service is currently accepting connections.
    case notifyActive = "notify::active"
    case notifyListenBacklog = "notify::listen-backlog"
    case notifyMaxThreads = "notify::max-threads"
}

// MARK: ThreadedSocketService signals
public extension ThreadedSocketServiceProtocol {
    /// Connect a Swift signal handler to the given, typed `ThreadedSocketServiceSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: ThreadedSocketServiceSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `ThreadedSocketServiceSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: ThreadedSocketServiceSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// The `run` signal is emitted in a worker thread in response to an
    /// incoming connection. This thread is dedicated to handling
    /// `connection` and may perform blocking IO. The signal handler need
    /// not return until the connection is closed.
    /// - Note: This represents the underlying `run` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter connection: a new `GSocketConnection` object.
    /// - Parameter sourceObject: the source_object passed to `g_socket_listener_add_address()`.
    /// - Parameter handler: `true` to stop further signal handlers from being called
    /// Run the given callback whenever the `run` signal is emitted
    @discardableResult @inlinable func onRun(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ThreadedSocketServiceRef, _ connection: SocketConnectionRef, _ sourceObject: GLibObject.ObjectRef?) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<ThreadedSocketServiceRef, SocketConnectionRef, GLibObject.ObjectRef?, Bool>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer?, gpointer) -> gboolean = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(ThreadedSocketServiceRef(raw: unownedSelf), SocketConnectionRef(raw: arg1), arg2.flatMap(GLibObject.ObjectRef.init(raw:)))
            return gboolean((output) ? 1 : 0)
        }
        return connect(
            signal: .run,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `run` signal for using the `connect(signal:)` methods
    static var runSignal: ThreadedSocketServiceSignalName { .run }
    
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
    /// - Note: This represents the underlying `notify::max-threads` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyMaxThreads` signal is emitted
    @discardableResult @inlinable func onNotifyMaxThreads(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ThreadedSocketServiceRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ThreadedSocketServiceRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ThreadedSocketServiceRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyMaxThreads,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::max-threads` signal for using the `connect(signal:)` methods
    static var notifyMaxThreadsSignal: ThreadedSocketServiceSignalName { .notifyMaxThreads }
    
}

// MARK: ThreadedSocketService Class: ThreadedSocketServiceProtocol extension (methods and fields)
public extension ThreadedSocketServiceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GThreadedSocketService` instance.
    @inlinable var threaded_socket_service_ptr: UnsafeMutablePointer<GThreadedSocketService>! { return ptr?.assumingMemoryBound(to: GThreadedSocketService.self) }


    @inlinable var parentInstance: GSocketService {
        get {
            let rv = threaded_socket_service_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - TLSCertificate Class

/// The `TLSCertificateProtocol` protocol exposes the methods and properties of an underlying `GTlsCertificate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TLSCertificate`.
/// Alternatively, use `TLSCertificateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A certificate used for TLS authentication and encryption.
/// This can represent either a certificate only (eg, the certificate
/// received by a client from a server), or the combination of
/// a certificate and a private key (which is needed when acting as a
/// `GTlsServerConnection`).
public protocol TLSCertificateProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GTlsCertificate` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTlsCertificate` instance.
    var tls_certificate_ptr: UnsafeMutablePointer<GTlsCertificate>! { get }

    /// Required Initialiser for types conforming to `TLSCertificateProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `TLSCertificateRef` type acts as a lightweight Swift reference to an underlying `GTlsCertificate` instance.
/// It exposes methods that can operate on this data type through `TLSCertificateProtocol` conformance.
/// Use `TLSCertificateRef` only as an `unowned` reference to an existing `GTlsCertificate` instance.
///
/// A certificate used for TLS authentication and encryption.
/// This can represent either a certificate only (eg, the certificate
/// received by a client from a server), or the combination of
/// a certificate and a private key (which is needed when acting as a
/// `GTlsServerConnection`).
public struct TLSCertificateRef: TLSCertificateProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GTlsCertificate` instance.
    /// For type-safe access, use the generated, typed pointer `tls_certificate_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TLSCertificateRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTlsCertificate>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTlsCertificate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTlsCertificate>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTlsCertificate>?) {
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

    /// Reference intialiser for a related type that implements `TLSCertificateProtocol`
    @inlinable init<T: TLSCertificateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: TLSCertificateProtocol>(_ other: T) -> TLSCertificateRef { TLSCertificateRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a `GTlsCertificate` from the PEM-encoded data in `file`. The
    /// returned certificate will be the first certificate found in `file`. As
    /// of GLib 2.44, if `file` contains more certificates it will try to load
    /// a certificate chain. All certificates will be verified in the order
    /// found (top-level certificate should be the last one in the file) and
    /// the `GTlsCertificate:issuer` property of each certificate will be set
    /// accordingly if the verification succeeds. If any certificate in the
    /// chain cannot be verified, the first certificate in the file will
    /// still be returned.
    /// 
    /// If `file` cannot be read or parsed, the function will return `nil` and
    /// set `error`. Otherwise, this behaves like
    /// `g_tls_certificate_new_from_pem()`.
    @inlinable init(file: UnsafePointer<gchar>!) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_tls_certificate_new_from_file(file, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GTlsCertificate` from the PEM-encoded data in `cert_file`
    /// and `key_file`. The returned certificate will be the first certificate
    /// found in `cert_file`. As of GLib 2.44, if `cert_file` contains more
    /// certificates it will try to load a certificate chain. All
    /// certificates will be verified in the order found (top-level
    /// certificate should be the last one in the file) and the
    /// `GTlsCertificate:issuer` property of each certificate will be set
    /// accordingly if the verification succeeds. If any certificate in the
    /// chain cannot be verified, the first certificate in the file will
    /// still be returned.
    /// 
    /// If either file cannot be read or parsed, the function will return
    /// `nil` and set `error`. Otherwise, this behaves like
    /// `g_tls_certificate_new_from_pem()`.
    @inlinable init(files certFile: UnsafePointer<gchar>!, keyFile: UnsafePointer<gchar>!) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_tls_certificate_new_from_files(certFile, keyFile, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GTlsCertificate` from the PEM-encoded data in `data`. If
    /// `data` includes both a certificate and a private key, then the
    /// returned certificate will include the private key data as well. (See
    /// the `GTlsCertificate:private-key-pem` property for information about
    /// supported formats.)
    /// 
    /// The returned certificate will be the first certificate found in
    /// `data`. As of GLib 2.44, if `data` contains more certificates it will
    /// try to load a certificate chain. All certificates will be verified in
    /// the order found (top-level certificate should be the last one in the
    /// file) and the `GTlsCertificate:issuer` property of each certificate
    /// will be set accordingly if the verification succeeds. If any
    /// certificate in the chain cannot be verified, the first certificate in
    /// the file will still be returned.
    @inlinable init(pem data: UnsafePointer<gchar>!, length: gssize) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_tls_certificate_new_from_pem(data, length, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a `GTlsCertificate` from the PEM-encoded data in `file`. The
    /// returned certificate will be the first certificate found in `file`. As
    /// of GLib 2.44, if `file` contains more certificates it will try to load
    /// a certificate chain. All certificates will be verified in the order
    /// found (top-level certificate should be the last one in the file) and
    /// the `GTlsCertificate:issuer` property of each certificate will be set
    /// accordingly if the verification succeeds. If any certificate in the
    /// chain cannot be verified, the first certificate in the file will
    /// still be returned.
    /// 
    /// If `file` cannot be read or parsed, the function will return `nil` and
    /// set `error`. Otherwise, this behaves like
    /// `g_tls_certificate_new_from_pem()`.
    @inlinable static func newFrom(file: UnsafePointer<gchar>!) throws -> TLSCertificateRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = TLSCertificateRef(gconstpointer: gconstpointer(g_tls_certificate_new_from_file(file, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Creates a `GTlsCertificate` from the PEM-encoded data in `cert_file`
    /// and `key_file`. The returned certificate will be the first certificate
    /// found in `cert_file`. As of GLib 2.44, if `cert_file` contains more
    /// certificates it will try to load a certificate chain. All
    /// certificates will be verified in the order found (top-level
    /// certificate should be the last one in the file) and the
    /// `GTlsCertificate:issuer` property of each certificate will be set
    /// accordingly if the verification succeeds. If any certificate in the
    /// chain cannot be verified, the first certificate in the file will
    /// still be returned.
    /// 
    /// If either file cannot be read or parsed, the function will return
    /// `nil` and set `error`. Otherwise, this behaves like
    /// `g_tls_certificate_new_from_pem()`.
    @inlinable static func newFrom(files certFile: UnsafePointer<gchar>!, keyFile: UnsafePointer<gchar>!) throws -> TLSCertificateRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = TLSCertificateRef(gconstpointer: gconstpointer(g_tls_certificate_new_from_files(certFile, keyFile, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Creates a `GTlsCertificate` from the PEM-encoded data in `data`. If
    /// `data` includes both a certificate and a private key, then the
    /// returned certificate will include the private key data as well. (See
    /// the `GTlsCertificate:private-key-pem` property for information about
    /// supported formats.)
    /// 
    /// The returned certificate will be the first certificate found in
    /// `data`. As of GLib 2.44, if `data` contains more certificates it will
    /// try to load a certificate chain. All certificates will be verified in
    /// the order found (top-level certificate should be the last one in the
    /// file) and the `GTlsCertificate:issuer` property of each certificate
    /// will be set accordingly if the verification succeeds. If any
    /// certificate in the chain cannot be verified, the first certificate in
    /// the file will still be returned.
    @inlinable static func newFrom(pem data: UnsafePointer<gchar>!, length: gssize) throws -> TLSCertificateRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = TLSCertificateRef(gconstpointer: gconstpointer(g_tls_certificate_new_from_pem(data, length, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }
}

/// The `TLSCertificate` type acts as a reference-counted owner of an underlying `GTlsCertificate` instance.
/// It provides the methods that can operate on this data type through `TLSCertificateProtocol` conformance.
/// Use `TLSCertificate` as a strong reference or owner of a `GTlsCertificate` instance.
///
/// A certificate used for TLS authentication and encryption.
/// This can represent either a certificate only (eg, the certificate
/// received by a client from a server), or the combination of
/// a certificate and a private key (which is needed when acting as a
/// `GTlsServerConnection`).
open class TLSCertificate: GLibObject.Object, TLSCertificateProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSCertificate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTlsCertificate>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSCertificate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTlsCertificate>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSCertificate` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSCertificate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSCertificate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTlsCertificate>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSCertificate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTlsCertificate>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GTlsCertificate`.
    /// i.e., ownership is transferred to the `TLSCertificate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTlsCertificate>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `TLSCertificateProtocol`
    /// Will retain `GTlsCertificate`.
    /// - Parameter other: an instance of a related type that implements `TLSCertificateProtocol`
    @inlinable public init<T: TLSCertificateProtocol>(tlsCertificate other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a `GTlsCertificate` from the PEM-encoded data in `file`. The
    /// returned certificate will be the first certificate found in `file`. As
    /// of GLib 2.44, if `file` contains more certificates it will try to load
    /// a certificate chain. All certificates will be verified in the order
    /// found (top-level certificate should be the last one in the file) and
    /// the `GTlsCertificate:issuer` property of each certificate will be set
    /// accordingly if the verification succeeds. If any certificate in the
    /// chain cannot be verified, the first certificate in the file will
    /// still be returned.
    /// 
    /// If `file` cannot be read or parsed, the function will return `nil` and
    /// set `error`. Otherwise, this behaves like
    /// `g_tls_certificate_new_from_pem()`.
    @inlinable public init(file: UnsafePointer<gchar>!) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_tls_certificate_new_from_file(file, &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a `GTlsCertificate` from the PEM-encoded data in `cert_file`
    /// and `key_file`. The returned certificate will be the first certificate
    /// found in `cert_file`. As of GLib 2.44, if `cert_file` contains more
    /// certificates it will try to load a certificate chain. All
    /// certificates will be verified in the order found (top-level
    /// certificate should be the last one in the file) and the
    /// `GTlsCertificate:issuer` property of each certificate will be set
    /// accordingly if the verification succeeds. If any certificate in the
    /// chain cannot be verified, the first certificate in the file will
    /// still be returned.
    /// 
    /// If either file cannot be read or parsed, the function will return
    /// `nil` and set `error`. Otherwise, this behaves like
    /// `g_tls_certificate_new_from_pem()`.
    @inlinable public init(files certFile: UnsafePointer<gchar>!, keyFile: UnsafePointer<gchar>!) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_tls_certificate_new_from_files(certFile, keyFile, &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a `GTlsCertificate` from the PEM-encoded data in `data`. If
    /// `data` includes both a certificate and a private key, then the
    /// returned certificate will include the private key data as well. (See
    /// the `GTlsCertificate:private-key-pem` property for information about
    /// supported formats.)
    /// 
    /// The returned certificate will be the first certificate found in
    /// `data`. As of GLib 2.44, if `data` contains more certificates it will
    /// try to load a certificate chain. All certificates will be verified in
    /// the order found (top-level certificate should be the last one in the
    /// file) and the `GTlsCertificate:issuer` property of each certificate
    /// will be set accordingly if the verification succeeds. If any
    /// certificate in the chain cannot be verified, the first certificate in
    /// the file will still be returned.
    @inlinable public init(pem data: UnsafePointer<gchar>!, length: gssize) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_tls_certificate_new_from_pem(data, length, &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a `GTlsCertificate` from the PEM-encoded data in `file`. The
    /// returned certificate will be the first certificate found in `file`. As
    /// of GLib 2.44, if `file` contains more certificates it will try to load
    /// a certificate chain. All certificates will be verified in the order
    /// found (top-level certificate should be the last one in the file) and
    /// the `GTlsCertificate:issuer` property of each certificate will be set
    /// accordingly if the verification succeeds. If any certificate in the
    /// chain cannot be verified, the first certificate in the file will
    /// still be returned.
    /// 
    /// If `file` cannot be read or parsed, the function will return `nil` and
    /// set `error`. Otherwise, this behaves like
    /// `g_tls_certificate_new_from_pem()`.
    @inlinable public static func newFrom(file: UnsafePointer<gchar>!) throws -> TLSCertificate! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = TLSCertificate(gconstpointer: gconstpointer(g_tls_certificate_new_from_file(file, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a `GTlsCertificate` from the PEM-encoded data in `cert_file`
    /// and `key_file`. The returned certificate will be the first certificate
    /// found in `cert_file`. As of GLib 2.44, if `cert_file` contains more
    /// certificates it will try to load a certificate chain. All
    /// certificates will be verified in the order found (top-level
    /// certificate should be the last one in the file) and the
    /// `GTlsCertificate:issuer` property of each certificate will be set
    /// accordingly if the verification succeeds. If any certificate in the
    /// chain cannot be verified, the first certificate in the file will
    /// still be returned.
    /// 
    /// If either file cannot be read or parsed, the function will return
    /// `nil` and set `error`. Otherwise, this behaves like
    /// `g_tls_certificate_new_from_pem()`.
    @inlinable public static func newFrom(files certFile: UnsafePointer<gchar>!, keyFile: UnsafePointer<gchar>!) throws -> TLSCertificate! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = TLSCertificate(gconstpointer: gconstpointer(g_tls_certificate_new_from_files(certFile, keyFile, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a `GTlsCertificate` from the PEM-encoded data in `data`. If
    /// `data` includes both a certificate and a private key, then the
    /// returned certificate will include the private key data as well. (See
    /// the `GTlsCertificate:private-key-pem` property for information about
    /// supported formats.)
    /// 
    /// The returned certificate will be the first certificate found in
    /// `data`. As of GLib 2.44, if `data` contains more certificates it will
    /// try to load a certificate chain. All certificates will be verified in
    /// the order found (top-level certificate should be the last one in the
    /// file) and the `GTlsCertificate:issuer` property of each certificate
    /// will be set accordingly if the verification succeeds. If any
    /// certificate in the chain cannot be verified, the first certificate in
    /// the file will still be returned.
    @inlinable public static func newFrom(pem data: UnsafePointer<gchar>!, length: gssize) throws -> TLSCertificate! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = TLSCertificate(gconstpointer: gconstpointer(g_tls_certificate_new_from_pem(data, length, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum TLSCertificatePropertyName: String, PropertyNameProtocol {
    /// The DER (binary) encoded representation of the certificate.
    /// This property and the `GTlsCertificate:certificate-pem` property
    /// represent the same data, just in different forms.
    case certificate = "certificate"
    /// The PEM (ASCII) encoded representation of the certificate.
    /// This property and the `GTlsCertificate:certificate`
    /// property represent the same data, just in different forms.
    case certificatePem = "certificate-pem"
    /// A `GTlsCertificate` representing the entity that issued this
    /// certificate. If `nil`, this means that the certificate is either
    /// self-signed, or else the certificate of the issuer is not
    /// available.
    case issuer = "issuer"
    /// The DER (binary) encoded representation of the certificate's
    /// private key, in either PKCS`1` format or unencrypted PKCS`8`
    /// format. This property (or the `GTlsCertificate:private-key-pem`
    /// property) can be set when constructing a key (eg, from a file),
    /// but cannot be read.
    /// 
    /// PKCS`8` format is supported since 2.32; earlier releases only
    /// support PKCS`1`. You can use the `openssl rsa`
    /// tool to convert PKCS`8` keys to PKCS`1`.
    case privateKey = "private-key"
    /// The PEM (ASCII) encoded representation of the certificate's
    /// private key in either PKCS`1` format ("`BEGIN RSA PRIVATE
    /// KEY`") or unencrypted PKCS`8` format ("`BEGIN
    /// PRIVATE KEY`"). This property (or the
    /// `GTlsCertificate:private-key` property) can be set when
    /// constructing a key (eg, from a file), but cannot be read.
    /// 
    /// PKCS`8` format is supported since 2.32; earlier releases only
    /// support PKCS`1`. You can use the `openssl rsa`
    /// tool to convert PKCS`8` keys to PKCS`1`.
    case privateKeyPem = "private-key-pem"
}

public extension TLSCertificateProtocol {
    /// Bind a `TLSCertificatePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: TLSCertificatePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a TLSCertificate property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: TLSCertificatePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a TLSCertificate property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: TLSCertificatePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum TLSCertificateSignalName: String, SignalNameProtocol {
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
    /// The DER (binary) encoded representation of the certificate.
    /// This property and the `GTlsCertificate:certificate-pem` property
    /// represent the same data, just in different forms.
    case notifyCertificate = "notify::certificate"
    /// The PEM (ASCII) encoded representation of the certificate.
    /// This property and the `GTlsCertificate:certificate`
    /// property represent the same data, just in different forms.
    case notifyCertificatePem = "notify::certificate-pem"
    /// A `GTlsCertificate` representing the entity that issued this
    /// certificate. If `nil`, this means that the certificate is either
    /// self-signed, or else the certificate of the issuer is not
    /// available.
    case notifyIssuer = "notify::issuer"
    /// The DER (binary) encoded representation of the certificate's
    /// private key, in either PKCS`1` format or unencrypted PKCS`8`
    /// format. This property (or the `GTlsCertificate:private-key-pem`
    /// property) can be set when constructing a key (eg, from a file),
    /// but cannot be read.
    /// 
    /// PKCS`8` format is supported since 2.32; earlier releases only
    /// support PKCS`1`. You can use the `openssl rsa`
    /// tool to convert PKCS`8` keys to PKCS`1`.
    case notifyPrivateKey = "notify::private-key"
    /// The PEM (ASCII) encoded representation of the certificate's
    /// private key in either PKCS`1` format ("`BEGIN RSA PRIVATE
    /// KEY`") or unencrypted PKCS`8` format ("`BEGIN
    /// PRIVATE KEY`"). This property (or the
    /// `GTlsCertificate:private-key` property) can be set when
    /// constructing a key (eg, from a file), but cannot be read.
    /// 
    /// PKCS`8` format is supported since 2.32; earlier releases only
    /// support PKCS`1`. You can use the `openssl rsa`
    /// tool to convert PKCS`8` keys to PKCS`1`.
    case notifyPrivateKeyPem = "notify::private-key-pem"
}

// MARK: TLSCertificate has no signals
// MARK: TLSCertificate Class: TLSCertificateProtocol extension (methods and fields)
public extension TLSCertificateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsCertificate` instance.
    @inlinable var tls_certificate_ptr: UnsafeMutablePointer<GTlsCertificate>! { return ptr?.assumingMemoryBound(to: GTlsCertificate.self) }

    /// Gets the `GTlsCertificate` representing `cert`'s issuer, if known
    @inlinable func getIssuer() -> TLSCertificateRef! {
        guard let rv = TLSCertificateRef(gconstpointer: gconstpointer(g_tls_certificate_get_issuer(tls_certificate_ptr))) else { return nil }
        return rv
    }

    /// Check if two `GTlsCertificate` objects represent the same certificate.
    /// The raw DER byte data of the two certificates are checked for equality.
    /// This has the effect that two certificates may compare equal even if
    /// their `GTlsCertificate:issuer`, `GTlsCertificate:private-key`, or
    /// `GTlsCertificate:private-key-pem` properties differ.
    @inlinable func isSame<TLSCertificateT: TLSCertificateProtocol>(certTwo: TLSCertificateT) -> Bool {
        let rv = ((g_tls_certificate_is_same(tls_certificate_ptr, certTwo.tls_certificate_ptr)) != 0)
        return rv
    }

    /// This verifies `cert` and returns a set of `GTlsCertificateFlags`
    /// indicating any problems found with it. This can be used to verify a
    /// certificate outside the context of making a connection, or to
    /// check a certificate against a CA that is not part of the system
    /// CA database.
    /// 
    /// If `identity` is not `nil`, `cert`'s `name(s)` will be compared against
    /// it, and `G_TLS_CERTIFICATE_BAD_IDENTITY` will be set in the return
    /// value if it does not match. If `identity` is `nil`, that bit will
    /// never be set in the return value.
    /// 
    /// If `trusted_ca` is not `nil`, then `cert` (or one of the certificates
    /// in its chain) must be signed by it, or else
    /// `G_TLS_CERTIFICATE_UNKNOWN_CA` will be set in the return value. If
    /// `trusted_ca` is `nil`, that bit will never be set in the return
    /// value.
    /// 
    /// (All other `GTlsCertificateFlags` values will always be set or unset
    /// as appropriate.)
    @inlinable func verify(identity: SocketConnectableRef? = nil, trustedCa: TLSCertificateRef? = nil) -> TLSCertificateFlags {
        let rv = TLSCertificateFlags(g_tls_certificate_verify(tls_certificate_ptr, identity?.socket_connectable_ptr, trustedCa?.tls_certificate_ptr))
        return rv
    }
    /// This verifies `cert` and returns a set of `GTlsCertificateFlags`
    /// indicating any problems found with it. This can be used to verify a
    /// certificate outside the context of making a connection, or to
    /// check a certificate against a CA that is not part of the system
    /// CA database.
    /// 
    /// If `identity` is not `nil`, `cert`'s `name(s)` will be compared against
    /// it, and `G_TLS_CERTIFICATE_BAD_IDENTITY` will be set in the return
    /// value if it does not match. If `identity` is `nil`, that bit will
    /// never be set in the return value.
    /// 
    /// If `trusted_ca` is not `nil`, then `cert` (or one of the certificates
    /// in its chain) must be signed by it, or else
    /// `G_TLS_CERTIFICATE_UNKNOWN_CA` will be set in the return value. If
    /// `trusted_ca` is `nil`, that bit will never be set in the return
    /// value.
    /// 
    /// (All other `GTlsCertificateFlags` values will always be set or unset
    /// as appropriate.)
    @inlinable func verify<SocketConnectableT: SocketConnectableProtocol, TLSCertificateT: TLSCertificateProtocol>(identity: SocketConnectableT?, trustedCa: TLSCertificateT?) -> TLSCertificateFlags {
        let rv = TLSCertificateFlags(g_tls_certificate_verify(tls_certificate_ptr, identity?.socket_connectable_ptr, trustedCa?.tls_certificate_ptr))
        return rv
    }

    /// Creates a new `GDtlsServerConnection` wrapping `base_socket`.
    @inlinable func dtlsServerConnectionNew<DatagramBasedT: DatagramBasedProtocol>(baseSocket: DatagramBasedT) throws -> DtlsServerConnectionRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = DtlsServerConnectionRef(gconstpointer: gconstpointer(g_dtls_server_connection_new(baseSocket.datagram_based_ptr, tls_certificate_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Creates a new `GTlsServerConnection` wrapping `base_io_stream` (which
    /// must have pollable input and output streams).
    /// 
    /// See the documentation for `GTlsConnection:base-io-stream` for restrictions
    /// on when application code can run operations on the `base_io_stream` after
    /// this function has returned.
    @inlinable func tlsServerConnectionNew<IOStreamT: IOStreamProtocol>(baseIoStream: IOStreamT) throws -> TLSServerConnectionRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = TLSServerConnectionRef(gconstpointer: gconstpointer(g_tls_server_connection_new(baseIoStream.io_stream_ptr, tls_certificate_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// A `GTlsCertificate` representing the entity that issued this
    /// certificate. If `nil`, this means that the certificate is either
    /// self-signed, or else the certificate of the issuer is not
    /// available.
    @inlinable var issuer: TLSCertificateRef! {
        /// Gets the `GTlsCertificate` representing `cert`'s issuer, if known
        get {
            guard let rv = TLSCertificateRef(gconstpointer: gconstpointer(g_tls_certificate_get_issuer(tls_certificate_ptr))) else { return nil }
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = tls_certificate_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - TLSConnection Class

/// The `TLSConnectionProtocol` protocol exposes the methods and properties of an underlying `GTlsConnection` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TLSConnection`.
/// Alternatively, use `TLSConnectionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GTlsConnection` is the base TLS connection class type, which wraps
/// a `GIOStream` and provides TLS encryption on top of it. Its
/// subclasses, `GTlsClientConnection` and `GTlsServerConnection`,
/// implement client-side and server-side TLS, respectively.
/// 
/// For DTLS (Datagram TLS) support, see `GDtlsConnection`.
public protocol TLSConnectionProtocol: IOStreamProtocol {
        /// Untyped pointer to the underlying `GTlsConnection` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTlsConnection` instance.
    var tls_connection_ptr: UnsafeMutablePointer<GTlsConnection>! { get }

    /// Required Initialiser for types conforming to `TLSConnectionProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `TLSConnectionRef` type acts as a lightweight Swift reference to an underlying `GTlsConnection` instance.
/// It exposes methods that can operate on this data type through `TLSConnectionProtocol` conformance.
/// Use `TLSConnectionRef` only as an `unowned` reference to an existing `GTlsConnection` instance.
///
/// `GTlsConnection` is the base TLS connection class type, which wraps
/// a `GIOStream` and provides TLS encryption on top of it. Its
/// subclasses, `GTlsClientConnection` and `GTlsServerConnection`,
/// implement client-side and server-side TLS, respectively.
/// 
/// For DTLS (Datagram TLS) support, see `GDtlsConnection`.
public struct TLSConnectionRef: TLSConnectionProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GTlsConnection` instance.
    /// For type-safe access, use the generated, typed pointer `tls_connection_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TLSConnectionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTlsConnection>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTlsConnection>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTlsConnection>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTlsConnection>?) {
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

    /// Reference intialiser for a related type that implements `TLSConnectionProtocol`
    @inlinable init<T: TLSConnectionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: TLSConnectionProtocol>(_ other: T) -> TLSConnectionRef { TLSConnectionRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TLSConnection` type acts as a reference-counted owner of an underlying `GTlsConnection` instance.
/// It provides the methods that can operate on this data type through `TLSConnectionProtocol` conformance.
/// Use `TLSConnection` as a strong reference or owner of a `GTlsConnection` instance.
///
/// `GTlsConnection` is the base TLS connection class type, which wraps
/// a `GIOStream` and provides TLS encryption on top of it. Its
/// subclasses, `GTlsClientConnection` and `GTlsServerConnection`,
/// implement client-side and server-side TLS, respectively.
/// 
/// For DTLS (Datagram TLS) support, see `GDtlsConnection`.
open class TLSConnection: IOStream, TLSConnectionProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTlsConnection>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTlsConnection>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSConnection` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTlsConnection>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTlsConnection>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GTlsConnection`.
    /// i.e., ownership is transferred to the `TLSConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTlsConnection>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `TLSConnectionProtocol`
    /// Will retain `GTlsConnection`.
    /// - Parameter other: an instance of a related type that implements `TLSConnectionProtocol`
    @inlinable public init<T: TLSConnectionProtocol>(tlsConnection other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum TLSConnectionPropertyName: String, PropertyNameProtocol {
    /// The list of application-layer protocols that the connection
    /// advertises that it is willing to speak. See
    /// `g_tls_connection_set_advertised_protocols()`.
    case advertisedProtocols = "advertised-protocols"
    /// The `GIOStream` that the connection wraps. The connection holds a reference
    /// to this stream, and may run operations on the stream from other threads
    /// throughout its lifetime. Consequently, after the `GIOStream` has been
    /// constructed, application code may only run its own operations on this
    /// stream when no `GIOStream` operations are running.
    case baseIoStream = "base-io-stream"
    /// The connection's certificate; see
    /// `g_tls_connection_set_certificate()`.
    case certificate = "certificate"
    case closed = "closed"
    /// The certificate database to use when verifying this TLS connection.
    /// If no certificate database is set, then the default database will be
    /// used. See `g_tls_backend_get_default_database()`.
    case database = "database"
    case inputStream = "input-stream"
    /// A `GTlsInteraction` object to be used when the connection or certificate
    /// database need to interact with the user. This will be used to prompt the
    /// user for passwords where necessary.
    case interaction = "interaction"
    /// The application-layer protocol negotiated during the TLS
    /// handshake. See `g_tls_connection_get_negotiated_protocol()`.
    case negotiatedProtocol = "negotiated-protocol"
    case outputStream = "output-stream"
    /// The connection's peer's certificate, after the TLS handshake has
    /// completed or failed. Note in particular that this is not yet set
    /// during the emission of `GTlsConnection::accept-certificate`.
    /// 
    /// (You can watch for a `GObject::notify` signal on this property to
    /// detect when a handshake has occurred.)
    case peerCertificate = "peer-certificate"
    /// The errors noticed while verifying
    /// `GTlsConnection:peer-certificate`. Normally this should be 0, but
    /// it may not be if `GTlsClientConnection:validation-flags` is not
    /// `G_TLS_CERTIFICATE_VALIDATE_ALL`, or if
    /// `GTlsConnection::accept-certificate` overrode the default
    /// behavior.
    case peerCertificateErrors = "peer-certificate-errors"
    /// The rehandshaking mode. See
    /// `g_tls_connection_set_rehandshake_mode()`.
    ///
    /// **rehandshake-mode is deprecated:**
    /// The rehandshake mode is ignored.
    case rehandshakeMode = "rehandshake-mode"
    /// Whether or not proper TLS close notification is required.
    /// See `g_tls_connection_set_require_close_notify()`.
    case requireCloseNotify = "require-close-notify"
    /// Whether or not the system certificate database will be used to
    /// verify peer certificates. See
    /// `g_tls_connection_set_use_system_certdb()`.
    ///
    /// **use-system-certdb is deprecated:**
    /// Use GTlsConnection:database instead
    case useSystemCertdb = "use-system-certdb"
}

public extension TLSConnectionProtocol {
    /// Bind a `TLSConnectionPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: TLSConnectionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a TLSConnection property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: TLSConnectionPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a TLSConnection property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: TLSConnectionPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum TLSConnectionSignalName: String, SignalNameProtocol {
    /// Emitted during the TLS handshake after the peer certificate has
    /// been received. You can examine `peer_cert`'s certification path by
    /// calling `g_tls_certificate_get_issuer()` on it.
    /// 
    /// For a client-side connection, `peer_cert` is the server's
    /// certificate, and the signal will only be emitted if the
    /// certificate was not acceptable according to `conn`'s
    /// `GTlsClientConnection:validation_flags`. If you would like the
    /// certificate to be accepted despite `errors`, return `true` from the
    /// signal handler. Otherwise, if no handler accepts the certificate,
    /// the handshake will fail with `G_TLS_ERROR_BAD_CERTIFICATE`.
    /// 
    /// For a server-side connection, `peer_cert` is the certificate
    /// presented by the client, if this was requested via the server's
    /// `GTlsServerConnection:authentication_mode`. On the server side,
    /// the signal is always emitted when the client presents a
    /// certificate, and the certificate will only be accepted if a
    /// handler returns `true`.
    /// 
    /// Note that if this signal is emitted as part of asynchronous I/O
    /// in the main thread, then you should not attempt to interact with
    /// the user before returning from the signal handler. If you want to
    /// let the user decide whether or not to accept the certificate, you
    /// would have to return `false` from the signal handler on the first
    /// attempt, and then after the connection attempt returns a
    /// `G_TLS_ERROR_BAD_CERTIFICATE`, you can interact with the user, and
    /// if the user decides to accept the certificate, remember that fact,
    /// create a new connection, and return `true` from the signal handler
    /// the next time.
    /// 
    /// If you are doing I/O in another thread, you do not
    /// need to worry about this, and can simply block in the signal
    /// handler until the UI thread returns an answer.
    case acceptCertificate = "accept-certificate"
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
    /// The list of application-layer protocols that the connection
    /// advertises that it is willing to speak. See
    /// `g_tls_connection_set_advertised_protocols()`.
    case notifyAdvertisedProtocols = "notify::advertised-protocols"
    /// The `GIOStream` that the connection wraps. The connection holds a reference
    /// to this stream, and may run operations on the stream from other threads
    /// throughout its lifetime. Consequently, after the `GIOStream` has been
    /// constructed, application code may only run its own operations on this
    /// stream when no `GIOStream` operations are running.
    case notifyBaseIoStream = "notify::base-io-stream"
    /// The connection's certificate; see
    /// `g_tls_connection_set_certificate()`.
    case notifyCertificate = "notify::certificate"
    case notifyClosed = "notify::closed"
    /// The certificate database to use when verifying this TLS connection.
    /// If no certificate database is set, then the default database will be
    /// used. See `g_tls_backend_get_default_database()`.
    case notifyDatabase = "notify::database"
    case notifyInputStream = "notify::input-stream"
    /// A `GTlsInteraction` object to be used when the connection or certificate
    /// database need to interact with the user. This will be used to prompt the
    /// user for passwords where necessary.
    case notifyInteraction = "notify::interaction"
    /// The application-layer protocol negotiated during the TLS
    /// handshake. See `g_tls_connection_get_negotiated_protocol()`.
    case notifyNegotiatedProtocol = "notify::negotiated-protocol"
    case notifyOutputStream = "notify::output-stream"
    /// The connection's peer's certificate, after the TLS handshake has
    /// completed or failed. Note in particular that this is not yet set
    /// during the emission of `GTlsConnection::accept-certificate`.
    /// 
    /// (You can watch for a `GObject::notify` signal on this property to
    /// detect when a handshake has occurred.)
    case notifyPeerCertificate = "notify::peer-certificate"
    /// The errors noticed while verifying
    /// `GTlsConnection:peer-certificate`. Normally this should be 0, but
    /// it may not be if `GTlsClientConnection:validation-flags` is not
    /// `G_TLS_CERTIFICATE_VALIDATE_ALL`, or if
    /// `GTlsConnection::accept-certificate` overrode the default
    /// behavior.
    case notifyPeerCertificateErrors = "notify::peer-certificate-errors"
    /// The rehandshaking mode. See
    /// `g_tls_connection_set_rehandshake_mode()`.
    ///
    /// **rehandshake-mode is deprecated:**
    /// The rehandshake mode is ignored.
    case notifyRehandshakeMode = "notify::rehandshake-mode"
    /// Whether or not proper TLS close notification is required.
    /// See `g_tls_connection_set_require_close_notify()`.
    case notifyRequireCloseNotify = "notify::require-close-notify"
    /// Whether or not the system certificate database will be used to
    /// verify peer certificates. See
    /// `g_tls_connection_set_use_system_certdb()`.
    ///
    /// **use-system-certdb is deprecated:**
    /// Use GTlsConnection:database instead
    case notifyUseSystemCertdb = "notify::use-system-certdb"
}

// MARK: TLSConnection signals
public extension TLSConnectionProtocol {
    /// Connect a Swift signal handler to the given, typed `TLSConnectionSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: TLSConnectionSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `TLSConnectionSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: TLSConnectionSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted during the TLS handshake after the peer certificate has
    /// been received. You can examine `peer_cert`'s certification path by
    /// calling `g_tls_certificate_get_issuer()` on it.
    /// 
    /// For a client-side connection, `peer_cert` is the server's
    /// certificate, and the signal will only be emitted if the
    /// certificate was not acceptable according to `conn`'s
    /// `GTlsClientConnection:validation_flags`. If you would like the
    /// certificate to be accepted despite `errors`, return `true` from the
    /// signal handler. Otherwise, if no handler accepts the certificate,
    /// the handshake will fail with `G_TLS_ERROR_BAD_CERTIFICATE`.
    /// 
    /// For a server-side connection, `peer_cert` is the certificate
    /// presented by the client, if this was requested via the server's
    /// `GTlsServerConnection:authentication_mode`. On the server side,
    /// the signal is always emitted when the client presents a
    /// certificate, and the certificate will only be accepted if a
    /// handler returns `true`.
    /// 
    /// Note that if this signal is emitted as part of asynchronous I/O
    /// in the main thread, then you should not attempt to interact with
    /// the user before returning from the signal handler. If you want to
    /// let the user decide whether or not to accept the certificate, you
    /// would have to return `false` from the signal handler on the first
    /// attempt, and then after the connection attempt returns a
    /// `G_TLS_ERROR_BAD_CERTIFICATE`, you can interact with the user, and
    /// if the user decides to accept the certificate, remember that fact,
    /// create a new connection, and return `true` from the signal handler
    /// the next time.
    /// 
    /// If you are doing I/O in another thread, you do not
    /// need to worry about this, and can simply block in the signal
    /// handler until the UI thread returns an answer.
    /// - Note: This represents the underlying `accept-certificate` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter peerCert: the peer's `GTlsCertificate`
    /// - Parameter errors: the problems with `peer_cert`.
    /// - Parameter handler: `true` to accept `peer_cert` (which will also immediately end the signal emission). `false` to allow the signal emission to continue, which will cause the handshake to fail if no one else overrides it.
    /// Run the given callback whenever the `acceptCertificate` signal is emitted
    @discardableResult @inlinable func onAcceptCertificate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: TLSConnectionRef, _ peerCert: TLSCertificateRef, _ errors: TLSCertificateFlags) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<TLSConnectionRef, TLSCertificateRef, TLSCertificateFlags, Bool>
        let cCallback: @convention(c) (gpointer, gpointer, UInt32, gpointer) -> gboolean = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(TLSConnectionRef(raw: unownedSelf), TLSCertificateRef(raw: arg1), TLSCertificateFlags(arg2))
            return gboolean((output) ? 1 : 0)
        }
        return connect(
            signal: .acceptCertificate,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `accept-certificate` signal for using the `connect(signal:)` methods
    static var acceptCertificateSignal: TLSConnectionSignalName { .acceptCertificate }
    
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
    /// - Note: This represents the underlying `notify::advertised-protocols` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyAdvertisedProtocols` signal is emitted
    @discardableResult @inlinable func onNotifyAdvertisedProtocols(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: TLSConnectionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<TLSConnectionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(TLSConnectionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyAdvertisedProtocols,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::advertised-protocols` signal for using the `connect(signal:)` methods
    static var notifyAdvertisedProtocolsSignal: TLSConnectionSignalName { .notifyAdvertisedProtocols }
    
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
    /// - Note: This represents the underlying `notify::base-io-stream` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyBaseIoStream` signal is emitted
    @discardableResult @inlinable func onNotifyBaseIoStream(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: TLSConnectionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<TLSConnectionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(TLSConnectionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyBaseIoStream,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::base-io-stream` signal for using the `connect(signal:)` methods
    static var notifyBaseIoStreamSignal: TLSConnectionSignalName { .notifyBaseIoStream }
    
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
    /// - Note: This represents the underlying `notify::certificate` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyCertificate` signal is emitted
    @discardableResult @inlinable func onNotifyCertificate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: TLSConnectionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<TLSConnectionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(TLSConnectionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyCertificate,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::certificate` signal for using the `connect(signal:)` methods
    static var notifyCertificateSignal: TLSConnectionSignalName { .notifyCertificate }
    
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
    /// - Note: This represents the underlying `notify::database` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyDatabase` signal is emitted
    @discardableResult @inlinable func onNotifyDatabase(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: TLSConnectionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<TLSConnectionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(TLSConnectionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyDatabase,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::database` signal for using the `connect(signal:)` methods
    static var notifyDatabaseSignal: TLSConnectionSignalName { .notifyDatabase }
    
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
    /// - Note: This represents the underlying `notify::interaction` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyInteraction` signal is emitted
    @discardableResult @inlinable func onNotifyInteraction(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: TLSConnectionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<TLSConnectionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(TLSConnectionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyInteraction,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::interaction` signal for using the `connect(signal:)` methods
    static var notifyInteractionSignal: TLSConnectionSignalName { .notifyInteraction }
    
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
    /// - Note: This represents the underlying `notify::negotiated-protocol` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyNegotiatedProtocol` signal is emitted
    @discardableResult @inlinable func onNotifyNegotiatedProtocol(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: TLSConnectionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<TLSConnectionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(TLSConnectionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyNegotiatedProtocol,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::negotiated-protocol` signal for using the `connect(signal:)` methods
    static var notifyNegotiatedProtocolSignal: TLSConnectionSignalName { .notifyNegotiatedProtocol }
    
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
    /// - Note: This represents the underlying `notify::peer-certificate` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyPeerCertificate` signal is emitted
    @discardableResult @inlinable func onNotifyPeerCertificate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: TLSConnectionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<TLSConnectionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(TLSConnectionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyPeerCertificate,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::peer-certificate` signal for using the `connect(signal:)` methods
    static var notifyPeerCertificateSignal: TLSConnectionSignalName { .notifyPeerCertificate }
    
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
    /// - Note: This represents the underlying `notify::peer-certificate-errors` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyPeerCertificateErrors` signal is emitted
    @discardableResult @inlinable func onNotifyPeerCertificateErrors(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: TLSConnectionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<TLSConnectionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(TLSConnectionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyPeerCertificateErrors,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::peer-certificate-errors` signal for using the `connect(signal:)` methods
    static var notifyPeerCertificateErrorsSignal: TLSConnectionSignalName { .notifyPeerCertificateErrors }
    
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
    /// - Note: This represents the underlying `notify::rehandshake-mode` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyRehandshakeMode` signal is emitted
    @discardableResult @inlinable func onNotifyRehandshakeMode(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: TLSConnectionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<TLSConnectionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(TLSConnectionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyRehandshakeMode,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::rehandshake-mode` signal for using the `connect(signal:)` methods
    static var notifyRehandshakeModeSignal: TLSConnectionSignalName { .notifyRehandshakeMode }
    
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
    /// - Note: This represents the underlying `notify::require-close-notify` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyRequireCloseNotify` signal is emitted
    @discardableResult @inlinable func onNotifyRequireCloseNotify(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: TLSConnectionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<TLSConnectionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(TLSConnectionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyRequireCloseNotify,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::require-close-notify` signal for using the `connect(signal:)` methods
    static var notifyRequireCloseNotifySignal: TLSConnectionSignalName { .notifyRequireCloseNotify }
    
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
    /// - Note: This represents the underlying `notify::use-system-certdb` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyUseSystemCertdb` signal is emitted
    @discardableResult @inlinable func onNotifyUseSystemCertdb(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: TLSConnectionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<TLSConnectionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(TLSConnectionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyUseSystemCertdb,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::use-system-certdb` signal for using the `connect(signal:)` methods
    static var notifyUseSystemCertdbSignal: TLSConnectionSignalName { .notifyUseSystemCertdb }
    
}

// MARK: TLSConnection Class: TLSConnectionProtocol extension (methods and fields)
public extension TLSConnectionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsConnection` instance.
    @inlinable var tls_connection_ptr: UnsafeMutablePointer<GTlsConnection>! { return ptr?.assumingMemoryBound(to: GTlsConnection.self) }

    /// Used by `GTlsConnection` implementations to emit the
    /// `GTlsConnection::accept-certificate` signal.
    @inlinable func emitAcceptCertificate<TLSCertificateT: TLSCertificateProtocol>(peerCert: TLSCertificateT, errors: TLSCertificateFlags) -> Bool {
        let rv = ((g_tls_connection_emit_accept_certificate(tls_connection_ptr, peerCert.tls_certificate_ptr, errors.value)) != 0)
        return rv
    }

    /// Gets `conn`'s certificate, as set by
    /// `g_tls_connection_set_certificate()`.
    @inlinable func getCertificate() -> TLSCertificateRef! {
        let rv = TLSCertificateRef(gconstpointer: gconstpointer(g_tls_connection_get_certificate(tls_connection_ptr)))
        return rv
    }

    /// Query the TLS backend for TLS channel binding data of `type` for `conn`.
    /// 
    /// This call retrieves TLS channel binding data as specified in RFC
    /// [5056](https://tools.ietf.org/html/rfc5056), RFC
    /// [5929](https://tools.ietf.org/html/rfc5929), and related RFCs.  The
    /// binding data is returned in `data`.  The `data` is resized by the callee
    /// using `GByteArray` buffer management and will be freed when the `data`
    /// is destroyed by `g_byte_array_unref()`. If `data` is `nil`, it will only
    /// check whether TLS backend is able to fetch the data (e.g. whether `type`
    /// is supported by the TLS backend). It does not guarantee that the data
    /// will be available though.  That could happen if TLS connection does not
    /// support `type` or the binding data is not available yet due to additional
    /// negotiation or input required.
    @inlinable func getChannelBindingData(type: GTlsChannelBindingType, data: GLib.ByteArrayRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_tls_connection_get_channel_binding_data(tls_connection_ptr, type, data?.byte_array_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Query the TLS backend for TLS channel binding data of `type` for `conn`.
    /// 
    /// This call retrieves TLS channel binding data as specified in RFC
    /// [5056](https://tools.ietf.org/html/rfc5056), RFC
    /// [5929](https://tools.ietf.org/html/rfc5929), and related RFCs.  The
    /// binding data is returned in `data`.  The `data` is resized by the callee
    /// using `GByteArray` buffer management and will be freed when the `data`
    /// is destroyed by `g_byte_array_unref()`. If `data` is `nil`, it will only
    /// check whether TLS backend is able to fetch the data (e.g. whether `type`
    /// is supported by the TLS backend). It does not guarantee that the data
    /// will be available though.  That could happen if TLS connection does not
    /// support `type` or the binding data is not available yet due to additional
    /// negotiation or input required.
    @inlinable func getChannelBindingData<ByteArrayT: GLib.ByteArrayProtocol>(type: GTlsChannelBindingType, data: ByteArrayT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_tls_connection_get_channel_binding_data(tls_connection_ptr, type, data?.byte_array_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Gets the certificate database that `conn` uses to verify
    /// peer certificates. See `g_tls_connection_set_database()`.
    @inlinable func getDatabase() -> TLSDatabaseRef! {
        let rv = TLSDatabaseRef(gconstpointer: gconstpointer(g_tls_connection_get_database(tls_connection_ptr)))
        return rv
    }

    /// Get the object that will be used to interact with the user. It will be used
    /// for things like prompting the user for passwords. If `nil` is returned, then
    /// no user interaction will occur for this connection.
    @inlinable func getInteraction() -> TLSInteractionRef! {
        let rv = TLSInteractionRef(gconstpointer: gconstpointer(g_tls_connection_get_interaction(tls_connection_ptr)))
        return rv
    }

    /// Gets the name of the application-layer protocol negotiated during
    /// the handshake.
    /// 
    /// If the peer did not use the ALPN extension, or did not advertise a
    /// protocol that matched one of `conn`'s protocols, or the TLS backend
    /// does not support ALPN, then this will be `nil`. See
    /// `g_tls_connection_set_advertised_protocols()`.
    @inlinable func getNegotiatedProtocol() -> String! {
        let rv = g_tls_connection_get_negotiated_protocol(tls_connection_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets `conn`'s peer's certificate after the handshake has completed
    /// or failed. (It is not set during the emission of
    /// `GTlsConnection::accept-certificate`.)
    @inlinable func getPeerCertificate() -> TLSCertificateRef! {
        let rv = TLSCertificateRef(gconstpointer: gconstpointer(g_tls_connection_get_peer_certificate(tls_connection_ptr)))
        return rv
    }

    /// Gets the errors associated with validating `conn`'s peer's
    /// certificate, after the handshake has completed or failed. (It is
    /// not set during the emission of `GTlsConnection::accept-certificate`.)
    @inlinable func getPeerCertificateErrors() -> TLSCertificateFlags {
        let rv = TLSCertificateFlags(g_tls_connection_get_peer_certificate_errors(tls_connection_ptr))
        return rv
    }

    /// Gets `conn` rehandshaking mode. See
    /// `g_tls_connection_set_rehandshake_mode()` for details.
    ///
    /// **get_rehandshake_mode is deprecated:**
    /// Changing the rehandshake mode is no longer
    ///   required for compatibility. Also, rehandshaking has been removed
    ///   from the TLS protocol in TLS 1.3.
    @available(*, deprecated) @inlinable func getRehandshakeMode() -> GTlsRehandshakeMode {
        let rv = g_tls_connection_get_rehandshake_mode(tls_connection_ptr)
        return rv
    }

    /// Tests whether or not `conn` expects a proper TLS close notification
    /// when the connection is closed. See
    /// `g_tls_connection_set_require_close_notify()` for details.
    @inlinable func getRequireCloseNotify() -> Bool {
        let rv = ((g_tls_connection_get_require_close_notify(tls_connection_ptr)) != 0)
        return rv
    }

    /// Gets whether `conn` uses the system certificate database to verify
    /// peer certificates. See `g_tls_connection_set_use_system_certdb()`.
    ///
    /// **get_use_system_certdb is deprecated:**
    /// Use g_tls_connection_get_database() instead
    @available(*, deprecated) @inlinable func getUseSystemCertdb() -> Bool {
        let rv = ((g_tls_connection_get_use_system_certdb(tls_connection_ptr)) != 0)
        return rv
    }

    /// Attempts a TLS handshake on `conn`.
    /// 
    /// On the client side, it is never necessary to call this method;
    /// although the connection needs to perform a handshake after
    /// connecting (or after sending a "STARTTLS"-type command),
    /// `GTlsConnection` will handle this for you automatically when you try
    /// to send or receive data on the connection. You can call
    /// `g_tls_connection_handshake()` manually if you want to know whether
    /// the initial handshake succeeded or failed (as opposed to just
    /// immediately trying to use `conn` to read or write, in which case,
    /// if it fails, it may not be possible to tell if it failed before or
    /// after completing the handshake), but beware that servers may reject
    /// client authentication after the handshake has completed, so a
    /// successful handshake does not indicate the connection will be usable.
    /// 
    /// Likewise, on the server side, although a handshake is necessary at
    /// the beginning of the communication, you do not need to call this
    /// function explicitly unless you want clearer error reporting.
    /// 
    /// Previously, calling `g_tls_connection_handshake()` after the initial
    /// handshake would trigger a rehandshake; however, this usage was
    /// deprecated in GLib 2.60 because rehandshaking was removed from the
    /// TLS protocol in TLS 1.3. Since GLib 2.64, calling this function after
    /// the initial handshake will no longer do anything.
    /// 
    /// When using a `GTlsConnection` created by `GSocketClient`, the
    /// `GSocketClient` performs the initial handshake, so calling this
    /// function manually is not recommended.
    /// 
    /// `GTlsConnection::accept_certificate` may be emitted during the
    /// handshake.
    @inlinable func handshake(cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_tls_connection_handshake(tls_connection_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Attempts a TLS handshake on `conn`.
    /// 
    /// On the client side, it is never necessary to call this method;
    /// although the connection needs to perform a handshake after
    /// connecting (or after sending a "STARTTLS"-type command),
    /// `GTlsConnection` will handle this for you automatically when you try
    /// to send or receive data on the connection. You can call
    /// `g_tls_connection_handshake()` manually if you want to know whether
    /// the initial handshake succeeded or failed (as opposed to just
    /// immediately trying to use `conn` to read or write, in which case,
    /// if it fails, it may not be possible to tell if it failed before or
    /// after completing the handshake), but beware that servers may reject
    /// client authentication after the handshake has completed, so a
    /// successful handshake does not indicate the connection will be usable.
    /// 
    /// Likewise, on the server side, although a handshake is necessary at
    /// the beginning of the communication, you do not need to call this
    /// function explicitly unless you want clearer error reporting.
    /// 
    /// Previously, calling `g_tls_connection_handshake()` after the initial
    /// handshake would trigger a rehandshake; however, this usage was
    /// deprecated in GLib 2.60 because rehandshaking was removed from the
    /// TLS protocol in TLS 1.3. Since GLib 2.64, calling this function after
    /// the initial handshake will no longer do anything.
    /// 
    /// When using a `GTlsConnection` created by `GSocketClient`, the
    /// `GSocketClient` performs the initial handshake, so calling this
    /// function manually is not recommended.
    /// 
    /// `GTlsConnection::accept_certificate` may be emitted during the
    /// handshake.
    @inlinable func handshake<CancellableT: CancellableProtocol>(cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_tls_connection_handshake(tls_connection_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously performs a TLS handshake on `conn`. See
    /// `g_tls_connection_handshake()` for more information.
    @inlinable func handshakeAsync(ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_tls_connection_handshake_async(tls_connection_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously performs a TLS handshake on `conn`. See
    /// `g_tls_connection_handshake()` for more information.
    @inlinable func handshakeAsync<CancellableT: CancellableProtocol>(ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_tls_connection_handshake_async(tls_connection_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finish an asynchronous TLS handshake operation. See
    /// `g_tls_connection_handshake()` for more information.
    @inlinable func handshakeFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_tls_connection_handshake_finish(tls_connection_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Sets the list of application-layer protocols to advertise that the
    /// caller is willing to speak on this connection. The
    /// Application-Layer Protocol Negotiation (ALPN) extension will be
    /// used to negotiate a compatible protocol with the peer; use
    /// `g_tls_connection_get_negotiated_protocol()` to find the negotiated
    /// protocol after the handshake.  Specifying `nil` for the the value
    /// of `protocols` will disable ALPN negotiation.
    /// 
    /// See [IANA TLS ALPN Protocol IDs](https://www.iana.org/assignments/tls-extensiontype-values/tls-extensiontype-values.xhtml`alpn-protocol-ids`)
    /// for a list of registered protocol IDs.
    @inlinable func setAdvertised(protocols: UnsafePointer<UnsafePointer<gchar>?>! = nil) {
        g_tls_connection_set_advertised_protocols(tls_connection_ptr, protocols)
    
    }

    /// This sets the certificate that `conn` will present to its peer
    /// during the TLS handshake. For a `GTlsServerConnection`, it is
    /// mandatory to set this, and that will normally be done at construct
    /// time.
    /// 
    /// For a `GTlsClientConnection`, this is optional. If a handshake fails
    /// with `G_TLS_ERROR_CERTIFICATE_REQUIRED`, that means that the server
    /// requires a certificate, and if you try connecting again, you should
    /// call this method first. You can call
    /// `g_tls_client_connection_get_accepted_cas()` on the failed connection
    /// to get a list of Certificate Authorities that the server will
    /// accept certificates from.
    /// 
    /// (It is also possible that a server will allow the connection with
    /// or without a certificate; in that case, if you don't provide a
    /// certificate, you can tell that the server requested one by the fact
    /// that `g_tls_client_connection_get_accepted_cas()` will return
    /// non-`nil`.)
    @inlinable func set<TLSCertificateT: TLSCertificateProtocol>(certificate: TLSCertificateT) {
        g_tls_connection_set_certificate(tls_connection_ptr, certificate.tls_certificate_ptr)
    
    }

    /// Sets the certificate database that is used to verify peer certificates.
    /// This is set to the default database by default. See
    /// `g_tls_backend_get_default_database()`. If set to `nil`, then
    /// peer certificate validation will always set the
    /// `G_TLS_CERTIFICATE_UNKNOWN_CA` error (meaning
    /// `GTlsConnection::accept-certificate` will always be emitted on
    /// client-side connections, unless that bit is not set in
    /// `GTlsClientConnection:validation-flags`).
    @inlinable func set(database: TLSDatabaseRef? = nil) {
        g_tls_connection_set_database(tls_connection_ptr, database?.tls_database_ptr)
    
    }
    /// Sets the certificate database that is used to verify peer certificates.
    /// This is set to the default database by default. See
    /// `g_tls_backend_get_default_database()`. If set to `nil`, then
    /// peer certificate validation will always set the
    /// `G_TLS_CERTIFICATE_UNKNOWN_CA` error (meaning
    /// `GTlsConnection::accept-certificate` will always be emitted on
    /// client-side connections, unless that bit is not set in
    /// `GTlsClientConnection:validation-flags`).
    @inlinable func set<TLSDatabaseT: TLSDatabaseProtocol>(database: TLSDatabaseT?) {
        g_tls_connection_set_database(tls_connection_ptr, database?.tls_database_ptr)
    
    }

    /// Set the object that will be used to interact with the user. It will be used
    /// for things like prompting the user for passwords.
    /// 
    /// The `interaction` argument will normally be a derived subclass of
    /// `GTlsInteraction`. `nil` can also be provided if no user interaction
    /// should occur for this connection.
    @inlinable func set(interaction: TLSInteractionRef? = nil) {
        g_tls_connection_set_interaction(tls_connection_ptr, interaction?.tls_interaction_ptr)
    
    }
    /// Set the object that will be used to interact with the user. It will be used
    /// for things like prompting the user for passwords.
    /// 
    /// The `interaction` argument will normally be a derived subclass of
    /// `GTlsInteraction`. `nil` can also be provided if no user interaction
    /// should occur for this connection.
    @inlinable func set<TLSInteractionT: TLSInteractionProtocol>(interaction: TLSInteractionT?) {
        g_tls_connection_set_interaction(tls_connection_ptr, interaction?.tls_interaction_ptr)
    
    }

    /// Since GLib 2.64, changing the rehandshake mode is no longer supported
    /// and will have no effect. With TLS 1.3, rehandshaking has been removed from
    /// the TLS protocol, replaced by separate post-handshake authentication and
    /// rekey operations.
    ///
    /// **set_rehandshake_mode is deprecated:**
    /// Changing the rehandshake mode is no longer
    ///   required for compatibility. Also, rehandshaking has been removed
    ///   from the TLS protocol in TLS 1.3.
    @available(*, deprecated) @inlinable func setRehandshake(mode: GTlsRehandshakeMode) {
        g_tls_connection_set_rehandshake_mode(tls_connection_ptr, mode)
    
    }

    /// Sets whether or not `conn` expects a proper TLS close notification
    /// before the connection is closed. If this is `true` (the default),
    /// then `conn` will expect to receive a TLS close notification from its
    /// peer before the connection is closed, and will return a
    /// `G_TLS_ERROR_EOF` error if the connection is closed without proper
    /// notification (since this may indicate a network error, or
    /// man-in-the-middle attack).
    /// 
    /// In some protocols, the application will know whether or not the
    /// connection was closed cleanly based on application-level data
    /// (because the application-level data includes a length field, or is
    /// somehow self-delimiting); in this case, the close notify is
    /// redundant and sometimes omitted. (TLS 1.1 explicitly allows this;
    /// in TLS 1.0 it is technically an error, but often done anyway.) You
    /// can use `g_tls_connection_set_require_close_notify()` to tell `conn`
    /// to allow an "unannounced" connection close, in which case the close
    /// will show up as a 0-length read, as in a non-TLS
    /// `GSocketConnection`, and it is up to the application to check that
    /// the data has been fully received.
    /// 
    /// Note that this only affects the behavior when the peer closes the
    /// connection; when the application calls `g_io_stream_close()` itself
    /// on `conn`, this will send a close notification regardless of the
    /// setting of this property. If you explicitly want to do an unclean
    /// close, you can close `conn`'s `GTlsConnection:base-io-stream` rather
    /// than closing `conn` itself, but note that this may only be done when no other
    /// operations are pending on `conn` or the base I/O stream.
    @inlinable func set(requireCloseNotify: Bool) {
        g_tls_connection_set_require_close_notify(tls_connection_ptr, gboolean((requireCloseNotify) ? 1 : 0))
    
    }

    /// Sets whether `conn` uses the system certificate database to verify
    /// peer certificates. This is `true` by default. If set to `false`, then
    /// peer certificate validation will always set the
    /// `G_TLS_CERTIFICATE_UNKNOWN_CA` error (meaning
    /// `GTlsConnection::accept-certificate` will always be emitted on
    /// client-side connections, unless that bit is not set in
    /// `GTlsClientConnection:validation-flags`).
    ///
    /// **set_use_system_certdb is deprecated:**
    /// Use g_tls_connection_set_database() instead
    @available(*, deprecated) @inlinable func set(useSystemCertdb: Bool) {
        g_tls_connection_set_use_system_certdb(tls_connection_ptr, gboolean((useSystemCertdb) ? 1 : 0))
    
    }
    /// The connection's certificate; see
    /// `g_tls_connection_set_certificate()`.
    @inlinable var certificate: TLSCertificateRef! {
        /// Gets `conn`'s certificate, as set by
        /// `g_tls_connection_set_certificate()`.
        get {
            let rv = TLSCertificateRef(gconstpointer: gconstpointer(g_tls_connection_get_certificate(tls_connection_ptr)))
            return rv
        }
        /// This sets the certificate that `conn` will present to its peer
        /// during the TLS handshake. For a `GTlsServerConnection`, it is
        /// mandatory to set this, and that will normally be done at construct
        /// time.
        /// 
        /// For a `GTlsClientConnection`, this is optional. If a handshake fails
        /// with `G_TLS_ERROR_CERTIFICATE_REQUIRED`, that means that the server
        /// requires a certificate, and if you try connecting again, you should
        /// call this method first. You can call
        /// `g_tls_client_connection_get_accepted_cas()` on the failed connection
        /// to get a list of Certificate Authorities that the server will
        /// accept certificates from.
        /// 
        /// (It is also possible that a server will allow the connection with
        /// or without a certificate; in that case, if you don't provide a
        /// certificate, you can tell that the server requested one by the fact
        /// that `g_tls_client_connection_get_accepted_cas()` will return
        /// non-`nil`.)
        nonmutating set {
            g_tls_connection_set_certificate(tls_connection_ptr, UnsafeMutablePointer<GTlsCertificate>(newValue?.tls_certificate_ptr))
        }
    }

    /// The certificate database to use when verifying this TLS connection.
    /// If no certificate database is set, then the default database will be
    /// used. See `g_tls_backend_get_default_database()`.
    @inlinable var database: TLSDatabaseRef! {
        /// Gets the certificate database that `conn` uses to verify
        /// peer certificates. See `g_tls_connection_set_database()`.
        get {
            let rv = TLSDatabaseRef(gconstpointer: gconstpointer(g_tls_connection_get_database(tls_connection_ptr)))
            return rv
        }
        /// Sets the certificate database that is used to verify peer certificates.
        /// This is set to the default database by default. See
        /// `g_tls_backend_get_default_database()`. If set to `nil`, then
        /// peer certificate validation will always set the
        /// `G_TLS_CERTIFICATE_UNKNOWN_CA` error (meaning
        /// `GTlsConnection::accept-certificate` will always be emitted on
        /// client-side connections, unless that bit is not set in
        /// `GTlsClientConnection:validation-flags`).
        nonmutating set {
            g_tls_connection_set_database(tls_connection_ptr, UnsafeMutablePointer<GTlsDatabase>(newValue?.tls_database_ptr))
        }
    }

    /// A `GTlsInteraction` object to be used when the connection or certificate
    /// database need to interact with the user. This will be used to prompt the
    /// user for passwords where necessary.
    @inlinable var interaction: TLSInteractionRef! {
        /// Get the object that will be used to interact with the user. It will be used
        /// for things like prompting the user for passwords. If `nil` is returned, then
        /// no user interaction will occur for this connection.
        get {
            let rv = TLSInteractionRef(gconstpointer: gconstpointer(g_tls_connection_get_interaction(tls_connection_ptr)))
            return rv
        }
        /// Set the object that will be used to interact with the user. It will be used
        /// for things like prompting the user for passwords.
        /// 
        /// The `interaction` argument will normally be a derived subclass of
        /// `GTlsInteraction`. `nil` can also be provided if no user interaction
        /// should occur for this connection.
        nonmutating set {
            g_tls_connection_set_interaction(tls_connection_ptr, UnsafeMutablePointer<GTlsInteraction>(newValue?.tls_interaction_ptr))
        }
    }

    /// Gets the name of the application-layer protocol negotiated during
    /// the handshake.
    /// 
    /// If the peer did not use the ALPN extension, or did not advertise a
    /// protocol that matched one of `conn`'s protocols, or the TLS backend
    /// does not support ALPN, then this will be `nil`. See
    /// `g_tls_connection_set_advertised_protocols()`.
    @inlinable var negotiatedProtocol: String! {
        /// Gets the name of the application-layer protocol negotiated during
        /// the handshake.
        /// 
        /// If the peer did not use the ALPN extension, or did not advertise a
        /// protocol that matched one of `conn`'s protocols, or the TLS backend
        /// does not support ALPN, then this will be `nil`. See
        /// `g_tls_connection_set_advertised_protocols()`.
        get {
            let rv = g_tls_connection_get_negotiated_protocol(tls_connection_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets `conn`'s peer's certificate after the handshake has completed
    /// or failed. (It is not set during the emission of
    /// `GTlsConnection::accept-certificate`.)
    @inlinable var peerCertificate: TLSCertificateRef! {
        /// Gets `conn`'s peer's certificate after the handshake has completed
        /// or failed. (It is not set during the emission of
        /// `GTlsConnection::accept-certificate`.)
        get {
            let rv = TLSCertificateRef(gconstpointer: gconstpointer(g_tls_connection_get_peer_certificate(tls_connection_ptr)))
            return rv
        }
    }

    /// Gets the errors associated with validating `conn`'s peer's
    /// certificate, after the handshake has completed or failed. (It is
    /// not set during the emission of `GTlsConnection::accept-certificate`.)
    @inlinable var peerCertificateErrors: TLSCertificateFlags {
        /// Gets the errors associated with validating `conn`'s peer's
        /// certificate, after the handshake has completed or failed. (It is
        /// not set during the emission of `GTlsConnection::accept-certificate`.)
        get {
            let rv = TLSCertificateFlags(g_tls_connection_get_peer_certificate_errors(tls_connection_ptr))
            return rv
        }
    }

    /// Gets `conn` rehandshaking mode. See
    /// `g_tls_connection_set_rehandshake_mode()` for details.
    ///
    /// **get_rehandshake_mode is deprecated:**
    /// Changing the rehandshake mode is no longer
    ///   required for compatibility. Also, rehandshaking has been removed
    ///   from the TLS protocol in TLS 1.3.
    @inlinable var rehandshakeMode: GTlsRehandshakeMode {
        /// Gets `conn` rehandshaking mode. See
        /// `g_tls_connection_set_rehandshake_mode()` for details.
        ///
        /// **get_rehandshake_mode is deprecated:**
        /// Changing the rehandshake mode is no longer
        ///   required for compatibility. Also, rehandshaking has been removed
        ///   from the TLS protocol in TLS 1.3.
        @available(*, deprecated) get {
            let rv = g_tls_connection_get_rehandshake_mode(tls_connection_ptr)
            return rv
        }
        /// Since GLib 2.64, changing the rehandshake mode is no longer supported
        /// and will have no effect. With TLS 1.3, rehandshaking has been removed from
        /// the TLS protocol, replaced by separate post-handshake authentication and
        /// rekey operations.
        ///
        /// **set_rehandshake_mode is deprecated:**
        /// Changing the rehandshake mode is no longer
        ///   required for compatibility. Also, rehandshaking has been removed
        ///   from the TLS protocol in TLS 1.3.
        @available(*, deprecated) nonmutating set {
            g_tls_connection_set_rehandshake_mode(tls_connection_ptr, newValue)
        }
    }

    /// Tests whether or not `conn` expects a proper TLS close notification
    /// when the connection is closed. See
    /// `g_tls_connection_set_require_close_notify()` for details.
    @inlinable var requireCloseNotify: Bool {
        /// Tests whether or not `conn` expects a proper TLS close notification
        /// when the connection is closed. See
        /// `g_tls_connection_set_require_close_notify()` for details.
        get {
            let rv = ((g_tls_connection_get_require_close_notify(tls_connection_ptr)) != 0)
            return rv
        }
        /// Sets whether or not `conn` expects a proper TLS close notification
        /// before the connection is closed. If this is `true` (the default),
        /// then `conn` will expect to receive a TLS close notification from its
        /// peer before the connection is closed, and will return a
        /// `G_TLS_ERROR_EOF` error if the connection is closed without proper
        /// notification (since this may indicate a network error, or
        /// man-in-the-middle attack).
        /// 
        /// In some protocols, the application will know whether or not the
        /// connection was closed cleanly based on application-level data
        /// (because the application-level data includes a length field, or is
        /// somehow self-delimiting); in this case, the close notify is
        /// redundant and sometimes omitted. (TLS 1.1 explicitly allows this;
        /// in TLS 1.0 it is technically an error, but often done anyway.) You
        /// can use `g_tls_connection_set_require_close_notify()` to tell `conn`
        /// to allow an "unannounced" connection close, in which case the close
        /// will show up as a 0-length read, as in a non-TLS
        /// `GSocketConnection`, and it is up to the application to check that
        /// the data has been fully received.
        /// 
        /// Note that this only affects the behavior when the peer closes the
        /// connection; when the application calls `g_io_stream_close()` itself
        /// on `conn`, this will send a close notification regardless of the
        /// setting of this property. If you explicitly want to do an unclean
        /// close, you can close `conn`'s `GTlsConnection:base-io-stream` rather
        /// than closing `conn` itself, but note that this may only be done when no other
        /// operations are pending on `conn` or the base I/O stream.
        nonmutating set {
            g_tls_connection_set_require_close_notify(tls_connection_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets whether `conn` uses the system certificate database to verify
    /// peer certificates. See `g_tls_connection_set_use_system_certdb()`.
    ///
    /// **get_use_system_certdb is deprecated:**
    /// Use g_tls_connection_get_database() instead
    @inlinable var useSystemCertdb: Bool {
        /// Gets whether `conn` uses the system certificate database to verify
        /// peer certificates. See `g_tls_connection_set_use_system_certdb()`.
        ///
        /// **get_use_system_certdb is deprecated:**
        /// Use g_tls_connection_get_database() instead
        @available(*, deprecated) get {
            let rv = ((g_tls_connection_get_use_system_certdb(tls_connection_ptr)) != 0)
            return rv
        }
        /// Sets whether `conn` uses the system certificate database to verify
        /// peer certificates. This is `true` by default. If set to `false`, then
        /// peer certificate validation will always set the
        /// `G_TLS_CERTIFICATE_UNKNOWN_CA` error (meaning
        /// `GTlsConnection::accept-certificate` will always be emitted on
        /// client-side connections, unless that bit is not set in
        /// `GTlsClientConnection:validation-flags`).
        ///
        /// **set_use_system_certdb is deprecated:**
        /// Use g_tls_connection_set_database() instead
        @available(*, deprecated) nonmutating set {
            g_tls_connection_set_use_system_certdb(tls_connection_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var parentInstance: GIOStream {
        get {
            let rv = tls_connection_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - TLSDatabase Class

/// The `TLSDatabaseProtocol` protocol exposes the methods and properties of an underlying `GTlsDatabase` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TLSDatabase`.
/// Alternatively, use `TLSDatabaseRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GTlsDatabase` is used to look up certificates and other information
/// from a certificate or key store. It is an abstract base class which
/// TLS library specific subtypes override.
/// 
/// A `GTlsDatabase` may be accessed from multiple threads by the TLS backend.
/// All implementations are required to be fully thread-safe.
/// 
/// Most common client applications will not directly interact with
/// `GTlsDatabase`. It is used internally by `GTlsConnection`.
public protocol TLSDatabaseProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GTlsDatabase` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTlsDatabase` instance.
    var tls_database_ptr: UnsafeMutablePointer<GTlsDatabase>! { get }

    /// Required Initialiser for types conforming to `TLSDatabaseProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `TLSDatabaseRef` type acts as a lightweight Swift reference to an underlying `GTlsDatabase` instance.
/// It exposes methods that can operate on this data type through `TLSDatabaseProtocol` conformance.
/// Use `TLSDatabaseRef` only as an `unowned` reference to an existing `GTlsDatabase` instance.
///
/// `GTlsDatabase` is used to look up certificates and other information
/// from a certificate or key store. It is an abstract base class which
/// TLS library specific subtypes override.
/// 
/// A `GTlsDatabase` may be accessed from multiple threads by the TLS backend.
/// All implementations are required to be fully thread-safe.
/// 
/// Most common client applications will not directly interact with
/// `GTlsDatabase`. It is used internally by `GTlsConnection`.
public struct TLSDatabaseRef: TLSDatabaseProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GTlsDatabase` instance.
    /// For type-safe access, use the generated, typed pointer `tls_database_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TLSDatabaseRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTlsDatabase>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTlsDatabase>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTlsDatabase>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTlsDatabase>?) {
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

    /// Reference intialiser for a related type that implements `TLSDatabaseProtocol`
    @inlinable init<T: TLSDatabaseProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: TLSDatabaseProtocol>(_ other: T) -> TLSDatabaseRef { TLSDatabaseRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TLSDatabase` type acts as a reference-counted owner of an underlying `GTlsDatabase` instance.
/// It provides the methods that can operate on this data type through `TLSDatabaseProtocol` conformance.
/// Use `TLSDatabase` as a strong reference or owner of a `GTlsDatabase` instance.
///
/// `GTlsDatabase` is used to look up certificates and other information
/// from a certificate or key store. It is an abstract base class which
/// TLS library specific subtypes override.
/// 
/// A `GTlsDatabase` may be accessed from multiple threads by the TLS backend.
/// All implementations are required to be fully thread-safe.
/// 
/// Most common client applications will not directly interact with
/// `GTlsDatabase`. It is used internally by `GTlsConnection`.
open class TLSDatabase: GLibObject.Object, TLSDatabaseProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSDatabase` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTlsDatabase>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSDatabase` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTlsDatabase>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSDatabase` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSDatabase` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSDatabase` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTlsDatabase>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSDatabase` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTlsDatabase>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GTlsDatabase`.
    /// i.e., ownership is transferred to the `TLSDatabase` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTlsDatabase>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `TLSDatabaseProtocol`
    /// Will retain `GTlsDatabase`.
    /// - Parameter other: an instance of a related type that implements `TLSDatabaseProtocol`
    @inlinable public init<T: TLSDatabaseProtocol>(tlsDatabase other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no TLSDatabase properties

public enum TLSDatabaseSignalName: String, SignalNameProtocol {
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

// MARK: TLSDatabase has no signals
// MARK: TLSDatabase Class: TLSDatabaseProtocol extension (methods and fields)
public extension TLSDatabaseProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsDatabase` instance.
    @inlinable var tls_database_ptr: UnsafeMutablePointer<GTlsDatabase>! { return ptr?.assumingMemoryBound(to: GTlsDatabase.self) }

    /// Create a handle string for the certificate. The database will only be able
    /// to create a handle for certificates that originate from the database. In
    /// cases where the database cannot create a handle for a certificate, `nil`
    /// will be returned.
    /// 
    /// This handle should be stable across various instances of the application,
    /// and between applications. If a certificate is modified in the database,
    /// then it is not guaranteed that this handle will continue to point to it.
    @inlinable func createCertificateHandle<TLSCertificateT: TLSCertificateProtocol>(certificate: TLSCertificateT) -> String! {
        let rv = g_tls_database_create_certificate_handle(tls_database_ptr, certificate.tls_certificate_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Look up a certificate by its handle.
    /// 
    /// The handle should have been created by calling
    /// `g_tls_database_create_certificate_handle()` on a `GTlsDatabase` object of
    /// the same TLS backend. The handle is designed to remain valid across
    /// instantiations of the database.
    /// 
    /// If the handle is no longer valid, or does not point to a certificate in
    /// this database, then `nil` will be returned.
    /// 
    /// This function can block, use `g_tls_database_lookup_certificate_for_handle_async()` to perform
    /// the lookup operation asynchronously.
    @inlinable func lookupCertificateFor(handle: UnsafePointer<gchar>!, interaction: TLSInteractionRef? = nil, flags: GTlsDatabaseLookupFlags, cancellable: CancellableRef? = nil) throws -> TLSCertificateRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = TLSCertificateRef(gconstpointer: gconstpointer(g_tls_database_lookup_certificate_for_handle(tls_database_ptr, handle, interaction?.tls_interaction_ptr, flags, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Look up a certificate by its handle.
    /// 
    /// The handle should have been created by calling
    /// `g_tls_database_create_certificate_handle()` on a `GTlsDatabase` object of
    /// the same TLS backend. The handle is designed to remain valid across
    /// instantiations of the database.
    /// 
    /// If the handle is no longer valid, or does not point to a certificate in
    /// this database, then `nil` will be returned.
    /// 
    /// This function can block, use `g_tls_database_lookup_certificate_for_handle_async()` to perform
    /// the lookup operation asynchronously.
    @inlinable func lookupCertificateFor<CancellableT: CancellableProtocol, TLSInteractionT: TLSInteractionProtocol>(handle: UnsafePointer<gchar>!, interaction: TLSInteractionT?, flags: GTlsDatabaseLookupFlags, cancellable: CancellableT?) throws -> TLSCertificateRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = TLSCertificateRef(gconstpointer: gconstpointer(g_tls_database_lookup_certificate_for_handle(tls_database_ptr, handle, interaction?.tls_interaction_ptr, flags, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously look up a certificate by its handle in the database. See
    /// `g_tls_database_lookup_certificate_for_handle()` for more information.
    @inlinable func lookupCertificateForHandleAsync(handle: UnsafePointer<gchar>!, interaction: TLSInteractionRef? = nil, flags: GTlsDatabaseLookupFlags, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_tls_database_lookup_certificate_for_handle_async(tls_database_ptr, handle, interaction?.tls_interaction_ptr, flags, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously look up a certificate by its handle in the database. See
    /// `g_tls_database_lookup_certificate_for_handle()` for more information.
    @inlinable func lookupCertificateForHandleAsync<CancellableT: CancellableProtocol, TLSInteractionT: TLSInteractionProtocol>(handle: UnsafePointer<gchar>!, interaction: TLSInteractionT?, flags: GTlsDatabaseLookupFlags, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_tls_database_lookup_certificate_for_handle_async(tls_database_ptr, handle, interaction?.tls_interaction_ptr, flags, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finish an asynchronous lookup of a certificate by its handle. See
    /// `g_tls_database_lookup_certificate_for_handle()` for more information.
    /// 
    /// If the handle is no longer valid, or does not point to a certificate in
    /// this database, then `nil` will be returned.
    @inlinable func lookupCertificateForHandleFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> TLSCertificateRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = TLSCertificateRef(gconstpointer: gconstpointer(g_tls_database_lookup_certificate_for_handle_finish(tls_database_ptr, result.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Look up the issuer of `certificate` in the database.
    /// 
    /// The `GTlsCertificate:issuer` property
    /// of `certificate` is not modified, and the two certificates are not hooked
    /// into a chain.
    /// 
    /// This function can block, use `g_tls_database_lookup_certificate_issuer_async()` to perform
    /// the lookup operation asynchronously.
    @inlinable func lookupCertificateIssuer<TLSCertificateT: TLSCertificateProtocol>(certificate: TLSCertificateT, interaction: TLSInteractionRef? = nil, flags: GTlsDatabaseLookupFlags, cancellable: CancellableRef? = nil) throws -> TLSCertificateRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = TLSCertificateRef(gconstpointer: gconstpointer(g_tls_database_lookup_certificate_issuer(tls_database_ptr, certificate.tls_certificate_ptr, interaction?.tls_interaction_ptr, flags, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Look up the issuer of `certificate` in the database.
    /// 
    /// The `GTlsCertificate:issuer` property
    /// of `certificate` is not modified, and the two certificates are not hooked
    /// into a chain.
    /// 
    /// This function can block, use `g_tls_database_lookup_certificate_issuer_async()` to perform
    /// the lookup operation asynchronously.
    @inlinable func lookupCertificateIssuer<CancellableT: CancellableProtocol, TLSCertificateT: TLSCertificateProtocol, TLSInteractionT: TLSInteractionProtocol>(certificate: TLSCertificateT, interaction: TLSInteractionT?, flags: GTlsDatabaseLookupFlags, cancellable: CancellableT?) throws -> TLSCertificateRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = TLSCertificateRef(gconstpointer: gconstpointer(g_tls_database_lookup_certificate_issuer(tls_database_ptr, certificate.tls_certificate_ptr, interaction?.tls_interaction_ptr, flags, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously look up the issuer of `certificate` in the database. See
    /// `g_tls_database_lookup_certificate_issuer()` for more information.
    @inlinable func lookupCertificateIssuerAsync<TLSCertificateT: TLSCertificateProtocol>(certificate: TLSCertificateT, interaction: TLSInteractionRef? = nil, flags: GTlsDatabaseLookupFlags, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_tls_database_lookup_certificate_issuer_async(tls_database_ptr, certificate.tls_certificate_ptr, interaction?.tls_interaction_ptr, flags, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously look up the issuer of `certificate` in the database. See
    /// `g_tls_database_lookup_certificate_issuer()` for more information.
    @inlinable func lookupCertificateIssuerAsync<CancellableT: CancellableProtocol, TLSCertificateT: TLSCertificateProtocol, TLSInteractionT: TLSInteractionProtocol>(certificate: TLSCertificateT, interaction: TLSInteractionT?, flags: GTlsDatabaseLookupFlags, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_tls_database_lookup_certificate_issuer_async(tls_database_ptr, certificate.tls_certificate_ptr, interaction?.tls_interaction_ptr, flags, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finish an asynchronous lookup issuer operation. See
    /// `g_tls_database_lookup_certificate_issuer()` for more information.
    @inlinable func lookupCertificateIssuerFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> TLSCertificateRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = TLSCertificateRef(gconstpointer: gconstpointer(g_tls_database_lookup_certificate_issuer_finish(tls_database_ptr, result.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Look up certificates issued by this issuer in the database.
    /// 
    /// This function can block, use `g_tls_database_lookup_certificates_issued_by_async()` to perform
    /// the lookup operation asynchronously.
    @inlinable func lookupCertificatesIssuedBy<ByteArrayT: GLib.ByteArrayProtocol>(issuerRawDn: ByteArrayT, interaction: TLSInteractionRef? = nil, flags: GTlsDatabaseLookupFlags, cancellable: CancellableRef? = nil) throws -> GLib.ListRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = GLib.ListRef(g_tls_database_lookup_certificates_issued_by(tls_database_ptr, issuerRawDn.byte_array_ptr, interaction?.tls_interaction_ptr, flags, cancellable?.cancellable_ptr, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Look up certificates issued by this issuer in the database.
    /// 
    /// This function can block, use `g_tls_database_lookup_certificates_issued_by_async()` to perform
    /// the lookup operation asynchronously.
    @inlinable func lookupCertificatesIssuedBy<ByteArrayT: GLib.ByteArrayProtocol, CancellableT: CancellableProtocol, TLSInteractionT: TLSInteractionProtocol>(issuerRawDn: ByteArrayT, interaction: TLSInteractionT?, flags: GTlsDatabaseLookupFlags, cancellable: CancellableT?) throws -> GLib.ListRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = GLib.ListRef(g_tls_database_lookup_certificates_issued_by(tls_database_ptr, issuerRawDn.byte_array_ptr, interaction?.tls_interaction_ptr, flags, cancellable?.cancellable_ptr, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously look up certificates issued by this issuer in the database. See
    /// `g_tls_database_lookup_certificates_issued_by()` for more information.
    /// 
    /// The database may choose to hold a reference to the issuer byte array for the duration
    /// of of this asynchronous operation. The byte array should not be modified during
    /// this time.
    @inlinable func lookupCertificatesIssuedByAsync<ByteArrayT: GLib.ByteArrayProtocol>(issuerRawDn: ByteArrayT, interaction: TLSInteractionRef? = nil, flags: GTlsDatabaseLookupFlags, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_tls_database_lookup_certificates_issued_by_async(tls_database_ptr, issuerRawDn.byte_array_ptr, interaction?.tls_interaction_ptr, flags, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously look up certificates issued by this issuer in the database. See
    /// `g_tls_database_lookup_certificates_issued_by()` for more information.
    /// 
    /// The database may choose to hold a reference to the issuer byte array for the duration
    /// of of this asynchronous operation. The byte array should not be modified during
    /// this time.
    @inlinable func lookupCertificatesIssuedByAsync<ByteArrayT: GLib.ByteArrayProtocol, CancellableT: CancellableProtocol, TLSInteractionT: TLSInteractionProtocol>(issuerRawDn: ByteArrayT, interaction: TLSInteractionT?, flags: GTlsDatabaseLookupFlags, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_tls_database_lookup_certificates_issued_by_async(tls_database_ptr, issuerRawDn.byte_array_ptr, interaction?.tls_interaction_ptr, flags, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finish an asynchronous lookup of certificates. See
    /// `g_tls_database_lookup_certificates_issued_by()` for more information.
    @inlinable func lookupCertificatesIssuedByFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> GLib.ListRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = GLib.ListRef(g_tls_database_lookup_certificates_issued_by_finish(tls_database_ptr, result.async_result_ptr, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Determines the validity of a certificate chain after looking up and
    /// adding any missing certificates to the chain.
    /// 
    /// `chain` is a chain of `GTlsCertificate` objects each pointing to the next
    /// certificate in the chain by its `GTlsCertificate:issuer` property. The chain may initially
    /// consist of one or more certificates. After the verification process is
    /// complete, `chain` may be modified by adding missing certificates, or removing
    /// extra certificates. If a certificate anchor was found, then it is added to
    /// the `chain`.
    /// 
    /// `purpose` describes the purpose (or usage) for which the certificate
    /// is being used. Typically `purpose` will be set to `G_TLS_DATABASE_PURPOSE_AUTHENTICATE_SERVER`
    /// which means that the certificate is being used to authenticate a server
    /// (and we are acting as the client).
    /// 
    /// The `identity` is used to ensure the server certificate is valid for
    /// the expected peer identity. If the identity does not match the
    /// certificate, `G_TLS_CERTIFICATE_BAD_IDENTITY` will be set in the
    /// return value. If `identity` is `nil`, that bit will never be set in
    /// the return value. The peer identity may also be used to check for
    /// pinned certificates (trust exceptions) in the database. These may
    /// override the normal verification process on a host-by-host basis.
    /// 
    /// Currently there are no `flags`, and `G_TLS_DATABASE_VERIFY_NONE` should be
    /// used.
    /// 
    /// If `chain` is found to be valid, then the return value will be 0. If
    /// `chain` is found to be invalid, then the return value will indicate
    /// the problems found. If the function is unable to determine whether
    /// `chain` is valid or not (eg, because `cancellable` is triggered
    /// before it completes) then the return value will be
    /// `G_TLS_CERTIFICATE_GENERIC_ERROR` and `error` will be set
    /// accordingly. `error` is not set when `chain` is successfully analyzed
    /// but found to be invalid.
    /// 
    /// This function can block, use `g_tls_database_verify_chain_async()` to perform
    /// the verification operation asynchronously.
    @inlinable func verify<TLSCertificateT: TLSCertificateProtocol>(chain: TLSCertificateT, purpose: UnsafePointer<gchar>!, identity: SocketConnectableRef? = nil, interaction: TLSInteractionRef? = nil, flags: TLSDatabaseVerifyFlags, cancellable: CancellableRef? = nil) throws -> TLSCertificateFlags {
        var error: UnsafeMutablePointer<GError>?
        let rv = TLSCertificateFlags(g_tls_database_verify_chain(tls_database_ptr, chain.tls_certificate_ptr, purpose, identity?.socket_connectable_ptr, interaction?.tls_interaction_ptr, flags.value, cancellable?.cancellable_ptr, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Determines the validity of a certificate chain after looking up and
    /// adding any missing certificates to the chain.
    /// 
    /// `chain` is a chain of `GTlsCertificate` objects each pointing to the next
    /// certificate in the chain by its `GTlsCertificate:issuer` property. The chain may initially
    /// consist of one or more certificates. After the verification process is
    /// complete, `chain` may be modified by adding missing certificates, or removing
    /// extra certificates. If a certificate anchor was found, then it is added to
    /// the `chain`.
    /// 
    /// `purpose` describes the purpose (or usage) for which the certificate
    /// is being used. Typically `purpose` will be set to `G_TLS_DATABASE_PURPOSE_AUTHENTICATE_SERVER`
    /// which means that the certificate is being used to authenticate a server
    /// (and we are acting as the client).
    /// 
    /// The `identity` is used to ensure the server certificate is valid for
    /// the expected peer identity. If the identity does not match the
    /// certificate, `G_TLS_CERTIFICATE_BAD_IDENTITY` will be set in the
    /// return value. If `identity` is `nil`, that bit will never be set in
    /// the return value. The peer identity may also be used to check for
    /// pinned certificates (trust exceptions) in the database. These may
    /// override the normal verification process on a host-by-host basis.
    /// 
    /// Currently there are no `flags`, and `G_TLS_DATABASE_VERIFY_NONE` should be
    /// used.
    /// 
    /// If `chain` is found to be valid, then the return value will be 0. If
    /// `chain` is found to be invalid, then the return value will indicate
    /// the problems found. If the function is unable to determine whether
    /// `chain` is valid or not (eg, because `cancellable` is triggered
    /// before it completes) then the return value will be
    /// `G_TLS_CERTIFICATE_GENERIC_ERROR` and `error` will be set
    /// accordingly. `error` is not set when `chain` is successfully analyzed
    /// but found to be invalid.
    /// 
    /// This function can block, use `g_tls_database_verify_chain_async()` to perform
    /// the verification operation asynchronously.
    @inlinable func verify<CancellableT: CancellableProtocol, SocketConnectableT: SocketConnectableProtocol, TLSCertificateT: TLSCertificateProtocol, TLSInteractionT: TLSInteractionProtocol>(chain: TLSCertificateT, purpose: UnsafePointer<gchar>!, identity: SocketConnectableT?, interaction: TLSInteractionT?, flags: TLSDatabaseVerifyFlags, cancellable: CancellableT?) throws -> TLSCertificateFlags {
        var error: UnsafeMutablePointer<GError>?
        let rv = TLSCertificateFlags(g_tls_database_verify_chain(tls_database_ptr, chain.tls_certificate_ptr, purpose, identity?.socket_connectable_ptr, interaction?.tls_interaction_ptr, flags.value, cancellable?.cancellable_ptr, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously determines the validity of a certificate chain after
    /// looking up and adding any missing certificates to the chain. See
    /// `g_tls_database_verify_chain()` for more information.
    @inlinable func verifyChainAsync<TLSCertificateT: TLSCertificateProtocol>(chain: TLSCertificateT, purpose: UnsafePointer<gchar>!, identity: SocketConnectableRef? = nil, interaction: TLSInteractionRef? = nil, flags: TLSDatabaseVerifyFlags, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_tls_database_verify_chain_async(tls_database_ptr, chain.tls_certificate_ptr, purpose, identity?.socket_connectable_ptr, interaction?.tls_interaction_ptr, flags.value, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously determines the validity of a certificate chain after
    /// looking up and adding any missing certificates to the chain. See
    /// `g_tls_database_verify_chain()` for more information.
    @inlinable func verifyChainAsync<CancellableT: CancellableProtocol, SocketConnectableT: SocketConnectableProtocol, TLSCertificateT: TLSCertificateProtocol, TLSInteractionT: TLSInteractionProtocol>(chain: TLSCertificateT, purpose: UnsafePointer<gchar>!, identity: SocketConnectableT?, interaction: TLSInteractionT?, flags: TLSDatabaseVerifyFlags, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_tls_database_verify_chain_async(tls_database_ptr, chain.tls_certificate_ptr, purpose, identity?.socket_connectable_ptr, interaction?.tls_interaction_ptr, flags.value, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finish an asynchronous verify chain operation. See
    /// `g_tls_database_verify_chain()` for more information.
    /// 
    /// If `chain` is found to be valid, then the return value will be 0. If
    /// `chain` is found to be invalid, then the return value will indicate
    /// the problems found. If the function is unable to determine whether
    /// `chain` is valid or not (eg, because `cancellable` is triggered
    /// before it completes) then the return value will be
    /// `G_TLS_CERTIFICATE_GENERIC_ERROR` and `error` will be set
    /// accordingly. `error` is not set when `chain` is successfully analyzed
    /// but found to be invalid.
    @inlinable func verifyChainFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> TLSCertificateFlags {
        var error: UnsafeMutablePointer<GError>?
        let rv = TLSCertificateFlags(g_tls_database_verify_chain_finish(tls_database_ptr, result.async_result_ptr, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = tls_database_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - TLSInteraction Class

/// The `TLSInteractionProtocol` protocol exposes the methods and properties of an underlying `GTlsInteraction` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TLSInteraction`.
/// Alternatively, use `TLSInteractionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GTlsInteraction` provides a mechanism for the TLS connection and database
/// code to interact with the user. It can be used to ask the user for passwords.
/// 
/// To use a `GTlsInteraction` with a TLS connection use
/// `g_tls_connection_set_interaction()`.
/// 
/// Callers should instantiate a derived class that implements the various
/// interaction methods to show the required dialogs.
/// 
/// Callers should use the 'invoke' functions like
/// `g_tls_interaction_invoke_ask_password()` to run interaction methods. These
/// functions make sure that the interaction is invoked in the main loop
/// and not in the current thread, if the current thread is not running the
/// main loop.
/// 
/// Derived classes can choose to implement whichever interactions methods they'd
/// like to support by overriding those virtual methods in their class
/// initialization function. Any interactions not implemented will return
/// `G_TLS_INTERACTION_UNHANDLED`. If a derived class implements an async method,
/// it must also implement the corresponding finish method.
public protocol TLSInteractionProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GTlsInteraction` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTlsInteraction` instance.
    var tls_interaction_ptr: UnsafeMutablePointer<GTlsInteraction>! { get }

    /// Required Initialiser for types conforming to `TLSInteractionProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `TLSInteractionRef` type acts as a lightweight Swift reference to an underlying `GTlsInteraction` instance.
/// It exposes methods that can operate on this data type through `TLSInteractionProtocol` conformance.
/// Use `TLSInteractionRef` only as an `unowned` reference to an existing `GTlsInteraction` instance.
///
/// `GTlsInteraction` provides a mechanism for the TLS connection and database
/// code to interact with the user. It can be used to ask the user for passwords.
/// 
/// To use a `GTlsInteraction` with a TLS connection use
/// `g_tls_connection_set_interaction()`.
/// 
/// Callers should instantiate a derived class that implements the various
/// interaction methods to show the required dialogs.
/// 
/// Callers should use the 'invoke' functions like
/// `g_tls_interaction_invoke_ask_password()` to run interaction methods. These
/// functions make sure that the interaction is invoked in the main loop
/// and not in the current thread, if the current thread is not running the
/// main loop.
/// 
/// Derived classes can choose to implement whichever interactions methods they'd
/// like to support by overriding those virtual methods in their class
/// initialization function. Any interactions not implemented will return
/// `G_TLS_INTERACTION_UNHANDLED`. If a derived class implements an async method,
/// it must also implement the corresponding finish method.
public struct TLSInteractionRef: TLSInteractionProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GTlsInteraction` instance.
    /// For type-safe access, use the generated, typed pointer `tls_interaction_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TLSInteractionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTlsInteraction>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTlsInteraction>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTlsInteraction>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTlsInteraction>?) {
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

    /// Reference intialiser for a related type that implements `TLSInteractionProtocol`
    @inlinable init<T: TLSInteractionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: TLSInteractionProtocol>(_ other: T) -> TLSInteractionRef { TLSInteractionRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TLSInteraction` type acts as a reference-counted owner of an underlying `GTlsInteraction` instance.
/// It provides the methods that can operate on this data type through `TLSInteractionProtocol` conformance.
/// Use `TLSInteraction` as a strong reference or owner of a `GTlsInteraction` instance.
///
/// `GTlsInteraction` provides a mechanism for the TLS connection and database
/// code to interact with the user. It can be used to ask the user for passwords.
/// 
/// To use a `GTlsInteraction` with a TLS connection use
/// `g_tls_connection_set_interaction()`.
/// 
/// Callers should instantiate a derived class that implements the various
/// interaction methods to show the required dialogs.
/// 
/// Callers should use the 'invoke' functions like
/// `g_tls_interaction_invoke_ask_password()` to run interaction methods. These
/// functions make sure that the interaction is invoked in the main loop
/// and not in the current thread, if the current thread is not running the
/// main loop.
/// 
/// Derived classes can choose to implement whichever interactions methods they'd
/// like to support by overriding those virtual methods in their class
/// initialization function. Any interactions not implemented will return
/// `G_TLS_INTERACTION_UNHANDLED`. If a derived class implements an async method,
/// it must also implement the corresponding finish method.
open class TLSInteraction: GLibObject.Object, TLSInteractionProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSInteraction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTlsInteraction>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSInteraction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTlsInteraction>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSInteraction` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSInteraction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSInteraction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTlsInteraction>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSInteraction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTlsInteraction>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GTlsInteraction`.
    /// i.e., ownership is transferred to the `TLSInteraction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTlsInteraction>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `TLSInteractionProtocol`
    /// Will retain `GTlsInteraction`.
    /// - Parameter other: an instance of a related type that implements `TLSInteractionProtocol`
    @inlinable public init<T: TLSInteractionProtocol>(tlsInteraction other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no TLSInteraction properties

public enum TLSInteractionSignalName: String, SignalNameProtocol {
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

// MARK: TLSInteraction has no signals
// MARK: TLSInteraction Class: TLSInteractionProtocol extension (methods and fields)
public extension TLSInteractionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsInteraction` instance.
    @inlinable var tls_interaction_ptr: UnsafeMutablePointer<GTlsInteraction>! { return ptr?.assumingMemoryBound(to: GTlsInteraction.self) }

    /// Run synchronous interaction to ask the user for a password. In general,
    /// `g_tls_interaction_invoke_ask_password()` should be used instead of this
    /// function.
    /// 
    /// Derived subclasses usually implement a password prompt, although they may
    /// also choose to provide a password from elsewhere. The `password` value will
    /// be filled in and then `callback` will be called. Alternatively the user may
    /// abort this password request, which will usually abort the TLS connection.
    /// 
    /// If the interaction is cancelled by the cancellation object, or by the
    /// user then `G_TLS_INTERACTION_FAILED` will be returned with an error that
    /// contains a `G_IO_ERROR_CANCELLED` error code. Certain implementations may
    /// not support immediate cancellation.
    @inlinable func ask<TLSPasswordT: TLSPasswordProtocol>(password: TLSPasswordT, cancellable: CancellableRef? = nil) throws -> GTlsInteractionResult {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_tls_interaction_ask_password(tls_interaction_ptr, password.tls_password_ptr, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Run synchronous interaction to ask the user for a password. In general,
    /// `g_tls_interaction_invoke_ask_password()` should be used instead of this
    /// function.
    /// 
    /// Derived subclasses usually implement a password prompt, although they may
    /// also choose to provide a password from elsewhere. The `password` value will
    /// be filled in and then `callback` will be called. Alternatively the user may
    /// abort this password request, which will usually abort the TLS connection.
    /// 
    /// If the interaction is cancelled by the cancellation object, or by the
    /// user then `G_TLS_INTERACTION_FAILED` will be returned with an error that
    /// contains a `G_IO_ERROR_CANCELLED` error code. Certain implementations may
    /// not support immediate cancellation.
    @inlinable func ask<CancellableT: CancellableProtocol, TLSPasswordT: TLSPasswordProtocol>(password: TLSPasswordT, cancellable: CancellableT?) throws -> GTlsInteractionResult {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_tls_interaction_ask_password(tls_interaction_ptr, password.tls_password_ptr, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Run asynchronous interaction to ask the user for a password. In general,
    /// `g_tls_interaction_invoke_ask_password()` should be used instead of this
    /// function.
    /// 
    /// Derived subclasses usually implement a password prompt, although they may
    /// also choose to provide a password from elsewhere. The `password` value will
    /// be filled in and then `callback` will be called. Alternatively the user may
    /// abort this password request, which will usually abort the TLS connection.
    /// 
    /// If the interaction is cancelled by the cancellation object, or by the
    /// user then `G_TLS_INTERACTION_FAILED` will be returned with an error that
    /// contains a `G_IO_ERROR_CANCELLED` error code. Certain implementations may
    /// not support immediate cancellation.
    /// 
    /// Certain implementations may not support immediate cancellation.
    @inlinable func askPasswordAsync<TLSPasswordT: TLSPasswordProtocol>(password: TLSPasswordT, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_tls_interaction_ask_password_async(tls_interaction_ptr, password.tls_password_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Run asynchronous interaction to ask the user for a password. In general,
    /// `g_tls_interaction_invoke_ask_password()` should be used instead of this
    /// function.
    /// 
    /// Derived subclasses usually implement a password prompt, although they may
    /// also choose to provide a password from elsewhere. The `password` value will
    /// be filled in and then `callback` will be called. Alternatively the user may
    /// abort this password request, which will usually abort the TLS connection.
    /// 
    /// If the interaction is cancelled by the cancellation object, or by the
    /// user then `G_TLS_INTERACTION_FAILED` will be returned with an error that
    /// contains a `G_IO_ERROR_CANCELLED` error code. Certain implementations may
    /// not support immediate cancellation.
    /// 
    /// Certain implementations may not support immediate cancellation.
    @inlinable func askPasswordAsync<CancellableT: CancellableProtocol, TLSPasswordT: TLSPasswordProtocol>(password: TLSPasswordT, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_tls_interaction_ask_password_async(tls_interaction_ptr, password.tls_password_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Complete an ask password user interaction request. This should be once
    /// the `g_tls_interaction_ask_password_async()` completion callback is called.
    /// 
    /// If `G_TLS_INTERACTION_HANDLED` is returned, then the `GTlsPassword` passed
    /// to `g_tls_interaction_ask_password()` will have its password filled in.
    /// 
    /// If the interaction is cancelled by the cancellation object, or by the
    /// user then `G_TLS_INTERACTION_FAILED` will be returned with an error that
    /// contains a `G_IO_ERROR_CANCELLED` error code.
    @inlinable func askPasswordFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> GTlsInteractionResult {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_tls_interaction_ask_password_finish(tls_interaction_ptr, result.async_result_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Invoke the interaction to ask the user for a password. It invokes this
    /// interaction in the main loop, specifically the `GMainContext` returned by
    /// `g_main_context_get_thread_default()` when the interaction is created. This
    /// is called by called by `GTlsConnection` or `GTlsDatabase` to ask the user
    /// for a password.
    /// 
    /// Derived subclasses usually implement a password prompt, although they may
    /// also choose to provide a password from elsewhere. The `password` value will
    /// be filled in and then `callback` will be called. Alternatively the user may
    /// abort this password request, which will usually abort the TLS connection.
    /// 
    /// The implementation can either be a synchronous (eg: modal dialog) or an
    /// asynchronous one (eg: modeless dialog). This function will take care of
    /// calling which ever one correctly.
    /// 
    /// If the interaction is cancelled by the cancellation object, or by the
    /// user then `G_TLS_INTERACTION_FAILED` will be returned with an error that
    /// contains a `G_IO_ERROR_CANCELLED` error code. Certain implementations may
    /// not support immediate cancellation.
    @inlinable func invokeAsk<TLSPasswordT: TLSPasswordProtocol>(password: TLSPasswordT, cancellable: CancellableRef? = nil) throws -> GTlsInteractionResult {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_tls_interaction_invoke_ask_password(tls_interaction_ptr, password.tls_password_ptr, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Invoke the interaction to ask the user for a password. It invokes this
    /// interaction in the main loop, specifically the `GMainContext` returned by
    /// `g_main_context_get_thread_default()` when the interaction is created. This
    /// is called by called by `GTlsConnection` or `GTlsDatabase` to ask the user
    /// for a password.
    /// 
    /// Derived subclasses usually implement a password prompt, although they may
    /// also choose to provide a password from elsewhere. The `password` value will
    /// be filled in and then `callback` will be called. Alternatively the user may
    /// abort this password request, which will usually abort the TLS connection.
    /// 
    /// The implementation can either be a synchronous (eg: modal dialog) or an
    /// asynchronous one (eg: modeless dialog). This function will take care of
    /// calling which ever one correctly.
    /// 
    /// If the interaction is cancelled by the cancellation object, or by the
    /// user then `G_TLS_INTERACTION_FAILED` will be returned with an error that
    /// contains a `G_IO_ERROR_CANCELLED` error code. Certain implementations may
    /// not support immediate cancellation.
    @inlinable func invokeAsk<CancellableT: CancellableProtocol, TLSPasswordT: TLSPasswordProtocol>(password: TLSPasswordT, cancellable: CancellableT?) throws -> GTlsInteractionResult {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_tls_interaction_invoke_ask_password(tls_interaction_ptr, password.tls_password_ptr, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Invoke the interaction to ask the user to choose a certificate to
    /// use with the connection. It invokes this interaction in the main
    /// loop, specifically the `GMainContext` returned by
    /// `g_main_context_get_thread_default()` when the interaction is
    /// created. This is called by called by `GTlsConnection` when the peer
    /// requests a certificate during the handshake.
    /// 
    /// Derived subclasses usually implement a certificate selector,
    /// although they may also choose to provide a certificate from
    /// elsewhere. Alternatively the user may abort this certificate
    /// request, which may or may not abort the TLS connection.
    /// 
    /// The implementation can either be a synchronous (eg: modal dialog) or an
    /// asynchronous one (eg: modeless dialog). This function will take care of
    /// calling which ever one correctly.
    /// 
    /// If the interaction is cancelled by the cancellation object, or by the
    /// user then `G_TLS_INTERACTION_FAILED` will be returned with an error that
    /// contains a `G_IO_ERROR_CANCELLED` error code. Certain implementations may
    /// not support immediate cancellation.
    @inlinable func invokeRequestCertificate<TLSConnectionT: TLSConnectionProtocol>(connection: TLSConnectionT, flags: GTlsCertificateRequestFlags, cancellable: CancellableRef? = nil) throws -> GTlsInteractionResult {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_tls_interaction_invoke_request_certificate(tls_interaction_ptr, connection.tls_connection_ptr, flags, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Invoke the interaction to ask the user to choose a certificate to
    /// use with the connection. It invokes this interaction in the main
    /// loop, specifically the `GMainContext` returned by
    /// `g_main_context_get_thread_default()` when the interaction is
    /// created. This is called by called by `GTlsConnection` when the peer
    /// requests a certificate during the handshake.
    /// 
    /// Derived subclasses usually implement a certificate selector,
    /// although they may also choose to provide a certificate from
    /// elsewhere. Alternatively the user may abort this certificate
    /// request, which may or may not abort the TLS connection.
    /// 
    /// The implementation can either be a synchronous (eg: modal dialog) or an
    /// asynchronous one (eg: modeless dialog). This function will take care of
    /// calling which ever one correctly.
    /// 
    /// If the interaction is cancelled by the cancellation object, or by the
    /// user then `G_TLS_INTERACTION_FAILED` will be returned with an error that
    /// contains a `G_IO_ERROR_CANCELLED` error code. Certain implementations may
    /// not support immediate cancellation.
    @inlinable func invokeRequestCertificate<CancellableT: CancellableProtocol, TLSConnectionT: TLSConnectionProtocol>(connection: TLSConnectionT, flags: GTlsCertificateRequestFlags, cancellable: CancellableT?) throws -> GTlsInteractionResult {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_tls_interaction_invoke_request_certificate(tls_interaction_ptr, connection.tls_connection_ptr, flags, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Run synchronous interaction to ask the user to choose a certificate to use
    /// with the connection. In general, `g_tls_interaction_invoke_request_certificate()`
    /// should be used instead of this function.
    /// 
    /// Derived subclasses usually implement a certificate selector, although they may
    /// also choose to provide a certificate from elsewhere. Alternatively the user may
    /// abort this certificate request, which will usually abort the TLS connection.
    /// 
    /// If `G_TLS_INTERACTION_HANDLED` is returned, then the `GTlsConnection`
    /// passed to `g_tls_interaction_request_certificate()` will have had its
    /// `GTlsConnection:certificate` filled in.
    /// 
    /// If the interaction is cancelled by the cancellation object, or by the
    /// user then `G_TLS_INTERACTION_FAILED` will be returned with an error that
    /// contains a `G_IO_ERROR_CANCELLED` error code. Certain implementations may
    /// not support immediate cancellation.
    @inlinable func requestCertificate<TLSConnectionT: TLSConnectionProtocol>(connection: TLSConnectionT, flags: GTlsCertificateRequestFlags, cancellable: CancellableRef? = nil) throws -> GTlsInteractionResult {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_tls_interaction_request_certificate(tls_interaction_ptr, connection.tls_connection_ptr, flags, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Run synchronous interaction to ask the user to choose a certificate to use
    /// with the connection. In general, `g_tls_interaction_invoke_request_certificate()`
    /// should be used instead of this function.
    /// 
    /// Derived subclasses usually implement a certificate selector, although they may
    /// also choose to provide a certificate from elsewhere. Alternatively the user may
    /// abort this certificate request, which will usually abort the TLS connection.
    /// 
    /// If `G_TLS_INTERACTION_HANDLED` is returned, then the `GTlsConnection`
    /// passed to `g_tls_interaction_request_certificate()` will have had its
    /// `GTlsConnection:certificate` filled in.
    /// 
    /// If the interaction is cancelled by the cancellation object, or by the
    /// user then `G_TLS_INTERACTION_FAILED` will be returned with an error that
    /// contains a `G_IO_ERROR_CANCELLED` error code. Certain implementations may
    /// not support immediate cancellation.
    @inlinable func requestCertificate<CancellableT: CancellableProtocol, TLSConnectionT: TLSConnectionProtocol>(connection: TLSConnectionT, flags: GTlsCertificateRequestFlags, cancellable: CancellableT?) throws -> GTlsInteractionResult {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_tls_interaction_request_certificate(tls_interaction_ptr, connection.tls_connection_ptr, flags, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Run asynchronous interaction to ask the user for a certificate to use with
    /// the connection. In general, `g_tls_interaction_invoke_request_certificate()` should
    /// be used instead of this function.
    /// 
    /// Derived subclasses usually implement a certificate selector, although they may
    /// also choose to provide a certificate from elsewhere. `callback` will be called
    /// when the operation completes. Alternatively the user may abort this certificate
    /// request, which will usually abort the TLS connection.
    @inlinable func requestCertificateAsync<TLSConnectionT: TLSConnectionProtocol>(connection: TLSConnectionT, flags: GTlsCertificateRequestFlags, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_tls_interaction_request_certificate_async(tls_interaction_ptr, connection.tls_connection_ptr, flags, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Run asynchronous interaction to ask the user for a certificate to use with
    /// the connection. In general, `g_tls_interaction_invoke_request_certificate()` should
    /// be used instead of this function.
    /// 
    /// Derived subclasses usually implement a certificate selector, although they may
    /// also choose to provide a certificate from elsewhere. `callback` will be called
    /// when the operation completes. Alternatively the user may abort this certificate
    /// request, which will usually abort the TLS connection.
    @inlinable func requestCertificateAsync<CancellableT: CancellableProtocol, TLSConnectionT: TLSConnectionProtocol>(connection: TLSConnectionT, flags: GTlsCertificateRequestFlags, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_tls_interaction_request_certificate_async(tls_interaction_ptr, connection.tls_connection_ptr, flags, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Complete a request certificate user interaction request. This should be once
    /// the `g_tls_interaction_request_certificate_async()` completion callback is called.
    /// 
    /// If `G_TLS_INTERACTION_HANDLED` is returned, then the `GTlsConnection`
    /// passed to `g_tls_interaction_request_certificate_async()` will have had its
    /// `GTlsConnection:certificate` filled in.
    /// 
    /// If the interaction is cancelled by the cancellation object, or by the
    /// user then `G_TLS_INTERACTION_FAILED` will be returned with an error that
    /// contains a `G_IO_ERROR_CANCELLED` error code.
    @inlinable func requestCertificateFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> GTlsInteractionResult {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_tls_interaction_request_certificate_finish(tls_interaction_ptr, result.async_result_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    // var parentInstance is unavailable because parent_instance is private

    // var priv is unavailable because priv is private

}



// MARK: - TLSPassword Class

/// The `TLSPasswordProtocol` protocol exposes the methods and properties of an underlying `GTlsPassword` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TLSPassword`.
/// Alternatively, use `TLSPasswordRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Holds a password used in TLS.
public protocol TLSPasswordProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GTlsPassword` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTlsPassword` instance.
    var tls_password_ptr: UnsafeMutablePointer<GTlsPassword>! { get }

    /// Required Initialiser for types conforming to `TLSPasswordProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `TLSPasswordRef` type acts as a lightweight Swift reference to an underlying `GTlsPassword` instance.
/// It exposes methods that can operate on this data type through `TLSPasswordProtocol` conformance.
/// Use `TLSPasswordRef` only as an `unowned` reference to an existing `GTlsPassword` instance.
///
/// Holds a password used in TLS.
public struct TLSPasswordRef: TLSPasswordProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GTlsPassword` instance.
    /// For type-safe access, use the generated, typed pointer `tls_password_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TLSPasswordRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTlsPassword>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTlsPassword>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTlsPassword>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTlsPassword>?) {
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

    /// Reference intialiser for a related type that implements `TLSPasswordProtocol`
    @inlinable init<T: TLSPasswordProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: TLSPasswordProtocol>(_ other: T) -> TLSPasswordRef { TLSPasswordRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Create a new `GTlsPassword` object.
    @inlinable init( flags: TLSPasswordFlags, description: UnsafePointer<gchar>!) {
        let rv = g_tls_password_new(flags.value, description)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `TLSPassword` type acts as a reference-counted owner of an underlying `GTlsPassword` instance.
/// It provides the methods that can operate on this data type through `TLSPasswordProtocol` conformance.
/// Use `TLSPassword` as a strong reference or owner of a `GTlsPassword` instance.
///
/// Holds a password used in TLS.
open class TLSPassword: GLibObject.Object, TLSPasswordProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSPassword` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTlsPassword>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSPassword` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTlsPassword>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSPassword` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSPassword` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSPassword` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTlsPassword>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSPassword` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTlsPassword>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GTlsPassword`.
    /// i.e., ownership is transferred to the `TLSPassword` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTlsPassword>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `TLSPasswordProtocol`
    /// Will retain `GTlsPassword`.
    /// - Parameter other: an instance of a related type that implements `TLSPasswordProtocol`
    @inlinable public init<T: TLSPasswordProtocol>(tlsPassword other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Create a new `GTlsPassword` object.
    @inlinable public init( flags: TLSPasswordFlags, description: UnsafePointer<gchar>!) {
        let rv = g_tls_password_new(flags.value, description)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum TLSPasswordPropertyName: String, PropertyNameProtocol {
    case description = "description"
    case flags = "flags"
    case warning = "warning"
}

public extension TLSPasswordProtocol {
    /// Bind a `TLSPasswordPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: TLSPasswordPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a TLSPassword property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: TLSPasswordPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a TLSPassword property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: TLSPasswordPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum TLSPasswordSignalName: String, SignalNameProtocol {
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
    case notifyDescription = "notify::description"
    case notifyFlags = "notify::flags"
    case notifyWarning = "notify::warning"
}

// MARK: TLSPassword has no signals
// MARK: TLSPassword Class: TLSPasswordProtocol extension (methods and fields)
public extension TLSPasswordProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsPassword` instance.
    @inlinable var tls_password_ptr: UnsafeMutablePointer<GTlsPassword>! { return ptr?.assumingMemoryBound(to: GTlsPassword.self) }

    /// Get a description string about what the password will be used for.
    @inlinable func getDescription() -> String! {
        let rv = g_tls_password_get_description(tls_password_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Get flags about the password.
    @inlinable func getFlags() -> TLSPasswordFlags {
        let rv = TLSPasswordFlags(g_tls_password_get_flags(tls_password_ptr))
        return rv
    }

    /// Get the password value. If `length` is not `nil` then it will be
    /// filled in with the length of the password value. (Note that the
    /// password value is not nul-terminated, so you can only pass `nil`
    /// for `length` in contexts where you know the password will have a
    /// certain fixed length.)
    @inlinable func getValue(length: UnsafeMutablePointer<gsize>? = nil) -> String! {
        let rv = g_tls_password_get_value(tls_password_ptr, length).map({ String(cString: $0) })
        return rv
    }

    /// Get a user readable translated warning. Usually this warning is a
    /// representation of the password flags returned from
    /// `g_tls_password_get_flags()`.
    @inlinable func getWarning() -> String! {
        let rv = g_tls_password_get_warning(tls_password_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Set a description string about what the password will be used for.
    @inlinable func set(description: UnsafePointer<gchar>!) {
        g_tls_password_set_description(tls_password_ptr, description)
    
    }

    /// Set flags about the password.
    @inlinable func set(flags: TLSPasswordFlags) {
        g_tls_password_set_flags(tls_password_ptr, flags.value)
    
    }

    /// Set the value for this password. The `value` will be copied by the password
    /// object.
    /// 
    /// Specify the `length`, for a non-nul-terminated password. Pass -1 as
    /// `length` if using a nul-terminated password, and `length` will be
    /// calculated automatically. (Note that the terminating nul is not
    /// considered part of the password in this case.)
    @inlinable func set(value: UnsafePointer<guchar>!, length: gssize) {
        g_tls_password_set_value(tls_password_ptr, value, length)
    
    }

    /// Provide the value for this password.
    /// 
    /// The `value` will be owned by the password object, and later freed using
    /// the `destroy` function callback.
    /// 
    /// Specify the `length`, for a non-nul-terminated password. Pass -1 as
    /// `length` if using a nul-terminated password, and `length` will be
    /// calculated automatically. (Note that the terminating nul is not
    /// considered part of the password in this case.)
    @inlinable func setValueFull(value: UnsafeMutablePointer<guchar>!, length: gssize, destroy: GDestroyNotify? = nil) {
        g_tls_password_set_value_full(tls_password_ptr, value, length, destroy)
    
    }

    /// Set a user readable translated warning. Usually this warning is a
    /// representation of the password flags returned from
    /// `g_tls_password_get_flags()`.
    @inlinable func set(warning: UnsafePointer<gchar>!) {
        g_tls_password_set_warning(tls_password_ptr, warning)
    
    }
    @inlinable var description: String! {
        /// Get a description string about what the password will be used for.
        get {
            let rv = g_tls_password_get_description(tls_password_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Set a description string about what the password will be used for.
        nonmutating set {
            g_tls_password_set_description(tls_password_ptr, newValue)
        }
    }

    @inlinable var flags: TLSPasswordFlags {
        /// Get flags about the password.
        get {
            let rv = TLSPasswordFlags(g_tls_password_get_flags(tls_password_ptr))
            return rv
        }
        /// Set flags about the password.
        nonmutating set {
            g_tls_password_set_flags(tls_password_ptr, newValue.value)
        }
    }

    @inlinable var warning: String! {
        /// Get a user readable translated warning. Usually this warning is a
        /// representation of the password flags returned from
        /// `g_tls_password_get_flags()`.
        get {
            let rv = g_tls_password_get_warning(tls_password_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Set a user readable translated warning. Usually this warning is a
        /// representation of the password flags returned from
        /// `g_tls_password_get_flags()`.
        nonmutating set {
            g_tls_password_set_warning(tls_password_ptr, newValue)
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = tls_password_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - UnixConnection Class

/// The `UnixConnectionProtocol` protocol exposes the methods and properties of an underlying `GUnixConnection` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixConnection`.
/// Alternatively, use `UnixConnectionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// This is the subclass of `GSocketConnection` that is created
/// for UNIX domain sockets.
/// 
/// It contains functions to do some of the UNIX socket specific
/// functionality like passing file descriptors.
/// 
/// Note that `&lt;gio/gunixconnection.h&gt;` belongs to the UNIX-specific
/// GIO interfaces, thus you have to use the `gio-unix-2.0.pc`
/// pkg-config file when using it.
public protocol UnixConnectionProtocol: SocketConnectionProtocol {
        /// Untyped pointer to the underlying `GUnixConnection` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixConnection` instance.
    var unix_connection_ptr: UnsafeMutablePointer<GUnixConnection>! { get }

    /// Required Initialiser for types conforming to `UnixConnectionProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `UnixConnectionRef` type acts as a lightweight Swift reference to an underlying `GUnixConnection` instance.
/// It exposes methods that can operate on this data type through `UnixConnectionProtocol` conformance.
/// Use `UnixConnectionRef` only as an `unowned` reference to an existing `GUnixConnection` instance.
///
/// This is the subclass of `GSocketConnection` that is created
/// for UNIX domain sockets.
/// 
/// It contains functions to do some of the UNIX socket specific
/// functionality like passing file descriptors.
/// 
/// Note that `&lt;gio/gunixconnection.h&gt;` belongs to the UNIX-specific
/// GIO interfaces, thus you have to use the `gio-unix-2.0.pc`
/// pkg-config file when using it.
public struct UnixConnectionRef: UnixConnectionProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GUnixConnection` instance.
    /// For type-safe access, use the generated, typed pointer `unix_connection_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixConnectionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixConnection>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixConnection>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixConnection>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixConnection>?) {
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

    /// Reference intialiser for a related type that implements `UnixConnectionProtocol`
    @inlinable init<T: UnixConnectionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: UnixConnectionProtocol>(_ other: T) -> UnixConnectionRef { UnixConnectionRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UnixConnection` type acts as a reference-counted owner of an underlying `GUnixConnection` instance.
/// It provides the methods that can operate on this data type through `UnixConnectionProtocol` conformance.
/// Use `UnixConnection` as a strong reference or owner of a `GUnixConnection` instance.
///
/// This is the subclass of `GSocketConnection` that is created
/// for UNIX domain sockets.
/// 
/// It contains functions to do some of the UNIX socket specific
/// functionality like passing file descriptors.
/// 
/// Note that `&lt;gio/gunixconnection.h&gt;` belongs to the UNIX-specific
/// GIO interfaces, thus you have to use the `gio-unix-2.0.pc`
/// pkg-config file when using it.
open class UnixConnection: SocketConnection, UnixConnectionProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GUnixConnection>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GUnixConnection>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixConnection` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GUnixConnection>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GUnixConnection>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GUnixConnection`.
    /// i.e., ownership is transferred to the `UnixConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GUnixConnection>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `UnixConnectionProtocol`
    /// Will retain `GUnixConnection`.
    /// - Parameter other: an instance of a related type that implements `UnixConnectionProtocol`
    @inlinable public init<T: UnixConnectionProtocol>(unixConnection other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum UnixConnectionPropertyName: String, PropertyNameProtocol {
    case closed = "closed"
    case inputStream = "input-stream"
    case outputStream = "output-stream"
    case socket = "socket"
}

public extension UnixConnectionProtocol {
    /// Bind a `UnixConnectionPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: UnixConnectionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a UnixConnection property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: UnixConnectionPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a UnixConnection property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: UnixConnectionPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum UnixConnectionSignalName: String, SignalNameProtocol {
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
    case notifyClosed = "notify::closed"
    case notifyInputStream = "notify::input-stream"
    case notifyOutputStream = "notify::output-stream"
    case notifySocket = "notify::socket"
}

// MARK: UnixConnection has no signals
// MARK: UnixConnection Class: UnixConnectionProtocol extension (methods and fields)
public extension UnixConnectionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixConnection` instance.
    @inlinable var unix_connection_ptr: UnsafeMutablePointer<GUnixConnection>! { return ptr?.assumingMemoryBound(to: GUnixConnection.self) }

    /// Receives credentials from the sending end of the connection.  The
    /// sending end has to call `g_unix_connection_send_credentials()` (or
    /// similar) for this to work.
    /// 
    /// As well as reading the credentials this also reads (and discards) a
    /// single byte from the stream, as this is required for credentials
    /// passing to work on some implementations.
    /// 
    /// This method can be expected to be available on the following platforms:
    /// 
    /// - Linux since GLib 2.26
    /// - FreeBSD since GLib 2.26
    /// - GNU/kFreeBSD since GLib 2.36
    /// - Solaris, Illumos and OpenSolaris since GLib 2.40
    /// - GNU/Hurd since GLib 2.40
    /// 
    /// Other ways to exchange credentials with a foreign peer includes the
    /// `GUnixCredentialsMessage` type and `g_socket_get_credentials()` function.
    @inlinable func receiveCredentials(cancellable: CancellableRef? = nil) throws -> CredentialsRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = CredentialsRef(gconstpointer: gconstpointer(g_unix_connection_receive_credentials(unix_connection_ptr, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Receives credentials from the sending end of the connection.  The
    /// sending end has to call `g_unix_connection_send_credentials()` (or
    /// similar) for this to work.
    /// 
    /// As well as reading the credentials this also reads (and discards) a
    /// single byte from the stream, as this is required for credentials
    /// passing to work on some implementations.
    /// 
    /// This method can be expected to be available on the following platforms:
    /// 
    /// - Linux since GLib 2.26
    /// - FreeBSD since GLib 2.26
    /// - GNU/kFreeBSD since GLib 2.36
    /// - Solaris, Illumos and OpenSolaris since GLib 2.40
    /// - GNU/Hurd since GLib 2.40
    /// 
    /// Other ways to exchange credentials with a foreign peer includes the
    /// `GUnixCredentialsMessage` type and `g_socket_get_credentials()` function.
    @inlinable func receiveCredentials<CancellableT: CancellableProtocol>(cancellable: CancellableT?) throws -> CredentialsRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = CredentialsRef(gconstpointer: gconstpointer(g_unix_connection_receive_credentials(unix_connection_ptr, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously receive credentials.
    /// 
    /// For more details, see `g_unix_connection_receive_credentials()` which is
    /// the synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called. You can then call
    /// `g_unix_connection_receive_credentials_finish()` to get the result of the operation.
    @inlinable func receiveCredentialsAsync(cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_unix_connection_receive_credentials_async(unix_connection_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously receive credentials.
    /// 
    /// For more details, see `g_unix_connection_receive_credentials()` which is
    /// the synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called. You can then call
    /// `g_unix_connection_receive_credentials_finish()` to get the result of the operation.
    @inlinable func receiveCredentialsAsync<CancellableT: CancellableProtocol>(cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_unix_connection_receive_credentials_async(unix_connection_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an asynchronous receive credentials operation started with
    /// `g_unix_connection_receive_credentials_async()`.
    @inlinable func receiveCredentialsFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> CredentialsRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = CredentialsRef(gconstpointer: gconstpointer(g_unix_connection_receive_credentials_finish(unix_connection_ptr, result.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Receives a file descriptor from the sending end of the connection.
    /// The sending end has to call `g_unix_connection_send_fd()` for this
    /// to work.
    /// 
    /// As well as reading the fd this also reads a single byte from the
    /// stream, as this is required for fd passing to work on some
    /// implementations.
    @inlinable func receiveFd(cancellable: CancellableRef? = nil) throws -> Int {
        var error: UnsafeMutablePointer<GError>?
        let rv = Int(g_unix_connection_receive_fd(unix_connection_ptr, cancellable?.cancellable_ptr, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Receives a file descriptor from the sending end of the connection.
    /// The sending end has to call `g_unix_connection_send_fd()` for this
    /// to work.
    /// 
    /// As well as reading the fd this also reads a single byte from the
    /// stream, as this is required for fd passing to work on some
    /// implementations.
    @inlinable func receiveFd<CancellableT: CancellableProtocol>(cancellable: CancellableT?) throws -> Int {
        var error: UnsafeMutablePointer<GError>?
        let rv = Int(g_unix_connection_receive_fd(unix_connection_ptr, cancellable?.cancellable_ptr, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Passes the credentials of the current user the receiving side
    /// of the connection. The receiving end has to call
    /// `g_unix_connection_receive_credentials()` (or similar) to accept the
    /// credentials.
    /// 
    /// As well as sending the credentials this also writes a single NUL
    /// byte to the stream, as this is required for credentials passing to
    /// work on some implementations.
    /// 
    /// This method can be expected to be available on the following platforms:
    /// 
    /// - Linux since GLib 2.26
    /// - FreeBSD since GLib 2.26
    /// - GNU/kFreeBSD since GLib 2.36
    /// - Solaris, Illumos and OpenSolaris since GLib 2.40
    /// - GNU/Hurd since GLib 2.40
    /// 
    /// Other ways to exchange credentials with a foreign peer includes the
    /// `GUnixCredentialsMessage` type and `g_socket_get_credentials()` function.
    @inlinable func sendCredentials(cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_unix_connection_send_credentials(unix_connection_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Passes the credentials of the current user the receiving side
    /// of the connection. The receiving end has to call
    /// `g_unix_connection_receive_credentials()` (or similar) to accept the
    /// credentials.
    /// 
    /// As well as sending the credentials this also writes a single NUL
    /// byte to the stream, as this is required for credentials passing to
    /// work on some implementations.
    /// 
    /// This method can be expected to be available on the following platforms:
    /// 
    /// - Linux since GLib 2.26
    /// - FreeBSD since GLib 2.26
    /// - GNU/kFreeBSD since GLib 2.36
    /// - Solaris, Illumos and OpenSolaris since GLib 2.40
    /// - GNU/Hurd since GLib 2.40
    /// 
    /// Other ways to exchange credentials with a foreign peer includes the
    /// `GUnixCredentialsMessage` type and `g_socket_get_credentials()` function.
    @inlinable func sendCredentials<CancellableT: CancellableProtocol>(cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_unix_connection_send_credentials(unix_connection_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously send credentials.
    /// 
    /// For more details, see `g_unix_connection_send_credentials()` which is
    /// the synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called. You can then call
    /// `g_unix_connection_send_credentials_finish()` to get the result of the operation.
    @inlinable func sendCredentialsAsync(cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_unix_connection_send_credentials_async(unix_connection_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously send credentials.
    /// 
    /// For more details, see `g_unix_connection_send_credentials()` which is
    /// the synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called. You can then call
    /// `g_unix_connection_send_credentials_finish()` to get the result of the operation.
    @inlinable func sendCredentialsAsync<CancellableT: CancellableProtocol>(cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_unix_connection_send_credentials_async(unix_connection_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an asynchronous send credentials operation started with
    /// `g_unix_connection_send_credentials_async()`.
    @inlinable func sendCredentialsFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_unix_connection_send_credentials_finish(unix_connection_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Passes a file descriptor to the receiving side of the
    /// connection. The receiving end has to call `g_unix_connection_receive_fd()`
    /// to accept the file descriptor.
    /// 
    /// As well as sending the fd this also writes a single byte to the
    /// stream, as this is required for fd passing to work on some
    /// implementations.
    @inlinable func send(fd: Int, cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_unix_connection_send_fd(unix_connection_ptr, gint(fd), cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Passes a file descriptor to the receiving side of the
    /// connection. The receiving end has to call `g_unix_connection_receive_fd()`
    /// to accept the file descriptor.
    /// 
    /// As well as sending the fd this also writes a single byte to the
    /// stream, as this is required for fd passing to work on some
    /// implementations.
    @inlinable func send<CancellableT: CancellableProtocol>(fd: Int, cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_unix_connection_send_fd(unix_connection_ptr, gint(fd), cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    @inlinable var parentInstance: GSocketConnection {
        get {
            let rv = unix_connection_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



