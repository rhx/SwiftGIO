import CGLib
import GLib
import GLibObject

/// Metatype/GType declaration for Volume
public extension VolumeIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `Volume`
    static var metatypeReference: GType { g_volume_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GVolumeIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GVolumeIface.self) }
    
    static var metatype: GVolumeIface? { metatypePointer?.pointee } 
    
    static var wrapper: VolumeIfaceRef? { VolumeIfaceRef(metatypePointer) }
    
    
}

// MARK: - VolumeIface Record

/// Interface for implementing operations for mountable volumes.
///
/// The `VolumeIfaceProtocol` protocol exposes the methods and properties of an underlying `GVolumeIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VolumeIface`.
/// Alternatively, use `VolumeIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol VolumeIfaceProtocol {
        /// Untyped pointer to the underlying `GVolumeIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GVolumeIface` instance.
    var _ptr: UnsafeMutablePointer<GVolumeIface>! { get }

    /// Required Initialiser for types conforming to `VolumeIfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Interface for implementing operations for mountable volumes.
///
/// The `VolumeIfaceRef` type acts as a lightweight Swift reference to an underlying `GVolumeIface` instance.
/// It exposes methods that can operate on this data type through `VolumeIfaceProtocol` conformance.
/// Use `VolumeIfaceRef` only as an `unowned` reference to an existing `GVolumeIface` instance.
///
public struct VolumeIfaceRef: VolumeIfaceProtocol {
        /// Untyped pointer to the underlying `GVolumeIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension VolumeIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GVolumeIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GVolumeIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GVolumeIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GVolumeIface>?) {
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

    /// Reference intialiser for a related type that implements `VolumeIfaceProtocol`
    @inlinable init<T: VolumeIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: VolumeIface Record: VolumeIfaceProtocol extension (methods and fields)
public extension VolumeIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GVolumeIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GVolumeIface>! { return ptr?.assumingMemoryBound(to: GVolumeIface.self) }


    /// The parent interface.
    @inlinable var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var changed is unavailable because changed is void

    // var removed is unavailable because removed is void

    // var getName is unavailable because get_name is void

    // var getIcon is unavailable because get_icon is void

    // var getUuid is unavailable because get_uuid is void

    // var getDrive is unavailable because get_drive is void

    // var getMount is unavailable because get_mount is void

    // var canMount is unavailable because can_mount is void

    // var canEject is unavailable because can_eject is void

    // var mountFn is unavailable because mount_fn is void

    // var mountFinish is unavailable because mount_finish is void

    // var eject is unavailable because eject is void

    // var ejectFinish is unavailable because eject_finish is void

    // var getIdentifier is unavailable because get_identifier is void

    // var enumerateIdentifiers is unavailable because enumerate_identifiers is void

    // var shouldAutomount is unavailable because should_automount is void

    // var getActivationRoot is unavailable because get_activation_root is void

    // var ejectWithOperation is unavailable because eject_with_operation is void

    // var ejectWithOperationFinish is unavailable because eject_with_operation_finish is void

    // var getSortKey is unavailable because get_sort_key is void

    // var getSymbolicIcon is unavailable because get_symbolic_icon is void

}



/// Metatype/GType declaration for VolumeMonitor
public extension VolumeMonitorClassRef {
    
    /// This getter returns the GLib type identifier registered for `VolumeMonitor`
    static var metatypeReference: GType { g_volume_monitor_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GVolumeMonitorClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GVolumeMonitorClass.self) }
    
    static var metatype: GVolumeMonitorClass? { metatypePointer?.pointee } 
    
    static var wrapper: VolumeMonitorClassRef? { VolumeMonitorClassRef(metatypePointer) }
    
    
}

// MARK: - VolumeMonitorClass Record


///
/// The `VolumeMonitorClassProtocol` protocol exposes the methods and properties of an underlying `GVolumeMonitorClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VolumeMonitorClass`.
/// Alternatively, use `VolumeMonitorClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol VolumeMonitorClassProtocol {
        /// Untyped pointer to the underlying `GVolumeMonitorClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GVolumeMonitorClass` instance.
    var _ptr: UnsafeMutablePointer<GVolumeMonitorClass>! { get }

    /// Required Initialiser for types conforming to `VolumeMonitorClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `VolumeMonitorClassRef` type acts as a lightweight Swift reference to an underlying `GVolumeMonitorClass` instance.
/// It exposes methods that can operate on this data type through `VolumeMonitorClassProtocol` conformance.
/// Use `VolumeMonitorClassRef` only as an `unowned` reference to an existing `GVolumeMonitorClass` instance.
///
public struct VolumeMonitorClassRef: VolumeMonitorClassProtocol {
        /// Untyped pointer to the underlying `GVolumeMonitorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension VolumeMonitorClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GVolumeMonitorClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GVolumeMonitorClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GVolumeMonitorClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GVolumeMonitorClass>?) {
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

    /// Reference intialiser for a related type that implements `VolumeMonitorClassProtocol`
    @inlinable init<T: VolumeMonitorClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeMonitorClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeMonitorClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeMonitorClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeMonitorClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeMonitorClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: VolumeMonitorClass Record: VolumeMonitorClassProtocol extension (methods and fields)
public extension VolumeMonitorClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GVolumeMonitorClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GVolumeMonitorClass>! { return ptr?.assumingMemoryBound(to: GVolumeMonitorClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var volumeAdded is unavailable because volume_added is void

    // var volumeRemoved is unavailable because volume_removed is void

    // var volumeChanged is unavailable because volume_changed is void

    // var mountAdded is unavailable because mount_added is void

    // var mountRemoved is unavailable because mount_removed is void

    // var mountPreUnmount is unavailable because mount_pre_unmount is void

    // var mountChanged is unavailable because mount_changed is void

    // var driveConnected is unavailable because drive_connected is void

    // var driveDisconnected is unavailable because drive_disconnected is void

    // var driveChanged is unavailable because drive_changed is void

    // var isSupported is unavailable because is_supported is void

    // var getConnectedDrives is unavailable because get_connected_drives is void

    // var getVolumes is unavailable because get_volumes is void

    // var getMounts is unavailable because get_mounts is void

    // var getVolumeForUuid is unavailable because get_volume_for_uuid is void

    // var getMountForUuid is unavailable because get_mount_for_uuid is void

    // var adoptOrphanMount is unavailable because adopt_orphan_mount is void

    // var driveEjectButton is unavailable because drive_eject_button is void

    // var driveStopButton is unavailable because drive_stop_button is void

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

    // var GReserved4 is unavailable because _g_reserved4 is void

    // var GReserved5 is unavailable because _g_reserved5 is void

    // var GReserved6 is unavailable because _g_reserved6 is void

}



/// Metatype/GType declaration for ZlibCompressor
public extension ZlibCompressorClassRef {
    
    /// This getter returns the GLib type identifier registered for `ZlibCompressor`
    static var metatypeReference: GType { g_zlib_compressor_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GZlibCompressorClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GZlibCompressorClass.self) }
    
    static var metatype: GZlibCompressorClass? { metatypePointer?.pointee } 
    
    static var wrapper: ZlibCompressorClassRef? { ZlibCompressorClassRef(metatypePointer) }
    
    
}

// MARK: - ZlibCompressorClass Record


///
/// The `ZlibCompressorClassProtocol` protocol exposes the methods and properties of an underlying `GZlibCompressorClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ZlibCompressorClass`.
/// Alternatively, use `ZlibCompressorClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ZlibCompressorClassProtocol {
        /// Untyped pointer to the underlying `GZlibCompressorClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GZlibCompressorClass` instance.
    var _ptr: UnsafeMutablePointer<GZlibCompressorClass>! { get }

    /// Required Initialiser for types conforming to `ZlibCompressorClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ZlibCompressorClassRef` type acts as a lightweight Swift reference to an underlying `GZlibCompressorClass` instance.
/// It exposes methods that can operate on this data type through `ZlibCompressorClassProtocol` conformance.
/// Use `ZlibCompressorClassRef` only as an `unowned` reference to an existing `GZlibCompressorClass` instance.
///
public struct ZlibCompressorClassRef: ZlibCompressorClassProtocol {
        /// Untyped pointer to the underlying `GZlibCompressorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ZlibCompressorClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GZlibCompressorClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GZlibCompressorClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GZlibCompressorClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GZlibCompressorClass>?) {
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

    /// Reference intialiser for a related type that implements `ZlibCompressorClassProtocol`
    @inlinable init<T: ZlibCompressorClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibCompressorClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibCompressorClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibCompressorClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibCompressorClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibCompressorClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ZlibCompressorClass Record: ZlibCompressorClassProtocol extension (methods and fields)
public extension ZlibCompressorClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GZlibCompressorClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GZlibCompressorClass>! { return ptr?.assumingMemoryBound(to: GZlibCompressorClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



