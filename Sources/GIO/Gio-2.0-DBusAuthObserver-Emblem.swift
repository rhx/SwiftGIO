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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusAuthObserver` instance.
    var dbus_auth_observer_ptr: UnsafeMutablePointer<GDBusAuthObserver> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusAuthObserverRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusAuthObserver>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusAuthObserverProtocol`
    init<T: DBusAuthObserverProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAuthObserverProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAuthObserverProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAuthObserverProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAuthObserverProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAuthObserverProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GDBusAuthObserver` object.
    init() {
        let rv = g_dbus_auth_observer_new()
        self.init(cast(rv))
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
    /// Ownership is transferred to the `DBusAuthObserver` instance.
    public init(_ op: UnsafeMutablePointer<GDBusAuthObserver>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `DBusAuthObserverProtocol`
    /// Will retain `GDBusAuthObserver`.
    public convenience init<T: DBusAuthObserverProtocol>(_ other: T) {
        self.init(cast(other.dbus_auth_observer_ptr))
        g_object_ref(cast(dbus_auth_observer_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAuthObserverProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusAuthObserver.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAuthObserverProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusAuthObserver.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAuthObserverProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusAuthObserver.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAuthObserverProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusAuthObserver>(opaquePointer))
    }

    /// Creates a new `GDBusAuthObserver` object.
    public convenience init() {
        let rv = g_dbus_auth_observer_new()
        self.init(cast(rv))
    }


}

// MARK: - no DBusAuthObserver properties

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
    @discardableResult func connect(signal kind: DBusAuthObserverSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(dbus_auth_observer_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension DBusAuthObserverProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusAuthObserver` instance.
    var dbus_auth_observer_ptr: UnsafeMutablePointer<GDBusAuthObserver> { return ptr.assumingMemoryBound(to: GDBusAuthObserver.self) }

    /// Emits the `GDBusAuthObserver::allow`-mechanism signal on `observer`.
    func allow(mechanism: UnsafePointer<gchar>) -> Bool {
        let rv = g_dbus_auth_observer_allow_mechanism(cast(dbus_auth_observer_ptr), mechanism)
        return Bool(rv != 0)
    }

    /// Emits the `GDBusAuthObserver::authorize`-authenticated-peer signal on `observer`.
    func authorizeAuthenticatedPeer(stream: IOStreamProtocol, credentials: CredentialsProtocol) -> Bool {
        let rv = g_dbus_auth_observer_authorize_authenticated_peer(cast(dbus_auth_observer_ptr), cast(stream.ptr), cast(credentials.ptr))
        return Bool(rv != 0)
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusConnection` instance.
    var dbus_connection_ptr: UnsafeMutablePointer<GDBusConnection> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusConnectionRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusConnection>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusConnectionProtocol`
    init<T: DBusConnectionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusConnectionProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusConnectionProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusConnectionProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusConnectionProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusConnectionProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Finishes an operation started with `g_dbus_connection_new()`.
    init(finish res: AsyncResultProtocol) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_connection_new_finish(cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }

    /// Finishes an operation started with `g_dbus_connection_new_for_address()`.
    init(addressFinish res: AsyncResultProtocol) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_connection_new_for_address_finish(cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
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
    init(addressSync address: UnsafePointer<gchar>, flags: DBusConnectionFlags, observer: DBusAuthObserverProtocol, cancellable: CancellableProtocol) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_connection_new_for_address_sync(address, flags, cast(observer.ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
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
    init(sync stream: IOStreamProtocol, guid: UnsafePointer<gchar>, flags: DBusConnectionFlags, observer: DBusAuthObserverProtocol, cancellable: CancellableProtocol) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_connection_new_sync(cast(stream.ptr), guid, flags, cast(observer.ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }
    /// Finishes an operation started with `g_dbus_connection_new()`.
    static func new(finish res: AsyncResultProtocol) throws -> DBusConnectionRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_connection_new_finish(cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { DBusConnectionRef(cast($0)) }
    }

    /// Finishes an operation started with `g_dbus_connection_new_for_address()`.
    static func newFor(addressFinish res: AsyncResultProtocol) throws -> DBusConnectionRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_connection_new_for_address_finish(cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { DBusConnectionRef(cast($0)) }
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
    static func newFor(addressSync address: UnsafePointer<gchar>, flags: DBusConnectionFlags, observer: DBusAuthObserverProtocol, cancellable: CancellableProtocol) throws -> DBusConnectionRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_connection_new_for_address_sync(address, flags, cast(observer.ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { DBusConnectionRef(cast($0)) }
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
    static func new(sync stream: IOStreamProtocol, guid: UnsafePointer<gchar>, flags: DBusConnectionFlags, observer: DBusAuthObserverProtocol, cancellable: CancellableProtocol) throws -> DBusConnectionRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_connection_new_sync(cast(stream.ptr), guid, flags, cast(observer.ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { DBusConnectionRef(cast($0)) }
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
    /// Ownership is transferred to the `DBusConnection` instance.
    public init(_ op: UnsafeMutablePointer<GDBusConnection>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `DBusConnectionProtocol`
    /// Will retain `GDBusConnection`.
    public convenience init<T: DBusConnectionProtocol>(_ other: T) {
        self.init(cast(other.dbus_connection_ptr))
        g_object_ref(cast(dbus_connection_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusConnectionProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusConnection.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusConnectionProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusConnection.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusConnectionProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusConnection.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusConnectionProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusConnection>(opaquePointer))
    }

    /// Finishes an operation started with `g_dbus_connection_new()`.
    public convenience init(finish res: AsyncResultProtocol) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_connection_new_finish(cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }

    /// Finishes an operation started with `g_dbus_connection_new_for_address()`.
    public convenience init(addressFinish res: AsyncResultProtocol) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_connection_new_for_address_finish(cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
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
    public convenience init(addressSync address: UnsafePointer<gchar>, flags: DBusConnectionFlags, observer: DBusAuthObserverProtocol, cancellable: CancellableProtocol) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_connection_new_for_address_sync(address, flags, cast(observer.ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
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
    public convenience init(sync stream: IOStreamProtocol, guid: UnsafePointer<gchar>, flags: DBusConnectionFlags, observer: DBusAuthObserverProtocol, cancellable: CancellableProtocol) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_connection_new_sync(cast(stream.ptr), guid, flags, cast(observer.ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }

    /// Finishes an operation started with `g_dbus_connection_new()`.
    public static func new(finish res: AsyncResultProtocol) throws -> DBusConnection! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_connection_new_finish(cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { DBusConnection(cast($0)) }
    }

    /// Finishes an operation started with `g_dbus_connection_new_for_address()`.
    public static func newFor(addressFinish res: AsyncResultProtocol) throws -> DBusConnection! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_connection_new_for_address_finish(cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { DBusConnection(cast($0)) }
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
    public static func newFor(addressSync address: UnsafePointer<gchar>, flags: DBusConnectionFlags, observer: DBusAuthObserverProtocol, cancellable: CancellableProtocol) throws -> DBusConnection! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_connection_new_for_address_sync(address, flags, cast(observer.ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { DBusConnection(cast($0)) }
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
    public static func new(sync stream: IOStreamProtocol, guid: UnsafePointer<gchar>, flags: DBusConnectionFlags, observer: DBusAuthObserverProtocol, cancellable: CancellableProtocol) throws -> DBusConnection! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_connection_new_sync(cast(stream.ptr), guid, flags, cast(observer.ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { DBusConnection(cast($0)) }
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DBusConnectionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(dbus_connection_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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
    @discardableResult func connect(signal kind: DBusConnectionSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(dbus_connection_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension DBusConnectionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusConnection` instance.
    var dbus_connection_ptr: UnsafeMutablePointer<GDBusConnection> { return ptr.assumingMemoryBound(to: GDBusConnection.self) }

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
    func addFilter(filterFunction filter_function: @escaping DBusMessageFilterFunction, userData user_data: UnsafeMutableRawPointer, userDataFreeFunc user_data_free_func: @escaping GLib.DestroyNotify) -> CUnsignedInt {
        let rv = g_dbus_connection_add_filter(cast(dbus_connection_ptr), filter_function, cast(user_data), user_data_free_func)
        return CUnsignedInt(rv)
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
    func call(busName bus_name: UnsafePointer<gchar>, objectPath object_path: UnsafePointer<gchar>, interfaceName interface_name: UnsafePointer<gchar>, methodName method_name: UnsafePointer<gchar>, parameters: VariantProtocol, replyType reply_type: VariantTypeProtocol, flags: DBusCallFlags, timeoutMsec timeout_msec: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_dbus_connection_call(cast(dbus_connection_ptr), bus_name, object_path, interface_name, method_name, cast(parameters.ptr), cast(reply_type.ptr), flags, gint(timeout_msec), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an operation started with `g_dbus_connection_call()`.
    func callFinish(res: AsyncResultProtocol) throws -> UnsafeMutablePointer<GVariant>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_connection_call_finish(cast(dbus_connection_ptr), cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
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
    func callSync(busName bus_name: UnsafePointer<gchar>, objectPath object_path: UnsafePointer<gchar>, interfaceName interface_name: UnsafePointer<gchar>, methodName method_name: UnsafePointer<gchar>, parameters: VariantProtocol, replyType reply_type: VariantTypeProtocol, flags: DBusCallFlags, timeoutMsec timeout_msec: CInt, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GVariant>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_connection_call_sync(cast(dbus_connection_ptr), bus_name, object_path, interface_name, method_name, cast(parameters.ptr), cast(reply_type.ptr), flags, gint(timeout_msec), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Like `g_dbus_connection_call()` but also takes a `GUnixFDList` object.
    /// 
    /// This method is only available on UNIX.
    func callWithUnixFdList(busName bus_name: UnsafePointer<gchar>, objectPath object_path: UnsafePointer<gchar>, interfaceName interface_name: UnsafePointer<gchar>, methodName method_name: UnsafePointer<gchar>, parameters: VariantProtocol, replyType reply_type: VariantTypeProtocol, flags: DBusCallFlags, timeoutMsec timeout_msec: CInt, fdList fd_list: UnixFDListProtocol, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_dbus_connection_call_with_unix_fd_list(cast(dbus_connection_ptr), bus_name, object_path, interface_name, method_name, cast(parameters.ptr), cast(reply_type.ptr), flags, gint(timeout_msec), cast(fd_list.ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an operation started with `g_dbus_connection_call_with_unix_fd_list()`.
    func callWithUnixFdListFinish(outFdList out_fd_list: UnixFDListProtocol, res: AsyncResultProtocol) throws -> UnsafeMutablePointer<GVariant>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_connection_call_with_unix_fd_list_finish(cast(dbus_connection_ptr), cast(out_fd_list.ptr), cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Like `g_dbus_connection_call_sync()` but also takes and returns `GUnixFDList` objects.
    /// 
    /// This method is only available on UNIX.
    func callWithUnixFdListSync(busName bus_name: UnsafePointer<gchar>, objectPath object_path: UnsafePointer<gchar>, interfaceName interface_name: UnsafePointer<gchar>, methodName method_name: UnsafePointer<gchar>, parameters: VariantProtocol, replyType reply_type: VariantTypeProtocol, flags: DBusCallFlags, timeoutMsec timeout_msec: CInt, fdList fd_list: UnixFDListProtocol, outFdList out_fd_list: UnixFDListProtocol, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GVariant>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_connection_call_with_unix_fd_list_sync(cast(dbus_connection_ptr), bus_name, object_path, interface_name, method_name, cast(parameters.ptr), cast(reply_type.ptr), flags, gint(timeout_msec), cast(fd_list.ptr), cast(out_fd_list.ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
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
    func close(cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_dbus_connection_close(cast(dbus_connection_ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an operation started with `g_dbus_connection_close()`.
    func closeFinish(res: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_connection_close_finish(cast(dbus_connection_ptr), cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Synchronously closes `connection`. The calling thread is blocked
    /// until this is done. See `g_dbus_connection_close()` for the
    /// asynchronous version of this method and more details about what it
    /// does.
    func closeSync(cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_connection_close_sync(cast(dbus_connection_ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Emits a signal.
    /// 
    /// If the parameters GVariant is floating, it is consumed.
    /// 
    /// This can only fail if `parameters` is not compatible with the D-Bus protocol
    /// (`G_IO_ERROR_INVALID_ARGUMENT`), or if `connection` has been closed
    /// (`G_IO_ERROR_CLOSED`).
    func emitSignal(destinationBusName destination_bus_name: UnsafePointer<gchar>, objectPath object_path: UnsafePointer<gchar>, interfaceName interface_name: UnsafePointer<gchar>, signalName signal_name: UnsafePointer<gchar>, parameters: VariantProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_connection_emit_signal(cast(dbus_connection_ptr), destination_bus_name, object_path, interface_name, signal_name, cast(parameters.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
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
    func exportActionGroup(objectPath object_path: UnsafePointer<gchar>, actionGroup action_group: ActionGroupProtocol) throws -> CUnsignedInt {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_connection_export_action_group(cast(dbus_connection_ptr), object_path, cast(action_group.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return CUnsignedInt(rv)
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
    func exportMenuModel(objectPath object_path: UnsafePointer<gchar>, menu: MenuModelProtocol) throws -> CUnsignedInt {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_connection_export_menu_model(cast(dbus_connection_ptr), object_path, cast(menu.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return CUnsignedInt(rv)
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
    func flush(cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_dbus_connection_flush(cast(dbus_connection_ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an operation started with `g_dbus_connection_flush()`.
    func flushFinish(res: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_connection_flush_finish(cast(dbus_connection_ptr), cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Synchronously flushes `connection`. The calling thread is blocked
    /// until this is done. See `g_dbus_connection_flush()` for the
    /// asynchronous version of this method and more details about what it
    /// does.
    func flushSync(cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_connection_flush_sync(cast(dbus_connection_ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Gets the capabilities negotiated with the remote peer
    func getCapabilities() -> GDBusCapabilityFlags {
        let rv = g_dbus_connection_get_capabilities(cast(dbus_connection_ptr))
        return rv
    }

    /// Gets whether the process is terminated when `connection` is
    /// closed by the remote peer. See
    /// `GDBusConnection:exit`-on-close for more details.
    func getExitOnClose() -> Bool {
        let rv = g_dbus_connection_get_exit_on_close(cast(dbus_connection_ptr))
        return Bool(rv != 0)
    }

    /// Gets the flags used to construct this connection
    func getFlags() -> GDBusConnectionFlags {
        let rv = g_dbus_connection_get_flags(cast(dbus_connection_ptr))
        return rv
    }

    /// The GUID of the peer performing the role of server when
    /// authenticating. See `GDBusConnection:guid` for more details.
    func getGuid() -> String! {
        let rv = g_dbus_connection_get_guid(cast(dbus_connection_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Retrieves the last serial number assigned to a `GDBusMessage` on
    /// the current thread. This includes messages sent via both low-level
    /// API such as `g_dbus_connection_send_message()` as well as
    /// high-level API such as `g_dbus_connection_emit_signal()`,
    /// `g_dbus_connection_call()` or `g_dbus_proxy_call()`.
    func getLastSerial() -> UInt32 {
        let rv = g_dbus_connection_get_last_serial(cast(dbus_connection_ptr))
        return UInt32(rv)
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
    func getPeerCredentials() -> UnsafeMutablePointer<GCredentials>! {
        let rv = g_dbus_connection_get_peer_credentials(cast(dbus_connection_ptr))
        return cast(rv)
    }

    /// Gets the underlying stream used for IO.
    /// 
    /// While the `GDBusConnection` is active, it will interact with this
    /// stream from a worker thread, so it is not safe to interact with
    /// the stream directly.
    func getStream() -> UnsafeMutablePointer<GIOStream>! {
        let rv = g_dbus_connection_get_stream(cast(dbus_connection_ptr))
        return cast(rv)
    }

    /// Gets the unique name of `connection` as assigned by the message
    /// bus. This can also be used to figure out if `connection` is a
    /// message bus connection.
    func getUniqueName() -> String! {
        let rv = g_dbus_connection_get_unique_name(cast(dbus_connection_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
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
    func registerObject(objectPath object_path: UnsafePointer<gchar>, interfaceInfo interface_info: DBusInterfaceInfoProtocol, vtable: DBusInterfaceVTableProtocol, userData user_data: UnsafeMutableRawPointer, userDataFreeFunc user_data_free_func: @escaping GLib.DestroyNotify) throws -> CUnsignedInt {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_connection_register_object(cast(dbus_connection_ptr), object_path, cast(interface_info.ptr), cast(vtable.ptr), cast(user_data), user_data_free_func, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return CUnsignedInt(rv)
    }

    /// Version of `g_dbus_connection_register_object()` using closures instead of a
    /// `GDBusInterfaceVTable` for easier binding in other languages.
    func registerObjectWithClosures(objectPath object_path: UnsafePointer<gchar>, interfaceInfo interface_info: DBusInterfaceInfoProtocol, methodCallClosure method_call_closure: ClosureProtocol, getPropertyClosure get_property_closure: ClosureProtocol, setPropertyClosure set_property_closure: ClosureProtocol) throws -> CUnsignedInt {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_connection_register_object_with_closures(cast(dbus_connection_ptr), object_path, cast(interface_info.ptr), cast(method_call_closure.ptr), cast(get_property_closure.ptr), cast(set_property_closure.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return CUnsignedInt(rv)
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
    func registerSubtree(objectPath object_path: UnsafePointer<gchar>, vtable: DBusSubtreeVTableProtocol, flags: DBusSubtreeFlags, userData user_data: UnsafeMutableRawPointer, userDataFreeFunc user_data_free_func: @escaping GLib.DestroyNotify) throws -> CUnsignedInt {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_connection_register_subtree(cast(dbus_connection_ptr), object_path, cast(vtable.ptr), flags, cast(user_data), user_data_free_func, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return CUnsignedInt(rv)
    }

    /// Removes a filter.
    /// 
    /// Note that since filters run in a different thread, there is a race
    /// condition where it is possible that the filter will be running even
    /// after calling `g_dbus_connection_remove_filter()`, so you cannot just
    /// free data that the filter might be using. Instead, you should pass
    /// a `GDestroyNotify` to `g_dbus_connection_add_filter()`, which will be
    /// called when it is guaranteed that the data is no longer needed.
    func removeFilter(filterID filter_id: CUnsignedInt) {
        g_dbus_connection_remove_filter(cast(dbus_connection_ptr), guint(filter_id))
    
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
    func send(message: DBusMessageProtocol, flags: DBusSendMessageFlags, outSerial out_serial: UnsafeMutablePointer<UInt32>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_connection_send_message(cast(dbus_connection_ptr), cast(message.ptr), flags, cast(out_serial), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
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
    func sendMessageWithReply(message: DBusMessageProtocol, flags: DBusSendMessageFlags, timeoutMsec timeout_msec: CInt, outSerial out_serial: UnsafeMutablePointer<UInt32>, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_dbus_connection_send_message_with_reply(cast(dbus_connection_ptr), cast(message.ptr), flags, gint(timeout_msec), cast(out_serial), cast(cancellable.ptr), callback, cast(user_data))
    
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
    func sendMessageWithReplyFinish(res: AsyncResultProtocol) throws -> UnsafeMutablePointer<GDBusMessage>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_connection_send_message_with_reply_finish(cast(dbus_connection_ptr), cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
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
    func sendMessageWithReplySync(message: DBusMessageProtocol, flags: DBusSendMessageFlags, timeoutMsec timeout_msec: CInt, outSerial out_serial: UnsafeMutablePointer<UInt32>, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GDBusMessage>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_connection_send_message_with_reply_sync(cast(dbus_connection_ptr), cast(message.ptr), flags, gint(timeout_msec), cast(out_serial), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
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
    func set(exitOnClose exit_on_close: Bool) {
        g_dbus_connection_set_exit_on_close(cast(dbus_connection_ptr), gboolean(exit_on_close ? 1 : 0))
    
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
    /// The returned subscription identifier is an opaque value which is guaranteed
    /// to never be zero.
    /// 
    /// This function can never fail.
    func signalSubscribe(sender: UnsafePointer<gchar>, interfaceName interface_name: UnsafePointer<gchar>, member: UnsafePointer<gchar>, objectPath object_path: UnsafePointer<gchar>, arg0: UnsafePointer<gchar>, flags: DBusSignalFlags, callback: @escaping DBusSignalCallback, userData user_data: UnsafeMutableRawPointer, userDataFreeFunc user_data_free_func: @escaping GLib.DestroyNotify) -> CUnsignedInt {
        let rv = g_dbus_connection_signal_subscribe(cast(dbus_connection_ptr), sender, interface_name, member, object_path, arg0, flags, callback, cast(user_data), user_data_free_func)
        return CUnsignedInt(rv)
    }

    /// Unsubscribes from signals.
    func signalUnsubscribe(subscriptionID subscription_id: CUnsignedInt) {
        g_dbus_connection_signal_unsubscribe(cast(dbus_connection_ptr), guint(subscription_id))
    
    }

    /// If `connection` was created with
    /// `G_DBUS_CONNECTION_FLAGS_DELAY_MESSAGE_PROCESSING`, this method
    /// starts processing messages. Does nothing on if `connection` wasn't
    /// created with this flag or if the method has already been called.
    func startMessageProcessing() {
        g_dbus_connection_start_message_processing(cast(dbus_connection_ptr))
    
    }

    /// Reverses the effect of a previous call to
    /// `g_dbus_connection_export_action_group()`.
    /// 
    /// It is an error to call this function with an ID that wasn't returned
    /// from `g_dbus_connection_export_action_group()` or to call it with the
    /// same ID more than once.
    func unexportActionGroup(exportID export_id: CUnsignedInt) {
        g_dbus_connection_unexport_action_group(cast(dbus_connection_ptr), guint(export_id))
    
    }

    /// Reverses the effect of a previous call to
    /// `g_dbus_connection_export_menu_model()`.
    /// 
    /// It is an error to call this function with an ID that wasn't returned
    /// from `g_dbus_connection_export_menu_model()` or to call it with the
    /// same ID more than once.
    func unexportMenuModel(exportID export_id: CUnsignedInt) {
        g_dbus_connection_unexport_menu_model(cast(dbus_connection_ptr), guint(export_id))
    
    }

    /// Unregisters an object.
    func unregisterObject(registrationID registration_id: CUnsignedInt) -> Bool {
        let rv = g_dbus_connection_unregister_object(cast(dbus_connection_ptr), guint(registration_id))
        return Bool(rv != 0)
    }

    /// Unregisters a subtree.
    func unregisterSubtree(registrationID registration_id: CUnsignedInt) -> Bool {
        let rv = g_dbus_connection_unregister_subtree(cast(dbus_connection_ptr), guint(registration_id))
        return Bool(rv != 0)
    }

    /// Like `g_bus_own_name()` but takes a `GDBusConnection` instead of a
    /// `GBusType`.
    func busOwnNameOnConnection(name: UnsafePointer<gchar>, flags: BusNameOwnerFlags, nameAcquiredHandler name_acquired_handler: @escaping BusNameAcquiredCallback, nameLostHandler name_lost_handler: @escaping BusNameLostCallback, userData user_data: UnsafeMutableRawPointer, userDataFreeFunc user_data_free_func: @escaping GLib.DestroyNotify) -> CUnsignedInt {
        let rv = g_bus_own_name_on_connection(cast(dbus_connection_ptr), name, flags, name_acquired_handler, name_lost_handler, cast(user_data), user_data_free_func)
        return CUnsignedInt(rv)
    }

    /// Version of `g_bus_own_name_on_connection()` using closures instead of
    /// callbacks for easier binding in other languages.
    func busOwnNameOnConnectionWithClosures(name: UnsafePointer<gchar>, flags: BusNameOwnerFlags, nameAcquiredClosure name_acquired_closure: ClosureProtocol, nameLostClosure name_lost_closure: ClosureProtocol) -> CUnsignedInt {
        let rv = g_bus_own_name_on_connection_with_closures(cast(dbus_connection_ptr), name, flags, cast(name_acquired_closure.ptr), cast(name_lost_closure.ptr))
        return CUnsignedInt(rv)
    }

    /// Like `g_bus_watch_name()` but takes a `GDBusConnection` instead of a
    /// `GBusType`.
    func busWatchNameOnConnection(name: UnsafePointer<gchar>, flags: BusNameWatcherFlags, nameAppearedHandler name_appeared_handler: @escaping BusNameAppearedCallback, nameVanishedHandler name_vanished_handler: @escaping BusNameVanishedCallback, userData user_data: UnsafeMutableRawPointer, userDataFreeFunc user_data_free_func: @escaping GLib.DestroyNotify) -> CUnsignedInt {
        let rv = g_bus_watch_name_on_connection(cast(dbus_connection_ptr), name, flags, name_appeared_handler, name_vanished_handler, cast(user_data), user_data_free_func)
        return CUnsignedInt(rv)
    }

    /// Version of `g_bus_watch_name_on_connection()` using closures instead of callbacks for
    /// easier binding in other languages.
    func busWatchNameOnConnectionWithClosures(name: UnsafePointer<gchar>, flags: BusNameWatcherFlags, nameAppearedClosure name_appeared_closure: ClosureProtocol, nameVanishedClosure name_vanished_closure: ClosureProtocol) -> CUnsignedInt {
        let rv = g_bus_watch_name_on_connection_with_closures(cast(dbus_connection_ptr), name, flags, cast(name_appeared_closure.ptr), cast(name_vanished_closure.ptr))
        return CUnsignedInt(rv)
    }
    /// Flags from the `GDBusCapabilityFlags` enumeration
    /// representing connection features negotiated with the other peer.
    var capabilities: GDBusCapabilityFlags {
        /// Gets the capabilities negotiated with the remote peer
        get {
            let rv = g_dbus_connection_get_capabilities(cast(dbus_connection_ptr))
            return rv
        }
    }

    /// Gets whether the process is terminated when `connection` is
    /// closed by the remote peer. See
    /// `GDBusConnection:exit`-on-close for more details.
    var exitOnClose: Bool {
        /// Gets whether the process is terminated when `connection` is
        /// closed by the remote peer. See
        /// `GDBusConnection:exit`-on-close for more details.
        get {
            let rv = g_dbus_connection_get_exit_on_close(cast(dbus_connection_ptr))
            return Bool(rv != 0)
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
            g_dbus_connection_set_exit_on_close(cast(dbus_connection_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Flags from the `GDBusConnectionFlags` enumeration.
    var flags: GDBusConnectionFlags {
        /// Gets the flags used to construct this connection
        get {
            let rv = g_dbus_connection_get_flags(cast(dbus_connection_ptr))
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
    var guid: String! {
        /// The GUID of the peer performing the role of server when
        /// authenticating. See `GDBusConnection:guid` for more details.
        get {
            let rv = g_dbus_connection_get_guid(cast(dbus_connection_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets whether `connection` is closed.
    var isClosed: Bool {
        /// Gets whether `connection` is closed.
        get {
            let rv = g_dbus_connection_is_closed(cast(dbus_connection_ptr))
            return Bool(rv != 0)
        }
    }

    /// Retrieves the last serial number assigned to a `GDBusMessage` on
    /// the current thread. This includes messages sent via both low-level
    /// API such as `g_dbus_connection_send_message()` as well as
    /// high-level API such as `g_dbus_connection_emit_signal()`,
    /// `g_dbus_connection_call()` or `g_dbus_proxy_call()`.
    var lastSerial: UInt32 {
        /// Retrieves the last serial number assigned to a `GDBusMessage` on
        /// the current thread. This includes messages sent via both low-level
        /// API such as `g_dbus_connection_send_message()` as well as
        /// high-level API such as `g_dbus_connection_emit_signal()`,
        /// `g_dbus_connection_call()` or `g_dbus_proxy_call()`.
        get {
            let rv = g_dbus_connection_get_last_serial(cast(dbus_connection_ptr))
            return UInt32(rv)
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
    var peerCredentials: UnsafeMutablePointer<GCredentials>! {
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
            let rv = g_dbus_connection_get_peer_credentials(cast(dbus_connection_ptr))
            return cast(rv)
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
    var stream: UnsafeMutablePointer<GIOStream>! {
        /// Gets the underlying stream used for IO.
        /// 
        /// While the `GDBusConnection` is active, it will interact with this
        /// stream from a worker thread, so it is not safe to interact with
        /// the stream directly.
        get {
            let rv = g_dbus_connection_get_stream(cast(dbus_connection_ptr))
            return cast(rv)
        }
    }

    /// Gets the unique name of `connection` as assigned by the message
    /// bus. This can also be used to figure out if `connection` is a
    /// message bus connection.
    var uniqueName: String! {
        /// Gets the unique name of `connection` as assigned by the message
        /// bus. This can also be used to figure out if `connection` is a
        /// message bus connection.
        get {
            let rv = g_dbus_connection_get_unique_name(cast(dbus_connection_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusInterfaceSkeleton` instance.
    var dbus_interface_skeleton_ptr: UnsafeMutablePointer<GDBusInterfaceSkeleton> { get }
}

/// The `DBusInterfaceSkeletonRef` type acts as a lightweight Swift reference to an underlying `GDBusInterfaceSkeleton` instance.
/// It exposes methods that can operate on this data type through `DBusInterfaceSkeletonProtocol` conformance.
/// Use `DBusInterfaceSkeletonRef` only as an `unowned` reference to an existing `GDBusInterfaceSkeleton` instance.
///
/// Abstract base class for D-Bus interfaces on the service side.
public struct DBusInterfaceSkeletonRef: DBusInterfaceSkeletonProtocol {
    /// Untyped pointer to the underlying `GDBusInterfaceSkeleton` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_interface_skeleton_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusInterfaceSkeletonRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusInterfaceSkeleton>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusInterfaceSkeletonProtocol`
    init<T: DBusInterfaceSkeletonProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    /// Ownership is transferred to the `DBusInterfaceSkeleton` instance.
    public init(_ op: UnsafeMutablePointer<GDBusInterfaceSkeleton>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `DBusInterfaceSkeletonProtocol`
    /// Will retain `GDBusInterfaceSkeleton`.
    public convenience init<T: DBusInterfaceSkeletonProtocol>(_ other: T) {
        self.init(cast(other.dbus_interface_skeleton_ptr))
        g_object_ref(cast(dbus_interface_skeleton_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusInterfaceSkeleton.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusInterfaceSkeleton.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusInterfaceSkeleton.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusInterfaceSkeleton>(opaquePointer))
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DBusInterfaceSkeletonPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(dbus_interface_skeleton_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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
    @discardableResult func connect(signal kind: DBusInterfaceSkeletonSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(dbus_interface_skeleton_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension DBusInterfaceSkeletonProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusInterfaceSkeleton` instance.
    var dbus_interface_skeleton_ptr: UnsafeMutablePointer<GDBusInterfaceSkeleton> { return ptr.assumingMemoryBound(to: GDBusInterfaceSkeleton.self) }

    /// Exports `interface_` at `object_path` on `connection`.
    /// 
    /// This can be called multiple times to export the same `interface_`
    /// onto multiple connections however the `object_path` provided must be
    /// the same for all connections.
    /// 
    /// Use `g_dbus_interface_skeleton_unexport()` to unexport the object.
    func export(connection: DBusConnectionProtocol, objectPath object_path: UnsafePointer<gchar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_interface_skeleton_export(cast(dbus_interface_skeleton_ptr), cast(connection.ptr), object_path, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// If `interface_` has outstanding changes, request for these changes to be
    /// emitted immediately.
    /// 
    /// For example, an exported D-Bus interface may queue up property
    /// changes and emit the
    /// `org.freedesktop.DBus.Properties.PropertiesChanged`
    /// signal later (e.g. in an idle handler). This technique is useful
    /// for collapsing multiple property changes into one.
    func flush() {
        g_dbus_interface_skeleton_flush(cast(dbus_interface_skeleton_ptr))
    
    }

    /// Gets the first connection that `interface_` is exported on, if any.
    func getConnection() -> UnsafeMutablePointer<GDBusConnection>! {
        let rv = g_dbus_interface_skeleton_get_connection(cast(dbus_interface_skeleton_ptr))
        return cast(rv)
    }

    /// Gets a list of the connections that `interface_` is exported on.
    func getConnections() -> UnsafeMutablePointer<GList>! {
        let rv = g_dbus_interface_skeleton_get_connections(cast(dbus_interface_skeleton_ptr))
        return cast(rv)
    }

    /// Gets the `GDBusInterfaceSkeletonFlags` that describes what the behavior
    /// of `interface_`
    func getFlags() -> GDBusInterfaceSkeletonFlags {
        let rv = g_dbus_interface_skeleton_get_flags(cast(dbus_interface_skeleton_ptr))
        return rv
    }

    /// Gets D-Bus introspection information for the D-Bus interface
    /// implemented by `interface_`.
    func getInfo() -> UnsafeMutablePointer<GDBusInterfaceInfo>! {
        let rv = g_dbus_interface_skeleton_get_info(cast(dbus_interface_skeleton_ptr))
        return cast(rv)
    }

    /// Gets the object path that `interface_` is exported on, if any.
    func getObjectPath() -> String! {
        let rv = g_dbus_interface_skeleton_get_object_path(cast(dbus_interface_skeleton_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets all D-Bus properties for `interface_`.
    func getProperties() -> UnsafeMutablePointer<GVariant>! {
        let rv = g_dbus_interface_skeleton_get_properties(cast(dbus_interface_skeleton_ptr))
        return cast(rv)
    }

    /// Gets the interface vtable for the D-Bus interface implemented by
    /// `interface_`. The returned function pointers should expect `interface_`
    /// itself to be passed as `user_data`.
    func getVtable() -> UnsafeMutablePointer<GDBusInterfaceVTable>! {
        let rv = g_dbus_interface_skeleton_get_vtable(cast(dbus_interface_skeleton_ptr))
        return cast(rv)
    }

    /// Checks if `interface_` is exported on `connection`.
    func has(connection: DBusConnectionProtocol) -> Bool {
        let rv = g_dbus_interface_skeleton_has_connection(cast(dbus_interface_skeleton_ptr), cast(connection.ptr))
        return Bool(rv != 0)
    }

    /// Sets flags describing what the behavior of `skeleton` should be.
    func set(flags: DBusInterfaceSkeletonFlags) {
        g_dbus_interface_skeleton_set_flags(cast(dbus_interface_skeleton_ptr), flags)
    
    }

    /// Stops exporting `interface_` on all connections it is exported on.
    /// 
    /// To unexport `interface_` from only a single connection, use
    /// `g_dbus_interface_skeleton_unexport_from_connection()`
    func unexport() {
        g_dbus_interface_skeleton_unexport(cast(dbus_interface_skeleton_ptr))
    
    }

    /// Stops exporting `interface_` on `connection`.
    /// 
    /// To stop exporting on all connections the interface is exported on,
    /// use `g_dbus_interface_skeleton_unexport()`.
    func unexportFrom(connection: DBusConnectionProtocol) {
        g_dbus_interface_skeleton_unexport_from_connection(cast(dbus_interface_skeleton_ptr), cast(connection.ptr))
    
    }
    /// Gets the first connection that `interface_` is exported on, if any.
    var connection: UnsafeMutablePointer<GDBusConnection>! {
        /// Gets the first connection that `interface_` is exported on, if any.
        get {
            let rv = g_dbus_interface_skeleton_get_connection(cast(dbus_interface_skeleton_ptr))
            return cast(rv)
        }
    }

    /// Gets a list of the connections that `interface_` is exported on.
    var connections: UnsafeMutablePointer<GList>! {
        /// Gets a list of the connections that `interface_` is exported on.
        get {
            let rv = g_dbus_interface_skeleton_get_connections(cast(dbus_interface_skeleton_ptr))
            return cast(rv)
        }
    }

    /// Gets the `GDBusInterfaceSkeletonFlags` that describes what the behavior
    /// of `interface_`
    var flags: GDBusInterfaceSkeletonFlags {
        /// Gets the `GDBusInterfaceSkeletonFlags` that describes what the behavior
        /// of `interface_`
        get {
            let rv = g_dbus_interface_skeleton_get_flags(cast(dbus_interface_skeleton_ptr))
            return rv
        }
        /// Sets flags describing what the behavior of `skeleton` should be.
        nonmutating set {
            g_dbus_interface_skeleton_set_flags(cast(dbus_interface_skeleton_ptr), newValue)
        }
    }

    /// Gets D-Bus introspection information for the D-Bus interface
    /// implemented by `interface_`.
    var info: UnsafeMutablePointer<GDBusInterfaceInfo>! {
        /// Gets D-Bus introspection information for the D-Bus interface
        /// implemented by `interface_`.
        get {
            let rv = g_dbus_interface_skeleton_get_info(cast(dbus_interface_skeleton_ptr))
            return cast(rv)
        }
    }

    /// Gets the object path that `interface_` is exported on, if any.
    var objectPath: String! {
        /// Gets the object path that `interface_` is exported on, if any.
        get {
            let rv = g_dbus_interface_skeleton_get_object_path(cast(dbus_interface_skeleton_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets all D-Bus properties for `interface_`.
    var properties: UnsafeMutablePointer<GVariant>! {
        /// Gets all D-Bus properties for `interface_`.
        get {
            let rv = g_dbus_interface_skeleton_get_properties(cast(dbus_interface_skeleton_ptr))
            return cast(rv)
        }
    }

    /// Gets the interface vtable for the D-Bus interface implemented by
    /// `interface_`. The returned function pointers should expect `interface_`
    /// itself to be passed as `user_data`.
    var vtable: UnsafeMutablePointer<GDBusInterfaceVTable>! {
        /// Gets the interface vtable for the D-Bus interface implemented by
        /// `interface_`. The returned function pointers should expect `interface_`
        /// itself to be passed as `user_data`.
        get {
            let rv = g_dbus_interface_skeleton_get_vtable(cast(dbus_interface_skeleton_ptr))
            return cast(rv)
        }
    }
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusMenuModel` instance.
    var dbus_menu_model_ptr: UnsafeMutablePointer<GDBusMenuModel> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusMenuModelRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusMenuModel>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusMenuModelProtocol`
    init<T: DBusMenuModelProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMenuModelProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMenuModelProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMenuModelProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMenuModelProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMenuModelProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    static func dbusMenuModelGet(connection: DBusConnectionProtocol, busName bus_name: UnsafePointer<gchar>, objectPath object_path: UnsafePointer<gchar>) -> DBusMenuModelRef! {
        let rv = g_dbus_menu_model_get(cast(connection.ptr), bus_name, object_path)
        return rv.map { DBusMenuModelRef(cast($0)) }
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
    /// Ownership is transferred to the `DBusMenuModel` instance.
    public init(_ op: UnsafeMutablePointer<GDBusMenuModel>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `DBusMenuModelProtocol`
    /// Will retain `GDBusMenuModel`.
    public convenience init<T: DBusMenuModelProtocol>(_ other: T) {
        self.init(cast(other.dbus_menu_model_ptr))
        g_object_ref(cast(dbus_menu_model_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMenuModelProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusMenuModel.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMenuModelProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusMenuModel.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMenuModelProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusMenuModel.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMenuModelProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusMenuModel>(opaquePointer))
    }


    /// Obtains a `GDBusMenuModel` for the menu model which is exported
    /// at the given `bus_name` and `object_path`.
    /// 
    /// The thread default main context is taken at the time of this call.
    /// All signals on the menu model (and any linked models) are reported
    /// with respect to this context.  All calls on the returned menu model
    /// (and linked models) must also originate from this same context, with
    /// the thread default main context unchanged.
    public static func dbusMenuModelGet(connection: DBusConnectionProtocol, busName bus_name: UnsafePointer<gchar>, objectPath object_path: UnsafePointer<gchar>) -> DBusMenuModel! {
        let rv = g_dbus_menu_model_get(cast(connection.ptr), bus_name, object_path)
        return rv.map { DBusMenuModel(cast($0)) }
    }

}

// MARK: - no DBusMenuModel properties

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
    @discardableResult func connect(signal kind: DBusMenuModelSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(dbus_menu_model_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension DBusMenuModelProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusMenuModel` instance.
    var dbus_menu_model_ptr: UnsafeMutablePointer<GDBusMenuModel> { return ptr.assumingMemoryBound(to: GDBusMenuModel.self) }

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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusMessage` instance.
    var dbus_message_ptr: UnsafeMutablePointer<GDBusMessage> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusMessageRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusMessage>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusMessageProtocol`
    init<T: DBusMessageProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMessageProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMessageProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMessageProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMessageProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMessageProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new empty `GDBusMessage`.
    init() {
        let rv = g_dbus_message_new()
        self.init(cast(rv))
    }

    /// Creates a new `GDBusMessage` from the data stored at `blob`. The byte
    /// order that the message was in can be retrieved using
    /// `g_dbus_message_get_byte_order()`.
    /// 
    /// If the `blob` cannot be parsed, contains invalid fields, or contains invalid
    /// headers, `G_IO_ERROR_INVALID_ARGUMENT` will be returned.
    init(blob: UnsafeMutablePointer<guchar>, blobLen blob_len: Int, capabilities: DBusCapabilityFlags) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_message_new_from_blob(cast(blob), gsize(blob_len), capabilities, &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }

    /// Creates a new `GDBusMessage` for a method call.
    init(method_call name: UnsafePointer<gchar>, path: UnsafePointer<gchar>, interface_: UnsafePointer<gchar>, method: UnsafePointer<gchar>) {
        let rv = g_dbus_message_new_method_call(name, path, interface_, method)
        self.init(cast(rv))
    }

    /// Creates a new `GDBusMessage` for a signal emission.
    init(signal path: UnsafePointer<gchar>, interface_: UnsafePointer<gchar>, signal: UnsafePointer<gchar>) {
        let rv = g_dbus_message_new_signal(path, interface_, signal)
        self.init(cast(rv))
    }
    /// Creates a new `GDBusMessage` from the data stored at `blob`. The byte
    /// order that the message was in can be retrieved using
    /// `g_dbus_message_get_byte_order()`.
    /// 
    /// If the `blob` cannot be parsed, contains invalid fields, or contains invalid
    /// headers, `G_IO_ERROR_INVALID_ARGUMENT` will be returned.
    static func newFrom(blob: UnsafeMutablePointer<guchar>, blobLen blob_len: Int, capabilities: DBusCapabilityFlags) throws -> DBusMessageRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_message_new_from_blob(cast(blob), gsize(blob_len), capabilities, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { DBusMessageRef(cast($0)) }
    }

    /// Creates a new `GDBusMessage` for a method call.
    static func newMethodCall(method_call name: UnsafePointer<gchar>, path: UnsafePointer<gchar>, interface_: UnsafePointer<gchar>, method: UnsafePointer<gchar>) -> DBusMessageRef! {
        let rv = g_dbus_message_new_method_call(name, path, interface_, method)
        return rv.map { DBusMessageRef(cast($0)) }
    }

    /// Creates a new `GDBusMessage` for a signal emission.
    static func new(signal path: UnsafePointer<gchar>, interface_: UnsafePointer<gchar>, signal: UnsafePointer<gchar>) -> DBusMessageRef! {
        let rv = g_dbus_message_new_signal(path, interface_, signal)
        return rv.map { DBusMessageRef(cast($0)) }
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
    /// Ownership is transferred to the `DBusMessage` instance.
    public init(_ op: UnsafeMutablePointer<GDBusMessage>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `DBusMessageProtocol`
    /// Will retain `GDBusMessage`.
    public convenience init<T: DBusMessageProtocol>(_ other: T) {
        self.init(cast(other.dbus_message_ptr))
        g_object_ref(cast(dbus_message_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMessageProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusMessage.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMessageProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusMessage.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMessageProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusMessage.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMessageProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusMessage>(opaquePointer))
    }

    /// Creates a new empty `GDBusMessage`.
    public convenience init() {
        let rv = g_dbus_message_new()
        self.init(cast(rv))
    }

    /// Creates a new `GDBusMessage` from the data stored at `blob`. The byte
    /// order that the message was in can be retrieved using
    /// `g_dbus_message_get_byte_order()`.
    /// 
    /// If the `blob` cannot be parsed, contains invalid fields, or contains invalid
    /// headers, `G_IO_ERROR_INVALID_ARGUMENT` will be returned.
    public convenience init(blob: UnsafeMutablePointer<guchar>, blobLen blob_len: Int, capabilities: DBusCapabilityFlags) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_message_new_from_blob(cast(blob), gsize(blob_len), capabilities, &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }

    /// Creates a new `GDBusMessage` for a method call.
    public convenience init(method_call name: UnsafePointer<gchar>, path: UnsafePointer<gchar>, interface_: UnsafePointer<gchar>, method: UnsafePointer<gchar>) {
        let rv = g_dbus_message_new_method_call(name, path, interface_, method)
        self.init(cast(rv))
    }

    /// Creates a new `GDBusMessage` for a signal emission.
    public convenience init(signal path: UnsafePointer<gchar>, interface_: UnsafePointer<gchar>, signal: UnsafePointer<gchar>) {
        let rv = g_dbus_message_new_signal(path, interface_, signal)
        self.init(cast(rv))
    }

    /// Creates a new `GDBusMessage` from the data stored at `blob`. The byte
    /// order that the message was in can be retrieved using
    /// `g_dbus_message_get_byte_order()`.
    /// 
    /// If the `blob` cannot be parsed, contains invalid fields, or contains invalid
    /// headers, `G_IO_ERROR_INVALID_ARGUMENT` will be returned.
    public static func newFrom(blob: UnsafeMutablePointer<guchar>, blobLen blob_len: Int, capabilities: DBusCapabilityFlags) throws -> DBusMessage! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_message_new_from_blob(cast(blob), gsize(blob_len), capabilities, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { DBusMessage(cast($0)) }
    }

    /// Creates a new `GDBusMessage` for a method call.
    public static func newMethodCall(method_call name: UnsafePointer<gchar>, path: UnsafePointer<gchar>, interface_: UnsafePointer<gchar>, method: UnsafePointer<gchar>) -> DBusMessage! {
        let rv = g_dbus_message_new_method_call(name, path, interface_, method)
        return rv.map { DBusMessage(cast($0)) }
    }

    /// Creates a new `GDBusMessage` for a signal emission.
    public static func new(signal path: UnsafePointer<gchar>, interface_: UnsafePointer<gchar>, signal: UnsafePointer<gchar>) -> DBusMessage! {
        let rv = g_dbus_message_new_signal(path, interface_, signal)
        return rv.map { DBusMessage(cast($0)) }
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DBusMessagePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(dbus_message_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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
    @discardableResult func connect(signal kind: DBusMessageSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(dbus_message_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension DBusMessageProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusMessage` instance.
    var dbus_message_ptr: UnsafeMutablePointer<GDBusMessage> { return ptr.assumingMemoryBound(to: GDBusMessage.self) }

    /// Copies `message`. The copy is a deep copy and the returned
    /// `GDBusMessage` is completely identical except that it is guaranteed
    /// to not be locked.
    /// 
    /// This operation can fail if e.g. `message` contains file descriptors
    /// and the per-process or system-wide open files limit is reached.
    func copy() throws -> UnsafeMutablePointer<GDBusMessage>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_message_copy(cast(dbus_message_ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Convenience to get the first item in the body of `message`.
    func getArg0() -> String! {
        let rv = g_dbus_message_get_arg0(cast(dbus_message_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the body of a message.
    func getBody() -> UnsafeMutablePointer<GVariant>! {
        let rv = g_dbus_message_get_body(cast(dbus_message_ptr))
        return cast(rv)
    }

    /// Gets the byte order of `message`.
    func getByteOrder() -> GDBusMessageByteOrder {
        let rv = g_dbus_message_get_byte_order(cast(dbus_message_ptr))
        return rv
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_DESTINATION` header field.
    func getDestination() -> String! {
        let rv = g_dbus_message_get_destination(cast(dbus_message_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_ERROR_NAME` header field.
    func getErrorName() -> String! {
        let rv = g_dbus_message_get_error_name(cast(dbus_message_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the flags for `message`.
    func getFlags() -> GDBusMessageFlags {
        let rv = g_dbus_message_get_flags(cast(dbus_message_ptr))
        return rv
    }

    /// Gets a header field on `message`.
    /// 
    /// The caller is responsible for checking the type of the returned `GVariant`
    /// matches what is expected.
    func getHeader(headerField header_field: DBusMessageHeaderField) -> UnsafeMutablePointer<GVariant>! {
        let rv = g_dbus_message_get_header(cast(dbus_message_ptr), header_field)
        return cast(rv)
    }

    /// Gets an array of all header fields on `message` that are set.
    func getHeaderFields() -> UnsafeMutablePointer<guchar>! {
        let rv = g_dbus_message_get_header_fields(cast(dbus_message_ptr))
        return cast(rv)
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_INTERFACE` header field.
    func getInterface() -> String! {
        let rv = g_dbus_message_get_interface(cast(dbus_message_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Checks whether `message` is locked. To monitor changes to this
    /// value, conncet to the `GObject::notify` signal to listen for changes
    /// on the `GDBusMessage:locked` property.
    func getLocked() -> Bool {
        let rv = g_dbus_message_get_locked(cast(dbus_message_ptr))
        return Bool(rv != 0)
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_MEMBER` header field.
    func getMember() -> String! {
        let rv = g_dbus_message_get_member(cast(dbus_message_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the type of `message`.
    func getMessageType() -> GDBusMessageType {
        let rv = g_dbus_message_get_message_type(cast(dbus_message_ptr))
        return rv
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_NUM_UNIX_FDS` header field.
    func getNumUnixFds() -> UInt32 {
        let rv = g_dbus_message_get_num_unix_fds(cast(dbus_message_ptr))
        return UInt32(rv)
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_PATH` header field.
    func getPath() -> String! {
        let rv = g_dbus_message_get_path(cast(dbus_message_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_REPLY_SERIAL` header field.
    func getReplySerial() -> UInt32 {
        let rv = g_dbus_message_get_reply_serial(cast(dbus_message_ptr))
        return UInt32(rv)
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_SENDER` header field.
    func getSender() -> String! {
        let rv = g_dbus_message_get_sender(cast(dbus_message_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the serial for `message`.
    func getSerial() -> UInt32 {
        let rv = g_dbus_message_get_serial(cast(dbus_message_ptr))
        return UInt32(rv)
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_SIGNATURE` header field.
    func getSignature() -> String! {
        let rv = g_dbus_message_get_signature(cast(dbus_message_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the UNIX file descriptors associated with `message`, if any.
    /// 
    /// This method is only available on UNIX.
    func getUnixFdList() -> UnsafeMutablePointer<GUnixFDList>! {
        let rv = g_dbus_message_get_unix_fd_list(cast(dbus_message_ptr))
        return cast(rv)
    }

    /// If `message` is locked, does nothing. Otherwise locks the message.
    func lock() {
        g_dbus_message_lock(cast(dbus_message_ptr))
    
    }


    // *** newMethodError() is not available because it has a varargs (...) parameter!


    /// Creates a new `GDBusMessage` that is an error reply to `method_call_message`.
    func newMethodErrorLiteral(errorName error_name: UnsafePointer<gchar>, errorMessage error_message: UnsafePointer<gchar>) -> UnsafeMutablePointer<GDBusMessage>! {
        let rv = g_dbus_message_new_method_error_literal(cast(dbus_message_ptr), error_name, error_message)
        return cast(rv)
    }

    /// Like `g_dbus_message_new_method_error()` but intended for language bindings.
    func newMethodErrorValist(errorName error_name: UnsafePointer<gchar>, errorMessageFormat error_message_format: UnsafePointer<gchar>, varArgs var_args: CVaListPointer) -> UnsafeMutablePointer<GDBusMessage>! {
        let rv = g_dbus_message_new_method_error_valist(cast(dbus_message_ptr), error_name, error_message_format, var_args)
        return cast(rv)
    }

    /// Creates a new `GDBusMessage` that is a reply to `method_call_message`.
    func newMethodReply() -> UnsafeMutablePointer<GDBusMessage>! {
        let rv = g_dbus_message_new_method_reply(cast(dbus_message_ptr))
        return cast(rv)
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
    func print(indent: CUnsignedInt) -> String! {
        let rv = g_dbus_message_print(cast(dbus_message_ptr), guint(indent))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Sets the body `message`. As a side-effect the
    /// `G_DBUS_MESSAGE_HEADER_FIELD_SIGNATURE` header field is set to the
    /// type string of `body` (or cleared if `body` is `nil`).
    /// 
    /// If `body` is floating, `message` assumes ownership of `body`.
    func set(body: VariantProtocol) {
        g_dbus_message_set_body(cast(dbus_message_ptr), cast(body.ptr))
    
    }

    /// Sets the byte order of `message`.
    func set(byteOrder byte_order: DBusMessageByteOrder) {
        g_dbus_message_set_byte_order(cast(dbus_message_ptr), byte_order)
    
    }

    /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_DESTINATION` header field.
    func setDestination(value: UnsafePointer<gchar>) {
        g_dbus_message_set_destination(cast(dbus_message_ptr), value)
    
    }

    /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_ERROR_NAME` header field.
    func setErrorName(value: UnsafePointer<gchar>) {
        g_dbus_message_set_error_name(cast(dbus_message_ptr), value)
    
    }

    /// Sets the flags to set on `message`.
    func set(flags: DBusMessageFlags) {
        g_dbus_message_set_flags(cast(dbus_message_ptr), flags)
    
    }

    /// Sets a header field on `message`.
    /// 
    /// If `value` is floating, `message` assumes ownership of `value`.
    func setHeader(headerField header_field: DBusMessageHeaderField, value: VariantProtocol) {
        g_dbus_message_set_header(cast(dbus_message_ptr), header_field, cast(value.ptr))
    
    }

    /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_INTERFACE` header field.
    func setInterface(value: UnsafePointer<gchar>) {
        g_dbus_message_set_interface(cast(dbus_message_ptr), value)
    
    }

    /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_MEMBER` header field.
    func setMember(value: UnsafePointer<gchar>) {
        g_dbus_message_set_member(cast(dbus_message_ptr), value)
    
    }

    /// Sets `message` to be of `type`.
    func setMessage(type: DBusMessageType) {
        g_dbus_message_set_message_type(cast(dbus_message_ptr), type)
    
    }

    /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_NUM_UNIX_FDS` header field.
    func setNumUnixFds(value: UInt32) {
        g_dbus_message_set_num_unix_fds(cast(dbus_message_ptr), guint32(value))
    
    }

    /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_PATH` header field.
    func setPath(value: UnsafePointer<gchar>) {
        g_dbus_message_set_path(cast(dbus_message_ptr), value)
    
    }

    /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_REPLY_SERIAL` header field.
    func setReplySerial(value: UInt32) {
        g_dbus_message_set_reply_serial(cast(dbus_message_ptr), guint32(value))
    
    }

    /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_SENDER` header field.
    func setSender(value: UnsafePointer<gchar>) {
        g_dbus_message_set_sender(cast(dbus_message_ptr), value)
    
    }

    /// Sets the serial for `message`.
    func set(serial: UInt32) {
        g_dbus_message_set_serial(cast(dbus_message_ptr), guint32(serial))
    
    }

    /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_SIGNATURE` header field.
    func setSignature(value: UnsafePointer<gchar>) {
        g_dbus_message_set_signature(cast(dbus_message_ptr), value)
    
    }

    /// Sets the UNIX file descriptors associated with `message`. As a
    /// side-effect the `G_DBUS_MESSAGE_HEADER_FIELD_NUM_UNIX_FDS` header
    /// field is set to the number of fds in `fd_list` (or cleared if
    /// `fd_list` is `nil`).
    /// 
    /// This method is only available on UNIX.
    func setUnix(fdList fd_list: UnixFDListProtocol) {
        g_dbus_message_set_unix_fd_list(cast(dbus_message_ptr), cast(fd_list.ptr))
    
    }

    /// Serializes `message` to a blob. The byte order returned by
    /// `g_dbus_message_get_byte_order()` will be used.
    func toBlob(outSize out_size: UnsafeMutablePointer<Int>, capabilities: DBusCapabilityFlags) throws -> UnsafeMutablePointer<guchar>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_message_to_blob(cast(dbus_message_ptr), cast(out_size), capabilities, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// If `message` is not of type `G_DBUS_MESSAGE_TYPE_ERROR` does
    /// nothing and returns `false`.
    /// 
    /// Otherwise this method encodes the error in `message` as a `GError`
    /// using `g_dbus_error_set_dbus_error()` using the information in the
    /// `G_DBUS_MESSAGE_HEADER_FIELD_ERROR_NAME` header field of `message` as
    /// well as the first string item in `message`'s body.
    func toGerror() throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_message_to_gerror(cast(dbus_message_ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }
    /// Convenience to get the first item in the body of `message`.
    var arg0: String! {
        /// Convenience to get the first item in the body of `message`.
        get {
            let rv = g_dbus_message_get_arg0(cast(dbus_message_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the body of a message.
    var body: UnsafeMutablePointer<GVariant>! {
        /// Gets the body of a message.
        get {
            let rv = g_dbus_message_get_body(cast(dbus_message_ptr))
            return cast(rv)
        }
        /// Sets the body `message`. As a side-effect the
        /// `G_DBUS_MESSAGE_HEADER_FIELD_SIGNATURE` header field is set to the
        /// type string of `body` (or cleared if `body` is `nil`).
        /// 
        /// If `body` is floating, `message` assumes ownership of `body`.
        nonmutating set {
            g_dbus_message_set_body(cast(dbus_message_ptr), cast(newValue))
        }
    }

    /// Gets the byte order of `message`.
    var byteOrder: GDBusMessageByteOrder {
        /// Gets the byte order of `message`.
        get {
            let rv = g_dbus_message_get_byte_order(cast(dbus_message_ptr))
            return rv
        }
        /// Sets the byte order of `message`.
        nonmutating set {
            g_dbus_message_set_byte_order(cast(dbus_message_ptr), newValue)
        }
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_DESTINATION` header field.
    var destination: String! {
        /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_DESTINATION` header field.
        get {
            let rv = g_dbus_message_get_destination(cast(dbus_message_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_DESTINATION` header field.
        nonmutating set {
            g_dbus_message_set_destination(cast(dbus_message_ptr), newValue)
        }
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_ERROR_NAME` header field.
    var errorName: String! {
        /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_ERROR_NAME` header field.
        get {
            let rv = g_dbus_message_get_error_name(cast(dbus_message_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_ERROR_NAME` header field.
        nonmutating set {
            g_dbus_message_set_error_name(cast(dbus_message_ptr), newValue)
        }
    }

    /// Gets the flags for `message`.
    var flags: GDBusMessageFlags {
        /// Gets the flags for `message`.
        get {
            let rv = g_dbus_message_get_flags(cast(dbus_message_ptr))
            return rv
        }
        /// Sets the flags to set on `message`.
        nonmutating set {
            g_dbus_message_set_flags(cast(dbus_message_ptr), newValue)
        }
    }

    /// Gets an array of all header fields on `message` that are set.
    var headerFields: UnsafeMutablePointer<guchar>! {
        /// Gets an array of all header fields on `message` that are set.
        get {
            let rv = g_dbus_message_get_header_fields(cast(dbus_message_ptr))
            return cast(rv)
        }
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_INTERFACE` header field.
    var interface: String! {
        /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_INTERFACE` header field.
        get {
            let rv = g_dbus_message_get_interface(cast(dbus_message_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_INTERFACE` header field.
        nonmutating set {
            g_dbus_message_set_interface(cast(dbus_message_ptr), newValue)
        }
    }

    var locked: Bool {
        /// Checks whether `message` is locked. To monitor changes to this
        /// value, conncet to the `GObject::notify` signal to listen for changes
        /// on the `GDBusMessage:locked` property.
        get {
            let rv = g_dbus_message_get_locked(cast(dbus_message_ptr))
            return Bool(rv != 0)
        }
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_MEMBER` header field.
    var member: String! {
        /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_MEMBER` header field.
        get {
            let rv = g_dbus_message_get_member(cast(dbus_message_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_MEMBER` header field.
        nonmutating set {
            g_dbus_message_set_member(cast(dbus_message_ptr), newValue)
        }
    }

    /// Gets the type of `message`.
    var messageType: GDBusMessageType {
        /// Gets the type of `message`.
        get {
            let rv = g_dbus_message_get_message_type(cast(dbus_message_ptr))
            return rv
        }
        /// Sets `message` to be of `type`.
        nonmutating set {
            g_dbus_message_set_message_type(cast(dbus_message_ptr), newValue)
        }
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_NUM_UNIX_FDS` header field.
    var numUnixFds: UInt32 {
        /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_NUM_UNIX_FDS` header field.
        get {
            let rv = g_dbus_message_get_num_unix_fds(cast(dbus_message_ptr))
            return UInt32(rv)
        }
        /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_NUM_UNIX_FDS` header field.
        nonmutating set {
            g_dbus_message_set_num_unix_fds(cast(dbus_message_ptr), guint32(newValue))
        }
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_PATH` header field.
    var path: String! {
        /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_PATH` header field.
        get {
            let rv = g_dbus_message_get_path(cast(dbus_message_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_PATH` header field.
        nonmutating set {
            g_dbus_message_set_path(cast(dbus_message_ptr), newValue)
        }
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_REPLY_SERIAL` header field.
    var replySerial: UInt32 {
        /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_REPLY_SERIAL` header field.
        get {
            let rv = g_dbus_message_get_reply_serial(cast(dbus_message_ptr))
            return UInt32(rv)
        }
        /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_REPLY_SERIAL` header field.
        nonmutating set {
            g_dbus_message_set_reply_serial(cast(dbus_message_ptr), guint32(newValue))
        }
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_SENDER` header field.
    var sender: String! {
        /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_SENDER` header field.
        get {
            let rv = g_dbus_message_get_sender(cast(dbus_message_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_SENDER` header field.
        nonmutating set {
            g_dbus_message_set_sender(cast(dbus_message_ptr), newValue)
        }
    }

    /// Gets the serial for `message`.
    var serial: UInt32 {
        /// Gets the serial for `message`.
        get {
            let rv = g_dbus_message_get_serial(cast(dbus_message_ptr))
            return UInt32(rv)
        }
        /// Sets the serial for `message`.
        nonmutating set {
            g_dbus_message_set_serial(cast(dbus_message_ptr), guint32(newValue))
        }
    }

    /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_SIGNATURE` header field.
    var signature: String! {
        /// Convenience getter for the `G_DBUS_MESSAGE_HEADER_FIELD_SIGNATURE` header field.
        get {
            let rv = g_dbus_message_get_signature(cast(dbus_message_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Convenience setter for the `G_DBUS_MESSAGE_HEADER_FIELD_SIGNATURE` header field.
        nonmutating set {
            g_dbus_message_set_signature(cast(dbus_message_ptr), newValue)
        }
    }

    /// Gets the UNIX file descriptors associated with `message`, if any.
    /// 
    /// This method is only available on UNIX.
    var unixFdList: UnsafeMutablePointer<GUnixFDList>! {
        /// Gets the UNIX file descriptors associated with `message`, if any.
        /// 
        /// This method is only available on UNIX.
        get {
            let rv = g_dbus_message_get_unix_fd_list(cast(dbus_message_ptr))
            return cast(rv)
        }
        /// Sets the UNIX file descriptors associated with `message`. As a
        /// side-effect the `G_DBUS_MESSAGE_HEADER_FIELD_NUM_UNIX_FDS` header
        /// field is set to the number of fds in `fd_list` (or cleared if
        /// `fd_list` is `nil`).
        /// 
        /// This method is only available on UNIX.
        nonmutating set {
            g_dbus_message_set_unix_fd_list(cast(dbus_message_ptr), cast(newValue))
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusMethodInvocation` instance.
    var dbus_method_invocation_ptr: UnsafeMutablePointer<GDBusMethodInvocation> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusMethodInvocationRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusMethodInvocation>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusMethodInvocationProtocol`
    init<T: DBusMethodInvocationProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInvocationProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInvocationProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInvocationProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInvocationProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInvocationProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    /// Ownership is transferred to the `DBusMethodInvocation` instance.
    public init(_ op: UnsafeMutablePointer<GDBusMethodInvocation>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `DBusMethodInvocationProtocol`
    /// Will retain `GDBusMethodInvocation`.
    public convenience init<T: DBusMethodInvocationProtocol>(_ other: T) {
        self.init(cast(other.dbus_method_invocation_ptr))
        g_object_ref(cast(dbus_method_invocation_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInvocationProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusMethodInvocation.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInvocationProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusMethodInvocation.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInvocationProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusMethodInvocation.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInvocationProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusMethodInvocation>(opaquePointer))
    }



}

// MARK: - no DBusMethodInvocation properties

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
    @discardableResult func connect(signal kind: DBusMethodInvocationSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(dbus_method_invocation_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension DBusMethodInvocationProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusMethodInvocation` instance.
    var dbus_method_invocation_ptr: UnsafeMutablePointer<GDBusMethodInvocation> { return ptr.assumingMemoryBound(to: GDBusMethodInvocation.self) }

    /// Gets the `GDBusConnection` the method was invoked on.
    func getConnection() -> UnsafeMutablePointer<GDBusConnection>! {
        let rv = g_dbus_method_invocation_get_connection(cast(dbus_method_invocation_ptr))
        return cast(rv)
    }

    /// Gets the name of the D-Bus interface the method was invoked on.
    /// 
    /// If this method call is a property Get, Set or GetAll call that has
    /// been redirected to the method call handler then
    /// "org.freedesktop.DBus.Properties" will be returned.  See
    /// `GDBusInterfaceVTable` for more information.
    func getInterfaceName() -> String! {
        let rv = g_dbus_method_invocation_get_interface_name(cast(dbus_method_invocation_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the `GDBusMessage` for the method invocation. This is useful if
    /// you need to use low-level protocol features, such as UNIX file
    /// descriptor passing, that cannot be properly expressed in the
    /// `GVariant` API.
    /// 
    /// See this [server](#gdbus-server) and [client](#gdbus-unix-fd-client)
    /// for an example of how to use this low-level API to send and receive
    /// UNIX file descriptors.
    func getMessage() -> UnsafeMutablePointer<GDBusMessage>! {
        let rv = g_dbus_method_invocation_get_message(cast(dbus_method_invocation_ptr))
        return cast(rv)
    }

    /// Gets information about the method call, if any.
    /// 
    /// If this method invocation is a property Get, Set or GetAll call that
    /// has been redirected to the method call handler then `nil` will be
    /// returned.  See `g_dbus_method_invocation_get_property_info()` and
    /// `GDBusInterfaceVTable` for more information.
    func getMethodInfo() -> UnsafePointer<GDBusMethodInfo>! {
        let rv = g_dbus_method_invocation_get_method_info(cast(dbus_method_invocation_ptr))
        return cast(rv)
    }

    /// Gets the name of the method that was invoked.
    func getMethodName() -> String! {
        let rv = g_dbus_method_invocation_get_method_name(cast(dbus_method_invocation_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the object path the method was invoked on.
    func getObjectPath() -> String! {
        let rv = g_dbus_method_invocation_get_object_path(cast(dbus_method_invocation_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the parameters of the method invocation. If there are no input
    /// parameters then this will return a GVariant with 0 children rather than NULL.
    func getParameters() -> UnsafeMutablePointer<GVariant>! {
        let rv = g_dbus_method_invocation_get_parameters(cast(dbus_method_invocation_ptr))
        return cast(rv)
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
    func getPropertyInfo() -> UnsafePointer<GDBusPropertyInfo>! {
        let rv = g_dbus_method_invocation_get_property_info(cast(dbus_method_invocation_ptr))
        return cast(rv)
    }

    /// Gets the bus name that invoked the method.
    func getSender() -> String! {
        let rv = g_dbus_method_invocation_get_sender(cast(dbus_method_invocation_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the `user_data` `gpointer` passed to `g_dbus_connection_register_object()`.
    func getUserData() -> UnsafeMutableRawPointer! {
        let rv = g_dbus_method_invocation_get_user_data(cast(dbus_method_invocation_ptr))
        return cast(rv)
    }

    /// Finishes handling a D-Bus method call by returning an error.
    /// 
    /// This method will take ownership of `invocation`. See
    /// `GDBusInterfaceVTable` for more information about the ownership of
    /// `invocation`.
    func returnDbusError(errorName error_name: UnsafePointer<gchar>, errorMessage error_message: UnsafePointer<gchar>) {
        g_dbus_method_invocation_return_dbus_error(cast(dbus_method_invocation_ptr), error_name, error_message)
    
    }


    // *** returnError() is not available because it has a varargs (...) parameter!


    /// Like `g_dbus_method_invocation_return_error()` but without `printf()`-style formatting.
    /// 
    /// This method will take ownership of `invocation`. See
    /// `GDBusInterfaceVTable` for more information about the ownership of
    /// `invocation`.
    func returnErrorLiteral(domain: GLib.Quark, code: CInt, message: UnsafePointer<gchar>) {
        g_dbus_method_invocation_return_error_literal(cast(dbus_method_invocation_ptr), domain, gint(code), message)
    
    }

    /// Like `g_dbus_method_invocation_return_error()` but intended for
    /// language bindings.
    /// 
    /// This method will take ownership of `invocation`. See
    /// `GDBusInterfaceVTable` for more information about the ownership of
    /// `invocation`.
    func returnErrorValist(domain: GLib.Quark, code: CInt, format: UnsafePointer<gchar>, varArgs var_args: CVaListPointer) {
        g_dbus_method_invocation_return_error_valist(cast(dbus_method_invocation_ptr), domain, gint(code), format, var_args)
    
    }

    /// Like `g_dbus_method_invocation_return_error()` but takes a `GError`
    /// instead of the error domain, error code and message.
    /// 
    /// This method will take ownership of `invocation`. See
    /// `GDBusInterfaceVTable` for more information about the ownership of
    /// `invocation`.
    func returnGerror(error: ErrorTypeProtocol) {
        g_dbus_method_invocation_return_gerror(cast(dbus_method_invocation_ptr), cast(error.ptr))
    
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
    func returnValue(parameters: VariantProtocol) {
        g_dbus_method_invocation_return_value(cast(dbus_method_invocation_ptr), cast(parameters.ptr))
    
    }

    /// Like `g_dbus_method_invocation_return_value()` but also takes a `GUnixFDList`.
    /// 
    /// This method is only available on UNIX.
    /// 
    /// This method will take ownership of `invocation`. See
    /// `GDBusInterfaceVTable` for more information about the ownership of
    /// `invocation`.
    func returnValueWithUnixFdList(parameters: VariantProtocol, fdList fd_list: UnixFDListProtocol) {
        g_dbus_method_invocation_return_value_with_unix_fd_list(cast(dbus_method_invocation_ptr), cast(parameters.ptr), cast(fd_list.ptr))
    
    }

    /// Like `g_dbus_method_invocation_return_gerror()` but takes ownership
    /// of `error` so the caller does not need to free it.
    /// 
    /// This method will take ownership of `invocation`. See
    /// `GDBusInterfaceVTable` for more information about the ownership of
    /// `invocation`.
    func take(error: ErrorTypeProtocol) {
        g_dbus_method_invocation_take_error(cast(dbus_method_invocation_ptr), cast(error.ptr))
    
    }
    /// Gets the `GDBusConnection` the method was invoked on.
    var connection: UnsafeMutablePointer<GDBusConnection>! {
        /// Gets the `GDBusConnection` the method was invoked on.
        get {
            let rv = g_dbus_method_invocation_get_connection(cast(dbus_method_invocation_ptr))
            return cast(rv)
        }
    }

    /// Gets the name of the D-Bus interface the method was invoked on.
    /// 
    /// If this method call is a property Get, Set or GetAll call that has
    /// been redirected to the method call handler then
    /// "org.freedesktop.DBus.Properties" will be returned.  See
    /// `GDBusInterfaceVTable` for more information.
    var interfaceName: String! {
        /// Gets the name of the D-Bus interface the method was invoked on.
        /// 
        /// If this method call is a property Get, Set or GetAll call that has
        /// been redirected to the method call handler then
        /// "org.freedesktop.DBus.Properties" will be returned.  See
        /// `GDBusInterfaceVTable` for more information.
        get {
            let rv = g_dbus_method_invocation_get_interface_name(cast(dbus_method_invocation_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
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
    var message: UnsafeMutablePointer<GDBusMessage>! {
        /// Gets the `GDBusMessage` for the method invocation. This is useful if
        /// you need to use low-level protocol features, such as UNIX file
        /// descriptor passing, that cannot be properly expressed in the
        /// `GVariant` API.
        /// 
        /// See this [server](#gdbus-server) and [client](#gdbus-unix-fd-client)
        /// for an example of how to use this low-level API to send and receive
        /// UNIX file descriptors.
        get {
            let rv = g_dbus_method_invocation_get_message(cast(dbus_method_invocation_ptr))
            return cast(rv)
        }
    }

    /// Gets information about the method call, if any.
    /// 
    /// If this method invocation is a property Get, Set or GetAll call that
    /// has been redirected to the method call handler then `nil` will be
    /// returned.  See `g_dbus_method_invocation_get_property_info()` and
    /// `GDBusInterfaceVTable` for more information.
    var methodInfo: UnsafePointer<GDBusMethodInfo>! {
        /// Gets information about the method call, if any.
        /// 
        /// If this method invocation is a property Get, Set or GetAll call that
        /// has been redirected to the method call handler then `nil` will be
        /// returned.  See `g_dbus_method_invocation_get_property_info()` and
        /// `GDBusInterfaceVTable` for more information.
        get {
            let rv = g_dbus_method_invocation_get_method_info(cast(dbus_method_invocation_ptr))
            return cast(rv)
        }
    }

    /// Gets the name of the method that was invoked.
    var methodName: String! {
        /// Gets the name of the method that was invoked.
        get {
            let rv = g_dbus_method_invocation_get_method_name(cast(dbus_method_invocation_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the object path the method was invoked on.
    var objectPath: String! {
        /// Gets the object path the method was invoked on.
        get {
            let rv = g_dbus_method_invocation_get_object_path(cast(dbus_method_invocation_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the parameters of the method invocation. If there are no input
    /// parameters then this will return a GVariant with 0 children rather than NULL.
    var parameters: UnsafeMutablePointer<GVariant>! {
        /// Gets the parameters of the method invocation. If there are no input
        /// parameters then this will return a GVariant with 0 children rather than NULL.
        get {
            let rv = g_dbus_method_invocation_get_parameters(cast(dbus_method_invocation_ptr))
            return cast(rv)
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
    var propertyInfo: UnsafePointer<GDBusPropertyInfo>! {
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
            let rv = g_dbus_method_invocation_get_property_info(cast(dbus_method_invocation_ptr))
            return cast(rv)
        }
    }

    /// Gets the bus name that invoked the method.
    var sender: String! {
        /// Gets the bus name that invoked the method.
        get {
            let rv = g_dbus_method_invocation_get_sender(cast(dbus_method_invocation_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the `user_data` `gpointer` passed to `g_dbus_connection_register_object()`.
    var userData: UnsafeMutableRawPointer! {
        /// Gets the `user_data` `gpointer` passed to `g_dbus_connection_register_object()`.
        get {
            let rv = g_dbus_method_invocation_get_user_data(cast(dbus_method_invocation_ptr))
            return cast(rv)
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusObjectManagerClient` instance.
    var dbus_object_manager_client_ptr: UnsafeMutablePointer<GDBusObjectManagerClient> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusObjectManagerClientRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusObjectManagerClient>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusObjectManagerClientProtocol`
    init<T: DBusObjectManagerClientProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Finishes an operation started with `g_dbus_object_manager_client_new()`.
    init(finish res: AsyncResultProtocol) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_object_manager_client_new_finish(cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }

    /// Finishes an operation started with `g_dbus_object_manager_client_new_for_bus()`.
    init(busFinish res: AsyncResultProtocol) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_object_manager_client_new_for_bus_finish(cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }

    /// Like `g_dbus_object_manager_client_new_sync()` but takes a `GBusType` instead
    /// of a `GDBusConnection`.
    /// 
    /// This is a synchronous failable constructor - the calling thread is
    /// blocked until a reply is received. See `g_dbus_object_manager_client_new_for_bus()`
    /// for the asynchronous version.
    init(busSync bus_type: BusType, flags: DBusObjectManagerClientFlags, name: UnsafePointer<gchar>, objectPath object_path: UnsafePointer<gchar>, getProxyTypeFunc get_proxy_type_func: @escaping DBusProxyTypeFunc, getProxyTypeUserData get_proxy_type_user_data: UnsafeMutableRawPointer, getProxyTypeDestroyNotify get_proxy_type_destroy_notify: @escaping GLib.DestroyNotify, cancellable: CancellableProtocol) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_object_manager_client_new_for_bus_sync(bus_type, flags, name, object_path, get_proxy_type_func, cast(get_proxy_type_user_data), get_proxy_type_destroy_notify, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }

    /// Creates a new `GDBusObjectManagerClient` object.
    /// 
    /// This is a synchronous failable constructor - the calling thread is
    /// blocked until a reply is received. See `g_dbus_object_manager_client_new()`
    /// for the asynchronous version.
    init(sync connection: DBusConnectionProtocol, flags: DBusObjectManagerClientFlags, name: UnsafePointer<gchar>, objectPath object_path: UnsafePointer<gchar>, getProxyTypeFunc get_proxy_type_func: @escaping DBusProxyTypeFunc, getProxyTypeUserData get_proxy_type_user_data: UnsafeMutableRawPointer, getProxyTypeDestroyNotify get_proxy_type_destroy_notify: @escaping GLib.DestroyNotify, cancellable: CancellableProtocol) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_object_manager_client_new_sync(cast(connection.ptr), flags, name, object_path, get_proxy_type_func, cast(get_proxy_type_user_data), get_proxy_type_destroy_notify, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }
    /// Finishes an operation started with `g_dbus_object_manager_client_new()`.
    static func new(finish res: AsyncResultProtocol) throws -> DBusObjectManagerClientRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_object_manager_client_new_finish(cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { DBusObjectManagerClientRef(cast($0)) }
    }

    /// Finishes an operation started with `g_dbus_object_manager_client_new_for_bus()`.
    static func newFor(busFinish res: AsyncResultProtocol) throws -> DBusObjectManagerClientRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_object_manager_client_new_for_bus_finish(cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { DBusObjectManagerClientRef(cast($0)) }
    }

    /// Like `g_dbus_object_manager_client_new_sync()` but takes a `GBusType` instead
    /// of a `GDBusConnection`.
    /// 
    /// This is a synchronous failable constructor - the calling thread is
    /// blocked until a reply is received. See `g_dbus_object_manager_client_new_for_bus()`
    /// for the asynchronous version.
    static func newFor(busSync bus_type: BusType, flags: DBusObjectManagerClientFlags, name: UnsafePointer<gchar>, objectPath object_path: UnsafePointer<gchar>, getProxyTypeFunc get_proxy_type_func: @escaping DBusProxyTypeFunc, getProxyTypeUserData get_proxy_type_user_data: UnsafeMutableRawPointer, getProxyTypeDestroyNotify get_proxy_type_destroy_notify: @escaping GLib.DestroyNotify, cancellable: CancellableProtocol) throws -> DBusObjectManagerClientRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_object_manager_client_new_for_bus_sync(bus_type, flags, name, object_path, get_proxy_type_func, cast(get_proxy_type_user_data), get_proxy_type_destroy_notify, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { DBusObjectManagerClientRef(cast($0)) }
    }

    /// Creates a new `GDBusObjectManagerClient` object.
    /// 
    /// This is a synchronous failable constructor - the calling thread is
    /// blocked until a reply is received. See `g_dbus_object_manager_client_new()`
    /// for the asynchronous version.
    static func new(sync connection: DBusConnectionProtocol, flags: DBusObjectManagerClientFlags, name: UnsafePointer<gchar>, objectPath object_path: UnsafePointer<gchar>, getProxyTypeFunc get_proxy_type_func: @escaping DBusProxyTypeFunc, getProxyTypeUserData get_proxy_type_user_data: UnsafeMutableRawPointer, getProxyTypeDestroyNotify get_proxy_type_destroy_notify: @escaping GLib.DestroyNotify, cancellable: CancellableProtocol) throws -> DBusObjectManagerClientRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_object_manager_client_new_sync(cast(connection.ptr), flags, name, object_path, get_proxy_type_func, cast(get_proxy_type_user_data), get_proxy_type_destroy_notify, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { DBusObjectManagerClientRef(cast($0)) }
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
    /// Ownership is transferred to the `DBusObjectManagerClient` instance.
    public init(_ op: UnsafeMutablePointer<GDBusObjectManagerClient>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `DBusObjectManagerClientProtocol`
    /// Will retain `GDBusObjectManagerClient`.
    public convenience init<T: DBusObjectManagerClientProtocol>(_ other: T) {
        self.init(cast(other.dbus_object_manager_client_ptr))
        g_object_ref(cast(dbus_object_manager_client_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusObjectManagerClient.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusObjectManagerClient.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusObjectManagerClient.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusObjectManagerClient>(opaquePointer))
    }

    /// Finishes an operation started with `g_dbus_object_manager_client_new()`.
    public convenience init(finish res: AsyncResultProtocol) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_object_manager_client_new_finish(cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }

    /// Finishes an operation started with `g_dbus_object_manager_client_new_for_bus()`.
    public convenience init(busFinish res: AsyncResultProtocol) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_object_manager_client_new_for_bus_finish(cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }

    /// Like `g_dbus_object_manager_client_new_sync()` but takes a `GBusType` instead
    /// of a `GDBusConnection`.
    /// 
    /// This is a synchronous failable constructor - the calling thread is
    /// blocked until a reply is received. See `g_dbus_object_manager_client_new_for_bus()`
    /// for the asynchronous version.
    public convenience init(busSync bus_type: BusType, flags: DBusObjectManagerClientFlags, name: UnsafePointer<gchar>, objectPath object_path: UnsafePointer<gchar>, getProxyTypeFunc get_proxy_type_func: @escaping DBusProxyTypeFunc, getProxyTypeUserData get_proxy_type_user_data: UnsafeMutableRawPointer, getProxyTypeDestroyNotify get_proxy_type_destroy_notify: @escaping GLib.DestroyNotify, cancellable: CancellableProtocol) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_object_manager_client_new_for_bus_sync(bus_type, flags, name, object_path, get_proxy_type_func, cast(get_proxy_type_user_data), get_proxy_type_destroy_notify, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }

    /// Creates a new `GDBusObjectManagerClient` object.
    /// 
    /// This is a synchronous failable constructor - the calling thread is
    /// blocked until a reply is received. See `g_dbus_object_manager_client_new()`
    /// for the asynchronous version.
    public convenience init(sync connection: DBusConnectionProtocol, flags: DBusObjectManagerClientFlags, name: UnsafePointer<gchar>, objectPath object_path: UnsafePointer<gchar>, getProxyTypeFunc get_proxy_type_func: @escaping DBusProxyTypeFunc, getProxyTypeUserData get_proxy_type_user_data: UnsafeMutableRawPointer, getProxyTypeDestroyNotify get_proxy_type_destroy_notify: @escaping GLib.DestroyNotify, cancellable: CancellableProtocol) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_object_manager_client_new_sync(cast(connection.ptr), flags, name, object_path, get_proxy_type_func, cast(get_proxy_type_user_data), get_proxy_type_destroy_notify, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }

    /// Finishes an operation started with `g_dbus_object_manager_client_new()`.
    public static func new(finish res: AsyncResultProtocol) throws -> DBusObjectManagerClient! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_object_manager_client_new_finish(cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { DBusObjectManagerClient(cast($0)) }
    }

    /// Finishes an operation started with `g_dbus_object_manager_client_new_for_bus()`.
    public static func newFor(busFinish res: AsyncResultProtocol) throws -> DBusObjectManagerClient! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_object_manager_client_new_for_bus_finish(cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { DBusObjectManagerClient(cast($0)) }
    }

    /// Like `g_dbus_object_manager_client_new_sync()` but takes a `GBusType` instead
    /// of a `GDBusConnection`.
    /// 
    /// This is a synchronous failable constructor - the calling thread is
    /// blocked until a reply is received. See `g_dbus_object_manager_client_new_for_bus()`
    /// for the asynchronous version.
    public static func newFor(busSync bus_type: BusType, flags: DBusObjectManagerClientFlags, name: UnsafePointer<gchar>, objectPath object_path: UnsafePointer<gchar>, getProxyTypeFunc get_proxy_type_func: @escaping DBusProxyTypeFunc, getProxyTypeUserData get_proxy_type_user_data: UnsafeMutableRawPointer, getProxyTypeDestroyNotify get_proxy_type_destroy_notify: @escaping GLib.DestroyNotify, cancellable: CancellableProtocol) throws -> DBusObjectManagerClient! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_object_manager_client_new_for_bus_sync(bus_type, flags, name, object_path, get_proxy_type_func, cast(get_proxy_type_user_data), get_proxy_type_destroy_notify, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { DBusObjectManagerClient(cast($0)) }
    }

    /// Creates a new `GDBusObjectManagerClient` object.
    /// 
    /// This is a synchronous failable constructor - the calling thread is
    /// blocked until a reply is received. See `g_dbus_object_manager_client_new()`
    /// for the asynchronous version.
    public static func new(sync connection: DBusConnectionProtocol, flags: DBusObjectManagerClientFlags, name: UnsafePointer<gchar>, objectPath object_path: UnsafePointer<gchar>, getProxyTypeFunc get_proxy_type_func: @escaping DBusProxyTypeFunc, getProxyTypeUserData get_proxy_type_user_data: UnsafeMutableRawPointer, getProxyTypeDestroyNotify get_proxy_type_destroy_notify: @escaping GLib.DestroyNotify, cancellable: CancellableProtocol) throws -> DBusObjectManagerClient! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_object_manager_client_new_sync(cast(connection.ptr), flags, name, object_path, get_proxy_type_func, cast(get_proxy_type_user_data), get_proxy_type_destroy_notify, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { DBusObjectManagerClient(cast($0)) }
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DBusObjectManagerClientPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(dbus_object_manager_client_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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
    @discardableResult func connect(signal kind: DBusObjectManagerClientSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(dbus_object_manager_client_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension DBusObjectManagerClientProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusObjectManagerClient` instance.
    var dbus_object_manager_client_ptr: UnsafeMutablePointer<GDBusObjectManagerClient> { return ptr.assumingMemoryBound(to: GDBusObjectManagerClient.self) }

    /// Gets the `GDBusConnection` used by `manager`.
    func getConnection() -> UnsafeMutablePointer<GDBusConnection>! {
        let rv = g_dbus_object_manager_client_get_connection(cast(dbus_object_manager_client_ptr))
        return cast(rv)
    }

    /// Gets the flags that `manager` was constructed with.
    func getFlags() -> GDBusObjectManagerClientFlags {
        let rv = g_dbus_object_manager_client_get_flags(cast(dbus_object_manager_client_ptr))
        return rv
    }

    /// Gets the name that `manager` is for, or `nil` if not a message bus
    /// connection.
    func getName() -> String! {
        let rv = g_dbus_object_manager_client_get_name(cast(dbus_object_manager_client_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// The unique name that owns the name that `manager` is for or `nil` if
    /// no-one currently owns that name. You can connect to the
    /// `GObject::notify` signal to track changes to the
    /// `GDBusObjectManagerClient:name`-owner property.
    func getNameOwner() -> String! {
        let rv = g_dbus_object_manager_client_get_name_owner(cast(dbus_object_manager_client_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }
    /// The `GDBusConnection` to use.
    var connection: UnsafeMutablePointer<GDBusConnection>! {
        /// Gets the `GDBusConnection` used by `manager`.
        get {
            let rv = g_dbus_object_manager_client_get_connection(cast(dbus_object_manager_client_ptr))
            return cast(rv)
        }
    }

    /// Flags from the `GDBusObjectManagerClientFlags` enumeration.
    var flags: GDBusObjectManagerClientFlags {
        /// Gets the flags that `manager` was constructed with.
        get {
            let rv = g_dbus_object_manager_client_get_flags(cast(dbus_object_manager_client_ptr))
            return rv
        }
    }

    /// The well-known name or unique name that the manager is for.
    var name: String! {
        /// Gets the name that `manager` is for, or `nil` if not a message bus
        /// connection.
        get {
            let rv = g_dbus_object_manager_client_get_name(cast(dbus_object_manager_client_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// The unique name that owns the name that `manager` is for or `nil` if
    /// no-one currently owns that name. You can connect to the
    /// `GObject::notify` signal to track changes to the
    /// `GDBusObjectManagerClient:name`-owner property.
    var nameOwner: String! {
        /// The unique name that owns the name that `manager` is for or `nil` if
        /// no-one currently owns that name. You can connect to the
        /// `GObject::notify` signal to track changes to the
        /// `GDBusObjectManagerClient:name`-owner property.
        get {
            let rv = g_dbus_object_manager_client_get_name_owner(cast(dbus_object_manager_client_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusObjectManagerServer` instance.
    var dbus_object_manager_server_ptr: UnsafeMutablePointer<GDBusObjectManagerServer> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusObjectManagerServerRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusObjectManagerServer>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusObjectManagerServerProtocol`
    init<T: DBusObjectManagerServerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GDBusObjectManagerServer` object.
    /// 
    /// The returned server isn't yet exported on any connection. To do so,
    /// use `g_dbus_object_manager_server_set_connection()`. Normally you
    /// want to export all of your objects before doing so to avoid
    /// [InterfacesAdded](http://dbus.freedesktop.org/doc/dbus-specification.html`standard`-interfaces-objectmanager)
    /// signals being emitted.
    init( object_path: UnsafePointer<gchar>) {
        let rv = g_dbus_object_manager_server_new(object_path)
        self.init(cast(rv))
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
    /// Ownership is transferred to the `DBusObjectManagerServer` instance.
    public init(_ op: UnsafeMutablePointer<GDBusObjectManagerServer>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `DBusObjectManagerServerProtocol`
    /// Will retain `GDBusObjectManagerServer`.
    public convenience init<T: DBusObjectManagerServerProtocol>(_ other: T) {
        self.init(cast(other.dbus_object_manager_server_ptr))
        g_object_ref(cast(dbus_object_manager_server_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusObjectManagerServer.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusObjectManagerServer.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusObjectManagerServer.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusObjectManagerServer>(opaquePointer))
    }

    /// Creates a new `GDBusObjectManagerServer` object.
    /// 
    /// The returned server isn't yet exported on any connection. To do so,
    /// use `g_dbus_object_manager_server_set_connection()`. Normally you
    /// want to export all of your objects before doing so to avoid
    /// [InterfacesAdded](http://dbus.freedesktop.org/doc/dbus-specification.html`standard`-interfaces-objectmanager)
    /// signals being emitted.
    public convenience init( object_path: UnsafePointer<gchar>) {
        let rv = g_dbus_object_manager_server_new(object_path)
        self.init(cast(rv))
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DBusObjectManagerServerPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(dbus_object_manager_server_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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
    @discardableResult func connect(signal kind: DBusObjectManagerServerSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(dbus_object_manager_server_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension DBusObjectManagerServerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusObjectManagerServer` instance.
    var dbus_object_manager_server_ptr: UnsafeMutablePointer<GDBusObjectManagerServer> { return ptr.assumingMemoryBound(to: GDBusObjectManagerServer.self) }

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
    func export(object: DBusObjectSkeletonProtocol) {
        g_dbus_object_manager_server_export(cast(dbus_object_manager_server_ptr), cast(object.ptr))
    
    }

    /// Like `g_dbus_object_manager_server_export()` but appends a string of
    /// the form _N (with N being a natural number) to `object`'s object path
    /// if an object with the given path already exists. As such, the
    /// `GDBusObjectProxy:g`-object-path property of `object` may be modified.
    func exportUniquely(object: DBusObjectSkeletonProtocol) {
        g_dbus_object_manager_server_export_uniquely(cast(dbus_object_manager_server_ptr), cast(object.ptr))
    
    }

    /// Gets the `GDBusConnection` used by `manager`.
    func getConnection() -> UnsafeMutablePointer<GDBusConnection>! {
        let rv = g_dbus_object_manager_server_get_connection(cast(dbus_object_manager_server_ptr))
        return cast(rv)
    }

    /// Returns whether `object` is currently exported on `manager`.
    func isExported(object: DBusObjectSkeletonProtocol) -> Bool {
        let rv = g_dbus_object_manager_server_is_exported(cast(dbus_object_manager_server_ptr), cast(object.ptr))
        return Bool(rv != 0)
    }

    /// Exports all objects managed by `manager` on `connection`. If
    /// `connection` is `nil`, stops exporting objects.
    func set(connection: DBusConnectionProtocol) {
        g_dbus_object_manager_server_set_connection(cast(dbus_object_manager_server_ptr), cast(connection.ptr))
    
    }

    /// If `manager` has an object at `path`, removes the object. Otherwise
    /// does nothing.
    /// 
    /// Note that `object_path` must be in the hierarchy rooted by the
    /// object path for `manager`.
    func unexport(objectPath object_path: UnsafePointer<gchar>) -> Bool {
        let rv = g_dbus_object_manager_server_unexport(cast(dbus_object_manager_server_ptr), object_path)
        return Bool(rv != 0)
    }
    /// The `GDBusConnection` to export objects on.
    var connection: UnsafeMutablePointer<GDBusConnection>! {
        /// Gets the `GDBusConnection` used by `manager`.
        get {
            let rv = g_dbus_object_manager_server_get_connection(cast(dbus_object_manager_server_ptr))
            return cast(rv)
        }
        /// Exports all objects managed by `manager` on `connection`. If
        /// `connection` is `nil`, stops exporting objects.
        nonmutating set {
            g_dbus_object_manager_server_set_connection(cast(dbus_object_manager_server_ptr), cast(newValue))
        }
    }
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusObjectProxy` instance.
    var dbus_object_proxy_ptr: UnsafeMutablePointer<GDBusObjectProxy> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusObjectProxyRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusObjectProxy>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusObjectProxyProtocol`
    init<T: DBusObjectProxyProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GDBusObjectProxy` for the given connection and
    /// object path.
    init( connection: DBusConnectionProtocol, objectPath object_path: UnsafePointer<gchar>) {
        let rv = g_dbus_object_proxy_new(cast(connection.ptr), object_path)
        self.init(cast(rv))
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
    /// Ownership is transferred to the `DBusObjectProxy` instance.
    public init(_ op: UnsafeMutablePointer<GDBusObjectProxy>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `DBusObjectProxyProtocol`
    /// Will retain `GDBusObjectProxy`.
    public convenience init<T: DBusObjectProxyProtocol>(_ other: T) {
        self.init(cast(other.dbus_object_proxy_ptr))
        g_object_ref(cast(dbus_object_proxy_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusObjectProxy.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusObjectProxy.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusObjectProxy.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusObjectProxy>(opaquePointer))
    }

    /// Creates a new `GDBusObjectProxy` for the given connection and
    /// object path.
    public convenience init( connection: DBusConnectionProtocol, objectPath object_path: UnsafePointer<gchar>) {
        let rv = g_dbus_object_proxy_new(cast(connection.ptr), object_path)
        self.init(cast(rv))
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DBusObjectProxyPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(dbus_object_proxy_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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
    @discardableResult func connect(signal kind: DBusObjectProxySignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(dbus_object_proxy_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension DBusObjectProxyProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusObjectProxy` instance.
    var dbus_object_proxy_ptr: UnsafeMutablePointer<GDBusObjectProxy> { return ptr.assumingMemoryBound(to: GDBusObjectProxy.self) }

    /// Gets the connection that `proxy` is for.
    func getConnection() -> UnsafeMutablePointer<GDBusConnection>! {
        let rv = g_dbus_object_proxy_get_connection(cast(dbus_object_proxy_ptr))
        return cast(rv)
    }
    /// Gets the connection that `proxy` is for.
    var connection: UnsafeMutablePointer<GDBusConnection>! {
        /// Gets the connection that `proxy` is for.
        get {
            let rv = g_dbus_object_proxy_get_connection(cast(dbus_object_proxy_ptr))
            return cast(rv)
        }
    }
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusObjectSkeleton` instance.
    var dbus_object_skeleton_ptr: UnsafeMutablePointer<GDBusObjectSkeleton> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusObjectSkeletonRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusObjectSkeleton>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusObjectSkeletonProtocol`
    init<T: DBusObjectSkeletonProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GDBusObjectSkeleton`.
    init( object_path: UnsafePointer<gchar>) {
        let rv = g_dbus_object_skeleton_new(object_path)
        self.init(cast(rv))
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
    /// Ownership is transferred to the `DBusObjectSkeleton` instance.
    public init(_ op: UnsafeMutablePointer<GDBusObjectSkeleton>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `DBusObjectSkeletonProtocol`
    /// Will retain `GDBusObjectSkeleton`.
    public convenience init<T: DBusObjectSkeletonProtocol>(_ other: T) {
        self.init(cast(other.dbus_object_skeleton_ptr))
        g_object_ref(cast(dbus_object_skeleton_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusObjectSkeleton.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusObjectSkeleton.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusObjectSkeleton.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusObjectSkeleton>(opaquePointer))
    }

    /// Creates a new `GDBusObjectSkeleton`.
    public convenience init( object_path: UnsafePointer<gchar>) {
        let rv = g_dbus_object_skeleton_new(object_path)
        self.init(cast(rv))
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DBusObjectSkeletonPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(dbus_object_skeleton_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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
    @discardableResult func connect(signal kind: DBusObjectSkeletonSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(dbus_object_skeleton_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension DBusObjectSkeletonProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusObjectSkeleton` instance.
    var dbus_object_skeleton_ptr: UnsafeMutablePointer<GDBusObjectSkeleton> { return ptr.assumingMemoryBound(to: GDBusObjectSkeleton.self) }

    /// Adds `interface_` to `object`.
    /// 
    /// If `object` already contains a `GDBusInterfaceSkeleton` with the same
    /// interface name, it is removed before `interface_` is added.
    /// 
    /// Note that `object` takes its own reference on `interface_` and holds
    /// it until removed.
    func addInterface(interface_: DBusInterfaceSkeletonProtocol) {
        g_dbus_object_skeleton_add_interface(cast(dbus_object_skeleton_ptr), cast(interface_.ptr))
    
    }

    /// This method simply calls `g_dbus_interface_skeleton_flush()` on all
    /// interfaces belonging to `object`. See that method for when flushing
    /// is useful.
    func flush() {
        g_dbus_object_skeleton_flush(cast(dbus_object_skeleton_ptr))
    
    }

    /// Removes `interface_` from `object`.
    func removeInterface(interface_: DBusInterfaceSkeletonProtocol) {
        g_dbus_object_skeleton_remove_interface(cast(dbus_object_skeleton_ptr), cast(interface_.ptr))
    
    }

    /// Removes the `GDBusInterface` with `interface_name` from `object`.
    /// 
    /// If no D-Bus interface of the given interface exists, this function
    /// does nothing.
    func removeInterfaceByName(interfaceName interface_name: UnsafePointer<gchar>) {
        g_dbus_object_skeleton_remove_interface_by_name(cast(dbus_object_skeleton_ptr), interface_name)
    
    }

    /// Sets the object path for `object`.
    func set(objectPath object_path: UnsafePointer<gchar>) {
        g_dbus_object_skeleton_set_object_path(cast(dbus_object_skeleton_ptr), object_path)
    
    }
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusProxy` instance.
    var dbus_proxy_ptr: UnsafeMutablePointer<GDBusProxy> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusProxyRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusProxy>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusProxyProtocol`
    init<T: DBusProxyProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Finishes creating a `GDBusProxy`.
    init(finish res: AsyncResultProtocol) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_proxy_new_finish(cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }

    /// Finishes creating a `GDBusProxy`.
    init(busFinish res: AsyncResultProtocol) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_proxy_new_for_bus_finish(cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }

    /// Like `g_dbus_proxy_new_sync()` but takes a `GBusType` instead of a `GDBusConnection`.
    /// 
    /// `GDBusProxy` is used in this [example](#gdbus-wellknown-proxy).
    init(busSync bus_type: BusType, flags: DBusProxyFlags, info: DBusInterfaceInfoProtocol, name: UnsafePointer<gchar>, objectPath object_path: UnsafePointer<gchar>, interfaceName interface_name: UnsafePointer<gchar>, cancellable: CancellableProtocol) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_proxy_new_for_bus_sync(bus_type, flags, cast(info.ptr), name, object_path, interface_name, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
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
    init(sync connection: DBusConnectionProtocol, flags: DBusProxyFlags, info: DBusInterfaceInfoProtocol, name: UnsafePointer<gchar>, objectPath object_path: UnsafePointer<gchar>, interfaceName interface_name: UnsafePointer<gchar>, cancellable: CancellableProtocol) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_proxy_new_sync(cast(connection.ptr), flags, cast(info.ptr), name, object_path, interface_name, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }
    /// Finishes creating a `GDBusProxy`.
    static func new(finish res: AsyncResultProtocol) throws -> DBusProxyRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_proxy_new_finish(cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { DBusProxyRef(cast($0)) }
    }

    /// Finishes creating a `GDBusProxy`.
    static func newFor(busFinish res: AsyncResultProtocol) throws -> DBusProxyRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_proxy_new_for_bus_finish(cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { DBusProxyRef(cast($0)) }
    }

    /// Like `g_dbus_proxy_new_sync()` but takes a `GBusType` instead of a `GDBusConnection`.
    /// 
    /// `GDBusProxy` is used in this [example](#gdbus-wellknown-proxy).
    static func newFor(busSync bus_type: BusType, flags: DBusProxyFlags, info: DBusInterfaceInfoProtocol, name: UnsafePointer<gchar>, objectPath object_path: UnsafePointer<gchar>, interfaceName interface_name: UnsafePointer<gchar>, cancellable: CancellableProtocol) throws -> DBusProxyRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_proxy_new_for_bus_sync(bus_type, flags, cast(info.ptr), name, object_path, interface_name, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { DBusProxyRef(cast($0)) }
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
    static func new(sync connection: DBusConnectionProtocol, flags: DBusProxyFlags, info: DBusInterfaceInfoProtocol, name: UnsafePointer<gchar>, objectPath object_path: UnsafePointer<gchar>, interfaceName interface_name: UnsafePointer<gchar>, cancellable: CancellableProtocol) throws -> DBusProxyRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_proxy_new_sync(cast(connection.ptr), flags, cast(info.ptr), name, object_path, interface_name, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { DBusProxyRef(cast($0)) }
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
    /// Ownership is transferred to the `DBusProxy` instance.
    public init(_ op: UnsafeMutablePointer<GDBusProxy>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `DBusProxyProtocol`
    /// Will retain `GDBusProxy`.
    public convenience init<T: DBusProxyProtocol>(_ other: T) {
        self.init(cast(other.dbus_proxy_ptr))
        g_object_ref(cast(dbus_proxy_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusProxy.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusProxy.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusProxy.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusProxy>(opaquePointer))
    }

    /// Finishes creating a `GDBusProxy`.
    public convenience init(finish res: AsyncResultProtocol) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_proxy_new_finish(cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }

    /// Finishes creating a `GDBusProxy`.
    public convenience init(busFinish res: AsyncResultProtocol) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_proxy_new_for_bus_finish(cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }

    /// Like `g_dbus_proxy_new_sync()` but takes a `GBusType` instead of a `GDBusConnection`.
    /// 
    /// `GDBusProxy` is used in this [example](#gdbus-wellknown-proxy).
    public convenience init(busSync bus_type: BusType, flags: DBusProxyFlags, info: DBusInterfaceInfoProtocol, name: UnsafePointer<gchar>, objectPath object_path: UnsafePointer<gchar>, interfaceName interface_name: UnsafePointer<gchar>, cancellable: CancellableProtocol) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_proxy_new_for_bus_sync(bus_type, flags, cast(info.ptr), name, object_path, interface_name, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
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
    public convenience init(sync connection: DBusConnectionProtocol, flags: DBusProxyFlags, info: DBusInterfaceInfoProtocol, name: UnsafePointer<gchar>, objectPath object_path: UnsafePointer<gchar>, interfaceName interface_name: UnsafePointer<gchar>, cancellable: CancellableProtocol) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_proxy_new_sync(cast(connection.ptr), flags, cast(info.ptr), name, object_path, interface_name, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }

    /// Finishes creating a `GDBusProxy`.
    public static func new(finish res: AsyncResultProtocol) throws -> DBusProxy! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_proxy_new_finish(cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { DBusProxy(cast($0)) }
    }

    /// Finishes creating a `GDBusProxy`.
    public static func newFor(busFinish res: AsyncResultProtocol) throws -> DBusProxy! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_proxy_new_for_bus_finish(cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { DBusProxy(cast($0)) }
    }

    /// Like `g_dbus_proxy_new_sync()` but takes a `GBusType` instead of a `GDBusConnection`.
    /// 
    /// `GDBusProxy` is used in this [example](#gdbus-wellknown-proxy).
    public static func newFor(busSync bus_type: BusType, flags: DBusProxyFlags, info: DBusInterfaceInfoProtocol, name: UnsafePointer<gchar>, objectPath object_path: UnsafePointer<gchar>, interfaceName interface_name: UnsafePointer<gchar>, cancellable: CancellableProtocol) throws -> DBusProxy! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_proxy_new_for_bus_sync(bus_type, flags, cast(info.ptr), name, object_path, interface_name, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { DBusProxy(cast($0)) }
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
    public static func new(sync connection: DBusConnectionProtocol, flags: DBusProxyFlags, info: DBusInterfaceInfoProtocol, name: UnsafePointer<gchar>, objectPath object_path: UnsafePointer<gchar>, interfaceName interface_name: UnsafePointer<gchar>, cancellable: CancellableProtocol) throws -> DBusProxy! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_proxy_new_sync(cast(connection.ptr), flags, cast(info.ptr), name, object_path, interface_name, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { DBusProxy(cast($0)) }
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DBusProxyPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(dbus_proxy_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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
    @discardableResult func connect(signal kind: DBusProxySignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(dbus_proxy_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension DBusProxyProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusProxy` instance.
    var dbus_proxy_ptr: UnsafeMutablePointer<GDBusProxy> { return ptr.assumingMemoryBound(to: GDBusProxy.self) }

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
    func call(methodName method_name: UnsafePointer<gchar>, parameters: VariantProtocol, flags: DBusCallFlags, timeoutMsec timeout_msec: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_dbus_proxy_call(cast(dbus_proxy_ptr), method_name, cast(parameters.ptr), flags, gint(timeout_msec), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an operation started with `g_dbus_proxy_call()`.
    func callFinish(res: AsyncResultProtocol) throws -> UnsafeMutablePointer<GVariant>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_proxy_call_finish(cast(dbus_proxy_ptr), cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
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
    func callSync(methodName method_name: UnsafePointer<gchar>, parameters: VariantProtocol, flags: DBusCallFlags, timeoutMsec timeout_msec: CInt, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GVariant>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_proxy_call_sync(cast(dbus_proxy_ptr), method_name, cast(parameters.ptr), flags, gint(timeout_msec), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Like `g_dbus_proxy_call()` but also takes a `GUnixFDList` object.
    /// 
    /// This method is only available on UNIX.
    func callWithUnixFdList(methodName method_name: UnsafePointer<gchar>, parameters: VariantProtocol, flags: DBusCallFlags, timeoutMsec timeout_msec: CInt, fdList fd_list: UnixFDListProtocol, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_dbus_proxy_call_with_unix_fd_list(cast(dbus_proxy_ptr), method_name, cast(parameters.ptr), flags, gint(timeout_msec), cast(fd_list.ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an operation started with `g_dbus_proxy_call_with_unix_fd_list()`.
    func callWithUnixFdListFinish(outFdList out_fd_list: UnixFDListProtocol, res: AsyncResultProtocol) throws -> UnsafeMutablePointer<GVariant>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_proxy_call_with_unix_fd_list_finish(cast(dbus_proxy_ptr), cast(out_fd_list.ptr), cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Like `g_dbus_proxy_call_sync()` but also takes and returns `GUnixFDList` objects.
    /// 
    /// This method is only available on UNIX.
    func callWithUnixFdListSync(methodName method_name: UnsafePointer<gchar>, parameters: VariantProtocol, flags: DBusCallFlags, timeoutMsec timeout_msec: CInt, fdList fd_list: UnixFDListProtocol, outFdList out_fd_list: UnixFDListProtocol, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GVariant>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_proxy_call_with_unix_fd_list_sync(cast(dbus_proxy_ptr), method_name, cast(parameters.ptr), flags, gint(timeout_msec), cast(fd_list.ptr), cast(out_fd_list.ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Looks up the value for a property from the cache. This call does no
    /// blocking IO.
    /// 
    /// If `proxy` has an expected interface (see
    /// `GDBusProxy:g`-interface-info) and `property_name` is referenced by
    /// it, then `value` is checked against the type of the property.
    func getCachedProperty(propertyName property_name: UnsafePointer<gchar>) -> UnsafeMutablePointer<GVariant>! {
        let rv = g_dbus_proxy_get_cached_property(cast(dbus_proxy_ptr), property_name)
        return cast(rv)
    }

    /// Gets the names of all cached properties on `proxy`.
    func getCachedPropertyNames() -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        let rv = g_dbus_proxy_get_cached_property_names(cast(dbus_proxy_ptr))
        return cast(rv)
    }

    /// Gets the connection `proxy` is for.
    func getConnection() -> UnsafeMutablePointer<GDBusConnection>! {
        let rv = g_dbus_proxy_get_connection(cast(dbus_proxy_ptr))
        return cast(rv)
    }

    /// Gets the timeout to use if -1 (specifying default timeout) is
    /// passed as `timeout_msec` in the `g_dbus_proxy_call()` and
    /// `g_dbus_proxy_call_sync()` functions.
    /// 
    /// See the `GDBusProxy:g`-default-timeout property for more details.
    func getDefaultTimeout() -> CInt {
        let rv = g_dbus_proxy_get_default_timeout(cast(dbus_proxy_ptr))
        return CInt(rv)
    }

    /// Gets the flags that `proxy` was constructed with.
    func getFlags() -> GDBusProxyFlags {
        let rv = g_dbus_proxy_get_flags(cast(dbus_proxy_ptr))
        return rv
    }

    /// Returns the `GDBusInterfaceInfo`, if any, specifying the interface
    /// that `proxy` conforms to. See the `GDBusProxy:g`-interface-info
    /// property for more details.
    func getInterfaceInfo() -> UnsafeMutablePointer<GDBusInterfaceInfo>! {
        let rv = g_dbus_proxy_get_interface_info(cast(dbus_proxy_ptr))
        return cast(rv)
    }

    /// Gets the D-Bus interface name `proxy` is for.
    func getInterfaceName() -> String! {
        let rv = g_dbus_proxy_get_interface_name(cast(dbus_proxy_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the name that `proxy` was constructed for.
    func getName() -> String! {
        let rv = g_dbus_proxy_get_name(cast(dbus_proxy_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// The unique name that owns the name that `proxy` is for or `nil` if
    /// no-one currently owns that name. You may connect to the
    /// `GObject::notify` signal to track changes to the
    /// `GDBusProxy:g`-name-owner property.
    func getNameOwner() -> String! {
        let rv = g_dbus_proxy_get_name_owner(cast(dbus_proxy_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the object path `proxy` is for.
    func getObjectPath() -> String! {
        let rv = g_dbus_proxy_get_object_path(cast(dbus_proxy_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
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
    func setCachedProperty(propertyName property_name: UnsafePointer<gchar>, value: VariantProtocol) {
        g_dbus_proxy_set_cached_property(cast(dbus_proxy_ptr), property_name, cast(value.ptr))
    
    }

    /// Sets the timeout to use if -1 (specifying default timeout) is
    /// passed as `timeout_msec` in the `g_dbus_proxy_call()` and
    /// `g_dbus_proxy_call_sync()` functions.
    /// 
    /// See the `GDBusProxy:g`-default-timeout property for more details.
    func setDefaultTimeout(timeoutMsec timeout_msec: CInt) {
        g_dbus_proxy_set_default_timeout(cast(dbus_proxy_ptr), gint(timeout_msec))
    
    }

    /// Ensure that interactions with `proxy` conform to the given
    /// interface. See the `GDBusProxy:g`-interface-info property for more
    /// details.
    func setInterface(info: DBusInterfaceInfoProtocol) {
        g_dbus_proxy_set_interface_info(cast(dbus_proxy_ptr), cast(info.ptr))
    
    }
    /// Gets the names of all cached properties on `proxy`.
    var cachedPropertyNames: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        /// Gets the names of all cached properties on `proxy`.
        get {
            let rv = g_dbus_proxy_get_cached_property_names(cast(dbus_proxy_ptr))
            return cast(rv)
        }
    }

    /// Gets the connection `proxy` is for.
    var connection: UnsafeMutablePointer<GDBusConnection>! {
        /// Gets the connection `proxy` is for.
        get {
            let rv = g_dbus_proxy_get_connection(cast(dbus_proxy_ptr))
            return cast(rv)
        }
    }

    /// Gets the timeout to use if -1 (specifying default timeout) is
    /// passed as `timeout_msec` in the `g_dbus_proxy_call()` and
    /// `g_dbus_proxy_call_sync()` functions.
    /// 
    /// See the `GDBusProxy:g`-default-timeout property for more details.
    var defaultTimeout: CInt {
        /// Gets the timeout to use if -1 (specifying default timeout) is
        /// passed as `timeout_msec` in the `g_dbus_proxy_call()` and
        /// `g_dbus_proxy_call_sync()` functions.
        /// 
        /// See the `GDBusProxy:g`-default-timeout property for more details.
        get {
            let rv = g_dbus_proxy_get_default_timeout(cast(dbus_proxy_ptr))
            return CInt(rv)
        }
        /// Sets the timeout to use if -1 (specifying default timeout) is
        /// passed as `timeout_msec` in the `g_dbus_proxy_call()` and
        /// `g_dbus_proxy_call_sync()` functions.
        /// 
        /// See the `GDBusProxy:g`-default-timeout property for more details.
        nonmutating set {
            g_dbus_proxy_set_default_timeout(cast(dbus_proxy_ptr), gint(newValue))
        }
    }

    /// Gets the flags that `proxy` was constructed with.
    var flags: GDBusProxyFlags {
        /// Gets the flags that `proxy` was constructed with.
        get {
            let rv = g_dbus_proxy_get_flags(cast(dbus_proxy_ptr))
            return rv
        }
    }

    /// Returns the `GDBusInterfaceInfo`, if any, specifying the interface
    /// that `proxy` conforms to. See the `GDBusProxy:g`-interface-info
    /// property for more details.
    var interfaceInfo: UnsafeMutablePointer<GDBusInterfaceInfo>! {
        /// Returns the `GDBusInterfaceInfo`, if any, specifying the interface
        /// that `proxy` conforms to. See the `GDBusProxy:g`-interface-info
        /// property for more details.
        get {
            let rv = g_dbus_proxy_get_interface_info(cast(dbus_proxy_ptr))
            return cast(rv)
        }
        /// Ensure that interactions with `proxy` conform to the given
        /// interface. See the `GDBusProxy:g`-interface-info property for more
        /// details.
        nonmutating set {
            g_dbus_proxy_set_interface_info(cast(dbus_proxy_ptr), cast(newValue))
        }
    }

    /// Gets the D-Bus interface name `proxy` is for.
    var interfaceName: String! {
        /// Gets the D-Bus interface name `proxy` is for.
        get {
            let rv = g_dbus_proxy_get_interface_name(cast(dbus_proxy_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the name that `proxy` was constructed for.
    var name: String! {
        /// Gets the name that `proxy` was constructed for.
        get {
            let rv = g_dbus_proxy_get_name(cast(dbus_proxy_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// The unique name that owns the name that `proxy` is for or `nil` if
    /// no-one currently owns that name. You may connect to the
    /// `GObject::notify` signal to track changes to the
    /// `GDBusProxy:g`-name-owner property.
    var nameOwner: String! {
        /// The unique name that owns the name that `proxy` is for or `nil` if
        /// no-one currently owns that name. You may connect to the
        /// `GObject::notify` signal to track changes to the
        /// `GDBusProxy:g`-name-owner property.
        get {
            let rv = g_dbus_proxy_get_name_owner(cast(dbus_proxy_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the object path `proxy` is for.
    var objectPath: String! {
        /// Gets the object path `proxy` is for.
        get {
            let rv = g_dbus_proxy_get_object_path(cast(dbus_proxy_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusServer` instance.
    var dbus_server_ptr: UnsafeMutablePointer<GDBusServer> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusServerRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusServer>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusServerProtocol`
    init<T: DBusServerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusServerProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusServerProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusServerProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusServerProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusServerProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    init(sync address: UnsafePointer<gchar>, flags: DBusServerFlags, guid: UnsafePointer<gchar>, observer: DBusAuthObserverProtocol, cancellable: CancellableProtocol) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_server_new_sync(address, flags, guid, cast(observer.ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
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
    static func new(sync address: UnsafePointer<gchar>, flags: DBusServerFlags, guid: UnsafePointer<gchar>, observer: DBusAuthObserverProtocol, cancellable: CancellableProtocol) throws -> DBusServerRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_server_new_sync(address, flags, guid, cast(observer.ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { DBusServerRef(cast($0)) }
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
    /// Ownership is transferred to the `DBusServer` instance.
    public init(_ op: UnsafeMutablePointer<GDBusServer>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `DBusServerProtocol`
    /// Will retain `GDBusServer`.
    public convenience init<T: DBusServerProtocol>(_ other: T) {
        self.init(cast(other.dbus_server_ptr))
        g_object_ref(cast(dbus_server_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusServerProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusServer.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusServerProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusServer.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusServerProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusServer.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusServerProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusServer>(opaquePointer))
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
    public convenience init(sync address: UnsafePointer<gchar>, flags: DBusServerFlags, guid: UnsafePointer<gchar>, observer: DBusAuthObserverProtocol, cancellable: CancellableProtocol) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_server_new_sync(address, flags, guid, cast(observer.ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
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
    public static func new(sync address: UnsafePointer<gchar>, flags: DBusServerFlags, guid: UnsafePointer<gchar>, observer: DBusAuthObserverProtocol, cancellable: CancellableProtocol) throws -> DBusServer! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_server_new_sync(address, flags, guid, cast(observer.ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { DBusServer(cast($0)) }
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DBusServerPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(dbus_server_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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
    @discardableResult func connect(signal kind: DBusServerSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(dbus_server_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension DBusServerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusServer` instance.
    var dbus_server_ptr: UnsafeMutablePointer<GDBusServer> { return ptr.assumingMemoryBound(to: GDBusServer.self) }

    /// Gets a
    /// [D-Bus address](https://dbus.freedesktop.org/doc/dbus-specification.html`addresses`)
    /// string that can be used by clients to connect to `server`.
    func getClientAddress() -> String! {
        let rv = g_dbus_server_get_client_address(cast(dbus_server_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the flags for `server`.
    func getFlags() -> GDBusServerFlags {
        let rv = g_dbus_server_get_flags(cast(dbus_server_ptr))
        return rv
    }

    /// Gets the GUID for `server`.
    func getGuid() -> String! {
        let rv = g_dbus_server_get_guid(cast(dbus_server_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Starts `server`.
    func start() {
        g_dbus_server_start(cast(dbus_server_ptr))
    
    }

    /// Stops `server`.
    func stop() {
        g_dbus_server_stop(cast(dbus_server_ptr))
    
    }
    /// Gets a
    /// [D-Bus address](https://dbus.freedesktop.org/doc/dbus-specification.html`addresses`)
    /// string that can be used by clients to connect to `server`.
    var clientAddress: String! {
        /// Gets a
        /// [D-Bus address](https://dbus.freedesktop.org/doc/dbus-specification.html`addresses`)
        /// string that can be used by clients to connect to `server`.
        get {
            let rv = g_dbus_server_get_client_address(cast(dbus_server_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Flags from the `GDBusServerFlags` enumeration.
    var flags: GDBusServerFlags {
        /// Gets the flags for `server`.
        get {
            let rv = g_dbus_server_get_flags(cast(dbus_server_ptr))
            return rv
        }
    }

    /// The guid of the server.
    var guid: String! {
        /// Gets the GUID for `server`.
        get {
            let rv = g_dbus_server_get_guid(cast(dbus_server_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets whether `server` is active.
    var isActive: Bool {
        /// Gets whether `server` is active.
        get {
            let rv = g_dbus_server_is_active(cast(dbus_server_ptr))
            return Bool(rv != 0)
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDataInputStream` instance.
    var data_input_stream_ptr: UnsafeMutablePointer<GDataInputStream> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension DataInputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDataInputStream>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DataInputStreamProtocol`
    init<T: DataInputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new data input stream for the `base_stream`.
    init( base_stream: InputStreamProtocol) {
        let rv = g_data_input_stream_new(cast(base_stream.ptr))
        self.init(cast(rv))
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
    /// Ownership is transferred to the `DataInputStream` instance.
    public init(_ op: UnsafeMutablePointer<GDataInputStream>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `DataInputStreamProtocol`
    /// Will retain `GDataInputStream`.
    public convenience init<T: DataInputStreamProtocol>(_ other: T) {
        self.init(cast(other.data_input_stream_ptr))
        g_object_ref(cast(data_input_stream_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDataInputStream.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDataInputStream.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDataInputStream.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDataInputStream>(opaquePointer))
    }

    /// Creates a new data input stream for the `base_stream`.
    public convenience init( base_stream: InputStreamProtocol) {
        let rv = g_data_input_stream_new(cast(base_stream.ptr))
        self.init(cast(rv))
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DataInputStreamPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(data_input_stream_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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
    @discardableResult func connect(signal kind: DataInputStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(data_input_stream_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension DataInputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDataInputStream` instance.
    var data_input_stream_ptr: UnsafeMutablePointer<GDataInputStream> { return ptr.assumingMemoryBound(to: GDataInputStream.self) }

    /// Gets the byte order for the data input stream.
    func getByteOrder() -> GDataStreamByteOrder {
        let rv = g_data_input_stream_get_byte_order(cast(data_input_stream_ptr))
        return rv
    }

    /// Gets the current newline type for the `stream`.
    func getNewlineType() -> GDataStreamNewlineType {
        let rv = g_data_input_stream_get_newline_type(cast(data_input_stream_ptr))
        return rv
    }

    /// Reads an unsigned 8-bit/1-byte value from `stream`.
    func readByte(cancellable: CancellableProtocol) throws -> guchar {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_data_input_stream_read_byte(cast(data_input_stream_ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }

    /// Reads a 16-bit/2-byte value from `stream`.
    /// 
    /// In order to get the correct byte order for this read operation,
    /// see `g_data_input_stream_get_byte_order()` and `g_data_input_stream_set_byte_order()`.
    func readInt16(cancellable: CancellableProtocol) throws -> Int16 {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_data_input_stream_read_int16(cast(data_input_stream_ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Int16(rv)
    }

    /// Reads a signed 32-bit/4-byte value from `stream`.
    /// 
    /// In order to get the correct byte order for this read operation,
    /// see `g_data_input_stream_get_byte_order()` and `g_data_input_stream_set_byte_order()`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    func readInt32(cancellable: CancellableProtocol) throws -> Int32 {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_data_input_stream_read_int32(cast(data_input_stream_ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Int32(rv)
    }

    /// Reads a 64-bit/8-byte value from `stream`.
    /// 
    /// In order to get the correct byte order for this read operation,
    /// see `g_data_input_stream_get_byte_order()` and `g_data_input_stream_set_byte_order()`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    func readInt64(cancellable: CancellableProtocol) throws -> Int64 {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_data_input_stream_read_int64(cast(data_input_stream_ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Int64(rv)
    }

    /// Reads a line from the data input stream.  Note that no encoding
    /// checks or conversion is performed; the input is not guaranteed to
    /// be UTF-8, and may in fact have embedded NUL characters.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    func readLine(length: UnsafeMutablePointer<Int>, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<CChar>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_data_input_stream_read_line(cast(data_input_stream_ptr), cast(length), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// The asynchronous version of `g_data_input_stream_read_line()`.  It is
    /// an error to have two outstanding calls to this function.
    /// 
    /// When the operation is finished, `callback` will be called. You
    /// can then call `g_data_input_stream_read_line_finish()` to get
    /// the result of the operation.
    func readLineAsync(ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_data_input_stream_read_line_async(cast(data_input_stream_ptr), gint(io_priority), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finish an asynchronous call started by
    /// `g_data_input_stream_read_line_async()`.  Note the warning about
    /// string encoding in `g_data_input_stream_read_line()` applies here as
    /// well.
    func readLineFinish(result: AsyncResultProtocol, length: UnsafeMutablePointer<Int>) throws -> UnsafeMutablePointer<CChar>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_data_input_stream_read_line_finish(cast(data_input_stream_ptr), cast(result.ptr), cast(length), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Finish an asynchronous call started by
    /// `g_data_input_stream_read_line_async()`.
    func readLineFinishUTF8(result: AsyncResultProtocol, length: UnsafeMutablePointer<Int>) throws -> String! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_data_input_stream_read_line_finish_utf8(cast(data_input_stream_ptr), cast(result.ptr), cast(length), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Reads a UTF-8 encoded line from the data input stream.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    func readLineUTF8(length: UnsafeMutablePointer<Int>, cancellable: CancellableProtocol) throws -> String! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_data_input_stream_read_line_utf8(cast(data_input_stream_ptr), cast(length), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Reads an unsigned 16-bit/2-byte value from `stream`.
    /// 
    /// In order to get the correct byte order for this read operation,
    /// see `g_data_input_stream_get_byte_order()` and `g_data_input_stream_set_byte_order()`.
    func readUint16(cancellable: CancellableProtocol) throws -> UInt16 {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_data_input_stream_read_uint16(cast(data_input_stream_ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return UInt16(rv)
    }

    /// Reads an unsigned 32-bit/4-byte value from `stream`.
    /// 
    /// In order to get the correct byte order for this read operation,
    /// see `g_data_input_stream_get_byte_order()` and `g_data_input_stream_set_byte_order()`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    func readUint32(cancellable: CancellableProtocol) throws -> UInt32 {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_data_input_stream_read_uint32(cast(data_input_stream_ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return UInt32(rv)
    }

    /// Reads an unsigned 64-bit/8-byte value from `stream`.
    /// 
    /// In order to get the correct byte order for this read operation,
    /// see `g_data_input_stream_get_byte_order()`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    func readUint64(cancellable: CancellableProtocol) throws -> UInt64 {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_data_input_stream_read_uint64(cast(data_input_stream_ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return UInt64(rv)
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
    @available(*, deprecated) func readUntil(stopChars stop_chars: UnsafePointer<gchar>, length: UnsafeMutablePointer<Int>, cancellable: CancellableProtocol) throws -> String! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_data_input_stream_read_until(cast(data_input_stream_ptr), stop_chars, cast(length), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
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
    @available(*, deprecated) func readUntilAsync(stopChars stop_chars: UnsafePointer<gchar>, ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_data_input_stream_read_until_async(cast(data_input_stream_ptr), stop_chars, gint(io_priority), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finish an asynchronous call started by
    /// `g_data_input_stream_read_until_async()`.
    ///
    /// **read_until_finish is deprecated:**
    /// Use g_data_input_stream_read_upto_finish() instead, which
    ///     has more consistent behaviour regarding the stop character.
    @available(*, deprecated) func readUntilFinish(result: AsyncResultProtocol, length: UnsafeMutablePointer<Int>) throws -> String! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_data_input_stream_read_until_finish(cast(data_input_stream_ptr), cast(result.ptr), cast(length), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
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
    func readUpto(stopChars stop_chars: UnsafePointer<gchar>, stopCharsLen stop_chars_len: gssize, length: UnsafeMutablePointer<Int>, cancellable: CancellableProtocol) throws -> String! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_data_input_stream_read_upto(cast(data_input_stream_ptr), stop_chars, stop_chars_len, cast(length), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
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
    func readUptoAsync(stopChars stop_chars: UnsafePointer<gchar>, stopCharsLen stop_chars_len: gssize, ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_data_input_stream_read_upto_async(cast(data_input_stream_ptr), stop_chars, stop_chars_len, gint(io_priority), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finish an asynchronous call started by
    /// `g_data_input_stream_read_upto_async()`.
    /// 
    /// Note that this function does not consume the stop character. You
    /// have to use `g_data_input_stream_read_byte()` to get it before calling
    /// `g_data_input_stream_read_upto_async()` again.
    /// 
    /// The returned string will always be nul-terminated on success.
    func readUptoFinish(result: AsyncResultProtocol, length: UnsafeMutablePointer<Int>) throws -> String! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_data_input_stream_read_upto_finish(cast(data_input_stream_ptr), cast(result.ptr), cast(length), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// This function sets the byte order for the given `stream`. All subsequent
    /// reads from the `stream` will be read in the given `order`.
    func setByte(order: DataStreamByteOrder) {
        g_data_input_stream_set_byte_order(cast(data_input_stream_ptr), order)
    
    }

    /// Sets the newline type for the `stream`.
    /// 
    /// Note that using G_DATA_STREAM_NEWLINE_TYPE_ANY is slightly unsafe. If a read
    /// chunk ends in "CR" we must read an additional byte to know if this is "CR" or
    /// "CR LF", and this might block if there is no more data available.
    func setNewline(type: DataStreamNewlineType) {
        g_data_input_stream_set_newline_type(cast(data_input_stream_ptr), type)
    
    }
    /// Gets the byte order for the data input stream.
    var byteOrder: GDataStreamByteOrder {
        /// Gets the byte order for the data input stream.
        get {
            let rv = g_data_input_stream_get_byte_order(cast(data_input_stream_ptr))
            return rv
        }
        /// This function sets the byte order for the given `stream`. All subsequent
        /// reads from the `stream` will be read in the given `order`.
        nonmutating set {
            g_data_input_stream_set_byte_order(cast(data_input_stream_ptr), newValue)
        }
    }

    /// Gets the current newline type for the `stream`.
    var newlineType: GDataStreamNewlineType {
        /// Gets the current newline type for the `stream`.
        get {
            let rv = g_data_input_stream_get_newline_type(cast(data_input_stream_ptr))
            return rv
        }
        /// Sets the newline type for the `stream`.
        /// 
        /// Note that using G_DATA_STREAM_NEWLINE_TYPE_ANY is slightly unsafe. If a read
        /// chunk ends in "CR" we must read an additional byte to know if this is "CR" or
        /// "CR LF", and this might block if there is no more data available.
        nonmutating set {
            g_data_input_stream_set_newline_type(cast(data_input_stream_ptr), newValue)
        }
    }
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDataOutputStream` instance.
    var data_output_stream_ptr: UnsafeMutablePointer<GDataOutputStream> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension DataOutputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDataOutputStream>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DataOutputStreamProtocol`
    init<T: DataOutputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new data output stream for `base_stream`.
    init( base_stream: OutputStreamProtocol) {
        let rv = g_data_output_stream_new(cast(base_stream.ptr))
        self.init(cast(rv))
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
    /// Ownership is transferred to the `DataOutputStream` instance.
    public init(_ op: UnsafeMutablePointer<GDataOutputStream>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `DataOutputStreamProtocol`
    /// Will retain `GDataOutputStream`.
    public convenience init<T: DataOutputStreamProtocol>(_ other: T) {
        self.init(cast(other.data_output_stream_ptr))
        g_object_ref(cast(data_output_stream_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDataOutputStream.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDataOutputStream.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDataOutputStream.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDataOutputStream>(opaquePointer))
    }

    /// Creates a new data output stream for `base_stream`.
    public convenience init( base_stream: OutputStreamProtocol) {
        let rv = g_data_output_stream_new(cast(base_stream.ptr))
        self.init(cast(rv))
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DataOutputStreamPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(data_output_stream_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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
    @discardableResult func connect(signal kind: DataOutputStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(data_output_stream_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension DataOutputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDataOutputStream` instance.
    var data_output_stream_ptr: UnsafeMutablePointer<GDataOutputStream> { return ptr.assumingMemoryBound(to: GDataOutputStream.self) }

    /// Gets the byte order for the stream.
    func getByteOrder() -> GDataStreamByteOrder {
        let rv = g_data_output_stream_get_byte_order(cast(data_output_stream_ptr))
        return rv
    }

    /// Puts a byte into the output stream.
    func putByte(data: UInt8, cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_data_output_stream_put_byte(cast(data_output_stream_ptr), data, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Puts a signed 16-bit integer into the output stream.
    func putInt16(data: Int16, cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_data_output_stream_put_int16(cast(data_output_stream_ptr), gint16(data), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Puts a signed 32-bit integer into the output stream.
    func putInt32(data: Int32, cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_data_output_stream_put_int32(cast(data_output_stream_ptr), gint32(data), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Puts a signed 64-bit integer into the stream.
    func putInt64(data: Int64, cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_data_output_stream_put_int64(cast(data_output_stream_ptr), gint64(data), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Puts a string into the output stream.
    func putString(str: UnsafePointer<CChar>, cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_data_output_stream_put_string(cast(data_output_stream_ptr), str, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Puts an unsigned 16-bit integer into the output stream.
    func putUint16(data: UInt16, cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_data_output_stream_put_uint16(cast(data_output_stream_ptr), guint16(data), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Puts an unsigned 32-bit integer into the stream.
    func putUint32(data: UInt32, cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_data_output_stream_put_uint32(cast(data_output_stream_ptr), guint32(data), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Puts an unsigned 64-bit integer into the stream.
    func putUint64(data: UInt64, cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_data_output_stream_put_uint64(cast(data_output_stream_ptr), guint64(data), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Sets the byte order of the data output stream to `order`.
    func setByte(order: DataStreamByteOrder) {
        g_data_output_stream_set_byte_order(cast(data_output_stream_ptr), order)
    
    }
    /// Gets the byte order for the stream.
    var byteOrder: GDataStreamByteOrder {
        /// Gets the byte order for the stream.
        get {
            let rv = g_data_output_stream_get_byte_order(cast(data_output_stream_ptr))
            return rv
        }
        /// Sets the byte order of the data output stream to `order`.
        nonmutating set {
            g_data_output_stream_set_byte_order(cast(data_output_stream_ptr), newValue)
        }
    }
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GEmblem` instance.
    var emblem_ptr: UnsafeMutablePointer<GEmblem> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension EmblemRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GEmblem>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EmblemProtocol`
    init<T: EmblemProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new emblem for `icon`.
    init( icon: IconProtocol) {
        let rv = g_emblem_new(cast(icon.ptr))
        self.init(cast(rv))
    }

    /// Creates a new emblem for `icon`.
    init(origin icon: IconProtocol, origin: EmblemOrigin) {
        let rv = g_emblem_new_with_origin(cast(icon.ptr), origin)
        self.init(cast(rv))
    }
    /// Creates a new emblem for `icon`.
    static func newWith(origin icon: IconProtocol, origin: EmblemOrigin) -> EmblemRef! {
        let rv = g_emblem_new_with_origin(cast(icon.ptr), origin)
        return rv.map { EmblemRef(cast($0)) }
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
    /// Ownership is transferred to the `Emblem` instance.
    public init(_ op: UnsafeMutablePointer<GEmblem>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `EmblemProtocol`
    /// Will retain `GEmblem`.
    public convenience init<T: EmblemProtocol>(_ other: T) {
        self.init(cast(other.emblem_ptr))
        g_object_ref(cast(emblem_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GEmblem.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GEmblem.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GEmblem.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GEmblem>(opaquePointer))
    }

    /// Creates a new emblem for `icon`.
    public convenience init( icon: IconProtocol) {
        let rv = g_emblem_new(cast(icon.ptr))
        self.init(cast(rv))
    }

    /// Creates a new emblem for `icon`.
    public convenience init(origin icon: IconProtocol, origin: EmblemOrigin) {
        let rv = g_emblem_new_with_origin(cast(icon.ptr), origin)
        self.init(cast(rv))
    }

    /// Creates a new emblem for `icon`.
    public static func newWith(origin icon: IconProtocol, origin: EmblemOrigin) -> Emblem! {
        let rv = g_emblem_new_with_origin(cast(icon.ptr), origin)
        return rv.map { Emblem(cast($0)) }
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: EmblemPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(emblem_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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
    @discardableResult func connect(signal kind: EmblemSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(emblem_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension EmblemProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GEmblem` instance.
    var emblem_ptr: UnsafeMutablePointer<GEmblem> { return ptr.assumingMemoryBound(to: GEmblem.self) }

    /// Gives back the icon from `emblem`.
    func getIcon() -> UnsafeMutablePointer<GIcon>! {
        let rv = g_emblem_get_icon(cast(emblem_ptr))
        return cast(rv)
    }

    /// Gets the origin of the emblem.
    func getOrigin() -> GEmblemOrigin {
        let rv = g_emblem_get_origin(cast(emblem_ptr))
        return rv
    }
    var icon: UnsafeMutablePointer<GIcon>! {
        /// Gives back the icon from `emblem`.
        get {
            let rv = g_emblem_get_icon(cast(emblem_ptr))
            return cast(rv)
        }
    }

    var origin: GEmblemOrigin {
        /// Gets the origin of the emblem.
        get {
            let rv = g_emblem_get_origin(cast(emblem_ptr))
            return rv
        }
    }
}



