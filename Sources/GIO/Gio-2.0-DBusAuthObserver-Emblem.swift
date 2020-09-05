import CGLib
import GLib
import GLibObject

// MARK: - DBusAuthObserver Class

/// The `DBusAuthObserverProtocol` protocol exposes the methods and properties of an underlying `GDBusAuthObserver` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusAuthObserver`.
/// Alternatively, use `DBusAuthObserverRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GDBusAuthObserver` type provides a mechanism for participating
/// in how a `GDBusServer` (or a `GDBusConnection`) authenticates remote
/// peers. Simply instantiate a `GDBusAuthObserver` and connect to the
/// signals you are interested in. Note that new signals may be added
/// in the future
/// 
/// ## Controlling Authentication Mechanisms
/// 
/// By default, a `GDBusServer` or server-side `GDBusConnection` will allow
/// any authentication mechanism to be used. If you only
/// want to allow D-Bus connections with the `EXTERNAL` mechanism,
/// which makes use of credentials passing and is the recommended
/// mechanism for modern Unix platforms such as Linux and the BSD family,
/// you would use a signal handler like this:
/// 
/// (C Language Example):
/// ```C
/// static gboolean
/// on_allow_mechanism (GDBusAuthObserver *observer,
///                     const gchar       *mechanism,
///                     gpointer           user_data)
/// {
///   if (g_strcmp0 (mechanism, "EXTERNAL") == 0)
///     {
///       return TRUE;
///     }
/// 
///   return FALSE;
/// }
/// ```
/// 
/// ## Controlling Authorization # <a name="auth-observer"></a>
/// 
/// By default, a `GDBusServer` or server-side `GDBusConnection` will accept
/// connections from any successfully authenticated user (but not from
/// anonymous connections using the `ANONYMOUS` mechanism). If you only
/// want to allow D-Bus connections from processes owned by the same uid
/// as the server, you would use a signal handler like the following:
/// 
/// (C Language Example):
/// ```C
/// static gboolean
/// on_authorize_authenticated_peer (GDBusAuthObserver *observer,
///                                  GIOStream         *stream,
///                                  GCredentials      *credentials,
///                                  gpointer           user_data)
/// {
///   gboolean authorized;
/// 
///   authorized = FALSE;
///   if (credentials != NULL)
///     {
///       GCredentials *own_credentials;
///       own_credentials = g_credentials_new ();
///       if (g_credentials_is_same_user (credentials, own_credentials, NULL))
///         authorized = TRUE;
///       g_object_unref (own_credentials);
///     }
/// 
///   return authorized;
/// }
/// ```
/// 
public protocol DBusAuthObserverProtocol: ObjectProtocol {
        /// Untyped pointer to the underlying `GDBusAuthObserver` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusAuthObserver` instance.
    var dbus_auth_observer_ptr: UnsafeMutablePointer<GDBusAuthObserver>! { get }

}

/// The `DBusAuthObserverRef` type acts as a lightweight Swift reference to an underlying `GDBusAuthObserver` instance.
/// It exposes methods that can operate on this data type through `DBusAuthObserverProtocol` conformance.
/// Use `DBusAuthObserverRef` only as an `unowned` reference to an existing `GDBusAuthObserver` instance.
///
/// The `GDBusAuthObserver` type provides a mechanism for participating
/// in how a `GDBusServer` (or a `GDBusConnection`) authenticates remote
/// peers. Simply instantiate a `GDBusAuthObserver` and connect to the
/// signals you are interested in. Note that new signals may be added
/// in the future
/// 
/// ## Controlling Authentication Mechanisms
/// 
/// By default, a `GDBusServer` or server-side `GDBusConnection` will allow
/// any authentication mechanism to be used. If you only
/// want to allow D-Bus connections with the `EXTERNAL` mechanism,
/// which makes use of credentials passing and is the recommended
/// mechanism for modern Unix platforms such as Linux and the BSD family,
/// you would use a signal handler like this:
/// 
/// (C Language Example):
/// ```C
/// static gboolean
/// on_allow_mechanism (GDBusAuthObserver *observer,
///                     const gchar       *mechanism,
///                     gpointer           user_data)
/// {
///   if (g_strcmp0 (mechanism, "EXTERNAL") == 0)
///     {
///       return TRUE;
///     }
/// 
///   return FALSE;
/// }
/// ```
/// 
/// ## Controlling Authorization # <a name="auth-observer"></a>
/// 
/// By default, a `GDBusServer` or server-side `GDBusConnection` will accept
/// connections from any successfully authenticated user (but not from
/// anonymous connections using the `ANONYMOUS` mechanism). If you only
/// want to allow D-Bus connections from processes owned by the same uid
/// as the server, you would use a signal handler like the following:
/// 
/// (C Language Example):
/// ```C
/// static gboolean
/// on_authorize_authenticated_peer (GDBusAuthObserver *observer,
///                                  GIOStream         *stream,
///                                  GCredentials      *credentials,
///                                  gpointer           user_data)
/// {
///   gboolean authorized;
/// 
///   authorized = FALSE;
///   if (credentials != NULL)
///     {
///       GCredentials *own_credentials;
///       own_credentials = g_credentials_new ();
///       if (g_credentials_is_same_user (credentials, own_credentials, NULL))
///         authorized = TRUE;
///       g_object_unref (own_credentials);
///     }
/// 
///   return authorized;
/// }
/// ```
/// 
public struct DBusAuthObserverRef: DBusAuthObserverProtocol {
        /// Untyped pointer to the underlying `GDBusAuthObserver` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_auth_observer_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusAuthObserverRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusAuthObserver>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusAuthObserver>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusAuthObserver>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusAuthObserver>?) {
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

    /// Reference intialiser for a related type that implements `DBusAuthObserverProtocol`
    @inlinable init<T: DBusAuthObserverProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAuthObserverProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAuthObserverProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAuthObserverProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAuthObserverProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAuthObserverProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GDBusAuthObserver` object.
    @inlinable init() {
        let rv = g_dbus_auth_observer_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `DBusAuthObserver` type acts as a reference-counted owner of an underlying `GDBusAuthObserver` instance.
/// It provides the methods that can operate on this data type through `DBusAuthObserverProtocol` conformance.
/// Use `DBusAuthObserver` as a strong reference or owner of a `GDBusAuthObserver` instance.
///
/// The `GDBusAuthObserver` type provides a mechanism for participating
/// in how a `GDBusServer` (or a `GDBusConnection`) authenticates remote
/// peers. Simply instantiate a `GDBusAuthObserver` and connect to the
/// signals you are interested in. Note that new signals may be added
/// in the future
/// 
/// ## Controlling Authentication Mechanisms
/// 
/// By default, a `GDBusServer` or server-side `GDBusConnection` will allow
/// any authentication mechanism to be used. If you only
/// want to allow D-Bus connections with the `EXTERNAL` mechanism,
/// which makes use of credentials passing and is the recommended
/// mechanism for modern Unix platforms such as Linux and the BSD family,
/// you would use a signal handler like this:
/// 
/// (C Language Example):
/// ```C
/// static gboolean
/// on_allow_mechanism (GDBusAuthObserver *observer,
///                     const gchar       *mechanism,
///                     gpointer           user_data)
/// {
///   if (g_strcmp0 (mechanism, "EXTERNAL") == 0)
///     {
///       return TRUE;
///     }
/// 
///   return FALSE;
/// }
/// ```
/// 
/// ## Controlling Authorization # <a name="auth-observer"></a>
/// 
/// By default, a `GDBusServer` or server-side `GDBusConnection` will accept
/// connections from any successfully authenticated user (but not from
/// anonymous connections using the `ANONYMOUS` mechanism). If you only
/// want to allow D-Bus connections from processes owned by the same uid
/// as the server, you would use a signal handler like the following:
/// 
/// (C Language Example):
/// ```C
/// static gboolean
/// on_authorize_authenticated_peer (GDBusAuthObserver *observer,
///                                  GIOStream         *stream,
///                                  GCredentials      *credentials,
///                                  gpointer           user_data)
/// {
///   gboolean authorized;
/// 
///   authorized = FALSE;
///   if (credentials != NULL)
///     {
///       GCredentials *own_credentials;
///       own_credentials = g_credentials_new ();
///       if (g_credentials_is_same_user (credentials, own_credentials, NULL))
///         authorized = TRUE;
///       g_object_unref (own_credentials);
///     }
/// 
///   return authorized;
/// }
/// ```
/// 
open class DBusAuthObserver: Object, DBusAuthObserverProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusAuthObserver` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDBusAuthObserver>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusAuthObserver` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDBusAuthObserver>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusAuthObserver` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusAuthObserver` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusAuthObserver` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDBusAuthObserver>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusAuthObserver` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDBusAuthObserver>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GDBusAuthObserver`.
    /// i.e., ownership is transferred to the `DBusAuthObserver` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDBusAuthObserver>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DBusAuthObserverProtocol`
    /// Will retain `GDBusAuthObserver`.
    /// - Parameter other: an instance of a related type that implements `DBusAuthObserverProtocol`
    @inlinable public init<T: DBusAuthObserverProtocol>(dBusAuthObserver other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAuthObserverProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAuthObserverProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAuthObserverProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAuthObserverProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAuthObserverProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAuthObserverProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAuthObserverProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAuthObserverProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GDBusAuthObserver` object.
    @inlinable public init() {
        let rv = g_dbus_auth_observer_new()
        super.init(gpointer: (rv))
    }


}

// MARK: no DBusAuthObserver properties

public enum DBusAuthObserverSignalName: String, SignalNameProtocol {
    /// Emitted to check if `mechanism` is allowed to be used.
    case allowMechanism = "allow-mechanism"
    /// Emitted to check if a peer that is successfully authenticated
    /// is authorized.
    case authorizeAuthenticatedPeer = "authorize-authenticated-peer"
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

public extension DBusAuthObserverProtocol {
    /// Connect a `DBusAuthObserverSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: DBusAuthObserverSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: DBusAuthObserver Class: DBusAuthObserverProtocol extension (methods and fields)
public extension DBusAuthObserverProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusAuthObserver` instance.
    @inlinable var dbus_auth_observer_ptr: UnsafeMutablePointer<GDBusAuthObserver>! { return ptr?.assumingMemoryBound(to: GDBusAuthObserver.self) }

    /// Emits the `GDBusAuthObserver::allow`-mechanism signal on `observer`.
    @inlinable func allow(mechanism: UnsafePointer<gchar>!) -> Bool {
        let rv = ((g_dbus_auth_observer_allow_mechanism(dbus_auth_observer_ptr, mechanism)) != 0)
        return rv
    }

    /// Emits the `GDBusAuthObserver::authorize`-authenticated-peer signal on `observer`.
    @inlinable func authorizeAuthenticatedPeer<CredentialsT: CredentialsProtocol, IOStreamT: IOStreamProtocol>(stream: IOStreamT, credentials: CredentialsT? = nil) -> Bool {
        let rv = ((g_dbus_auth_observer_authorize_authenticated_peer(dbus_auth_observer_ptr, stream.io_stream_ptr, credentials?.credentials_ptr)) != 0)
        return rv
    }


}



// MARK: - DBusConnection Class

/// The `DBusConnectionProtocol` protocol exposes the methods and properties of an underlying `GDBusConnection` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusConnection`.
/// Alternatively, use `DBusConnectionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GDBusConnection` type is used for D-Bus connections to remote
/// peers such as a message buses. It is a low-level API that offers a
/// lot of flexibility. For instance, it lets you establish a connection
/// over any transport that can by represented as a `GIOStream`.
/// 
/// This class is rarely used directly in D-Bus clients. If you are writing
/// a D-Bus client, it is often easier to use the `g_bus_own_name()`,
/// `g_bus_watch_name()` or `g_dbus_proxy_new_for_bus()` APIs.
/// 
/// As an exception to the usual GLib rule that a particular object must not
/// be used by two threads at the same time, `GDBusConnection`'s methods may be
/// called from any thread. This is so that `g_bus_get()` and `g_bus_get_sync()`
/// can safely return the same `GDBusConnection` when called from any thread.
/// 
/// Most of the ways to obtain a `GDBusConnection` automatically initialize it
/// (i.e. connect to D-Bus): for instance, `g_dbus_connection_new()` and
/// `g_bus_get()`, and the synchronous versions of those methods, give you an
/// initialized connection. Language bindings for GIO should use
/// `g_initable_new()` or `g_async_initable_new_async()`, which also initialize the
/// connection.
/// 
/// If you construct an uninitialized `GDBusConnection`, such as via
/// `g_object_new()`, you must initialize it via `g_initable_init()` or
/// `g_async_initable_init_async()` before using its methods or properties.
/// Calling methods or accessing properties on a `GDBusConnection` that has not
/// completed initialization successfully is considered to be invalid, and leads
/// to undefined behaviour. In particular, if initialization fails with a
/// `GError`, the only valid thing you can do with that `GDBusConnection` is to
/// free it with `g_object_unref()`.
/// 
/// ## An example D-Bus server # <a name="gdbus-server"></a>
/// 
/// Here is an example for a D-Bus server:
/// [gdbus-example-server.c](https://git.gnome.org/browse/glib/tree/gio/tests/gdbus-example-server.c)
/// 
/// ## An example for exporting a subtree # <a name="gdbus-subtree-server"></a>
/// 
/// Here is an example for exporting a subtree:
/// [gdbus-example-subtree.c](https://git.gnome.org/browse/glib/tree/gio/tests/gdbus-example-subtree.c)
/// 
/// ## An example for file descriptor passing # <a name="gdbus-unix-fd-client"></a>
/// 
/// Here is an example for passing UNIX file descriptors:
/// [gdbus-unix-fd-client.c](https://git.gnome.org/browse/glib/tree/gio/tests/gdbus-example-unix-fd-client.c)
/// 
/// ## An example for exporting a GObject # <a name="gdbus-export"></a>
/// 
/// Here is an example for exporting a `GObject:`
/// [gdbus-example-export.c](https://git.gnome.org/browse/glib/tree/gio/tests/gdbus-example-export.c)
public protocol DBusConnectionProtocol: ObjectProtocol, AsyncInitableProtocol, InitableProtocol {
        /// Untyped pointer to the underlying `GDBusConnection` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusConnection` instance.
    var dbus_connection_ptr: UnsafeMutablePointer<GDBusConnection>! { get }

}

/// The `DBusConnectionRef` type acts as a lightweight Swift reference to an underlying `GDBusConnection` instance.
/// It exposes methods that can operate on this data type through `DBusConnectionProtocol` conformance.
/// Use `DBusConnectionRef` only as an `unowned` reference to an existing `GDBusConnection` instance.
///
/// The `GDBusConnection` type is used for D-Bus connections to remote
/// peers such as a message buses. It is a low-level API that offers a
/// lot of flexibility. For instance, it lets you establish a connection
/// over any transport that can by represented as a `GIOStream`.
/// 
/// This class is rarely used directly in D-Bus clients. If you are writing
/// a D-Bus client, it is often easier to use the `g_bus_own_name()`,
/// `g_bus_watch_name()` or `g_dbus_proxy_new_for_bus()` APIs.
/// 
/// As an exception to the usual GLib rule that a particular object must not
/// be used by two threads at the same time, `GDBusConnection`'s methods may be
/// called from any thread. This is so that `g_bus_get()` and `g_bus_get_sync()`
/// can safely return the same `GDBusConnection` when called from any thread.
/// 
/// Most of the ways to obtain a `GDBusConnection` automatically initialize it
/// (i.e. connect to D-Bus): for instance, `g_dbus_connection_new()` and
/// `g_bus_get()`, and the synchronous versions of those methods, give you an
/// initialized connection. Language bindings for GIO should use
/// `g_initable_new()` or `g_async_initable_new_async()`, which also initialize the
/// connection.
/// 
/// If you construct an uninitialized `GDBusConnection`, such as via
/// `g_object_new()`, you must initialize it via `g_initable_init()` or
/// `g_async_initable_init_async()` before using its methods or properties.
/// Calling methods or accessing properties on a `GDBusConnection` that has not
/// completed initialization successfully is considered to be invalid, and leads
/// to undefined behaviour. In particular, if initialization fails with a
/// `GError`, the only valid thing you can do with that `GDBusConnection` is to
/// free it with `g_object_unref()`.
/// 
/// ## An example D-Bus server # <a name="gdbus-server"></a>
/// 
/// Here is an example for a D-Bus server:
/// [gdbus-example-server.c](https://git.gnome.org/browse/glib/tree/gio/tests/gdbus-example-server.c)
/// 
/// ## An example for exporting a subtree # <a name="gdbus-subtree-server"></a>
/// 
/// Here is an example for exporting a subtree:
/// [gdbus-example-subtree.c](https://git.gnome.org/browse/glib/tree/gio/tests/gdbus-example-subtree.c)
/// 
/// ## An example for file descriptor passing # <a name="gdbus-unix-fd-client"></a>
/// 
/// Here is an example for passing UNIX file descriptors:
/// [gdbus-unix-fd-client.c](https://git.gnome.org/browse/glib/tree/gio/tests/gdbus-example-unix-fd-client.c)
/// 
/// ## An example for exporting a GObject # <a name="gdbus-export"></a>
/// 
/// Here is an example for exporting a `GObject:`
/// [gdbus-example-export.c](https://git.gnome.org/browse/glib/tree/gio/tests/gdbus-example-export.c)
public struct DBusConnectionRef: DBusConnectionProtocol {
        /// Untyped pointer to the underlying `GDBusConnection` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_connection_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusConnectionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusConnection>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusConnection>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusConnection>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusConnection>?) {
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

    /// Reference intialiser for a related type that implements `DBusConnectionProtocol`
    @inlinable init<T: DBusConnectionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusConnectionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusConnectionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusConnectionProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusConnectionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusConnectionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Finishes an operation started with `g_dbus_connection_new()`.
    @inlinable init<AsyncResultT: AsyncResultProtocol>(finish res: AsyncResultT) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_dbus_connection_new_finish(res.async_result_ptr, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Finishes an operation started with `g_dbus_connection_new_for_address()`.
    @inlinable init<AsyncResultT: AsyncResultProtocol>(addressFinish res: AsyncResultT) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_dbus_connection_new_for_address_finish(res.async_result_ptr, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Synchronously connects and sets up a D-Bus client connection for
    /// exchanging D-Bus messages with an endpoint specified by `address`
    /// which must be in the
    /// [D-Bus address format](https://dbus.freedesktop.org/doc/dbus-specification.html`addresses`).
    /// 
    /// This constructor can only be used to initiate client-side
    /// connections - use `g_dbus_connection_new_sync()` if you need to act
    /// as the server. In particular, `flags` cannot contain the
    /// `G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_SERVER` or
    /// `G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_ALLOW_ANONYMOUS` flags.
    /// 
    /// This is a synchronous failable constructor. See
    /// `g_dbus_connection_new_for_address()` for the asynchronous version.
    /// 
    /// If `observer` is not `nil` it may be used to control the
    /// authentication process.
    @inlinable init<CancellableT: CancellableProtocol, DBusAuthObserverT: DBusAuthObserverProtocol>(addressSync address: UnsafePointer<gchar>!, flags: DBusConnectionFlags, observer: DBusAuthObserverT? = nil, cancellable: CancellableT? = nil) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_dbus_connection_new_for_address_sync(address, flags.value, observer?.dbus_auth_observer_ptr, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Synchronously sets up a D-Bus connection for exchanging D-Bus messages
    /// with the end represented by `stream`.
    /// 
    /// If `stream` is a `GSocketConnection`, then the corresponding `GSocket`
    /// will be put into non-blocking mode.
    /// 
    /// The D-Bus connection will interact with `stream` from a worker thread.
    /// As a result, the caller should not interact with `stream` after this
    /// method has been called, except by calling `g_object_unref()` on it.
    /// 
    /// If `observer` is not `nil` it may be used to control the
    /// authentication process.
    /// 
    /// This is a synchronous failable constructor. See
    /// `g_dbus_connection_new()` for the asynchronous version.
    @inlinable init<CancellableT: CancellableProtocol, DBusAuthObserverT: DBusAuthObserverProtocol, IOStreamT: IOStreamProtocol>(sync stream: IOStreamT, guid: UnsafePointer<gchar>? = nil, flags: DBusConnectionFlags, observer: DBusAuthObserverT? = nil, cancellable: CancellableT? = nil) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_dbus_connection_new_sync(stream.io_stream_ptr, guid, flags.value, observer?.dbus_auth_observer_ptr, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Finishes an operation started with `g_dbus_connection_new()`.
    @inlinable static func new<AsyncResultT: AsyncResultProtocol>(finish res: AsyncResultT) throws -> DBusConnectionRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = DBusConnectionRef(gconstpointer: gconstpointer(g_dbus_connection_new_finish(res.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Finishes an operation started with `g_dbus_connection_new_for_address()`.
    @inlinable static func newFor<AsyncResultT: AsyncResultProtocol>(addressFinish res: AsyncResultT) throws -> DBusConnectionRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = DBusConnectionRef(gconstpointer: gconstpointer(g_dbus_connection_new_for_address_finish(res.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Synchronously connects and sets up a D-Bus client connection for
    /// exchanging D-Bus messages with an endpoint specified by `address`
    /// which must be in the
    /// [D-Bus address format](https://dbus.freedesktop.org/doc/dbus-specification.html`addresses`).
    /// 
    /// This constructor can only be used to initiate client-side
    /// connections - use `g_dbus_connection_new_sync()` if you need to act
    /// as the server. In particular, `flags` cannot contain the
    /// `G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_SERVER` or
    /// `G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_ALLOW_ANONYMOUS` flags.
    /// 
    /// This is a synchronous failable constructor. See
    /// `g_dbus_connection_new_for_address()` for the asynchronous version.
    /// 
    /// If `observer` is not `nil` it may be used to control the
    /// authentication process.
    @inlinable static func newFor<CancellableT: CancellableProtocol, DBusAuthObserverT: DBusAuthObserverProtocol>(addressSync address: UnsafePointer<gchar>!, flags: DBusConnectionFlags, observer: DBusAuthObserverT? = nil, cancellable: CancellableT? = nil) throws -> DBusConnectionRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = DBusConnectionRef(gconstpointer: gconstpointer(g_dbus_connection_new_for_address_sync(address, flags.value, observer?.dbus_auth_observer_ptr, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Synchronously sets up a D-Bus connection for exchanging D-Bus messages
    /// with the end represented by `stream`.
    /// 
    /// If `stream` is a `GSocketConnection`, then the corresponding `GSocket`
    /// will be put into non-blocking mode.
    /// 
    /// The D-Bus connection will interact with `stream` from a worker thread.
    /// As a result, the caller should not interact with `stream` after this
    /// method has been called, except by calling `g_object_unref()` on it.
    /// 
    /// If `observer` is not `nil` it may be used to control the
    /// authentication process.
    /// 
    /// This is a synchronous failable constructor. See
    /// `g_dbus_connection_new()` for the asynchronous version.
    @inlinable static func new<CancellableT: CancellableProtocol, DBusAuthObserverT: DBusAuthObserverProtocol, IOStreamT: IOStreamProtocol>(sync stream: IOStreamT, guid: UnsafePointer<gchar>? = nil, flags: DBusConnectionFlags, observer: DBusAuthObserverT? = nil, cancellable: CancellableT? = nil) throws -> DBusConnectionRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = DBusConnectionRef(gconstpointer: gconstpointer(g_dbus_connection_new_sync(stream.io_stream_ptr, guid, flags.value, observer?.dbus_auth_observer_ptr, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }
}

/// The `DBusConnection` type acts as a reference-counted owner of an underlying `GDBusConnection` instance.
/// It provides the methods that can operate on this data type through `DBusConnectionProtocol` conformance.
/// Use `DBusConnection` as a strong reference or owner of a `GDBusConnection` instance.
///
/// The `GDBusConnection` type is used for D-Bus connections to remote
/// peers such as a message buses. It is a low-level API that offers a
/// lot of flexibility. For instance, it lets you establish a connection
/// over any transport that can by represented as a `GIOStream`.
/// 
/// This class is rarely used directly in D-Bus clients. If you are writing
/// a D-Bus client, it is often easier to use the `g_bus_own_name()`,
/// `g_bus_watch_name()` or `g_dbus_proxy_new_for_bus()` APIs.
/// 
/// As an exception to the usual GLib rule that a particular object must not
/// be used by two threads at the same time, `GDBusConnection`'s methods may be
/// called from any thread. This is so that `g_bus_get()` and `g_bus_get_sync()`
/// can safely return the same `GDBusConnection` when called from any thread.
/// 
/// Most of the ways to obtain a `GDBusConnection` automatically initialize it
/// (i.e. connect to D-Bus): for instance, `g_dbus_connection_new()` and
/// `g_bus_get()`, and the synchronous versions of those methods, give you an
/// initialized connection. Language bindings for GIO should use
/// `g_initable_new()` or `g_async_initable_new_async()`, which also initialize the
/// connection.
/// 
/// If you construct an uninitialized `GDBusConnection`, such as via
/// `g_object_new()`, you must initialize it via `g_initable_init()` or
/// `g_async_initable_init_async()` before using its methods or properties.
/// Calling methods or accessing properties on a `GDBusConnection` that has not
/// completed initialization successfully is considered to be invalid, and leads
/// to undefined behaviour. In particular, if initialization fails with a
/// `GError`, the only valid thing you can do with that `GDBusConnection` is to
/// free it with `g_object_unref()`.
/// 
/// ## An example D-Bus server # <a name="gdbus-server"></a>
/// 
/// Here is an example for a D-Bus server:
/// [gdbus-example-server.c](https://git.gnome.org/browse/glib/tree/gio/tests/gdbus-example-server.c)
/// 
/// ## An example for exporting a subtree # <a name="gdbus-subtree-server"></a>
/// 
/// Here is an example for exporting a subtree:
/// [gdbus-example-subtree.c](https://git.gnome.org/browse/glib/tree/gio/tests/gdbus-example-subtree.c)
/// 
/// ## An example for file descriptor passing # <a name="gdbus-unix-fd-client"></a>
/// 
/// Here is an example for passing UNIX file descriptors:
/// [gdbus-unix-fd-client.c](https://git.gnome.org/browse/glib/tree/gio/tests/gdbus-example-unix-fd-client.c)
/// 
/// ## An example for exporting a GObject # <a name="gdbus-export"></a>
/// 
/// Here is an example for exporting a `GObject:`
/// [gdbus-example-export.c](https://git.gnome.org/browse/glib/tree/gio/tests/gdbus-example-export.c)
open class DBusConnection: Object, DBusConnectionProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDBusConnection>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDBusConnection>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusConnection` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDBusConnection>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDBusConnection>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GDBusConnection`.
    /// i.e., ownership is transferred to the `DBusConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDBusConnection>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DBusConnectionProtocol`
    /// Will retain `GDBusConnection`.
    /// - Parameter other: an instance of a related type that implements `DBusConnectionProtocol`
    @inlinable public init<T: DBusConnectionProtocol>(dBusConnection other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusConnectionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusConnectionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusConnectionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusConnectionProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusConnectionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusConnectionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusConnectionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusConnectionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Finishes an operation started with `g_dbus_connection_new()`.
    @inlinable public init<AsyncResultT: AsyncResultProtocol>(finish res: AsyncResultT) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_dbus_connection_new_finish(res.async_result_ptr, &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
    }

    /// Finishes an operation started with `g_dbus_connection_new_for_address()`.
    @inlinable public init<AsyncResultT: AsyncResultProtocol>(addressFinish res: AsyncResultT) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_dbus_connection_new_for_address_finish(res.async_result_ptr, &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
    }

    /// Synchronously connects and sets up a D-Bus client connection for
    /// exchanging D-Bus messages with an endpoint specified by `address`
    /// which must be in the
    /// [D-Bus address format](https://dbus.freedesktop.org/doc/dbus-specification.html`addresses`).
    /// 
    /// This constructor can only be used to initiate client-side
    /// connections - use `g_dbus_connection_new_sync()` if you need to act
    /// as the server. In particular, `flags` cannot contain the
    /// `G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_SERVER` or
    /// `G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_ALLOW_ANONYMOUS` flags.
    /// 
    /// This is a synchronous failable constructor. See
    /// `g_dbus_connection_new_for_address()` for the asynchronous version.
    /// 
    /// If `observer` is not `nil` it may be used to control the
    /// authentication process.
    @inlinable public init<CancellableT: CancellableProtocol, DBusAuthObserverT: DBusAuthObserverProtocol>(addressSync address: UnsafePointer<gchar>!, flags: DBusConnectionFlags, observer: DBusAuthObserverT? = nil, cancellable: CancellableT? = nil) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_dbus_connection_new_for_address_sync(address, flags.value, observer?.dbus_auth_observer_ptr, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
    }

    /// Synchronously sets up a D-Bus connection for exchanging D-Bus messages
    /// with the end represented by `stream`.
    /// 
    /// If `stream` is a `GSocketConnection`, then the corresponding `GSocket`
    /// will be put into non-blocking mode.
    /// 
    /// The D-Bus connection will interact with `stream` from a worker thread.
    /// As a result, the caller should not interact with `stream` after this
    /// method has been called, except by calling `g_object_unref()` on it.
    /// 
    /// If `observer` is not `nil` it may be used to control the
    /// authentication process.
    /// 
    /// This is a synchronous failable constructor. See
    /// `g_dbus_connection_new()` for the asynchronous version.
    @inlinable public init<CancellableT: CancellableProtocol, DBusAuthObserverT: DBusAuthObserverProtocol, IOStreamT: IOStreamProtocol>(sync stream: IOStreamT, guid: UnsafePointer<gchar>? = nil, flags: DBusConnectionFlags, observer: DBusAuthObserverT? = nil, cancellable: CancellableT? = nil) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_dbus_connection_new_sync(stream.io_stream_ptr, guid, flags.value, observer?.dbus_auth_observer_ptr, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
    }

    /// Finishes an operation started with `g_dbus_connection_new()`.
    @inlinable public static func new<AsyncResultT: AsyncResultProtocol>(finish res: AsyncResultT) throws -> DBusConnection! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = DBusConnection(gconstpointer: gconstpointer(g_dbus_connection_new_finish(res.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Finishes an operation started with `g_dbus_connection_new_for_address()`.
    @inlinable public static func newFor<AsyncResultT: AsyncResultProtocol>(addressFinish res: AsyncResultT) throws -> DBusConnection! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = DBusConnection(gconstpointer: gconstpointer(g_dbus_connection_new_for_address_finish(res.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Synchronously connects and sets up a D-Bus client connection for
    /// exchanging D-Bus messages with an endpoint specified by `address`
    /// which must be in the
    /// [D-Bus address format](https://dbus.freedesktop.org/doc/dbus-specification.html`addresses`).
    /// 
    /// This constructor can only be used to initiate client-side
    /// connections - use `g_dbus_connection_new_sync()` if you need to act
    /// as the server. In particular, `flags` cannot contain the
    /// `G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_SERVER` or
    /// `G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_ALLOW_ANONYMOUS` flags.
    /// 
    /// This is a synchronous failable constructor. See
    /// `g_dbus_connection_new_for_address()` for the asynchronous version.
    /// 
    /// If `observer` is not `nil` it may be used to control the
    /// authentication process.
    @inlinable public static func newFor<CancellableT: CancellableProtocol, DBusAuthObserverT: DBusAuthObserverProtocol>(addressSync address: UnsafePointer<gchar>!, flags: DBusConnectionFlags, observer: DBusAuthObserverT? = nil, cancellable: CancellableT? = nil) throws -> DBusConnection! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = DBusConnection(gconstpointer: gconstpointer(g_dbus_connection_new_for_address_sync(address, flags.value, observer?.dbus_auth_observer_ptr, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Synchronously sets up a D-Bus connection for exchanging D-Bus messages
    /// with the end represented by `stream`.
    /// 
    /// If `stream` is a `GSocketConnection`, then the corresponding `GSocket`
    /// will be put into non-blocking mode.
    /// 
    /// The D-Bus connection will interact with `stream` from a worker thread.
    /// As a result, the caller should not interact with `stream` after this
    /// method has been called, except by calling `g_object_unref()` on it.
    /// 
    /// If `observer` is not `nil` it may be used to control the
    /// authentication process.
    /// 
    /// This is a synchronous failable constructor. See
    /// `g_dbus_connection_new()` for the asynchronous version.
    @inlinable public static func new<CancellableT: CancellableProtocol, DBusAuthObserverT: DBusAuthObserverProtocol, IOStreamT: IOStreamProtocol>(sync stream: IOStreamT, guid: UnsafePointer<gchar>? = nil, flags: DBusConnectionFlags, observer: DBusAuthObserverT? = nil, cancellable: CancellableT? = nil) throws -> DBusConnection! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = DBusConnection(gconstpointer: gconstpointer(g_dbus_connection_new_sync(stream.io_stream_ptr, guid, flags.value, observer?.dbus_auth_observer_ptr, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

}

public enum DBusConnectionPropertyName: String, PropertyNameProtocol {
    /// A D-Bus address specifying potential endpoints that can be used
    /// when establishing the connection.
    case address = "address"
    /// A `GDBusAuthObserver` object to assist in the authentication process or `nil`.
    case authenticationObserver = "authentication-observer"
    /// Flags from the `GDBusCapabilityFlags` enumeration
    /// representing connection features negotiated with the other peer.
    case capabilities = "capabilities"
    /// A boolean specifying whether the connection has been closed.
    case closed = "closed"
    /// A boolean specifying whether the process will be terminated (by
    /// calling ``raise(SIGTERM)``) if the connection is closed by the
    /// remote peer.
    /// 
    /// Note that `GDBusConnection` objects returned by `g_bus_get_finish()`
    /// and `g_bus_get_sync()` will (usually) have this property set to `true`.
    case exitOnClose = "exit-on-close"
    /// Flags from the `GDBusConnectionFlags` enumeration.
    case flags = "flags"
    /// The GUID of the peer performing the role of server when
    /// authenticating.
    /// 
    /// If you are constructing a `GDBusConnection` and pass
    /// `G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_SERVER` in the
    /// `GDBusConnection:flags` property then you MUST also set this
    /// property to a valid guid.
    /// 
    /// If you are constructing a `GDBusConnection` and pass
    /// `G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_CLIENT` in the
    /// `GDBusConnection:flags` property you will be able to read the GUID
    /// of the other peer here after the connection has been successfully
    /// initialized.
    case guid = "guid"
    /// The underlying `GIOStream` used for I/O.
    /// 
    /// If this is passed on construction and is a `GSocketConnection`,
    /// then the corresponding `GSocket` will be put into non-blocking mode.
    /// 
    /// While the `GDBusConnection` is active, it will interact with this
    /// stream from a worker thread, so it is not safe to interact with
    /// the stream directly.
    case stream = "stream"
    /// The unique name as assigned by the message bus or `nil` if the
    /// connection is not open or not a message bus connection.
    case uniqueName = "unique-name"
}

public extension DBusConnectionProtocol {
    /// Bind a `DBusConnectionPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DBusConnectionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a DBusConnection property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DBusConnectionPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a DBusConnection property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DBusConnectionPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DBusConnectionSignalName: String, SignalNameProtocol {
    /// Emitted when the connection is closed.
    /// 
    /// The cause of this event can be
    /// 
    /// - If `g_dbus_connection_close()` is called. In this case
    ///   `remote_peer_vanished` is set to `false` and `error` is `nil`.
    /// 
    /// - If the remote peer closes the connection. In this case
    ///   `remote_peer_vanished` is set to `true` and `error` is set.
    /// 
    /// - If the remote peer sends invalid or malformed data. In this
    ///   case `remote_peer_vanished` is set to `false` and `error` is set.
    /// 
    /// Upon receiving this signal, you should give up your reference to
    /// `connection`. You are guaranteed that this signal is emitted only
    /// once.
    case closed = "closed"
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
    /// A D-Bus address specifying potential endpoints that can be used
    /// when establishing the connection.
    case notifyAddress = "notify::address"
    /// A `GDBusAuthObserver` object to assist in the authentication process or `nil`.
    case notifyAuthenticationObserver = "notify::authentication-observer"
    /// Flags from the `GDBusCapabilityFlags` enumeration
    /// representing connection features negotiated with the other peer.
    case notifyCapabilities = "notify::capabilities"
    /// A boolean specifying whether the connection has been closed.
    case notifyClosed = "notify::closed"
    /// A boolean specifying whether the process will be terminated (by
    /// calling ``raise(SIGTERM)``) if the connection is closed by the
    /// remote peer.
    /// 
    /// Note that `GDBusConnection` objects returned by `g_bus_get_finish()`
    /// and `g_bus_get_sync()` will (usually) have this property set to `true`.
    case notifyExitOnClose = "notify::exit-on-close"
    /// Flags from the `GDBusConnectionFlags` enumeration.
    case notifyFlags = "notify::flags"
    /// The GUID of the peer performing the role of server when
    /// authenticating.
    /// 
    /// If you are constructing a `GDBusConnection` and pass
    /// `G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_SERVER` in the
    /// `GDBusConnection:flags` property then you MUST also set this
    /// property to a valid guid.
    /// 
    /// If you are constructing a `GDBusConnection` and pass
    /// `G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_CLIENT` in the
    /// `GDBusConnection:flags` property you will be able to read the GUID
    /// of the other peer here after the connection has been successfully
    /// initialized.
    case notifyGuid = "notify::guid"
    /// The underlying `GIOStream` used for I/O.
    /// 
    /// If this is passed on construction and is a `GSocketConnection`,
    /// then the corresponding `GSocket` will be put into non-blocking mode.
    /// 
    /// While the `GDBusConnection` is active, it will interact with this
    /// stream from a worker thread, so it is not safe to interact with
    /// the stream directly.
    case notifyStream = "notify::stream"
    /// The unique name as assigned by the message bus or `nil` if the
    /// connection is not open or not a message bus connection.
    case notifyUniqueName = "notify::unique-name"
}

public extension DBusConnectionProtocol {
    /// Connect a `DBusConnectionSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: DBusConnectionSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: DBusConnection Class: DBusConnectionProtocol extension (methods and fields)
public extension DBusConnectionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusConnection` instance.
    @inlinable var dbus_connection_ptr: UnsafeMutablePointer<GDBusConnection>! { return ptr?.assumingMemoryBound(to: GDBusConnection.self) }

    /// Adds a message filter. Filters are handlers that are run on all
    /// incoming and outgoing messages, prior to standard dispatch. Filters
    /// are run in the order that they were added.  The same handler can be
    /// added as a filter more than once, in which case it will be run more
    /// than once.  Filters added during a filter callback won't be run on
    /// the message being processed. Filter functions are allowed to modify
    /// and even drop messages.
    /// 
    /// Note that filters are run in a dedicated message handling thread so
    /// they can't block and, generally, can't do anything but signal a
    /// worker thread. Also note that filters are rarely needed - use API
    /// such as `g_dbus_connection_send_message_with_reply()`,
    /// `g_dbus_connection_signal_subscribe()` or `g_dbus_connection_call()` instead.
    /// 
    /// If a filter consumes an incoming message the message is not
    /// dispatched anywhere else - not even the standard dispatch machinery
    /// (that API such as `g_dbus_connection_signal_subscribe()` and
    /// `g_dbus_connection_send_message_with_reply()` relies on) will see the
    /// message. Similarly, if a filter consumes an outgoing message, the
    /// message will not be sent to the other peer.
    /// 
    /// If `user_data_free_func` is non-`nil`, it will be called (in the
    /// thread-default main context of the thread you are calling this
    /// method from) at some point after `user_data` is no longer
    /// needed. (It is not guaranteed to be called synchronously when the
    /// filter is removed, and may be called after `connection` has been
    /// destroyed.)
    @inlinable func addFilter(filterFunction filter_function: @escaping GDBusMessageFilterFunction, userData user_data: gpointer! = nil, userDataFreeFunc user_data_free_func: GDestroyNotify?) -> Int {
        let rv = Int(g_dbus_connection_add_filter(dbus_connection_ptr, filter_function, user_data, user_data_free_func))
        return rv
    }

    /// Asynchronously invokes the `method_name` method on the
    /// `interface_name` D-Bus interface on the remote object at
    /// `object_path` owned by `bus_name`.
    /// 
    /// If `connection` is closed then the operation will fail with
    /// `G_IO_ERROR_CLOSED`. If `cancellable` is canceled, the operation will
    /// fail with `G_IO_ERROR_CANCELLED`. If `parameters` contains a value
    /// not compatible with the D-Bus protocol, the operation fails with
    /// `G_IO_ERROR_INVALID_ARGUMENT`.
    /// 
    /// If `reply_type` is non-`nil` then the reply will be checked for having this type and an
    /// error will be raised if it does not match.  Said another way, if you give a `reply_type`
    /// then any non-`nil` return value will be of this type. Unless it’s
    /// `G_VARIANT_TYPE_UNIT`, the `reply_type` will be a tuple containing one or more
    /// values.
    /// 
    /// If the `parameters` `GVariant` is floating, it is consumed. This allows
    /// convenient 'inline' use of `g_variant_new()`, e.g.:
    /// (C Language Example):
    /// ```C
    ///  g_dbus_connection_call (connection,
    ///                          "org.freedesktop.StringThings",
    ///                          "/org/freedesktop/StringThings",
    ///                          "org.freedesktop.StringThings",
    ///                          "TwoStrings",
    ///                          g_variant_new ("(ss)",
    ///                                         "Thing One",
    ///                                         "Thing Two"),
    ///                          NULL,
    ///                          G_DBUS_CALL_FLAGS_NONE,
    ///                          -1,
    ///                          NULL,
    ///                          (GAsyncReadyCallback) two_strings_done,
    ///                          NULL);
    /// ```
    /// 
    /// This is an asynchronous method. When the operation is finished,
    /// `callback` will be invoked in the
    /// [thread-default main context](#g-main-context-push-thread-default)
    /// of the thread you are calling this method from. You can then call
    /// `g_dbus_connection_call_finish()` to get the result of the operation.
    /// See `g_dbus_connection_call_sync()` for the synchronous version of this
    /// function.
    /// 
    /// If `callback` is `nil` then the D-Bus method call message will be sent with
    /// the `G_DBUS_MESSAGE_FLAGS_NO_REPLY_EXPECTED` flag set.
    @inlinable func call<CancellableT: CancellableProtocol, VariantT: VariantProtocol, VariantTypeT: VariantTypeProtocol>(busName bus_name: UnsafePointer<gchar>? = nil, objectPath object_path: UnsafePointer<gchar>!, interfaceName interface_name: UnsafePointer<gchar>!, methodName method_name: UnsafePointer<gchar>!, parameters: VariantT? = nil, replyType reply_type: VariantTypeT? = nil, flags: DBusCallFlags, timeoutMsec timeout_msec: Int, cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
        g_dbus_connection_call(dbus_connection_ptr, bus_name, object_path, interface_name, method_name, parameters?.variant_ptr, reply_type?.variant_type_ptr, flags.value, gint(timeout_msec), cancellable?.cancellable_ptr, callback, user_data)
    
    }

    /// Finishes an operation started with `g_dbus_connection_call()`.
    @inlinable func callFinish<AsyncResultT: AsyncResultProtocol>(res: AsyncResultT) throws -> VariantRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = VariantRef(gconstpointer: gconstpointer(g_dbus_connection_call_finish(dbus_connection_ptr, res.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Synchronously invokes the `method_name` method on the
    /// `interface_name` D-Bus interface on the remote object at
    /// `object_path` owned by `bus_name`.
    /// 
    /// If `connection` is closed then the operation will fail with
    /// `G_IO_ERROR_CLOSED`. If `cancellable` is canceled, the
    /// operation will fail with `G_IO_ERROR_CANCELLED`. If `parameters`
    /// contains a value not compatible with the D-Bus protocol, the operation
    /// fails with `G_IO_ERROR_INVALID_ARGUMENT`.
    /// 
    /// If `reply_type` is non-`nil` then the reply will be checked for having
    /// this type and an error will be raised if it does not match.  Said
    /// another way, if you give a `reply_type` then any non-`nil` return
    /// value will be of this type.
    /// 
    /// If the `parameters` `GVariant` is floating, it is consumed.
    /// This allows convenient 'inline' use of `g_variant_new()`, e.g.:
    /// (C Language Example):
    /// ```C
    ///  g_dbus_connection_call_sync (connection,
    ///                               "org.freedesktop.StringThings",
    ///                               "/org/freedesktop/StringThings",
    ///                               "org.freedesktop.StringThings",
    ///                               "TwoStrings",
    ///                               g_variant_new ("(ss)",
    ///                                              "Thing One",
    ///                                              "Thing Two"),
    ///                               NULL,
    ///                               G_DBUS_CALL_FLAGS_NONE,
    ///                               -1,
    ///                               NULL,
    ///                               &error);
    /// ```
    /// 
    /// The calling thread is blocked until a reply is received. See
    /// `g_dbus_connection_call()` for the asynchronous version of
    /// this method.
    @inlinable func callSync<CancellableT: CancellableProtocol, VariantT: VariantProtocol, VariantTypeT: VariantTypeProtocol>(busName bus_name: UnsafePointer<gchar>? = nil, objectPath object_path: UnsafePointer<gchar>!, interfaceName interface_name: UnsafePointer<gchar>!, methodName method_name: UnsafePointer<gchar>!, parameters: VariantT? = nil, replyType reply_type: VariantTypeT? = nil, flags: DBusCallFlags, timeoutMsec timeout_msec: Int, cancellable: CancellableT? = nil) throws -> VariantRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = VariantRef(gconstpointer: gconstpointer(g_dbus_connection_call_sync(dbus_connection_ptr, bus_name, object_path, interface_name, method_name, parameters?.variant_ptr, reply_type?.variant_type_ptr, flags.value, gint(timeout_msec), cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Like `g_dbus_connection_call()` but also takes a `GUnixFDList` object.
    /// 
    /// This method is only available on UNIX.
    @inlinable func callWithUnixFdList<CancellableT: CancellableProtocol, UnixFDListT: UnixFDListProtocol, VariantT: VariantProtocol, VariantTypeT: VariantTypeProtocol>(busName bus_name: UnsafePointer<gchar>? = nil, objectPath object_path: UnsafePointer<gchar>!, interfaceName interface_name: UnsafePointer<gchar>!, methodName method_name: UnsafePointer<gchar>!, parameters: VariantT? = nil, replyType reply_type: VariantTypeT? = nil, flags: DBusCallFlags, timeoutMsec timeout_msec: Int, fdList fd_list: UnixFDListT? = nil, cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
        g_dbus_connection_call_with_unix_fd_list(dbus_connection_ptr, bus_name, object_path, interface_name, method_name, parameters?.variant_ptr, reply_type?.variant_type_ptr, flags.value, gint(timeout_msec), fd_list?.unix_fd_list_ptr, cancellable?.cancellable_ptr, callback, user_data)
    
    }

    /// Finishes an operation started with `g_dbus_connection_call_with_unix_fd_list()`.
    @inlinable func callWithUnixFdListFinish<AsyncResultT: AsyncResultProtocol>(outFdList out_fd_list: UnsafeMutablePointer<UnsafeMutablePointer<GUnixFDList>?>! = nil, res: AsyncResultT) throws -> VariantRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = VariantRef(gconstpointer: gconstpointer(g_dbus_connection_call_with_unix_fd_list_finish(dbus_connection_ptr, out_fd_list, res.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Like `g_dbus_connection_call_sync()` but also takes and returns `GUnixFDList` objects.
    /// 
    /// This method is only available on UNIX.
    @inlinable func callWithUnixFdListSync<CancellableT: CancellableProtocol, UnixFDListT: UnixFDListProtocol, VariantT: VariantProtocol, VariantTypeT: VariantTypeProtocol>(busName bus_name: UnsafePointer<gchar>? = nil, objectPath object_path: UnsafePointer<gchar>!, interfaceName interface_name: UnsafePointer<gchar>!, methodName method_name: UnsafePointer<gchar>!, parameters: VariantT? = nil, replyType reply_type: VariantTypeT? = nil, flags: DBusCallFlags, timeoutMsec timeout_msec: Int, fdList fd_list: UnixFDListT? = nil, outFdList out_fd_list: UnsafeMutablePointer<UnsafeMutablePointer<GUnixFDList>?>! = nil, cancellable: CancellableT? = nil) throws -> VariantRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = VariantRef(gconstpointer: gconstpointer(g_dbus_connection_call_with_unix_fd_list_sync(dbus_connection_ptr, bus_name, object_path, interface_name, method_name, parameters?.variant_ptr, reply_type?.variant_type_ptr, flags.value, gint(timeout_msec), fd_list?.unix_fd_list_ptr, out_fd_list, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Closes `connection`. Note that this never causes the process to
    /// exit (this might only happen if the other end of a shared message
    /// bus connection disconnects, see `GDBusConnection:exit`-on-close).
    /// 
    /// Once the connection is closed, operations such as sending a message
    /// will return with the error `G_IO_ERROR_CLOSED`. Closing a connection
    /// will not automatically flush the connection so queued messages may
    /// be lost. Use `g_dbus_connection_flush()` if you need such guarantees.
    /// 
    /// If `connection` is already closed, this method fails with
    /// `G_IO_ERROR_CLOSED`.
    /// 
    /// When `connection` has been closed, the `GDBusConnection::closed`
    /// signal is emitted in the
    /// [thread-default main context](#g-main-context-push-thread-default)
    /// of the thread that `connection` was constructed in.
    /// 
    /// This is an asynchronous method. When the operation is finished,
    /// `callback` will be invoked in the
    /// [thread-default main context](#g-main-context-push-thread-default)
    /// of the thread you are calling this method from. You can
    /// then call `g_dbus_connection_close_finish()` to get the result of the
    /// operation. See `g_dbus_connection_close_sync()` for the synchronous
    /// version.
    @inlinable func close<CancellableT: CancellableProtocol>(cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
        g_dbus_connection_close(dbus_connection_ptr, cancellable?.cancellable_ptr, callback, user_data)
    
    }

    /// Finishes an operation started with `g_dbus_connection_close()`.
    @inlinable func closeFinish<AsyncResultT: AsyncResultProtocol>(res: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_dbus_connection_close_finish(dbus_connection_ptr, res.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Synchronously closes `connection`. The calling thread is blocked
    /// until this is done. See `g_dbus_connection_close()` for the
    /// asynchronous version of this method and more details about what it
    /// does.
    @inlinable func closeSync<CancellableT: CancellableProtocol>(cancellable: CancellableT? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_dbus_connection_close_sync(dbus_connection_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Emits a signal.
    /// 
    /// If the parameters GVariant is floating, it is consumed.
    /// 
    /// This can only fail if `parameters` is not compatible with the D-Bus protocol
    /// (`G_IO_ERROR_INVALID_ARGUMENT`), or if `connection` has been closed
    /// (`G_IO_ERROR_CLOSED`).
    @inlinable func emitSignal<VariantT: VariantProtocol>(destinationBusName destination_bus_name: UnsafePointer<gchar>? = nil, objectPath object_path: UnsafePointer<gchar>!, interfaceName interface_name: UnsafePointer<gchar>!, signalName signal_name: UnsafePointer<gchar>!, parameters: VariantT? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_dbus_connection_emit_signal(dbus_connection_ptr, destination_bus_name, object_path, interface_name, signal_name, parameters?.variant_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Exports `action_group` on `connection` at `object_path`.
    /// 
    /// The implemented D-Bus API should be considered private.  It is
    /// subject to change in the future.
    /// 
    /// A given object path can only have one action group exported on it.
    /// If this constraint is violated, the export will fail and 0 will be
    /// returned (with `error` set accordingly).
    /// 
    /// You can unexport the action group using
    /// `g_dbus_connection_unexport_action_group()` with the return value of
    /// this function.
    /// 
    /// The thread default main context is taken at the time of this call.
    /// All incoming action activations and state change requests are
    /// reported from this context.  Any changes on the action group that
    /// cause it to emit signals must also come from this same context.
    /// Since incoming action activations and state change requests are
    /// rather likely to cause changes on the action group, this effectively
    /// limits a given action group to being exported from only one main
    /// context.
    @inlinable func exportActionGroup<ActionGroupT: ActionGroupProtocol>(objectPath object_path: UnsafePointer<gchar>!, actionGroup action_group: ActionGroupT) throws -> Int {
        var error: UnsafeMutablePointer<GError>?
        let rv = Int(g_dbus_connection_export_action_group(dbus_connection_ptr, object_path, action_group.action_group_ptr, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Exports `menu` on `connection` at `object_path`.
    /// 
    /// The implemented D-Bus API should be considered private.
    /// It is subject to change in the future.
    /// 
    /// An object path can only have one menu model exported on it. If this
    /// constraint is violated, the export will fail and 0 will be
    /// returned (with `error` set accordingly).
    /// 
    /// You can unexport the menu model using
    /// `g_dbus_connection_unexport_menu_model()` with the return value of
    /// this function.
    @inlinable func exportMenuModel<MenuModelT: MenuModelProtocol>(objectPath object_path: UnsafePointer<gchar>!, menu: MenuModelT) throws -> Int {
        var error: UnsafeMutablePointer<GError>?
        let rv = Int(g_dbus_connection_export_menu_model(dbus_connection_ptr, object_path, menu.menu_model_ptr, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously flushes `connection`, that is, writes all queued
    /// outgoing message to the transport and then flushes the transport
    /// (using `g_output_stream_flush_async()`). This is useful in programs
    /// that wants to emit a D-Bus signal and then exit immediately. Without
    /// flushing the connection, there is no guaranteed that the message has
    /// been sent to the networking buffers in the OS kernel.
    /// 
    /// This is an asynchronous method. When the operation is finished,
    /// `callback` will be invoked in the
    /// [thread-default main context](#g-main-context-push-thread-default)
    /// of the thread you are calling this method from. You can
    /// then call `g_dbus_connection_flush_finish()` to get the result of the
    /// operation. See `g_dbus_connection_flush_sync()` for the synchronous
    /// version.
    @inlinable func flush<CancellableT: CancellableProtocol>(cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
        g_dbus_connection_flush(dbus_connection_ptr, cancellable?.cancellable_ptr, callback, user_data)
    
    }

    /// Finishes an operation started with `g_dbus_connection_flush()`.
    @inlinable func flushFinish<AsyncResultT: AsyncResultProtocol>(res: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_dbus_connection_flush_finish(dbus_connection_ptr, res.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Synchronously flushes `connection`. The calling thread is blocked
    /// until this is done. See `g_dbus_connection_flush()` for the
    /// asynchronous version of this method and more details about what it
    /// does.
    @inlinable func flushSync<CancellableT: CancellableProtocol>(cancellable: CancellableT? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_dbus_connection_flush_sync(dbus_connection_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Gets the capabilities negotiated with the remote peer
    @inlinable func getCapabilities() -> DBusCapabilityFlags {
        let rv = DBusCapabilityFlags(g_dbus_connection_get_capabilities(dbus_connection_ptr))
        return rv
    }

    /// Gets whether the process is terminated when `connection` is
    /// closed by the remote peer. See
    /// `GDBusConnection:exit`-on-close for more details.
    @inlinable func getExitOnClose() -> Bool {
        let rv = ((g_dbus_connection_get_exit_on_close(dbus_connection_ptr)) != 0)
        return rv
    }

    /// Gets the flags used to construct this connection
    @inlinable func getFlags() -> DBusConnectionFlags {
        let rv = DBusConnectionFlags(g_dbus_connection_get_flags(dbus_connection_ptr))
        return rv
    }

    /// The GUID of the peer performing the role of server when
    /// authenticating. See `GDBusConnection:guid` for more details.
    @inlinable func getGuid() -> String! {
        let rv = g_dbus_connection_get_guid(dbus_connection_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Retrieves the last serial number assigned to a `GDBusMessage` on
    /// the current thread. This includes messages sent via both low-level
    /// API such as `g_dbus_connection_send_message()` as well as
    /// high-level API such as `g_dbus_connection_emit_signal()`,
    /// `g_dbus_connection_call()` or `g_dbus_proxy_call()`.
    @inlinable func getLastSerial() -> guint32 {
        let rv = g_dbus_connection_get_last_serial(dbus_connection_ptr)
        return rv
    }

    /// Gets the credentials of the authenticated peer. This will always
    /// return `nil` unless `connection` acted as a server
    /// (e.g. `G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_SERVER` was passed)
    /// when set up and the client passed credentials as part of the
    /// authentication process.
    /// 
    /// In a message bus setup, the message bus is always the server and
    /// each application is a client. So this method will always return
    /// `nil` for message bus clients.
    @inlinable func getPeerCredentials() -> CredentialsRef! {
        let rv = CredentialsRef(gconstpointer: gconstpointer(g_dbus_connection_get_peer_credentials(dbus_connection_ptr)))
        return rv
    }

    /// Gets the underlying stream used for IO.
    /// 
    /// While the `GDBusConnection` is active, it will interact with this
    /// stream from a worker thread, so it is not safe to interact with
    /// the stream directly.
    @inlinable func getStream() -> IOStreamRef! {
        let rv = IOStreamRef(gconstpointer: gconstpointer(g_dbus_connection_get_stream(dbus_connection_ptr)))
        return rv
    }

    /// Gets the unique name of `connection` as assigned by the message
    /// bus. This can also be used to figure out if `connection` is a
    /// message bus connection.
    @inlinable func getUniqueName() -> String! {
        let rv = g_dbus_connection_get_unique_name(dbus_connection_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Registers callbacks for exported objects at `object_path` with the
    /// D-Bus interface that is described in `interface_info`.
    /// 
    /// Calls to functions in `vtable` (and `user_data_free_func`) will happen
    /// in the
    /// [thread-default main context](#g-main-context-push-thread-default)
    /// of the thread you are calling this method from.
    /// 
    /// Note that all `GVariant` values passed to functions in `vtable` will match
    /// the signature given in `interface_info` - if a remote caller passes
    /// incorrect values, the `org.freedesktop.DBus.Error.InvalidArgs`
    /// is returned to the remote caller.
    /// 
    /// Additionally, if the remote caller attempts to invoke methods or
    /// access properties not mentioned in `interface_info` the
    /// `org.freedesktop.DBus.Error.UnknownMethod` resp.
    /// `org.freedesktop.DBus.Error.InvalidArgs` errors
    /// are returned to the caller.
    /// 
    /// It is considered a programming error if the
    /// `GDBusInterfaceGetPropertyFunc` function in `vtable` returns a
    /// `GVariant` of incorrect type.
    /// 
    /// If an existing callback is already registered at `object_path` and
    /// `interface_name`, then `error` is set to `G_IO_ERROR_EXISTS`.
    /// 
    /// GDBus automatically implements the standard D-Bus interfaces
    /// org.freedesktop.DBus.Properties, org.freedesktop.DBus.Introspectable
    /// and org.freedesktop.Peer, so you don't have to implement those for the
    /// objects you export. You can implement org.freedesktop.DBus.Properties
    /// yourself, e.g. to handle getting and setting of properties asynchronously.
    /// 
    /// Note that the reference count on `interface_info` will be
    /// incremented by 1 (unless allocated statically, e.g. if the
    /// reference count is -1, see `g_dbus_interface_info_ref()`) for as long
    /// as the object is exported. Also note that `vtable` will be copied.
    /// 
    /// See this [server](#gdbus-server) for an example of how to use this method.
    @inlinable func registerObject<DBusInterfaceInfoT: DBusInterfaceInfoProtocol, DBusInterfaceVTableT: DBusInterfaceVTableProtocol>(objectPath object_path: UnsafePointer<gchar>!, interfaceInfo interface_info: DBusInterfaceInfoT, vtable: DBusInterfaceVTableT? = nil, userData user_data: gpointer! = nil, userDataFreeFunc user_data_free_func: GDestroyNotify?) throws -> Int {
        var error: UnsafeMutablePointer<GError>?
        let rv = Int(g_dbus_connection_register_object(dbus_connection_ptr, object_path, interface_info.dbus_interface_info_ptr, vtable?._ptr, user_data, user_data_free_func, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Version of `g_dbus_connection_register_object()` using closures instead of a
    /// `GDBusInterfaceVTable` for easier binding in other languages.
    @inlinable func registerObjectWithClosures<ClosureT: ClosureProtocol, DBusInterfaceInfoT: DBusInterfaceInfoProtocol>(objectPath object_path: UnsafePointer<gchar>!, interfaceInfo interface_info: DBusInterfaceInfoT, methodCallClosure method_call_closure: ClosureT? = nil, getPropertyClosure get_property_closure: ClosureT? = nil, setPropertyClosure set_property_closure: ClosureT? = nil) throws -> Int {
        var error: UnsafeMutablePointer<GError>?
        let rv = Int(g_dbus_connection_register_object_with_closures(dbus_connection_ptr, object_path, interface_info.dbus_interface_info_ptr, method_call_closure?.closure_ptr, get_property_closure?.closure_ptr, set_property_closure?.closure_ptr, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Registers a whole subtree of dynamic objects.
    /// 
    /// The `enumerate` and `introspection` functions in `vtable` are used to
    /// convey, to remote callers, what nodes exist in the subtree rooted
    /// by `object_path`.
    /// 
    /// When handling remote calls into any node in the subtree, first the
    /// `enumerate` function is used to check if the node exists. If the node exists
    /// or the `G_DBUS_SUBTREE_FLAGS_DISPATCH_TO_UNENUMERATED_NODES` flag is set
    /// the `introspection` function is used to check if the node supports the
    /// requested method. If so, the `dispatch` function is used to determine
    /// where to dispatch the call. The collected `GDBusInterfaceVTable` and
    /// `gpointer` will be used to call into the interface vtable for processing
    /// the request.
    /// 
    /// All calls into user-provided code will be invoked in the
    /// [thread-default main context](#g-main-context-push-thread-default)
    /// of the thread you are calling this method from.
    /// 
    /// If an existing subtree is already registered at `object_path` or
    /// then `error` is set to `G_IO_ERROR_EXISTS`.
    /// 
    /// Note that it is valid to register regular objects (using
    /// `g_dbus_connection_register_object()`) in a subtree registered with
    /// `g_dbus_connection_register_subtree()` - if so, the subtree handler
    /// is tried as the last resort. One way to think about a subtree
    /// handler is to consider it a fallback handler for object paths not
    /// registered via `g_dbus_connection_register_object()` or other bindings.
    /// 
    /// Note that `vtable` will be copied so you cannot change it after
    /// registration.
    /// 
    /// See this [server](#gdbus-subtree-server) for an example of how to use
    /// this method.
    @inlinable func registerSubtree<DBusSubtreeVTableT: DBusSubtreeVTableProtocol>(objectPath object_path: UnsafePointer<gchar>!, vtable: DBusSubtreeVTableT, flags: DBusSubtreeFlags, userData user_data: gpointer! = nil, userDataFreeFunc user_data_free_func: GDestroyNotify?) throws -> Int {
        var error: UnsafeMutablePointer<GError>?
        let rv = Int(g_dbus_connection_register_subtree(dbus_connection_ptr, object_path, vtable._ptr, flags.value, user_data, user_data_free_func, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Removes a filter.
    /// 
    /// Note that since filters run in a different thread, there is a race
    /// condition where it is possible that the filter will be running even
    /// after calling `g_dbus_connection_remove_filter()`, so you cannot just
    /// free data that the filter might be using. Instead, you should pass
    /// a `GDestroyNotify` to `g_dbus_connection_add_filter()`, which will be
    /// called when it is guaranteed that the data is no longer needed.
    @inlinable func removeFilter(filterID filter_id: Int) {
        g_dbus_connection_remove_filter(dbus_connection_ptr, guint(filter_id))
    
    }

    /// Asynchronously sends `message` to the peer represented by `connection`.
    /// 
    /// Unless `flags` contain the
    /// `G_DBUS_SEND_MESSAGE_FLAGS_PRESERVE_SERIAL` flag, the serial number
    /// will be assigned by `connection` and set on `message` via
    /// `g_dbus_message_set_serial()`. If `out_serial` is not `nil`, then the
    /// serial number used will be written to this location prior to
    /// submitting the message to the underlying transport.
    /// 
    /// If `connection` is closed then the operation will fail with
    /// `G_IO_ERROR_CLOSED`. If `message` is not well-formed,
    /// the operation fails with `G_IO_ERROR_INVALID_ARGUMENT`.
    /// 
    /// See this [server](#gdbus-server) and [client](#gdbus-unix-fd-client)
    /// for an example of how to use this low-level API to send and receive
    /// UNIX file descriptors.
    /// 
    /// Note that `message` must be unlocked, unless `flags` contain the
    /// `G_DBUS_SEND_MESSAGE_FLAGS_PRESERVE_SERIAL` flag.
    @inlinable func send<DBusMessageT: DBusMessageProtocol>(message: DBusMessageT, flags: DBusSendMessageFlags, outSerial out_serial: UnsafeMutablePointer<guint32>! = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_dbus_connection_send_message(dbus_connection_ptr, message.dbus_message_ptr, flags.value, out_serial, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously sends `message` to the peer represented by `connection`.
    /// 
    /// Unless `flags` contain the
    /// `G_DBUS_SEND_MESSAGE_FLAGS_PRESERVE_SERIAL` flag, the serial number
    /// will be assigned by `connection` and set on `message` via
    /// `g_dbus_message_set_serial()`. If `out_serial` is not `nil`, then the
    /// serial number used will be written to this location prior to
    /// submitting the message to the underlying transport.
    /// 
    /// If `connection` is closed then the operation will fail with
    /// `G_IO_ERROR_CLOSED`. If `cancellable` is canceled, the operation will
    /// fail with `G_IO_ERROR_CANCELLED`. If `message` is not well-formed,
    /// the operation fails with `G_IO_ERROR_INVALID_ARGUMENT`.
    /// 
    /// This is an asynchronous method. When the operation is finished, `callback`
    /// will be invoked in the
    /// [thread-default main context](#g-main-context-push-thread-default)
    /// of the thread you are calling this method from. You can then call
    /// `g_dbus_connection_send_message_with_reply_finish()` to get the result of the operation.
    /// See `g_dbus_connection_send_message_with_reply_sync()` for the synchronous version.
    /// 
    /// Note that `message` must be unlocked, unless `flags` contain the
    /// `G_DBUS_SEND_MESSAGE_FLAGS_PRESERVE_SERIAL` flag.
    /// 
    /// See this [server](#gdbus-server) and [client](#gdbus-unix-fd-client)
    /// for an example of how to use this low-level API to send and receive
    /// UNIX file descriptors.
    @inlinable func sendMessageWithReply<CancellableT: CancellableProtocol, DBusMessageT: DBusMessageProtocol>(message: DBusMessageT, flags: DBusSendMessageFlags, timeoutMsec timeout_msec: Int, outSerial out_serial: UnsafeMutablePointer<guint32>! = nil, cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
        g_dbus_connection_send_message_with_reply(dbus_connection_ptr, message.dbus_message_ptr, flags.value, gint(timeout_msec), out_serial, cancellable?.cancellable_ptr, callback, user_data)
    
    }

    /// Finishes an operation started with `g_dbus_connection_send_message_with_reply()`.
    /// 
    /// Note that `error` is only set if a local in-process error
    /// occurred. That is to say that the returned `GDBusMessage` object may
    /// be of type `G_DBUS_MESSAGE_TYPE_ERROR`. Use
    /// `g_dbus_message_to_gerror()` to transcode this to a `GError`.
    /// 
    /// See this [server](#gdbus-server) and [client](#gdbus-unix-fd-client)
    /// for an example of how to use this low-level API to send and receive
    /// UNIX file descriptors.
    @inlinable func sendMessageWithReplyFinish<AsyncResultT: AsyncResultProtocol>(res: AsyncResultT) throws -> DBusMessageRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = DBusMessageRef(gconstpointer: gconstpointer(g_dbus_connection_send_message_with_reply_finish(dbus_connection_ptr, res.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Synchronously sends `message` to the peer represented by `connection`
    /// and blocks the calling thread until a reply is received or the
    /// timeout is reached. See `g_dbus_connection_send_message_with_reply()`
    /// for the asynchronous version of this method.
    /// 
    /// Unless `flags` contain the
    /// `G_DBUS_SEND_MESSAGE_FLAGS_PRESERVE_SERIAL` flag, the serial number
    /// will be assigned by `connection` and set on `message` via
    /// `g_dbus_message_set_serial()`. If `out_serial` is not `nil`, then the
    /// serial number used will be written to this location prior to
    /// submitting the message to the underlying transport.
    /// 
    /// If `connection` is closed then the operation will fail with
    /// `G_IO_ERROR_CLOSED`. If `cancellable` is canceled, the operation will
    /// fail with `G_IO_ERROR_CANCELLED`. If `message` is not well-formed,
    /// the operation fails with `G_IO_ERROR_INVALID_ARGUMENT`.
    /// 
    /// Note that `error` is only set if a local in-process error
    /// occurred. That is to say that the returned `GDBusMessage` object may
    /// be of type `G_DBUS_MESSAGE_TYPE_ERROR`. Use
    /// `g_dbus_message_to_gerror()` to transcode this to a `GError`.
    /// 
    /// See this [server](#gdbus-server) and [client](#gdbus-unix-fd-client)
    /// for an example of how to use this low-level API to send and receive
    /// UNIX file descriptors.
    /// 
    /// Note that `message` must be unlocked, unless `flags` contain the
    /// `G_DBUS_SEND_MESSAGE_FLAGS_PRESERVE_SERIAL` flag.
    @inlinable func sendMessageWithReplySync<CancellableT: CancellableProtocol, DBusMessageT: DBusMessageProtocol>(message: DBusMessageT, flags: DBusSendMessageFlags, timeoutMsec timeout_msec: Int, outSerial out_serial: UnsafeMutablePointer<guint32>! = nil, cancellable: CancellableT? = nil) throws -> DBusMessageRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = DBusMessageRef(gconstpointer: gconstpointer(g_dbus_connection_send_message_with_reply_sync(dbus_connection_ptr, message.dbus_message_ptr, flags.value, gint(timeout_msec), out_serial, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Sets whether the process should be terminated when `connection` is
    /// closed by the remote peer. See `GDBusConnection:exit`-on-close for
    /// more details.
    /// 
    /// Note that this function should be used with care. Most modern UNIX
    /// desktops tie the notion of a user session with the session bus, and expect
    /// all of a user's applications to quit when their bus connection goes away.
    /// If you are setting `exit_on_close` to `false` for the shared session
    /// bus connection, you should make sure that your application exits
    /// when the user session ends.
    @inlinable func set(exitOnClose exit_on_close: Bool) {
        g_dbus_connection_set_exit_on_close(dbus_connection_ptr, gboolean((exit_on_close) ? 1 : 0))
    
    }

    /// Subscribes to signals on `connection` and invokes `callback` with a whenever
    /// the signal is received. Note that `callback` will be invoked in the
    /// [thread-default main context](#g-main-context-push-thread-default)
    /// of the thread you are calling this method from.
    /// 
    /// If `connection` is not a message bus connection, `sender` must be
    /// `nil`.
    /// 
    /// If `sender` is a well-known name note that `callback` is invoked with
    /// the unique name for the owner of `sender`, not the well-known name
    /// as one would expect. This is because the message bus rewrites the
    /// name. As such, to avoid certain race conditions, users should be
    /// tracking the name owner of the well-known name and use that when
    /// processing the received signal.
    /// 
    /// If one of `G_DBUS_SIGNAL_FLAGS_MATCH_ARG0_NAMESPACE` or
    /// `G_DBUS_SIGNAL_FLAGS_MATCH_ARG0_PATH` are given, `arg0` is
    /// interpreted as part of a namespace or path.  The first argument
    /// of a signal is matched against that part as specified by D-Bus.
    /// 
    /// If `user_data_free_func` is non-`nil`, it will be called (in the
    /// thread-default main context of the thread you are calling this
    /// method from) at some point after `user_data` is no longer
    /// needed. (It is not guaranteed to be called synchronously when the
    /// signal is unsubscribed from, and may be called after `connection`
    /// has been destroyed.)
    /// 
    /// As `callback` is potentially invoked in a different thread from where it’s
    /// emitted, it’s possible for this to happen after
    /// `g_dbus_connection_signal_unsubscribe()` has been called in another thread.
    /// Due to this, `user_data` should have a strong reference which is freed with
    /// `user_data_free_func`, rather than pointing to data whose lifecycle is tied
    /// to the signal subscription. For example, if a `GObject` is used to store the
    /// subscription ID from `g_dbus_connection_signal_subscribe()`, a strong reference
    /// to that `GObject` must be passed to `user_data`, and `g_object_unref()` passed to
    /// `user_data_free_func`. You are responsible for breaking the resulting
    /// reference count cycle by explicitly unsubscribing from the signal when
    /// dropping the last external reference to the `GObject`. Alternatively, a weak
    /// reference may be used.
    /// 
    /// It is guaranteed that if you unsubscribe from a signal using
    /// `g_dbus_connection_signal_unsubscribe()` from the same thread which made the
    /// corresponding `g_dbus_connection_signal_subscribe()` call, `callback` will not
    /// be invoked after `g_dbus_connection_signal_unsubscribe()` returns.
    /// 
    /// The returned subscription identifier is an opaque value which is guaranteed
    /// to never be zero.
    /// 
    /// This function can never fail.
    @inlinable func signalSubscribe(sender: UnsafePointer<gchar>? = nil, interfaceName interface_name: UnsafePointer<gchar>? = nil, member: UnsafePointer<gchar>? = nil, objectPath object_path: UnsafePointer<gchar>? = nil, arg0: UnsafePointer<gchar>? = nil, flags: DBusSignalFlags, callback: GDBusSignalCallback?, userData user_data: gpointer! = nil, userDataFreeFunc user_data_free_func: GDestroyNotify? = nil) -> Int {
        let rv = Int(g_dbus_connection_signal_subscribe(dbus_connection_ptr, sender, interface_name, member, object_path, arg0, flags.value, callback, user_data, user_data_free_func))
        return rv
    }

    /// Unsubscribes from signals.
    /// 
    /// Note that there may still be D-Bus traffic to process (relating to this
    /// signal subscription) in the current thread-default `GMainContext` after this
    /// function has returned. You should continue to iterate the `GMainContext`
    /// until the `GDestroyNotify` function passed to
    /// `g_dbus_connection_signal_subscribe()` is called, in order to avoid memory
    /// leaks through callbacks queued on the `GMainContext` after it’s stopped being
    /// iterated.
    @inlinable func signalUnsubscribe(subscriptionID subscription_id: Int) {
        g_dbus_connection_signal_unsubscribe(dbus_connection_ptr, guint(subscription_id))
    
    }

    /// If `connection` was created with
    /// `G_DBUS_CONNECTION_FLAGS_DELAY_MESSAGE_PROCESSING`, this method
    /// starts processing messages. Does nothing on if `connection` wasn't
    /// created with this flag or if the method has already been called.
    @inlinable func startMessageProcessing() {
        g_dbus_connection_start_message_processing(dbus_connection_ptr)
    
    }

    /// Reverses the effect of a previous call to
    /// `g_dbus_connection_export_action_group()`.
    /// 
    /// It is an error to call this function with an ID that wasn't returned
    /// from `g_dbus_connection_export_action_group()` or to call it with the
    /// same ID more than once.
    @inlinable func unexportActionGroup(exportID export_id: Int) {
        g_dbus_connection_unexport_action_group(dbus_connection_ptr, guint(export_id))
    
    }

    /// Reverses the effect of a previous call to
    /// `g_dbus_connection_export_menu_model()`.
    /// 
    /// It is an error to call this function with an ID that wasn't returned
    /// from `g_dbus_connection_export_menu_model()` or to call it with the
    /// same ID more than once.
    @inlinable func unexportMenuModel(exportID export_id: Int) {
        g_dbus_connection_unexport_menu_model(dbus_connection_ptr, guint(export_id))
    
    }

    /// Unregisters an object.
    @inlinable func unregisterObject(registrationID registration_id: Int) -> Bool {
        let rv = ((g_dbus_connection_unregister_object(dbus_connection_ptr, guint(registration_id))) != 0)
        return rv
    }

    /// Unregisters a subtree.
    @inlinable func unregisterSubtree(registrationID registration_id: Int) -> Bool {
        let rv = ((g_dbus_connection_unregister_subtree(dbus_connection_ptr, guint(registration_id))) != 0)
        return rv
    }

    /// Like `g_bus_own_name()` but takes a `GDBusConnection` instead of a
    /// `GBusType`.
    @inlinable func busOwnNameOnConnection(name: UnsafePointer<gchar>!, flags: BusNameOwnerFlags, nameAcquiredHandler name_acquired_handler: GBusNameAcquiredCallback? = nil, nameLostHandler name_lost_handler: GBusNameLostCallback? = nil, userData user_data: gpointer! = nil, userDataFreeFunc user_data_free_func: GDestroyNotify? = nil) -> Int {
        let rv = Int(g_bus_own_name_on_connection(dbus_connection_ptr, name, flags.value, name_acquired_handler, name_lost_handler, user_data, user_data_free_func))
        return rv
    }

    /// Version of `g_bus_own_name_on_connection()` using closures instead of
    /// callbacks for easier binding in other languages.
    @inlinable func busOwnNameOnConnectionWithClosures<ClosureT: ClosureProtocol>(name: UnsafePointer<gchar>!, flags: BusNameOwnerFlags, nameAcquiredClosure name_acquired_closure: ClosureT? = nil, nameLostClosure name_lost_closure: ClosureT? = nil) -> Int {
        let rv = Int(g_bus_own_name_on_connection_with_closures(dbus_connection_ptr, name, flags.value, name_acquired_closure?.closure_ptr, name_lost_closure?.closure_ptr))
        return rv
    }

    /// Like `g_bus_watch_name()` but takes a `GDBusConnection` instead of a
    /// `GBusType`.
    @inlinable func busWatchNameOnConnection(name: UnsafePointer<gchar>!, flags: BusNameWatcherFlags, nameAppearedHandler name_appeared_handler: GBusNameAppearedCallback? = nil, nameVanishedHandler name_vanished_handler: GBusNameVanishedCallback? = nil, userData user_data: gpointer! = nil, userDataFreeFunc user_data_free_func: GDestroyNotify? = nil) -> Int {
        let rv = Int(g_bus_watch_name_on_connection(dbus_connection_ptr, name, flags.value, name_appeared_handler, name_vanished_handler, user_data, user_data_free_func))
        return rv
    }

    /// Version of `g_bus_watch_name_on_connection()` using closures instead of callbacks for
    /// easier binding in other languages.
    @inlinable func busWatchNameOnConnectionWithClosures<ClosureT: ClosureProtocol>(name: UnsafePointer<gchar>!, flags: BusNameWatcherFlags, nameAppearedClosure name_appeared_closure: ClosureT? = nil, nameVanishedClosure name_vanished_closure: ClosureT? = nil) -> Int {
        let rv = Int(g_bus_watch_name_on_connection_with_closures(dbus_connection_ptr, name, flags.value, name_appeared_closure?.closure_ptr, name_vanished_closure?.closure_ptr))
        return rv
    }
    /// Flags from the `GDBusCapabilityFlags` enumeration
    /// representing connection features negotiated with the other peer.
    @inlinable var capabilities: DBusCapabilityFlags {
        /// Gets the capabilities negotiated with the remote peer
        get {
            let rv = DBusCapabilityFlags(g_dbus_connection_get_capabilities(dbus_connection_ptr))
            return rv
        }
    }

    /// Gets whether the process is terminated when `connection` is
    /// closed by the remote peer. See
    /// `GDBusConnection:exit`-on-close for more details.
    @inlinable var exitOnClose: Bool {
        /// Gets whether the process is terminated when `connection` is
        /// closed by the remote peer. See
        /// `GDBusConnection:exit`-on-close for more details.
        get {
            let rv = ((g_dbus_connection_get_exit_on_close(dbus_connection_ptr)) != 0)
            return rv
        }
        /// Sets whether the process should be terminated when `connection` is
        /// closed by the remote peer. See `GDBusConnection:exit`-on-close for
        /// more details.
        /// 
        /// Note that this function should be used with care. Most modern UNIX
        /// desktops tie the notion of a user session with the session bus, and expect
        /// all of a user's applications to quit when their bus connection goes away.
        /// If you are setting `exit_on_close` to `false` for the shared session
        /// bus connection, you should make sure that your application exits
        /// when the user session ends.
        nonmutating set {
            g_dbus_connection_set_exit_on_close(dbus_connection_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Flags from the `GDBusConnectionFlags` enumeration.
    @inlinable var flags: DBusConnectionFlags {
        /// Gets the flags used to construct this connection
        get {
            let rv = DBusConnectionFlags(g_dbus_connection_get_flags(dbus_connection_ptr))
            return rv
        }
    }

    /// The GUID of the peer performing the role of server when
    /// authenticating.
    /// 
    /// If you are constructing a `GDBusConnection` and pass
    /// `G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_SERVER` in the
    /// `GDBusConnection:flags` property then you MUST also set this
    /// property to a valid guid.
    /// 
    /// If you are constructing a `GDBusConnection` and pass
    /// `G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_CLIENT` in the
    /// `GDBusConnection:flags` property you will be able to read the GUID
    /// of the other peer here after the connection has been successfully
    /// initialized.
    @inlinable var guid: String! {
        /// The GUID of the peer performing the role of server when
        /// authenticating. See `GDBusConnection:guid` for more details.
        get {
            let rv = g_dbus_connection_get_guid(dbus_connection_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets whether `connection` is closed.
    @inlinable var isClosed: Bool {
        /// Gets whether `connection` is closed.
        get {
            let rv = ((g_dbus_connection_is_closed(dbus_connection_ptr)) != 0)
            return rv
        }
    }

    /// Retrieves the last serial number assigned to a `GDBusMessage` on
    /// the current thread. This includes messages sent via both low-level
    /// API such as `g_dbus_connection_send_message()` as well as
    /// high-level API such as `g_dbus_connection_emit_signal()`,
    /// `g_dbus_connection_call()` or `g_dbus_proxy_call()`.
    @inlinable var lastSerial: guint32 {
        /// Retrieves the last serial number assigned to a `GDBusMessage` on
        /// the current thread. This includes messages sent via both low-level
        /// API such as `g_dbus_connection_send_message()` as well as
        /// high-level API such as `g_dbus_connection_emit_signal()`,
        /// `g_dbus_connection_call()` or `g_dbus_proxy_call()`.
        get {
            let rv = g_dbus_connection_get_last_serial(dbus_connection_ptr)
            return rv
        }
    }

    /// Gets the credentials of the authenticated peer. This will always
    /// return `nil` unless `connection` acted as a server
    /// (e.g. `G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_SERVER` was passed)
    /// when set up and the client passed credentials as part of the
    /// authentication process.
    /// 
    /// In a message bus setup, the message bus is always the server and
    /// each application is a client. So this method will always return
    /// `nil` for message bus clients.
    @inlinable var peerCredentials: CredentialsRef! {
        /// Gets the credentials of the authenticated peer. This will always
        /// return `nil` unless `connection` acted as a server
        /// (e.g. `G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_SERVER` was passed)
        /// when set up and the client passed credentials as part of the
        /// authentication process.
        /// 
        /// In a message bus setup, the message bus is always the server and
        /// each application is a client. So this method will always return
        /// `nil` for message bus clients.
        get {
            let rv = CredentialsRef(gconstpointer: gconstpointer(g_dbus_connection_get_peer_credentials(dbus_connection_ptr)))
            return rv
        }
    }

    /// The underlying `GIOStream` used for I/O.
    /// 
    /// If this is passed on construction and is a `GSocketConnection`,
    /// then the corresponding `GSocket` will be put into non-blocking mode.
    /// 
    /// While the `GDBusConnection` is active, it will interact with this
    /// stream from a worker thread, so it is not safe to interact with
    /// the stream directly.
    @inlinable var stream: IOStreamRef! {
        /// Gets the underlying stream used for IO.
        /// 
        /// While the `GDBusConnection` is active, it will interact with this
        /// stream from a worker thread, so it is not safe to interact with
        /// the stream directly.
        get {
            let rv = IOStreamRef(gconstpointer: gconstpointer(g_dbus_connection_get_stream(dbus_connection_ptr)))
            return rv
        }
    }

    /// Gets the unique name of `connection` as assigned by the message
    /// bus. This can also be used to figure out if `connection` is a
    /// message bus connection.
    @inlinable var uniqueName: String! {
        /// Gets the unique name of `connection` as assigned by the message
        /// bus. This can also be used to figure out if `connection` is a
        /// message bus connection.
        get {
            let rv = g_dbus_connection_get_unique_name(dbus_connection_ptr).map({ String(cString: $0) })
            return rv
        }
    }


}



// MARK: - DBusInterfaceSkeleton Class

/// The `DBusInterfaceSkeletonProtocol` protocol exposes the methods and properties of an underlying `GDBusInterfaceSkeleton` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusInterfaceSkeleton`.
/// Alternatively, use `DBusInterfaceSkeletonRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Abstract base class for D-Bus interfaces on the service side.
public protocol DBusInterfaceSkeletonProtocol: ObjectProtocol, DBusInterfaceProtocol {
        /// Untyped pointer to the underlying `GDBusInterfaceSkeleton` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusInterfaceSkeleton` instance.
    var dbus_interface_skeleton_ptr: UnsafeMutablePointer<GDBusInterfaceSkeleton>! { get }

}

/// The `DBusInterfaceSkeletonRef` type acts as a lightweight Swift reference to an underlying `GDBusInterfaceSkeleton` instance.
/// It exposes methods that can operate on this data type through `DBusInterfaceSkeletonProtocol` conformance.
/// Use `DBusInterfaceSkeletonRef` only as an `unowned` reference to an existing `GDBusInterfaceSkeleton` instance.
///
/// Abstract base class for D-Bus interfaces on the service side.
public struct DBusInterfaceSkeletonRef: DBusInterfaceSkeletonProtocol {
        /// Untyped pointer to the underlying `GDBusInterfaceSkeleton` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_interface_skeleton_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusInterfaceSkeletonRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusInterfaceSkeleton>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusInterfaceSkeleton>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusInterfaceSkeleton>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusInterfaceSkeleton>?) {
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

    /// Reference intialiser for a related type that implements `DBusInterfaceSkeletonProtocol`
    @inlinable init<T: DBusInterfaceSkeletonProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DBusInterfaceSkeleton` type acts as a reference-counted owner of an underlying `GDBusInterfaceSkeleton` instance.
/// It provides the methods that can operate on this data type through `DBusInterfaceSkeletonProtocol` conformance.
/// Use `DBusInterfaceSkeleton` as a strong reference or owner of a `GDBusInterfaceSkeleton` instance.
///
/// Abstract base class for D-Bus interfaces on the service side.
open class DBusInterfaceSkeleton: Object, DBusInterfaceSkeletonProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusInterfaceSkeleton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDBusInterfaceSkeleton>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusInterfaceSkeleton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDBusInterfaceSkeleton>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusInterfaceSkeleton` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusInterfaceSkeleton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusInterfaceSkeleton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDBusInterfaceSkeleton>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusInterfaceSkeleton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDBusInterfaceSkeleton>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GDBusInterfaceSkeleton`.
    /// i.e., ownership is transferred to the `DBusInterfaceSkeleton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDBusInterfaceSkeleton>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DBusInterfaceSkeletonProtocol`
    /// Will retain `GDBusInterfaceSkeleton`.
    /// - Parameter other: an instance of a related type that implements `DBusInterfaceSkeletonProtocol`
    @inlinable public init<T: DBusInterfaceSkeletonProtocol>(dBusInterfaceSkeleton other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum DBusInterfaceSkeletonPropertyName: String, PropertyNameProtocol {
    /// Flags from the `GDBusInterfaceSkeletonFlags` enumeration.
    case gFlags = "g-flags"
}

public extension DBusInterfaceSkeletonProtocol {
    /// Bind a `DBusInterfaceSkeletonPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DBusInterfaceSkeletonPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a DBusInterfaceSkeleton property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DBusInterfaceSkeletonPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a DBusInterfaceSkeleton property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DBusInterfaceSkeletonPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DBusInterfaceSkeletonSignalName: String, SignalNameProtocol {
    /// Emitted when a method is invoked by a remote caller and used to
    /// determine if the method call is authorized.
    /// 
    /// Note that this signal is emitted in a thread dedicated to
    /// handling the method call so handlers are allowed to perform
    /// blocking IO. This means that it is appropriate to call e.g.
    /// [`polkit_authority_check_authorization_sync()`](http://hal.freedesktop.org/docs/polkit/PolkitAuthority.html`polkit`-authority-check-authorization-sync)
    /// with the
    /// [POLKIT_CHECK_AUTHORIZATION_FLAGS_ALLOW_USER_INTERACTION](http://hal.freedesktop.org/docs/polkit/PolkitAuthority.html`POLKIT`-CHECK-AUTHORIZATION-FLAGS-ALLOW-USER-INTERACTION:CAPS)
    /// flag set.
    /// 
    /// If `false` is returned then no further handlers are run and the
    /// signal handler must take a reference to `invocation` and finish
    /// handling the call (e.g. return an error via
    /// `g_dbus_method_invocation_return_error()`).
    /// 
    /// Otherwise, if `true` is returned, signal emission continues. If no
    /// handlers return `false`, then the method is dispatched. If
    /// `interface` has an enclosing `GDBusObjectSkeleton`, then the
    /// `GDBusObjectSkeleton::authorize`-method signal handlers run before
    /// the handlers for this signal.
    /// 
    /// The default class handler just returns `true`.
    /// 
    /// Please note that the common case is optimized: if no signals
    /// handlers are connected and the default class handler isn't
    /// overridden (for both `interface` and the enclosing
    /// `GDBusObjectSkeleton`, if any) and `GDBusInterfaceSkeleton:g`-flags does
    /// not have the
    /// `G_DBUS_INTERFACE_SKELETON_FLAGS_HANDLE_METHOD_INVOCATIONS_IN_THREAD`
    /// flags set, no dedicated thread is ever used and the call will be
    /// handled in the same thread as the object that `interface` belongs
    /// to was exported in.
    case gAuthorizeMethod = "g-authorize-method"
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
    /// Flags from the `GDBusInterfaceSkeletonFlags` enumeration.
    case notifyGFlags = "notify::g-flags"
}

public extension DBusInterfaceSkeletonProtocol {
    /// Connect a `DBusInterfaceSkeletonSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: DBusInterfaceSkeletonSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: DBusInterfaceSkeleton Class: DBusInterfaceSkeletonProtocol extension (methods and fields)
public extension DBusInterfaceSkeletonProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusInterfaceSkeleton` instance.
    @inlinable var dbus_interface_skeleton_ptr: UnsafeMutablePointer<GDBusInterfaceSkeleton>! { return ptr?.assumingMemoryBound(to: GDBusInterfaceSkeleton.self) }

    /// Exports `interface_` at `object_path` on `connection`.
    /// 
    /// This can be called multiple times to export the same `interface_`
    /// onto multiple connections however the `object_path` provided must be
    /// the same for all connections.
    /// 
    /// Use `g_dbus_interface_skeleton_unexport()` to unexport the object.
    @inlinable func export<DBusConnectionT: DBusConnectionProtocol>(connection: DBusConnectionT, objectPath object_path: UnsafePointer<gchar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_dbus_interface_skeleton_export(dbus_interface_skeleton_ptr, connection.dbus_connection_ptr, object_path, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// If `interface_` has outstanding changes, request for these changes to be
    /// emitted immediately.
    /// 
    /// For example, an exported D-Bus interface may queue up property
    /// changes and emit the
    /// `org.freedesktop.DBus.Properties.PropertiesChanged`
    /// signal later (e.g. in an idle handler). This technique is useful
    /// for collapsing multiple property changes into one.
    @inlinable func flush() {
        g_dbus_interface_skeleton_flush(dbus_interface_skeleton_ptr)
    
    }

    /// Gets the first connection that `interface_` is exported on, if any.
    @inlinable func getConnection() -> DBusConnectionRef! {
        let rv = DBusConnectionRef(gconstpointer: gconstpointer(g_dbus_interface_skeleton_get_connection(dbus_interface_skeleton_ptr)))
        return rv
    }

    /// Gets a list of the connections that `interface_` is exported on.
    @inlinable func getConnections() -> ListRef! {
        let rv = ListRef(gconstpointer: gconstpointer(g_dbus_interface_skeleton_get_connections(dbus_interface_skeleton_ptr)))
        return rv
    }

    /// Gets the `GDBusInterfaceSkeletonFlags` that describes what the behavior
    /// of `interface_`
    @inlinable func getFlags() -> DBusInterfaceSkeletonFlags {
        let rv = DBusInterfaceSkeletonFlags(g_dbus_interface_skeleton_get_flags(dbus_interface_skeleton_ptr))
        return rv
    }

    /// Gets D-Bus introspection information for the D-Bus interface
    /// implemented by `interface_`.
    @inlinable func getInfo() -> DBusInterfaceInfoRef! {
        let rv = DBusInterfaceInfoRef(gconstpointer: gconstpointer(g_dbus_interface_skeleton_get_info(dbus_interface_skeleton_ptr)))
        return rv
    }

    /// Gets the object path that `interface_` is exported on, if any.
    @inlinable func getObjectPath() -> String! {
        let rv = g_dbus_interface_skeleton_get_object_path(dbus_interface_skeleton_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets all D-Bus properties for `interface_`.
    @inlinable func getProperties() -> VariantRef! {
        let rv = VariantRef(gconstpointer: gconstpointer(g_dbus_interface_skeleton_get_properties(dbus_interface_skeleton_ptr)))
        return rv
    }

    /// Gets the interface vtable for the D-Bus interface implemented by
    /// `interface_`. The returned function pointers should expect `interface_`
    /// itself to be passed as `user_data`.
    @inlinable func getVtable() -> DBusInterfaceVTableRef! {
        let rv = DBusInterfaceVTableRef(gconstpointer: gconstpointer(g_dbus_interface_skeleton_get_vtable(dbus_interface_skeleton_ptr)))
        return rv
    }

    /// Checks if `interface_` is exported on `connection`.
    @inlinable func has<DBusConnectionT: DBusConnectionProtocol>(connection: DBusConnectionT) -> Bool {
        let rv = ((g_dbus_interface_skeleton_has_connection(dbus_interface_skeleton_ptr, connection.dbus_connection_ptr)) != 0)
        return rv
    }

    /// Sets flags describing what the behavior of `skeleton` should be.
    @inlinable func set(flags: DBusInterfaceSkeletonFlags) {
        g_dbus_interface_skeleton_set_flags(dbus_interface_skeleton_ptr, flags.value)
    
    }

    /// Stops exporting `interface_` on all connections it is exported on.
    /// 
    /// To unexport `interface_` from only a single connection, use
    /// `g_dbus_interface_skeleton_unexport_from_connection()`
    @inlinable func unexport() {
        g_dbus_interface_skeleton_unexport(dbus_interface_skeleton_ptr)
    
    }

    /// Stops exporting `interface_` on `connection`.
    /// 
    /// To stop exporting on all connections the interface is exported on,
    /// use `g_dbus_interface_skeleton_unexport()`.
    @inlinable func unexportFrom<DBusConnectionT: DBusConnectionProtocol>(connection: DBusConnectionT) {
        g_dbus_interface_skeleton_unexport_from_connection(dbus_interface_skeleton_ptr, connection.dbus_connection_ptr)
    
    }
    /// Gets the first connection that `interface_` is exported on, if any.
    @inlinable var connection: DBusConnectionRef! {
        /// Gets the first connection that `interface_` is exported on, if any.
        get {
            let rv = DBusConnectionRef(gconstpointer: gconstpointer(g_dbus_interface_skeleton_get_connection(dbus_interface_skeleton_ptr)))
            return rv
        }
    }

    /// Gets a list of the connections that `interface_` is exported on.
    @inlinable var connections: ListRef! {
        /// Gets a list of the connections that `interface_` is exported on.
        get {
            let rv = ListRef(gconstpointer: gconstpointer(g_dbus_interface_skeleton_get_connections(dbus_interface_skeleton_ptr)))
            return rv
        }
    }

    /// Gets the `GDBusInterfaceSkeletonFlags` that describes what the behavior
    /// of `interface_`
    @inlinable var flags: DBusInterfaceSkeletonFlags {
        /// Gets the `GDBusInterfaceSkeletonFlags` that describes what the behavior
        /// of `interface_`
        get {
            let rv = DBusInterfaceSkeletonFlags(g_dbus_interface_skeleton_get_flags(dbus_interface_skeleton_ptr))
            return rv
        }
        /// Sets flags describing what the behavior of `skeleton` should be.
        nonmutating set {
            g_dbus_interface_skeleton_set_flags(dbus_interface_skeleton_ptr, newValue.value)
        }
    }

    /// Gets D-Bus introspection information for the D-Bus interface
    /// implemented by `interface_`.
    @inlinable var info: DBusInterfaceInfoRef! {
        /// Gets D-Bus introspection information for the D-Bus interface
        /// implemented by `interface_`.
        get {
            let rv = DBusInterfaceInfoRef(gconstpointer: gconstpointer(g_dbus_interface_skeleton_get_info(dbus_interface_skeleton_ptr)))
            return rv
        }
    }

    /// Gets the object path that `interface_` is exported on, if any.
    @inlinable var objectPath: String! {
        /// Gets the object path that `interface_` is exported on, if any.
        get {
            let rv = g_dbus_interface_skeleton_get_object_path(dbus_interface_skeleton_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets all D-Bus properties for `interface_`.
    @inlinable var properties: VariantRef! {
        /// Gets all D-Bus properties for `interface_`.
        get {
            let rv = VariantRef(gconstpointer: gconstpointer(g_dbus_interface_skeleton_get_properties(dbus_interface_skeleton_ptr)))
            return rv
        }
    }

    /// Gets the interface vtable for the D-Bus interface implemented by
    /// `interface_`. The returned function pointers should expect `interface_`
    /// itself to be passed as `user_data`.
    @inlinable var vtable: DBusInterfaceVTableRef! {
        /// Gets the interface vtable for the D-Bus interface implemented by
        /// `interface_`. The returned function pointers should expect `interface_`
        /// itself to be passed as `user_data`.
        get {
            let rv = DBusInterfaceVTableRef(gconstpointer: gconstpointer(g_dbus_interface_skeleton_get_vtable(dbus_interface_skeleton_ptr)))
            return rv
        }
    }

    // var parentInstance is unavailable because parent_instance is private

    // var priv is unavailable because priv is private

}



// MARK: - DBusMenuModel Class

/// The `DBusMenuModelProtocol` protocol exposes the methods and properties of an underlying `GDBusMenuModel` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusMenuModel`.
/// Alternatively, use `DBusMenuModelRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GDBusMenuModel` is an implementation of `GMenuModel` that can be used
/// as a proxy for a menu model that is exported over D-Bus with
/// `g_dbus_connection_export_menu_model()`.
public protocol DBusMenuModelProtocol: MenuModelProtocol {
        /// Untyped pointer to the underlying `GDBusMenuModel` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusMenuModel` instance.
    var dbus_menu_model_ptr: UnsafeMutablePointer<GDBusMenuModel>! { get }

}

/// The `DBusMenuModelRef` type acts as a lightweight Swift reference to an underlying `GDBusMenuModel` instance.
/// It exposes methods that can operate on this data type through `DBusMenuModelProtocol` conformance.
/// Use `DBusMenuModelRef` only as an `unowned` reference to an existing `GDBusMenuModel` instance.
///
/// `GDBusMenuModel` is an implementation of `GMenuModel` that can be used
/// as a proxy for a menu model that is exported over D-Bus with
/// `g_dbus_connection_export_menu_model()`.
public struct DBusMenuModelRef: DBusMenuModelProtocol {
        /// Untyped pointer to the underlying `GDBusMenuModel` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_menu_model_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusMenuModelRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusMenuModel>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusMenuModel>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusMenuModel>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusMenuModel>?) {
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

    /// Reference intialiser for a related type that implements `DBusMenuModelProtocol`
    @inlinable init<T: DBusMenuModelProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMenuModelProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMenuModelProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMenuModelProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMenuModelProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMenuModelProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Obtains a `GDBusMenuModel` for the menu model which is exported
    /// at the given `bus_name` and `object_path`.
    /// 
    /// The thread default main context is taken at the time of this call.
    /// All signals on the menu model (and any linked models) are reported
    /// with respect to this context.  All calls on the returned menu model
    /// (and linked models) must also originate from this same context, with
    /// the thread default main context unchanged.
    @inlinable static func dbusMenuModelGet<DBusConnectionT: DBusConnectionProtocol>(connection: DBusConnectionT, busName bus_name: UnsafePointer<gchar>? = nil, objectPath object_path: UnsafePointer<gchar>!) -> DBusMenuModelRef! {
        guard let rv = DBusMenuModelRef(gconstpointer: gconstpointer(g_dbus_menu_model_get(connection.dbus_connection_ptr, bus_name, object_path))) else { return nil }
        return rv
    }
}

/// The `DBusMenuModel` type acts as a reference-counted owner of an underlying `GDBusMenuModel` instance.
/// It provides the methods that can operate on this data type through `DBusMenuModelProtocol` conformance.
/// Use `DBusMenuModel` as a strong reference or owner of a `GDBusMenuModel` instance.
///
/// `GDBusMenuModel` is an implementation of `GMenuModel` that can be used
/// as a proxy for a menu model that is exported over D-Bus with
/// `g_dbus_connection_export_menu_model()`.
open class DBusMenuModel: MenuModel, DBusMenuModelProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusMenuModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDBusMenuModel>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusMenuModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDBusMenuModel>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusMenuModel` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusMenuModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusMenuModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDBusMenuModel>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusMenuModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDBusMenuModel>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GDBusMenuModel`.
    /// i.e., ownership is transferred to the `DBusMenuModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDBusMenuModel>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DBusMenuModelProtocol`
    /// Will retain `GDBusMenuModel`.
    /// - Parameter other: an instance of a related type that implements `DBusMenuModelProtocol`
    @inlinable public init<T: DBusMenuModelProtocol>(dBusMenuModel other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMenuModelProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMenuModelProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMenuModelProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMenuModelProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMenuModelProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMenuModelProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMenuModelProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMenuModelProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    /// Obtains a `GDBusMenuModel` for the menu model which is exported
    /// at the given `bus_name` and `object_path`.
    /// 
    /// The thread default main context is taken at the time of this call.
    /// All signals on the menu model (and any linked models) are reported
    /// with respect to this context.  All calls on the returned menu model
    /// (and linked models) must also originate from this same context, with
    /// the thread default main context unchanged.
    @inlinable public static func dbusMenuModelGet<DBusConnectionT: DBusConnectionProtocol>(connection: DBusConnectionT, busName bus_name: UnsafePointer<gchar>? = nil, objectPath object_path: UnsafePointer<gchar>!) -> DBusMenuModel! {
        guard let rv = DBusMenuModel(gconstpointer: gconstpointer(g_dbus_menu_model_get(connection.dbus_connection_ptr, bus_name, object_path))) else { return nil }
        return rv
    }

}

// MARK: no DBusMenuModel properties

public enum DBusMenuModelSignalName: String, SignalNameProtocol {
    /// Emitted when a change has occured to the menu.
    /// 
    /// The only changes that can occur to a menu is that items are removed
    /// or added.  Items may not change (except by being removed and added
    /// back in the same location).  This signal is capable of describing
    /// both of those changes (at the same time).
    /// 
    /// The signal means that starting at the index `position`, `removed`
    /// items were removed and `added` items were added in their place.  If
    /// `removed` is zero then only items were added.  If `added` is zero
    /// then only items were removed.
    /// 
    /// As an example, if the menu contains items a, b, c, d (in that
    /// order) and the signal (2, 1, 3) occurs then the new composition of
    /// the menu will be a, b, _, _, _, d (with each _ representing some
    /// new item).
    /// 
    /// Signal handlers may query the model (particularly the added items)
    /// and expect to see the results of the modification that is being
    /// reported.  The signal is emitted after the modification.
    case itemsChanged = "items-changed"
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

public extension DBusMenuModelProtocol {
    /// Connect a `DBusMenuModelSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: DBusMenuModelSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: DBusMenuModel Class: DBusMenuModelProtocol extension (methods and fields)
public extension DBusMenuModelProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusMenuModel` instance.
    @inlinable var dbus_menu_model_ptr: UnsafeMutablePointer<GDBusMenuModel>! { return ptr?.assumingMemoryBound(to: GDBusMenuModel.self) }



}



// MARK: - DBusMessage Class

/// The `DBusMessageProtocol` protocol exposes the methods and properties of an underlying `GDBusMessage` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusMessage`.
/// Alternatively, use `DBusMessageRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A type for representing D-Bus messages that can be sent or received
/// on a `GDBusConnection`.
public protocol DBusMessageProtocol: ObjectProtocol {
        /// Untyped pointer to the underlying `GDBusMessage` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusMessage` instance.
    var dbus_message_ptr: UnsafeMutablePointer<GDBusMessage>! { get }

}

/// The `DBusMessageRef` type acts as a lightweight Swift reference to an underlying `GDBusMessage` instance.
/// It exposes methods that can operate on this data type through `DBusMessageProtocol` conformance.
/// Use `DBusMessageRef` only as an `unowned` reference to an existing `GDBusMessage` instance.
///
/// A type for representing D-Bus messages that can be sent or received
/// on a `GDBusConnection`.
public struct DBusMessageRef: DBusMessageProtocol {
        /// Untyped pointer to the underlying `GDBusMessage` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_message_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusMessageRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusMessage>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusMessage>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusMessage>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusMessage>?) {
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

    /// Reference intialiser for a related type that implements `DBusMessageProtocol`
    @inlinable init<T: DBusMessageProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMessageProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMessageProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMessageProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMessageProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMessageProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new empty `GDBusMessage`.
    @inlinable init() {
        let rv = g_dbus_message_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GDBusMessage` from the data stored at `blob`. The byte
    /// order that the message was in can be retrieved using
    /// `g_dbus_message_get_byte_order()`.
    /// 
    /// If the `blob` cannot be parsed, contains invalid fields, or contains invalid
    /// headers, `G_IO_ERROR_INVALID_ARGUMENT` will be returned.
    @inlinable init(blob: UnsafeMutablePointer<guchar>!, blobLen blob_len: Int, capabilities: DBusCapabilityFlags) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_dbus_message_new_from_blob(blob, gsize(blob_len), capabilities.value, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GDBusMessage` for a method call.
    @inlinable init(method_call name: UnsafePointer<gchar>? = nil, path: UnsafePointer<gchar>!, interface_: UnsafePointer<gchar>? = nil, method: UnsafePointer<gchar>!) {
        let rv = g_dbus_message_new_method_call(name, path, interface_, method)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GDBusMessage` for a signal emission.
    @inlinable init(signal path: UnsafePointer<gchar>!, interface_: UnsafePointer<gchar>!, signal: UnsafePointer<gchar>!) {
        let rv = g_dbus_message_new_signal(path, interface_, signal)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GDBusMessage` from the data stored at `blob`. The byte
    /// order that the message was in can be retrieved using
    /// `g_dbus_message_get_byte_order()`.
    /// 
    /// If the `blob` cannot be parsed, contains invalid fields, or contains invalid
    /// headers, `G_IO_ERROR_INVALID_ARGUMENT` will be returned.
    @inlinable static func newFrom(blob: UnsafeMutablePointer<guchar>!, blobLen blob_len: Int, capabilities: DBusCapabilityFlags) throws -> DBusMessageRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = DBusMessageRef(gconstpointer: gconstpointer(g_dbus_message_new_from_blob(blob, gsize(blob_len), capabilities.value, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Creates a new `GDBusMessage` for a method call.
    @inlinable static func newMethodCall(method_call name: UnsafePointer<gchar>? = nil, path: UnsafePointer<gchar>!, interface_: UnsafePointer<gchar>? = nil, method: UnsafePointer<gchar>!) -> DBusMessageRef! {
        guard let rv = DBusMessageRef(gconstpointer: gconstpointer(g_dbus_message_new_method_call(name, path, interface_, method))) else { return nil }
        return rv
    }

    /// Creates a new `GDBusMessage` for a signal emission.
    @inlinable static func new(signal path: UnsafePointer<gchar>!, interface_: UnsafePointer<gchar>!, signal: UnsafePointer<gchar>!) -> DBusMessageRef! {
        guard let rv = DBusMessageRef(gconstpointer: gconstpointer(g_dbus_message_new_signal(path, interface_, signal))) else { return nil }
        return rv
    }
}

/// The `DBusMessage` type acts as a reference-counted owner of an underlying `GDBusMessage` instance.
/// It provides the methods that can operate on this data type through `DBusMessageProtocol` conformance.
/// Use `DBusMessage` as a strong reference or owner of a `GDBusMessage` instance.
///
/// A type for representing D-Bus messages that can be sent or received
/// on a `GDBusConnection`.
open class DBusMessage: Object, DBusMessageProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusMessage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDBusMessage>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusMessage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDBusMessage>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusMessage` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusMessage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusMessage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDBusMessage>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusMessage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDBusMessage>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GDBusMessage`.
    /// i.e., ownership is transferred to the `DBusMessage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDBusMessage>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DBusMessageProtocol`
    /// Will retain `GDBusMessage`.
    /// - Parameter other: an instance of a related type that implements `DBusMessageProtocol`
    @inlinable public init<T: DBusMessageProtocol>(dBusMessage other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMessageProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMessageProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMessageProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMessageProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMessageProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMessageProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMessageProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMessageProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new empty `GDBusMessage`.
    @inlinable public init() {
        let rv = g_dbus_message_new()
        super.init(gpointer: (rv))
    }

    /// Creates a new `GDBusMessage` from the data stored at `blob`. The byte
    /// order that the message was in can be retrieved using
    /// `g_dbus_message_get_byte_order()`.
    /// 
    /// If the `blob` cannot be parsed, contains invalid fields, or contains invalid
    /// headers, `G_IO_ERROR_INVALID_ARGUMENT` will be returned.
    @inlinable public init(blob: UnsafeMutablePointer<guchar>!, blobLen blob_len: Int, capabilities: DBusCapabilityFlags) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_dbus_message_new_from_blob(blob, gsize(blob_len), capabilities.value, &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
    }

    /// Creates a new `GDBusMessage` for a method call.
    @inlinable public init(method_call name: UnsafePointer<gchar>? = nil, path: UnsafePointer<gchar>!, interface_: UnsafePointer<gchar>? = nil, method: UnsafePointer<gchar>!) {
        let rv = g_dbus_message_new_method_call(name, path, interface_, method)
        super.init(gpointer: (rv))
    }

    /// Creates a new `GDBusMessage` for a signal emission.
    @inlinable public init(signal path: UnsafePointer<gchar>!, interface_: UnsafePointer<gchar>!, signal: UnsafePointer<gchar>!) {
        let rv = g_dbus_message_new_signal(path, interface_, signal)
        super.init(gpointer: (rv))
    }

    /// Creates a new `GDBusMessage` from the data stored at `blob`. The byte
    /// order that the message was in can be retrieved using
    /// `g_dbus_message_get_byte_order()`.
    /// 
    /// If the `blob` cannot be parsed, contains invalid fields, or contains invalid
    /// headers, `G_IO_ERROR_INVALID_ARGUMENT` will be returned.
    @inlinable public static func newFrom(blob: UnsafeMutablePointer<guchar>!, blobLen blob_len: Int, capabilities: DBusCapabilityFlags) throws -> DBusMessage! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = DBusMessage(gconstpointer: gconstpointer(g_dbus_message_new_from_blob(blob, gsize(blob_len), capabilities.value, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Creates a new `GDBusMessage` for a method call.
    @inlinable public static func newMethodCall(method_call name: UnsafePointer<gchar>? = nil, path: UnsafePointer<gchar>!, interface_: UnsafePointer<gchar>? = nil, method: UnsafePointer<gchar>!) -> DBusMessage! {
        guard let rv = DBusMessage(gconstpointer: gconstpointer(g_dbus_message_new_method_call(name, path, interface_, method))) else { return nil }
        return rv
    }

    /// Creates a new `GDBusMessage` for a signal emission.
    @inlinable public static func new(signal path: UnsafePointer<gchar>!, interface_: UnsafePointer<gchar>!, signal: UnsafePointer<gchar>!) -> DBusMessage! {
        guard let rv = DBusMessage(gconstpointer: gconstpointer(g_dbus_message_new_signal(path, interface_, signal))) else { return nil }
        return rv
    }

}

public enum DBusMessagePropertyName: String, PropertyNameProtocol {
    case locked = "locked"
}

public extension DBusMessageProtocol {
    /// Bind a `DBusMessagePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DBusMessagePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a DBusMessage property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DBusMessagePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a DBusMessage property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DBusMessagePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DBusMessageSignalName: String, SignalNameProtocol {
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
    case notifyLocked = "notify::locked"
}

public extension DBusMessageProtocol {
    /// Connect a `DBusMessageSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: DBusMessageSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: DBusMessage Class: DBusMessageProtocol extension (methods and fields)
public extension DBusMessageProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusMessage` instance.
    @inlinable var dbus_message_ptr: UnsafeMutablePointer<GDBusMessage>! { return ptr?.assumingMemoryBound(to: GDBusMessage.self) }

    /// Copies `message`. The copy is a deep copy and the returned
    /// `GDBusMessage` is completely identical except that it is guaranteed
    /// to not be locked.
    /// 
    /// This operation can fail if e.g. `message` contains file descriptors
    /// and the per-process or system-wide open files limit is reached.
    @inlinable func copy() throws -> DBusMessageRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = DBusMessageRef(gconstpointer: gconstpointer(g_dbus_message_copy(dbus_message_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Convenience to get the first item in the body of `message`.
    @inlinable func getArg0() -> String! {
        let rv = g_dbus_message_get_arg0(dbus_message_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the body of a message.
    @inlinable func getBody() -> VariantRef! {
        let rv = VariantRef(gconstpointer: gconstpointer(g_dbus_message_get_body(dbus_message_ptr)))
        return rv
    }

    /// Gets the byte order of `message`.
    @inlinable func getByteOrder() -> GDBusMessageByteOrder {
        let rv = g_dbus_message_get_byte_order(dbus_message_ptr)
        return rv
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_DESTINATION` header field.
    @inlinable func getDestination() -> String! {
        let rv = g_dbus_message_get_destination(dbus_message_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_ERROR_NAME` header field.
    @inlinable func getErrorName() -> String! {
        let rv = g_dbus_message_get_error_name(dbus_message_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the flags for `message`.
    @inlinable func getFlags() -> DBusMessageFlags {
        let rv = DBusMessageFlags(g_dbus_message_get_flags(dbus_message_ptr))
        return rv
    }

    /// Gets a header field on `message`.
    /// 
    /// The caller is responsible for checking the type of the returned `GVariant`
    /// matches what is expected.
    @inlinable func getHeader(headerField header_field: GDBusMessageHeaderField) -> VariantRef! {
        let rv = VariantRef(gconstpointer: gconstpointer(g_dbus_message_get_header(dbus_message_ptr, header_field)))
        return rv
    }

    /// Gets an array of all header fields on `message` that are set.
    @inlinable func getHeaderFields() -> String! {
        let rv = g_dbus_message_get_header_fields(dbus_message_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_INTERFACE` header field.
    @inlinable func getInterface() -> String! {
        let rv = g_dbus_message_get_interface(dbus_message_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Checks whether `message` is locked. To monitor changes to this
    /// value, conncet to the `GObject::notify` signal to listen for changes
    /// on the `GDBusMessage:locked` property.
    @inlinable func getLocked() -> Bool {
        let rv = ((g_dbus_message_get_locked(dbus_message_ptr)) != 0)
        return rv
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_MEMBER` header field.
    @inlinable func getMember() -> String! {
        let rv = g_dbus_message_get_member(dbus_message_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the type of `message`.
    @inlinable func getMessageType() -> GDBusMessageType {
        let rv = g_dbus_message_get_message_type(dbus_message_ptr)
        return rv
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_NUM_UNIX_FDS` header field.
    @inlinable func getNumUnixFds() -> guint32 {
        let rv = g_dbus_message_get_num_unix_fds(dbus_message_ptr)
        return rv
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_PATH` header field.
    @inlinable func getPath() -> String! {
        let rv = g_dbus_message_get_path(dbus_message_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_REPLY_SERIAL` header field.
    @inlinable func getReplySerial() -> guint32 {
        let rv = g_dbus_message_get_reply_serial(dbus_message_ptr)
        return rv
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_SENDER` header field.
    @inlinable func getSender() -> String! {
        let rv = g_dbus_message_get_sender(dbus_message_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the serial for `message`.
    @inlinable func getSerial() -> guint32 {
        let rv = g_dbus_message_get_serial(dbus_message_ptr)
        return rv
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_SIGNATURE` header field.
    @inlinable func getSignature() -> String! {
        let rv = g_dbus_message_get_signature(dbus_message_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the UNIX file descriptors associated with `message`, if any.
    /// 
    /// This method is only available on UNIX.
    @inlinable func getUnixFdList() -> UnixFDListRef! {
        let rv = UnixFDListRef(gconstpointer: gconstpointer(g_dbus_message_get_unix_fd_list(dbus_message_ptr)))
        return rv
    }

    /// If `message` is locked, does nothing. Otherwise locks the message.
    @inlinable func lock() {
        g_dbus_message_lock(dbus_message_ptr)
    
    }


    // *** newMethodError() is not available because it has a varargs (...) parameter!


    /// Creates a new `GDBusMessage` that is an error reply to `method_call_message`.
    @inlinable func newMethodErrorLiteral(errorName error_name: UnsafePointer<gchar>!, errorMessage error_message: UnsafePointer<gchar>!) -> DBusMessageRef! {
        guard let rv = DBusMessageRef(gconstpointer: gconstpointer(g_dbus_message_new_method_error_literal(dbus_message_ptr, error_name, error_message))) else { return nil }
        return rv
    }

    /// Like `g_dbus_message_new_method_error()` but intended for language bindings.
    @inlinable func newMethodErrorValist(errorName error_name: UnsafePointer<gchar>!, errorMessageFormat error_message_format: UnsafePointer<gchar>!, varArgs var_args: CVaListPointer) -> DBusMessageRef! {
        guard let rv = DBusMessageRef(gconstpointer: gconstpointer(g_dbus_message_new_method_error_valist(dbus_message_ptr, error_name, error_message_format, var_args))) else { return nil }
        return rv
    }

    /// Creates a new `GDBusMessage` that is a reply to `method_call_message`.
    @inlinable func newMethodReply() -> DBusMessageRef! {
        guard let rv = DBusMessageRef(gconstpointer: gconstpointer(g_dbus_message_new_method_reply(dbus_message_ptr))) else { return nil }
        return rv
    }

    /// Produces a human-readable multi-line description of `message`.
    /// 
    /// The contents of the description has no ABI guarantees, the contents
    /// and formatting is subject to change at any time. Typical output
    /// looks something like this:
    /// ```
    /// Flags:   none
    /// Version: 0
    /// Serial:  4
    /// Headers:
    ///   path -> objectpath '/org/gtk/GDBus/TestObject'
    ///   interface -> 'org.gtk.GDBus.TestInterface'
    ///   member -> 'GimmeStdout'
    ///   destination -> ':1.146'
    /// Body: ()
    /// UNIX File Descriptors:
    ///   (none)
    /// ```
    /// or
    /// ```
    /// Flags:   no-reply-expected
    /// Version: 0
    /// Serial:  477
    /// Headers:
    ///   reply-serial -> uint32 4
    ///   destination -> ':1.159'
    ///   sender -> ':1.146'
    ///   num-unix-fds -> uint32 1
    /// Body: ()
    /// UNIX File Descriptors:
    ///   fd 12: dev=0:10,mode=020620,ino=5,uid=500,gid=5,rdev=136:2,size=0,atime=1273085037,mtime=1273085851,ctime=1272982635
    /// ```
    /// 
    @inlinable func print(indent: Int) -> String! {
        let rv = g_dbus_message_print(dbus_message_ptr, guint(indent)).map({ String(cString: $0) })
        return rv
    }

    /// Sets the body `message`. As a side-effect the
    /// `G_DBUS_MESSAGE_HEADER_FIELD_SIGNATURE` header field is set to the
    /// type string of `body` (or cleared if `body` is `nil`).
    /// 
    /// If `body` is floating, `message` assumes ownership of `body`.
    @inlinable func set<VariantT: VariantProtocol>(body: VariantT) {
        g_dbus_message_set_body(dbus_message_ptr, body.variant_ptr)
    
    }

    /// Sets the byte order of `message`.
    @inlinable func set(byteOrder byte_order: GDBusMessageByteOrder) {
        g_dbus_message_set_byte_order(dbus_message_ptr, byte_order)
    
    }

    /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_DESTINATION` header field.
    @inlinable func setDestination(value: UnsafePointer<gchar>!) {
        g_dbus_message_set_destination(dbus_message_ptr, value)
    
    }

    /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_ERROR_NAME` header field.
    @inlinable func setErrorName(value: UnsafePointer<gchar>!) {
        g_dbus_message_set_error_name(dbus_message_ptr, value)
    
    }

    /// Sets the flags to set on `message`.
    @inlinable func set(flags: DBusMessageFlags) {
        g_dbus_message_set_flags(dbus_message_ptr, flags.value)
    
    }

    /// Sets a header field on `message`.
    /// 
    /// If `value` is floating, `message` assumes ownership of `value`.
    @inlinable func setHeader<VariantT: VariantProtocol>(headerField header_field: GDBusMessageHeaderField, value: VariantT? = nil) {
        g_dbus_message_set_header(dbus_message_ptr, header_field, value?.variant_ptr)
    
    }

    /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_INTERFACE` header field.
    @inlinable func setInterface(value: UnsafePointer<gchar>!) {
        g_dbus_message_set_interface(dbus_message_ptr, value)
    
    }

    /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_MEMBER` header field.
    @inlinable func setMember(value: UnsafePointer<gchar>!) {
        g_dbus_message_set_member(dbus_message_ptr, value)
    
    }

    /// Sets `message` to be of `type`.
    @inlinable func setMessage(type: GDBusMessageType) {
        g_dbus_message_set_message_type(dbus_message_ptr, type)
    
    }

    /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_NUM_UNIX_FDS` header field.
    @inlinable func setNumUnixFds(value: guint32) {
        g_dbus_message_set_num_unix_fds(dbus_message_ptr, value)
    
    }

    /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_PATH` header field.
    @inlinable func setPath(value: UnsafePointer<gchar>!) {
        g_dbus_message_set_path(dbus_message_ptr, value)
    
    }

    /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_REPLY_SERIAL` header field.
    @inlinable func setReplySerial(value: guint32) {
        g_dbus_message_set_reply_serial(dbus_message_ptr, value)
    
    }

    /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_SENDER` header field.
    @inlinable func setSender(value: UnsafePointer<gchar>!) {
        g_dbus_message_set_sender(dbus_message_ptr, value)
    
    }

    /// Sets the serial for `message`.
    @inlinable func set(serial: guint32) {
        g_dbus_message_set_serial(dbus_message_ptr, serial)
    
    }

    /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_SIGNATURE` header field.
    @inlinable func setSignature(value: UnsafePointer<gchar>!) {
        g_dbus_message_set_signature(dbus_message_ptr, value)
    
    }

    /// Sets the UNIX file descriptors associated with `message`. As a
    /// side-effect the `G_DBUS_MESSAGE_HEADER_FIELD_NUM_UNIX_FDS` header
    /// field is set to the number of fds in `fd_list` (or cleared if
    /// `fd_list` is `nil`).
    /// 
    /// This method is only available on UNIX.
    @inlinable func setUnix<UnixFDListT: UnixFDListProtocol>(fdList fd_list: UnixFDListT? = nil) {
        g_dbus_message_set_unix_fd_list(dbus_message_ptr, fd_list?.unix_fd_list_ptr)
    
    }

    /// Serializes `message` to a blob. The byte order returned by
    /// `g_dbus_message_get_byte_order()` will be used.
    @inlinable func toBlob(outSize out_size: UnsafeMutablePointer<gsize>!, capabilities: DBusCapabilityFlags) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_dbus_message_to_blob(dbus_message_ptr, out_size, capabilities.value, &error).map({ String(cString: $0) })
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// If `message` is not of type `G_DBUS_MESSAGE_TYPE_ERROR` does
    /// nothing and returns `false`.
    /// 
    /// Otherwise this method encodes the error in `message` as a `GError`
    /// using `g_dbus_error_set_dbus_error()` using the information in the
    /// `G_DBUS_MESSAGE_HEADER_FIELD_ERROR_NAME` header field of `message` as
    /// well as the first string item in `message`'s body.
    @inlinable func toGerror() throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_dbus_message_to_gerror(dbus_message_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Convenience to get the first item in the body of `message`.
    @inlinable var arg0: String! {
        /// Convenience to get the first item in the body of `message`.
        get {
            let rv = g_dbus_message_get_arg0(dbus_message_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the body of a message.
    @inlinable var body: VariantRef! {
        /// Gets the body of a message.
        get {
            let rv = VariantRef(gconstpointer: gconstpointer(g_dbus_message_get_body(dbus_message_ptr)))
            return rv
        }
        /// Sets the body `message`. As a side-effect the
        /// `G_DBUS_MESSAGE_HEADER_FIELD_SIGNATURE` header field is set to the
        /// type string of `body` (or cleared if `body` is `nil`).
        /// 
        /// If `body` is floating, `message` assumes ownership of `body`.
        nonmutating set {
            g_dbus_message_set_body(dbus_message_ptr, UnsafeMutablePointer<GVariant>(newValue?.variant_ptr))
        }
    }

    /// Gets the byte order of `message`.
    @inlinable var byteOrder: GDBusMessageByteOrder {
        /// Gets the byte order of `message`.
        get {
            let rv = g_dbus_message_get_byte_order(dbus_message_ptr)
            return rv
        }
        /// Sets the byte order of `message`.
        nonmutating set {
            g_dbus_message_set_byte_order(dbus_message_ptr, newValue)
        }
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_DESTINATION` header field.
    @inlinable var destination: String! {
        /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_DESTINATION` header field.
        get {
            let rv = g_dbus_message_get_destination(dbus_message_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_DESTINATION` header field.
        nonmutating set {
            g_dbus_message_set_destination(dbus_message_ptr, newValue)
        }
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_ERROR_NAME` header field.
    @inlinable var errorName: String! {
        /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_ERROR_NAME` header field.
        get {
            let rv = g_dbus_message_get_error_name(dbus_message_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_ERROR_NAME` header field.
        nonmutating set {
            g_dbus_message_set_error_name(dbus_message_ptr, newValue)
        }
    }

    /// Gets the flags for `message`.
    @inlinable var flags: DBusMessageFlags {
        /// Gets the flags for `message`.
        get {
            let rv = DBusMessageFlags(g_dbus_message_get_flags(dbus_message_ptr))
            return rv
        }
        /// Sets the flags to set on `message`.
        nonmutating set {
            g_dbus_message_set_flags(dbus_message_ptr, newValue.value)
        }
    }

    /// Gets an array of all header fields on `message` that are set.
    @inlinable var headerFields: String! {
        /// Gets an array of all header fields on `message` that are set.
        get {
            let rv = g_dbus_message_get_header_fields(dbus_message_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_INTERFACE` header field.
    @inlinable var interface: String! {
        /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_INTERFACE` header field.
        get {
            let rv = g_dbus_message_get_interface(dbus_message_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_INTERFACE` header field.
        nonmutating set {
            g_dbus_message_set_interface(dbus_message_ptr, newValue)
        }
    }

    @inlinable var locked: Bool {
        /// Checks whether `message` is locked. To monitor changes to this
        /// value, conncet to the `GObject::notify` signal to listen for changes
        /// on the `GDBusMessage:locked` property.
        get {
            let rv = ((g_dbus_message_get_locked(dbus_message_ptr)) != 0)
            return rv
        }
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_MEMBER` header field.
    @inlinable var member: String! {
        /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_MEMBER` header field.
        get {
            let rv = g_dbus_message_get_member(dbus_message_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_MEMBER` header field.
        nonmutating set {
            g_dbus_message_set_member(dbus_message_ptr, newValue)
        }
    }

    /// Gets the type of `message`.
    @inlinable var messageType: GDBusMessageType {
        /// Gets the type of `message`.
        get {
            let rv = g_dbus_message_get_message_type(dbus_message_ptr)
            return rv
        }
        /// Sets `message` to be of `type`.
        nonmutating set {
            g_dbus_message_set_message_type(dbus_message_ptr, newValue)
        }
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_NUM_UNIX_FDS` header field.
    @inlinable var numUnixFds: guint32 {
        /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_NUM_UNIX_FDS` header field.
        get {
            let rv = g_dbus_message_get_num_unix_fds(dbus_message_ptr)
            return rv
        }
        /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_NUM_UNIX_FDS` header field.
        nonmutating set {
            g_dbus_message_set_num_unix_fds(dbus_message_ptr, newValue)
        }
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_PATH` header field.
    @inlinable var path: String! {
        /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_PATH` header field.
        get {
            let rv = g_dbus_message_get_path(dbus_message_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_PATH` header field.
        nonmutating set {
            g_dbus_message_set_path(dbus_message_ptr, newValue)
        }
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_REPLY_SERIAL` header field.
    @inlinable var replySerial: guint32 {
        /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_REPLY_SERIAL` header field.
        get {
            let rv = g_dbus_message_get_reply_serial(dbus_message_ptr)
            return rv
        }
        /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_REPLY_SERIAL` header field.
        nonmutating set {
            g_dbus_message_set_reply_serial(dbus_message_ptr, newValue)
        }
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_SENDER` header field.
    @inlinable var sender: String! {
        /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_SENDER` header field.
        get {
            let rv = g_dbus_message_get_sender(dbus_message_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_SENDER` header field.
        nonmutating set {
            g_dbus_message_set_sender(dbus_message_ptr, newValue)
        }
    }

    /// Gets the serial for `message`.
    @inlinable var serial: guint32 {
        /// Gets the serial for `message`.
        get {
            let rv = g_dbus_message_get_serial(dbus_message_ptr)
            return rv
        }
        /// Sets the serial for `message`.
        nonmutating set {
            g_dbus_message_set_serial(dbus_message_ptr, newValue)
        }
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_SIGNATURE` header field.
    @inlinable var signature: String! {
        /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_SIGNATURE` header field.
        get {
            let rv = g_dbus_message_get_signature(dbus_message_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_SIGNATURE` header field.
        nonmutating set {
            g_dbus_message_set_signature(dbus_message_ptr, newValue)
        }
    }

    /// Gets the UNIX file descriptors associated with `message`, if any.
    /// 
    /// This method is only available on UNIX.
    @inlinable var unixFdList: UnixFDListRef! {
        /// Gets the UNIX file descriptors associated with `message`, if any.
        /// 
        /// This method is only available on UNIX.
        get {
            let rv = UnixFDListRef(gconstpointer: gconstpointer(g_dbus_message_get_unix_fd_list(dbus_message_ptr)))
            return rv
        }
        /// Sets the UNIX file descriptors associated with `message`. As a
        /// side-effect the `G_DBUS_MESSAGE_HEADER_FIELD_NUM_UNIX_FDS` header
        /// field is set to the number of fds in `fd_list` (or cleared if
        /// `fd_list` is `nil`).
        /// 
        /// This method is only available on UNIX.
        nonmutating set {
            g_dbus_message_set_unix_fd_list(dbus_message_ptr, UnsafeMutablePointer<GUnixFDList>(newValue?.unix_fd_list_ptr))
        }
    }


}



// MARK: - DBusMethodInvocation Class

/// The `DBusMethodInvocationProtocol` protocol exposes the methods and properties of an underlying `GDBusMethodInvocation` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusMethodInvocation`.
/// Alternatively, use `DBusMethodInvocationRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Instances of the `GDBusMethodInvocation` class are used when
/// handling D-Bus method calls. It provides a way to asynchronously
/// return results and errors.
/// 
/// The normal way to obtain a `GDBusMethodInvocation` object is to receive
/// it as an argument to the `handle_method_call()` function in a
/// `GDBusInterfaceVTable` that was passed to `g_dbus_connection_register_object()`.
public protocol DBusMethodInvocationProtocol: ObjectProtocol {
        /// Untyped pointer to the underlying `GDBusMethodInvocation` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusMethodInvocation` instance.
    var dbus_method_invocation_ptr: UnsafeMutablePointer<GDBusMethodInvocation>! { get }

}

/// The `DBusMethodInvocationRef` type acts as a lightweight Swift reference to an underlying `GDBusMethodInvocation` instance.
/// It exposes methods that can operate on this data type through `DBusMethodInvocationProtocol` conformance.
/// Use `DBusMethodInvocationRef` only as an `unowned` reference to an existing `GDBusMethodInvocation` instance.
///
/// Instances of the `GDBusMethodInvocation` class are used when
/// handling D-Bus method calls. It provides a way to asynchronously
/// return results and errors.
/// 
/// The normal way to obtain a `GDBusMethodInvocation` object is to receive
/// it as an argument to the `handle_method_call()` function in a
/// `GDBusInterfaceVTable` that was passed to `g_dbus_connection_register_object()`.
public struct DBusMethodInvocationRef: DBusMethodInvocationProtocol {
        /// Untyped pointer to the underlying `GDBusMethodInvocation` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_method_invocation_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusMethodInvocationRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusMethodInvocation>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusMethodInvocation>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusMethodInvocation>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusMethodInvocation>?) {
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

    /// Reference intialiser for a related type that implements `DBusMethodInvocationProtocol`
    @inlinable init<T: DBusMethodInvocationProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInvocationProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInvocationProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInvocationProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInvocationProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInvocationProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DBusMethodInvocation` type acts as a reference-counted owner of an underlying `GDBusMethodInvocation` instance.
/// It provides the methods that can operate on this data type through `DBusMethodInvocationProtocol` conformance.
/// Use `DBusMethodInvocation` as a strong reference or owner of a `GDBusMethodInvocation` instance.
///
/// Instances of the `GDBusMethodInvocation` class are used when
/// handling D-Bus method calls. It provides a way to asynchronously
/// return results and errors.
/// 
/// The normal way to obtain a `GDBusMethodInvocation` object is to receive
/// it as an argument to the `handle_method_call()` function in a
/// `GDBusInterfaceVTable` that was passed to `g_dbus_connection_register_object()`.
open class DBusMethodInvocation: Object, DBusMethodInvocationProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusMethodInvocation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDBusMethodInvocation>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusMethodInvocation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDBusMethodInvocation>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusMethodInvocation` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusMethodInvocation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusMethodInvocation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDBusMethodInvocation>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusMethodInvocation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDBusMethodInvocation>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GDBusMethodInvocation`.
    /// i.e., ownership is transferred to the `DBusMethodInvocation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDBusMethodInvocation>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DBusMethodInvocationProtocol`
    /// Will retain `GDBusMethodInvocation`.
    /// - Parameter other: an instance of a related type that implements `DBusMethodInvocationProtocol`
    @inlinable public init<T: DBusMethodInvocationProtocol>(dBusMethodInvocation other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInvocationProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInvocationProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInvocationProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInvocationProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInvocationProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInvocationProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInvocationProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInvocationProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no DBusMethodInvocation properties

public enum DBusMethodInvocationSignalName: String, SignalNameProtocol {
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

public extension DBusMethodInvocationProtocol {
    /// Connect a `DBusMethodInvocationSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: DBusMethodInvocationSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: DBusMethodInvocation Class: DBusMethodInvocationProtocol extension (methods and fields)
public extension DBusMethodInvocationProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusMethodInvocation` instance.
    @inlinable var dbus_method_invocation_ptr: UnsafeMutablePointer<GDBusMethodInvocation>! { return ptr?.assumingMemoryBound(to: GDBusMethodInvocation.self) }

    /// Gets the `GDBusConnection` the method was invoked on.
    @inlinable func getConnection() -> DBusConnectionRef! {
        let rv = DBusConnectionRef(gconstpointer: gconstpointer(g_dbus_method_invocation_get_connection(dbus_method_invocation_ptr)))
        return rv
    }

    /// Gets the name of the D-Bus interface the method was invoked on.
    /// 
    /// If this method call is a property Get, Set or GetAll call that has
    /// been redirected to the method call handler then
    /// "org.freedesktop.DBus.Properties" will be returned.  See
    /// `GDBusInterfaceVTable` for more information.
    @inlinable func getInterfaceName() -> String! {
        let rv = g_dbus_method_invocation_get_interface_name(dbus_method_invocation_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the `GDBusMessage` for the method invocation. This is useful if
    /// you need to use low-level protocol features, such as UNIX file
    /// descriptor passing, that cannot be properly expressed in the
    /// `GVariant` API.
    /// 
    /// See this [server](#gdbus-server) and [client](#gdbus-unix-fd-client)
    /// for an example of how to use this low-level API to send and receive
    /// UNIX file descriptors.
    @inlinable func getMessage() -> DBusMessageRef! {
        let rv = DBusMessageRef(gconstpointer: gconstpointer(g_dbus_method_invocation_get_message(dbus_method_invocation_ptr)))
        return rv
    }

    /// Gets information about the method call, if any.
    /// 
    /// If this method invocation is a property Get, Set or GetAll call that
    /// has been redirected to the method call handler then `nil` will be
    /// returned.  See `g_dbus_method_invocation_get_property_info()` and
    /// `GDBusInterfaceVTable` for more information.
    @inlinable func getMethodInfo() -> DBusMethodInfoRef! {
        let rv = DBusMethodInfoRef(gconstpointer: gconstpointer(g_dbus_method_invocation_get_method_info(dbus_method_invocation_ptr)))
        return rv
    }

    /// Gets the name of the method that was invoked.
    @inlinable func getMethodName() -> String! {
        let rv = g_dbus_method_invocation_get_method_name(dbus_method_invocation_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the object path the method was invoked on.
    @inlinable func getObjectPath() -> String! {
        let rv = g_dbus_method_invocation_get_object_path(dbus_method_invocation_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the parameters of the method invocation. If there are no input
    /// parameters then this will return a GVariant with 0 children rather than NULL.
    @inlinable func getParameters() -> VariantRef! {
        let rv = VariantRef(gconstpointer: gconstpointer(g_dbus_method_invocation_get_parameters(dbus_method_invocation_ptr)))
        return rv
    }

    /// Gets information about the property that this method call is for, if
    /// any.
    /// 
    /// This will only be set in the case of an invocation in response to a
    /// property Get or Set call that has been directed to the method call
    /// handler for an object on account of its `property_get()` or
    /// `property_set()` vtable pointers being unset.
    /// 
    /// See `GDBusInterfaceVTable` for more information.
    /// 
    /// If the call was GetAll, `nil` will be returned.
    @inlinable func getPropertyInfo() -> DBusPropertyInfoRef! {
        let rv = DBusPropertyInfoRef(gconstpointer: gconstpointer(g_dbus_method_invocation_get_property_info(dbus_method_invocation_ptr)))
        return rv
    }

    /// Gets the bus name that invoked the method.
    @inlinable func getSender() -> String! {
        let rv = g_dbus_method_invocation_get_sender(dbus_method_invocation_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the `user_data` `gpointer` passed to `g_dbus_connection_register_object()`.
    @inlinable func getUserData() -> gpointer! {
        let rv = g_dbus_method_invocation_get_user_data(dbus_method_invocation_ptr)
        return rv
    }

    /// Finishes handling a D-Bus method call by returning an error.
    /// 
    /// This method will take ownership of `invocation`. See
    /// `GDBusInterfaceVTable` for more information about the ownership of
    /// `invocation`.
    @inlinable func returnDbusError(errorName error_name: UnsafePointer<gchar>!, errorMessage error_message: UnsafePointer<gchar>!) {
        g_dbus_method_invocation_return_dbus_error(dbus_method_invocation_ptr, error_name, error_message)
    
    }


    // *** returnError() is not available because it has a varargs (...) parameter!


    /// Like `g_dbus_method_invocation_return_error()` but without `printf()`-style formatting.
    /// 
    /// This method will take ownership of `invocation`. See
    /// `GDBusInterfaceVTable` for more information about the ownership of
    /// `invocation`.
    @inlinable func returnErrorLiteral(domain: GQuark, code: Int, message: UnsafePointer<gchar>!) {
        g_dbus_method_invocation_return_error_literal(dbus_method_invocation_ptr, domain, gint(code), message)
    
    }

    /// Like `g_dbus_method_invocation_return_error()` but intended for
    /// language bindings.
    /// 
    /// This method will take ownership of `invocation`. See
    /// `GDBusInterfaceVTable` for more information about the ownership of
    /// `invocation`.
    @inlinable func returnErrorValist(domain: GQuark, code: Int, format: UnsafePointer<gchar>!, varArgs var_args: CVaListPointer) {
        g_dbus_method_invocation_return_error_valist(dbus_method_invocation_ptr, domain, gint(code), format, var_args)
    
    }

    /// Like `g_dbus_method_invocation_return_error()` but takes a `GError`
    /// instead of the error domain, error code and message.
    /// 
    /// This method will take ownership of `invocation`. See
    /// `GDBusInterfaceVTable` for more information about the ownership of
    /// `invocation`.
    @inlinable func returnGerror<GLibErrorT: ErrorProtocol>(error: GLibErrorT) {
        g_dbus_method_invocation_return_gerror(dbus_method_invocation_ptr, error.error_ptr)
    
    }

    /// Finishes handling a D-Bus method call by returning `parameters`.
    /// If the `parameters` GVariant is floating, it is consumed.
    /// 
    /// It is an error if `parameters` is not of the right format: it must be a tuple
    /// containing the out-parameters of the D-Bus method. Even if the method has a
    /// single out-parameter, it must be contained in a tuple. If the method has no
    /// out-parameters, `parameters` may be `nil` or an empty tuple.
    /// 
    /// (C Language Example):
    /// ```C
    /// GDBusMethodInvocation *invocation = some_invocation;
    /// g_autofree gchar *result_string = NULL;
    /// g_autoptr (GError) error = NULL;
    /// 
    /// result_string = calculate_result (&error);
    /// 
    /// if (error != NULL)
    ///   g_dbus_method_invocation_return_gerror (invocation, error);
    /// else
    ///   g_dbus_method_invocation_return_value (invocation,
    ///                                          g_variant_new ("(s)", result_string));
    /// 
    /// // Do not free @invocation here; returning a value does that
    /// ```
    /// 
    /// This method will take ownership of `invocation`. See
    /// `GDBusInterfaceVTable` for more information about the ownership of
    /// `invocation`.
    /// 
    /// Since 2.48, if the method call requested for a reply not to be sent
    /// then this call will sink `parameters` and free `invocation`, but
    /// otherwise do nothing (as per the recommendations of the D-Bus
    /// specification).
    @inlinable func returnValue<VariantT: VariantProtocol>(parameters: VariantT? = nil) {
        g_dbus_method_invocation_return_value(dbus_method_invocation_ptr, parameters?.variant_ptr)
    
    }

    /// Like `g_dbus_method_invocation_return_value()` but also takes a `GUnixFDList`.
    /// 
    /// This method is only available on UNIX.
    /// 
    /// This method will take ownership of `invocation`. See
    /// `GDBusInterfaceVTable` for more information about the ownership of
    /// `invocation`.
    @inlinable func returnValueWithUnixFdList<UnixFDListT: UnixFDListProtocol, VariantT: VariantProtocol>(parameters: VariantT? = nil, fdList fd_list: UnixFDListT? = nil) {
        g_dbus_method_invocation_return_value_with_unix_fd_list(dbus_method_invocation_ptr, parameters?.variant_ptr, fd_list?.unix_fd_list_ptr)
    
    }

    /// Like `g_dbus_method_invocation_return_gerror()` but takes ownership
    /// of `error` so the caller does not need to free it.
    /// 
    /// This method will take ownership of `invocation`. See
    /// `GDBusInterfaceVTable` for more information about the ownership of
    /// `invocation`.
    @inlinable func take<GLibErrorT: ErrorProtocol>(error: GLibErrorT) {
        g_dbus_method_invocation_take_error(dbus_method_invocation_ptr, error.error_ptr)
    
    }
    /// Gets the `GDBusConnection` the method was invoked on.
    @inlinable var connection: DBusConnectionRef! {
        /// Gets the `GDBusConnection` the method was invoked on.
        get {
            let rv = DBusConnectionRef(gconstpointer: gconstpointer(g_dbus_method_invocation_get_connection(dbus_method_invocation_ptr)))
            return rv
        }
    }

    /// Gets the name of the D-Bus interface the method was invoked on.
    /// 
    /// If this method call is a property Get, Set or GetAll call that has
    /// been redirected to the method call handler then
    /// "org.freedesktop.DBus.Properties" will be returned.  See
    /// `GDBusInterfaceVTable` for more information.
    @inlinable var interfaceName: String! {
        /// Gets the name of the D-Bus interface the method was invoked on.
        /// 
        /// If this method call is a property Get, Set or GetAll call that has
        /// been redirected to the method call handler then
        /// "org.freedesktop.DBus.Properties" will be returned.  See
        /// `GDBusInterfaceVTable` for more information.
        get {
            let rv = g_dbus_method_invocation_get_interface_name(dbus_method_invocation_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the `GDBusMessage` for the method invocation. This is useful if
    /// you need to use low-level protocol features, such as UNIX file
    /// descriptor passing, that cannot be properly expressed in the
    /// `GVariant` API.
    /// 
    /// See this [server](#gdbus-server) and [client](#gdbus-unix-fd-client)
    /// for an example of how to use this low-level API to send and receive
    /// UNIX file descriptors.
    @inlinable var message: DBusMessageRef! {
        /// Gets the `GDBusMessage` for the method invocation. This is useful if
        /// you need to use low-level protocol features, such as UNIX file
        /// descriptor passing, that cannot be properly expressed in the
        /// `GVariant` API.
        /// 
        /// See this [server](#gdbus-server) and [client](#gdbus-unix-fd-client)
        /// for an example of how to use this low-level API to send and receive
        /// UNIX file descriptors.
        get {
            let rv = DBusMessageRef(gconstpointer: gconstpointer(g_dbus_method_invocation_get_message(dbus_method_invocation_ptr)))
            return rv
        }
    }

    /// Gets information about the method call, if any.
    /// 
    /// If this method invocation is a property Get, Set or GetAll call that
    /// has been redirected to the method call handler then `nil` will be
    /// returned.  See `g_dbus_method_invocation_get_property_info()` and
    /// `GDBusInterfaceVTable` for more information.
    @inlinable var methodInfo: DBusMethodInfoRef! {
        /// Gets information about the method call, if any.
        /// 
        /// If this method invocation is a property Get, Set or GetAll call that
        /// has been redirected to the method call handler then `nil` will be
        /// returned.  See `g_dbus_method_invocation_get_property_info()` and
        /// `GDBusInterfaceVTable` for more information.
        get {
            let rv = DBusMethodInfoRef(gconstpointer: gconstpointer(g_dbus_method_invocation_get_method_info(dbus_method_invocation_ptr)))
            return rv
        }
    }

    /// Gets the name of the method that was invoked.
    @inlinable var methodName: String! {
        /// Gets the name of the method that was invoked.
        get {
            let rv = g_dbus_method_invocation_get_method_name(dbus_method_invocation_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the object path the method was invoked on.
    @inlinable var objectPath: String! {
        /// Gets the object path the method was invoked on.
        get {
            let rv = g_dbus_method_invocation_get_object_path(dbus_method_invocation_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the parameters of the method invocation. If there are no input
    /// parameters then this will return a GVariant with 0 children rather than NULL.
    @inlinable var parameters: VariantRef! {
        /// Gets the parameters of the method invocation. If there are no input
        /// parameters then this will return a GVariant with 0 children rather than NULL.
        get {
            let rv = VariantRef(gconstpointer: gconstpointer(g_dbus_method_invocation_get_parameters(dbus_method_invocation_ptr)))
            return rv
        }
    }

    /// Gets information about the property that this method call is for, if
    /// any.
    /// 
    /// This will only be set in the case of an invocation in response to a
    /// property Get or Set call that has been directed to the method call
    /// handler for an object on account of its `property_get()` or
    /// `property_set()` vtable pointers being unset.
    /// 
    /// See `GDBusInterfaceVTable` for more information.
    /// 
    /// If the call was GetAll, `nil` will be returned.
    @inlinable var propertyInfo: DBusPropertyInfoRef! {
        /// Gets information about the property that this method call is for, if
        /// any.
        /// 
        /// This will only be set in the case of an invocation in response to a
        /// property Get or Set call that has been directed to the method call
        /// handler for an object on account of its `property_get()` or
        /// `property_set()` vtable pointers being unset.
        /// 
        /// See `GDBusInterfaceVTable` for more information.
        /// 
        /// If the call was GetAll, `nil` will be returned.
        get {
            let rv = DBusPropertyInfoRef(gconstpointer: gconstpointer(g_dbus_method_invocation_get_property_info(dbus_method_invocation_ptr)))
            return rv
        }
    }

    /// Gets the bus name that invoked the method.
    @inlinable var sender: String! {
        /// Gets the bus name that invoked the method.
        get {
            let rv = g_dbus_method_invocation_get_sender(dbus_method_invocation_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the `user_data` `gpointer` passed to `g_dbus_connection_register_object()`.
    @inlinable var userData: gpointer! {
        /// Gets the `user_data` `gpointer` passed to `g_dbus_connection_register_object()`.
        get {
            let rv = g_dbus_method_invocation_get_user_data(dbus_method_invocation_ptr)
            return rv
        }
    }


}



// MARK: - DBusObjectManagerClient Class

/// The `DBusObjectManagerClientProtocol` protocol exposes the methods and properties of an underlying `GDBusObjectManagerClient` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusObjectManagerClient`.
/// Alternatively, use `DBusObjectManagerClientRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GDBusObjectManagerClient` is used to create, monitor and delete object
/// proxies for remote objects exported by a `GDBusObjectManagerServer` (or any
/// code implementing the
/// [org.freedesktop.DBus.ObjectManager](http://dbus.freedesktop.org/doc/dbus-specification.html`standard`-interfaces-objectmanager)
/// interface).
/// 
/// Once an instance of this type has been created, you can connect to
/// the `GDBusObjectManager::object`-added and
/// `GDBusObjectManager::object`-removed signals and inspect the
/// `GDBusObjectProxy` objects returned by
/// `g_dbus_object_manager_get_objects()`.
/// 
/// If the name for a `GDBusObjectManagerClient` is not owned by anyone at
/// object construction time, the default behavior is to request the
/// message bus to launch an owner for the name. This behavior can be
/// disabled using the `G_DBUS_OBJECT_MANAGER_CLIENT_FLAGS_DO_NOT_AUTO_START`
/// flag. It's also worth noting that this only works if the name of
/// interest is activatable in the first place. E.g. in some cases it
/// is not possible to launch an owner for the requested name. In this
/// case, `GDBusObjectManagerClient` object construction still succeeds but
/// there will be no object proxies
/// (e.g. `g_dbus_object_manager_get_objects()` returns the empty list) and
/// the `GDBusObjectManagerClient:name`-owner property is `nil`.
/// 
/// The owner of the requested name can come and go (for example
/// consider a system service being restarted) – `GDBusObjectManagerClient`
/// handles this case too; simply connect to the `GObject::notify`
/// signal to watch for changes on the `GDBusObjectManagerClient:name`-owner
/// property. When the name owner vanishes, the behavior is that
/// `GDBusObjectManagerClient:name`-owner is set to `nil` (this includes
/// emission of the `GObject::notify` signal) and then
/// `GDBusObjectManager::object`-removed signals are synthesized
/// for all currently existing object proxies. Since
/// `GDBusObjectManagerClient:name`-owner is `nil` when this happens, you can
/// use this information to disambiguate a synthesized signal from a
/// genuine signal caused by object removal on the remote
/// `GDBusObjectManager`. Similarly, when a new name owner appears,
/// `GDBusObjectManager::object`-added signals are synthesized
/// while `GDBusObjectManagerClient:name`-owner is still `nil`. Only when all
/// object proxies have been added, the `GDBusObjectManagerClient:name`-owner
/// is set to the new name owner (this includes emission of the
/// `GObject::notify` signal).  Furthermore, you are guaranteed that
/// `GDBusObjectManagerClient:name`-owner will alternate between a name owner
/// (e.g. `:1.42`) and `nil` even in the case where
/// the name of interest is atomically replaced
/// 
/// Ultimately, `GDBusObjectManagerClient` is used to obtain `GDBusProxy`
/// instances. All signals (including the
/// org.freedesktop.DBus.Properties`PropertiesChanged` signal)
/// delivered to `GDBusProxy` instances are guaranteed to originate
/// from the name owner. This guarantee along with the behavior
/// described above, means that certain race conditions including the
/// "half the proxy is from the old owner and the other half is from
/// the new owner" problem cannot happen.
/// 
/// To avoid having the application connect to signals on the returned
/// `GDBusObjectProxy` and `GDBusProxy` objects, the
/// `GDBusObject::interface`-added,
/// `GDBusObject::interface`-removed,
/// `GDBusProxy::g`-properties-changed and
/// `GDBusProxy::g`-signal signals
/// are also emitted on the `GDBusObjectManagerClient` instance managing these
/// objects. The signals emitted are
/// `GDBusObjectManager::interface`-added,
/// `GDBusObjectManager::interface`-removed,
/// `GDBusObjectManagerClient::interface`-proxy-properties-changed and
/// `GDBusObjectManagerClient::interface`-proxy-signal.
/// 
/// Note that all callbacks and signals are emitted in the
/// [thread-default main context](#g-main-context-push-thread-default)
/// that the `GDBusObjectManagerClient` object was constructed
/// in. Additionally, the `GDBusObjectProxy` and `GDBusProxy` objects
/// originating from the `GDBusObjectManagerClient` object will be created in
/// the same context and, consequently, will deliver signals in the
/// same main loop.
public protocol DBusObjectManagerClientProtocol: ObjectProtocol, AsyncInitableProtocol, DBusObjectManagerProtocol, InitableProtocol {
        /// Untyped pointer to the underlying `GDBusObjectManagerClient` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusObjectManagerClient` instance.
    var dbus_object_manager_client_ptr: UnsafeMutablePointer<GDBusObjectManagerClient>! { get }

}

/// The `DBusObjectManagerClientRef` type acts as a lightweight Swift reference to an underlying `GDBusObjectManagerClient` instance.
/// It exposes methods that can operate on this data type through `DBusObjectManagerClientProtocol` conformance.
/// Use `DBusObjectManagerClientRef` only as an `unowned` reference to an existing `GDBusObjectManagerClient` instance.
///
/// `GDBusObjectManagerClient` is used to create, monitor and delete object
/// proxies for remote objects exported by a `GDBusObjectManagerServer` (or any
/// code implementing the
/// [org.freedesktop.DBus.ObjectManager](http://dbus.freedesktop.org/doc/dbus-specification.html`standard`-interfaces-objectmanager)
/// interface).
/// 
/// Once an instance of this type has been created, you can connect to
/// the `GDBusObjectManager::object`-added and
/// `GDBusObjectManager::object`-removed signals and inspect the
/// `GDBusObjectProxy` objects returned by
/// `g_dbus_object_manager_get_objects()`.
/// 
/// If the name for a `GDBusObjectManagerClient` is not owned by anyone at
/// object construction time, the default behavior is to request the
/// message bus to launch an owner for the name. This behavior can be
/// disabled using the `G_DBUS_OBJECT_MANAGER_CLIENT_FLAGS_DO_NOT_AUTO_START`
/// flag. It's also worth noting that this only works if the name of
/// interest is activatable in the first place. E.g. in some cases it
/// is not possible to launch an owner for the requested name. In this
/// case, `GDBusObjectManagerClient` object construction still succeeds but
/// there will be no object proxies
/// (e.g. `g_dbus_object_manager_get_objects()` returns the empty list) and
/// the `GDBusObjectManagerClient:name`-owner property is `nil`.
/// 
/// The owner of the requested name can come and go (for example
/// consider a system service being restarted) – `GDBusObjectManagerClient`
/// handles this case too; simply connect to the `GObject::notify`
/// signal to watch for changes on the `GDBusObjectManagerClient:name`-owner
/// property. When the name owner vanishes, the behavior is that
/// `GDBusObjectManagerClient:name`-owner is set to `nil` (this includes
/// emission of the `GObject::notify` signal) and then
/// `GDBusObjectManager::object`-removed signals are synthesized
/// for all currently existing object proxies. Since
/// `GDBusObjectManagerClient:name`-owner is `nil` when this happens, you can
/// use this information to disambiguate a synthesized signal from a
/// genuine signal caused by object removal on the remote
/// `GDBusObjectManager`. Similarly, when a new name owner appears,
/// `GDBusObjectManager::object`-added signals are synthesized
/// while `GDBusObjectManagerClient:name`-owner is still `nil`. Only when all
/// object proxies have been added, the `GDBusObjectManagerClient:name`-owner
/// is set to the new name owner (this includes emission of the
/// `GObject::notify` signal).  Furthermore, you are guaranteed that
/// `GDBusObjectManagerClient:name`-owner will alternate between a name owner
/// (e.g. `:1.42`) and `nil` even in the case where
/// the name of interest is atomically replaced
/// 
/// Ultimately, `GDBusObjectManagerClient` is used to obtain `GDBusProxy`
/// instances. All signals (including the
/// org.freedesktop.DBus.Properties`PropertiesChanged` signal)
/// delivered to `GDBusProxy` instances are guaranteed to originate
/// from the name owner. This guarantee along with the behavior
/// described above, means that certain race conditions including the
/// "half the proxy is from the old owner and the other half is from
/// the new owner" problem cannot happen.
/// 
/// To avoid having the application connect to signals on the returned
/// `GDBusObjectProxy` and `GDBusProxy` objects, the
/// `GDBusObject::interface`-added,
/// `GDBusObject::interface`-removed,
/// `GDBusProxy::g`-properties-changed and
/// `GDBusProxy::g`-signal signals
/// are also emitted on the `GDBusObjectManagerClient` instance managing these
/// objects. The signals emitted are
/// `GDBusObjectManager::interface`-added,
/// `GDBusObjectManager::interface`-removed,
/// `GDBusObjectManagerClient::interface`-proxy-properties-changed and
/// `GDBusObjectManagerClient::interface`-proxy-signal.
/// 
/// Note that all callbacks and signals are emitted in the
/// [thread-default main context](#g-main-context-push-thread-default)
/// that the `GDBusObjectManagerClient` object was constructed
/// in. Additionally, the `GDBusObjectProxy` and `GDBusProxy` objects
/// originating from the `GDBusObjectManagerClient` object will be created in
/// the same context and, consequently, will deliver signals in the
/// same main loop.
public struct DBusObjectManagerClientRef: DBusObjectManagerClientProtocol {
        /// Untyped pointer to the underlying `GDBusObjectManagerClient` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_object_manager_client_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusObjectManagerClientRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusObjectManagerClient>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusObjectManagerClient>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusObjectManagerClient>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusObjectManagerClient>?) {
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

    /// Reference intialiser for a related type that implements `DBusObjectManagerClientProtocol`
    @inlinable init<T: DBusObjectManagerClientProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DBusObjectManagerClient` type acts as a reference-counted owner of an underlying `GDBusObjectManagerClient` instance.
/// It provides the methods that can operate on this data type through `DBusObjectManagerClientProtocol` conformance.
/// Use `DBusObjectManagerClient` as a strong reference or owner of a `GDBusObjectManagerClient` instance.
///
/// `GDBusObjectManagerClient` is used to create, monitor and delete object
/// proxies for remote objects exported by a `GDBusObjectManagerServer` (or any
/// code implementing the
/// [org.freedesktop.DBus.ObjectManager](http://dbus.freedesktop.org/doc/dbus-specification.html`standard`-interfaces-objectmanager)
/// interface).
/// 
/// Once an instance of this type has been created, you can connect to
/// the `GDBusObjectManager::object`-added and
/// `GDBusObjectManager::object`-removed signals and inspect the
/// `GDBusObjectProxy` objects returned by
/// `g_dbus_object_manager_get_objects()`.
/// 
/// If the name for a `GDBusObjectManagerClient` is not owned by anyone at
/// object construction time, the default behavior is to request the
/// message bus to launch an owner for the name. This behavior can be
/// disabled using the `G_DBUS_OBJECT_MANAGER_CLIENT_FLAGS_DO_NOT_AUTO_START`
/// flag. It's also worth noting that this only works if the name of
/// interest is activatable in the first place. E.g. in some cases it
/// is not possible to launch an owner for the requested name. In this
/// case, `GDBusObjectManagerClient` object construction still succeeds but
/// there will be no object proxies
/// (e.g. `g_dbus_object_manager_get_objects()` returns the empty list) and
/// the `GDBusObjectManagerClient:name`-owner property is `nil`.
/// 
/// The owner of the requested name can come and go (for example
/// consider a system service being restarted) – `GDBusObjectManagerClient`
/// handles this case too; simply connect to the `GObject::notify`
/// signal to watch for changes on the `GDBusObjectManagerClient:name`-owner
/// property. When the name owner vanishes, the behavior is that
/// `GDBusObjectManagerClient:name`-owner is set to `nil` (this includes
/// emission of the `GObject::notify` signal) and then
/// `GDBusObjectManager::object`-removed signals are synthesized
/// for all currently existing object proxies. Since
/// `GDBusObjectManagerClient:name`-owner is `nil` when this happens, you can
/// use this information to disambiguate a synthesized signal from a
/// genuine signal caused by object removal on the remote
/// `GDBusObjectManager`. Similarly, when a new name owner appears,
/// `GDBusObjectManager::object`-added signals are synthesized
/// while `GDBusObjectManagerClient:name`-owner is still `nil`. Only when all
/// object proxies have been added, the `GDBusObjectManagerClient:name`-owner
/// is set to the new name owner (this includes emission of the
/// `GObject::notify` signal).  Furthermore, you are guaranteed that
/// `GDBusObjectManagerClient:name`-owner will alternate between a name owner
/// (e.g. `:1.42`) and `nil` even in the case where
/// the name of interest is atomically replaced
/// 
/// Ultimately, `GDBusObjectManagerClient` is used to obtain `GDBusProxy`
/// instances. All signals (including the
/// org.freedesktop.DBus.Properties`PropertiesChanged` signal)
/// delivered to `GDBusProxy` instances are guaranteed to originate
/// from the name owner. This guarantee along with the behavior
/// described above, means that certain race conditions including the
/// "half the proxy is from the old owner and the other half is from
/// the new owner" problem cannot happen.
/// 
/// To avoid having the application connect to signals on the returned
/// `GDBusObjectProxy` and `GDBusProxy` objects, the
/// `GDBusObject::interface`-added,
/// `GDBusObject::interface`-removed,
/// `GDBusProxy::g`-properties-changed and
/// `GDBusProxy::g`-signal signals
/// are also emitted on the `GDBusObjectManagerClient` instance managing these
/// objects. The signals emitted are
/// `GDBusObjectManager::interface`-added,
/// `GDBusObjectManager::interface`-removed,
/// `GDBusObjectManagerClient::interface`-proxy-properties-changed and
/// `GDBusObjectManagerClient::interface`-proxy-signal.
/// 
/// Note that all callbacks and signals are emitted in the
/// [thread-default main context](#g-main-context-push-thread-default)
/// that the `GDBusObjectManagerClient` object was constructed
/// in. Additionally, the `GDBusObjectProxy` and `GDBusProxy` objects
/// originating from the `GDBusObjectManagerClient` object will be created in
/// the same context and, consequently, will deliver signals in the
/// same main loop.
open class DBusObjectManagerClient: Object, DBusObjectManagerClientProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObjectManagerClient` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDBusObjectManagerClient>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObjectManagerClient` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDBusObjectManagerClient>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObjectManagerClient` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObjectManagerClient` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObjectManagerClient` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDBusObjectManagerClient>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObjectManagerClient` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDBusObjectManagerClient>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GDBusObjectManagerClient`.
    /// i.e., ownership is transferred to the `DBusObjectManagerClient` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDBusObjectManagerClient>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DBusObjectManagerClientProtocol`
    /// Will retain `GDBusObjectManagerClient`.
    /// - Parameter other: an instance of a related type that implements `DBusObjectManagerClientProtocol`
    @inlinable public init<T: DBusObjectManagerClientProtocol>(dBusObjectManagerClient other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum DBusObjectManagerClientPropertyName: String, PropertyNameProtocol {
    /// If this property is not `G_BUS_TYPE_NONE`, then
    /// `GDBusObjectManagerClient:connection` must be `nil` and will be set to the
    /// `GDBusConnection` obtained by calling `g_bus_get()` with the value
    /// of this property.
    case busType = "bus-type"
    /// The `GDBusConnection` to use.
    case connection = "connection"
    /// Flags from the `GDBusObjectManagerClientFlags` enumeration.
    case flags = "flags"
    /// A `GDestroyNotify` for the `gpointer` user_data in `GDBusObjectManagerClient:get`-proxy-type-user-data.
    case getProxyTypeDestroyNotify = "get-proxy-type-destroy-notify"
    /// The `GDBusProxyTypeFunc` to use when determining what `GType` to
    /// use for interface proxies or `nil`.
    case getProxyTypeFunc = "get-proxy-type-func"
    /// The `gpointer` user_data to pass to `GDBusObjectManagerClient:get`-proxy-type-func.
    case getProxyTypeUserData = "get-proxy-type-user-data"
    /// The well-known name or unique name that the manager is for.
    case name = "name"
    /// The unique name that owns `GDBusObjectManagerClient:name` or `nil` if
    /// no-one is currently owning the name. Connect to the
    /// `GObject::notify` signal to track changes to this property.
    case nameOwner = "name-owner"
    /// The object path the manager is for.
    case objectPath = "object-path"
}

public extension DBusObjectManagerClientProtocol {
    /// Bind a `DBusObjectManagerClientPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DBusObjectManagerClientPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a DBusObjectManagerClient property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DBusObjectManagerClientPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a DBusObjectManagerClient property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DBusObjectManagerClientPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DBusObjectManagerClientSignalName: String, SignalNameProtocol {
    /// Emitted when one or more D-Bus properties on proxy changes. The
    /// local cache has already been updated when this signal fires. Note
    /// that both `changed_properties` and `invalidated_properties` are
    /// guaranteed to never be `nil` (either may be empty though).
    /// 
    /// This signal exists purely as a convenience to avoid having to
    /// connect signals to all interface proxies managed by `manager`.
    /// 
    /// This signal is emitted in the
    /// [thread-default main context](#g-main-context-push-thread-default)
    /// that `manager` was constructed in.
    case interfaceProxyPropertiesChanged = "interface-proxy-properties-changed"
    /// Emitted when a D-Bus signal is received on `interface_proxy`.
    /// 
    /// This signal exists purely as a convenience to avoid having to
    /// connect signals to all interface proxies managed by `manager`.
    /// 
    /// This signal is emitted in the
    /// [thread-default main context](#g-main-context-push-thread-default)
    /// that `manager` was constructed in.
    case interfaceProxySignal = "interface-proxy-signal"
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
    /// If this property is not `G_BUS_TYPE_NONE`, then
    /// `GDBusObjectManagerClient:connection` must be `nil` and will be set to the
    /// `GDBusConnection` obtained by calling `g_bus_get()` with the value
    /// of this property.
    case notifyBusType = "notify::bus-type"
    /// The `GDBusConnection` to use.
    case notifyConnection = "notify::connection"
    /// Flags from the `GDBusObjectManagerClientFlags` enumeration.
    case notifyFlags = "notify::flags"
    /// A `GDestroyNotify` for the `gpointer` user_data in `GDBusObjectManagerClient:get`-proxy-type-user-data.
    case notifyGetProxyTypeDestroyNotify = "notify::get-proxy-type-destroy-notify"
    /// The `GDBusProxyTypeFunc` to use when determining what `GType` to
    /// use for interface proxies or `nil`.
    case notifyGetProxyTypeFunc = "notify::get-proxy-type-func"
    /// The `gpointer` user_data to pass to `GDBusObjectManagerClient:get`-proxy-type-func.
    case notifyGetProxyTypeUserData = "notify::get-proxy-type-user-data"
    /// The well-known name or unique name that the manager is for.
    case notifyName = "notify::name"
    /// The unique name that owns `GDBusObjectManagerClient:name` or `nil` if
    /// no-one is currently owning the name. Connect to the
    /// `GObject::notify` signal to track changes to this property.
    case notifyNameOwner = "notify::name-owner"
    /// The object path the manager is for.
    case notifyObjectPath = "notify::object-path"
}

public extension DBusObjectManagerClientProtocol {
    /// Connect a `DBusObjectManagerClientSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: DBusObjectManagerClientSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: DBusObjectManagerClient Class: DBusObjectManagerClientProtocol extension (methods and fields)
public extension DBusObjectManagerClientProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusObjectManagerClient` instance.
    @inlinable var dbus_object_manager_client_ptr: UnsafeMutablePointer<GDBusObjectManagerClient>! { return ptr?.assumingMemoryBound(to: GDBusObjectManagerClient.self) }

    /// Gets the `GDBusConnection` used by `manager`.
    @inlinable func getConnection() -> DBusConnectionRef! {
        let rv = DBusConnectionRef(gconstpointer: gconstpointer(g_dbus_object_manager_client_get_connection(dbus_object_manager_client_ptr)))
        return rv
    }

    /// Gets the flags that `manager` was constructed with.
    @inlinable func getFlags() -> DBusObjectManagerClientFlags {
        let rv = DBusObjectManagerClientFlags(g_dbus_object_manager_client_get_flags(dbus_object_manager_client_ptr))
        return rv
    }

    /// Gets the name that `manager` is for, or `nil` if not a message bus
    /// connection.
    @inlinable func getName() -> String! {
        let rv = g_dbus_object_manager_client_get_name(dbus_object_manager_client_ptr).map({ String(cString: $0) })
        return rv
    }

    /// The unique name that owns the name that `manager` is for or `nil` if
    /// no-one currently owns that name. You can connect to the
    /// `GObject::notify` signal to track changes to the
    /// `GDBusObjectManagerClient:name`-owner property.
    @inlinable func getNameOwner() -> String! {
        let rv = g_dbus_object_manager_client_get_name_owner(dbus_object_manager_client_ptr).map({ String(cString: $0) })
        return rv
    }
    /// The `GDBusConnection` to use.
    @inlinable var connection: DBusConnectionRef! {
        /// Gets the `GDBusConnection` used by `manager`.
        get {
            let rv = DBusConnectionRef(gconstpointer: gconstpointer(g_dbus_object_manager_client_get_connection(dbus_object_manager_client_ptr)))
            return rv
        }
    }

    /// Flags from the `GDBusObjectManagerClientFlags` enumeration.
    @inlinable var flags: DBusObjectManagerClientFlags {
        /// Gets the flags that `manager` was constructed with.
        get {
            let rv = DBusObjectManagerClientFlags(g_dbus_object_manager_client_get_flags(dbus_object_manager_client_ptr))
            return rv
        }
    }

    /// The well-known name or unique name that the manager is for.
    @inlinable var name: String! {
        /// Gets the name that `manager` is for, or `nil` if not a message bus
        /// connection.
        get {
            let rv = g_dbus_object_manager_client_get_name(dbus_object_manager_client_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// The unique name that owns the name that `manager` is for or `nil` if
    /// no-one currently owns that name. You can connect to the
    /// `GObject::notify` signal to track changes to the
    /// `GDBusObjectManagerClient:name`-owner property.
    @inlinable var nameOwner: String! {
        /// The unique name that owns the name that `manager` is for or `nil` if
        /// no-one currently owns that name. You can connect to the
        /// `GObject::notify` signal to track changes to the
        /// `GDBusObjectManagerClient:name`-owner property.
        get {
            let rv = g_dbus_object_manager_client_get_name_owner(dbus_object_manager_client_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    // var parentInstance is unavailable because parent_instance is private

    // var priv is unavailable because priv is private

}



// MARK: - DBusObjectManagerServer Class

/// The `DBusObjectManagerServerProtocol` protocol exposes the methods and properties of an underlying `GDBusObjectManagerServer` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusObjectManagerServer`.
/// Alternatively, use `DBusObjectManagerServerRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GDBusObjectManagerServer` is used to export `GDBusObject` instances using
/// the standardized
/// [org.freedesktop.DBus.ObjectManager](http://dbus.freedesktop.org/doc/dbus-specification.html`standard`-interfaces-objectmanager)
/// interface. For example, remote D-Bus clients can get all objects
/// and properties in a single call. Additionally, any change in the
/// object hierarchy is broadcast using signals. This means that D-Bus
/// clients can keep caches up to date by only listening to D-Bus
/// signals.
/// 
/// The recommended path to export an object manager at is the path form of the
/// well-known name of a D-Bus service, or below. For example, if a D-Bus service
/// is available at the well-known name `net.example.ExampleService1`, the object
/// manager should typically be exported at `/net/example/ExampleService1`, or
/// below (to allow for multiple object managers in a service).
/// 
/// It is supported, but not recommended, to export an object manager at the root
/// path, `/`.
/// 
/// See `GDBusObjectManagerClient` for the client-side code that is
/// intended to be used with `GDBusObjectManagerServer` or any D-Bus
/// object implementing the org.freedesktop.DBus.ObjectManager
/// interface.
public protocol DBusObjectManagerServerProtocol: ObjectProtocol, DBusObjectManagerProtocol {
        /// Untyped pointer to the underlying `GDBusObjectManagerServer` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusObjectManagerServer` instance.
    var dbus_object_manager_server_ptr: UnsafeMutablePointer<GDBusObjectManagerServer>! { get }

}

/// The `DBusObjectManagerServerRef` type acts as a lightweight Swift reference to an underlying `GDBusObjectManagerServer` instance.
/// It exposes methods that can operate on this data type through `DBusObjectManagerServerProtocol` conformance.
/// Use `DBusObjectManagerServerRef` only as an `unowned` reference to an existing `GDBusObjectManagerServer` instance.
///
/// `GDBusObjectManagerServer` is used to export `GDBusObject` instances using
/// the standardized
/// [org.freedesktop.DBus.ObjectManager](http://dbus.freedesktop.org/doc/dbus-specification.html`standard`-interfaces-objectmanager)
/// interface. For example, remote D-Bus clients can get all objects
/// and properties in a single call. Additionally, any change in the
/// object hierarchy is broadcast using signals. This means that D-Bus
/// clients can keep caches up to date by only listening to D-Bus
/// signals.
/// 
/// The recommended path to export an object manager at is the path form of the
/// well-known name of a D-Bus service, or below. For example, if a D-Bus service
/// is available at the well-known name `net.example.ExampleService1`, the object
/// manager should typically be exported at `/net/example/ExampleService1`, or
/// below (to allow for multiple object managers in a service).
/// 
/// It is supported, but not recommended, to export an object manager at the root
/// path, `/`.
/// 
/// See `GDBusObjectManagerClient` for the client-side code that is
/// intended to be used with `GDBusObjectManagerServer` or any D-Bus
/// object implementing the org.freedesktop.DBus.ObjectManager
/// interface.
public struct DBusObjectManagerServerRef: DBusObjectManagerServerProtocol {
        /// Untyped pointer to the underlying `GDBusObjectManagerServer` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_object_manager_server_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusObjectManagerServerRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusObjectManagerServer>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusObjectManagerServer>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusObjectManagerServer>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusObjectManagerServer>?) {
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

    /// Reference intialiser for a related type that implements `DBusObjectManagerServerProtocol`
    @inlinable init<T: DBusObjectManagerServerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GDBusObjectManagerServer` object.
    /// 
    /// The returned server isn't yet exported on any connection. To do so,
    /// use `g_dbus_object_manager_server_set_connection()`. Normally you
    /// want to export all of your objects before doing so to avoid
    /// [InterfacesAdded](http://dbus.freedesktop.org/doc/dbus-specification.html`standard`-interfaces-objectmanager)
    /// signals being emitted.
    @inlinable init( object_path: UnsafePointer<gchar>!) {
        let rv = g_dbus_object_manager_server_new(object_path)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `DBusObjectManagerServer` type acts as a reference-counted owner of an underlying `GDBusObjectManagerServer` instance.
/// It provides the methods that can operate on this data type through `DBusObjectManagerServerProtocol` conformance.
/// Use `DBusObjectManagerServer` as a strong reference or owner of a `GDBusObjectManagerServer` instance.
///
/// `GDBusObjectManagerServer` is used to export `GDBusObject` instances using
/// the standardized
/// [org.freedesktop.DBus.ObjectManager](http://dbus.freedesktop.org/doc/dbus-specification.html`standard`-interfaces-objectmanager)
/// interface. For example, remote D-Bus clients can get all objects
/// and properties in a single call. Additionally, any change in the
/// object hierarchy is broadcast using signals. This means that D-Bus
/// clients can keep caches up to date by only listening to D-Bus
/// signals.
/// 
/// The recommended path to export an object manager at is the path form of the
/// well-known name of a D-Bus service, or below. For example, if a D-Bus service
/// is available at the well-known name `net.example.ExampleService1`, the object
/// manager should typically be exported at `/net/example/ExampleService1`, or
/// below (to allow for multiple object managers in a service).
/// 
/// It is supported, but not recommended, to export an object manager at the root
/// path, `/`.
/// 
/// See `GDBusObjectManagerClient` for the client-side code that is
/// intended to be used with `GDBusObjectManagerServer` or any D-Bus
/// object implementing the org.freedesktop.DBus.ObjectManager
/// interface.
open class DBusObjectManagerServer: Object, DBusObjectManagerServerProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObjectManagerServer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDBusObjectManagerServer>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObjectManagerServer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDBusObjectManagerServer>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObjectManagerServer` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObjectManagerServer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObjectManagerServer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDBusObjectManagerServer>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObjectManagerServer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDBusObjectManagerServer>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GDBusObjectManagerServer`.
    /// i.e., ownership is transferred to the `DBusObjectManagerServer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDBusObjectManagerServer>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DBusObjectManagerServerProtocol`
    /// Will retain `GDBusObjectManagerServer`.
    /// - Parameter other: an instance of a related type that implements `DBusObjectManagerServerProtocol`
    @inlinable public init<T: DBusObjectManagerServerProtocol>(dBusObjectManagerServer other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GDBusObjectManagerServer` object.
    /// 
    /// The returned server isn't yet exported on any connection. To do so,
    /// use `g_dbus_object_manager_server_set_connection()`. Normally you
    /// want to export all of your objects before doing so to avoid
    /// [InterfacesAdded](http://dbus.freedesktop.org/doc/dbus-specification.html`standard`-interfaces-objectmanager)
    /// signals being emitted.
    @inlinable public init( object_path: UnsafePointer<gchar>!) {
        let rv = g_dbus_object_manager_server_new(object_path)
        super.init(gpointer: (rv))
    }


}

public enum DBusObjectManagerServerPropertyName: String, PropertyNameProtocol {
    /// The `GDBusConnection` to export objects on.
    case connection = "connection"
    /// The object path to register the manager object at.
    case objectPath = "object-path"
}

public extension DBusObjectManagerServerProtocol {
    /// Bind a `DBusObjectManagerServerPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DBusObjectManagerServerPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a DBusObjectManagerServer property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DBusObjectManagerServerPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a DBusObjectManagerServer property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DBusObjectManagerServerPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DBusObjectManagerServerSignalName: String, SignalNameProtocol {
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
    /// The `GDBusConnection` to export objects on.
    case notifyConnection = "notify::connection"
    /// The object path to register the manager object at.
    case notifyObjectPath = "notify::object-path"
}

public extension DBusObjectManagerServerProtocol {
    /// Connect a `DBusObjectManagerServerSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: DBusObjectManagerServerSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: DBusObjectManagerServer Class: DBusObjectManagerServerProtocol extension (methods and fields)
public extension DBusObjectManagerServerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusObjectManagerServer` instance.
    @inlinable var dbus_object_manager_server_ptr: UnsafeMutablePointer<GDBusObjectManagerServer>! { return ptr?.assumingMemoryBound(to: GDBusObjectManagerServer.self) }

    /// Exports `object` on `manager`.
    /// 
    /// If there is already a `GDBusObject` exported at the object path,
    /// then the old object is removed.
    /// 
    /// The object path for `object` must be in the hierarchy rooted by the
    /// object path for `manager`.
    /// 
    /// Note that `manager` will take a reference on `object` for as long as
    /// it is exported.
    @inlinable func export<DBusObjectSkeletonT: DBusObjectSkeletonProtocol>(object: DBusObjectSkeletonT) {
        g_dbus_object_manager_server_export(dbus_object_manager_server_ptr, object.dbus_object_skeleton_ptr)
    
    }

    /// Like `g_dbus_object_manager_server_export()` but appends a string of
    /// the form _N (with N being a natural number) to `object`'s object path
    /// if an object with the given path already exists. As such, the
    /// `GDBusObjectProxy:g`-object-path property of `object` may be modified.
    @inlinable func exportUniquely<DBusObjectSkeletonT: DBusObjectSkeletonProtocol>(object: DBusObjectSkeletonT) {
        g_dbus_object_manager_server_export_uniquely(dbus_object_manager_server_ptr, object.dbus_object_skeleton_ptr)
    
    }

    /// Gets the `GDBusConnection` used by `manager`.
    @inlinable func getConnection() -> DBusConnectionRef! {
        let rv = DBusConnectionRef(gconstpointer: gconstpointer(g_dbus_object_manager_server_get_connection(dbus_object_manager_server_ptr)))
        return rv
    }

    /// Returns whether `object` is currently exported on `manager`.
    @inlinable func isExported<DBusObjectSkeletonT: DBusObjectSkeletonProtocol>(object: DBusObjectSkeletonT) -> Bool {
        let rv = ((g_dbus_object_manager_server_is_exported(dbus_object_manager_server_ptr, object.dbus_object_skeleton_ptr)) != 0)
        return rv
    }

    /// Exports all objects managed by `manager` on `connection`. If
    /// `connection` is `nil`, stops exporting objects.
    @inlinable func set<DBusConnectionT: DBusConnectionProtocol>(connection: DBusConnectionT? = nil) {
        g_dbus_object_manager_server_set_connection(dbus_object_manager_server_ptr, connection?.dbus_connection_ptr)
    
    }

    /// If `manager` has an object at `path`, removes the object. Otherwise
    /// does nothing.
    /// 
    /// Note that `object_path` must be in the hierarchy rooted by the
    /// object path for `manager`.
    @inlinable func unexport(objectPath object_path: UnsafePointer<gchar>!) -> Bool {
        let rv = ((g_dbus_object_manager_server_unexport(dbus_object_manager_server_ptr, object_path)) != 0)
        return rv
    }
    /// The `GDBusConnection` to export objects on.
    @inlinable var connection: DBusConnectionRef! {
        /// Gets the `GDBusConnection` used by `manager`.
        get {
            let rv = DBusConnectionRef(gconstpointer: gconstpointer(g_dbus_object_manager_server_get_connection(dbus_object_manager_server_ptr)))
            return rv
        }
        /// Exports all objects managed by `manager` on `connection`. If
        /// `connection` is `nil`, stops exporting objects.
        nonmutating set {
            g_dbus_object_manager_server_set_connection(dbus_object_manager_server_ptr, UnsafeMutablePointer<GDBusConnection>(newValue?.dbus_connection_ptr))
        }
    }

    // var parentInstance is unavailable because parent_instance is private

    // var priv is unavailable because priv is private

}



// MARK: - DBusObjectProxy Class

/// The `DBusObjectProxyProtocol` protocol exposes the methods and properties of an underlying `GDBusObjectProxy` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusObjectProxy`.
/// Alternatively, use `DBusObjectProxyRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GDBusObjectProxy` is an object used to represent a remote object
/// with one or more D-Bus interfaces. Normally, you don't instantiate
/// a `GDBusObjectProxy` yourself - typically `GDBusObjectManagerClient`
/// is used to obtain it.
public protocol DBusObjectProxyProtocol: ObjectProtocol, DBusObjectProtocol {
        /// Untyped pointer to the underlying `GDBusObjectProxy` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusObjectProxy` instance.
    var dbus_object_proxy_ptr: UnsafeMutablePointer<GDBusObjectProxy>! { get }

}

/// The `DBusObjectProxyRef` type acts as a lightweight Swift reference to an underlying `GDBusObjectProxy` instance.
/// It exposes methods that can operate on this data type through `DBusObjectProxyProtocol` conformance.
/// Use `DBusObjectProxyRef` only as an `unowned` reference to an existing `GDBusObjectProxy` instance.
///
/// A `GDBusObjectProxy` is an object used to represent a remote object
/// with one or more D-Bus interfaces. Normally, you don't instantiate
/// a `GDBusObjectProxy` yourself - typically `GDBusObjectManagerClient`
/// is used to obtain it.
public struct DBusObjectProxyRef: DBusObjectProxyProtocol {
        /// Untyped pointer to the underlying `GDBusObjectProxy` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_object_proxy_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusObjectProxyRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusObjectProxy>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusObjectProxy>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusObjectProxy>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusObjectProxy>?) {
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

    /// Reference intialiser for a related type that implements `DBusObjectProxyProtocol`
    @inlinable init<T: DBusObjectProxyProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GDBusObjectProxy` for the given connection and
    /// object path.
    @inlinable init<DBusConnectionT: DBusConnectionProtocol>( connection: DBusConnectionT, objectPath object_path: UnsafePointer<gchar>!) {
        let rv = g_dbus_object_proxy_new(connection.dbus_connection_ptr, object_path)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `DBusObjectProxy` type acts as a reference-counted owner of an underlying `GDBusObjectProxy` instance.
/// It provides the methods that can operate on this data type through `DBusObjectProxyProtocol` conformance.
/// Use `DBusObjectProxy` as a strong reference or owner of a `GDBusObjectProxy` instance.
///
/// A `GDBusObjectProxy` is an object used to represent a remote object
/// with one or more D-Bus interfaces. Normally, you don't instantiate
/// a `GDBusObjectProxy` yourself - typically `GDBusObjectManagerClient`
/// is used to obtain it.
open class DBusObjectProxy: Object, DBusObjectProxyProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObjectProxy` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDBusObjectProxy>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObjectProxy` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDBusObjectProxy>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObjectProxy` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObjectProxy` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObjectProxy` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDBusObjectProxy>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObjectProxy` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDBusObjectProxy>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GDBusObjectProxy`.
    /// i.e., ownership is transferred to the `DBusObjectProxy` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDBusObjectProxy>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DBusObjectProxyProtocol`
    /// Will retain `GDBusObjectProxy`.
    /// - Parameter other: an instance of a related type that implements `DBusObjectProxyProtocol`
    @inlinable public init<T: DBusObjectProxyProtocol>(dBusObjectProxy other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GDBusObjectProxy` for the given connection and
    /// object path.
    @inlinable public init<DBusConnectionT: DBusConnectionProtocol>( connection: DBusConnectionT, objectPath object_path: UnsafePointer<gchar>!) {
        let rv = g_dbus_object_proxy_new(connection.dbus_connection_ptr, object_path)
        super.init(gpointer: (rv))
    }


}

public enum DBusObjectProxyPropertyName: String, PropertyNameProtocol {
    /// The connection of the proxy.
    case gConnection = "g-connection"
    /// The object path of the proxy.
    case gObjectPath = "g-object-path"
}

public extension DBusObjectProxyProtocol {
    /// Bind a `DBusObjectProxyPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DBusObjectProxyPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a DBusObjectProxy property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DBusObjectProxyPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a DBusObjectProxy property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DBusObjectProxyPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DBusObjectProxySignalName: String, SignalNameProtocol {
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
    /// The connection of the proxy.
    case notifyGConnection = "notify::g-connection"
    /// The object path of the proxy.
    case notifyGObjectPath = "notify::g-object-path"
}

public extension DBusObjectProxyProtocol {
    /// Connect a `DBusObjectProxySignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: DBusObjectProxySignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: DBusObjectProxy Class: DBusObjectProxyProtocol extension (methods and fields)
public extension DBusObjectProxyProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusObjectProxy` instance.
    @inlinable var dbus_object_proxy_ptr: UnsafeMutablePointer<GDBusObjectProxy>! { return ptr?.assumingMemoryBound(to: GDBusObjectProxy.self) }

    /// Gets the connection that `proxy` is for.
    @inlinable func getConnection() -> DBusConnectionRef! {
        let rv = DBusConnectionRef(gconstpointer: gconstpointer(g_dbus_object_proxy_get_connection(dbus_object_proxy_ptr)))
        return rv
    }
    /// Gets the connection that `proxy` is for.
    @inlinable var connection: DBusConnectionRef! {
        /// Gets the connection that `proxy` is for.
        get {
            let rv = DBusConnectionRef(gconstpointer: gconstpointer(g_dbus_object_proxy_get_connection(dbus_object_proxy_ptr)))
            return rv
        }
    }

    // var parentInstance is unavailable because parent_instance is private

    // var priv is unavailable because priv is private

}



// MARK: - DBusObjectSkeleton Class

/// The `DBusObjectSkeletonProtocol` protocol exposes the methods and properties of an underlying `GDBusObjectSkeleton` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusObjectSkeleton`.
/// Alternatively, use `DBusObjectSkeletonRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GDBusObjectSkeleton` instance is essentially a group of D-Bus
/// interfaces. The set of exported interfaces on the object may be
/// dynamic and change at runtime.
/// 
/// This type is intended to be used with `GDBusObjectManager`.
public protocol DBusObjectSkeletonProtocol: ObjectProtocol, DBusObjectProtocol {
        /// Untyped pointer to the underlying `GDBusObjectSkeleton` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusObjectSkeleton` instance.
    var dbus_object_skeleton_ptr: UnsafeMutablePointer<GDBusObjectSkeleton>! { get }

}

/// The `DBusObjectSkeletonRef` type acts as a lightweight Swift reference to an underlying `GDBusObjectSkeleton` instance.
/// It exposes methods that can operate on this data type through `DBusObjectSkeletonProtocol` conformance.
/// Use `DBusObjectSkeletonRef` only as an `unowned` reference to an existing `GDBusObjectSkeleton` instance.
///
/// A `GDBusObjectSkeleton` instance is essentially a group of D-Bus
/// interfaces. The set of exported interfaces on the object may be
/// dynamic and change at runtime.
/// 
/// This type is intended to be used with `GDBusObjectManager`.
public struct DBusObjectSkeletonRef: DBusObjectSkeletonProtocol {
        /// Untyped pointer to the underlying `GDBusObjectSkeleton` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_object_skeleton_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusObjectSkeletonRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusObjectSkeleton>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusObjectSkeleton>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusObjectSkeleton>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusObjectSkeleton>?) {
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

    /// Reference intialiser for a related type that implements `DBusObjectSkeletonProtocol`
    @inlinable init<T: DBusObjectSkeletonProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GDBusObjectSkeleton`.
    @inlinable init( object_path: UnsafePointer<gchar>!) {
        let rv = g_dbus_object_skeleton_new(object_path)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `DBusObjectSkeleton` type acts as a reference-counted owner of an underlying `GDBusObjectSkeleton` instance.
/// It provides the methods that can operate on this data type through `DBusObjectSkeletonProtocol` conformance.
/// Use `DBusObjectSkeleton` as a strong reference or owner of a `GDBusObjectSkeleton` instance.
///
/// A `GDBusObjectSkeleton` instance is essentially a group of D-Bus
/// interfaces. The set of exported interfaces on the object may be
/// dynamic and change at runtime.
/// 
/// This type is intended to be used with `GDBusObjectManager`.
open class DBusObjectSkeleton: Object, DBusObjectSkeletonProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObjectSkeleton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDBusObjectSkeleton>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObjectSkeleton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDBusObjectSkeleton>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObjectSkeleton` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObjectSkeleton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObjectSkeleton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDBusObjectSkeleton>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObjectSkeleton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDBusObjectSkeleton>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GDBusObjectSkeleton`.
    /// i.e., ownership is transferred to the `DBusObjectSkeleton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDBusObjectSkeleton>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DBusObjectSkeletonProtocol`
    /// Will retain `GDBusObjectSkeleton`.
    /// - Parameter other: an instance of a related type that implements `DBusObjectSkeletonProtocol`
    @inlinable public init<T: DBusObjectSkeletonProtocol>(dBusObjectSkeleton other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GDBusObjectSkeleton`.
    @inlinable public init( object_path: UnsafePointer<gchar>!) {
        let rv = g_dbus_object_skeleton_new(object_path)
        super.init(gpointer: (rv))
    }


}

public enum DBusObjectSkeletonPropertyName: String, PropertyNameProtocol {
    /// The object path where the object is exported.
    case gObjectPath = "g-object-path"
}

public extension DBusObjectSkeletonProtocol {
    /// Bind a `DBusObjectSkeletonPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DBusObjectSkeletonPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a DBusObjectSkeleton property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DBusObjectSkeletonPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a DBusObjectSkeleton property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DBusObjectSkeletonPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DBusObjectSkeletonSignalName: String, SignalNameProtocol {
    /// Emitted when a method is invoked by a remote caller and used to
    /// determine if the method call is authorized.
    /// 
    /// This signal is like `GDBusInterfaceSkeleton`'s
    /// `GDBusInterfaceSkeleton::g`-authorize-method signal,
    /// except that it is for the enclosing object.
    /// 
    /// The default class handler just returns `true`.
    case authorizeMethod = "authorize-method"
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
    /// The object path where the object is exported.
    case notifyGObjectPath = "notify::g-object-path"
}

public extension DBusObjectSkeletonProtocol {
    /// Connect a `DBusObjectSkeletonSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: DBusObjectSkeletonSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: DBusObjectSkeleton Class: DBusObjectSkeletonProtocol extension (methods and fields)
public extension DBusObjectSkeletonProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusObjectSkeleton` instance.
    @inlinable var dbus_object_skeleton_ptr: UnsafeMutablePointer<GDBusObjectSkeleton>! { return ptr?.assumingMemoryBound(to: GDBusObjectSkeleton.self) }

    /// Adds `interface_` to `object`.
    /// 
    /// If `object` already contains a `GDBusInterfaceSkeleton` with the same
    /// interface name, it is removed before `interface_` is added.
    /// 
    /// Note that `object` takes its own reference on `interface_` and holds
    /// it until removed.
    @inlinable func addInterface<DBusInterfaceSkeletonT: DBusInterfaceSkeletonProtocol>(interface_: DBusInterfaceSkeletonT) {
        g_dbus_object_skeleton_add_interface(dbus_object_skeleton_ptr, interface_.dbus_interface_skeleton_ptr)
    
    }

    /// This method simply calls `g_dbus_interface_skeleton_flush()` on all
    /// interfaces belonging to `object`. See that method for when flushing
    /// is useful.
    @inlinable func flush() {
        g_dbus_object_skeleton_flush(dbus_object_skeleton_ptr)
    
    }

    /// Removes `interface_` from `object`.
    @inlinable func removeInterface<DBusInterfaceSkeletonT: DBusInterfaceSkeletonProtocol>(interface_: DBusInterfaceSkeletonT) {
        g_dbus_object_skeleton_remove_interface(dbus_object_skeleton_ptr, interface_.dbus_interface_skeleton_ptr)
    
    }

    /// Removes the `GDBusInterface` with `interface_name` from `object`.
    /// 
    /// If no D-Bus interface of the given interface exists, this function
    /// does nothing.
    @inlinable func removeInterfaceByName(interfaceName interface_name: UnsafePointer<gchar>!) {
        g_dbus_object_skeleton_remove_interface_by_name(dbus_object_skeleton_ptr, interface_name)
    
    }

    /// Sets the object path for `object`.
    @inlinable func set(objectPath object_path: UnsafePointer<gchar>!) {
        g_dbus_object_skeleton_set_object_path(dbus_object_skeleton_ptr, object_path)
    
    }

    // var parentInstance is unavailable because parent_instance is private

    // var priv is unavailable because priv is private

}



// MARK: - DBusProxy Class

/// The `DBusProxyProtocol` protocol exposes the methods and properties of an underlying `GDBusProxy` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusProxy`.
/// Alternatively, use `DBusProxyRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GDBusProxy` is a base class used for proxies to access a D-Bus
/// interface on a remote object. A `GDBusProxy` can be constructed for
/// both well-known and unique names.
/// 
/// By default, `GDBusProxy` will cache all properties (and listen to
/// changes) of the remote object, and proxy all signals that get
/// emitted. This behaviour can be changed by passing suitable
/// `GDBusProxyFlags` when the proxy is created. If the proxy is for a
/// well-known name, the property cache is flushed when the name owner
/// vanishes and reloaded when a name owner appears.
/// 
/// The unique name owner of the proxy's name is tracked and can be read from
/// `GDBusProxy:g`-name-owner. Connect to the `GObject::notify` signal to
/// get notified of changes. Additionally, only signals and property
/// changes emitted from the current name owner are considered and
/// calls are always sent to the current name owner. This avoids a
/// number of race conditions when the name is lost by one owner and
/// claimed by another. However, if no name owner currently exists,
/// then calls will be sent to the well-known name which may result in
/// the message bus launching an owner (unless
/// `G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START` is set).
/// 
/// The generic `GDBusProxy::g`-properties-changed and
/// `GDBusProxy::g`-signal signals are not very convenient to work with.
/// Therefore, the recommended way of working with proxies is to subclass
/// `GDBusProxy`, and have more natural properties and signals in your derived
/// class. This [example](#gdbus-example-gdbus-codegen) shows how this can
/// easily be done using the [gdbus-codegen](#gdbus-codegen) tool.
/// 
/// A `GDBusProxy` instance can be used from multiple threads but note
/// that all signals (e.g. `GDBusProxy::g`-signal, `GDBusProxy::g`-properties-changed
/// and `GObject::notify`) are emitted in the
/// [thread-default main context](#g-main-context-push-thread-default)
/// of the thread where the instance was constructed.
/// 
/// An example using a proxy for a well-known name can be found in
/// [gdbus-example-watch-proxy.c](https://git.gnome.org/browse/glib/tree/gio/tests/gdbus-example-watch-proxy.c)
public protocol DBusProxyProtocol: ObjectProtocol, AsyncInitableProtocol, DBusInterfaceProtocol, InitableProtocol {
        /// Untyped pointer to the underlying `GDBusProxy` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusProxy` instance.
    var dbus_proxy_ptr: UnsafeMutablePointer<GDBusProxy>! { get }

}

/// The `DBusProxyRef` type acts as a lightweight Swift reference to an underlying `GDBusProxy` instance.
/// It exposes methods that can operate on this data type through `DBusProxyProtocol` conformance.
/// Use `DBusProxyRef` only as an `unowned` reference to an existing `GDBusProxy` instance.
///
/// `GDBusProxy` is a base class used for proxies to access a D-Bus
/// interface on a remote object. A `GDBusProxy` can be constructed for
/// both well-known and unique names.
/// 
/// By default, `GDBusProxy` will cache all properties (and listen to
/// changes) of the remote object, and proxy all signals that get
/// emitted. This behaviour can be changed by passing suitable
/// `GDBusProxyFlags` when the proxy is created. If the proxy is for a
/// well-known name, the property cache is flushed when the name owner
/// vanishes and reloaded when a name owner appears.
/// 
/// The unique name owner of the proxy's name is tracked and can be read from
/// `GDBusProxy:g`-name-owner. Connect to the `GObject::notify` signal to
/// get notified of changes. Additionally, only signals and property
/// changes emitted from the current name owner are considered and
/// calls are always sent to the current name owner. This avoids a
/// number of race conditions when the name is lost by one owner and
/// claimed by another. However, if no name owner currently exists,
/// then calls will be sent to the well-known name which may result in
/// the message bus launching an owner (unless
/// `G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START` is set).
/// 
/// The generic `GDBusProxy::g`-properties-changed and
/// `GDBusProxy::g`-signal signals are not very convenient to work with.
/// Therefore, the recommended way of working with proxies is to subclass
/// `GDBusProxy`, and have more natural properties and signals in your derived
/// class. This [example](#gdbus-example-gdbus-codegen) shows how this can
/// easily be done using the [gdbus-codegen](#gdbus-codegen) tool.
/// 
/// A `GDBusProxy` instance can be used from multiple threads but note
/// that all signals (e.g. `GDBusProxy::g`-signal, `GDBusProxy::g`-properties-changed
/// and `GObject::notify`) are emitted in the
/// [thread-default main context](#g-main-context-push-thread-default)
/// of the thread where the instance was constructed.
/// 
/// An example using a proxy for a well-known name can be found in
/// [gdbus-example-watch-proxy.c](https://git.gnome.org/browse/glib/tree/gio/tests/gdbus-example-watch-proxy.c)
public struct DBusProxyRef: DBusProxyProtocol {
        /// Untyped pointer to the underlying `GDBusProxy` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_proxy_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusProxyRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusProxy>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusProxy>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusProxy>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusProxy>?) {
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

    /// Reference intialiser for a related type that implements `DBusProxyProtocol`
    @inlinable init<T: DBusProxyProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Finishes creating a `GDBusProxy`.
    @inlinable init<AsyncResultT: AsyncResultProtocol>(finish res: AsyncResultT) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_dbus_proxy_new_finish(res.async_result_ptr, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Finishes creating a `GDBusProxy`.
    @inlinable init<AsyncResultT: AsyncResultProtocol>(busFinish res: AsyncResultT) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_dbus_proxy_new_for_bus_finish(res.async_result_ptr, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Like `g_dbus_proxy_new_sync()` but takes a `GBusType` instead of a `GDBusConnection`.
    /// 
    /// `GDBusProxy` is used in this [example](#gdbus-wellknown-proxy).
    @inlinable init<CancellableT: CancellableProtocol, DBusInterfaceInfoT: DBusInterfaceInfoProtocol>(busSync bus_type: GBusType, flags: DBusProxyFlags, info: DBusInterfaceInfoT? = nil, name: UnsafePointer<gchar>!, objectPath object_path: UnsafePointer<gchar>!, interfaceName interface_name: UnsafePointer<gchar>!, cancellable: CancellableT? = nil) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_dbus_proxy_new_for_bus_sync(bus_type, flags.value, info?.dbus_interface_info_ptr, name, object_path, interface_name, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a proxy for accessing `interface_name` on the remote object
    /// at `object_path` owned by `name` at `connection` and synchronously
    /// loads D-Bus properties unless the
    /// `G_DBUS_PROXY_FLAGS_DO_NOT_LOAD_PROPERTIES` flag is used.
    /// 
    /// If the `G_DBUS_PROXY_FLAGS_DO_NOT_CONNECT_SIGNALS` flag is not set, also sets up
    /// match rules for signals. Connect to the `GDBusProxy::g`-signal signal
    /// to handle signals from the remote object.
    /// 
    /// If both `G_DBUS_PROXY_FLAGS_DO_NOT_LOAD_PROPERTIES` and
    /// `G_DBUS_PROXY_FLAGS_DO_NOT_CONNECT_SIGNALS` are set, this constructor is
    /// guaranteed to return immediately without blocking.
    /// 
    /// If `name` is a well-known name and the
    /// `G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START` and `G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START_AT_CONSTRUCTION`
    /// flags aren't set and no name owner currently exists, the message bus
    /// will be requested to launch a name owner for the name.
    /// 
    /// This is a synchronous failable constructor. See `g_dbus_proxy_new()`
    /// and `g_dbus_proxy_new_finish()` for the asynchronous version.
    /// 
    /// `GDBusProxy` is used in this [example](#gdbus-wellknown-proxy).
    @inlinable init<CancellableT: CancellableProtocol, DBusConnectionT: DBusConnectionProtocol, DBusInterfaceInfoT: DBusInterfaceInfoProtocol>(sync connection: DBusConnectionT, flags: DBusProxyFlags, info: DBusInterfaceInfoT? = nil, name: UnsafePointer<gchar>? = nil, objectPath object_path: UnsafePointer<gchar>!, interfaceName interface_name: UnsafePointer<gchar>!, cancellable: CancellableT? = nil) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_dbus_proxy_new_sync(connection.dbus_connection_ptr, flags.value, info?.dbus_interface_info_ptr, name, object_path, interface_name, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Finishes creating a `GDBusProxy`.
    @inlinable static func new<AsyncResultT: AsyncResultProtocol>(finish res: AsyncResultT) throws -> DBusProxyRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = DBusProxyRef(gconstpointer: gconstpointer(g_dbus_proxy_new_finish(res.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Finishes creating a `GDBusProxy`.
    @inlinable static func newFor<AsyncResultT: AsyncResultProtocol>(busFinish res: AsyncResultT) throws -> DBusProxyRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = DBusProxyRef(gconstpointer: gconstpointer(g_dbus_proxy_new_for_bus_finish(res.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Like `g_dbus_proxy_new_sync()` but takes a `GBusType` instead of a `GDBusConnection`.
    /// 
    /// `GDBusProxy` is used in this [example](#gdbus-wellknown-proxy).
    @inlinable static func newFor<CancellableT: CancellableProtocol, DBusInterfaceInfoT: DBusInterfaceInfoProtocol>(busSync bus_type: GBusType, flags: DBusProxyFlags, info: DBusInterfaceInfoT? = nil, name: UnsafePointer<gchar>!, objectPath object_path: UnsafePointer<gchar>!, interfaceName interface_name: UnsafePointer<gchar>!, cancellable: CancellableT? = nil) throws -> DBusProxyRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = DBusProxyRef(gconstpointer: gconstpointer(g_dbus_proxy_new_for_bus_sync(bus_type, flags.value, info?.dbus_interface_info_ptr, name, object_path, interface_name, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Creates a proxy for accessing `interface_name` on the remote object
    /// at `object_path` owned by `name` at `connection` and synchronously
    /// loads D-Bus properties unless the
    /// `G_DBUS_PROXY_FLAGS_DO_NOT_LOAD_PROPERTIES` flag is used.
    /// 
    /// If the `G_DBUS_PROXY_FLAGS_DO_NOT_CONNECT_SIGNALS` flag is not set, also sets up
    /// match rules for signals. Connect to the `GDBusProxy::g`-signal signal
    /// to handle signals from the remote object.
    /// 
    /// If both `G_DBUS_PROXY_FLAGS_DO_NOT_LOAD_PROPERTIES` and
    /// `G_DBUS_PROXY_FLAGS_DO_NOT_CONNECT_SIGNALS` are set, this constructor is
    /// guaranteed to return immediately without blocking.
    /// 
    /// If `name` is a well-known name and the
    /// `G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START` and `G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START_AT_CONSTRUCTION`
    /// flags aren't set and no name owner currently exists, the message bus
    /// will be requested to launch a name owner for the name.
    /// 
    /// This is a synchronous failable constructor. See `g_dbus_proxy_new()`
    /// and `g_dbus_proxy_new_finish()` for the asynchronous version.
    /// 
    /// `GDBusProxy` is used in this [example](#gdbus-wellknown-proxy).
    @inlinable static func new<CancellableT: CancellableProtocol, DBusConnectionT: DBusConnectionProtocol, DBusInterfaceInfoT: DBusInterfaceInfoProtocol>(sync connection: DBusConnectionT, flags: DBusProxyFlags, info: DBusInterfaceInfoT? = nil, name: UnsafePointer<gchar>? = nil, objectPath object_path: UnsafePointer<gchar>!, interfaceName interface_name: UnsafePointer<gchar>!, cancellable: CancellableT? = nil) throws -> DBusProxyRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = DBusProxyRef(gconstpointer: gconstpointer(g_dbus_proxy_new_sync(connection.dbus_connection_ptr, flags.value, info?.dbus_interface_info_ptr, name, object_path, interface_name, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }
}

/// The `DBusProxy` type acts as a reference-counted owner of an underlying `GDBusProxy` instance.
/// It provides the methods that can operate on this data type through `DBusProxyProtocol` conformance.
/// Use `DBusProxy` as a strong reference or owner of a `GDBusProxy` instance.
///
/// `GDBusProxy` is a base class used for proxies to access a D-Bus
/// interface on a remote object. A `GDBusProxy` can be constructed for
/// both well-known and unique names.
/// 
/// By default, `GDBusProxy` will cache all properties (and listen to
/// changes) of the remote object, and proxy all signals that get
/// emitted. This behaviour can be changed by passing suitable
/// `GDBusProxyFlags` when the proxy is created. If the proxy is for a
/// well-known name, the property cache is flushed when the name owner
/// vanishes and reloaded when a name owner appears.
/// 
/// The unique name owner of the proxy's name is tracked and can be read from
/// `GDBusProxy:g`-name-owner. Connect to the `GObject::notify` signal to
/// get notified of changes. Additionally, only signals and property
/// changes emitted from the current name owner are considered and
/// calls are always sent to the current name owner. This avoids a
/// number of race conditions when the name is lost by one owner and
/// claimed by another. However, if no name owner currently exists,
/// then calls will be sent to the well-known name which may result in
/// the message bus launching an owner (unless
/// `G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START` is set).
/// 
/// The generic `GDBusProxy::g`-properties-changed and
/// `GDBusProxy::g`-signal signals are not very convenient to work with.
/// Therefore, the recommended way of working with proxies is to subclass
/// `GDBusProxy`, and have more natural properties and signals in your derived
/// class. This [example](#gdbus-example-gdbus-codegen) shows how this can
/// easily be done using the [gdbus-codegen](#gdbus-codegen) tool.
/// 
/// A `GDBusProxy` instance can be used from multiple threads but note
/// that all signals (e.g. `GDBusProxy::g`-signal, `GDBusProxy::g`-properties-changed
/// and `GObject::notify`) are emitted in the
/// [thread-default main context](#g-main-context-push-thread-default)
/// of the thread where the instance was constructed.
/// 
/// An example using a proxy for a well-known name can be found in
/// [gdbus-example-watch-proxy.c](https://git.gnome.org/browse/glib/tree/gio/tests/gdbus-example-watch-proxy.c)
open class DBusProxy: Object, DBusProxyProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusProxy` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDBusProxy>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusProxy` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDBusProxy>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusProxy` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusProxy` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusProxy` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDBusProxy>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusProxy` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDBusProxy>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GDBusProxy`.
    /// i.e., ownership is transferred to the `DBusProxy` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDBusProxy>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DBusProxyProtocol`
    /// Will retain `GDBusProxy`.
    /// - Parameter other: an instance of a related type that implements `DBusProxyProtocol`
    @inlinable public init<T: DBusProxyProtocol>(dBusProxy other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Finishes creating a `GDBusProxy`.
    @inlinable public init<AsyncResultT: AsyncResultProtocol>(finish res: AsyncResultT) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_dbus_proxy_new_finish(res.async_result_ptr, &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
    }

    /// Finishes creating a `GDBusProxy`.
    @inlinable public init<AsyncResultT: AsyncResultProtocol>(busFinish res: AsyncResultT) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_dbus_proxy_new_for_bus_finish(res.async_result_ptr, &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
    }

    /// Like `g_dbus_proxy_new_sync()` but takes a `GBusType` instead of a `GDBusConnection`.
    /// 
    /// `GDBusProxy` is used in this [example](#gdbus-wellknown-proxy).
    @inlinable public init<CancellableT: CancellableProtocol, DBusInterfaceInfoT: DBusInterfaceInfoProtocol>(busSync bus_type: GBusType, flags: DBusProxyFlags, info: DBusInterfaceInfoT? = nil, name: UnsafePointer<gchar>!, objectPath object_path: UnsafePointer<gchar>!, interfaceName interface_name: UnsafePointer<gchar>!, cancellable: CancellableT? = nil) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_dbus_proxy_new_for_bus_sync(bus_type, flags.value, info?.dbus_interface_info_ptr, name, object_path, interface_name, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
    }

    /// Creates a proxy for accessing `interface_name` on the remote object
    /// at `object_path` owned by `name` at `connection` and synchronously
    /// loads D-Bus properties unless the
    /// `G_DBUS_PROXY_FLAGS_DO_NOT_LOAD_PROPERTIES` flag is used.
    /// 
    /// If the `G_DBUS_PROXY_FLAGS_DO_NOT_CONNECT_SIGNALS` flag is not set, also sets up
    /// match rules for signals. Connect to the `GDBusProxy::g`-signal signal
    /// to handle signals from the remote object.
    /// 
    /// If both `G_DBUS_PROXY_FLAGS_DO_NOT_LOAD_PROPERTIES` and
    /// `G_DBUS_PROXY_FLAGS_DO_NOT_CONNECT_SIGNALS` are set, this constructor is
    /// guaranteed to return immediately without blocking.
    /// 
    /// If `name` is a well-known name and the
    /// `G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START` and `G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START_AT_CONSTRUCTION`
    /// flags aren't set and no name owner currently exists, the message bus
    /// will be requested to launch a name owner for the name.
    /// 
    /// This is a synchronous failable constructor. See `g_dbus_proxy_new()`
    /// and `g_dbus_proxy_new_finish()` for the asynchronous version.
    /// 
    /// `GDBusProxy` is used in this [example](#gdbus-wellknown-proxy).
    @inlinable public init<CancellableT: CancellableProtocol, DBusConnectionT: DBusConnectionProtocol, DBusInterfaceInfoT: DBusInterfaceInfoProtocol>(sync connection: DBusConnectionT, flags: DBusProxyFlags, info: DBusInterfaceInfoT? = nil, name: UnsafePointer<gchar>? = nil, objectPath object_path: UnsafePointer<gchar>!, interfaceName interface_name: UnsafePointer<gchar>!, cancellable: CancellableT? = nil) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_dbus_proxy_new_sync(connection.dbus_connection_ptr, flags.value, info?.dbus_interface_info_ptr, name, object_path, interface_name, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
    }

    /// Finishes creating a `GDBusProxy`.
    @inlinable public static func new<AsyncResultT: AsyncResultProtocol>(finish res: AsyncResultT) throws -> DBusProxy! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = DBusProxy(gconstpointer: gconstpointer(g_dbus_proxy_new_finish(res.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Finishes creating a `GDBusProxy`.
    @inlinable public static func newFor<AsyncResultT: AsyncResultProtocol>(busFinish res: AsyncResultT) throws -> DBusProxy! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = DBusProxy(gconstpointer: gconstpointer(g_dbus_proxy_new_for_bus_finish(res.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Like `g_dbus_proxy_new_sync()` but takes a `GBusType` instead of a `GDBusConnection`.
    /// 
    /// `GDBusProxy` is used in this [example](#gdbus-wellknown-proxy).
    @inlinable public static func newFor<CancellableT: CancellableProtocol, DBusInterfaceInfoT: DBusInterfaceInfoProtocol>(busSync bus_type: GBusType, flags: DBusProxyFlags, info: DBusInterfaceInfoT? = nil, name: UnsafePointer<gchar>!, objectPath object_path: UnsafePointer<gchar>!, interfaceName interface_name: UnsafePointer<gchar>!, cancellable: CancellableT? = nil) throws -> DBusProxy! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = DBusProxy(gconstpointer: gconstpointer(g_dbus_proxy_new_for_bus_sync(bus_type, flags.value, info?.dbus_interface_info_ptr, name, object_path, interface_name, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Creates a proxy for accessing `interface_name` on the remote object
    /// at `object_path` owned by `name` at `connection` and synchronously
    /// loads D-Bus properties unless the
    /// `G_DBUS_PROXY_FLAGS_DO_NOT_LOAD_PROPERTIES` flag is used.
    /// 
    /// If the `G_DBUS_PROXY_FLAGS_DO_NOT_CONNECT_SIGNALS` flag is not set, also sets up
    /// match rules for signals. Connect to the `GDBusProxy::g`-signal signal
    /// to handle signals from the remote object.
    /// 
    /// If both `G_DBUS_PROXY_FLAGS_DO_NOT_LOAD_PROPERTIES` and
    /// `G_DBUS_PROXY_FLAGS_DO_NOT_CONNECT_SIGNALS` are set, this constructor is
    /// guaranteed to return immediately without blocking.
    /// 
    /// If `name` is a well-known name and the
    /// `G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START` and `G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START_AT_CONSTRUCTION`
    /// flags aren't set and no name owner currently exists, the message bus
    /// will be requested to launch a name owner for the name.
    /// 
    /// This is a synchronous failable constructor. See `g_dbus_proxy_new()`
    /// and `g_dbus_proxy_new_finish()` for the asynchronous version.
    /// 
    /// `GDBusProxy` is used in this [example](#gdbus-wellknown-proxy).
    @inlinable public static func new<CancellableT: CancellableProtocol, DBusConnectionT: DBusConnectionProtocol, DBusInterfaceInfoT: DBusInterfaceInfoProtocol>(sync connection: DBusConnectionT, flags: DBusProxyFlags, info: DBusInterfaceInfoT? = nil, name: UnsafePointer<gchar>? = nil, objectPath object_path: UnsafePointer<gchar>!, interfaceName interface_name: UnsafePointer<gchar>!, cancellable: CancellableT? = nil) throws -> DBusProxy! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = DBusProxy(gconstpointer: gconstpointer(g_dbus_proxy_new_sync(connection.dbus_connection_ptr, flags.value, info?.dbus_interface_info_ptr, name, object_path, interface_name, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

}

public enum DBusProxyPropertyName: String, PropertyNameProtocol {
    /// If this property is not `G_BUS_TYPE_NONE`, then
    /// `GDBusProxy:g`-connection must be `nil` and will be set to the
    /// `GDBusConnection` obtained by calling `g_bus_get()` with the value
    /// of this property.
    case gBusType = "g-bus-type"
    /// The `GDBusConnection` the proxy is for.
    case gConnection = "g-connection"
    /// The timeout to use if -1 (specifying default timeout) is passed
    /// as `timeout_msec` in the `g_dbus_proxy_call()` and
    /// `g_dbus_proxy_call_sync()` functions.
    /// 
    /// This allows applications to set a proxy-wide timeout for all
    /// remote method invocations on the proxy. If this property is -1,
    /// the default timeout (typically 25 seconds) is used. If set to
    /// `G_MAXINT`, then no timeout is used.
    case gDefaultTimeout = "g-default-timeout"
    /// Flags from the `GDBusProxyFlags` enumeration.
    case gFlags = "g-flags"
    /// Ensure that interactions with this proxy conform to the given
    /// interface. This is mainly to ensure that malformed data received
    /// from the other peer is ignored. The given `GDBusInterfaceInfo` is
    /// said to be the "expected interface".
    /// 
    /// The checks performed are:
    /// - When completing a method call, if the type signature of
    ///   the reply message isn't what's expected, the reply is
    ///   discarded and the `GError` is set to `G_IO_ERROR_INVALID_ARGUMENT`.
    /// 
    /// - Received signals that have a type signature mismatch are dropped and
    ///   a warning is logged via `g_warning()`.
    /// 
    /// - Properties received via the initial ``GetAll()`` call or via the
    ///   ``PropertiesChanged`` signal (on the
    ///   [org.freedesktop.DBus.Properties](http://dbus.freedesktop.org/doc/dbus-specification.html`standard`-interfaces-properties)
    ///   interface) or set using `g_dbus_proxy_set_cached_property()`
    ///   with a type signature mismatch are ignored and a warning is
    ///   logged via `g_warning()`.
    /// 
    /// Note that these checks are never done on methods, signals and
    /// properties that are not referenced in the given
    /// `GDBusInterfaceInfo`, since extending a D-Bus interface on the
    /// service-side is not considered an ABI break.
    case gInterfaceInfo = "g-interface-info"
    /// The D-Bus interface name the proxy is for.
    case gInterfaceName = "g-interface-name"
    /// The well-known or unique name that the proxy is for.
    case gName = "g-name"
    /// The unique name that owns `GDBusProxy:g`-name or `nil` if no-one
    /// currently owns that name. You may connect to `GObject::notify` signal to
    /// track changes to this property.
    case gNameOwner = "g-name-owner"
    /// The object path the proxy is for.
    case gObjectPath = "g-object-path"
}

public extension DBusProxyProtocol {
    /// Bind a `DBusProxyPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DBusProxyPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a DBusProxy property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DBusProxyPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a DBusProxy property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DBusProxyPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DBusProxySignalName: String, SignalNameProtocol {
    /// Emitted when one or more D-Bus properties on `proxy` changes. The
    /// local cache has already been updated when this signal fires. Note
    /// that both `changed_properties` and `invalidated_properties` are
    /// guaranteed to never be `nil` (either may be empty though).
    /// 
    /// If the proxy has the flag
    /// `G_DBUS_PROXY_FLAGS_GET_INVALIDATED_PROPERTIES` set, then
    /// `invalidated_properties` will always be empty.
    /// 
    /// This signal corresponds to the
    /// `PropertiesChanged` D-Bus signal on the
    /// `org.freedesktop.DBus.Properties` interface.
    case gPropertiesChanged = "g-properties-changed"
    /// Emitted when a signal from the remote object and interface that `proxy` is for, has been received.
    case gSignal = "g-signal"
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
    /// If this property is not `G_BUS_TYPE_NONE`, then
    /// `GDBusProxy:g`-connection must be `nil` and will be set to the
    /// `GDBusConnection` obtained by calling `g_bus_get()` with the value
    /// of this property.
    case notifyGBusType = "notify::g-bus-type"
    /// The `GDBusConnection` the proxy is for.
    case notifyGConnection = "notify::g-connection"
    /// The timeout to use if -1 (specifying default timeout) is passed
    /// as `timeout_msec` in the `g_dbus_proxy_call()` and
    /// `g_dbus_proxy_call_sync()` functions.
    /// 
    /// This allows applications to set a proxy-wide timeout for all
    /// remote method invocations on the proxy. If this property is -1,
    /// the default timeout (typically 25 seconds) is used. If set to
    /// `G_MAXINT`, then no timeout is used.
    case notifyGDefaultTimeout = "notify::g-default-timeout"
    /// Flags from the `GDBusProxyFlags` enumeration.
    case notifyGFlags = "notify::g-flags"
    /// Ensure that interactions with this proxy conform to the given
    /// interface. This is mainly to ensure that malformed data received
    /// from the other peer is ignored. The given `GDBusInterfaceInfo` is
    /// said to be the "expected interface".
    /// 
    /// The checks performed are:
    /// - When completing a method call, if the type signature of
    ///   the reply message isn't what's expected, the reply is
    ///   discarded and the `GError` is set to `G_IO_ERROR_INVALID_ARGUMENT`.
    /// 
    /// - Received signals that have a type signature mismatch are dropped and
    ///   a warning is logged via `g_warning()`.
    /// 
    /// - Properties received via the initial ``GetAll()`` call or via the
    ///   ``PropertiesChanged`` signal (on the
    ///   [org.freedesktop.DBus.Properties](http://dbus.freedesktop.org/doc/dbus-specification.html`standard`-interfaces-properties)
    ///   interface) or set using `g_dbus_proxy_set_cached_property()`
    ///   with a type signature mismatch are ignored and a warning is
    ///   logged via `g_warning()`.
    /// 
    /// Note that these checks are never done on methods, signals and
    /// properties that are not referenced in the given
    /// `GDBusInterfaceInfo`, since extending a D-Bus interface on the
    /// service-side is not considered an ABI break.
    case notifyGInterfaceInfo = "notify::g-interface-info"
    /// The D-Bus interface name the proxy is for.
    case notifyGInterfaceName = "notify::g-interface-name"
    /// The well-known or unique name that the proxy is for.
    case notifyGName = "notify::g-name"
    /// The unique name that owns `GDBusProxy:g`-name or `nil` if no-one
    /// currently owns that name. You may connect to `GObject::notify` signal to
    /// track changes to this property.
    case notifyGNameOwner = "notify::g-name-owner"
    /// The object path the proxy is for.
    case notifyGObjectPath = "notify::g-object-path"
}

public extension DBusProxyProtocol {
    /// Connect a `DBusProxySignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: DBusProxySignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: DBusProxy Class: DBusProxyProtocol extension (methods and fields)
public extension DBusProxyProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusProxy` instance.
    @inlinable var dbus_proxy_ptr: UnsafeMutablePointer<GDBusProxy>! { return ptr?.assumingMemoryBound(to: GDBusProxy.self) }

    /// Asynchronously invokes the `method_name` method on `proxy`.
    /// 
    /// If `method_name` contains any dots, then `name` is split into interface and
    /// method name parts. This allows using `proxy` for invoking methods on
    /// other interfaces.
    /// 
    /// If the `GDBusConnection` associated with `proxy` is closed then
    /// the operation will fail with `G_IO_ERROR_CLOSED`. If
    /// `cancellable` is canceled, the operation will fail with
    /// `G_IO_ERROR_CANCELLED`. If `parameters` contains a value not
    /// compatible with the D-Bus protocol, the operation fails with
    /// `G_IO_ERROR_INVALID_ARGUMENT`.
    /// 
    /// If the `parameters` `GVariant` is floating, it is consumed. This allows
    /// convenient 'inline' use of `g_variant_new()`, e.g.:
    /// (C Language Example):
    /// ```C
    ///  g_dbus_proxy_call (proxy,
    ///                     "TwoStrings",
    ///                     g_variant_new ("(ss)",
    ///                                    "Thing One",
    ///                                    "Thing Two"),
    ///                     G_DBUS_CALL_FLAGS_NONE,
    ///                     -1,
    ///                     NULL,
    ///                     (GAsyncReadyCallback) two_strings_done,
    ///                     &data);
    /// ```
    /// 
    /// If `proxy` has an expected interface (see
    /// `GDBusProxy:g`-interface-info) and `method_name` is referenced by it,
    /// then the return value is checked against the return type.
    /// 
    /// This is an asynchronous method. When the operation is finished,
    /// `callback` will be invoked in the
    /// [thread-default main context](#g-main-context-push-thread-default)
    /// of the thread you are calling this method from.
    /// You can then call `g_dbus_proxy_call_finish()` to get the result of
    /// the operation. See `g_dbus_proxy_call_sync()` for the synchronous
    /// version of this method.
    /// 
    /// If `callback` is `nil` then the D-Bus method call message will be sent with
    /// the `G_DBUS_MESSAGE_FLAGS_NO_REPLY_EXPECTED` flag set.
    @inlinable func call<CancellableT: CancellableProtocol, VariantT: VariantProtocol>(methodName method_name: UnsafePointer<gchar>!, parameters: VariantT? = nil, flags: DBusCallFlags, timeoutMsec timeout_msec: Int, cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
        g_dbus_proxy_call(dbus_proxy_ptr, method_name, parameters?.variant_ptr, flags.value, gint(timeout_msec), cancellable?.cancellable_ptr, callback, user_data)
    
    }

    /// Finishes an operation started with `g_dbus_proxy_call()`.
    @inlinable func callFinish<AsyncResultT: AsyncResultProtocol>(res: AsyncResultT) throws -> VariantRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = VariantRef(gconstpointer: gconstpointer(g_dbus_proxy_call_finish(dbus_proxy_ptr, res.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Synchronously invokes the `method_name` method on `proxy`.
    /// 
    /// If `method_name` contains any dots, then `name` is split into interface and
    /// method name parts. This allows using `proxy` for invoking methods on
    /// other interfaces.
    /// 
    /// If the `GDBusConnection` associated with `proxy` is disconnected then
    /// the operation will fail with `G_IO_ERROR_CLOSED`. If
    /// `cancellable` is canceled, the operation will fail with
    /// `G_IO_ERROR_CANCELLED`. If `parameters` contains a value not
    /// compatible with the D-Bus protocol, the operation fails with
    /// `G_IO_ERROR_INVALID_ARGUMENT`.
    /// 
    /// If the `parameters` `GVariant` is floating, it is consumed. This allows
    /// convenient 'inline' use of `g_variant_new()`, e.g.:
    /// (C Language Example):
    /// ```C
    ///  g_dbus_proxy_call_sync (proxy,
    ///                          "TwoStrings",
    ///                          g_variant_new ("(ss)",
    ///                                         "Thing One",
    ///                                         "Thing Two"),
    ///                          G_DBUS_CALL_FLAGS_NONE,
    ///                          -1,
    ///                          NULL,
    ///                          &error);
    /// ```
    /// 
    /// The calling thread is blocked until a reply is received. See
    /// `g_dbus_proxy_call()` for the asynchronous version of this
    /// method.
    /// 
    /// If `proxy` has an expected interface (see
    /// `GDBusProxy:g`-interface-info) and `method_name` is referenced by it,
    /// then the return value is checked against the return type.
    @inlinable func callSync<CancellableT: CancellableProtocol, VariantT: VariantProtocol>(methodName method_name: UnsafePointer<gchar>!, parameters: VariantT? = nil, flags: DBusCallFlags, timeoutMsec timeout_msec: Int, cancellable: CancellableT? = nil) throws -> VariantRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = VariantRef(gconstpointer: gconstpointer(g_dbus_proxy_call_sync(dbus_proxy_ptr, method_name, parameters?.variant_ptr, flags.value, gint(timeout_msec), cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Like `g_dbus_proxy_call()` but also takes a `GUnixFDList` object.
    /// 
    /// This method is only available on UNIX.
    @inlinable func callWithUnixFdList<CancellableT: CancellableProtocol, UnixFDListT: UnixFDListProtocol, VariantT: VariantProtocol>(methodName method_name: UnsafePointer<gchar>!, parameters: VariantT? = nil, flags: DBusCallFlags, timeoutMsec timeout_msec: Int, fdList fd_list: UnixFDListT? = nil, cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
        g_dbus_proxy_call_with_unix_fd_list(dbus_proxy_ptr, method_name, parameters?.variant_ptr, flags.value, gint(timeout_msec), fd_list?.unix_fd_list_ptr, cancellable?.cancellable_ptr, callback, user_data)
    
    }

    /// Finishes an operation started with `g_dbus_proxy_call_with_unix_fd_list()`.
    @inlinable func callWithUnixFdListFinish<AsyncResultT: AsyncResultProtocol>(outFdList out_fd_list: UnsafeMutablePointer<UnsafeMutablePointer<GUnixFDList>?>! = nil, res: AsyncResultT) throws -> VariantRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = VariantRef(gconstpointer: gconstpointer(g_dbus_proxy_call_with_unix_fd_list_finish(dbus_proxy_ptr, out_fd_list, res.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Like `g_dbus_proxy_call_sync()` but also takes and returns `GUnixFDList` objects.
    /// 
    /// This method is only available on UNIX.
    @inlinable func callWithUnixFdListSync<CancellableT: CancellableProtocol, UnixFDListT: UnixFDListProtocol, VariantT: VariantProtocol>(methodName method_name: UnsafePointer<gchar>!, parameters: VariantT? = nil, flags: DBusCallFlags, timeoutMsec timeout_msec: Int, fdList fd_list: UnixFDListT? = nil, outFdList out_fd_list: UnsafeMutablePointer<UnsafeMutablePointer<GUnixFDList>?>! = nil, cancellable: CancellableT? = nil) throws -> VariantRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = VariantRef(gconstpointer: gconstpointer(g_dbus_proxy_call_with_unix_fd_list_sync(dbus_proxy_ptr, method_name, parameters?.variant_ptr, flags.value, gint(timeout_msec), fd_list?.unix_fd_list_ptr, out_fd_list, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Looks up the value for a property from the cache. This call does no
    /// blocking IO.
    /// 
    /// If `proxy` has an expected interface (see
    /// `GDBusProxy:g`-interface-info) and `property_name` is referenced by
    /// it, then `value` is checked against the type of the property.
    @inlinable func getCachedProperty(propertyName property_name: UnsafePointer<gchar>!) -> VariantRef! {
        let rv = VariantRef(gconstpointer: gconstpointer(g_dbus_proxy_get_cached_property(dbus_proxy_ptr, property_name)))
        return rv
    }

    /// Gets the names of all cached properties on `proxy`.
    @inlinable func getCachedPropertyNames() -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        let rv = g_dbus_proxy_get_cached_property_names(dbus_proxy_ptr)
        return rv
    }

    /// Gets the connection `proxy` is for.
    @inlinable func getConnection() -> DBusConnectionRef! {
        let rv = DBusConnectionRef(gconstpointer: gconstpointer(g_dbus_proxy_get_connection(dbus_proxy_ptr)))
        return rv
    }

    /// Gets the timeout to use if -1 (specifying default timeout) is
    /// passed as `timeout_msec` in the `g_dbus_proxy_call()` and
    /// `g_dbus_proxy_call_sync()` functions.
    /// 
    /// See the `GDBusProxy:g`-default-timeout property for more details.
    @inlinable func getDefaultTimeout() -> Int {
        let rv = Int(g_dbus_proxy_get_default_timeout(dbus_proxy_ptr))
        return rv
    }

    /// Gets the flags that `proxy` was constructed with.
    @inlinable func getFlags() -> DBusProxyFlags {
        let rv = DBusProxyFlags(g_dbus_proxy_get_flags(dbus_proxy_ptr))
        return rv
    }

    /// Returns the `GDBusInterfaceInfo`, if any, specifying the interface
    /// that `proxy` conforms to. See the `GDBusProxy:g`-interface-info
    /// property for more details.
    @inlinable func getInterfaceInfo() -> DBusInterfaceInfoRef! {
        let rv = DBusInterfaceInfoRef(gconstpointer: gconstpointer(g_dbus_proxy_get_interface_info(dbus_proxy_ptr)))
        return rv
    }

    /// Gets the D-Bus interface name `proxy` is for.
    @inlinable func getInterfaceName() -> String! {
        let rv = g_dbus_proxy_get_interface_name(dbus_proxy_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the name that `proxy` was constructed for.
    @inlinable func getName() -> String! {
        let rv = g_dbus_proxy_get_name(dbus_proxy_ptr).map({ String(cString: $0) })
        return rv
    }

    /// The unique name that owns the name that `proxy` is for or `nil` if
    /// no-one currently owns that name. You may connect to the
    /// `GObject::notify` signal to track changes to the
    /// `GDBusProxy:g`-name-owner property.
    @inlinable func getNameOwner() -> String! {
        let rv = g_dbus_proxy_get_name_owner(dbus_proxy_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the object path `proxy` is for.
    @inlinable func getObjectPath() -> String! {
        let rv = g_dbus_proxy_get_object_path(dbus_proxy_ptr).map({ String(cString: $0) })
        return rv
    }

    /// If `value` is not `nil`, sets the cached value for the property with
    /// name `property_name` to the value in `value`.
    /// 
    /// If `value` is `nil`, then the cached value is removed from the
    /// property cache.
    /// 
    /// If `proxy` has an expected interface (see
    /// `GDBusProxy:g`-interface-info) and `property_name` is referenced by
    /// it, then `value` is checked against the type of the property.
    /// 
    /// If the `value` `GVariant` is floating, it is consumed. This allows
    /// convenient 'inline' use of `g_variant_new()`, e.g.
    /// (C Language Example):
    /// ```C
    ///  g_dbus_proxy_set_cached_property (proxy,
    ///                                    "SomeProperty",
    ///                                    g_variant_new ("(si)",
    ///                                                  "A String",
    ///                                                  42));
    /// ```
    /// 
    /// Normally you will not need to use this method since `proxy`
    /// is tracking changes using the
    /// `org.freedesktop.DBus.Properties.PropertiesChanged`
    /// D-Bus signal. However, for performance reasons an object may
    /// decide to not use this signal for some properties and instead
    /// use a proprietary out-of-band mechanism to transmit changes.
    /// 
    /// As a concrete example, consider an object with a property
    /// `ChatroomParticipants` which is an array of strings. Instead of
    /// transmitting the same (long) array every time the property changes,
    /// it is more efficient to only transmit the delta using e.g. signals
    /// ``ChatroomParticipantJoined(String name)`` and
    /// ``ChatroomParticipantParted(String name)``.
    @inlinable func setCachedProperty<VariantT: VariantProtocol>(propertyName property_name: UnsafePointer<gchar>!, value: VariantT? = nil) {
        g_dbus_proxy_set_cached_property(dbus_proxy_ptr, property_name, value?.variant_ptr)
    
    }

    /// Sets the timeout to use if -1 (specifying default timeout) is
    /// passed as `timeout_msec` in the `g_dbus_proxy_call()` and
    /// `g_dbus_proxy_call_sync()` functions.
    /// 
    /// See the `GDBusProxy:g`-default-timeout property for more details.
    @inlinable func setDefaultTimeout(timeoutMsec timeout_msec: Int) {
        g_dbus_proxy_set_default_timeout(dbus_proxy_ptr, gint(timeout_msec))
    
    }

    /// Ensure that interactions with `proxy` conform to the given
    /// interface. See the `GDBusProxy:g`-interface-info property for more
    /// details.
    @inlinable func setInterface<DBusInterfaceInfoT: DBusInterfaceInfoProtocol>(info: DBusInterfaceInfoT? = nil) {
        g_dbus_proxy_set_interface_info(dbus_proxy_ptr, info?.dbus_interface_info_ptr)
    
    }
    /// Gets the names of all cached properties on `proxy`.
    @inlinable var cachedPropertyNames: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        /// Gets the names of all cached properties on `proxy`.
        get {
            let rv = g_dbus_proxy_get_cached_property_names(dbus_proxy_ptr)
            return rv
        }
    }

    /// Gets the connection `proxy` is for.
    @inlinable var connection: DBusConnectionRef! {
        /// Gets the connection `proxy` is for.
        get {
            let rv = DBusConnectionRef(gconstpointer: gconstpointer(g_dbus_proxy_get_connection(dbus_proxy_ptr)))
            return rv
        }
    }

    /// Gets the timeout to use if -1 (specifying default timeout) is
    /// passed as `timeout_msec` in the `g_dbus_proxy_call()` and
    /// `g_dbus_proxy_call_sync()` functions.
    /// 
    /// See the `GDBusProxy:g`-default-timeout property for more details.
    @inlinable var defaultTimeout: Int {
        /// Gets the timeout to use if -1 (specifying default timeout) is
        /// passed as `timeout_msec` in the `g_dbus_proxy_call()` and
        /// `g_dbus_proxy_call_sync()` functions.
        /// 
        /// See the `GDBusProxy:g`-default-timeout property for more details.
        get {
            let rv = Int(g_dbus_proxy_get_default_timeout(dbus_proxy_ptr))
            return rv
        }
        /// Sets the timeout to use if -1 (specifying default timeout) is
        /// passed as `timeout_msec` in the `g_dbus_proxy_call()` and
        /// `g_dbus_proxy_call_sync()` functions.
        /// 
        /// See the `GDBusProxy:g`-default-timeout property for more details.
        nonmutating set {
            g_dbus_proxy_set_default_timeout(dbus_proxy_ptr, gint(newValue))
        }
    }

    /// Gets the flags that `proxy` was constructed with.
    @inlinable var flags: DBusProxyFlags {
        /// Gets the flags that `proxy` was constructed with.
        get {
            let rv = DBusProxyFlags(g_dbus_proxy_get_flags(dbus_proxy_ptr))
            return rv
        }
    }

    /// Returns the `GDBusInterfaceInfo`, if any, specifying the interface
    /// that `proxy` conforms to. See the `GDBusProxy:g`-interface-info
    /// property for more details.
    @inlinable var interfaceInfo: DBusInterfaceInfoRef! {
        /// Returns the `GDBusInterfaceInfo`, if any, specifying the interface
        /// that `proxy` conforms to. See the `GDBusProxy:g`-interface-info
        /// property for more details.
        get {
            let rv = DBusInterfaceInfoRef(gconstpointer: gconstpointer(g_dbus_proxy_get_interface_info(dbus_proxy_ptr)))
            return rv
        }
        /// Ensure that interactions with `proxy` conform to the given
        /// interface. See the `GDBusProxy:g`-interface-info property for more
        /// details.
        nonmutating set {
            g_dbus_proxy_set_interface_info(dbus_proxy_ptr, UnsafeMutablePointer<GDBusInterfaceInfo>(newValue?.dbus_interface_info_ptr))
        }
    }

    /// Gets the D-Bus interface name `proxy` is for.
    @inlinable var interfaceName: String! {
        /// Gets the D-Bus interface name `proxy` is for.
        get {
            let rv = g_dbus_proxy_get_interface_name(dbus_proxy_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the name that `proxy` was constructed for.
    @inlinable var name: String! {
        /// Gets the name that `proxy` was constructed for.
        get {
            let rv = g_dbus_proxy_get_name(dbus_proxy_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// The unique name that owns the name that `proxy` is for or `nil` if
    /// no-one currently owns that name. You may connect to the
    /// `GObject::notify` signal to track changes to the
    /// `GDBusProxy:g`-name-owner property.
    @inlinable var nameOwner: String! {
        /// The unique name that owns the name that `proxy` is for or `nil` if
        /// no-one currently owns that name. You may connect to the
        /// `GObject::notify` signal to track changes to the
        /// `GDBusProxy:g`-name-owner property.
        get {
            let rv = g_dbus_proxy_get_name_owner(dbus_proxy_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the object path `proxy` is for.
    @inlinable var objectPath: String! {
        /// Gets the object path `proxy` is for.
        get {
            let rv = g_dbus_proxy_get_object_path(dbus_proxy_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    // var parentInstance is unavailable because parent_instance is private

    // var priv is unavailable because priv is private

}



// MARK: - DBusServer Class

/// The `DBusServerProtocol` protocol exposes the methods and properties of an underlying `GDBusServer` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusServer`.
/// Alternatively, use `DBusServerRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GDBusServer` is a helper for listening to and accepting D-Bus
/// connections. This can be used to create a new D-Bus server, allowing two
/// peers to use the D-Bus protocol for their own specialized communication.
/// A server instance provided in this way will not perform message routing or
/// implement the org.freedesktop.DBus interface.
/// 
/// To just export an object on a well-known name on a message bus, such as the
/// session or system bus, you should instead use `g_bus_own_name()`.
/// 
/// An example of peer-to-peer communication with G-DBus can be found
/// in [gdbus-example-peer.c](https://git.gnome.org/browse/glib/tree/gio/tests/gdbus-example-peer.c).
/// 
/// Note that a minimal `GDBusServer` will accept connections from any
/// peer. In many use-cases it will be necessary to add a `GDBusAuthObserver`
/// that only accepts connections that have successfully authenticated
/// as the same user that is running the `GDBusServer`.
public protocol DBusServerProtocol: ObjectProtocol, InitableProtocol {
        /// Untyped pointer to the underlying `GDBusServer` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusServer` instance.
    var dbus_server_ptr: UnsafeMutablePointer<GDBusServer>! { get }

}

/// The `DBusServerRef` type acts as a lightweight Swift reference to an underlying `GDBusServer` instance.
/// It exposes methods that can operate on this data type through `DBusServerProtocol` conformance.
/// Use `DBusServerRef` only as an `unowned` reference to an existing `GDBusServer` instance.
///
/// `GDBusServer` is a helper for listening to and accepting D-Bus
/// connections. This can be used to create a new D-Bus server, allowing two
/// peers to use the D-Bus protocol for their own specialized communication.
/// A server instance provided in this way will not perform message routing or
/// implement the org.freedesktop.DBus interface.
/// 
/// To just export an object on a well-known name on a message bus, such as the
/// session or system bus, you should instead use `g_bus_own_name()`.
/// 
/// An example of peer-to-peer communication with G-DBus can be found
/// in [gdbus-example-peer.c](https://git.gnome.org/browse/glib/tree/gio/tests/gdbus-example-peer.c).
/// 
/// Note that a minimal `GDBusServer` will accept connections from any
/// peer. In many use-cases it will be necessary to add a `GDBusAuthObserver`
/// that only accepts connections that have successfully authenticated
/// as the same user that is running the `GDBusServer`.
public struct DBusServerRef: DBusServerProtocol {
        /// Untyped pointer to the underlying `GDBusServer` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_server_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusServerRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusServer>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusServer>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusServer>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusServer>?) {
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

    /// Reference intialiser for a related type that implements `DBusServerProtocol`
    @inlinable init<T: DBusServerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusServerProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusServerProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusServerProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusServerProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusServerProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new D-Bus server that listens on the first address in
    /// `address` that works.
    /// 
    /// Once constructed, you can use `g_dbus_server_get_client_address()` to
    /// get a D-Bus address string that clients can use to connect.
    /// 
    /// To have control over the available authentication mechanisms and
    /// the users that are authorized to connect, it is strongly recommended
    /// to provide a non-`nil` `GDBusAuthObserver`.
    /// 
    /// Connect to the `GDBusServer::new`-connection signal to handle
    /// incoming connections.
    /// 
    /// The returned `GDBusServer` isn't active - you have to start it with
    /// `g_dbus_server_start()`.
    /// 
    /// `GDBusServer` is used in this [example](#gdbus-peer-to-peer).
    /// 
    /// This is a synchronous failable constructor. There is currently no
    /// asynchronous version.
    @inlinable init<CancellableT: CancellableProtocol, DBusAuthObserverT: DBusAuthObserverProtocol>(sync address: UnsafePointer<gchar>!, flags: DBusServerFlags, guid: UnsafePointer<gchar>!, observer: DBusAuthObserverT? = nil, cancellable: CancellableT? = nil) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_dbus_server_new_sync(address, flags.value, guid, observer?.dbus_auth_observer_ptr, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new D-Bus server that listens on the first address in
    /// `address` that works.
    /// 
    /// Once constructed, you can use `g_dbus_server_get_client_address()` to
    /// get a D-Bus address string that clients can use to connect.
    /// 
    /// To have control over the available authentication mechanisms and
    /// the users that are authorized to connect, it is strongly recommended
    /// to provide a non-`nil` `GDBusAuthObserver`.
    /// 
    /// Connect to the `GDBusServer::new`-connection signal to handle
    /// incoming connections.
    /// 
    /// The returned `GDBusServer` isn't active - you have to start it with
    /// `g_dbus_server_start()`.
    /// 
    /// `GDBusServer` is used in this [example](#gdbus-peer-to-peer).
    /// 
    /// This is a synchronous failable constructor. There is currently no
    /// asynchronous version.
    @inlinable static func new<CancellableT: CancellableProtocol, DBusAuthObserverT: DBusAuthObserverProtocol>(sync address: UnsafePointer<gchar>!, flags: DBusServerFlags, guid: UnsafePointer<gchar>!, observer: DBusAuthObserverT? = nil, cancellable: CancellableT? = nil) throws -> DBusServerRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = DBusServerRef(gconstpointer: gconstpointer(g_dbus_server_new_sync(address, flags.value, guid, observer?.dbus_auth_observer_ptr, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }
}

/// The `DBusServer` type acts as a reference-counted owner of an underlying `GDBusServer` instance.
/// It provides the methods that can operate on this data type through `DBusServerProtocol` conformance.
/// Use `DBusServer` as a strong reference or owner of a `GDBusServer` instance.
///
/// `GDBusServer` is a helper for listening to and accepting D-Bus
/// connections. This can be used to create a new D-Bus server, allowing two
/// peers to use the D-Bus protocol for their own specialized communication.
/// A server instance provided in this way will not perform message routing or
/// implement the org.freedesktop.DBus interface.
/// 
/// To just export an object on a well-known name on a message bus, such as the
/// session or system bus, you should instead use `g_bus_own_name()`.
/// 
/// An example of peer-to-peer communication with G-DBus can be found
/// in [gdbus-example-peer.c](https://git.gnome.org/browse/glib/tree/gio/tests/gdbus-example-peer.c).
/// 
/// Note that a minimal `GDBusServer` will accept connections from any
/// peer. In many use-cases it will be necessary to add a `GDBusAuthObserver`
/// that only accepts connections that have successfully authenticated
/// as the same user that is running the `GDBusServer`.
open class DBusServer: Object, DBusServerProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusServer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDBusServer>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusServer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDBusServer>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusServer` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusServer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusServer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDBusServer>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusServer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDBusServer>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GDBusServer`.
    /// i.e., ownership is transferred to the `DBusServer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDBusServer>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DBusServerProtocol`
    /// Will retain `GDBusServer`.
    /// - Parameter other: an instance of a related type that implements `DBusServerProtocol`
    @inlinable public init<T: DBusServerProtocol>(dBusServer other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusServerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusServerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusServerProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusServerProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusServerProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusServerProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusServerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusServerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new D-Bus server that listens on the first address in
    /// `address` that works.
    /// 
    /// Once constructed, you can use `g_dbus_server_get_client_address()` to
    /// get a D-Bus address string that clients can use to connect.
    /// 
    /// To have control over the available authentication mechanisms and
    /// the users that are authorized to connect, it is strongly recommended
    /// to provide a non-`nil` `GDBusAuthObserver`.
    /// 
    /// Connect to the `GDBusServer::new`-connection signal to handle
    /// incoming connections.
    /// 
    /// The returned `GDBusServer` isn't active - you have to start it with
    /// `g_dbus_server_start()`.
    /// 
    /// `GDBusServer` is used in this [example](#gdbus-peer-to-peer).
    /// 
    /// This is a synchronous failable constructor. There is currently no
    /// asynchronous version.
    @inlinable public init<CancellableT: CancellableProtocol, DBusAuthObserverT: DBusAuthObserverProtocol>(sync address: UnsafePointer<gchar>!, flags: DBusServerFlags, guid: UnsafePointer<gchar>!, observer: DBusAuthObserverT? = nil, cancellable: CancellableT? = nil) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_dbus_server_new_sync(address, flags.value, guid, observer?.dbus_auth_observer_ptr, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
    }

    /// Creates a new D-Bus server that listens on the first address in
    /// `address` that works.
    /// 
    /// Once constructed, you can use `g_dbus_server_get_client_address()` to
    /// get a D-Bus address string that clients can use to connect.
    /// 
    /// To have control over the available authentication mechanisms and
    /// the users that are authorized to connect, it is strongly recommended
    /// to provide a non-`nil` `GDBusAuthObserver`.
    /// 
    /// Connect to the `GDBusServer::new`-connection signal to handle
    /// incoming connections.
    /// 
    /// The returned `GDBusServer` isn't active - you have to start it with
    /// `g_dbus_server_start()`.
    /// 
    /// `GDBusServer` is used in this [example](#gdbus-peer-to-peer).
    /// 
    /// This is a synchronous failable constructor. There is currently no
    /// asynchronous version.
    @inlinable public static func new<CancellableT: CancellableProtocol, DBusAuthObserverT: DBusAuthObserverProtocol>(sync address: UnsafePointer<gchar>!, flags: DBusServerFlags, guid: UnsafePointer<gchar>!, observer: DBusAuthObserverT? = nil, cancellable: CancellableT? = nil) throws -> DBusServer! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = DBusServer(gconstpointer: gconstpointer(g_dbus_server_new_sync(address, flags.value, guid, observer?.dbus_auth_observer_ptr, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

}

public enum DBusServerPropertyName: String, PropertyNameProtocol {
    /// Whether the server is currently active.
    case active = "active"
    /// The D-Bus address to listen on.
    case address = "address"
    /// A `GDBusAuthObserver` object to assist in the authentication process or `nil`.
    case authenticationObserver = "authentication-observer"
    /// The D-Bus address that clients can use.
    case clientAddress = "client-address"
    /// Flags from the `GDBusServerFlags` enumeration.
    case flags = "flags"
    /// The guid of the server.
    case guid = "guid"
}

public extension DBusServerProtocol {
    /// Bind a `DBusServerPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DBusServerPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a DBusServer property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DBusServerPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a DBusServer property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DBusServerPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DBusServerSignalName: String, SignalNameProtocol {
    /// Emitted when a new authenticated connection has been made. Use
    /// `g_dbus_connection_get_peer_credentials()` to figure out what
    /// identity (if any), was authenticated.
    /// 
    /// If you want to accept the connection, take a reference to the
    /// `connection` object and return `true`. When you are done with the
    /// connection call `g_dbus_connection_close()` and give up your
    /// reference. Note that the other peer may disconnect at any time -
    /// a typical thing to do when accepting a connection is to listen to
    /// the `GDBusConnection::closed` signal.
    /// 
    /// If `GDBusServer:flags` contains `G_DBUS_SERVER_FLAGS_RUN_IN_THREAD`
    /// then the signal is emitted in a new thread dedicated to the
    /// connection. Otherwise the signal is emitted in the
    /// [thread-default main context](#g-main-context-push-thread-default)
    /// of the thread that `server` was constructed in.
    /// 
    /// You are guaranteed that signal handlers for this signal runs
    /// before incoming messages on `connection` are processed. This means
    /// that it's suitable to call `g_dbus_connection_register_object()` or
    /// similar from the signal handler.
    case newConnection = "new-connection"
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
    /// Whether the server is currently active.
    case notifyActive = "notify::active"
    /// The D-Bus address to listen on.
    case notifyAddress = "notify::address"
    /// A `GDBusAuthObserver` object to assist in the authentication process or `nil`.
    case notifyAuthenticationObserver = "notify::authentication-observer"
    /// The D-Bus address that clients can use.
    case notifyClientAddress = "notify::client-address"
    /// Flags from the `GDBusServerFlags` enumeration.
    case notifyFlags = "notify::flags"
    /// The guid of the server.
    case notifyGuid = "notify::guid"
}

public extension DBusServerProtocol {
    /// Connect a `DBusServerSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: DBusServerSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: DBusServer Class: DBusServerProtocol extension (methods and fields)
public extension DBusServerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusServer` instance.
    @inlinable var dbus_server_ptr: UnsafeMutablePointer<GDBusServer>! { return ptr?.assumingMemoryBound(to: GDBusServer.self) }

    /// Gets a
    /// [D-Bus address](https://dbus.freedesktop.org/doc/dbus-specification.html`addresses`)
    /// string that can be used by clients to connect to `server`.
    @inlinable func getClientAddress() -> String! {
        let rv = g_dbus_server_get_client_address(dbus_server_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the flags for `server`.
    @inlinable func getFlags() -> DBusServerFlags {
        let rv = DBusServerFlags(g_dbus_server_get_flags(dbus_server_ptr))
        return rv
    }

    /// Gets the GUID for `server`.
    @inlinable func getGuid() -> String! {
        let rv = g_dbus_server_get_guid(dbus_server_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Starts `server`.
    @inlinable func start() {
        g_dbus_server_start(dbus_server_ptr)
    
    }

    /// Stops `server`.
    @inlinable func stop() {
        g_dbus_server_stop(dbus_server_ptr)
    
    }
    /// Gets a
    /// [D-Bus address](https://dbus.freedesktop.org/doc/dbus-specification.html`addresses`)
    /// string that can be used by clients to connect to `server`.
    @inlinable var clientAddress: String! {
        /// Gets a
        /// [D-Bus address](https://dbus.freedesktop.org/doc/dbus-specification.html`addresses`)
        /// string that can be used by clients to connect to `server`.
        get {
            let rv = g_dbus_server_get_client_address(dbus_server_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Flags from the `GDBusServerFlags` enumeration.
    @inlinable var flags: DBusServerFlags {
        /// Gets the flags for `server`.
        get {
            let rv = DBusServerFlags(g_dbus_server_get_flags(dbus_server_ptr))
            return rv
        }
    }

    /// The guid of the server.
    @inlinable var guid: String! {
        /// Gets the GUID for `server`.
        get {
            let rv = g_dbus_server_get_guid(dbus_server_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets whether `server` is active.
    @inlinable var isActive: Bool {
        /// Gets whether `server` is active.
        get {
            let rv = ((g_dbus_server_is_active(dbus_server_ptr)) != 0)
            return rv
        }
    }


}



// MARK: - DataInputStream Class

/// The `DataInputStreamProtocol` protocol exposes the methods and properties of an underlying `GDataInputStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DataInputStream`.
/// Alternatively, use `DataInputStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Data input stream implements `GInputStream` and includes functions for
/// reading structured data directly from a binary input stream.
public protocol DataInputStreamProtocol: BufferedInputStreamProtocol {
        /// Untyped pointer to the underlying `GDataInputStream` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDataInputStream` instance.
    var data_input_stream_ptr: UnsafeMutablePointer<GDataInputStream>! { get }

}

/// The `DataInputStreamRef` type acts as a lightweight Swift reference to an underlying `GDataInputStream` instance.
/// It exposes methods that can operate on this data type through `DataInputStreamProtocol` conformance.
/// Use `DataInputStreamRef` only as an `unowned` reference to an existing `GDataInputStream` instance.
///
/// Data input stream implements `GInputStream` and includes functions for
/// reading structured data directly from a binary input stream.
public struct DataInputStreamRef: DataInputStreamProtocol {
        /// Untyped pointer to the underlying `GDataInputStream` instance.
    /// For type-safe access, use the generated, typed pointer `data_input_stream_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DataInputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDataInputStream>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDataInputStream>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDataInputStream>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDataInputStream>?) {
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

    /// Reference intialiser for a related type that implements `DataInputStreamProtocol`
    @inlinable init<T: DataInputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new data input stream for the `base_stream`.
    @inlinable init<InputStreamT: InputStreamProtocol>( base_stream: InputStreamT) {
        let rv = g_data_input_stream_new(base_stream.input_stream_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `DataInputStream` type acts as a reference-counted owner of an underlying `GDataInputStream` instance.
/// It provides the methods that can operate on this data type through `DataInputStreamProtocol` conformance.
/// Use `DataInputStream` as a strong reference or owner of a `GDataInputStream` instance.
///
/// Data input stream implements `GInputStream` and includes functions for
/// reading structured data directly from a binary input stream.
open class DataInputStream: BufferedInputStream, DataInputStreamProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DataInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDataInputStream>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DataInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDataInputStream>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DataInputStream` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DataInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DataInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDataInputStream>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DataInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDataInputStream>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GDataInputStream`.
    /// i.e., ownership is transferred to the `DataInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDataInputStream>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DataInputStreamProtocol`
    /// Will retain `GDataInputStream`.
    /// - Parameter other: an instance of a related type that implements `DataInputStreamProtocol`
    @inlinable public init<T: DataInputStreamProtocol>(dataInputStream other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new data input stream for the `base_stream`.
    @inlinable public override init<InputStreamT: InputStreamProtocol>( base_stream: InputStreamT) {
        let rv = g_data_input_stream_new(base_stream.input_stream_ptr)
        super.init(gpointer: (rv))
    }


}

public enum DataInputStreamPropertyName: String, PropertyNameProtocol {
    case baseStream = "base-stream"
    case bufferSize = "buffer-size"
    case byteOrder = "byte-order"
    case closeBaseStream = "close-base-stream"
    case newlineType = "newline-type"
}

public extension DataInputStreamProtocol {
    /// Bind a `DataInputStreamPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DataInputStreamPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a DataInputStream property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DataInputStreamPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a DataInputStream property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DataInputStreamPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DataInputStreamSignalName: String, SignalNameProtocol {
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
    case notifyBaseStream = "notify::base-stream"
    case notifyBufferSize = "notify::buffer-size"
    case notifyByteOrder = "notify::byte-order"
    case notifyCloseBaseStream = "notify::close-base-stream"
    case notifyNewlineType = "notify::newline-type"
}

public extension DataInputStreamProtocol {
    /// Connect a `DataInputStreamSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: DataInputStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: DataInputStream Class: DataInputStreamProtocol extension (methods and fields)
public extension DataInputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDataInputStream` instance.
    @inlinable var data_input_stream_ptr: UnsafeMutablePointer<GDataInputStream>! { return ptr?.assumingMemoryBound(to: GDataInputStream.self) }

    /// Gets the byte order for the data input stream.
    @inlinable func getByteOrder() -> GDataStreamByteOrder {
        let rv = g_data_input_stream_get_byte_order(data_input_stream_ptr)
        return rv
    }

    /// Gets the current newline type for the `stream`.
    @inlinable func getNewlineType() -> GDataStreamNewlineType {
        let rv = g_data_input_stream_get_newline_type(data_input_stream_ptr)
        return rv
    }

    /// Reads an unsigned 8-bit/1-byte value from `stream`.
    @inlinable func readByte<CancellableT: CancellableProtocol>(cancellable: CancellableT? = nil) throws -> guchar {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_data_input_stream_read_byte(data_input_stream_ptr, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Reads a 16-bit/2-byte value from `stream`.
    /// 
    /// In order to get the correct byte order for this read operation,
    /// see `g_data_input_stream_get_byte_order()` and `g_data_input_stream_set_byte_order()`.
    @inlinable func readInt16<CancellableT: CancellableProtocol>(cancellable: CancellableT? = nil) throws -> gint16 {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_data_input_stream_read_int16(data_input_stream_ptr, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Reads a signed 32-bit/4-byte value from `stream`.
    /// 
    /// In order to get the correct byte order for this read operation,
    /// see `g_data_input_stream_get_byte_order()` and `g_data_input_stream_set_byte_order()`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func readInt32<CancellableT: CancellableProtocol>(cancellable: CancellableT? = nil) throws -> gint32 {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_data_input_stream_read_int32(data_input_stream_ptr, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Reads a 64-bit/8-byte value from `stream`.
    /// 
    /// In order to get the correct byte order for this read operation,
    /// see `g_data_input_stream_get_byte_order()` and `g_data_input_stream_set_byte_order()`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func readInt64<CancellableT: CancellableProtocol>(cancellable: CancellableT? = nil) throws -> gint64 {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_data_input_stream_read_int64(data_input_stream_ptr, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Reads a line from the data input stream.  Note that no encoding
    /// checks or conversion is performed; the input is not guaranteed to
    /// be UTF-8, and may in fact have embedded NUL characters.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func readLine<CancellableT: CancellableProtocol>(length: UnsafeMutablePointer<gsize>! = nil, cancellable: CancellableT? = nil) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_data_input_stream_read_line(data_input_stream_ptr, length, cancellable?.cancellable_ptr, &error).map({ String(cString: $0) })
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// The asynchronous version of `g_data_input_stream_read_line()`.  It is
    /// an error to have two outstanding calls to this function.
    /// 
    /// When the operation is finished, `callback` will be called. You
    /// can then call `g_data_input_stream_read_line_finish()` to get
    /// the result of the operation.
    @inlinable func readLineAsync<CancellableT: CancellableProtocol>(ioPriority io_priority: Int, cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
        g_data_input_stream_read_line_async(data_input_stream_ptr, gint(io_priority), cancellable?.cancellable_ptr, callback, user_data)
    
    }

    /// Finish an asynchronous call started by
    /// `g_data_input_stream_read_line_async()`.  Note the warning about
    /// string encoding in `g_data_input_stream_read_line()` applies here as
    /// well.
    @inlinable func readLineFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT, length: UnsafeMutablePointer<gsize>! = nil) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_data_input_stream_read_line_finish(data_input_stream_ptr, result.async_result_ptr, length, &error).map({ String(cString: $0) })
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Finish an asynchronous call started by
    /// `g_data_input_stream_read_line_async()`.
    @inlinable func readLineFinishUTF8<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT, length: UnsafeMutablePointer<gsize>! = nil) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_data_input_stream_read_line_finish_utf8(data_input_stream_ptr, result.async_result_ptr, length, &error).map({ String(cString: $0) })
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Reads a UTF-8 encoded line from the data input stream.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func readLineUTF8<CancellableT: CancellableProtocol>(length: UnsafeMutablePointer<gsize>! = nil, cancellable: CancellableT? = nil) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_data_input_stream_read_line_utf8(data_input_stream_ptr, length, cancellable?.cancellable_ptr, &error).map({ String(cString: $0) })
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Reads an unsigned 16-bit/2-byte value from `stream`.
    /// 
    /// In order to get the correct byte order for this read operation,
    /// see `g_data_input_stream_get_byte_order()` and `g_data_input_stream_set_byte_order()`.
    @inlinable func readUint16<CancellableT: CancellableProtocol>(cancellable: CancellableT? = nil) throws -> guint16 {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_data_input_stream_read_uint16(data_input_stream_ptr, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Reads an unsigned 32-bit/4-byte value from `stream`.
    /// 
    /// In order to get the correct byte order for this read operation,
    /// see `g_data_input_stream_get_byte_order()` and `g_data_input_stream_set_byte_order()`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func readUint32<CancellableT: CancellableProtocol>(cancellable: CancellableT? = nil) throws -> guint32 {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_data_input_stream_read_uint32(data_input_stream_ptr, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Reads an unsigned 64-bit/8-byte value from `stream`.
    /// 
    /// In order to get the correct byte order for this read operation,
    /// see `g_data_input_stream_get_byte_order()`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func readUint64<CancellableT: CancellableProtocol>(cancellable: CancellableT? = nil) throws -> guint64 {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_data_input_stream_read_uint64(data_input_stream_ptr, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Reads a string from the data input stream, up to the first
    /// occurrence of any of the stop characters.
    /// 
    /// Note that, in contrast to `g_data_input_stream_read_until_async()`,
    /// this function consumes the stop character that it finds.
    /// 
    /// Don't use this function in new code.  Its functionality is
    /// inconsistent with `g_data_input_stream_read_until_async()`.  Both
    /// functions will be marked as deprecated in a future release.  Use
    /// `g_data_input_stream_read_upto()` instead, but note that that function
    /// does not consume the stop character.
    ///
    /// **read_until is deprecated:**
    /// Use g_data_input_stream_read_upto() instead, which has more
    ///     consistent behaviour regarding the stop character.
    @available(*, deprecated) @inlinable func readUntil<CancellableT: CancellableProtocol>(stopChars stop_chars: UnsafePointer<gchar>!, length: UnsafeMutablePointer<gsize>! = nil, cancellable: CancellableT? = nil) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_data_input_stream_read_until(data_input_stream_ptr, stop_chars, length, cancellable?.cancellable_ptr, &error).map({ String(cString: $0) })
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// The asynchronous version of `g_data_input_stream_read_until()`.
    /// It is an error to have two outstanding calls to this function.
    /// 
    /// Note that, in contrast to `g_data_input_stream_read_until()`,
    /// this function does not consume the stop character that it finds.  You
    /// must read it for yourself.
    /// 
    /// When the operation is finished, `callback` will be called. You
    /// can then call `g_data_input_stream_read_until_finish()` to get
    /// the result of the operation.
    /// 
    /// Don't use this function in new code.  Its functionality is
    /// inconsistent with `g_data_input_stream_read_until()`.  Both functions
    /// will be marked as deprecated in a future release.  Use
    /// `g_data_input_stream_read_upto_async()` instead.
    ///
    /// **read_until_async is deprecated:**
    /// Use g_data_input_stream_read_upto_async() instead, which
    ///     has more consistent behaviour regarding the stop character.
    @available(*, deprecated) @inlinable func readUntilAsync<CancellableT: CancellableProtocol>(stopChars stop_chars: UnsafePointer<gchar>!, ioPriority io_priority: Int, cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
        g_data_input_stream_read_until_async(data_input_stream_ptr, stop_chars, gint(io_priority), cancellable?.cancellable_ptr, callback, user_data)
    
    }

    /// Finish an asynchronous call started by
    /// `g_data_input_stream_read_until_async()`.
    ///
    /// **read_until_finish is deprecated:**
    /// Use g_data_input_stream_read_upto_finish() instead, which
    ///     has more consistent behaviour regarding the stop character.
    @available(*, deprecated) @inlinable func readUntilFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT, length: UnsafeMutablePointer<gsize>! = nil) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_data_input_stream_read_until_finish(data_input_stream_ptr, result.async_result_ptr, length, &error).map({ String(cString: $0) })
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Reads a string from the data input stream, up to the first
    /// occurrence of any of the stop characters.
    /// 
    /// In contrast to `g_data_input_stream_read_until()`, this function
    /// does not consume the stop character. You have to use
    /// `g_data_input_stream_read_byte()` to get it before calling
    /// `g_data_input_stream_read_upto()` again.
    /// 
    /// Note that `stop_chars` may contain '\0' if `stop_chars_len` is
    /// specified.
    /// 
    /// The returned string will always be nul-terminated on success.
    @inlinable func readUpto<CancellableT: CancellableProtocol>(stopChars stop_chars: UnsafePointer<gchar>!, stopCharsLen stop_chars_len: gssize, length: UnsafeMutablePointer<gsize>! = nil, cancellable: CancellableT? = nil) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_data_input_stream_read_upto(data_input_stream_ptr, stop_chars, stop_chars_len, length, cancellable?.cancellable_ptr, &error).map({ String(cString: $0) })
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// The asynchronous version of `g_data_input_stream_read_upto()`.
    /// It is an error to have two outstanding calls to this function.
    /// 
    /// In contrast to `g_data_input_stream_read_until()`, this function
    /// does not consume the stop character. You have to use
    /// `g_data_input_stream_read_byte()` to get it before calling
    /// `g_data_input_stream_read_upto()` again.
    /// 
    /// Note that `stop_chars` may contain '\0' if `stop_chars_len` is
    /// specified.
    /// 
    /// When the operation is finished, `callback` will be called. You
    /// can then call `g_data_input_stream_read_upto_finish()` to get
    /// the result of the operation.
    @inlinable func readUptoAsync<CancellableT: CancellableProtocol>(stopChars stop_chars: UnsafePointer<gchar>!, stopCharsLen stop_chars_len: gssize, ioPriority io_priority: Int, cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
        g_data_input_stream_read_upto_async(data_input_stream_ptr, stop_chars, stop_chars_len, gint(io_priority), cancellable?.cancellable_ptr, callback, user_data)
    
    }

    /// Finish an asynchronous call started by
    /// `g_data_input_stream_read_upto_async()`.
    /// 
    /// Note that this function does not consume the stop character. You
    /// have to use `g_data_input_stream_read_byte()` to get it before calling
    /// `g_data_input_stream_read_upto_async()` again.
    /// 
    /// The returned string will always be nul-terminated on success.
    @inlinable func readUptoFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT, length: UnsafeMutablePointer<gsize>! = nil) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_data_input_stream_read_upto_finish(data_input_stream_ptr, result.async_result_ptr, length, &error).map({ String(cString: $0) })
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// This function sets the byte order for the given `stream`. All subsequent
    /// reads from the `stream` will be read in the given `order`.
    @inlinable func setByte(order: GDataStreamByteOrder) {
        g_data_input_stream_set_byte_order(data_input_stream_ptr, order)
    
    }

    /// Sets the newline type for the `stream`.
    /// 
    /// Note that using G_DATA_STREAM_NEWLINE_TYPE_ANY is slightly unsafe. If a read
    /// chunk ends in "CR" we must read an additional byte to know if this is "CR" or
    /// "CR LF", and this might block if there is no more data available.
    @inlinable func setNewline(type: GDataStreamNewlineType) {
        g_data_input_stream_set_newline_type(data_input_stream_ptr, type)
    
    }
    /// Gets the byte order for the data input stream.
    @inlinable var byteOrder: GDataStreamByteOrder {
        /// Gets the byte order for the data input stream.
        get {
            let rv = g_data_input_stream_get_byte_order(data_input_stream_ptr)
            return rv
        }
        /// This function sets the byte order for the given `stream`. All subsequent
        /// reads from the `stream` will be read in the given `order`.
        nonmutating set {
            g_data_input_stream_set_byte_order(data_input_stream_ptr, newValue)
        }
    }

    /// Gets the current newline type for the `stream`.
    @inlinable var newlineType: GDataStreamNewlineType {
        /// Gets the current newline type for the `stream`.
        get {
            let rv = g_data_input_stream_get_newline_type(data_input_stream_ptr)
            return rv
        }
        /// Sets the newline type for the `stream`.
        /// 
        /// Note that using G_DATA_STREAM_NEWLINE_TYPE_ANY is slightly unsafe. If a read
        /// chunk ends in "CR" we must read an additional byte to know if this is "CR" or
        /// "CR LF", and this might block if there is no more data available.
        nonmutating set {
            g_data_input_stream_set_newline_type(data_input_stream_ptr, newValue)
        }
    }

    @inlinable var parentInstance: GBufferedInputStream {
        get {
            let rv = data_input_stream_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - DataOutputStream Class

/// The `DataOutputStreamProtocol` protocol exposes the methods and properties of an underlying `GDataOutputStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DataOutputStream`.
/// Alternatively, use `DataOutputStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Data output stream implements `GOutputStream` and includes functions for
/// writing data directly to an output stream.
public protocol DataOutputStreamProtocol: FilterOutputStreamProtocol, SeekableProtocol {
        /// Untyped pointer to the underlying `GDataOutputStream` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDataOutputStream` instance.
    var data_output_stream_ptr: UnsafeMutablePointer<GDataOutputStream>! { get }

}

/// The `DataOutputStreamRef` type acts as a lightweight Swift reference to an underlying `GDataOutputStream` instance.
/// It exposes methods that can operate on this data type through `DataOutputStreamProtocol` conformance.
/// Use `DataOutputStreamRef` only as an `unowned` reference to an existing `GDataOutputStream` instance.
///
/// Data output stream implements `GOutputStream` and includes functions for
/// writing data directly to an output stream.
public struct DataOutputStreamRef: DataOutputStreamProtocol {
        /// Untyped pointer to the underlying `GDataOutputStream` instance.
    /// For type-safe access, use the generated, typed pointer `data_output_stream_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DataOutputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDataOutputStream>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDataOutputStream>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDataOutputStream>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDataOutputStream>?) {
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

    /// Reference intialiser for a related type that implements `DataOutputStreamProtocol`
    @inlinable init<T: DataOutputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new data output stream for `base_stream`.
    @inlinable init<OutputStreamT: OutputStreamProtocol>( base_stream: OutputStreamT) {
        let rv = g_data_output_stream_new(base_stream.output_stream_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `DataOutputStream` type acts as a reference-counted owner of an underlying `GDataOutputStream` instance.
/// It provides the methods that can operate on this data type through `DataOutputStreamProtocol` conformance.
/// Use `DataOutputStream` as a strong reference or owner of a `GDataOutputStream` instance.
///
/// Data output stream implements `GOutputStream` and includes functions for
/// writing data directly to an output stream.
open class DataOutputStream: FilterOutputStream, DataOutputStreamProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DataOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDataOutputStream>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DataOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDataOutputStream>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DataOutputStream` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DataOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DataOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDataOutputStream>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DataOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDataOutputStream>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GDataOutputStream`.
    /// i.e., ownership is transferred to the `DataOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDataOutputStream>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DataOutputStreamProtocol`
    /// Will retain `GDataOutputStream`.
    /// - Parameter other: an instance of a related type that implements `DataOutputStreamProtocol`
    @inlinable public init<T: DataOutputStreamProtocol>(dataOutputStream other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new data output stream for `base_stream`.
    @inlinable public init<OutputStreamT: OutputStreamProtocol>( base_stream: OutputStreamT) {
        let rv = g_data_output_stream_new(base_stream.output_stream_ptr)
        super.init(gpointer: (rv))
    }


}

public enum DataOutputStreamPropertyName: String, PropertyNameProtocol {
    case baseStream = "base-stream"
    /// Determines the byte ordering that is used when writing
    /// multi-byte entities (such as integers) to the stream.
    case byteOrder = "byte-order"
    case closeBaseStream = "close-base-stream"
}

public extension DataOutputStreamProtocol {
    /// Bind a `DataOutputStreamPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DataOutputStreamPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a DataOutputStream property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DataOutputStreamPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a DataOutputStream property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DataOutputStreamPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DataOutputStreamSignalName: String, SignalNameProtocol {
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
    case notifyBaseStream = "notify::base-stream"
    /// Determines the byte ordering that is used when writing
    /// multi-byte entities (such as integers) to the stream.
    case notifyByteOrder = "notify::byte-order"
    case notifyCloseBaseStream = "notify::close-base-stream"
}

public extension DataOutputStreamProtocol {
    /// Connect a `DataOutputStreamSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: DataOutputStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: DataOutputStream Class: DataOutputStreamProtocol extension (methods and fields)
public extension DataOutputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDataOutputStream` instance.
    @inlinable var data_output_stream_ptr: UnsafeMutablePointer<GDataOutputStream>! { return ptr?.assumingMemoryBound(to: GDataOutputStream.self) }

    /// Gets the byte order for the stream.
    @inlinable func getByteOrder() -> GDataStreamByteOrder {
        let rv = g_data_output_stream_get_byte_order(data_output_stream_ptr)
        return rv
    }

    /// Puts a byte into the output stream.
    @inlinable func putByte<CancellableT: CancellableProtocol>(data: guchar, cancellable: CancellableT? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_data_output_stream_put_byte(data_output_stream_ptr, data, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Puts a signed 16-bit integer into the output stream.
    @inlinable func putInt16<CancellableT: CancellableProtocol>(data: gint16, cancellable: CancellableT? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_data_output_stream_put_int16(data_output_stream_ptr, data, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Puts a signed 32-bit integer into the output stream.
    @inlinable func putInt32<CancellableT: CancellableProtocol>(data: gint32, cancellable: CancellableT? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_data_output_stream_put_int32(data_output_stream_ptr, data, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Puts a signed 64-bit integer into the stream.
    @inlinable func putInt64<CancellableT: CancellableProtocol>(data: gint64, cancellable: CancellableT? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_data_output_stream_put_int64(data_output_stream_ptr, data, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Puts a string into the output stream.
    @inlinable func putString<CancellableT: CancellableProtocol>(str: UnsafePointer<CChar>!, cancellable: CancellableT? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_data_output_stream_put_string(data_output_stream_ptr, str, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Puts an unsigned 16-bit integer into the output stream.
    @inlinable func putUint16<CancellableT: CancellableProtocol>(data: guint16, cancellable: CancellableT? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_data_output_stream_put_uint16(data_output_stream_ptr, data, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Puts an unsigned 32-bit integer into the stream.
    @inlinable func putUint32<CancellableT: CancellableProtocol>(data: guint32, cancellable: CancellableT? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_data_output_stream_put_uint32(data_output_stream_ptr, data, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Puts an unsigned 64-bit integer into the stream.
    @inlinable func putUint64<CancellableT: CancellableProtocol>(data: guint64, cancellable: CancellableT? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_data_output_stream_put_uint64(data_output_stream_ptr, data, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Sets the byte order of the data output stream to `order`.
    @inlinable func setByte(order: GDataStreamByteOrder) {
        g_data_output_stream_set_byte_order(data_output_stream_ptr, order)
    
    }
    /// Gets the byte order for the stream.
    @inlinable var byteOrder: GDataStreamByteOrder {
        /// Gets the byte order for the stream.
        get {
            let rv = g_data_output_stream_get_byte_order(data_output_stream_ptr)
            return rv
        }
        /// Sets the byte order of the data output stream to `order`.
        nonmutating set {
            g_data_output_stream_set_byte_order(data_output_stream_ptr, newValue)
        }
    }

    @inlinable var parentInstance: GFilterOutputStream {
        get {
            let rv = data_output_stream_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - Emblem Class

/// The `EmblemProtocol` protocol exposes the methods and properties of an underlying `GEmblem` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Emblem`.
/// Alternatively, use `EmblemRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GEmblem` is an implementation of `GIcon` that supports
/// having an emblem, which is an icon with additional properties.
/// It can than be added to a `GEmblemedIcon`.
/// 
/// Currently, only metainformation about the emblem's origin is
/// supported. More may be added in the future.
public protocol EmblemProtocol: ObjectProtocol, IconProtocol {
        /// Untyped pointer to the underlying `GEmblem` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GEmblem` instance.
    var emblem_ptr: UnsafeMutablePointer<GEmblem>! { get }

}

/// The `EmblemRef` type acts as a lightweight Swift reference to an underlying `GEmblem` instance.
/// It exposes methods that can operate on this data type through `EmblemProtocol` conformance.
/// Use `EmblemRef` only as an `unowned` reference to an existing `GEmblem` instance.
///
/// `GEmblem` is an implementation of `GIcon` that supports
/// having an emblem, which is an icon with additional properties.
/// It can than be added to a `GEmblemedIcon`.
/// 
/// Currently, only metainformation about the emblem's origin is
/// supported. More may be added in the future.
public struct EmblemRef: EmblemProtocol {
        /// Untyped pointer to the underlying `GEmblem` instance.
    /// For type-safe access, use the generated, typed pointer `emblem_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EmblemRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GEmblem>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GEmblem>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GEmblem>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GEmblem>?) {
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

    /// Reference intialiser for a related type that implements `EmblemProtocol`
    @inlinable init<T: EmblemProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new emblem for `icon`.
    @inlinable init<IconT: IconProtocol>( icon: IconT) {
        let rv = g_emblem_new(icon.icon_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new emblem for `icon`.
    @inlinable init<IconT: IconProtocol>(origin icon: IconT, origin: GEmblemOrigin) {
        let rv = g_emblem_new_with_origin(icon.icon_ptr, origin)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new emblem for `icon`.
    @inlinable static func newWith<IconT: IconProtocol>(origin icon: IconT, origin: GEmblemOrigin) -> EmblemRef! {
        guard let rv = EmblemRef(gconstpointer: gconstpointer(g_emblem_new_with_origin(icon.icon_ptr, origin))) else { return nil }
        return rv
    }
}

/// The `Emblem` type acts as a reference-counted owner of an underlying `GEmblem` instance.
/// It provides the methods that can operate on this data type through `EmblemProtocol` conformance.
/// Use `Emblem` as a strong reference or owner of a `GEmblem` instance.
///
/// `GEmblem` is an implementation of `GIcon` that supports
/// having an emblem, which is an icon with additional properties.
/// It can than be added to a `GEmblemedIcon`.
/// 
/// Currently, only metainformation about the emblem's origin is
/// supported. More may be added in the future.
open class Emblem: Object, EmblemProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Emblem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GEmblem>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Emblem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GEmblem>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Emblem` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Emblem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Emblem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GEmblem>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Emblem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GEmblem>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GEmblem`.
    /// i.e., ownership is transferred to the `Emblem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GEmblem>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `EmblemProtocol`
    /// Will retain `GEmblem`.
    /// - Parameter other: an instance of a related type that implements `EmblemProtocol`
    @inlinable public init<T: EmblemProtocol>(emblem other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new emblem for `icon`.
    @inlinable public init<IconT: IconProtocol>( icon: IconT) {
        let rv = g_emblem_new(icon.icon_ptr)
        super.init(gpointer: (rv))
    }

    /// Creates a new emblem for `icon`.
    @inlinable public init<IconT: IconProtocol>(origin icon: IconT, origin: GEmblemOrigin) {
        let rv = g_emblem_new_with_origin(icon.icon_ptr, origin)
        super.init(gpointer: (rv))
    }

    /// Creates a new emblem for `icon`.
    @inlinable public static func newWith<IconT: IconProtocol>(origin icon: IconT, origin: GEmblemOrigin) -> Emblem! {
        guard let rv = Emblem(gconstpointer: gconstpointer(g_emblem_new_with_origin(icon.icon_ptr, origin))) else { return nil }
        return rv
    }

}

public enum EmblemPropertyName: String, PropertyNameProtocol {
    case icon = "icon"
    case origin = "origin"
}

public extension EmblemProtocol {
    /// Bind a `EmblemPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: EmblemPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Emblem property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: EmblemPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Emblem property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: EmblemPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum EmblemSignalName: String, SignalNameProtocol {
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
    case notifyIcon = "notify::icon"
    case notifyOrigin = "notify::origin"
}

public extension EmblemProtocol {
    /// Connect a `EmblemSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: EmblemSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: Emblem Class: EmblemProtocol extension (methods and fields)
public extension EmblemProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GEmblem` instance.
    @inlinable var emblem_ptr: UnsafeMutablePointer<GEmblem>! { return ptr?.assumingMemoryBound(to: GEmblem.self) }

    /// Gives back the icon from `emblem`.
    @inlinable func getIcon() -> IconRef! {
        let rv = IconRef(gconstpointer: gconstpointer(g_emblem_get_icon(emblem_ptr)))
        return rv
    }

    /// Gets the origin of the emblem.
    @inlinable func getOrigin() -> GEmblemOrigin {
        let rv = g_emblem_get_origin(emblem_ptr)
        return rv
    }
    @inlinable var icon: IconRef! {
        /// Gives back the icon from `emblem`.
        get {
            let rv = IconRef(gconstpointer: gconstpointer(g_emblem_get_icon(emblem_ptr)))
            return rv
        }
    }

    @inlinable var origin: GEmblemOrigin {
        /// Gets the origin of the emblem.
        get {
            let rv = g_emblem_get_origin(emblem_ptr)
            return rv
        }
    }


}



