import CGLib
import GLib
import GLibObject

// MARK: - VolumeMonitor Class

/// The `VolumeMonitorProtocol` protocol exposes the methods and properties of an underlying `GVolumeMonitor` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VolumeMonitor`.
/// Alternatively, use `VolumeMonitorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GVolumeMonitor` is for listing the user interesting devices and volumes
/// on the computer. In other words, what a file selector or file manager
/// would show in a sidebar.
/// 
/// `GVolumeMonitor` is not
/// [thread-default-context aware](#g-main-context-push-thread-default),
/// and so should not be used other than from the main thread, with no
/// thread-default-context active.
/// 
/// In order to receive updates about volumes and mounts monitored through GVFS,
/// a main loop must be running.
public protocol VolumeMonitorProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GVolumeMonitor` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GVolumeMonitor` instance.
    var volume_monitor_ptr: UnsafeMutablePointer<GVolumeMonitor>! { get }

}

/// The `VolumeMonitorRef` type acts as a lightweight Swift reference to an underlying `GVolumeMonitor` instance.
/// It exposes methods that can operate on this data type through `VolumeMonitorProtocol` conformance.
/// Use `VolumeMonitorRef` only as an `unowned` reference to an existing `GVolumeMonitor` instance.
///
/// `GVolumeMonitor` is for listing the user interesting devices and volumes
/// on the computer. In other words, what a file selector or file manager
/// would show in a sidebar.
/// 
/// `GVolumeMonitor` is not
/// [thread-default-context aware](#g-main-context-push-thread-default),
/// and so should not be used other than from the main thread, with no
/// thread-default-context active.
/// 
/// In order to receive updates about volumes and mounts monitored through GVFS,
/// a main loop must be running.
public struct VolumeMonitorRef: VolumeMonitorProtocol {
        /// Untyped pointer to the underlying `GVolumeMonitor` instance.
    /// For type-safe access, use the generated, typed pointer `volume_monitor_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension VolumeMonitorRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GVolumeMonitor>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GVolumeMonitor>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GVolumeMonitor>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GVolumeMonitor>?) {
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

    /// Reference intialiser for a related type that implements `VolumeMonitorProtocol`
    @inlinable init<T: VolumeMonitorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeMonitorProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeMonitorProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeMonitorProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeMonitorProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeMonitorProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Gets the volume monitor used by gio.
    @inlinable static func volumeMonitorGet() -> VolumeMonitorRef! {
        guard let rv = VolumeMonitorRef(gconstpointer: gconstpointer(g_volume_monitor_get())) else { return nil }
        return rv
    }
}

/// The `VolumeMonitor` type acts as a reference-counted owner of an underlying `GVolumeMonitor` instance.
/// It provides the methods that can operate on this data type through `VolumeMonitorProtocol` conformance.
/// Use `VolumeMonitor` as a strong reference or owner of a `GVolumeMonitor` instance.
///
/// `GVolumeMonitor` is for listing the user interesting devices and volumes
/// on the computer. In other words, what a file selector or file manager
/// would show in a sidebar.
/// 
/// `GVolumeMonitor` is not
/// [thread-default-context aware](#g-main-context-push-thread-default),
/// and so should not be used other than from the main thread, with no
/// thread-default-context active.
/// 
/// In order to receive updates about volumes and mounts monitored through GVFS,
/// a main loop must be running.
open class VolumeMonitor: GLibObject.Object, VolumeMonitorProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VolumeMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GVolumeMonitor>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VolumeMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GVolumeMonitor>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VolumeMonitor` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VolumeMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VolumeMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GVolumeMonitor>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VolumeMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GVolumeMonitor>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GVolumeMonitor`.
    /// i.e., ownership is transferred to the `VolumeMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GVolumeMonitor>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `VolumeMonitorProtocol`
    /// Will retain `GVolumeMonitor`.
    /// - Parameter other: an instance of a related type that implements `VolumeMonitorProtocol`
    @inlinable public init<T: VolumeMonitorProtocol>(volumeMonitor other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeMonitorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeMonitorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeMonitorProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeMonitorProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeMonitorProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeMonitorProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeMonitorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeMonitorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    /// Gets the volume monitor used by gio.
    @inlinable public static func volumeMonitorGet() -> VolumeMonitor! {
        guard let rv = VolumeMonitor(gconstpointer: gconstpointer(g_volume_monitor_get())) else { return nil }
        return rv
    }

}

// MARK: no VolumeMonitor properties

public enum VolumeMonitorSignalName: String, SignalNameProtocol {
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

public extension VolumeMonitorProtocol {
    /// Connect a `VolumeMonitorSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: VolumeMonitorSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: VolumeMonitor Class: VolumeMonitorProtocol extension (methods and fields)
public extension VolumeMonitorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GVolumeMonitor` instance.
    @inlinable var volume_monitor_ptr: UnsafeMutablePointer<GVolumeMonitor>! { return ptr?.assumingMemoryBound(to: GVolumeMonitor.self) }

    /// Gets a list of drives connected to the system.
    /// 
    /// The returned list should be freed with `g_list_free()`, after
    /// its elements have been unreffed with `g_object_unref()`.
    @inlinable func getConnectedDrives() -> GLib.ListRef! {
        let rv = GLib.ListRef(g_volume_monitor_get_connected_drives(volume_monitor_ptr))
        return rv
    }

    /// Finds a `GMount` object by its UUID (see `g_mount_get_uuid()`)
    @inlinable func getMountFor(uuid: UnsafePointer<CChar>!) -> MountRef! {
        let rv = MountRef(gconstpointer: gconstpointer(g_volume_monitor_get_mount_for_uuid(volume_monitor_ptr, uuid)))
        return rv
    }

    /// Gets a list of the mounts on the system.
    /// 
    /// The returned list should be freed with `g_list_free()`, after
    /// its elements have been unreffed with `g_object_unref()`.
    @inlinable func getMounts() -> GLib.ListRef! {
        let rv = GLib.ListRef(g_volume_monitor_get_mounts(volume_monitor_ptr))
        return rv
    }

    /// Finds a `GVolume` object by its UUID (see `g_volume_get_uuid()`)
    @inlinable func getVolumeFor(uuid: UnsafePointer<CChar>!) -> VolumeRef! {
        let rv = VolumeRef(gconstpointer: gconstpointer(g_volume_monitor_get_volume_for_uuid(volume_monitor_ptr, uuid)))
        return rv
    }

    /// Gets a list of the volumes on the system.
    /// 
    /// The returned list should be freed with `g_list_free()`, after
    /// its elements have been unreffed with `g_object_unref()`.
    @inlinable func getVolumes() -> GLib.ListRef! {
        let rv = GLib.ListRef(g_volume_monitor_get_volumes(volume_monitor_ptr))
        return rv
    }
    /// Gets a list of drives connected to the system.
    /// 
    /// The returned list should be freed with `g_list_free()`, after
    /// its elements have been unreffed with `g_object_unref()`.
    @inlinable var connectedDrives: GLib.ListRef! {
        /// Gets a list of drives connected to the system.
        /// 
        /// The returned list should be freed with `g_list_free()`, after
        /// its elements have been unreffed with `g_object_unref()`.
        get {
            let rv = GLib.ListRef(g_volume_monitor_get_connected_drives(volume_monitor_ptr))
            return rv
        }
    }

    /// Gets a list of the mounts on the system.
    /// 
    /// The returned list should be freed with `g_list_free()`, after
    /// its elements have been unreffed with `g_object_unref()`.
    @inlinable var mounts: GLib.ListRef! {
        /// Gets a list of the mounts on the system.
        /// 
        /// The returned list should be freed with `g_list_free()`, after
        /// its elements have been unreffed with `g_object_unref()`.
        get {
            let rv = GLib.ListRef(g_volume_monitor_get_mounts(volume_monitor_ptr))
            return rv
        }
    }

    /// Gets a list of the volumes on the system.
    /// 
    /// The returned list should be freed with `g_list_free()`, after
    /// its elements have been unreffed with `g_object_unref()`.
    @inlinable var volumes: GLib.ListRef! {
        /// Gets a list of the volumes on the system.
        /// 
        /// The returned list should be freed with `g_list_free()`, after
        /// its elements have been unreffed with `g_object_unref()`.
        get {
            let rv = GLib.ListRef(g_volume_monitor_get_volumes(volume_monitor_ptr))
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = volume_monitor_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - ZlibCompressor Class

/// The `ZlibCompressorProtocol` protocol exposes the methods and properties of an underlying `GZlibCompressor` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ZlibCompressor`.
/// Alternatively, use `ZlibCompressorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Zlib decompression
public protocol ZlibCompressorProtocol: GLibObject.ObjectProtocol, ConverterProtocol {
        /// Untyped pointer to the underlying `GZlibCompressor` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GZlibCompressor` instance.
    var zlib_compressor_ptr: UnsafeMutablePointer<GZlibCompressor>! { get }

}

/// The `ZlibCompressorRef` type acts as a lightweight Swift reference to an underlying `GZlibCompressor` instance.
/// It exposes methods that can operate on this data type through `ZlibCompressorProtocol` conformance.
/// Use `ZlibCompressorRef` only as an `unowned` reference to an existing `GZlibCompressor` instance.
///
/// Zlib decompression
public struct ZlibCompressorRef: ZlibCompressorProtocol {
        /// Untyped pointer to the underlying `GZlibCompressor` instance.
    /// For type-safe access, use the generated, typed pointer `zlib_compressor_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ZlibCompressorRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GZlibCompressor>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GZlibCompressor>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GZlibCompressor>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GZlibCompressor>?) {
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

    /// Reference intialiser for a related type that implements `ZlibCompressorProtocol`
    @inlinable init<T: ZlibCompressorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibCompressorProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibCompressorProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibCompressorProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibCompressorProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibCompressorProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GZlibCompressor`.
    @inlinable init( format: GZlibCompressorFormat, level: Int) {
        let rv = g_zlib_compressor_new(format, gint(level))
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `ZlibCompressor` type acts as a reference-counted owner of an underlying `GZlibCompressor` instance.
/// It provides the methods that can operate on this data type through `ZlibCompressorProtocol` conformance.
/// Use `ZlibCompressor` as a strong reference or owner of a `GZlibCompressor` instance.
///
/// Zlib decompression
open class ZlibCompressor: GLibObject.Object, ZlibCompressorProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ZlibCompressor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GZlibCompressor>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ZlibCompressor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GZlibCompressor>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ZlibCompressor` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ZlibCompressor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ZlibCompressor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GZlibCompressor>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ZlibCompressor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GZlibCompressor>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GZlibCompressor`.
    /// i.e., ownership is transferred to the `ZlibCompressor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GZlibCompressor>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ZlibCompressorProtocol`
    /// Will retain `GZlibCompressor`.
    /// - Parameter other: an instance of a related type that implements `ZlibCompressorProtocol`
    @inlinable public init<T: ZlibCompressorProtocol>(zlibCompressor other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibCompressorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibCompressorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibCompressorProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibCompressorProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibCompressorProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibCompressorProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibCompressorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibCompressorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GZlibCompressor`.
    @inlinable public init( format: GZlibCompressorFormat, level: Int) {
        let rv = g_zlib_compressor_new(format, gint(level))
        super.init(gpointer: (rv))
    }


}

public enum ZlibCompressorPropertyName: String, PropertyNameProtocol {
    /// If set to a non-`nil` `GFileInfo` object, and `GZlibCompressor:format` is
    /// `G_ZLIB_COMPRESSOR_FORMAT_GZIP`, the compressor will write the file name
    /// and modification time from the file info to the GZIP header.
    case fileInfo = "file-info"
    case format = "format"
    case level = "level"
}

public extension ZlibCompressorProtocol {
    /// Bind a `ZlibCompressorPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ZlibCompressorPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a ZlibCompressor property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ZlibCompressorPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a ZlibCompressor property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ZlibCompressorPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum ZlibCompressorSignalName: String, SignalNameProtocol {
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
    /// If set to a non-`nil` `GFileInfo` object, and `GZlibCompressor:format` is
    /// `G_ZLIB_COMPRESSOR_FORMAT_GZIP`, the compressor will write the file name
    /// and modification time from the file info to the GZIP header.
    case notifyFileInfo = "notify::file-info"
    case notifyFormat = "notify::format"
    case notifyLevel = "notify::level"
}

public extension ZlibCompressorProtocol {
    /// Connect a `ZlibCompressorSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: ZlibCompressorSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: ZlibCompressor Class: ZlibCompressorProtocol extension (methods and fields)
public extension ZlibCompressorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GZlibCompressor` instance.
    @inlinable var zlib_compressor_ptr: UnsafeMutablePointer<GZlibCompressor>! { return ptr?.assumingMemoryBound(to: GZlibCompressor.self) }

    /// Returns the `GZlibCompressor:file`-info property.
    @inlinable func getFileInfo() -> FileInfoRef! {
        let rv = FileInfoRef(gconstpointer: gconstpointer(g_zlib_compressor_get_file_info(zlib_compressor_ptr)))
        return rv
    }

    /// Sets `file_info` in `compressor`. If non-`nil`, and `compressor`'s
    /// `GZlibCompressor:format` property is `G_ZLIB_COMPRESSOR_FORMAT_GZIP`,
    /// it will be used to set the file name and modification time in
    /// the GZIP header of the compressed data.
    /// 
    /// Note: it is an error to call this function while a compression is in
    /// progress; it may only be called immediately after creation of `compressor`,
    /// or after resetting it with `g_converter_reset()`.
    @inlinable func set(fileInfo: FileInfoRef? = nil) {
        g_zlib_compressor_set_file_info(zlib_compressor_ptr, fileInfo?.file_info_ptr)
    
    }
    /// Sets `file_info` in `compressor`. If non-`nil`, and `compressor`'s
    /// `GZlibCompressor:format` property is `G_ZLIB_COMPRESSOR_FORMAT_GZIP`,
    /// it will be used to set the file name and modification time in
    /// the GZIP header of the compressed data.
    /// 
    /// Note: it is an error to call this function while a compression is in
    /// progress; it may only be called immediately after creation of `compressor`,
    /// or after resetting it with `g_converter_reset()`.
    @inlinable func set<FileInfoT: FileInfoProtocol>(fileInfo: FileInfoT?) {
        g_zlib_compressor_set_file_info(zlib_compressor_ptr, fileInfo?.file_info_ptr)
    
    }
    /// Returns the `GZlibCompressor:file`-info property.
    @inlinable var fileInfo: FileInfoRef! {
        /// Returns the `GZlibCompressor:file`-info property.
        get {
            let rv = FileInfoRef(gconstpointer: gconstpointer(g_zlib_compressor_get_file_info(zlib_compressor_ptr)))
            return rv
        }
        /// Sets `file_info` in `compressor`. If non-`nil`, and `compressor`'s
        /// `GZlibCompressor:format` property is `G_ZLIB_COMPRESSOR_FORMAT_GZIP`,
        /// it will be used to set the file name and modification time in
        /// the GZIP header of the compressed data.
        /// 
        /// Note: it is an error to call this function while a compression is in
        /// progress; it may only be called immediately after creation of `compressor`,
        /// or after resetting it with `g_converter_reset()`.
        nonmutating set {
            g_zlib_compressor_set_file_info(zlib_compressor_ptr, UnsafeMutablePointer<GFileInfo>(newValue?.file_info_ptr))
        }
    }


}



