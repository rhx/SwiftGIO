import CGLib
import GLib
import GLibObject

// MARK: - VolumeIface Record

/// The `VolumeIfaceProtocol` protocol exposes the methods and properties of an underlying `GVolumeIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VolumeIface`.
/// Alternatively, use `VolumeIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Interface for implementing operations for mountable volumes.
public protocol VolumeIfaceProtocol {
        /// Untyped pointer to the underlying `GVolumeIface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GVolumeIface` instance.
    var _ptr: UnsafeMutablePointer<GVolumeIface> { get }
}

/// The `VolumeIfaceRef` type acts as a lightweight Swift reference to an underlying `GVolumeIface` instance.
/// It exposes methods that can operate on this data type through `VolumeIfaceProtocol` conformance.
/// Use `VolumeIfaceRef` only as an `unowned` reference to an existing `GVolumeIface` instance.
///
/// Interface for implementing operations for mountable volumes.
public struct VolumeIfaceRef: VolumeIfaceProtocol {
        /// Untyped pointer to the underlying `GVolumeIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension VolumeIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GVolumeIface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `VolumeIfaceProtocol`
    init<T: VolumeIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeIfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeIfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeIfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeIfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeIfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `VolumeIface` type acts as an owner of an underlying `GVolumeIface` instance.
/// It provides the methods that can operate on this data type through `VolumeIfaceProtocol` conformance.
/// Use `VolumeIface` as a strong reference or owner of a `GVolumeIface` instance.
///
/// Interface for implementing operations for mountable volumes.
open class VolumeIface: VolumeIfaceProtocol {
        /// Untyped pointer to the underlying `GVolumeIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VolumeIface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GVolumeIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GVolumeIface` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `VolumeIface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GVolumeIface>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GVolumeIface, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `VolumeIfaceProtocol`
    /// `GVolumeIface` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `VolumeIfaceProtocol`
    public init<T: VolumeIfaceProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GVolumeIface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GVolumeIface`.
    deinit {
        // no reference counting for GVolumeIface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeIfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeIfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GVolumeIface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeIfaceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeIfaceProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GVolumeIface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeIfaceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeIfaceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GVolumeIface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeIfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeIfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GVolumeIface, cannot ref(cast(_ptr))
    }



}

// MARK: no VolumeIface properties

// MARK: no VolumeIface signals


// MARK: VolumeIface Record: VolumeIfaceProtocol extension (methods and fields)
public extension VolumeIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GVolumeIface` instance.
    var _ptr: UnsafeMutablePointer<GVolumeIface> { return ptr.assumingMemoryBound(to: GVolumeIface.self) }


    /// The parent interface.
    var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv: GTypeInterface = cast(_ptr.pointee.g_iface)
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



// MARK: - VolumeMonitorClass Record

/// The `VolumeMonitorClassProtocol` protocol exposes the methods and properties of an underlying `GVolumeMonitorClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VolumeMonitorClass`.
/// Alternatively, use `VolumeMonitorClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol VolumeMonitorClassProtocol {
        /// Untyped pointer to the underlying `GVolumeMonitorClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GVolumeMonitorClass` instance.
    var _ptr: UnsafeMutablePointer<GVolumeMonitorClass> { get }
}

/// The `VolumeMonitorClassRef` type acts as a lightweight Swift reference to an underlying `GVolumeMonitorClass` instance.
/// It exposes methods that can operate on this data type through `VolumeMonitorClassProtocol` conformance.
/// Use `VolumeMonitorClassRef` only as an `unowned` reference to an existing `GVolumeMonitorClass` instance.
///

public struct VolumeMonitorClassRef: VolumeMonitorClassProtocol {
        /// Untyped pointer to the underlying `GVolumeMonitorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension VolumeMonitorClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GVolumeMonitorClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `VolumeMonitorClassProtocol`
    init<T: VolumeMonitorClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeMonitorClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeMonitorClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeMonitorClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeMonitorClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeMonitorClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `VolumeMonitorClass` type acts as an owner of an underlying `GVolumeMonitorClass` instance.
/// It provides the methods that can operate on this data type through `VolumeMonitorClassProtocol` conformance.
/// Use `VolumeMonitorClass` as a strong reference or owner of a `GVolumeMonitorClass` instance.
///

open class VolumeMonitorClass: VolumeMonitorClassProtocol {
        /// Untyped pointer to the underlying `GVolumeMonitorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VolumeMonitorClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GVolumeMonitorClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GVolumeMonitorClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `VolumeMonitorClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GVolumeMonitorClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GVolumeMonitorClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `VolumeMonitorClassProtocol`
    /// `GVolumeMonitorClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `VolumeMonitorClassProtocol`
    public init<T: VolumeMonitorClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GVolumeMonitorClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GVolumeMonitorClass`.
    deinit {
        // no reference counting for GVolumeMonitorClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeMonitorClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeMonitorClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GVolumeMonitorClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeMonitorClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeMonitorClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GVolumeMonitorClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeMonitorClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeMonitorClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GVolumeMonitorClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeMonitorClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VolumeMonitorClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GVolumeMonitorClass, cannot ref(cast(_ptr))
    }



}

// MARK: no VolumeMonitorClass properties

// MARK: no VolumeMonitorClass signals


// MARK: VolumeMonitorClass Record: VolumeMonitorClassProtocol extension (methods and fields)
public extension VolumeMonitorClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GVolumeMonitorClass` instance.
    var _ptr: UnsafeMutablePointer<GVolumeMonitorClass> { return ptr.assumingMemoryBound(to: GVolumeMonitorClass.self) }


    var parentClass: GObjectClass {
        get {
            let rv: GObjectClass = cast(_ptr.pointee.parent_class)
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



// MARK: - ZlibCompressorClass Record

/// The `ZlibCompressorClassProtocol` protocol exposes the methods and properties of an underlying `GZlibCompressorClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ZlibCompressorClass`.
/// Alternatively, use `ZlibCompressorClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ZlibCompressorClassProtocol {
        /// Untyped pointer to the underlying `GZlibCompressorClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GZlibCompressorClass` instance.
    var _ptr: UnsafeMutablePointer<GZlibCompressorClass> { get }
}

/// The `ZlibCompressorClassRef` type acts as a lightweight Swift reference to an underlying `GZlibCompressorClass` instance.
/// It exposes methods that can operate on this data type through `ZlibCompressorClassProtocol` conformance.
/// Use `ZlibCompressorClassRef` only as an `unowned` reference to an existing `GZlibCompressorClass` instance.
///

public struct ZlibCompressorClassRef: ZlibCompressorClassProtocol {
        /// Untyped pointer to the underlying `GZlibCompressorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ZlibCompressorClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GZlibCompressorClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ZlibCompressorClassProtocol`
    init<T: ZlibCompressorClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibCompressorClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibCompressorClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibCompressorClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibCompressorClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibCompressorClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ZlibCompressorClass` type acts as an owner of an underlying `GZlibCompressorClass` instance.
/// It provides the methods that can operate on this data type through `ZlibCompressorClassProtocol` conformance.
/// Use `ZlibCompressorClass` as a strong reference or owner of a `GZlibCompressorClass` instance.
///

open class ZlibCompressorClass: ZlibCompressorClassProtocol {
        /// Untyped pointer to the underlying `GZlibCompressorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ZlibCompressorClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GZlibCompressorClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GZlibCompressorClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ZlibCompressorClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GZlibCompressorClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GZlibCompressorClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `ZlibCompressorClassProtocol`
    /// `GZlibCompressorClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ZlibCompressorClassProtocol`
    public init<T: ZlibCompressorClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GZlibCompressorClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GZlibCompressorClass`.
    deinit {
        // no reference counting for GZlibCompressorClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibCompressorClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibCompressorClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GZlibCompressorClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibCompressorClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibCompressorClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GZlibCompressorClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibCompressorClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibCompressorClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GZlibCompressorClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibCompressorClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibCompressorClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GZlibCompressorClass, cannot ref(cast(_ptr))
    }



}

// MARK: no ZlibCompressorClass properties

// MARK: no ZlibCompressorClass signals


// MARK: ZlibCompressorClass Record: ZlibCompressorClassProtocol extension (methods and fields)
public extension ZlibCompressorClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GZlibCompressorClass` instance.
    var _ptr: UnsafeMutablePointer<GZlibCompressorClass> { return ptr.assumingMemoryBound(to: GZlibCompressorClass.self) }


    var parentClass: GObjectClass {
        get {
            let rv: GObjectClass = cast(_ptr.pointee.parent_class)
            return rv
        }
    }

}



