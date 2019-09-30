import CGLib
import GLib
import GLibObject

// MARK: - NetworkMonitor Interface

/// The `NetworkMonitorProtocol` protocol exposes the methods and properties of an underlying `GNetworkMonitor` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NetworkMonitor`.
/// Alternatively, use `NetworkMonitorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GNetworkMonitor` provides an easy-to-use cross-platform API
/// for monitoring network connectivity. On Linux, the available
/// implementations are based on the kernel's netlink interface and
/// on NetworkManager.
/// 
/// There is also an implementation for use inside Flatpak sandboxes.
public protocol NetworkMonitorProtocol: InitableProtocol {
    /// Untyped pointer to the underlying `GNetworkMonitor` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GNetworkMonitor` instance.
    var network_monitor_ptr: UnsafeMutablePointer<GNetworkMonitor> { get }
}

/// The `NetworkMonitorRef` type acts as a lightweight Swift reference to an underlying `GNetworkMonitor` instance.
/// It exposes methods that can operate on this data type through `NetworkMonitorProtocol` conformance.
/// Use `NetworkMonitorRef` only as an `unowned` reference to an existing `GNetworkMonitor` instance.
///
/// `GNetworkMonitor` provides an easy-to-use cross-platform API
/// for monitoring network connectivity. On Linux, the available
/// implementations are based on the kernel's netlink interface and
/// on NetworkManager.
/// 
/// There is also an implementation for use inside Flatpak sandboxes.
public struct NetworkMonitorRef: NetworkMonitorProtocol {
    /// Untyped pointer to the underlying `GNetworkMonitor` instance.
    /// For type-safe access, use the generated, typed pointer `network_monitor_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension NetworkMonitorRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GNetworkMonitor>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `NetworkMonitorProtocol`
    init<T: NetworkMonitorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkMonitorProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkMonitorProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkMonitorProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkMonitorProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkMonitorProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Gets the default `GNetworkMonitor` for the system.
    static func getDefault() -> NetworkMonitorRef! {
        let rv = g_network_monitor_get_default()
        return rv.map { NetworkMonitorRef(cast($0)) }
    }
}

/// The `NetworkMonitor` type acts as an owner of an underlying `GNetworkMonitor` instance.
/// It provides the methods that can operate on this data type through `NetworkMonitorProtocol` conformance.
/// Use `NetworkMonitor` as a strong reference or owner of a `GNetworkMonitor` instance.
///
/// `GNetworkMonitor` provides an easy-to-use cross-platform API
/// for monitoring network connectivity. On Linux, the available
/// implementations are based on the kernel's netlink interface and
/// on NetworkManager.
/// 
/// There is also an implementation for use inside Flatpak sandboxes.
open class NetworkMonitor: Initable, NetworkMonitorProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `NetworkMonitor` instance.
    public init(_ op: UnsafeMutablePointer<GNetworkMonitor>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `NetworkMonitorProtocol`
    /// `GNetworkMonitor` does not allow reference counting.
    public convenience init<T: NetworkMonitorProtocol>(_ other: T) {
        self.init(cast(other.network_monitor_ptr))
        // no reference counting for GNetworkMonitor, cannot ref(cast(network_monitor_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkMonitorProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GNetworkMonitor.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkMonitorProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GNetworkMonitor.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkMonitorProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GNetworkMonitor.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkMonitorProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GNetworkMonitor>(opaquePointer))
    }


    /// Gets the default `GNetworkMonitor` for the system.
    public static func getDefault() -> NetworkMonitor! {
        let rv = g_network_monitor_get_default()
        return rv.map { NetworkMonitor(cast($0)) }
    }

}

public enum NetworkMonitorPropertyName: String, PropertyNameProtocol {
    /// More detailed information about the host's network connectivity.
    /// See g_network_monitor_get_connectivity() and
    /// `GNetworkConnectivity` for more details.
    case connectivity = "connectivity"
    /// Whether the network is considered available. That is, whether the
    /// system has a default route for at least one of IPv4 or IPv6.
    /// 
    /// Real-world networks are of course much more complicated than
    /// this; the machine may be connected to a wifi hotspot that
    /// requires payment before allowing traffic through, or may be
    /// connected to a functioning router that has lost its own upstream
    /// connectivity. Some hosts might only be accessible when a VPN is
    /// active. Other hosts might only be accessible when the VPN is
    /// not active. Thus, it is best to use g_network_monitor_can_reach()
    /// or g_network_monitor_can_reach_async() to test for reachability
    /// on a host-by-host basis. (On the other hand, when the property is
    /// `false`, the application can reasonably expect that no remote
    /// hosts at all are reachable, and should indicate this to the user
    /// in its UI.)
    /// 
    /// See also `GNetworkMonitor`::network-changed.
    case networkAvailable = "network-available"
    /// Whether the network is considered metered. That is, whether the
    /// system has traffic flowing through the default connection that is
    /// subject to limitations set by service providers. For example, traffic
    /// might be billed by the amount of data transmitted, or there might be a
    /// quota on the amount of traffic per month. This is typical with tethered
    /// connections (3G and 4G) and in such situations, bandwidth intensive
    /// applications may wish to avoid network activity where possible if it will
    /// cost the user money or use up their limited quota.
    /// 
    /// If more information is required about specific devices then the
    /// system network management API should be used instead (for example,
    /// NetworkManager or ConnMan).
    /// 
    /// If this information is not available then no networks will be
    /// marked as metered.
    /// 
    /// See also `GNetworkMonitor`:network-available.
    case networkMetered = "network-metered"
}

public extension NetworkMonitorProtocol {
    /// Bind a `NetworkMonitorPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: NetworkMonitorPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(network_monitor_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum NetworkMonitorSignalName: String, SignalNameProtocol {
    /// Emitted when the network configuration changes.
    case networkChanged = "network-changed"
    /// More detailed information about the host's network connectivity.
    /// See g_network_monitor_get_connectivity() and
    /// `GNetworkConnectivity` for more details.
    case notifyConnectivity = "notify::connectivity"
    /// Whether the network is considered available. That is, whether the
    /// system has a default route for at least one of IPv4 or IPv6.
    /// 
    /// Real-world networks are of course much more complicated than
    /// this; the machine may be connected to a wifi hotspot that
    /// requires payment before allowing traffic through, or may be
    /// connected to a functioning router that has lost its own upstream
    /// connectivity. Some hosts might only be accessible when a VPN is
    /// active. Other hosts might only be accessible when the VPN is
    /// not active. Thus, it is best to use g_network_monitor_can_reach()
    /// or g_network_monitor_can_reach_async() to test for reachability
    /// on a host-by-host basis. (On the other hand, when the property is
    /// `false`, the application can reasonably expect that no remote
    /// hosts at all are reachable, and should indicate this to the user
    /// in its UI.)
    /// 
    /// See also `GNetworkMonitor`::network-changed.
    case notifyNetworkAvailable = "notify::network-available"
    /// Whether the network is considered metered. That is, whether the
    /// system has traffic flowing through the default connection that is
    /// subject to limitations set by service providers. For example, traffic
    /// might be billed by the amount of data transmitted, or there might be a
    /// quota on the amount of traffic per month. This is typical with tethered
    /// connections (3G and 4G) and in such situations, bandwidth intensive
    /// applications may wish to avoid network activity where possible if it will
    /// cost the user money or use up their limited quota.
    /// 
    /// If more information is required about specific devices then the
    /// system network management API should be used instead (for example,
    /// NetworkManager or ConnMan).
    /// 
    /// If this information is not available then no networks will be
    /// marked as metered.
    /// 
    /// See also `GNetworkMonitor`:network-available.
    case notifyNetworkMetered = "notify::network-metered"
}

public extension NetworkMonitorProtocol {
    /// Connect a `NetworkMonitorSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: NetworkMonitorSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(network_monitor_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension NetworkMonitorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GNetworkMonitor` instance.
    var network_monitor_ptr: UnsafeMutablePointer<GNetworkMonitor> { return ptr.assumingMemoryBound(to: GNetworkMonitor.self) }

    /// Attempts to determine whether or not the host pointed to by
    /// `connectable` can be reached, without actually trying to connect to
    /// it.
    /// 
    /// This may return `true` even when `GNetworkMonitor`:network-available
    /// is `false`, if, for example, `monitor` can determine that
    /// `connectable` refers to a host on a local network.
    /// 
    /// If `monitor` believes that an attempt to connect to `connectable`
    /// will succeed, it will return `true`. Otherwise, it will return
    /// `false` and set `error` to an appropriate error (such as
    /// `G_IO_ERROR_HOST_UNREACHABLE`).
    /// 
    /// Note that although this does not attempt to connect to
    /// `connectable`, it may still block for a brief period of time (eg,
    /// trying to do multicast DNS on the local network), so if you do not
    /// want to block, you should use g_network_monitor_can_reach_async().
    func canReach(connectable: SocketConnectableProtocol, cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_network_monitor_can_reach(cast(network_monitor_ptr), cast(connectable.ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Asynchronously attempts to determine whether or not the host
    /// pointed to by `connectable` can be reached, without actually
    /// trying to connect to it.
    /// 
    /// For more details, see g_network_monitor_can_reach().
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call g_network_monitor_can_reach_finish()
    /// to get the result of the operation.
    func canReachAsync(connectable: SocketConnectableProtocol, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_network_monitor_can_reach_async(cast(network_monitor_ptr), cast(connectable.ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an async network connectivity test.
    /// See g_network_monitor_can_reach_async().
    func canReachFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_network_monitor_can_reach_finish(cast(network_monitor_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Gets a more detailed networking state than
    /// g_network_monitor_get_network_available().
    /// 
    /// If `GNetworkMonitor`:network-available is `false`, then the
    /// connectivity state will be `G_NETWORK_CONNECTIVITY_LOCAL`.
    /// 
    /// If `GNetworkMonitor`:network-available is `true`, then the
    /// connectivity state will be `G_NETWORK_CONNECTIVITY_FULL` (if there
    /// is full Internet connectivity), `G_NETWORK_CONNECTIVITY_LIMITED` (if
    /// the host has a default route, but appears to be unable to actually
    /// reach the full Internet), or `G_NETWORK_CONNECTIVITY_PORTAL` (if the
    /// host is trapped behind a "captive portal" that requires some sort
    /// of login or acknowledgement before allowing full Internet access).
    /// 
    /// Note that in the case of `G_NETWORK_CONNECTIVITY_LIMITED` and
    /// `G_NETWORK_CONNECTIVITY_PORTAL`, it is possible that some sites are
    /// reachable but others are not. In this case, applications can
    /// attempt to connect to remote servers, but should gracefully fall
    /// back to their "offline" behavior if the connection attempt fails.
    func getConnectivity() -> GNetworkConnectivity {
        let rv = g_network_monitor_get_connectivity(cast(network_monitor_ptr))
        return rv
    }

    /// Checks if the network is available. "Available" here means that the
    /// system has a default route available for at least one of IPv4 or
    /// IPv6. It does not necessarily imply that the public Internet is
    /// reachable. See `GNetworkMonitor`:network-available for more details.
    func getNetworkAvailable() -> Bool {
        let rv = g_network_monitor_get_network_available(cast(network_monitor_ptr))
        return Bool(rv != 0)
    }

    /// Checks if the network is metered.
    /// See `GNetworkMonitor`:network-metered for more details.
    func getNetworkMetered() -> Bool {
        let rv = g_network_monitor_get_network_metered(cast(network_monitor_ptr))
        return Bool(rv != 0)
    }
    /// More detailed information about the host's network connectivity.
    /// See g_network_monitor_get_connectivity() and
    /// `GNetworkConnectivity` for more details.
    var connectivity: GNetworkConnectivity {
        /// Gets a more detailed networking state than
        /// g_network_monitor_get_network_available().
        /// 
        /// If `GNetworkMonitor`:network-available is `false`, then the
        /// connectivity state will be `G_NETWORK_CONNECTIVITY_LOCAL`.
        /// 
        /// If `GNetworkMonitor`:network-available is `true`, then the
        /// connectivity state will be `G_NETWORK_CONNECTIVITY_FULL` (if there
        /// is full Internet connectivity), `G_NETWORK_CONNECTIVITY_LIMITED` (if
        /// the host has a default route, but appears to be unable to actually
        /// reach the full Internet), or `G_NETWORK_CONNECTIVITY_PORTAL` (if the
        /// host is trapped behind a "captive portal" that requires some sort
        /// of login or acknowledgement before allowing full Internet access).
        /// 
        /// Note that in the case of `G_NETWORK_CONNECTIVITY_LIMITED` and
        /// `G_NETWORK_CONNECTIVITY_PORTAL`, it is possible that some sites are
        /// reachable but others are not. In this case, applications can
        /// attempt to connect to remote servers, but should gracefully fall
        /// back to their "offline" behavior if the connection attempt fails.
        get {
            let rv = g_network_monitor_get_connectivity(cast(network_monitor_ptr))
            return rv
        }
    }

    /// Checks if the network is available. "Available" here means that the
    /// system has a default route available for at least one of IPv4 or
    /// IPv6. It does not necessarily imply that the public Internet is
    /// reachable. See `GNetworkMonitor`:network-available for more details.
    var networkAvailable: Bool {
        /// Checks if the network is available. "Available" here means that the
        /// system has a default route available for at least one of IPv4 or
        /// IPv6. It does not necessarily imply that the public Internet is
        /// reachable. See `GNetworkMonitor`:network-available for more details.
        get {
            let rv = g_network_monitor_get_network_available(cast(network_monitor_ptr))
            return Bool(rv != 0)
        }
    }

    /// Checks if the network is metered.
    /// See `GNetworkMonitor`:network-metered for more details.
    var networkMetered: Bool {
        /// Checks if the network is metered.
        /// See `GNetworkMonitor`:network-metered for more details.
        get {
            let rv = g_network_monitor_get_network_metered(cast(network_monitor_ptr))
            return Bool(rv != 0)
        }
    }
}



// MARK: - PollableInputStream Interface

/// The `PollableInputStreamProtocol` protocol exposes the methods and properties of an underlying `GPollableInputStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PollableInputStream`.
/// Alternatively, use `PollableInputStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GPollableInputStream` is implemented by `GInputStreams` that
/// can be polled for readiness to read. This can be used when
/// interfacing with a non-GIO API that expects
/// UNIX-file-descriptor-style asynchronous I/O rather than GIO-style.
public protocol PollableInputStreamProtocol: InputStreamProtocol {
    /// Untyped pointer to the underlying `GPollableInputStream` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GPollableInputStream` instance.
    var pollable_input_stream_ptr: UnsafeMutablePointer<GPollableInputStream> { get }
}

/// The `PollableInputStreamRef` type acts as a lightweight Swift reference to an underlying `GPollableInputStream` instance.
/// It exposes methods that can operate on this data type through `PollableInputStreamProtocol` conformance.
/// Use `PollableInputStreamRef` only as an `unowned` reference to an existing `GPollableInputStream` instance.
///
/// `GPollableInputStream` is implemented by `GInputStreams` that
/// can be polled for readiness to read. This can be used when
/// interfacing with a non-GIO API that expects
/// UNIX-file-descriptor-style asynchronous I/O rather than GIO-style.
public struct PollableInputStreamRef: PollableInputStreamProtocol {
    /// Untyped pointer to the underlying `GPollableInputStream` instance.
    /// For type-safe access, use the generated, typed pointer `pollable_input_stream_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PollableInputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GPollableInputStream>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PollableInputStreamProtocol`
    init<T: PollableInputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PollableInputStream` type acts as a reference-counted owner of an underlying `GPollableInputStream` instance.
/// It provides the methods that can operate on this data type through `PollableInputStreamProtocol` conformance.
/// Use `PollableInputStream` as a strong reference or owner of a `GPollableInputStream` instance.
///
/// `GPollableInputStream` is implemented by `GInputStreams` that
/// can be polled for readiness to read. This can be used when
/// interfacing with a non-GIO API that expects
/// UNIX-file-descriptor-style asynchronous I/O rather than GIO-style.
open class PollableInputStream: InputStream, PollableInputStreamProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `PollableInputStream` instance.
    public init(_ op: UnsafeMutablePointer<GPollableInputStream>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `PollableInputStreamProtocol`
    /// Will retain `GPollableInputStream`.
    public convenience init<T: PollableInputStreamProtocol>(_ other: T) {
        self.init(cast(other.pollable_input_stream_ptr))
        g_object_ref(cast(pollable_input_stream_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GPollableInputStream.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GPollableInputStream.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GPollableInputStream.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GPollableInputStream>(opaquePointer))
    }



}

// MARK: - no PollableInputStream properties

public enum PollableInputStreamSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"

}

public extension PollableInputStreamProtocol {
    /// Connect a `PollableInputStreamSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: PollableInputStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(pollable_input_stream_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension PollableInputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GPollableInputStream` instance.
    var pollable_input_stream_ptr: UnsafeMutablePointer<GPollableInputStream> { return ptr.assumingMemoryBound(to: GPollableInputStream.self) }

    /// Checks if `stream` is actually pollable. Some classes may implement
    /// `GPollableInputStream` but have only certain instances of that class
    /// be pollable. If this method returns `false`, then the behavior of
    /// other `GPollableInputStream` methods is undefined.
    /// 
    /// For any given stream, the value returned by this method is constant;
    /// a stream cannot switch from pollable to non-pollable or vice versa.
    func canPoll() -> Bool {
        let rv = g_pollable_input_stream_can_poll(cast(pollable_input_stream_ptr))
        return Bool(rv != 0)
    }

    /// Creates a `GSource` that triggers when `stream` can be read, or
    /// `cancellable` is triggered or an error occurs. The callback on the
    /// source is of the `GPollableSourceFunc` type.
    /// 
    /// As with g_pollable_input_stream_is_readable(), it is possible that
    /// the stream may not actually be readable even after the source
    /// triggers, so you should use g_pollable_input_stream_read_nonblocking()
    /// rather than g_input_stream_read() from the callback.
    func createSource(cancellable: CancellableProtocol) -> UnsafeMutablePointer<GSource>! {
        let rv = g_pollable_input_stream_create_source(cast(pollable_input_stream_ptr), cast(cancellable.ptr))
        return cast(rv)
    }

    /// Attempts to read up to `count` bytes from `stream` into `buffer`, as
    /// with g_input_stream_read(). If `stream` is not currently readable,
    /// this will immediately return `G_IO_ERROR_WOULD_BLOCK`, and you can
    /// use g_pollable_input_stream_create_source() to create a `GSource`
    /// that will be triggered when `stream` is readable.
    /// 
    /// Note that since this method never blocks, you cannot actually
    /// use `cancellable` to cancel it. However, it will return an error
    /// if `cancellable` has already been cancelled when you call, which
    /// may happen if you call this method after a source triggers due
    /// to having been cancelled.
    func readNonblocking(buffer: UnsafeMutableRawPointer, count: Int, cancellable: CancellableProtocol) throws -> gssize {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_pollable_input_stream_read_nonblocking(cast(pollable_input_stream_ptr), cast(buffer), gsize(count), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }
    /// Checks if `stream` can be read.
    /// 
    /// Note that some stream types may not be able to implement this 100``
    /// reliably, and it is possible that a call to g_input_stream_read()
    /// after this returns `true` would still block. To guarantee
    /// non-blocking behavior, you should always use
    /// g_pollable_input_stream_read_nonblocking(), which will return a
    /// `G_IO_ERROR_WOULD_BLOCK` error rather than blocking.
    var isReadable: Bool {
        /// Checks if `stream` can be read.
        /// 
        /// Note that some stream types may not be able to implement this 100``
        /// reliably, and it is possible that a call to g_input_stream_read()
        /// after this returns `true` would still block. To guarantee
        /// non-blocking behavior, you should always use
        /// g_pollable_input_stream_read_nonblocking(), which will return a
        /// `G_IO_ERROR_WOULD_BLOCK` error rather than blocking.
        get {
            let rv = g_pollable_input_stream_is_readable(cast(pollable_input_stream_ptr))
            return Bool(rv != 0)
        }
    }
}



