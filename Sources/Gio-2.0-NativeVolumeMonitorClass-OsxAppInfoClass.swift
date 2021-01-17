import CGLib
import GLib
import GLibObject

/// Metatype/GType declaration for NativeVolumeMonitor
public extension NativeVolumeMonitorClassRef {
    
    /// This getter returns the GLib type identifier registered for `NativeVolumeMonitor`
    static var metatypeReference: GType { g_native_volume_monitor_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GNativeVolumeMonitorClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GNativeVolumeMonitorClass.self) }
    
    static var metatype: GNativeVolumeMonitorClass? { metatypePointer?.pointee } 
    
    static var wrapper: NativeVolumeMonitorClassRef? { NativeVolumeMonitorClassRef(metatypePointer) }
    
    
}

// MARK: - NativeVolumeMonitorClass Record

/// The `NativeVolumeMonitorClassProtocol` protocol exposes the methods and properties of an underlying `GNativeVolumeMonitorClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NativeVolumeMonitorClass`.
/// Alternatively, use `NativeVolumeMonitorClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol NativeVolumeMonitorClassProtocol {
        /// Untyped pointer to the underlying `GNativeVolumeMonitorClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GNativeVolumeMonitorClass` instance.
    var _ptr: UnsafeMutablePointer<GNativeVolumeMonitorClass>! { get }

}

/// The `NativeVolumeMonitorClassRef` type acts as a lightweight Swift reference to an underlying `GNativeVolumeMonitorClass` instance.
/// It exposes methods that can operate on this data type through `NativeVolumeMonitorClassProtocol` conformance.
/// Use `NativeVolumeMonitorClassRef` only as an `unowned` reference to an existing `GNativeVolumeMonitorClass` instance.
///

public struct NativeVolumeMonitorClassRef: NativeVolumeMonitorClassProtocol {
        /// Untyped pointer to the underlying `GNativeVolumeMonitorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension NativeVolumeMonitorClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GNativeVolumeMonitorClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GNativeVolumeMonitorClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GNativeVolumeMonitorClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GNativeVolumeMonitorClass>?) {
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

    /// Reference intialiser for a related type that implements `NativeVolumeMonitorClassProtocol`
    @inlinable init<T: NativeVolumeMonitorClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeVolumeMonitorClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeVolumeMonitorClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeVolumeMonitorClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeVolumeMonitorClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeVolumeMonitorClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: NativeVolumeMonitorClass Record: NativeVolumeMonitorClassProtocol extension (methods and fields)
public extension NativeVolumeMonitorClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GNativeVolumeMonitorClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GNativeVolumeMonitorClass>! { return ptr?.assumingMemoryBound(to: GNativeVolumeMonitorClass.self) }


    @inlinable var parentClass: GVolumeMonitorClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var getMountForMountPath is unavailable because get_mount_for_mount_path is void

}



/// Metatype/GType declaration for NetworkAddress
public extension NetworkAddressClassRef {
    
    /// This getter returns the GLib type identifier registered for `NetworkAddress`
    static var metatypeReference: GType { g_network_address_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GNetworkAddressClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GNetworkAddressClass.self) }
    
    static var metatype: GNetworkAddressClass? { metatypePointer?.pointee } 
    
    static var wrapper: NetworkAddressClassRef? { NetworkAddressClassRef(metatypePointer) }
    
    
}

// MARK: - NetworkAddressClass Record

/// The `NetworkAddressClassProtocol` protocol exposes the methods and properties of an underlying `GNetworkAddressClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NetworkAddressClass`.
/// Alternatively, use `NetworkAddressClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol NetworkAddressClassProtocol {
        /// Untyped pointer to the underlying `GNetworkAddressClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GNetworkAddressClass` instance.
    var _ptr: UnsafeMutablePointer<GNetworkAddressClass>! { get }

}

/// The `NetworkAddressClassRef` type acts as a lightweight Swift reference to an underlying `GNetworkAddressClass` instance.
/// It exposes methods that can operate on this data type through `NetworkAddressClassProtocol` conformance.
/// Use `NetworkAddressClassRef` only as an `unowned` reference to an existing `GNetworkAddressClass` instance.
///

public struct NetworkAddressClassRef: NetworkAddressClassProtocol {
        /// Untyped pointer to the underlying `GNetworkAddressClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension NetworkAddressClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GNetworkAddressClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GNetworkAddressClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GNetworkAddressClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GNetworkAddressClass>?) {
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

    /// Reference intialiser for a related type that implements `NetworkAddressClassProtocol`
    @inlinable init<T: NetworkAddressClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkAddressClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkAddressClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkAddressClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkAddressClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkAddressClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: NetworkAddressClass Record: NetworkAddressClassProtocol extension (methods and fields)
public extension NetworkAddressClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GNetworkAddressClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GNetworkAddressClass>! { return ptr?.assumingMemoryBound(to: GNetworkAddressClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for NetworkMonitor
public extension NetworkMonitorInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `NetworkMonitor`
    static var metatypeReference: GType { g_network_monitor_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GNetworkMonitorInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GNetworkMonitorInterface.self) }
    
    static var metatype: GNetworkMonitorInterface? { metatypePointer?.pointee } 
    
    static var wrapper: NetworkMonitorInterfaceRef? { NetworkMonitorInterfaceRef(metatypePointer) }
    
    
}

// MARK: - NetworkMonitorInterface Record

/// The `NetworkMonitorInterfaceProtocol` protocol exposes the methods and properties of an underlying `GNetworkMonitorInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NetworkMonitorInterface`.
/// Alternatively, use `NetworkMonitorInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The virtual function table for `GNetworkMonitor`.
public protocol NetworkMonitorInterfaceProtocol {
        /// Untyped pointer to the underlying `GNetworkMonitorInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GNetworkMonitorInterface` instance.
    var _ptr: UnsafeMutablePointer<GNetworkMonitorInterface>! { get }

}

/// The `NetworkMonitorInterfaceRef` type acts as a lightweight Swift reference to an underlying `GNetworkMonitorInterface` instance.
/// It exposes methods that can operate on this data type through `NetworkMonitorInterfaceProtocol` conformance.
/// Use `NetworkMonitorInterfaceRef` only as an `unowned` reference to an existing `GNetworkMonitorInterface` instance.
///
/// The virtual function table for `GNetworkMonitor`.
public struct NetworkMonitorInterfaceRef: NetworkMonitorInterfaceProtocol {
        /// Untyped pointer to the underlying `GNetworkMonitorInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension NetworkMonitorInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GNetworkMonitorInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GNetworkMonitorInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GNetworkMonitorInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GNetworkMonitorInterface>?) {
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

    /// Reference intialiser for a related type that implements `NetworkMonitorInterfaceProtocol`
    @inlinable init<T: NetworkMonitorInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkMonitorInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkMonitorInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkMonitorInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkMonitorInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkMonitorInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: NetworkMonitorInterface Record: NetworkMonitorInterfaceProtocol extension (methods and fields)
public extension NetworkMonitorInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GNetworkMonitorInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GNetworkMonitorInterface>! { return ptr?.assumingMemoryBound(to: GNetworkMonitorInterface.self) }


    /// The parent interface.
    @inlinable var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var networkChanged is unavailable because network_changed is void

    // var canReach is unavailable because can_reach is void

    // var canReachAsync is unavailable because can_reach_async is void

    // var canReachFinish is unavailable because can_reach_finish is void

}



/// Metatype/GType declaration for NetworkService
public extension NetworkServiceClassRef {
    
    /// This getter returns the GLib type identifier registered for `NetworkService`
    static var metatypeReference: GType { g_network_service_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GNetworkServiceClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GNetworkServiceClass.self) }
    
    static var metatype: GNetworkServiceClass? { metatypePointer?.pointee } 
    
    static var wrapper: NetworkServiceClassRef? { NetworkServiceClassRef(metatypePointer) }
    
    
}

// MARK: - NetworkServiceClass Record

/// The `NetworkServiceClassProtocol` protocol exposes the methods and properties of an underlying `GNetworkServiceClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NetworkServiceClass`.
/// Alternatively, use `NetworkServiceClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol NetworkServiceClassProtocol {
        /// Untyped pointer to the underlying `GNetworkServiceClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GNetworkServiceClass` instance.
    var _ptr: UnsafeMutablePointer<GNetworkServiceClass>! { get }

}

/// The `NetworkServiceClassRef` type acts as a lightweight Swift reference to an underlying `GNetworkServiceClass` instance.
/// It exposes methods that can operate on this data type through `NetworkServiceClassProtocol` conformance.
/// Use `NetworkServiceClassRef` only as an `unowned` reference to an existing `GNetworkServiceClass` instance.
///

public struct NetworkServiceClassRef: NetworkServiceClassProtocol {
        /// Untyped pointer to the underlying `GNetworkServiceClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension NetworkServiceClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GNetworkServiceClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GNetworkServiceClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GNetworkServiceClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GNetworkServiceClass>?) {
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

    /// Reference intialiser for a related type that implements `NetworkServiceClassProtocol`
    @inlinable init<T: NetworkServiceClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkServiceClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkServiceClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkServiceClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkServiceClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkServiceClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: NetworkServiceClass Record: NetworkServiceClassProtocol extension (methods and fields)
public extension NetworkServiceClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GNetworkServiceClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GNetworkServiceClass>! { return ptr?.assumingMemoryBound(to: GNetworkServiceClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for OsxAppInfo
public extension OsxAppInfoClassRef {
    
    /// This getter returns the GLib type identifier registered for `OsxAppInfo`
    static var metatypeReference: GType { g_osx_app_info_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GOsxAppInfoClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GOsxAppInfoClass.self) }
    
    static var metatype: GOsxAppInfoClass? { metatypePointer?.pointee } 
    
    static var wrapper: OsxAppInfoClassRef? { OsxAppInfoClassRef(metatypePointer) }
    
    
}

// MARK: - OsxAppInfoClass Record

/// The `OsxAppInfoClassProtocol` protocol exposes the methods and properties of an underlying `GOsxAppInfoClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `OsxAppInfoClass`.
/// Alternatively, use `OsxAppInfoClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol OsxAppInfoClassProtocol {
        /// Untyped pointer to the underlying `GOsxAppInfoClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GOsxAppInfoClass` instance.
    var _ptr: UnsafeMutablePointer<GOsxAppInfoClass>! { get }

}

/// The `OsxAppInfoClassRef` type acts as a lightweight Swift reference to an underlying `GOsxAppInfoClass` instance.
/// It exposes methods that can operate on this data type through `OsxAppInfoClassProtocol` conformance.
/// Use `OsxAppInfoClassRef` only as an `unowned` reference to an existing `GOsxAppInfoClass` instance.
///

public struct OsxAppInfoClassRef: OsxAppInfoClassProtocol {
        /// Untyped pointer to the underlying `GOsxAppInfoClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension OsxAppInfoClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GOsxAppInfoClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GOsxAppInfoClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GOsxAppInfoClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GOsxAppInfoClass>?) {
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

    /// Reference intialiser for a related type that implements `OsxAppInfoClassProtocol`
    @inlinable init<T: OsxAppInfoClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OsxAppInfoClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OsxAppInfoClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OsxAppInfoClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OsxAppInfoClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OsxAppInfoClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: OsxAppInfoClass Record: OsxAppInfoClassProtocol extension (methods and fields)
public extension OsxAppInfoClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GOsxAppInfoClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GOsxAppInfoClass>! { return ptr?.assumingMemoryBound(to: GOsxAppInfoClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



