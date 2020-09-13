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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GNativeVolumeMonitor` instance.
    var native_volume_monitor_ptr: UnsafeMutablePointer<GNativeVolumeMonitor>! { get }

}

/// The `NativeVolumeMonitorRef` type acts as a lightweight Swift reference to an underlying `GNativeVolumeMonitor` instance.
/// It exposes methods that can operate on this data type through `NativeVolumeMonitorProtocol` conformance.
/// Use `NativeVolumeMonitorRef` only as an `unowned` reference to an existing `GNativeVolumeMonitor` instance.
///

public struct NativeVolumeMonitorRef: NativeVolumeMonitorProtocol {
        /// Untyped pointer to the underlying `GNativeVolumeMonitor` instance.
    /// For type-safe access, use the generated, typed pointer `native_volume_monitor_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension NativeVolumeMonitorRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GNativeVolumeMonitor>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GNativeVolumeMonitor>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GNativeVolumeMonitor>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GNativeVolumeMonitor>?) {
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

    /// Reference intialiser for a related type that implements `NativeVolumeMonitorProtocol`
    @inlinable init<T: NativeVolumeMonitorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeVolumeMonitorProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeVolumeMonitorProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeVolumeMonitorProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeVolumeMonitorProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeVolumeMonitorProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    @inlinable public init(_ op: UnsafeMutablePointer<GNativeVolumeMonitor>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NativeVolumeMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GNativeVolumeMonitor>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NativeVolumeMonitor` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NativeVolumeMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NativeVolumeMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GNativeVolumeMonitor>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NativeVolumeMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GNativeVolumeMonitor>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GNativeVolumeMonitor`.
    /// i.e., ownership is transferred to the `NativeVolumeMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GNativeVolumeMonitor>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `NativeVolumeMonitorProtocol`
    /// Will retain `GNativeVolumeMonitor`.
    /// - Parameter other: an instance of a related type that implements `NativeVolumeMonitorProtocol`
    @inlinable public init<T: NativeVolumeMonitorProtocol>(nativeVolumeMonitor other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeVolumeMonitorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeVolumeMonitorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeVolumeMonitorProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeVolumeMonitorProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeVolumeMonitorProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeVolumeMonitorProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeVolumeMonitorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeVolumeMonitorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
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
    @inlinable @discardableResult func connect(signal kind: NativeVolumeMonitorSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: NativeVolumeMonitor Class: NativeVolumeMonitorProtocol extension (methods and fields)
public extension NativeVolumeMonitorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GNativeVolumeMonitor` instance.
    @inlinable var native_volume_monitor_ptr: UnsafeMutablePointer<GNativeVolumeMonitor>! { return ptr?.assumingMemoryBound(to: GNativeVolumeMonitor.self) }


    @inlinable var parentInstance: GVolumeMonitor {
        get {
            let rv = native_volume_monitor_ptr.pointee.parent_instance
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
public protocol NetworkAddressProtocol: GLibObject.ObjectProtocol, SocketConnectableProtocol {
        /// Untyped pointer to the underlying `GNetworkAddress` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GNetworkAddress` instance.
    var network_address_ptr: UnsafeMutablePointer<GNetworkAddress>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension NetworkAddressRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GNetworkAddress>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GNetworkAddress>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GNetworkAddress>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GNetworkAddress>?) {
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

    /// Reference intialiser for a related type that implements `NetworkAddressProtocol`
    @inlinable init<T: NetworkAddressProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkAddressProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkAddressProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkAddressProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkAddressProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkAddressProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
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
open class NetworkAddress: GLibObject.Object, NetworkAddressProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NetworkAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GNetworkAddress>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NetworkAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GNetworkAddress>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NetworkAddress` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NetworkAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NetworkAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GNetworkAddress>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NetworkAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GNetworkAddress>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GNetworkAddress`.
    /// i.e., ownership is transferred to the `NetworkAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GNetworkAddress>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `NetworkAddressProtocol`
    /// Will retain `GNetworkAddress`.
    /// - Parameter other: an instance of a related type that implements `NetworkAddressProtocol`
    @inlinable public init<T: NetworkAddressProtocol>(networkAddress other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkAddressProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkAddressProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkAddressProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkAddressProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkAddressProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkAddressProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkAddressProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkAddressProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: NetworkAddressPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a NetworkAddress property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: NetworkAddressPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a NetworkAddress property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: NetworkAddressPropertyName, value v: GLibObject.Value) {
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
    @inlinable @discardableResult func connect(signal kind: NetworkAddressSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: NetworkAddress Class: NetworkAddressProtocol extension (methods and fields)
public extension NetworkAddressProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GNetworkAddress` instance.
    @inlinable var network_address_ptr: UnsafeMutablePointer<GNetworkAddress>! { return ptr?.assumingMemoryBound(to: GNetworkAddress.self) }

    /// Gets `addr`'s hostname. This might be either UTF-8 or ASCII-encoded,
    /// depending on what `addr` was created with.
    @inlinable func getHostname() -> String! {
        let rv = g_network_address_get_hostname(network_address_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets `addr`'s port number
    @inlinable func getPort() -> guint16 {
        let rv = g_network_address_get_port(network_address_ptr)
        return rv
    }

    /// Gets `addr`'s scheme
    @inlinable func getScheme() -> String! {
        let rv = g_network_address_get_scheme(network_address_ptr).map({ String(cString: $0) })
        return rv
    }
    @inlinable var hostname: String! {
        /// Gets `addr`'s hostname. This might be either UTF-8 or ASCII-encoded,
        /// depending on what `addr` was created with.
        get {
            let rv = g_network_address_get_hostname(network_address_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    @inlinable var port: guint16 {
        /// Gets `addr`'s port number
        get {
            let rv = g_network_address_get_port(network_address_ptr)
            return rv
        }
    }

    @inlinable var scheme: String! {
        /// Gets `addr`'s scheme
        get {
            let rv = g_network_address_get_scheme(network_address_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = network_address_ptr.pointee.parent_instance
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
public protocol NetworkServiceProtocol: GLibObject.ObjectProtocol, SocketConnectableProtocol {
        /// Untyped pointer to the underlying `GNetworkService` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GNetworkService` instance.
    var network_service_ptr: UnsafeMutablePointer<GNetworkService>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension NetworkServiceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GNetworkService>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GNetworkService>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GNetworkService>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GNetworkService>?) {
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

    /// Reference intialiser for a related type that implements `NetworkServiceProtocol`
    @inlinable init<T: NetworkServiceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkServiceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkServiceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkServiceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkServiceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkServiceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
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
open class NetworkService: GLibObject.Object, NetworkServiceProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NetworkService` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GNetworkService>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NetworkService` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GNetworkService>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NetworkService` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NetworkService` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NetworkService` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GNetworkService>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NetworkService` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GNetworkService>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GNetworkService`.
    /// i.e., ownership is transferred to the `NetworkService` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GNetworkService>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `NetworkServiceProtocol`
    /// Will retain `GNetworkService`.
    /// - Parameter other: an instance of a related type that implements `NetworkServiceProtocol`
    @inlinable public init<T: NetworkServiceProtocol>(networkService other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkServiceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkServiceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkServiceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkServiceProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkServiceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkServiceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkServiceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkServiceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: NetworkServicePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a NetworkService property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: NetworkServicePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a NetworkService property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: NetworkServicePropertyName, value v: GLibObject.Value) {
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
    @inlinable @discardableResult func connect(signal kind: NetworkServiceSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: NetworkService Class: NetworkServiceProtocol extension (methods and fields)
public extension NetworkServiceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GNetworkService` instance.
    @inlinable var network_service_ptr: UnsafeMutablePointer<GNetworkService>! { return ptr?.assumingMemoryBound(to: GNetworkService.self) }

    /// Gets the domain that `srv` serves. This might be either UTF-8 or
    /// ASCII-encoded, depending on what `srv` was created with.
    @inlinable func getDomain() -> String! {
        let rv = g_network_service_get_domain(network_service_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets `srv`'s protocol name (eg, "tcp").
    @inlinable func getProtocol() -> String! {
        let rv = g_network_service_get_protocol(network_service_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Get's the URI scheme used to resolve proxies. By default, the service name
    /// is used as scheme.
    @inlinable func getScheme() -> String! {
        let rv = g_network_service_get_scheme(network_service_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets `srv`'s service name (eg, "ldap").
    @inlinable func getService() -> String! {
        let rv = g_network_service_get_service(network_service_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Set's the URI scheme used to resolve proxies. By default, the service name
    /// is used as scheme.
    @inlinable func set(scheme: UnsafePointer<gchar>!) {
        g_network_service_set_scheme(network_service_ptr, scheme)
    
    }
    @inlinable var domain: String! {
        /// Gets the domain that `srv` serves. This might be either UTF-8 or
        /// ASCII-encoded, depending on what `srv` was created with.
        get {
            let rv = g_network_service_get_domain(network_service_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    @inlinable var `protocol`: String! {
        /// Gets `srv`'s protocol name (eg, "tcp").
        get {
            let rv = g_network_service_get_protocol(network_service_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    @inlinable var scheme: String! {
        /// Get's the URI scheme used to resolve proxies. By default, the service name
        /// is used as scheme.
        get {
            let rv = g_network_service_get_scheme(network_service_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Set's the URI scheme used to resolve proxies. By default, the service name
        /// is used as scheme.
        nonmutating set {
            g_network_service_set_scheme(network_service_ptr, newValue)
        }
    }

    @inlinable var service: String! {
        /// Gets `srv`'s service name (eg, "ldap").
        get {
            let rv = g_network_service_get_service(network_service_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = network_service_ptr.pointee.parent_instance
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
public protocol NotificationProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GNotification` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GNotification` instance.
    var notification_ptr: UnsafeMutablePointer<GNotification>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension NotificationRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GNotification>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GNotification>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GNotification>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GNotification>?) {
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

    /// Reference intialiser for a related type that implements `NotificationProtocol`
    @inlinable init<T: NotificationProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotificationProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotificationProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotificationProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotificationProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotificationProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GNotification` with `title` as its title.
    /// 
    /// After populating `notification` with more details, it can be sent to
    /// the desktop shell with `g_application_send_notification()`. Changing
    /// any properties after this call will not have any effect until
    /// resending `notification`.
    @inlinable init( title: UnsafePointer<gchar>!) {
        let rv = g_notification_new(title)
        ptr = UnsafeMutableRawPointer(rv)
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
open class Notification: GLibObject.Object, NotificationProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Notification` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GNotification>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Notification` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GNotification>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Notification` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Notification` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Notification` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GNotification>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Notification` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GNotification>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GNotification`.
    /// i.e., ownership is transferred to the `Notification` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GNotification>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `NotificationProtocol`
    /// Will retain `GNotification`.
    /// - Parameter other: an instance of a related type that implements `NotificationProtocol`
    @inlinable public init<T: NotificationProtocol>(notification other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotificationProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotificationProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotificationProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotificationProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotificationProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotificationProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotificationProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NotificationProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GNotification` with `title` as its title.
    /// 
    /// After populating `notification` with more details, it can be sent to
    /// the desktop shell with `g_application_send_notification()`. Changing
    /// any properties after this call will not have any effect until
    /// resending `notification`.
    @inlinable public init( title: UnsafePointer<gchar>!) {
        let rv = g_notification_new(title)
        super.init(gpointer: (rv))
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
    @inlinable @discardableResult func connect(signal kind: NotificationSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: Notification Class: NotificationProtocol extension (methods and fields)
public extension NotificationProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GNotification` instance.
    @inlinable var notification_ptr: UnsafeMutablePointer<GNotification>! { return ptr?.assumingMemoryBound(to: GNotification.self) }

    /// Adds a button to `notification` that activates the action in
    /// `detailed_action` when clicked. That action must be an
    /// application-wide action (starting with "app."). If `detailed_action`
    /// contains a target, the action will be activated with that target as
    /// its parameter.
    /// 
    /// See `g_action_parse_detailed_name()` for a description of the format
    /// for `detailed_action`.
    @inlinable func addButton(label: UnsafePointer<gchar>!, detailedAction: UnsafePointer<gchar>!) {
        g_notification_add_button(notification_ptr, label, detailedAction)
    
    }


    // *** addButtonWithTarget() is not available because it has a varargs (...) parameter!


    /// Adds a button to `notification` that activates `action` when clicked.
    /// `action` must be an application-wide action (it must start with "app.").
    /// 
    /// If `target` is non-`nil`, `action` will be activated with `target` as
    /// its parameter.
    @inlinable func addButtonWithTargetValue(label: UnsafePointer<gchar>!, action: UnsafePointer<gchar>!, target: GLib.VariantRef? = nil) {
        g_notification_add_button_with_target_value(notification_ptr, label, action, target?.variant_ptr)
    
    }
    /// Adds a button to `notification` that activates `action` when clicked.
    /// `action` must be an application-wide action (it must start with "app.").
    /// 
    /// If `target` is non-`nil`, `action` will be activated with `target` as
    /// its parameter.
    @inlinable func addButtonWithTargetValue<VariantT: GLib.VariantProtocol>(label: UnsafePointer<gchar>!, action: UnsafePointer<gchar>!, target: VariantT?) {
        g_notification_add_button_with_target_value(notification_ptr, label, action, target?.variant_ptr)
    
    }

    /// Sets the body of `notification` to `body`.
    @inlinable func set(body: UnsafePointer<gchar>? = nil) {
        g_notification_set_body(notification_ptr, body)
    
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
    @inlinable func setDefaultAction(detailedAction: UnsafePointer<gchar>!) {
        g_notification_set_default_action(notification_ptr, detailedAction)
    
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
    @inlinable func setDefaultActionAndTargetValue(action: UnsafePointer<gchar>!, target: GLib.VariantRef? = nil) {
        g_notification_set_default_action_and_target_value(notification_ptr, action, target?.variant_ptr)
    
    }
    /// Sets the default action of `notification` to `action`. This action is
    /// activated when the notification is clicked on. It must be an
    /// application-wide action (start with "app.").
    /// 
    /// If `target` is non-`nil`, `action` will be activated with `target` as
    /// its parameter.
    /// 
    /// When no default action is set, the application that the notification
    /// was sent on is activated.
    @inlinable func setDefaultActionAndTargetValue<VariantT: GLib.VariantProtocol>(action: UnsafePointer<gchar>!, target: VariantT?) {
        g_notification_set_default_action_and_target_value(notification_ptr, action, target?.variant_ptr)
    
    }

    /// Sets the icon of `notification` to `icon`.
    @inlinable func set<IconT: IconProtocol>(icon: IconT) {
        g_notification_set_icon(notification_ptr, icon.icon_ptr)
    
    }

    /// Sets the priority of `notification` to `priority`. See
    /// `GNotificationPriority` for possible values.
    @inlinable func set(priority: GNotificationPriority) {
        g_notification_set_priority(notification_ptr, priority)
    
    }

    /// Sets the title of `notification` to `title`.
    @inlinable func set(title: UnsafePointer<gchar>!) {
        g_notification_set_title(notification_ptr, title)
    
    }

    /// Deprecated in favor of `g_notification_set_priority()`.
    ///
    /// **set_urgent is deprecated:**
    /// Since 2.42, this has been deprecated in favour of
    ///    g_notification_set_priority().
    @available(*, deprecated) @inlinable func set(urgent: Bool) {
        g_notification_set_urgent(notification_ptr, gboolean((urgent) ? 1 : 0))
    
    }


}



// MARK: - OsxAppInfo Class

/// The `OsxAppInfoProtocol` protocol exposes the methods and properties of an underlying `GOsxAppInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `OsxAppInfo`.
/// Alternatively, use `OsxAppInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol OsxAppInfoProtocol: GLibObject.ObjectProtocol, AppInfoProtocol {
        /// Untyped pointer to the underlying `GOsxAppInfo` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GOsxAppInfo` instance.
    var osx_app_info_ptr: UnsafeMutablePointer<GOsxAppInfo>! { get }

}

/// The `OsxAppInfoRef` type acts as a lightweight Swift reference to an underlying `GOsxAppInfo` instance.
/// It exposes methods that can operate on this data type through `OsxAppInfoProtocol` conformance.
/// Use `OsxAppInfoRef` only as an `unowned` reference to an existing `GOsxAppInfo` instance.
///

public struct OsxAppInfoRef: OsxAppInfoProtocol {
        /// Untyped pointer to the underlying `GOsxAppInfo` instance.
    /// For type-safe access, use the generated, typed pointer `osx_app_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension OsxAppInfoRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GOsxAppInfo>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GOsxAppInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GOsxAppInfo>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GOsxAppInfo>?) {
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

    /// Reference intialiser for a related type that implements `OsxAppInfoProtocol`
    @inlinable init<T: OsxAppInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OsxAppInfoProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OsxAppInfoProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OsxAppInfoProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OsxAppInfoProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OsxAppInfoProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `OsxAppInfo` type acts as a reference-counted owner of an underlying `GOsxAppInfo` instance.
/// It provides the methods that can operate on this data type through `OsxAppInfoProtocol` conformance.
/// Use `OsxAppInfo` as a strong reference or owner of a `GOsxAppInfo` instance.
///

open class OsxAppInfo: GLibObject.Object, OsxAppInfoProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OsxAppInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GOsxAppInfo>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OsxAppInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GOsxAppInfo>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OsxAppInfo` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OsxAppInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OsxAppInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GOsxAppInfo>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OsxAppInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GOsxAppInfo>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GOsxAppInfo`.
    /// i.e., ownership is transferred to the `OsxAppInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GOsxAppInfo>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `OsxAppInfoProtocol`
    /// Will retain `GOsxAppInfo`.
    /// - Parameter other: an instance of a related type that implements `OsxAppInfoProtocol`
    @inlinable public init<T: OsxAppInfoProtocol>(osxAppInfo other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OsxAppInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OsxAppInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OsxAppInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OsxAppInfoProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OsxAppInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OsxAppInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OsxAppInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OsxAppInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
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
    @inlinable @discardableResult func connect(signal kind: OsxAppInfoSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: OsxAppInfo Class: OsxAppInfoProtocol extension (methods and fields)
public extension OsxAppInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GOsxAppInfo` instance.
    @inlinable var osx_app_info_ptr: UnsafeMutablePointer<GOsxAppInfo>! { return ptr?.assumingMemoryBound(to: GOsxAppInfo.self) }

    @inlinable func getFilename() -> String! {
        let rv = g_osx_app_info_get_filename(osx_app_info_ptr).map({ String(cString: $0) })
        return rv
    }
    @inlinable var filename: String! {
        get {
            let rv = g_osx_app_info_get_filename(osx_app_info_ptr).map({ String(cString: $0) })
            return rv
        }
    }


}



