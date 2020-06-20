import CGLib
import GLib
import GLibObject

// MARK: - NativeVolumeMonitor Class

/// The `NativeVolumeMonitorProtocol` protocol exposes the methods and properties of an underlying `GNativeVolumeMonitor` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NativeVolumeMonitor`.
/// Alternatively, use `NativeVolumeMonitorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol NativeVolumeMonitorProtocol: VolumeMonitorProtocol {
        /// Untyped pointer to the underlying `GNativeVolumeMonitor` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GNativeVolumeMonitor` instance.
    var native_volume_monitor_ptr: UnsafeMutablePointer<GNativeVolumeMonitor> { get }
}

/// The `NativeVolumeMonitorRef` type acts as a lightweight Swift reference to an underlying `GNativeVolumeMonitor` instance.
/// It exposes methods that can operate on this data type through `NativeVolumeMonitorProtocol` conformance.
/// Use `NativeVolumeMonitorRef` only as an `unowned` reference to an existing `GNativeVolumeMonitor` instance.
///

public struct NativeVolumeMonitorRef: NativeVolumeMonitorProtocol {
        /// Untyped pointer to the underlying `GNativeVolumeMonitor` instance.
    /// For type-safe access, use the generated, typed pointer `native_volume_monitor_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension NativeVolumeMonitorRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GNativeVolumeMonitor>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `NativeVolumeMonitorProtocol`
    init<T: NativeVolumeMonitorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeVolumeMonitorProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeVolumeMonitorProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeVolumeMonitorProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeVolumeMonitorProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeVolumeMonitorProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `NativeVolumeMonitor` type acts as a reference-counted owner of an underlying `GNativeVolumeMonitor` instance.
/// It provides the methods that can operate on this data type through `NativeVolumeMonitorProtocol` conformance.
/// Use `NativeVolumeMonitor` as a strong reference or owner of a `GNativeVolumeMonitor` instance.
///

open class NativeVolumeMonitor: VolumeMonitor, NativeVolumeMonitorProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NativeVolumeMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GNativeVolumeMonitor>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GNativeVolumeMonitor`.
    /// i.e., ownership is transferred to the `NativeVolumeMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GNativeVolumeMonitor>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `NativeVolumeMonitorProtocol`
    /// Will retain `GNativeVolumeMonitor`.
    /// - Parameter other: an instance of a related type that implements `NativeVolumeMonitorProtocol`
    public init<T: NativeVolumeMonitorProtocol>(nativeVolumeMonitor other: T) {
        super.init(retaining: cast(other.native_volume_monitor_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeVolumeMonitorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeVolumeMonitorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeVolumeMonitorProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeVolumeMonitorProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeVolumeMonitorProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeVolumeMonitorProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeVolumeMonitorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeVolumeMonitorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no NativeVolumeMonitor properties

public enum NativeVolumeMonitorSignalName: String, SignalNameProtocol {
    /// Emitted when a drive changes.
    case driveChanged = "drive-changed"
    /// Emitted when a drive is connected to the system.
    case driveConnected = "drive-connected"
    /// Emitted when a drive is disconnected from the system.
    case driveDisconnected = "drive-disconnected"
    /// Emitted when the eject button is pressed on `drive`.
    case driveEjectButton = "drive-eject-button"
    /// Emitted when the stop button is pressed on `drive`.
    case driveStopButton = "drive-stop-button"
    /// Emitted when a mount is added.
    case mountAdded = "mount-added"
    /// Emitted when a mount changes.
    case mountChanged = "mount-changed"
    /// May be emitted when a mount is about to be removed.
    /// 
    /// This signal depends on the backend and is only emitted if
    /// GIO was used to unmount.
    case mountPreUnmount = "mount-pre-unmount"
    /// Emitted when a mount is removed.
    case mountRemoved = "mount-removed"
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
    /// Emitted when a mountable volume is added to the system.
    case volumeAdded = "volume-added"
    /// Emitted when mountable volume is changed.
    case volumeChanged = "volume-changed"
    /// Emitted when a mountable volume is removed from the system.
    case volumeRemoved = "volume-removed"

}

public extension NativeVolumeMonitorProtocol {
    /// Connect a `NativeVolumeMonitorSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: NativeVolumeMonitorSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(native_volume_monitor_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: NativeVolumeMonitor Class: NativeVolumeMonitorProtocol extension (methods and fields)
public extension NativeVolumeMonitorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GNativeVolumeMonitor` instance.
    var native_volume_monitor_ptr: UnsafeMutablePointer<GNativeVolumeMonitor> { return ptr.assumingMemoryBound(to: GNativeVolumeMonitor.self) }


    var parentInstance: GVolumeMonitor {
        get {
            let rv: GVolumeMonitor = cast(native_volume_monitor_ptr.pointee.parent_instance)
            return rv
        }
    }

}



// MARK: - NetworkAddress Class

/// The `NetworkAddressProtocol` protocol exposes the methods and properties of an underlying `GNetworkAddress` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NetworkAddress`.
/// Alternatively, use `NetworkAddressRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GNetworkAddress` provides an easy way to resolve a hostname and
/// then attempt to connect to that host, handling the possibility of
/// multiple IP addresses and multiple address families.
/// 
/// The enumeration results of resolved addresses *may* be cached as long
/// as this object is kept alive which may have unexpected results if
/// alive for too long.
/// 
/// See `GSocketConnectable` for an example of using the connectable
/// interface.
public protocol NetworkAddressProtocol: ObjectProtocol, SocketConnectableProtocol {
        /// Untyped pointer to the underlying `GNetworkAddress` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GNetworkAddress` instance.
    var network_address_ptr: UnsafeMutablePointer<GNetworkAddress> { get }
}

/// The `NetworkAddressRef` type acts as a lightweight Swift reference to an underlying `GNetworkAddress` instance.
/// It exposes methods that can operate on this data type through `NetworkAddressProtocol` conformance.
/// Use `NetworkAddressRef` only as an `unowned` reference to an existing `GNetworkAddress` instance.
///
/// `GNetworkAddress` provides an easy way to resolve a hostname and
/// then attempt to connect to that host, handling the possibility of
/// multiple IP addresses and multiple address families.
/// 
/// The enumeration results of resolved addresses *may* be cached as long
/// as this object is kept alive which may have unexpected results if
/// alive for too long.
/// 
/// See `GSocketConnectable` for an example of using the connectable
/// interface.
public struct NetworkAddressRef: NetworkAddressProtocol {
        /// Untyped pointer to the underlying `GNetworkAddress` instance.
    /// For type-safe access, use the generated, typed pointer `network_address_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension NetworkAddressRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GNetworkAddress>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `NetworkAddressProtocol`
    init<T: NetworkAddressProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkAddressProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkAddressProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkAddressProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkAddressProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkAddressProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GSocketConnectable` for connecting to the given
    /// `hostname` and `port`.
    /// 
    /// Note that depending on the configuration of the machine, a
    /// `hostname` of `localhost` may refer to the IPv4 loopback address
    /// only, or to both IPv4 and IPv6; use
    /// `g_network_address_new_loopback()` to create a `GNetworkAddress` that
    /// is guaranteed to resolve to both addresses.
    init( hostname: UnsafePointer<gchar>, port: UInt16) {
        let rv: UnsafeMutablePointer<GSocketConnectable>! = cast(g_network_address_new(hostname, guint16(port)))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// Creates a new `GSocketConnectable` for connecting to the local host
    /// over a loopback connection to the given `port`. This is intended for
    /// use in connecting to local services which may be running on IPv4 or
    /// IPv6.
    /// 
    /// The connectable will return IPv4 and IPv6 loopback addresses,
    /// regardless of how the host resolves `localhost`. By contrast,
    /// `g_network_address_new()` will often only return an IPv4 address when
    /// resolving `localhost`, and an IPv6 address for `localhost6`.
    /// 
    /// `g_network_address_get_hostname()` will always return `localhost` for
    /// a `GNetworkAddress` created with this constructor.
    init(loopback port: UInt16) {
        let rv: UnsafeMutablePointer<GSocketConnectable>! = cast(g_network_address_new_loopback(guint16(port)))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
    /// Creates a new `GSocketConnectable` for connecting to the local host
    /// over a loopback connection to the given `port`. This is intended for
    /// use in connecting to local services which may be running on IPv4 or
    /// IPv6.
    /// 
    /// The connectable will return IPv4 and IPv6 loopback addresses,
    /// regardless of how the host resolves `localhost`. By contrast,
    /// `g_network_address_new()` will often only return an IPv4 address when
    /// resolving `localhost`, and an IPv6 address for `localhost6`.
    /// 
    /// `g_network_address_get_hostname()` will always return `localhost` for
    /// a `GNetworkAddress` created with this constructor.
    static func new(loopback port: UInt16) -> NetworkAddressRef! {
        let rv: UnsafeMutablePointer<GSocketConnectable>! = cast(g_network_address_new_loopback(guint16(port)))
        return rv.map { NetworkAddressRef(cast($0)) }
    }

    /// Creates a new `GSocketConnectable` for connecting to the given
    /// `hostname` and `port`. May fail and return `nil` in case
    /// parsing `host_and_port` fails.
    /// 
    /// `host_and_port` may be in any of a number of recognised formats; an IPv6
    /// address, an IPv4 address, or a domain name (in which case a DNS
    /// lookup is performed). Quoting with [] is supported for all address
    /// types. A port override may be specified in the usual way with a
    /// colon.
    /// 
    /// If no port is specified in `host_and_port` then `default_port` will be
    /// used as the port number to connect to.
    /// 
    /// In general, `host_and_port` is expected to be provided by the user
    /// (allowing them to give the hostname, and a port override if necessary)
    /// and `default_port` is expected to be provided by the application.
    /// 
    /// (The port component of `host_and_port` can also be specified as a
    /// service name rather than as a numeric port, but this functionality
    /// is deprecated, because it depends on the contents of /etc/services,
    /// which is generally quite sparse on platforms other than Linux.)
    static func parse(hostAndPort host_and_port: UnsafePointer<gchar>, defaultPort default_port: UInt16) throws -> NetworkAddressRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSocketConnectable>! = cast(g_network_address_parse(host_and_port, guint16(default_port), &error))
        if let error = error { throw ErrorType(error) }
        return rv.map { NetworkAddressRef(cast($0)) }
    }

    /// Creates a new `GSocketConnectable` for connecting to the given
    /// `uri`. May fail and return `nil` in case parsing `uri` fails.
    /// 
    /// Using this rather than `g_network_address_new()` or
    /// `g_network_address_parse()` allows `GSocketClient` to determine
    /// when to use application-specific proxy protocols.
    static func parse(uri: UnsafePointer<gchar>, defaultPort default_port: UInt16) throws -> NetworkAddressRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSocketConnectable>! = cast(g_network_address_parse_uri(uri, guint16(default_port), &error))
        if let error = error { throw ErrorType(error) }
        return rv.map { NetworkAddressRef(cast($0)) }
    }
}

/// The `NetworkAddress` type acts as a reference-counted owner of an underlying `GNetworkAddress` instance.
/// It provides the methods that can operate on this data type through `NetworkAddressProtocol` conformance.
/// Use `NetworkAddress` as a strong reference or owner of a `GNetworkAddress` instance.
///
/// `GNetworkAddress` provides an easy way to resolve a hostname and
/// then attempt to connect to that host, handling the possibility of
/// multiple IP addresses and multiple address families.
/// 
/// The enumeration results of resolved addresses *may* be cached as long
/// as this object is kept alive which may have unexpected results if
/// alive for too long.
/// 
/// See `GSocketConnectable` for an example of using the connectable
/// interface.
open class NetworkAddress: Object, NetworkAddressProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NetworkAddress` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GNetworkAddress>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GNetworkAddress`.
    /// i.e., ownership is transferred to the `NetworkAddress` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GNetworkAddress>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `NetworkAddressProtocol`
    /// Will retain `GNetworkAddress`.
    /// - Parameter other: an instance of a related type that implements `NetworkAddressProtocol`
    public init<T: NetworkAddressProtocol>(networkAddress other: T) {
        super.init(retaining: cast(other.network_address_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkAddressProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkAddressProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkAddressProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkAddressProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkAddressProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkAddressProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkAddressProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkAddressProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GSocketConnectable` for connecting to the given
    /// `hostname` and `port`.
    /// 
    /// Note that depending on the configuration of the machine, a
    /// `hostname` of `localhost` may refer to the IPv4 loopback address
    /// only, or to both IPv4 and IPv6; use
    /// `g_network_address_new_loopback()` to create a `GNetworkAddress` that
    /// is guaranteed to resolve to both addresses.
    public init( hostname: UnsafePointer<gchar>, port: UInt16) {
        let rv: UnsafeMutablePointer<GSocketConnectable>! = cast(g_network_address_new(hostname, guint16(port)))
        super.init(cast(rv))
    }

    /// Creates a new `GSocketConnectable` for connecting to the local host
    /// over a loopback connection to the given `port`. This is intended for
    /// use in connecting to local services which may be running on IPv4 or
    /// IPv6.
    /// 
    /// The connectable will return IPv4 and IPv6 loopback addresses,
    /// regardless of how the host resolves `localhost`. By contrast,
    /// `g_network_address_new()` will often only return an IPv4 address when
    /// resolving `localhost`, and an IPv6 address for `localhost6`.
    /// 
    /// `g_network_address_get_hostname()` will always return `localhost` for
    /// a `GNetworkAddress` created with this constructor.
    public init(loopback port: UInt16) {
        let rv: UnsafeMutablePointer<GSocketConnectable>! = cast(g_network_address_new_loopback(guint16(port)))
        super.init(cast(rv))
    }

    /// Creates a new `GSocketConnectable` for connecting to the local host
    /// over a loopback connection to the given `port`. This is intended for
    /// use in connecting to local services which may be running on IPv4 or
    /// IPv6.
    /// 
    /// The connectable will return IPv4 and IPv6 loopback addresses,
    /// regardless of how the host resolves `localhost`. By contrast,
    /// `g_network_address_new()` will often only return an IPv4 address when
    /// resolving `localhost`, and an IPv6 address for `localhost6`.
    /// 
    /// `g_network_address_get_hostname()` will always return `localhost` for
    /// a `GNetworkAddress` created with this constructor.
    public static func new(loopback port: UInt16) -> NetworkAddress! {
        let rv: UnsafeMutablePointer<GSocketConnectable>! = cast(g_network_address_new_loopback(guint16(port)))
        return rv.map { NetworkAddress(cast($0)) }
    }

    /// Creates a new `GSocketConnectable` for connecting to the given
    /// `hostname` and `port`. May fail and return `nil` in case
    /// parsing `host_and_port` fails.
    /// 
    /// `host_and_port` may be in any of a number of recognised formats; an IPv6
    /// address, an IPv4 address, or a domain name (in which case a DNS
    /// lookup is performed). Quoting with [] is supported for all address
    /// types. A port override may be specified in the usual way with a
    /// colon.
    /// 
    /// If no port is specified in `host_and_port` then `default_port` will be
    /// used as the port number to connect to.
    /// 
    /// In general, `host_and_port` is expected to be provided by the user
    /// (allowing them to give the hostname, and a port override if necessary)
    /// and `default_port` is expected to be provided by the application.
    /// 
    /// (The port component of `host_and_port` can also be specified as a
    /// service name rather than as a numeric port, but this functionality
    /// is deprecated, because it depends on the contents of /etc/services,
    /// which is generally quite sparse on platforms other than Linux.)
    public static func parse(hostAndPort host_and_port: UnsafePointer<gchar>, defaultPort default_port: UInt16) throws -> NetworkAddress! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSocketConnectable>! = cast(g_network_address_parse(host_and_port, guint16(default_port), &error))
        if let error = error { throw ErrorType(error) }
        return rv.map { NetworkAddress(cast($0)) }
    }

    /// Creates a new `GSocketConnectable` for connecting to the given
    /// `uri`. May fail and return `nil` in case parsing `uri` fails.
    /// 
    /// Using this rather than `g_network_address_new()` or
    /// `g_network_address_parse()` allows `GSocketClient` to determine
    /// when to use application-specific proxy protocols.
    public static func parse(uri: UnsafePointer<gchar>, defaultPort default_port: UInt16) throws -> NetworkAddress! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GSocketConnectable>! = cast(g_network_address_parse_uri(uri, guint16(default_port), &error))
        if let error = error { throw ErrorType(error) }
        return rv.map { NetworkAddress(cast($0)) }
    }

}

public enum NetworkAddressPropertyName: String, PropertyNameProtocol {
    case hostname = "hostname"
    case port = "port"
    case scheme = "scheme"
}

public extension NetworkAddressProtocol {
    /// Bind a `NetworkAddressPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: NetworkAddressPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(network_address_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

    /// Get the value of a NetworkAddress property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func get(property: NetworkAddressPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a NetworkAddress property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func set(property: NetworkAddressPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum NetworkAddressSignalName: String, SignalNameProtocol {
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
    case notifyHostname = "notify::hostname"
    case notifyPort = "notify::port"
    case notifyScheme = "notify::scheme"
}

public extension NetworkAddressProtocol {
    /// Connect a `NetworkAddressSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: NetworkAddressSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(network_address_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: NetworkAddress Class: NetworkAddressProtocol extension (methods and fields)
public extension NetworkAddressProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GNetworkAddress` instance.
    var network_address_ptr: UnsafeMutablePointer<GNetworkAddress> { return ptr.assumingMemoryBound(to: GNetworkAddress.self) }

    /// Gets `addr`'s hostname. This might be either UTF-8 or ASCII-encoded,
    /// depending on what `addr` was created with.
    func getHostname() -> String! {
        let rv: String! = cast(g_network_address_get_hostname(cast(network_address_ptr)))
        return cast(rv)
    }

    /// Gets `addr`'s port number
    func getPort() -> UInt16 {
        let rv = g_network_address_get_port(cast(network_address_ptr))
        return UInt16(rv)
    }

    /// Gets `addr`'s scheme
    func getScheme() -> String! {
        let rv: String! = cast(g_network_address_get_scheme(cast(network_address_ptr)))
        return cast(rv)
    }
    var hostname: String! {
        /// Gets `addr`'s hostname. This might be either UTF-8 or ASCII-encoded,
        /// depending on what `addr` was created with.
        get {
            let rv: String! = cast(g_network_address_get_hostname(cast(network_address_ptr)))
            return cast(rv)
        }
    }

    var port: UInt16 {
        /// Gets `addr`'s port number
        get {
            let rv = g_network_address_get_port(cast(network_address_ptr))
            return UInt16(rv)
        }
    }

    var scheme: String! {
        /// Gets `addr`'s scheme
        get {
            let rv: String! = cast(g_network_address_get_scheme(cast(network_address_ptr)))
            return cast(rv)
        }
    }

    var parentInstance: GObject {
        get {
            let rv: GObject = cast(network_address_ptr.pointee.parent_instance)
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - NetworkService Class

/// The `NetworkServiceProtocol` protocol exposes the methods and properties of an underlying `GNetworkService` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NetworkService`.
/// Alternatively, use `NetworkServiceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Like `GNetworkAddress` does with hostnames, `GNetworkService`
/// provides an easy way to resolve a SRV record, and then attempt to
/// connect to one of the hosts that implements that service, handling
/// service priority/weighting, multiple IP addresses, and multiple
/// address families.
/// 
/// See `GSrvTarget` for more information about SRV records, and see
/// `GSocketConnectable` for an example of using the connectable
/// interface.
public protocol NetworkServiceProtocol: ObjectProtocol, SocketConnectableProtocol {
        /// Untyped pointer to the underlying `GNetworkService` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GNetworkService` instance.
    var network_service_ptr: UnsafeMutablePointer<GNetworkService> { get }
}

/// The `NetworkServiceRef` type acts as a lightweight Swift reference to an underlying `GNetworkService` instance.
/// It exposes methods that can operate on this data type through `NetworkServiceProtocol` conformance.
/// Use `NetworkServiceRef` only as an `unowned` reference to an existing `GNetworkService` instance.
///
/// Like `GNetworkAddress` does with hostnames, `GNetworkService`
/// provides an easy way to resolve a SRV record, and then attempt to
/// connect to one of the hosts that implements that service, handling
/// service priority/weighting, multiple IP addresses, and multiple
/// address families.
/// 
/// See `GSrvTarget` for more information about SRV records, and see
/// `GSocketConnectable` for an example of using the connectable
/// interface.
public struct NetworkServiceRef: NetworkServiceProtocol {
        /// Untyped pointer to the underlying `GNetworkService` instance.
    /// For type-safe access, use the generated, typed pointer `network_service_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension NetworkServiceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GNetworkService>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `NetworkServiceProtocol`
    init<T: NetworkServiceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkServiceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkServiceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkServiceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkServiceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkServiceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GNetworkService` representing the given `service`,
    /// `protocol`, and `domain`. This will initially be unresolved; use the
    /// `GSocketConnectable` interface to resolve it.
    init( service: UnsafePointer<gchar>, protocol_: UnsafePointer<gchar>, domain: UnsafePointer<gchar>) {
        let rv: UnsafeMutablePointer<GSocketConnectable>! = cast(g_network_service_new(service, protocol_, domain))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
}

/// The `NetworkService` type acts as a reference-counted owner of an underlying `GNetworkService` instance.
/// It provides the methods that can operate on this data type through `NetworkServiceProtocol` conformance.
/// Use `NetworkService` as a strong reference or owner of a `GNetworkService` instance.
///
/// Like `GNetworkAddress` does with hostnames, `GNetworkService`
/// provides an easy way to resolve a SRV record, and then attempt to
/// connect to one of the hosts that implements that service, handling
/// service priority/weighting, multiple IP addresses, and multiple
/// address families.
/// 
/// See `GSrvTarget` for more information about SRV records, and see
/// `GSocketConnectable` for an example of using the connectable
/// interface.
open class NetworkService: Object, NetworkServiceProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NetworkService` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GNetworkService>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GNetworkService`.
    /// i.e., ownership is transferred to the `NetworkService` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GNetworkService>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `NetworkServiceProtocol`
    /// Will retain `GNetworkService`.
    /// - Parameter other: an instance of a related type that implements `NetworkServiceProtocol`
    public init<T: NetworkServiceProtocol>(networkService other: T) {
        super.init(retaining: cast(other.network_service_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkServiceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkServiceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkServiceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkServiceProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkServiceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkServiceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkServiceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkServiceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GNetworkService` representing the given `service`,
    /// `protocol`, and `domain`. This will initially be unresolved; use the
    /// `GSocketConnectable` interface to resolve it.
    public init( service: UnsafePointer<gchar>, protocol_: UnsafePointer<gchar>, domain: UnsafePointer<gchar>) {
        let rv: UnsafeMutablePointer<GSocketConnectable>! = cast(g_network_service_new(service, protocol_, domain))
        super.init(cast(rv))
    }


}

public enum NetworkServicePropertyName: String, PropertyNameProtocol {
    case domain = "domain"
    case protocol_ = "protocol"
    case scheme = "scheme"
    case service = "service"
}

public extension NetworkServiceProtocol {
    /// Bind a `NetworkServicePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: NetworkServicePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(network_service_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

    /// Get the value of a NetworkService property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func get(property: NetworkServicePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a NetworkService property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func set(property: NetworkServicePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum NetworkServiceSignalName: String, SignalNameProtocol {
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
    case notifyDomain = "notify::domain"
    case notifyProtocol_ = "notify::protocol"
    case notifyScheme = "notify::scheme"
    case notifyService = "notify::service"
}

public extension NetworkServiceProtocol {
    /// Connect a `NetworkServiceSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: NetworkServiceSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(network_service_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: NetworkService Class: NetworkServiceProtocol extension (methods and fields)
public extension NetworkServiceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GNetworkService` instance.
    var network_service_ptr: UnsafeMutablePointer<GNetworkService> { return ptr.assumingMemoryBound(to: GNetworkService.self) }

    /// Gets the domain that `srv` serves. This might be either UTF-8 or
    /// ASCII-encoded, depending on what `srv` was created with.
    func getDomain() -> String! {
        let rv: String! = cast(g_network_service_get_domain(cast(network_service_ptr)))
        return cast(rv)
    }

    /// Gets `srv`'s protocol name (eg, "tcp").
    func getProtocol() -> String! {
        let rv: String! = cast(g_network_service_get_protocol(cast(network_service_ptr)))
        return cast(rv)
    }

    /// Get's the URI scheme used to resolve proxies. By default, the service name
    /// is used as scheme.
    func getScheme() -> String! {
        let rv: String! = cast(g_network_service_get_scheme(cast(network_service_ptr)))
        return cast(rv)
    }

    /// Gets `srv`'s service name (eg, "ldap").
    func getService() -> String! {
        let rv: String! = cast(g_network_service_get_service(cast(network_service_ptr)))
        return cast(rv)
    }

    /// Set's the URI scheme used to resolve proxies. By default, the service name
    /// is used as scheme.
    func set(scheme: UnsafePointer<gchar>) {
        g_network_service_set_scheme(cast(network_service_ptr), scheme)
    
    }
    var domain: String! {
        /// Gets the domain that `srv` serves. This might be either UTF-8 or
        /// ASCII-encoded, depending on what `srv` was created with.
        get {
            let rv: String! = cast(g_network_service_get_domain(cast(network_service_ptr)))
            return cast(rv)
        }
    }

    var `protocol`: String! {
        /// Gets `srv`'s protocol name (eg, "tcp").
        get {
            let rv: String! = cast(g_network_service_get_protocol(cast(network_service_ptr)))
            return cast(rv)
        }
    }

    var scheme: String! {
        /// Get's the URI scheme used to resolve proxies. By default, the service name
        /// is used as scheme.
        get {
            let rv: String! = cast(g_network_service_get_scheme(cast(network_service_ptr)))
            return cast(rv)
        }
        /// Set's the URI scheme used to resolve proxies. By default, the service name
        /// is used as scheme.
        nonmutating set {
            g_network_service_set_scheme(cast(network_service_ptr), cast(newValue))
        }
    }

    var service: String! {
        /// Gets `srv`'s service name (eg, "ldap").
        get {
            let rv: String! = cast(g_network_service_get_service(cast(network_service_ptr)))
            return cast(rv)
        }
    }

    var parentInstance: GObject {
        get {
            let rv: GObject = cast(network_service_ptr.pointee.parent_instance)
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - Notification Class

/// The `NotificationProtocol` protocol exposes the methods and properties of an underlying `GNotification` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Notification`.
/// Alternatively, use `NotificationRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GNotification` is a mechanism for creating a notification to be shown
/// to the user -- typically as a pop-up notification presented by the
/// desktop environment shell.
/// 
/// The key difference between `GNotification` and other similar APIs is
/// that, if supported by the desktop environment, notifications sent
/// with `GNotification` will persist after the application has exited,
/// and even across system reboots.
/// 
/// Since the user may click on a notification while the application is
/// not running, applications using `GNotification` should be able to be
/// started as a D-Bus service, using `GApplication`.
/// 
/// User interaction with a notification (either the default action, or
/// buttons) must be associated with actions on the application (ie:
/// "app." actions).  It is not possible to route user interaction
/// through the notification itself, because the object will not exist if
/// the application is autostarted as a result of a notification being
/// clicked.
/// 
/// A notification can be sent with `g_application_send_notification()`.
public protocol NotificationProtocol: ObjectProtocol {
        /// Untyped pointer to the underlying `GNotification` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GNotification` instance.
    var notification_ptr: UnsafeMutablePointer<GNotification> { get }
}

/// The `NotificationRef` type acts as a lightweight Swift reference to an underlying `GNotification` instance.
/// It exposes methods that can operate on this data type through `NotificationProtocol` conformance.
/// Use `NotificationRef` only as an `unowned` reference to an existing `GNotification` instance.
///
/// `GNotification` is a mechanism for creating a notification to be shown
/// to the user -- typically as a pop-up notification presented by the
/// desktop environment shell.
/// 
/// The key difference between `GNotification` and other similar APIs is
/// that, if supported by the desktop environment, notifications sent
/// with `GNotification` will persist after the application has exited,
/// and even across system reboots.
/// 
/// Since the user may click on a notification while the application is
/// not running, applications using `GNotification` should be able to be
/// started as a D-Bus service, using `GApplication`.
/// 
/// User interaction with a notification (either the default action, or
/// buttons) must be associated with actions on the application (ie:
/// "app." actions).  It is not possible to route user interaction
/// through the notification itself, because the object will not exist if
/// the application is autostarted as a result of a notification being
/// clicked.
/// 
/// A notification can be sent with `g_application_send_notification()`.
public struct NotificationRef: NotificationProtocol {
        /// Untyped pointer to the underlying `GNotification` instance.
    /// For type-safe access, use the generated, typed pointer `notification_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension NotificationRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GNotification>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `NotificationProtocol`
    init<T: NotificationProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotificationProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotificationProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotificationProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotificationProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotificationProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GNotification` with `title` as its title.
    /// 
    /// After populating `notification` with more details, it can be sent to
    /// the desktop shell with `g_application_send_notification()`. Changing
    /// any properties after this call will not have any effect until
    /// resending `notification`.
    init( title: UnsafePointer<gchar>) {
        let rv: UnsafeMutablePointer<GNotification>! = cast(g_notification_new(title))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
}

/// The `Notification` type acts as a reference-counted owner of an underlying `GNotification` instance.
/// It provides the methods that can operate on this data type through `NotificationProtocol` conformance.
/// Use `Notification` as a strong reference or owner of a `GNotification` instance.
///
/// `GNotification` is a mechanism for creating a notification to be shown
/// to the user -- typically as a pop-up notification presented by the
/// desktop environment shell.
/// 
/// The key difference between `GNotification` and other similar APIs is
/// that, if supported by the desktop environment, notifications sent
/// with `GNotification` will persist after the application has exited,
/// and even across system reboots.
/// 
/// Since the user may click on a notification while the application is
/// not running, applications using `GNotification` should be able to be
/// started as a D-Bus service, using `GApplication`.
/// 
/// User interaction with a notification (either the default action, or
/// buttons) must be associated with actions on the application (ie:
/// "app." actions).  It is not possible to route user interaction
/// through the notification itself, because the object will not exist if
/// the application is autostarted as a result of a notification being
/// clicked.
/// 
/// A notification can be sent with `g_application_send_notification()`.
open class Notification: Object, NotificationProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Notification` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GNotification>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GNotification`.
    /// i.e., ownership is transferred to the `Notification` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GNotification>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `NotificationProtocol`
    /// Will retain `GNotification`.
    /// - Parameter other: an instance of a related type that implements `NotificationProtocol`
    public init<T: NotificationProtocol>(notification other: T) {
        super.init(retaining: cast(other.notification_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotificationProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotificationProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotificationProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotificationProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotificationProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotificationProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotificationProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotificationProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GNotification` with `title` as its title.
    /// 
    /// After populating `notification` with more details, it can be sent to
    /// the desktop shell with `g_application_send_notification()`. Changing
    /// any properties after this call will not have any effect until
    /// resending `notification`.
    public init( title: UnsafePointer<gchar>) {
        let rv: UnsafeMutablePointer<GNotification>! = cast(g_notification_new(title))
        super.init(cast(rv))
    }


}

// MARK: no Notification properties

public enum NotificationSignalName: String, SignalNameProtocol {
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

public extension NotificationProtocol {
    /// Connect a `NotificationSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: NotificationSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(notification_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: Notification Class: NotificationProtocol extension (methods and fields)
public extension NotificationProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GNotification` instance.
    var notification_ptr: UnsafeMutablePointer<GNotification> { return ptr.assumingMemoryBound(to: GNotification.self) }

    /// Adds a button to `notification` that activates the action in
    /// `detailed_action` when clicked. That action must be an
    /// application-wide action (starting with "app."). If `detailed_action`
    /// contains a target, the action will be activated with that target as
    /// its parameter.
    /// 
    /// See `g_action_parse_detailed_name()` for a description of the format
    /// for `detailed_action`.
    func addButton(label: UnsafePointer<gchar>, detailedAction detailed_action: UnsafePointer<gchar>) {
        g_notification_add_button(cast(notification_ptr), label, detailed_action)
    
    }


    // *** addButtonWithTarget() is not available because it has a varargs (...) parameter!


    /// Adds a button to `notification` that activates `action` when clicked.
    /// `action` must be an application-wide action (it must start with "app.").
    /// 
    /// If `target` is non-`nil`, `action` will be activated with `target` as
    /// its parameter.
    func addButtonWithTargetValue(label: UnsafePointer<gchar>, action: UnsafePointer<gchar>, target: VariantProtocol) {
        g_notification_add_button_with_target_value(cast(notification_ptr), label, action, cast(target.ptr))
    
    }

    /// Sets the body of `notification` to `body`.
    func set(body: UnsafePointer<gchar>) {
        g_notification_set_body(cast(notification_ptr), body)
    
    }

    /// Sets the default action of `notification` to `detailed_action`. This
    /// action is activated when the notification is clicked on.
    /// 
    /// The action in `detailed_action` must be an application-wide action (it
    /// must start with "app."). If `detailed_action` contains a target, the
    /// given action will be activated with that target as its parameter.
    /// See `g_action_parse_detailed_name()` for a description of the format
    /// for `detailed_action`.
    /// 
    /// When no default action is set, the application that the notification
    /// was sent on is activated.
    func setDefaultAction(detailedAction detailed_action: UnsafePointer<gchar>) {
        g_notification_set_default_action(cast(notification_ptr), detailed_action)
    
    }


    // *** setDefaultActionAndTarget() is not available because it has a varargs (...) parameter!


    /// Sets the default action of `notification` to `action`. This action is
    /// activated when the notification is clicked on. It must be an
    /// application-wide action (start with "app.").
    /// 
    /// If `target` is non-`nil`, `action` will be activated with `target` as
    /// its parameter.
    /// 
    /// When no default action is set, the application that the notification
    /// was sent on is activated.
    func setDefaultActionAndTargetValue(action: UnsafePointer<gchar>, target: VariantProtocol) {
        g_notification_set_default_action_and_target_value(cast(notification_ptr), action, cast(target.ptr))
    
    }

    /// Sets the icon of `notification` to `icon`.
    func set(icon: IconProtocol) {
        g_notification_set_icon(cast(notification_ptr), cast(icon.ptr))
    
    }

    /// Sets the priority of `notification` to `priority`. See
    /// `GNotificationPriority` for possible values.
    func set(priority: NotificationPriority) {
        g_notification_set_priority(cast(notification_ptr), priority)
    
    }

    /// Sets the title of `notification` to `title`.
    func set(title: UnsafePointer<gchar>) {
        g_notification_set_title(cast(notification_ptr), title)
    
    }

    /// Deprecated in favor of `g_notification_set_priority()`.
    ///
    /// **set_urgent is deprecated:**
    /// Since 2.42, this has been deprecated in favour of
    ///    g_notification_set_priority().
    @available(*, deprecated) func set(urgent: Bool) {
        g_notification_set_urgent(cast(notification_ptr), gboolean(urgent ? 1 : 0))
    
    }


}



// MARK: - OsxAppInfo Class

/// The `OsxAppInfoProtocol` protocol exposes the methods and properties of an underlying `GOsxAppInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `OsxAppInfo`.
/// Alternatively, use `OsxAppInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol OsxAppInfoProtocol: ObjectProtocol, AppInfoProtocol {
        /// Untyped pointer to the underlying `GOsxAppInfo` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GOsxAppInfo` instance.
    var osx_app_info_ptr: UnsafeMutablePointer<GOsxAppInfo> { get }
}

/// The `OsxAppInfoRef` type acts as a lightweight Swift reference to an underlying `GOsxAppInfo` instance.
/// It exposes methods that can operate on this data type through `OsxAppInfoProtocol` conformance.
/// Use `OsxAppInfoRef` only as an `unowned` reference to an existing `GOsxAppInfo` instance.
///

public struct OsxAppInfoRef: OsxAppInfoProtocol {
        /// Untyped pointer to the underlying `GOsxAppInfo` instance.
    /// For type-safe access, use the generated, typed pointer `osx_app_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension OsxAppInfoRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GOsxAppInfo>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `OsxAppInfoProtocol`
    init<T: OsxAppInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OsxAppInfoProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OsxAppInfoProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OsxAppInfoProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OsxAppInfoProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OsxAppInfoProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `OsxAppInfo` type acts as a reference-counted owner of an underlying `GOsxAppInfo` instance.
/// It provides the methods that can operate on this data type through `OsxAppInfoProtocol` conformance.
/// Use `OsxAppInfo` as a strong reference or owner of a `GOsxAppInfo` instance.
///

open class OsxAppInfo: Object, OsxAppInfoProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OsxAppInfo` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GOsxAppInfo>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GOsxAppInfo`.
    /// i.e., ownership is transferred to the `OsxAppInfo` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GOsxAppInfo>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `OsxAppInfoProtocol`
    /// Will retain `GOsxAppInfo`.
    /// - Parameter other: an instance of a related type that implements `OsxAppInfoProtocol`
    public init<T: OsxAppInfoProtocol>(osxAppInfo other: T) {
        super.init(retaining: cast(other.osx_app_info_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OsxAppInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OsxAppInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OsxAppInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OsxAppInfoProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OsxAppInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OsxAppInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OsxAppInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OsxAppInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no OsxAppInfo properties

public enum OsxAppInfoSignalName: String, SignalNameProtocol {
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

public extension OsxAppInfoProtocol {
    /// Connect a `OsxAppInfoSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: OsxAppInfoSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(osx_app_info_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: OsxAppInfo Class: OsxAppInfoProtocol extension (methods and fields)
public extension OsxAppInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GOsxAppInfo` instance.
    var osx_app_info_ptr: UnsafeMutablePointer<GOsxAppInfo> { return ptr.assumingMemoryBound(to: GOsxAppInfo.self) }

    func getFilename() -> String! {
        let rv: String! = cast(g_osx_app_info_get_filename(cast(osx_app_info_ptr)))
        return cast(rv)
    }
    var filename: String! {
        get {
            let rv: String! = cast(g_osx_app_info_get_filename(cast(osx_app_info_ptr)))
            return cast(rv)
        }
    }


}



