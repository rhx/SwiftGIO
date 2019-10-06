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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GTcpConnection` instance.
    var tcp_connection_ptr: UnsafeMutablePointer<GTcpConnection> { get }
}

/// The `TcpConnectionRef` type acts as a lightweight Swift reference to an underlying `GTcpConnection` instance.
/// It exposes methods that can operate on this data type through `TcpConnectionProtocol` conformance.
/// Use `TcpConnectionRef` only as an `unowned` reference to an existing `GTcpConnection` instance.
///
/// This is the subclass of `GSocketConnection` that is created
/// for TCP/IP sockets.
public struct TcpConnectionRef: TcpConnectionProtocol {
    /// Untyped pointer to the underlying `GTcpConnection` instance.
    /// For type-safe access, use the generated, typed pointer `tcp_connection_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TcpConnectionRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GTcpConnection>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TcpConnectionProtocol`
    init<T: TcpConnectionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    /// Ownership is transferred to the `TcpConnection` instance.
    public init(_ op: UnsafeMutablePointer<GTcpConnection>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `TcpConnectionProtocol`
    /// Will retain `GTcpConnection`.
    public convenience init<T: TcpConnectionProtocol>(_ other: T) {
        self.init(cast(other.tcp_connection_ptr))
        g_object_ref(cast(tcp_connection_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GTcpConnection.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GTcpConnection.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GTcpConnection.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GTcpConnection>(opaquePointer))
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: TcpConnectionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(tcp_connection_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"
    case notifyClosed = "notify::closed"
    case notifyGracefulDisconnect = "notify::graceful-disconnect"
    case notifyInputStream = "notify::input-stream"
    case notifyOutputStream = "notify::output-stream"
    case notifySocket = "notify::socket"
}

public extension TcpConnectionProtocol {
    /// Connect a `TcpConnectionSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: TcpConnectionSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(tcp_connection_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension TcpConnectionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTcpConnection` instance.
    var tcp_connection_ptr: UnsafeMutablePointer<GTcpConnection> { return ptr.assumingMemoryBound(to: GTcpConnection.self) }

    /// Checks if graceful disconnects are used. See
    /// `g_tcp_connection_set_graceful_disconnect()`.
    func getGracefulDisconnect() -> Bool {
        let rv = g_tcp_connection_get_graceful_disconnect(cast(tcp_connection_ptr))
        return Bool(rv != 0)
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
    func set(gracefulDisconnect graceful_disconnect: Bool) {
        g_tcp_connection_set_graceful_disconnect(cast(tcp_connection_ptr), gboolean(graceful_disconnect ? 1 : 0))
    
    }
    /// Checks if graceful disconnects are used. See
    /// `g_tcp_connection_set_graceful_disconnect()`.
    var gracefulDisconnect: Bool {
        /// Checks if graceful disconnects are used. See
        /// `g_tcp_connection_set_graceful_disconnect()`.
        get {
            let rv = g_tcp_connection_get_graceful_disconnect(cast(tcp_connection_ptr))
            return Bool(rv != 0)
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
            g_tcp_connection_set_graceful_disconnect(cast(tcp_connection_ptr), gboolean(newValue ? 1 : 0))
        }
    }
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GTcpWrapperConnection` instance.
    var tcp_wrapper_connection_ptr: UnsafeMutablePointer<GTcpWrapperConnection> { get }
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
public struct TcpWrapperConnectionRef: TcpWrapperConnectionProtocol {
    /// Untyped pointer to the underlying `GTcpWrapperConnection` instance.
    /// For type-safe access, use the generated, typed pointer `tcp_wrapper_connection_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TcpWrapperConnectionRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GTcpWrapperConnection>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TcpWrapperConnectionProtocol`
    init<T: TcpWrapperConnectionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Wraps `base_io_stream` and `socket` together as a `GSocketConnection`.
    init( base_io_stream: IOStreamProtocol, socket: SocketProtocol) {
        let rv = g_tcp_wrapper_connection_new(cast(base_io_stream.ptr), cast(socket.ptr))
        self.init(cast(rv))
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
    /// Ownership is transferred to the `TcpWrapperConnection` instance.
    public init(_ op: UnsafeMutablePointer<GTcpWrapperConnection>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `TcpWrapperConnectionProtocol`
    /// Will retain `GTcpWrapperConnection`.
    public convenience init<T: TcpWrapperConnectionProtocol>(_ other: T) {
        self.init(cast(other.tcp_wrapper_connection_ptr))
        g_object_ref(cast(tcp_wrapper_connection_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GTcpWrapperConnection.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GTcpWrapperConnection.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GTcpWrapperConnection.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GTcpWrapperConnection>(opaquePointer))
    }

    /// Wraps `base_io_stream` and `socket` together as a `GSocketConnection`.
    public convenience init( base_io_stream: IOStreamProtocol, socket: SocketProtocol) {
        let rv = g_tcp_wrapper_connection_new(cast(base_io_stream.ptr), cast(socket.ptr))
        self.init(cast(rv))
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: TcpWrapperConnectionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(tcp_wrapper_connection_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"
    case notifyBaseIoStream = "notify::base-io-stream"
    case notifyClosed = "notify::closed"
    case notifyGracefulDisconnect = "notify::graceful-disconnect"
    case notifyInputStream = "notify::input-stream"
    case notifyOutputStream = "notify::output-stream"
    case notifySocket = "notify::socket"
}

public extension TcpWrapperConnectionProtocol {
    /// Connect a `TcpWrapperConnectionSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: TcpWrapperConnectionSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(tcp_wrapper_connection_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension TcpWrapperConnectionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTcpWrapperConnection` instance.
    var tcp_wrapper_connection_ptr: UnsafeMutablePointer<GTcpWrapperConnection> { return ptr.assumingMemoryBound(to: GTcpWrapperConnection.self) }

    /// Get's `conn`'s base `GIOStream`
    func getBaseIoStream() -> UnsafeMutablePointer<GIOStream>! {
        let rv = g_tcp_wrapper_connection_get_base_io_stream(cast(tcp_wrapper_connection_ptr))
        return cast(rv)
    }
    /// Get's `conn`'s base `GIOStream`
    var baseIoStream: UnsafeMutablePointer<GIOStream>! {
        /// Get's `conn`'s base `GIOStream`
        get {
            let rv = g_tcp_wrapper_connection_get_base_io_stream(cast(tcp_wrapper_connection_ptr))
            return cast(rv)
        }
    }
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
/// ```` Creating unit tests using GTestDBus
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
public protocol TestDBusProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `GTestDBus` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GTestDBus` instance.
    var test_dbus_ptr: UnsafeMutablePointer<GTestDBus> { get }
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
/// ```` Creating unit tests using GTestDBus
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
public struct TestDBusRef: TestDBusProtocol {
    /// Untyped pointer to the underlying `GTestDBus` instance.
    /// For type-safe access, use the generated, typed pointer `test_dbus_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TestDBusRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GTestDBus>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TestDBusProtocol`
    init<T: TestDBusProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestDBusProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestDBusProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestDBusProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestDBusProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestDBusProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Create a new `GTestDBus` object.
    init( flags: TestDBusFlags) {
        let rv = g_test_dbus_new(flags)
        self.init(cast(rv))
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
/// ```` Creating unit tests using GTestDBus
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
open class TestDBus: Object, TestDBusProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TestDBus` instance.
    public init(_ op: UnsafeMutablePointer<GTestDBus>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `TestDBusProtocol`
    /// Will retain `GTestDBus`.
    public convenience init<T: TestDBusProtocol>(_ other: T) {
        self.init(cast(other.test_dbus_ptr))
        g_object_ref(cast(test_dbus_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestDBusProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GTestDBus.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestDBusProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GTestDBus.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestDBusProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GTestDBus.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TestDBusProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GTestDBus>(opaquePointer))
    }

    /// Create a new `GTestDBus` object.
    public convenience init( flags: TestDBusFlags) {
        let rv = g_test_dbus_new(flags)
        self.init(cast(rv))
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: TestDBusPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(test_dbus_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// `GTestDBusFlags` specifying the behaviour of the D-Bus session.
    case notifyFlags = "notify::flags"
}

public extension TestDBusProtocol {
    /// Connect a `TestDBusSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: TestDBusSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(test_dbus_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension TestDBusProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTestDBus` instance.
    var test_dbus_ptr: UnsafeMutablePointer<GTestDBus> { return ptr.assumingMemoryBound(to: GTestDBus.self) }

    /// Add a path where dbus-daemon will look up .service files. This can't be
    /// called after `g_test_dbus_up()`.
    func addServiceDir(path: UnsafePointer<gchar>) {
        g_test_dbus_add_service_dir(cast(test_dbus_ptr), path)
    
    }

    /// Stop the session bus started by `g_test_dbus_up()`.
    /// 
    /// This will wait for the singleton returned by `g_bus_get()` or `g_bus_get_sync()`
    /// to be destroyed. This is done to ensure that the next unit test won't get a
    /// leaked singleton from this test.
    func down() {
        g_test_dbus_down(cast(test_dbus_ptr))
    
    }

    /// Get the address on which dbus-daemon is running. If `g_test_dbus_up()` has not
    /// been called yet, `nil` is returned. This can be used with
    /// `g_dbus_connection_new_for_address()`.
    func getBusAddress() -> String! {
        let rv = g_test_dbus_get_bus_address(cast(test_dbus_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Get the flags of the `GTestDBus` object.
    func getFlags() -> GTestDBusFlags {
        let rv = g_test_dbus_get_flags(cast(test_dbus_ptr))
        return rv
    }

    /// Stop the session bus started by `g_test_dbus_up()`.
    /// 
    /// Unlike `g_test_dbus_down()`, this won't verify the `GDBusConnection`
    /// singleton returned by `g_bus_get()` or `g_bus_get_sync()` is destroyed. Unit
    /// tests wanting to verify behaviour after the session bus has been stopped
    /// can use this function but should still call `g_test_dbus_down()` when done.
    func stop() {
        g_test_dbus_stop(cast(test_dbus_ptr))
    
    }

    /// Start a dbus-daemon instance and set DBUS_SESSION_BUS_ADDRESS. After this
    /// call, it is safe for unit tests to start sending messages on the session bus.
    /// 
    /// If this function is called from setup callback of `g_test_add()`,
    /// `g_test_dbus_down()` must be called in its teardown callback.
    /// 
    /// If this function is called from unit test's `main()`, then `g_test_dbus_down()`
    /// must be called after `g_test_run()`.
    func up() {
        g_test_dbus_up(cast(test_dbus_ptr))
    
    }
    /// Get the address on which dbus-daemon is running. If `g_test_dbus_up()` has not
    /// been called yet, `nil` is returned. This can be used with
    /// `g_dbus_connection_new_for_address()`.
    var busAddress: String! {
        /// Get the address on which dbus-daemon is running. If `g_test_dbus_up()` has not
        /// been called yet, `nil` is returned. This can be used with
        /// `g_dbus_connection_new_for_address()`.
        get {
            let rv = g_test_dbus_get_bus_address(cast(test_dbus_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// `GTestDBusFlags` specifying the behaviour of the D-Bus session.
    var flags: GTestDBusFlags {
        /// Get the flags of the `GTestDBus` object.
        get {
            let rv = g_test_dbus_get_flags(cast(test_dbus_ptr))
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
public protocol ThemedIconProtocol: ObjectProtocol, IconProtocol {
    /// Untyped pointer to the underlying `GThemedIcon` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GThemedIcon` instance.
    var themed_icon_ptr: UnsafeMutablePointer<GThemedIcon> { get }
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
public struct ThemedIconRef: ThemedIconProtocol {
    /// Untyped pointer to the underlying `GThemedIcon` instance.
    /// For type-safe access, use the generated, typed pointer `themed_icon_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ThemedIconRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GThemedIcon>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ThemedIconProtocol`
    init<T: ThemedIconProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new themed icon for `iconname`.
    init( iconname: UnsafePointer<CChar>) {
        let rv = g_themed_icon_new(iconname)
        self.init(cast(rv))
    }

    /// Creates a new themed icon for `iconnames`.
    init(names iconnames: UnsafeMutablePointer<UnsafeMutablePointer<CChar>>, len: CInt) {
        let rv = g_themed_icon_new_from_names(cast(iconnames), len)
        self.init(cast(rv))
    }

    /// Creates a new themed icon for `iconname`, and all the names
    /// that can be created by shortening `iconname` at '-' characters.
    /// 
    /// In the following example, `icon1` and `icon2` are equivalent:
    /// (C Language Example):
    /// ```C
    /// const char *names[] = {
    ///   "gnome-dev-cdrom-audio",
    ///   "gnome-dev-cdrom",
    ///   "gnome-dev",
    ///   "gnome"
    /// };
    /// 
    /// icon1 = g_themed_icon_new_from_names (names, 4);
    /// icon2 = g_themed_icon_new_with_default_fallbacks ("gnome-dev-cdrom-audio");
    /// ```
    /// 
    init(defaultFallbacks iconname: UnsafePointer<CChar>) {
        let rv = g_themed_icon_new_with_default_fallbacks(iconname)
        self.init(cast(rv))
    }
    /// Creates a new themed icon for `iconnames`.
    static func newFrom(names iconnames: UnsafeMutablePointer<UnsafeMutablePointer<CChar>>, len: CInt) -> ThemedIconRef! {
        let rv = g_themed_icon_new_from_names(cast(iconnames), len)
        return rv.map { ThemedIconRef(cast($0)) }
    }

    /// Creates a new themed icon for `iconname`, and all the names
    /// that can be created by shortening `iconname` at '-' characters.
    /// 
    /// In the following example, `icon1` and `icon2` are equivalent:
    /// (C Language Example):
    /// ```C
    /// const char *names[] = {
    ///   "gnome-dev-cdrom-audio",
    ///   "gnome-dev-cdrom",
    ///   "gnome-dev",
    ///   "gnome"
    /// };
    /// 
    /// icon1 = g_themed_icon_new_from_names (names, 4);
    /// icon2 = g_themed_icon_new_with_default_fallbacks ("gnome-dev-cdrom-audio");
    /// ```
    /// 
    static func newWith(defaultFallbacks iconname: UnsafePointer<CChar>) -> ThemedIconRef! {
        let rv = g_themed_icon_new_with_default_fallbacks(iconname)
        return rv.map { ThemedIconRef(cast($0)) }
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
open class ThemedIcon: Object, ThemedIconProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ThemedIcon` instance.
    public init(_ op: UnsafeMutablePointer<GThemedIcon>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ThemedIconProtocol`
    /// Will retain `GThemedIcon`.
    public convenience init<T: ThemedIconProtocol>(_ other: T) {
        self.init(cast(other.themed_icon_ptr))
        g_object_ref(cast(themed_icon_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GThemedIcon.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GThemedIcon.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GThemedIcon.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GThemedIcon>(opaquePointer))
    }

    /// Creates a new themed icon for `iconname`.
    public convenience init( iconname: UnsafePointer<CChar>) {
        let rv = g_themed_icon_new(iconname)
        self.init(cast(rv))
    }

    /// Creates a new themed icon for `iconnames`.
    public convenience init(names iconnames: UnsafeMutablePointer<UnsafeMutablePointer<CChar>>, len: CInt) {
        let rv = g_themed_icon_new_from_names(cast(iconnames), len)
        self.init(cast(rv))
    }

    /// Creates a new themed icon for `iconname`, and all the names
    /// that can be created by shortening `iconname` at '-' characters.
    /// 
    /// In the following example, `icon1` and `icon2` are equivalent:
    /// (C Language Example):
    /// ```C
    /// const char *names[] = {
    ///   "gnome-dev-cdrom-audio",
    ///   "gnome-dev-cdrom",
    ///   "gnome-dev",
    ///   "gnome"
    /// };
    /// 
    /// icon1 = g_themed_icon_new_from_names (names, 4);
    /// icon2 = g_themed_icon_new_with_default_fallbacks ("gnome-dev-cdrom-audio");
    /// ```
    /// 
    public convenience init(defaultFallbacks iconname: UnsafePointer<CChar>) {
        let rv = g_themed_icon_new_with_default_fallbacks(iconname)
        self.init(cast(rv))
    }

    /// Creates a new themed icon for `iconnames`.
    public static func newFrom(names iconnames: UnsafeMutablePointer<UnsafeMutablePointer<CChar>>, len: CInt) -> ThemedIcon! {
        let rv = g_themed_icon_new_from_names(cast(iconnames), len)
        return rv.map { ThemedIcon(cast($0)) }
    }

    /// Creates a new themed icon for `iconname`, and all the names
    /// that can be created by shortening `iconname` at '-' characters.
    /// 
    /// In the following example, `icon1` and `icon2` are equivalent:
    /// (C Language Example):
    /// ```C
    /// const char *names[] = {
    ///   "gnome-dev-cdrom-audio",
    ///   "gnome-dev-cdrom",
    ///   "gnome-dev",
    ///   "gnome"
    /// };
    /// 
    /// icon1 = g_themed_icon_new_from_names (names, 4);
    /// icon2 = g_themed_icon_new_with_default_fallbacks ("gnome-dev-cdrom-audio");
    /// ```
    /// 
    public static func newWith(defaultFallbacks iconname: UnsafePointer<CChar>) -> ThemedIcon! {
        let rv = g_themed_icon_new_with_default_fallbacks(iconname)
        return rv.map { ThemedIcon(cast($0)) }
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: ThemedIconPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(themed_icon_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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
    /// [canonical parameter names][canonical-parameter-names] as
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

public extension ThemedIconProtocol {
    /// Connect a `ThemedIconSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: ThemedIconSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(themed_icon_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension ThemedIconProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GThemedIcon` instance.
    var themed_icon_ptr: UnsafeMutablePointer<GThemedIcon> { return ptr.assumingMemoryBound(to: GThemedIcon.self) }

    /// Append a name to the list of icons from within `icon`.
    /// 
    /// Note that doing so invalidates the hash computed by prior calls
    /// to `g_icon_hash()`.
    func appendName(iconname: UnsafePointer<CChar>) {
        g_themed_icon_append_name(cast(themed_icon_ptr), iconname)
    
    }

    /// Gets the names of icons from within `icon`.
    func getNames() -> UnsafePointer<UnsafePointer<gchar>>! {
        let rv = g_themed_icon_get_names(cast(themed_icon_ptr))
        return cast(rv)
    }

    /// Prepend a name to the list of icons from within `icon`.
    /// 
    /// Note that doing so invalidates the hash computed by prior calls
    /// to `g_icon_hash()`.
    func prependName(iconname: UnsafePointer<CChar>) {
        g_themed_icon_prepend_name(cast(themed_icon_ptr), iconname)
    
    }
    /// A `nil`-terminated array of icon names.
    var names: UnsafePointer<UnsafePointer<gchar>>! {
        /// Gets the names of icons from within `icon`.
        get {
            let rv = g_themed_icon_get_names(cast(themed_icon_ptr))
            return cast(rv)
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GThreadedSocketService` instance.
    var threaded_socket_service_ptr: UnsafeMutablePointer<GThreadedSocketService> { get }
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
public struct ThreadedSocketServiceRef: ThreadedSocketServiceProtocol {
    /// Untyped pointer to the underlying `GThreadedSocketService` instance.
    /// For type-safe access, use the generated, typed pointer `threaded_socket_service_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ThreadedSocketServiceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GThreadedSocketService>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ThreadedSocketServiceProtocol`
    init<T: ThreadedSocketServiceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GThreadedSocketService` with no listeners. Listeners
    /// must be added with one of the `GSocketListener` "add" methods.
    init( max_threads: CInt) {
        let rv = g_threaded_socket_service_new(max_threads)
        self.init(cast(rv))
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
    /// Ownership is transferred to the `ThreadedSocketService` instance.
    public init(_ op: UnsafeMutablePointer<GThreadedSocketService>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ThreadedSocketServiceProtocol`
    /// Will retain `GThreadedSocketService`.
    public convenience init<T: ThreadedSocketServiceProtocol>(_ other: T) {
        self.init(cast(other.threaded_socket_service_ptr))
        g_object_ref(cast(threaded_socket_service_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GThreadedSocketService.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GThreadedSocketService.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GThreadedSocketService.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GThreadedSocketService>(opaquePointer))
    }

    /// Creates a new `GThreadedSocketService` with no listeners. Listeners
    /// must be added with one of the `GSocketListener` "add" methods.
    public convenience init( max_threads: CInt) {
        let rv = g_threaded_socket_service_new(max_threads)
        self.init(cast(rv))
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: ThreadedSocketServicePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(threaded_socket_service_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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
    /// [canonical parameter names][canonical-parameter-names] as
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

public extension ThreadedSocketServiceProtocol {
    /// Connect a `ThreadedSocketServiceSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: ThreadedSocketServiceSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(threaded_socket_service_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension ThreadedSocketServiceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GThreadedSocketService` instance.
    var threaded_socket_service_ptr: UnsafeMutablePointer<GThreadedSocketService> { return ptr.assumingMemoryBound(to: GThreadedSocketService.self) }

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
public protocol TLSCertificateProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `GTlsCertificate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GTlsCertificate` instance.
    var tls_certificate_ptr: UnsafeMutablePointer<GTlsCertificate> { get }
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
public struct TLSCertificateRef: TLSCertificateProtocol {
    /// Untyped pointer to the underlying `GTlsCertificate` instance.
    /// For type-safe access, use the generated, typed pointer `tls_certificate_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TLSCertificateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GTlsCertificate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TLSCertificateProtocol`
    init<T: TLSCertificateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    init(file: UnsafePointer<gchar>) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_tls_certificate_new_from_file(file, &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
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
    init(files cert_file: UnsafePointer<gchar>, keyFile key_file: UnsafePointer<gchar>) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_tls_certificate_new_from_files(cert_file, key_file, &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }

    /// Creates a `GTlsCertificate` from the PEM-encoded data in `data`. If
    /// `data` includes both a certificate and a private key, then the
    /// returned certificate will include the private key data as well. (See
    /// the `GTlsCertificate:private`-key-pem property for information about
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
    init(pem data: UnsafePointer<gchar>, length: gssize) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_tls_certificate_new_from_pem(data, length, &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
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
    static func newFrom(file: UnsafePointer<gchar>) throws -> TLSCertificateRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_tls_certificate_new_from_file(file, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { TLSCertificateRef(cast($0)) }
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
    static func newFrom(files cert_file: UnsafePointer<gchar>, keyFile key_file: UnsafePointer<gchar>) throws -> TLSCertificateRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_tls_certificate_new_from_files(cert_file, key_file, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { TLSCertificateRef(cast($0)) }
    }

    /// Creates a `GTlsCertificate` from the PEM-encoded data in `data`. If
    /// `data` includes both a certificate and a private key, then the
    /// returned certificate will include the private key data as well. (See
    /// the `GTlsCertificate:private`-key-pem property for information about
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
    static func newFrom(pem data: UnsafePointer<gchar>, length: gssize) throws -> TLSCertificateRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_tls_certificate_new_from_pem(data, length, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { TLSCertificateRef(cast($0)) }
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
open class TLSCertificate: Object, TLSCertificateProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TLSCertificate` instance.
    public init(_ op: UnsafeMutablePointer<GTlsCertificate>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `TLSCertificateProtocol`
    /// Will retain `GTlsCertificate`.
    public convenience init<T: TLSCertificateProtocol>(_ other: T) {
        self.init(cast(other.tls_certificate_ptr))
        g_object_ref(cast(tls_certificate_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GTlsCertificate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GTlsCertificate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GTlsCertificate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GTlsCertificate>(opaquePointer))
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
    public convenience init(file: UnsafePointer<gchar>) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_tls_certificate_new_from_file(file, &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
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
    public convenience init(files cert_file: UnsafePointer<gchar>, keyFile key_file: UnsafePointer<gchar>) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_tls_certificate_new_from_files(cert_file, key_file, &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }

    /// Creates a `GTlsCertificate` from the PEM-encoded data in `data`. If
    /// `data` includes both a certificate and a private key, then the
    /// returned certificate will include the private key data as well. (See
    /// the `GTlsCertificate:private`-key-pem property for information about
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
    public convenience init(pem data: UnsafePointer<gchar>, length: gssize) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_tls_certificate_new_from_pem(data, length, &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
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
    public static func newFrom(file: UnsafePointer<gchar>) throws -> TLSCertificate! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_tls_certificate_new_from_file(file, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { TLSCertificate(cast($0)) }
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
    public static func newFrom(files cert_file: UnsafePointer<gchar>, keyFile key_file: UnsafePointer<gchar>) throws -> TLSCertificate! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_tls_certificate_new_from_files(cert_file, key_file, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { TLSCertificate(cast($0)) }
    }

    /// Creates a `GTlsCertificate` from the PEM-encoded data in `data`. If
    /// `data` includes both a certificate and a private key, then the
    /// returned certificate will include the private key data as well. (See
    /// the `GTlsCertificate:private`-key-pem property for information about
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
    public static func newFrom(pem data: UnsafePointer<gchar>, length: gssize) throws -> TLSCertificate! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_tls_certificate_new_from_pem(data, length, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { TLSCertificate(cast($0)) }
    }

}

public enum TLSCertificatePropertyName: String, PropertyNameProtocol {
    /// The DER (binary) encoded representation of the certificate.
    /// This property and the `GTlsCertificate:certificate`-pem property
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
    /// format. This property (or the `GTlsCertificate:private`-key-pem
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
    /// `GTlsCertificate:private`-key property) can be set when
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: TLSCertificatePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(tls_certificate_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The DER (binary) encoded representation of the certificate.
    /// This property and the `GTlsCertificate:certificate`-pem property
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
    /// format. This property (or the `GTlsCertificate:private`-key-pem
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
    /// `GTlsCertificate:private`-key property) can be set when
    /// constructing a key (eg, from a file), but cannot be read.
    /// 
    /// PKCS`8` format is supported since 2.32; earlier releases only
    /// support PKCS`1`. You can use the `openssl rsa`
    /// tool to convert PKCS`8` keys to PKCS`1`.
    case notifyPrivateKeyPem = "notify::private-key-pem"
}

public extension TLSCertificateProtocol {
    /// Connect a `TLSCertificateSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: TLSCertificateSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(tls_certificate_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension TLSCertificateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsCertificate` instance.
    var tls_certificate_ptr: UnsafeMutablePointer<GTlsCertificate> { return ptr.assumingMemoryBound(to: GTlsCertificate.self) }

    /// Gets the `GTlsCertificate` representing `cert`'s issuer, if known
    func getIssuer() -> UnsafeMutablePointer<GTlsCertificate>! {
        let rv = g_tls_certificate_get_issuer(cast(tls_certificate_ptr))
        return cast(rv)
    }

    /// Check if two `GTlsCertificate` objects represent the same certificate.
    /// The raw DER byte data of the two certificates are checked for equality.
    /// This has the effect that two certificates may compare equal even if
    /// their `GTlsCertificate:issuer`, `GTlsCertificate:private`-key, or
    /// `GTlsCertificate:private`-key-pem properties differ.
    func isSame(certTwo cert_two: TLSCertificateProtocol) -> Bool {
        let rv = g_tls_certificate_is_same(cast(tls_certificate_ptr), cast(cert_two.ptr))
        return Bool(rv != 0)
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
    func verify(identity: SocketConnectableProtocol, trustedCa trusted_ca: TLSCertificateProtocol) -> GTlsCertificateFlags {
        let rv = g_tls_certificate_verify(cast(tls_certificate_ptr), cast(identity.ptr), cast(trusted_ca.ptr))
        return rv
    }

    /// Creates a new `GDtlsServerConnection` wrapping `base_socket`.
    func dtlsServerConnectionNew(baseSocket base_socket: DatagramBasedProtocol) throws -> UnsafeMutablePointer<GDatagramBased>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dtls_server_connection_new(cast(base_socket.ptr), cast(tls_certificate_ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Creates a new `GTlsServerConnection` wrapping `base_io_stream` (which
    /// must have pollable input and output streams).
    /// 
    /// See the documentation for `GTlsConnection:base`-io-stream for restrictions
    /// on when application code can run operations on the `base_io_stream` after
    /// this function has returned.
    func tlsServerConnectionNew(baseIoStream base_io_stream: IOStreamProtocol) throws -> UnsafeMutablePointer<GIOStream>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_tls_server_connection_new(cast(base_io_stream.ptr), cast(tls_certificate_ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }
    /// A `GTlsCertificate` representing the entity that issued this
    /// certificate. If `nil`, this means that the certificate is either
    /// self-signed, or else the certificate of the issuer is not
    /// available.
    var issuer: UnsafeMutablePointer<GTlsCertificate>! {
        /// Gets the `GTlsCertificate` representing `cert`'s issuer, if known
        get {
            let rv = g_tls_certificate_get_issuer(cast(tls_certificate_ptr))
            return cast(rv)
        }
    }
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GTlsConnection` instance.
    var tls_connection_ptr: UnsafeMutablePointer<GTlsConnection> { get }
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
public struct TLSConnectionRef: TLSConnectionProtocol {
    /// Untyped pointer to the underlying `GTlsConnection` instance.
    /// For type-safe access, use the generated, typed pointer `tls_connection_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TLSConnectionRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GTlsConnection>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TLSConnectionProtocol`
    init<T: TLSConnectionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    /// Ownership is transferred to the `TLSConnection` instance.
    public init(_ op: UnsafeMutablePointer<GTlsConnection>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `TLSConnectionProtocol`
    /// Will retain `GTlsConnection`.
    public convenience init<T: TLSConnectionProtocol>(_ other: T) {
        self.init(cast(other.tls_connection_ptr))
        g_object_ref(cast(tls_connection_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GTlsConnection.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GTlsConnection.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GTlsConnection.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GTlsConnection>(opaquePointer))
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
    /// completed and the certificate has been accepted. Note in
    /// particular that this is not yet set during the emission of
    /// `GTlsConnection::accept`-certificate.
    /// 
    /// (You can watch for a `GObject::notify` signal on this property to
    /// detect when a handshake has occurred.)
    case peerCertificate = "peer-certificate"
    /// The errors noticed-and-ignored while verifying
    /// `GTlsConnection:peer`-certificate. Normally this should be 0, but
    /// it may not be if `GTlsClientConnection:validation`-flags is not
    /// `G_TLS_CERTIFICATE_VALIDATE_ALL`, or if
    /// `GTlsConnection::accept`-certificate overrode the default
    /// behavior.
    case peerCertificateErrors = "peer-certificate-errors"
    /// The rehandshaking mode. See
    /// `g_tls_connection_set_rehandshake_mode()`.
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: TLSConnectionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(tls_connection_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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
    /// [canonical parameter names][canonical-parameter-names] as
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
    /// completed and the certificate has been accepted. Note in
    /// particular that this is not yet set during the emission of
    /// `GTlsConnection::accept`-certificate.
    /// 
    /// (You can watch for a `GObject::notify` signal on this property to
    /// detect when a handshake has occurred.)
    case notifyPeerCertificate = "notify::peer-certificate"
    /// The errors noticed-and-ignored while verifying
    /// `GTlsConnection:peer`-certificate. Normally this should be 0, but
    /// it may not be if `GTlsClientConnection:validation`-flags is not
    /// `G_TLS_CERTIFICATE_VALIDATE_ALL`, or if
    /// `GTlsConnection::accept`-certificate overrode the default
    /// behavior.
    case notifyPeerCertificateErrors = "notify::peer-certificate-errors"
    /// The rehandshaking mode. See
    /// `g_tls_connection_set_rehandshake_mode()`.
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

public extension TLSConnectionProtocol {
    /// Connect a `TLSConnectionSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: TLSConnectionSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(tls_connection_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension TLSConnectionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsConnection` instance.
    var tls_connection_ptr: UnsafeMutablePointer<GTlsConnection> { return ptr.assumingMemoryBound(to: GTlsConnection.self) }

    /// Used by `GTlsConnection` implementations to emit the
    /// `GTlsConnection::accept`-certificate signal.
    func emitAcceptCertificate(peerCert peer_cert: TLSCertificateProtocol, errors: TLSCertificateFlags) -> Bool {
        let rv = g_tls_connection_emit_accept_certificate(cast(tls_connection_ptr), cast(peer_cert.ptr), errors)
        return Bool(rv != 0)
    }

    /// Gets `conn`'s certificate, as set by
    /// `g_tls_connection_set_certificate()`.
    func getCertificate() -> UnsafeMutablePointer<GTlsCertificate>! {
        let rv = g_tls_connection_get_certificate(cast(tls_connection_ptr))
        return cast(rv)
    }

    /// Gets the certificate database that `conn` uses to verify
    /// peer certificates. See `g_tls_connection_set_database()`.
    func getDatabase() -> UnsafeMutablePointer<GTlsDatabase>! {
        let rv = g_tls_connection_get_database(cast(tls_connection_ptr))
        return cast(rv)
    }

    /// Get the object that will be used to interact with the user. It will be used
    /// for things like prompting the user for passwords. If `nil` is returned, then
    /// no user interaction will occur for this connection.
    func getInteraction() -> UnsafeMutablePointer<GTlsInteraction>! {
        let rv = g_tls_connection_get_interaction(cast(tls_connection_ptr))
        return cast(rv)
    }

    /// Gets the name of the application-layer protocol negotiated during
    /// the handshake.
    /// 
    /// If the peer did not use the ALPN extension, or did not advertise a
    /// protocol that matched one of `conn`'s protocols, or the TLS backend
    /// does not support ALPN, then this will be `nil`. See
    /// `g_tls_connection_set_advertised_protocols()`.
    func getNegotiatedProtocol() -> String! {
        let rv = g_tls_connection_get_negotiated_protocol(cast(tls_connection_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets `conn`'s peer's certificate after the handshake has completed.
    /// (It is not set during the emission of
    /// `GTlsConnection::accept`-certificate.)
    func getPeerCertificate() -> UnsafeMutablePointer<GTlsCertificate>! {
        let rv = g_tls_connection_get_peer_certificate(cast(tls_connection_ptr))
        return cast(rv)
    }

    /// Gets the errors associated with validating `conn`'s peer's
    /// certificate, after the handshake has completed. (It is not set
    /// during the emission of `GTlsConnection::accept`-certificate.)
    func getPeerCertificateErrors() -> GTlsCertificateFlags {
        let rv = g_tls_connection_get_peer_certificate_errors(cast(tls_connection_ptr))
        return rv
    }

    /// Gets `conn` rehandshaking mode. See
    /// `g_tls_connection_set_rehandshake_mode()` for details.
    ///
    /// **get_rehandshake_mode is deprecated:**
    /// Changing the rehandshake mode is no longer
    ///   required for compatibility. Also, rehandshaking has been removed
    ///   from the TLS protocol in TLS 1.3.
    @available(*, deprecated) func getRehandshakeMode() -> GTlsRehandshakeMode {
        let rv = g_tls_connection_get_rehandshake_mode(cast(tls_connection_ptr))
        return rv
    }

    /// Tests whether or not `conn` expects a proper TLS close notification
    /// when the connection is closed. See
    /// `g_tls_connection_set_require_close_notify()` for details.
    func getRequireCloseNotify() -> Bool {
        let rv = g_tls_connection_get_require_close_notify(cast(tls_connection_ptr))
        return Bool(rv != 0)
    }

    /// Gets whether `conn` uses the system certificate database to verify
    /// peer certificates. See `g_tls_connection_set_use_system_certdb()`.
    ///
    /// **get_use_system_certdb is deprecated:**
    /// Use g_tls_connection_get_database() instead
    @available(*, deprecated) func getUseSystemCertdb() -> Bool {
        let rv = g_tls_connection_get_use_system_certdb(cast(tls_connection_ptr))
        return Bool(rv != 0)
    }

    /// Attempts a TLS handshake on `conn`.
    /// 
    /// On the client side, it is never necessary to call this method;
    /// although the connection needs to perform a handshake after
    /// connecting (or after sending a "STARTTLS"-type command) and may
    /// need to rehandshake later if the server requests it,
    /// `GTlsConnection` will handle this for you automatically when you try
    /// to send or receive data on the connection. However, you can call
    /// `g_tls_connection_handshake()` manually if you want to know for sure
    /// whether the initial handshake succeeded or failed (as opposed to
    /// just immediately trying to write to `conn`'s output stream, in which
    /// case if it fails, it may not be possible to tell if it failed
    /// before or after completing the handshake).
    /// 
    /// Likewise, on the server side, although a handshake is necessary at
    /// the beginning of the communication, you do not need to call this
    /// function explicitly unless you want clearer error reporting.
    /// 
    /// If TLS 1.2 or older is in use, you may call
    /// `g_tls_connection_handshake()` after the initial handshake to
    /// rehandshake; however, this usage is deprecated because rehandshaking
    /// is no longer part of the TLS protocol in TLS 1.3. Accordingly, the
    /// behavior of calling this function after the initial handshake is now
    /// undefined, except it is guaranteed to be reasonable and
    /// nondestructive so as to preserve compatibility with code written for
    /// older versions of GLib.
    /// 
    /// `GTlsConnection::accept_certificate` may be emitted during the
    /// handshake.
    func handshake(cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_tls_connection_handshake(cast(tls_connection_ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Asynchronously performs a TLS handshake on `conn`. See
    /// `g_tls_connection_handshake()` for more information.
    func handshakeAsync(ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_tls_connection_handshake_async(cast(tls_connection_ptr), io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finish an asynchronous TLS handshake operation. See
    /// `g_tls_connection_handshake()` for more information.
    func handshakeFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_tls_connection_handshake_finish(cast(tls_connection_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Sets the list of application-layer protocols to advertise that the
    /// caller is willing to speak on this connection. The
    /// Application-Layer Protocol Negotiation (ALPN) extension will be
    /// used to negotiate a compatible protocol with the peer; use
    /// `g_tls_connection_get_negotiated_protocol()` to find the negotiated
    /// protocol after the handshake.  Specifying `nil` for the the value
    /// of `protocols` will disable ALPN negotiation.
    /// 
    /// See [IANA TLS ALPN Protocol IDs](https://www.iana.org/assignments/tls-extensiontype-values/tls-extensiontype-values.xhtml`alpn`-protocol-ids)
    /// for a list of registered protocol IDs.
    func setAdvertised(protocols: UnsafePointer<UnsafePointer<gchar>>) {
        g_tls_connection_set_advertised_protocols(cast(tls_connection_ptr), cast(protocols))
    
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
    func set(certificate: TLSCertificateProtocol) {
        g_tls_connection_set_certificate(cast(tls_connection_ptr), cast(certificate.ptr))
    
    }

    /// Sets the certificate database that is used to verify peer certificates.
    /// This is set to the default database by default. See
    /// `g_tls_backend_get_default_database()`. If set to `nil`, then
    /// peer certificate validation will always set the
    /// `G_TLS_CERTIFICATE_UNKNOWN_CA` error (meaning
    /// `GTlsConnection::accept`-certificate will always be emitted on
    /// client-side connections, unless that bit is not set in
    /// `GTlsClientConnection:validation`-flags).
    func set(database: TLSDatabaseProtocol) {
        g_tls_connection_set_database(cast(tls_connection_ptr), cast(database.ptr))
    
    }

    /// Set the object that will be used to interact with the user. It will be used
    /// for things like prompting the user for passwords.
    /// 
    /// The `interaction` argument will normally be a derived subclass of
    /// `GTlsInteraction`. `nil` can also be provided if no user interaction
    /// should occur for this connection.
    func set(interaction: TLSInteractionProtocol) {
        g_tls_connection_set_interaction(cast(tls_connection_ptr), cast(interaction.ptr))
    
    }

    /// Sets how `conn` behaves with respect to rehandshaking requests, when
    /// TLS 1.2 or older is in use.
    /// 
    /// `G_TLS_REHANDSHAKE_NEVER` means that it will never agree to
    /// rehandshake after the initial handshake is complete. (For a client,
    /// this means it will refuse rehandshake requests from the server, and
    /// for a server, this means it will close the connection with an error
    /// if the client attempts to rehandshake.)
    /// 
    /// `G_TLS_REHANDSHAKE_SAFELY` means that the connection will allow a
    /// rehandshake only if the other end of the connection supports the
    /// TLS `renegotiation_info` extension. This is the default behavior,
    /// but means that rehandshaking will not work against older
    /// implementations that do not support that extension.
    /// 
    /// `G_TLS_REHANDSHAKE_UNSAFELY` means that the connection will allow
    /// rehandshaking even without the `renegotiation_info` extension. On
    /// the server side in particular, this is not recommended, since it
    /// leaves the server open to certain attacks. However, this mode is
    /// necessary if you need to allow renegotiation with older client
    /// software.
    ///
    /// **set_rehandshake_mode is deprecated:**
    /// Changing the rehandshake mode is no longer
    ///   required for compatibility. Also, rehandshaking has been removed
    ///   from the TLS protocol in TLS 1.3.
    @available(*, deprecated) func setRehandshake(mode: TLSRehandshakeMode) {
        g_tls_connection_set_rehandshake_mode(cast(tls_connection_ptr), mode)
    
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
    /// close, you can close `conn`'s `GTlsConnection:base`-io-stream rather
    /// than closing `conn` itself, but note that this may only be done when no other
    /// operations are pending on `conn` or the base I/O stream.
    func set(requireCloseNotify require_close_notify: Bool) {
        g_tls_connection_set_require_close_notify(cast(tls_connection_ptr), gboolean(require_close_notify ? 1 : 0))
    
    }

    /// Sets whether `conn` uses the system certificate database to verify
    /// peer certificates. This is `true` by default. If set to `false`, then
    /// peer certificate validation will always set the
    /// `G_TLS_CERTIFICATE_UNKNOWN_CA` error (meaning
    /// `GTlsConnection::accept`-certificate will always be emitted on
    /// client-side connections, unless that bit is not set in
    /// `GTlsClientConnection:validation`-flags).
    ///
    /// **set_use_system_certdb is deprecated:**
    /// Use g_tls_connection_set_database() instead
    @available(*, deprecated) func set(useSystemCertdb use_system_certdb: Bool) {
        g_tls_connection_set_use_system_certdb(cast(tls_connection_ptr), gboolean(use_system_certdb ? 1 : 0))
    
    }
    /// The connection's certificate; see
    /// `g_tls_connection_set_certificate()`.
    var certificate: UnsafeMutablePointer<GTlsCertificate>! {
        /// Gets `conn`'s certificate, as set by
        /// `g_tls_connection_set_certificate()`.
        get {
            let rv = g_tls_connection_get_certificate(cast(tls_connection_ptr))
            return cast(rv)
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
            g_tls_connection_set_certificate(cast(tls_connection_ptr), cast(newValue))
        }
    }

    /// The certificate database to use when verifying this TLS connection.
    /// If no certificate database is set, then the default database will be
    /// used. See `g_tls_backend_get_default_database()`.
    var database: UnsafeMutablePointer<GTlsDatabase>! {
        /// Gets the certificate database that `conn` uses to verify
        /// peer certificates. See `g_tls_connection_set_database()`.
        get {
            let rv = g_tls_connection_get_database(cast(tls_connection_ptr))
            return cast(rv)
        }
        /// Sets the certificate database that is used to verify peer certificates.
        /// This is set to the default database by default. See
        /// `g_tls_backend_get_default_database()`. If set to `nil`, then
        /// peer certificate validation will always set the
        /// `G_TLS_CERTIFICATE_UNKNOWN_CA` error (meaning
        /// `GTlsConnection::accept`-certificate will always be emitted on
        /// client-side connections, unless that bit is not set in
        /// `GTlsClientConnection:validation`-flags).
        nonmutating set {
            g_tls_connection_set_database(cast(tls_connection_ptr), cast(newValue))
        }
    }

    /// A `GTlsInteraction` object to be used when the connection or certificate
    /// database need to interact with the user. This will be used to prompt the
    /// user for passwords where necessary.
    var interaction: UnsafeMutablePointer<GTlsInteraction>! {
        /// Get the object that will be used to interact with the user. It will be used
        /// for things like prompting the user for passwords. If `nil` is returned, then
        /// no user interaction will occur for this connection.
        get {
            let rv = g_tls_connection_get_interaction(cast(tls_connection_ptr))
            return cast(rv)
        }
        /// Set the object that will be used to interact with the user. It will be used
        /// for things like prompting the user for passwords.
        /// 
        /// The `interaction` argument will normally be a derived subclass of
        /// `GTlsInteraction`. `nil` can also be provided if no user interaction
        /// should occur for this connection.
        nonmutating set {
            g_tls_connection_set_interaction(cast(tls_connection_ptr), cast(newValue))
        }
    }

    /// Gets the name of the application-layer protocol negotiated during
    /// the handshake.
    /// 
    /// If the peer did not use the ALPN extension, or did not advertise a
    /// protocol that matched one of `conn`'s protocols, or the TLS backend
    /// does not support ALPN, then this will be `nil`. See
    /// `g_tls_connection_set_advertised_protocols()`.
    var negotiatedProtocol: String! {
        /// Gets the name of the application-layer protocol negotiated during
        /// the handshake.
        /// 
        /// If the peer did not use the ALPN extension, or did not advertise a
        /// protocol that matched one of `conn`'s protocols, or the TLS backend
        /// does not support ALPN, then this will be `nil`. See
        /// `g_tls_connection_set_advertised_protocols()`.
        get {
            let rv = g_tls_connection_get_negotiated_protocol(cast(tls_connection_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets `conn`'s peer's certificate after the handshake has completed.
    /// (It is not set during the emission of
    /// `GTlsConnection::accept`-certificate.)
    var peerCertificate: UnsafeMutablePointer<GTlsCertificate>! {
        /// Gets `conn`'s peer's certificate after the handshake has completed.
        /// (It is not set during the emission of
        /// `GTlsConnection::accept`-certificate.)
        get {
            let rv = g_tls_connection_get_peer_certificate(cast(tls_connection_ptr))
            return cast(rv)
        }
    }

    /// Gets the errors associated with validating `conn`'s peer's
    /// certificate, after the handshake has completed. (It is not set
    /// during the emission of `GTlsConnection::accept`-certificate.)
    var peerCertificateErrors: GTlsCertificateFlags {
        /// Gets the errors associated with validating `conn`'s peer's
        /// certificate, after the handshake has completed. (It is not set
        /// during the emission of `GTlsConnection::accept`-certificate.)
        get {
            let rv = g_tls_connection_get_peer_certificate_errors(cast(tls_connection_ptr))
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
    var rehandshakeMode: GTlsRehandshakeMode {
        /// Gets `conn` rehandshaking mode. See
        /// `g_tls_connection_set_rehandshake_mode()` for details.
        ///
        /// **get_rehandshake_mode is deprecated:**
        /// Changing the rehandshake mode is no longer
        ///   required for compatibility. Also, rehandshaking has been removed
        ///   from the TLS protocol in TLS 1.3.
        @available(*, deprecated) get {
            let rv = g_tls_connection_get_rehandshake_mode(cast(tls_connection_ptr))
            return rv
        }
        /// Sets how `conn` behaves with respect to rehandshaking requests, when
        /// TLS 1.2 or older is in use.
        /// 
        /// `G_TLS_REHANDSHAKE_NEVER` means that it will never agree to
        /// rehandshake after the initial handshake is complete. (For a client,
        /// this means it will refuse rehandshake requests from the server, and
        /// for a server, this means it will close the connection with an error
        /// if the client attempts to rehandshake.)
        /// 
        /// `G_TLS_REHANDSHAKE_SAFELY` means that the connection will allow a
        /// rehandshake only if the other end of the connection supports the
        /// TLS `renegotiation_info` extension. This is the default behavior,
        /// but means that rehandshaking will not work against older
        /// implementations that do not support that extension.
        /// 
        /// `G_TLS_REHANDSHAKE_UNSAFELY` means that the connection will allow
        /// rehandshaking even without the `renegotiation_info` extension. On
        /// the server side in particular, this is not recommended, since it
        /// leaves the server open to certain attacks. However, this mode is
        /// necessary if you need to allow renegotiation with older client
        /// software.
        ///
        /// **set_rehandshake_mode is deprecated:**
        /// Changing the rehandshake mode is no longer
        ///   required for compatibility. Also, rehandshaking has been removed
        ///   from the TLS protocol in TLS 1.3.
        @available(*, deprecated) nonmutating set {
            g_tls_connection_set_rehandshake_mode(cast(tls_connection_ptr), newValue)
        }
    }

    /// Tests whether or not `conn` expects a proper TLS close notification
    /// when the connection is closed. See
    /// `g_tls_connection_set_require_close_notify()` for details.
    var requireCloseNotify: Bool {
        /// Tests whether or not `conn` expects a proper TLS close notification
        /// when the connection is closed. See
        /// `g_tls_connection_set_require_close_notify()` for details.
        get {
            let rv = g_tls_connection_get_require_close_notify(cast(tls_connection_ptr))
            return Bool(rv != 0)
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
        /// close, you can close `conn`'s `GTlsConnection:base`-io-stream rather
        /// than closing `conn` itself, but note that this may only be done when no other
        /// operations are pending on `conn` or the base I/O stream.
        nonmutating set {
            g_tls_connection_set_require_close_notify(cast(tls_connection_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets whether `conn` uses the system certificate database to verify
    /// peer certificates. See `g_tls_connection_set_use_system_certdb()`.
    ///
    /// **get_use_system_certdb is deprecated:**
    /// Use g_tls_connection_get_database() instead
    var useSystemCertdb: Bool {
        /// Gets whether `conn` uses the system certificate database to verify
        /// peer certificates. See `g_tls_connection_set_use_system_certdb()`.
        ///
        /// **get_use_system_certdb is deprecated:**
        /// Use g_tls_connection_get_database() instead
        @available(*, deprecated) get {
            let rv = g_tls_connection_get_use_system_certdb(cast(tls_connection_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether `conn` uses the system certificate database to verify
        /// peer certificates. This is `true` by default. If set to `false`, then
        /// peer certificate validation will always set the
        /// `G_TLS_CERTIFICATE_UNKNOWN_CA` error (meaning
        /// `GTlsConnection::accept`-certificate will always be emitted on
        /// client-side connections, unless that bit is not set in
        /// `GTlsClientConnection:validation`-flags).
        ///
        /// **set_use_system_certdb is deprecated:**
        /// Use g_tls_connection_set_database() instead
        @available(*, deprecated) nonmutating set {
            g_tls_connection_set_use_system_certdb(cast(tls_connection_ptr), gboolean(newValue ? 1 : 0))
        }
    }
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
public protocol TLSDatabaseProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `GTlsDatabase` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GTlsDatabase` instance.
    var tls_database_ptr: UnsafeMutablePointer<GTlsDatabase> { get }
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
public struct TLSDatabaseRef: TLSDatabaseProtocol {
    /// Untyped pointer to the underlying `GTlsDatabase` instance.
    /// For type-safe access, use the generated, typed pointer `tls_database_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TLSDatabaseRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GTlsDatabase>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TLSDatabaseProtocol`
    init<T: TLSDatabaseProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
open class TLSDatabase: Object, TLSDatabaseProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TLSDatabase` instance.
    public init(_ op: UnsafeMutablePointer<GTlsDatabase>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `TLSDatabaseProtocol`
    /// Will retain `GTlsDatabase`.
    public convenience init<T: TLSDatabaseProtocol>(_ other: T) {
        self.init(cast(other.tls_database_ptr))
        g_object_ref(cast(tls_database_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GTlsDatabase.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GTlsDatabase.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GTlsDatabase.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GTlsDatabase>(opaquePointer))
    }



}

// MARK: - no TLSDatabase properties

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
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"

}

public extension TLSDatabaseProtocol {
    /// Connect a `TLSDatabaseSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: TLSDatabaseSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(tls_database_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension TLSDatabaseProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsDatabase` instance.
    var tls_database_ptr: UnsafeMutablePointer<GTlsDatabase> { return ptr.assumingMemoryBound(to: GTlsDatabase.self) }

    /// Create a handle string for the certificate. The database will only be able
    /// to create a handle for certificates that originate from the database. In
    /// cases where the database cannot create a handle for a certificate, `nil`
    /// will be returned.
    /// 
    /// This handle should be stable across various instances of the application,
    /// and between applications. If a certificate is modified in the database,
    /// then it is not guaranteed that this handle will continue to point to it.
    func createCertificateHandle(certificate: TLSCertificateProtocol) -> String! {
        let rv = g_tls_database_create_certificate_handle(cast(tls_database_ptr), cast(certificate.ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
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
    func lookupCertificateFor(handle: UnsafePointer<gchar>, interaction: TLSInteractionProtocol, flags: TLSDatabaseLookupFlags, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GTlsCertificate>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_tls_database_lookup_certificate_for_handle(cast(tls_database_ptr), handle, cast(interaction.ptr), flags, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Asynchronously look up a certificate by its handle in the database. See
    /// `g_tls_database_lookup_certificate_for_handle()` for more information.
    func lookupCertificateForHandleAsync(handle: UnsafePointer<gchar>, interaction: TLSInteractionProtocol, flags: TLSDatabaseLookupFlags, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_tls_database_lookup_certificate_for_handle_async(cast(tls_database_ptr), handle, cast(interaction.ptr), flags, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finish an asynchronous lookup of a certificate by its handle. See
    /// `g_tls_database_lookup_certificate_for_handle()` for more information.
    /// 
    /// If the handle is no longer valid, or does not point to a certificate in
    /// this database, then `nil` will be returned.
    func lookupCertificateForHandleFinish(result: AsyncResultProtocol) throws -> UnsafeMutablePointer<GTlsCertificate>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_tls_database_lookup_certificate_for_handle_finish(cast(tls_database_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Look up the issuer of `certificate` in the database.
    /// 
    /// The `GTlsCertificate:issuer` property
    /// of `certificate` is not modified, and the two certificates are not hooked
    /// into a chain.
    /// 
    /// This function can block, use `g_tls_database_lookup_certificate_issuer_async()` to perform
    /// the lookup operation asynchronously.
    func lookupCertificateIssuer(certificate: TLSCertificateProtocol, interaction: TLSInteractionProtocol, flags: TLSDatabaseLookupFlags, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GTlsCertificate>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_tls_database_lookup_certificate_issuer(cast(tls_database_ptr), cast(certificate.ptr), cast(interaction.ptr), flags, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Asynchronously look up the issuer of `certificate` in the database. See
    /// `g_tls_database_lookup_certificate_issuer()` for more information.
    func lookupCertificateIssuerAsync(certificate: TLSCertificateProtocol, interaction: TLSInteractionProtocol, flags: TLSDatabaseLookupFlags, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_tls_database_lookup_certificate_issuer_async(cast(tls_database_ptr), cast(certificate.ptr), cast(interaction.ptr), flags, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finish an asynchronous lookup issuer operation. See
    /// `g_tls_database_lookup_certificate_issuer()` for more information.
    func lookupCertificateIssuerFinish(result: AsyncResultProtocol) throws -> UnsafeMutablePointer<GTlsCertificate>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_tls_database_lookup_certificate_issuer_finish(cast(tls_database_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Look up certificates issued by this issuer in the database.
    /// 
    /// This function can block, use `g_tls_database_lookup_certificates_issued_by_async()` to perform
    /// the lookup operation asynchronously.
    func lookupCertificatesIssuedBy(issuerRawDn issuer_raw_dn: ByteArrayProtocol, interaction: TLSInteractionProtocol, flags: TLSDatabaseLookupFlags, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GList>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_tls_database_lookup_certificates_issued_by(cast(tls_database_ptr), cast(issuer_raw_dn.ptr), cast(interaction.ptr), flags, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Asynchronously look up certificates issued by this issuer in the database. See
    /// `g_tls_database_lookup_certificates_issued_by()` for more information.
    /// 
    /// The database may choose to hold a reference to the issuer byte array for the duration
    /// of of this asynchronous operation. The byte array should not be modified during
    /// this time.
    func lookupCertificatesIssuedByAsync(issuerRawDn issuer_raw_dn: ByteArrayProtocol, interaction: TLSInteractionProtocol, flags: TLSDatabaseLookupFlags, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_tls_database_lookup_certificates_issued_by_async(cast(tls_database_ptr), cast(issuer_raw_dn.ptr), cast(interaction.ptr), flags, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finish an asynchronous lookup of certificates. See
    /// `g_tls_database_lookup_certificates_issued_by()` for more information.
    func lookupCertificatesIssuedByFinish(result: AsyncResultProtocol) throws -> UnsafeMutablePointer<GList>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_tls_database_lookup_certificates_issued_by_finish(cast(tls_database_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
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
    /// The `identity` is used to check for pinned certificates (trust exceptions)
    /// in the database. These will override the normal verification process on a
    /// host by host basis.
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
    func verify(chain: TLSCertificateProtocol, purpose: UnsafePointer<gchar>, identity: SocketConnectableProtocol, interaction: TLSInteractionProtocol, flags: TLSDatabaseVerifyFlags, cancellable: CancellableProtocol) throws -> GTlsCertificateFlags {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_tls_database_verify_chain(cast(tls_database_ptr), cast(chain.ptr), purpose, cast(identity.ptr), cast(interaction.ptr), flags, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }

    /// Asynchronously determines the validity of a certificate chain after
    /// looking up and adding any missing certificates to the chain. See
    /// `g_tls_database_verify_chain()` for more information.
    func verifyChainAsync(chain: TLSCertificateProtocol, purpose: UnsafePointer<gchar>, identity: SocketConnectableProtocol, interaction: TLSInteractionProtocol, flags: TLSDatabaseVerifyFlags, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_tls_database_verify_chain_async(cast(tls_database_ptr), cast(chain.ptr), purpose, cast(identity.ptr), cast(interaction.ptr), flags, cast(cancellable.ptr), callback, cast(user_data))
    
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
    func verifyChainFinish(result: AsyncResultProtocol) throws -> GTlsCertificateFlags {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_tls_database_verify_chain_finish(cast(tls_database_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }
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
public protocol TLSInteractionProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `GTlsInteraction` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GTlsInteraction` instance.
    var tls_interaction_ptr: UnsafeMutablePointer<GTlsInteraction> { get }
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
public struct TLSInteractionRef: TLSInteractionProtocol {
    /// Untyped pointer to the underlying `GTlsInteraction` instance.
    /// For type-safe access, use the generated, typed pointer `tls_interaction_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TLSInteractionRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GTlsInteraction>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TLSInteractionProtocol`
    init<T: TLSInteractionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
open class TLSInteraction: Object, TLSInteractionProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TLSInteraction` instance.
    public init(_ op: UnsafeMutablePointer<GTlsInteraction>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `TLSInteractionProtocol`
    /// Will retain `GTlsInteraction`.
    public convenience init<T: TLSInteractionProtocol>(_ other: T) {
        self.init(cast(other.tls_interaction_ptr))
        g_object_ref(cast(tls_interaction_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GTlsInteraction.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GTlsInteraction.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GTlsInteraction.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GTlsInteraction>(opaquePointer))
    }



}

// MARK: - no TLSInteraction properties

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
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"

}

public extension TLSInteractionProtocol {
    /// Connect a `TLSInteractionSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: TLSInteractionSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(tls_interaction_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension TLSInteractionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsInteraction` instance.
    var tls_interaction_ptr: UnsafeMutablePointer<GTlsInteraction> { return ptr.assumingMemoryBound(to: GTlsInteraction.self) }

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
    func ask(password: TLSPasswordProtocol, cancellable: CancellableProtocol) throws -> GTlsInteractionResult {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_tls_interaction_ask_password(cast(tls_interaction_ptr), cast(password.ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
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
    func askPasswordAsync(password: TLSPasswordProtocol, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_tls_interaction_ask_password_async(cast(tls_interaction_ptr), cast(password.ptr), cast(cancellable.ptr), callback, cast(user_data))
    
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
    func askPasswordFinish(result: AsyncResultProtocol) throws -> GTlsInteractionResult {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_tls_interaction_ask_password_finish(cast(tls_interaction_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
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
    func invokeAsk(password: TLSPasswordProtocol, cancellable: CancellableProtocol) throws -> GTlsInteractionResult {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_tls_interaction_invoke_ask_password(cast(tls_interaction_ptr), cast(password.ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
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
    func invokeRequestCertificate(connection: TLSConnectionProtocol, flags: TLSCertificateRequestFlags, cancellable: CancellableProtocol) throws -> GTlsInteractionResult {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_tls_interaction_invoke_request_certificate(cast(tls_interaction_ptr), cast(connection.ptr), flags, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
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
    func requestCertificate(connection: TLSConnectionProtocol, flags: TLSCertificateRequestFlags, cancellable: CancellableProtocol) throws -> GTlsInteractionResult {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_tls_interaction_request_certificate(cast(tls_interaction_ptr), cast(connection.ptr), flags, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
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
    func requestCertificateAsync(connection: TLSConnectionProtocol, flags: TLSCertificateRequestFlags, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_tls_interaction_request_certificate_async(cast(tls_interaction_ptr), cast(connection.ptr), flags, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Complete an request certificate user interaction request. This should be once
    /// the `g_tls_interaction_request_certificate_async()` completion callback is called.
    /// 
    /// If `G_TLS_INTERACTION_HANDLED` is returned, then the `GTlsConnection`
    /// passed to `g_tls_interaction_request_certificate_async()` will have had its
    /// `GTlsConnection:certificate` filled in.
    /// 
    /// If the interaction is cancelled by the cancellation object, or by the
    /// user then `G_TLS_INTERACTION_FAILED` will be returned with an error that
    /// contains a `G_IO_ERROR_CANCELLED` error code.
    func requestCertificateFinish(result: AsyncResultProtocol) throws -> GTlsInteractionResult {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_tls_interaction_request_certificate_finish(cast(tls_interaction_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }
}



// MARK: - TLSPassword Class

/// The `TLSPasswordProtocol` protocol exposes the methods and properties of an underlying `GTlsPassword` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TLSPassword`.
/// Alternatively, use `TLSPasswordRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Holds a password used in TLS.
public protocol TLSPasswordProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `GTlsPassword` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GTlsPassword` instance.
    var tls_password_ptr: UnsafeMutablePointer<GTlsPassword> { get }
}

/// The `TLSPasswordRef` type acts as a lightweight Swift reference to an underlying `GTlsPassword` instance.
/// It exposes methods that can operate on this data type through `TLSPasswordProtocol` conformance.
/// Use `TLSPasswordRef` only as an `unowned` reference to an existing `GTlsPassword` instance.
///
/// Holds a password used in TLS.
public struct TLSPasswordRef: TLSPasswordProtocol {
    /// Untyped pointer to the underlying `GTlsPassword` instance.
    /// For type-safe access, use the generated, typed pointer `tls_password_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TLSPasswordRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GTlsPassword>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TLSPasswordProtocol`
    init<T: TLSPasswordProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Create a new `GTlsPassword` object.
    init( flags: TLSPasswordFlags, description: UnsafePointer<gchar>) {
        let rv = g_tls_password_new(flags, description)
        self.init(cast(rv))
    }
}

/// The `TLSPassword` type acts as a reference-counted owner of an underlying `GTlsPassword` instance.
/// It provides the methods that can operate on this data type through `TLSPasswordProtocol` conformance.
/// Use `TLSPassword` as a strong reference or owner of a `GTlsPassword` instance.
///
/// Holds a password used in TLS.
open class TLSPassword: Object, TLSPasswordProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TLSPassword` instance.
    public init(_ op: UnsafeMutablePointer<GTlsPassword>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `TLSPasswordProtocol`
    /// Will retain `GTlsPassword`.
    public convenience init<T: TLSPasswordProtocol>(_ other: T) {
        self.init(cast(other.tls_password_ptr))
        g_object_ref(cast(tls_password_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GTlsPassword.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GTlsPassword.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GTlsPassword.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GTlsPassword>(opaquePointer))
    }

    /// Create a new `GTlsPassword` object.
    public convenience init( flags: TLSPasswordFlags, description: UnsafePointer<gchar>) {
        let rv = g_tls_password_new(flags, description)
        self.init(cast(rv))
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: TLSPasswordPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(tls_password_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"
    case notifyDescription = "notify::description"
    case notifyFlags = "notify::flags"
    case notifyWarning = "notify::warning"
}

public extension TLSPasswordProtocol {
    /// Connect a `TLSPasswordSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: TLSPasswordSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(tls_password_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension TLSPasswordProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsPassword` instance.
    var tls_password_ptr: UnsafeMutablePointer<GTlsPassword> { return ptr.assumingMemoryBound(to: GTlsPassword.self) }

    /// Get a description string about what the password will be used for.
    func getDescription() -> String! {
        let rv = g_tls_password_get_description(cast(tls_password_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Get flags about the password.
    func getFlags() -> GTlsPasswordFlags {
        let rv = g_tls_password_get_flags(cast(tls_password_ptr))
        return rv
    }

    /// Get the password value. If `length` is not `nil` then it will be
    /// filled in with the length of the password value. (Note that the
    /// password value is not nul-terminated, so you can only pass `nil`
    /// for `length` in contexts where you know the password will have a
    /// certain fixed length.)
    func getValue(length: UnsafeMutablePointer<Int>) -> UnsafePointer<guchar>! {
        let rv = g_tls_password_get_value(cast(tls_password_ptr), cast(length))
        return cast(rv)
    }

    /// Get a user readable translated warning. Usually this warning is a
    /// representation of the password flags returned from
    /// `g_tls_password_get_flags()`.
    func getWarning() -> String! {
        let rv = g_tls_password_get_warning(cast(tls_password_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Set a description string about what the password will be used for.
    func set(description: UnsafePointer<gchar>) {
        g_tls_password_set_description(cast(tls_password_ptr), description)
    
    }

    /// Set flags about the password.
    func set(flags: TLSPasswordFlags) {
        g_tls_password_set_flags(cast(tls_password_ptr), flags)
    
    }

    /// Set the value for this password. The `value` will be copied by the password
    /// object.
    /// 
    /// Specify the `length`, for a non-nul-terminated password. Pass -1 as
    /// `length` if using a nul-terminated password, and `length` will be
    /// calculated automatically. (Note that the terminating nul is not
    /// considered part of the password in this case.)
    func set(value: UnsafePointer<guchar>, length: gssize) {
        g_tls_password_set_value(cast(tls_password_ptr), cast(value), length)
    
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
    func setValueFull(value: UnsafeMutablePointer<guchar>, length: gssize, destroy: @escaping GLib.DestroyNotify) {
        g_tls_password_set_value_full(cast(tls_password_ptr), cast(value), length, destroy)
    
    }

    /// Set a user readable translated warning. Usually this warning is a
    /// representation of the password flags returned from
    /// `g_tls_password_get_flags()`.
    func set(warning: UnsafePointer<gchar>) {
        g_tls_password_set_warning(cast(tls_password_ptr), warning)
    
    }
    var description: String! {
        /// Get a description string about what the password will be used for.
        get {
            let rv = g_tls_password_get_description(cast(tls_password_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Set a description string about what the password will be used for.
        nonmutating set {
            g_tls_password_set_description(cast(tls_password_ptr), newValue)
        }
    }

    var flags: GTlsPasswordFlags {
        /// Get flags about the password.
        get {
            let rv = g_tls_password_get_flags(cast(tls_password_ptr))
            return rv
        }
        /// Set flags about the password.
        nonmutating set {
            g_tls_password_set_flags(cast(tls_password_ptr), newValue)
        }
    }

    var warning: String! {
        /// Get a user readable translated warning. Usually this warning is a
        /// representation of the password flags returned from
        /// `g_tls_password_get_flags()`.
        get {
            let rv = g_tls_password_get_warning(cast(tls_password_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Set a user readable translated warning. Usually this warning is a
        /// representation of the password flags returned from
        /// `g_tls_password_get_flags()`.
        nonmutating set {
            g_tls_password_set_warning(cast(tls_password_ptr), newValue)
        }
    }
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
/// Note that `<gio/gunixconnection.h>` belongs to the UNIX-specific
/// GIO interfaces, thus you have to use the `gio-unix-2.0.pc`
/// pkg-config file when using it.
public protocol UnixConnectionProtocol: SocketConnectionProtocol {
    /// Untyped pointer to the underlying `GUnixConnection` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GUnixConnection` instance.
    var unix_connection_ptr: UnsafeMutablePointer<GUnixConnection> { get }
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
/// Note that `<gio/gunixconnection.h>` belongs to the UNIX-specific
/// GIO interfaces, thus you have to use the `gio-unix-2.0.pc`
/// pkg-config file when using it.
public struct UnixConnectionRef: UnixConnectionProtocol {
    /// Untyped pointer to the underlying `GUnixConnection` instance.
    /// For type-safe access, use the generated, typed pointer `unix_connection_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension UnixConnectionRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GUnixConnection>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `UnixConnectionProtocol`
    init<T: UnixConnectionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
/// Note that `<gio/gunixconnection.h>` belongs to the UNIX-specific
/// GIO interfaces, thus you have to use the `gio-unix-2.0.pc`
/// pkg-config file when using it.
open class UnixConnection: SocketConnection, UnixConnectionProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `UnixConnection` instance.
    public init(_ op: UnsafeMutablePointer<GUnixConnection>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `UnixConnectionProtocol`
    /// Will retain `GUnixConnection`.
    public convenience init<T: UnixConnectionProtocol>(_ other: T) {
        self.init(cast(other.unix_connection_ptr))
        g_object_ref(cast(unix_connection_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GUnixConnection.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GUnixConnection.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GUnixConnection.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GUnixConnection>(opaquePointer))
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: UnixConnectionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(unix_connection_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"
    case notifyClosed = "notify::closed"
    case notifyInputStream = "notify::input-stream"
    case notifyOutputStream = "notify::output-stream"
    case notifySocket = "notify::socket"
}

public extension UnixConnectionProtocol {
    /// Connect a `UnixConnectionSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: UnixConnectionSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(unix_connection_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension UnixConnectionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixConnection` instance.
    var unix_connection_ptr: UnsafeMutablePointer<GUnixConnection> { return ptr.assumingMemoryBound(to: GUnixConnection.self) }

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
    func receiveCredentials(cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GCredentials>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_unix_connection_receive_credentials(cast(unix_connection_ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Asynchronously receive credentials.
    /// 
    /// For more details, see `g_unix_connection_receive_credentials()` which is
    /// the synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called. You can then call
    /// `g_unix_connection_receive_credentials_finish()` to get the result of the operation.
    func receiveCredentialsAsync(cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_unix_connection_receive_credentials_async(cast(unix_connection_ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an asynchronous receive credentials operation started with
    /// `g_unix_connection_receive_credentials_async()`.
    func receiveCredentialsFinish(result: AsyncResultProtocol) throws -> UnsafeMutablePointer<GCredentials>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_unix_connection_receive_credentials_finish(cast(unix_connection_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Receives a file descriptor from the sending end of the connection.
    /// The sending end has to call `g_unix_connection_send_fd()` for this
    /// to work.
    /// 
    /// As well as reading the fd this also reads a single byte from the
    /// stream, as this is required for fd passing to work on some
    /// implementations.
    func receiveFd(cancellable: CancellableProtocol) throws -> CInt {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_unix_connection_receive_fd(cast(unix_connection_ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return CInt(rv)
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
    func sendCredentials(cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_unix_connection_send_credentials(cast(unix_connection_ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Asynchronously send credentials.
    /// 
    /// For more details, see `g_unix_connection_send_credentials()` which is
    /// the synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called. You can then call
    /// `g_unix_connection_send_credentials_finish()` to get the result of the operation.
    func sendCredentialsAsync(cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_unix_connection_send_credentials_async(cast(unix_connection_ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an asynchronous send credentials operation started with
    /// `g_unix_connection_send_credentials_async()`.
    func sendCredentialsFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_unix_connection_send_credentials_finish(cast(unix_connection_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Passes a file descriptor to the receiving side of the
    /// connection. The receiving end has to call `g_unix_connection_receive_fd()`
    /// to accept the file descriptor.
    /// 
    /// As well as sending the fd this also writes a single byte to the
    /// stream, as this is required for fd passing to work on some
    /// implementations.
    func send(fd: CInt, cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_unix_connection_send_fd(cast(unix_connection_ptr), gint(fd), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }
}



