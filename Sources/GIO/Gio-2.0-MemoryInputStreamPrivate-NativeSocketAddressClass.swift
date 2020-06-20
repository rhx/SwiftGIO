import CGLib
import GLib
import GLibObject

// MARK: - MemoryInputStreamPrivate Record

/// The `MemoryInputStreamPrivateProtocol` protocol exposes the methods and properties of an underlying `GMemoryInputStreamPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MemoryInputStreamPrivate`.
/// Alternatively, use `MemoryInputStreamPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MemoryInputStreamPrivateProtocol {
        /// Untyped pointer to the underlying `GMemoryInputStreamPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GMemoryInputStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GMemoryInputStreamPrivate> { get }
}

/// The `MemoryInputStreamPrivateRef` type acts as a lightweight Swift reference to an underlying `GMemoryInputStreamPrivate` instance.
/// It exposes methods that can operate on this data type through `MemoryInputStreamPrivateProtocol` conformance.
/// Use `MemoryInputStreamPrivateRef` only as an `unowned` reference to an existing `GMemoryInputStreamPrivate` instance.
///

public struct MemoryInputStreamPrivateRef: MemoryInputStreamPrivateProtocol {
        /// Untyped pointer to the underlying `GMemoryInputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MemoryInputStreamPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GMemoryInputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MemoryInputStreamPrivateProtocol`
    init<T: MemoryInputStreamPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MemoryInputStreamPrivate` type acts as an owner of an underlying `GMemoryInputStreamPrivate` instance.
/// It provides the methods that can operate on this data type through `MemoryInputStreamPrivateProtocol` conformance.
/// Use `MemoryInputStreamPrivate` as a strong reference or owner of a `GMemoryInputStreamPrivate` instance.
///

open class MemoryInputStreamPrivate: MemoryInputStreamPrivateProtocol {
        /// Untyped pointer to the underlying `GMemoryInputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemoryInputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GMemoryInputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GMemoryInputStreamPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `MemoryInputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GMemoryInputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GMemoryInputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `MemoryInputStreamPrivateProtocol`
    /// `GMemoryInputStreamPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `MemoryInputStreamPrivateProtocol`
    public init<T: MemoryInputStreamPrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GMemoryInputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GMemoryInputStreamPrivate`.
    deinit {
        // no reference counting for GMemoryInputStreamPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GMemoryInputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamPrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GMemoryInputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GMemoryInputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GMemoryInputStreamPrivate, cannot ref(cast(_ptr))
    }



}

// MARK: no MemoryInputStreamPrivate properties

// MARK: no MemoryInputStreamPrivate signals


// MARK: MemoryInputStreamPrivate Record: MemoryInputStreamPrivateProtocol extension (methods and fields)
public extension MemoryInputStreamPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMemoryInputStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GMemoryInputStreamPrivate> { return ptr.assumingMemoryBound(to: GMemoryInputStreamPrivate.self) }



}



// MARK: - MemoryMonitorInterface Record

/// The `MemoryMonitorInterfaceProtocol` protocol exposes the methods and properties of an underlying `GMemoryMonitorInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MemoryMonitorInterface`.
/// Alternatively, use `MemoryMonitorInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The virtual function table for `GMemoryMonitor`.
public protocol MemoryMonitorInterfaceProtocol {
        /// Untyped pointer to the underlying `GMemoryMonitorInterface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GMemoryMonitorInterface` instance.
    var _ptr: UnsafeMutablePointer<GMemoryMonitorInterface> { get }
}

/// The `MemoryMonitorInterfaceRef` type acts as a lightweight Swift reference to an underlying `GMemoryMonitorInterface` instance.
/// It exposes methods that can operate on this data type through `MemoryMonitorInterfaceProtocol` conformance.
/// Use `MemoryMonitorInterfaceRef` only as an `unowned` reference to an existing `GMemoryMonitorInterface` instance.
///
/// The virtual function table for `GMemoryMonitor`.
public struct MemoryMonitorInterfaceRef: MemoryMonitorInterfaceProtocol {
        /// Untyped pointer to the underlying `GMemoryMonitorInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MemoryMonitorInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GMemoryMonitorInterface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MemoryMonitorInterfaceProtocol`
    init<T: MemoryMonitorInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryMonitorInterfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryMonitorInterfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryMonitorInterfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryMonitorInterfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryMonitorInterfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MemoryMonitorInterface` type acts as an owner of an underlying `GMemoryMonitorInterface` instance.
/// It provides the methods that can operate on this data type through `MemoryMonitorInterfaceProtocol` conformance.
/// Use `MemoryMonitorInterface` as a strong reference or owner of a `GMemoryMonitorInterface` instance.
///
/// The virtual function table for `GMemoryMonitor`.
open class MemoryMonitorInterface: MemoryMonitorInterfaceProtocol {
        /// Untyped pointer to the underlying `GMemoryMonitorInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemoryMonitorInterface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GMemoryMonitorInterface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GMemoryMonitorInterface` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `MemoryMonitorInterface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GMemoryMonitorInterface>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GMemoryMonitorInterface, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `MemoryMonitorInterfaceProtocol`
    /// `GMemoryMonitorInterface` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `MemoryMonitorInterfaceProtocol`
    public init<T: MemoryMonitorInterfaceProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GMemoryMonitorInterface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GMemoryMonitorInterface`.
    deinit {
        // no reference counting for GMemoryMonitorInterface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryMonitorInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryMonitorInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GMemoryMonitorInterface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryMonitorInterfaceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryMonitorInterfaceProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GMemoryMonitorInterface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryMonitorInterfaceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryMonitorInterfaceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GMemoryMonitorInterface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryMonitorInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryMonitorInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GMemoryMonitorInterface, cannot ref(cast(_ptr))
    }



}

// MARK: no MemoryMonitorInterface properties

// MARK: no MemoryMonitorInterface signals


// MARK: MemoryMonitorInterface Record: MemoryMonitorInterfaceProtocol extension (methods and fields)
public extension MemoryMonitorInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMemoryMonitorInterface` instance.
    var _ptr: UnsafeMutablePointer<GMemoryMonitorInterface> { return ptr.assumingMemoryBound(to: GMemoryMonitorInterface.self) }


    // var gIface is unavailable because g_iface is private

    // var lowMemoryWarning is unavailable because low_memory_warning is void

}



// MARK: - MemoryOutputStreamClass Record

/// The `MemoryOutputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GMemoryOutputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MemoryOutputStreamClass`.
/// Alternatively, use `MemoryOutputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MemoryOutputStreamClassProtocol {
        /// Untyped pointer to the underlying `GMemoryOutputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GMemoryOutputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GMemoryOutputStreamClass> { get }
}

/// The `MemoryOutputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GMemoryOutputStreamClass` instance.
/// It exposes methods that can operate on this data type through `MemoryOutputStreamClassProtocol` conformance.
/// Use `MemoryOutputStreamClassRef` only as an `unowned` reference to an existing `GMemoryOutputStreamClass` instance.
///

public struct MemoryOutputStreamClassRef: MemoryOutputStreamClassProtocol {
        /// Untyped pointer to the underlying `GMemoryOutputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MemoryOutputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GMemoryOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MemoryOutputStreamClassProtocol`
    init<T: MemoryOutputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MemoryOutputStreamClass` type acts as an owner of an underlying `GMemoryOutputStreamClass` instance.
/// It provides the methods that can operate on this data type through `MemoryOutputStreamClassProtocol` conformance.
/// Use `MemoryOutputStreamClass` as a strong reference or owner of a `GMemoryOutputStreamClass` instance.
///

open class MemoryOutputStreamClass: MemoryOutputStreamClassProtocol {
        /// Untyped pointer to the underlying `GMemoryOutputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemoryOutputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GMemoryOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GMemoryOutputStreamClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `MemoryOutputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GMemoryOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GMemoryOutputStreamClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `MemoryOutputStreamClassProtocol`
    /// `GMemoryOutputStreamClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `MemoryOutputStreamClassProtocol`
    public init<T: MemoryOutputStreamClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GMemoryOutputStreamClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GMemoryOutputStreamClass`.
    deinit {
        // no reference counting for GMemoryOutputStreamClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GMemoryOutputStreamClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GMemoryOutputStreamClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GMemoryOutputStreamClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GMemoryOutputStreamClass, cannot ref(cast(_ptr))
    }



}

// MARK: no MemoryOutputStreamClass properties

// MARK: no MemoryOutputStreamClass signals


// MARK: MemoryOutputStreamClass Record: MemoryOutputStreamClassProtocol extension (methods and fields)
public extension MemoryOutputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMemoryOutputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GMemoryOutputStreamClass> { return ptr.assumingMemoryBound(to: GMemoryOutputStreamClass.self) }


    var parentClass: GOutputStreamClass {
        get {
            let rv: GOutputStreamClass = cast(_ptr.pointee.parent_class)
            return rv
        }
    }

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

    // var GReserved4 is unavailable because _g_reserved4 is void

    // var GReserved5 is unavailable because _g_reserved5 is void

}



// MARK: - MemoryOutputStreamPrivate Record

/// The `MemoryOutputStreamPrivateProtocol` protocol exposes the methods and properties of an underlying `GMemoryOutputStreamPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MemoryOutputStreamPrivate`.
/// Alternatively, use `MemoryOutputStreamPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MemoryOutputStreamPrivateProtocol {
        /// Untyped pointer to the underlying `GMemoryOutputStreamPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GMemoryOutputStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GMemoryOutputStreamPrivate> { get }
}

/// The `MemoryOutputStreamPrivateRef` type acts as a lightweight Swift reference to an underlying `GMemoryOutputStreamPrivate` instance.
/// It exposes methods that can operate on this data type through `MemoryOutputStreamPrivateProtocol` conformance.
/// Use `MemoryOutputStreamPrivateRef` only as an `unowned` reference to an existing `GMemoryOutputStreamPrivate` instance.
///

public struct MemoryOutputStreamPrivateRef: MemoryOutputStreamPrivateProtocol {
        /// Untyped pointer to the underlying `GMemoryOutputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MemoryOutputStreamPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GMemoryOutputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MemoryOutputStreamPrivateProtocol`
    init<T: MemoryOutputStreamPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MemoryOutputStreamPrivate` type acts as an owner of an underlying `GMemoryOutputStreamPrivate` instance.
/// It provides the methods that can operate on this data type through `MemoryOutputStreamPrivateProtocol` conformance.
/// Use `MemoryOutputStreamPrivate` as a strong reference or owner of a `GMemoryOutputStreamPrivate` instance.
///

open class MemoryOutputStreamPrivate: MemoryOutputStreamPrivateProtocol {
        /// Untyped pointer to the underlying `GMemoryOutputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemoryOutputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GMemoryOutputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GMemoryOutputStreamPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `MemoryOutputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GMemoryOutputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GMemoryOutputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `MemoryOutputStreamPrivateProtocol`
    /// `GMemoryOutputStreamPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `MemoryOutputStreamPrivateProtocol`
    public init<T: MemoryOutputStreamPrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GMemoryOutputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GMemoryOutputStreamPrivate`.
    deinit {
        // no reference counting for GMemoryOutputStreamPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GMemoryOutputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamPrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GMemoryOutputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GMemoryOutputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GMemoryOutputStreamPrivate, cannot ref(cast(_ptr))
    }



}

// MARK: no MemoryOutputStreamPrivate properties

// MARK: no MemoryOutputStreamPrivate signals


// MARK: MemoryOutputStreamPrivate Record: MemoryOutputStreamPrivateProtocol extension (methods and fields)
public extension MemoryOutputStreamPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMemoryOutputStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GMemoryOutputStreamPrivate> { return ptr.assumingMemoryBound(to: GMemoryOutputStreamPrivate.self) }



}



// MARK: - MenuAttributeIterClass Record

/// The `MenuAttributeIterClassProtocol` protocol exposes the methods and properties of an underlying `GMenuAttributeIterClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuAttributeIterClass`.
/// Alternatively, use `MenuAttributeIterClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MenuAttributeIterClassProtocol {
        /// Untyped pointer to the underlying `GMenuAttributeIterClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GMenuAttributeIterClass` instance.
    var _ptr: UnsafeMutablePointer<GMenuAttributeIterClass> { get }
}

/// The `MenuAttributeIterClassRef` type acts as a lightweight Swift reference to an underlying `GMenuAttributeIterClass` instance.
/// It exposes methods that can operate on this data type through `MenuAttributeIterClassProtocol` conformance.
/// Use `MenuAttributeIterClassRef` only as an `unowned` reference to an existing `GMenuAttributeIterClass` instance.
///

public struct MenuAttributeIterClassRef: MenuAttributeIterClassProtocol {
        /// Untyped pointer to the underlying `GMenuAttributeIterClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MenuAttributeIterClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GMenuAttributeIterClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MenuAttributeIterClassProtocol`
    init<T: MenuAttributeIterClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MenuAttributeIterClass` type acts as an owner of an underlying `GMenuAttributeIterClass` instance.
/// It provides the methods that can operate on this data type through `MenuAttributeIterClassProtocol` conformance.
/// Use `MenuAttributeIterClass` as a strong reference or owner of a `GMenuAttributeIterClass` instance.
///

open class MenuAttributeIterClass: MenuAttributeIterClassProtocol {
        /// Untyped pointer to the underlying `GMenuAttributeIterClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuAttributeIterClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GMenuAttributeIterClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GMenuAttributeIterClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `MenuAttributeIterClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GMenuAttributeIterClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GMenuAttributeIterClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `MenuAttributeIterClassProtocol`
    /// `GMenuAttributeIterClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `MenuAttributeIterClassProtocol`
    public init<T: MenuAttributeIterClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GMenuAttributeIterClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GMenuAttributeIterClass`.
    deinit {
        // no reference counting for GMenuAttributeIterClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GMenuAttributeIterClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GMenuAttributeIterClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GMenuAttributeIterClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GMenuAttributeIterClass, cannot ref(cast(_ptr))
    }



}

// MARK: no MenuAttributeIterClass properties

// MARK: no MenuAttributeIterClass signals


// MARK: MenuAttributeIterClass Record: MenuAttributeIterClassProtocol extension (methods and fields)
public extension MenuAttributeIterClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMenuAttributeIterClass` instance.
    var _ptr: UnsafeMutablePointer<GMenuAttributeIterClass> { return ptr.assumingMemoryBound(to: GMenuAttributeIterClass.self) }


    var parentClass: GObjectClass {
        get {
            let rv: GObjectClass = cast(_ptr.pointee.parent_class)
            return rv
        }
    }

    // var getNext is unavailable because get_next is void

}



// MARK: - MenuAttributeIterPrivate Record

/// The `MenuAttributeIterPrivateProtocol` protocol exposes the methods and properties of an underlying `GMenuAttributeIterPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuAttributeIterPrivate`.
/// Alternatively, use `MenuAttributeIterPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MenuAttributeIterPrivateProtocol {
        /// Untyped pointer to the underlying `GMenuAttributeIterPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GMenuAttributeIterPrivate` instance.
    var _ptr: UnsafeMutablePointer<GMenuAttributeIterPrivate> { get }
}

/// The `MenuAttributeIterPrivateRef` type acts as a lightweight Swift reference to an underlying `GMenuAttributeIterPrivate` instance.
/// It exposes methods that can operate on this data type through `MenuAttributeIterPrivateProtocol` conformance.
/// Use `MenuAttributeIterPrivateRef` only as an `unowned` reference to an existing `GMenuAttributeIterPrivate` instance.
///

public struct MenuAttributeIterPrivateRef: MenuAttributeIterPrivateProtocol {
        /// Untyped pointer to the underlying `GMenuAttributeIterPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MenuAttributeIterPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GMenuAttributeIterPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MenuAttributeIterPrivateProtocol`
    init<T: MenuAttributeIterPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MenuAttributeIterPrivate` type acts as an owner of an underlying `GMenuAttributeIterPrivate` instance.
/// It provides the methods that can operate on this data type through `MenuAttributeIterPrivateProtocol` conformance.
/// Use `MenuAttributeIterPrivate` as a strong reference or owner of a `GMenuAttributeIterPrivate` instance.
///

open class MenuAttributeIterPrivate: MenuAttributeIterPrivateProtocol {
        /// Untyped pointer to the underlying `GMenuAttributeIterPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuAttributeIterPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GMenuAttributeIterPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GMenuAttributeIterPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `MenuAttributeIterPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GMenuAttributeIterPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GMenuAttributeIterPrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `MenuAttributeIterPrivateProtocol`
    /// `GMenuAttributeIterPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `MenuAttributeIterPrivateProtocol`
    public init<T: MenuAttributeIterPrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GMenuAttributeIterPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GMenuAttributeIterPrivate`.
    deinit {
        // no reference counting for GMenuAttributeIterPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GMenuAttributeIterPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterPrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GMenuAttributeIterPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GMenuAttributeIterPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GMenuAttributeIterPrivate, cannot ref(cast(_ptr))
    }



}

// MARK: no MenuAttributeIterPrivate properties

// MARK: no MenuAttributeIterPrivate signals


// MARK: MenuAttributeIterPrivate Record: MenuAttributeIterPrivateProtocol extension (methods and fields)
public extension MenuAttributeIterPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMenuAttributeIterPrivate` instance.
    var _ptr: UnsafeMutablePointer<GMenuAttributeIterPrivate> { return ptr.assumingMemoryBound(to: GMenuAttributeIterPrivate.self) }



}



// MARK: - MenuLinkIterClass Record

/// The `MenuLinkIterClassProtocol` protocol exposes the methods and properties of an underlying `GMenuLinkIterClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuLinkIterClass`.
/// Alternatively, use `MenuLinkIterClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MenuLinkIterClassProtocol {
        /// Untyped pointer to the underlying `GMenuLinkIterClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GMenuLinkIterClass` instance.
    var _ptr: UnsafeMutablePointer<GMenuLinkIterClass> { get }
}

/// The `MenuLinkIterClassRef` type acts as a lightweight Swift reference to an underlying `GMenuLinkIterClass` instance.
/// It exposes methods that can operate on this data type through `MenuLinkIterClassProtocol` conformance.
/// Use `MenuLinkIterClassRef` only as an `unowned` reference to an existing `GMenuLinkIterClass` instance.
///

public struct MenuLinkIterClassRef: MenuLinkIterClassProtocol {
        /// Untyped pointer to the underlying `GMenuLinkIterClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MenuLinkIterClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GMenuLinkIterClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MenuLinkIterClassProtocol`
    init<T: MenuLinkIterClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MenuLinkIterClass` type acts as an owner of an underlying `GMenuLinkIterClass` instance.
/// It provides the methods that can operate on this data type through `MenuLinkIterClassProtocol` conformance.
/// Use `MenuLinkIterClass` as a strong reference or owner of a `GMenuLinkIterClass` instance.
///

open class MenuLinkIterClass: MenuLinkIterClassProtocol {
        /// Untyped pointer to the underlying `GMenuLinkIterClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuLinkIterClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GMenuLinkIterClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GMenuLinkIterClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `MenuLinkIterClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GMenuLinkIterClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GMenuLinkIterClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `MenuLinkIterClassProtocol`
    /// `GMenuLinkIterClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `MenuLinkIterClassProtocol`
    public init<T: MenuLinkIterClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GMenuLinkIterClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GMenuLinkIterClass`.
    deinit {
        // no reference counting for GMenuLinkIterClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GMenuLinkIterClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GMenuLinkIterClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GMenuLinkIterClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GMenuLinkIterClass, cannot ref(cast(_ptr))
    }



}

// MARK: no MenuLinkIterClass properties

// MARK: no MenuLinkIterClass signals


// MARK: MenuLinkIterClass Record: MenuLinkIterClassProtocol extension (methods and fields)
public extension MenuLinkIterClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMenuLinkIterClass` instance.
    var _ptr: UnsafeMutablePointer<GMenuLinkIterClass> { return ptr.assumingMemoryBound(to: GMenuLinkIterClass.self) }


    var parentClass: GObjectClass {
        get {
            let rv: GObjectClass = cast(_ptr.pointee.parent_class)
            return rv
        }
    }

    // var getNext is unavailable because get_next is void

}



// MARK: - MenuLinkIterPrivate Record

/// The `MenuLinkIterPrivateProtocol` protocol exposes the methods and properties of an underlying `GMenuLinkIterPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuLinkIterPrivate`.
/// Alternatively, use `MenuLinkIterPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MenuLinkIterPrivateProtocol {
        /// Untyped pointer to the underlying `GMenuLinkIterPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GMenuLinkIterPrivate` instance.
    var _ptr: UnsafeMutablePointer<GMenuLinkIterPrivate> { get }
}

/// The `MenuLinkIterPrivateRef` type acts as a lightweight Swift reference to an underlying `GMenuLinkIterPrivate` instance.
/// It exposes methods that can operate on this data type through `MenuLinkIterPrivateProtocol` conformance.
/// Use `MenuLinkIterPrivateRef` only as an `unowned` reference to an existing `GMenuLinkIterPrivate` instance.
///

public struct MenuLinkIterPrivateRef: MenuLinkIterPrivateProtocol {
        /// Untyped pointer to the underlying `GMenuLinkIterPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MenuLinkIterPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GMenuLinkIterPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MenuLinkIterPrivateProtocol`
    init<T: MenuLinkIterPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MenuLinkIterPrivate` type acts as an owner of an underlying `GMenuLinkIterPrivate` instance.
/// It provides the methods that can operate on this data type through `MenuLinkIterPrivateProtocol` conformance.
/// Use `MenuLinkIterPrivate` as a strong reference or owner of a `GMenuLinkIterPrivate` instance.
///

open class MenuLinkIterPrivate: MenuLinkIterPrivateProtocol {
        /// Untyped pointer to the underlying `GMenuLinkIterPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuLinkIterPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GMenuLinkIterPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GMenuLinkIterPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `MenuLinkIterPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GMenuLinkIterPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GMenuLinkIterPrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `MenuLinkIterPrivateProtocol`
    /// `GMenuLinkIterPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `MenuLinkIterPrivateProtocol`
    public init<T: MenuLinkIterPrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GMenuLinkIterPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GMenuLinkIterPrivate`.
    deinit {
        // no reference counting for GMenuLinkIterPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GMenuLinkIterPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterPrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GMenuLinkIterPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GMenuLinkIterPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GMenuLinkIterPrivate, cannot ref(cast(_ptr))
    }



}

// MARK: no MenuLinkIterPrivate properties

// MARK: no MenuLinkIterPrivate signals


// MARK: MenuLinkIterPrivate Record: MenuLinkIterPrivateProtocol extension (methods and fields)
public extension MenuLinkIterPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMenuLinkIterPrivate` instance.
    var _ptr: UnsafeMutablePointer<GMenuLinkIterPrivate> { return ptr.assumingMemoryBound(to: GMenuLinkIterPrivate.self) }



}



// MARK: - MenuModelClass Record

/// The `MenuModelClassProtocol` protocol exposes the methods and properties of an underlying `GMenuModelClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuModelClass`.
/// Alternatively, use `MenuModelClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MenuModelClassProtocol {
        /// Untyped pointer to the underlying `GMenuModelClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GMenuModelClass` instance.
    var _ptr: UnsafeMutablePointer<GMenuModelClass> { get }
}

/// The `MenuModelClassRef` type acts as a lightweight Swift reference to an underlying `GMenuModelClass` instance.
/// It exposes methods that can operate on this data type through `MenuModelClassProtocol` conformance.
/// Use `MenuModelClassRef` only as an `unowned` reference to an existing `GMenuModelClass` instance.
///

public struct MenuModelClassRef: MenuModelClassProtocol {
        /// Untyped pointer to the underlying `GMenuModelClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MenuModelClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GMenuModelClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MenuModelClassProtocol`
    init<T: MenuModelClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MenuModelClass` type acts as an owner of an underlying `GMenuModelClass` instance.
/// It provides the methods that can operate on this data type through `MenuModelClassProtocol` conformance.
/// Use `MenuModelClass` as a strong reference or owner of a `GMenuModelClass` instance.
///

open class MenuModelClass: MenuModelClassProtocol {
        /// Untyped pointer to the underlying `GMenuModelClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuModelClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GMenuModelClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GMenuModelClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `MenuModelClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GMenuModelClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GMenuModelClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `MenuModelClassProtocol`
    /// `GMenuModelClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `MenuModelClassProtocol`
    public init<T: MenuModelClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GMenuModelClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GMenuModelClass`.
    deinit {
        // no reference counting for GMenuModelClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GMenuModelClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GMenuModelClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GMenuModelClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GMenuModelClass, cannot ref(cast(_ptr))
    }



}

// MARK: no MenuModelClass properties

// MARK: no MenuModelClass signals


// MARK: MenuModelClass Record: MenuModelClassProtocol extension (methods and fields)
public extension MenuModelClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMenuModelClass` instance.
    var _ptr: UnsafeMutablePointer<GMenuModelClass> { return ptr.assumingMemoryBound(to: GMenuModelClass.self) }


    var parentClass: GObjectClass {
        get {
            let rv: GObjectClass = cast(_ptr.pointee.parent_class)
            return rv
        }
    }

    // var isMutable is unavailable because is_mutable is void

    // var getNItems is unavailable because get_n_items is void

    // var getItemAttributes is unavailable because get_item_attributes is void

    // var iterateItemAttributes is unavailable because iterate_item_attributes is void

    // var getItemAttributeValue is unavailable because get_item_attribute_value is void

    // var getItemLinks is unavailable because get_item_links is void

    // var iterateItemLinks is unavailable because iterate_item_links is void

    // var getItemLink is unavailable because get_item_link is void

}



// MARK: - MenuModelPrivate Record

/// The `MenuModelPrivateProtocol` protocol exposes the methods and properties of an underlying `GMenuModelPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuModelPrivate`.
/// Alternatively, use `MenuModelPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MenuModelPrivateProtocol {
        /// Untyped pointer to the underlying `GMenuModelPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GMenuModelPrivate` instance.
    var _ptr: UnsafeMutablePointer<GMenuModelPrivate> { get }
}

/// The `MenuModelPrivateRef` type acts as a lightweight Swift reference to an underlying `GMenuModelPrivate` instance.
/// It exposes methods that can operate on this data type through `MenuModelPrivateProtocol` conformance.
/// Use `MenuModelPrivateRef` only as an `unowned` reference to an existing `GMenuModelPrivate` instance.
///

public struct MenuModelPrivateRef: MenuModelPrivateProtocol {
        /// Untyped pointer to the underlying `GMenuModelPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MenuModelPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GMenuModelPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MenuModelPrivateProtocol`
    init<T: MenuModelPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MenuModelPrivate` type acts as an owner of an underlying `GMenuModelPrivate` instance.
/// It provides the methods that can operate on this data type through `MenuModelPrivateProtocol` conformance.
/// Use `MenuModelPrivate` as a strong reference or owner of a `GMenuModelPrivate` instance.
///

open class MenuModelPrivate: MenuModelPrivateProtocol {
        /// Untyped pointer to the underlying `GMenuModelPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuModelPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GMenuModelPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GMenuModelPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `MenuModelPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GMenuModelPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GMenuModelPrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `MenuModelPrivateProtocol`
    /// `GMenuModelPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `MenuModelPrivateProtocol`
    public init<T: MenuModelPrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GMenuModelPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GMenuModelPrivate`.
    deinit {
        // no reference counting for GMenuModelPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GMenuModelPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelPrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GMenuModelPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GMenuModelPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GMenuModelPrivate, cannot ref(cast(_ptr))
    }



}

// MARK: no MenuModelPrivate properties

// MARK: no MenuModelPrivate signals


// MARK: MenuModelPrivate Record: MenuModelPrivateProtocol extension (methods and fields)
public extension MenuModelPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMenuModelPrivate` instance.
    var _ptr: UnsafeMutablePointer<GMenuModelPrivate> { return ptr.assumingMemoryBound(to: GMenuModelPrivate.self) }



}



// MARK: - MountIface Record

/// The `MountIfaceProtocol` protocol exposes the methods and properties of an underlying `GMountIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MountIface`.
/// Alternatively, use `MountIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Interface for implementing operations for mounts.
public protocol MountIfaceProtocol {
        /// Untyped pointer to the underlying `GMountIface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GMountIface` instance.
    var _ptr: UnsafeMutablePointer<GMountIface> { get }
}

/// The `MountIfaceRef` type acts as a lightweight Swift reference to an underlying `GMountIface` instance.
/// It exposes methods that can operate on this data type through `MountIfaceProtocol` conformance.
/// Use `MountIfaceRef` only as an `unowned` reference to an existing `GMountIface` instance.
///
/// Interface for implementing operations for mounts.
public struct MountIfaceRef: MountIfaceProtocol {
        /// Untyped pointer to the underlying `GMountIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MountIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GMountIface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MountIfaceProtocol`
    init<T: MountIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountIfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountIfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountIfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountIfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountIfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MountIface` type acts as an owner of an underlying `GMountIface` instance.
/// It provides the methods that can operate on this data type through `MountIfaceProtocol` conformance.
/// Use `MountIface` as a strong reference or owner of a `GMountIface` instance.
///
/// Interface for implementing operations for mounts.
open class MountIface: MountIfaceProtocol {
        /// Untyped pointer to the underlying `GMountIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MountIface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GMountIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GMountIface` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `MountIface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GMountIface>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GMountIface, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `MountIfaceProtocol`
    /// `GMountIface` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `MountIfaceProtocol`
    public init<T: MountIfaceProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GMountIface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GMountIface`.
    deinit {
        // no reference counting for GMountIface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountIfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountIfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GMountIface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountIfaceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountIfaceProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GMountIface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountIfaceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountIfaceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GMountIface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountIfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountIfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GMountIface, cannot ref(cast(_ptr))
    }



}

// MARK: no MountIface properties

// MARK: no MountIface signals


// MARK: MountIface Record: MountIfaceProtocol extension (methods and fields)
public extension MountIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMountIface` instance.
    var _ptr: UnsafeMutablePointer<GMountIface> { return ptr.assumingMemoryBound(to: GMountIface.self) }


    /// The parent interface.
    var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv: GTypeInterface = cast(_ptr.pointee.g_iface)
            return rv
        }
    }

    // var changed is unavailable because changed is void

    // var unmounted is unavailable because unmounted is void

    // var getRoot is unavailable because get_root is void

    // var getName is unavailable because get_name is void

    // var getIcon is unavailable because get_icon is void

    // var getUuid is unavailable because get_uuid is void

    // var getVolume is unavailable because get_volume is void

    // var getDrive is unavailable because get_drive is void

    // var canUnmount is unavailable because can_unmount is void

    // var canEject is unavailable because can_eject is void

    // var unmount is unavailable because unmount is void

    // var unmountFinish is unavailable because unmount_finish is void

    // var eject is unavailable because eject is void

    // var ejectFinish is unavailable because eject_finish is void

    // var remount is unavailable because remount is void

    // var remountFinish is unavailable because remount_finish is void

    // var guessContentType is unavailable because guess_content_type is void

    // var guessContentTypeFinish is unavailable because guess_content_type_finish is void

    // var guessContentTypeSync is unavailable because guess_content_type_sync is void

    // var preUnmount is unavailable because pre_unmount is void

    // var unmountWithOperation is unavailable because unmount_with_operation is void

    // var unmountWithOperationFinish is unavailable because unmount_with_operation_finish is void

    // var ejectWithOperation is unavailable because eject_with_operation is void

    // var ejectWithOperationFinish is unavailable because eject_with_operation_finish is void

    // var getDefaultLocation is unavailable because get_default_location is void

    // var getSortKey is unavailable because get_sort_key is void

    // var getSymbolicIcon is unavailable because get_symbolic_icon is void

}



// MARK: - MountOperationClass Record

/// The `MountOperationClassProtocol` protocol exposes the methods and properties of an underlying `GMountOperationClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MountOperationClass`.
/// Alternatively, use `MountOperationClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MountOperationClassProtocol {
        /// Untyped pointer to the underlying `GMountOperationClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GMountOperationClass` instance.
    var _ptr: UnsafeMutablePointer<GMountOperationClass> { get }
}

/// The `MountOperationClassRef` type acts as a lightweight Swift reference to an underlying `GMountOperationClass` instance.
/// It exposes methods that can operate on this data type through `MountOperationClassProtocol` conformance.
/// Use `MountOperationClassRef` only as an `unowned` reference to an existing `GMountOperationClass` instance.
///

public struct MountOperationClassRef: MountOperationClassProtocol {
        /// Untyped pointer to the underlying `GMountOperationClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MountOperationClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GMountOperationClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MountOperationClassProtocol`
    init<T: MountOperationClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MountOperationClass` type acts as an owner of an underlying `GMountOperationClass` instance.
/// It provides the methods that can operate on this data type through `MountOperationClassProtocol` conformance.
/// Use `MountOperationClass` as a strong reference or owner of a `GMountOperationClass` instance.
///

open class MountOperationClass: MountOperationClassProtocol {
        /// Untyped pointer to the underlying `GMountOperationClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MountOperationClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GMountOperationClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GMountOperationClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `MountOperationClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GMountOperationClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GMountOperationClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `MountOperationClassProtocol`
    /// `GMountOperationClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `MountOperationClassProtocol`
    public init<T: MountOperationClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GMountOperationClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GMountOperationClass`.
    deinit {
        // no reference counting for GMountOperationClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GMountOperationClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GMountOperationClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GMountOperationClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GMountOperationClass, cannot ref(cast(_ptr))
    }



}

// MARK: no MountOperationClass properties

// MARK: no MountOperationClass signals


// MARK: MountOperationClass Record: MountOperationClassProtocol extension (methods and fields)
public extension MountOperationClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMountOperationClass` instance.
    var _ptr: UnsafeMutablePointer<GMountOperationClass> { return ptr.assumingMemoryBound(to: GMountOperationClass.self) }


    var parentClass: GObjectClass {
        get {
            let rv: GObjectClass = cast(_ptr.pointee.parent_class)
            return rv
        }
    }

    // var askPassword is unavailable because ask_password is void

    // var askQuestion is unavailable because ask_question is void

    // var reply is unavailable because reply is void

    // var aborted is unavailable because aborted is void

    // var showProcesses is unavailable because show_processes is void

    // var showUnmountProgress is unavailable because show_unmount_progress is void

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

    // var GReserved4 is unavailable because _g_reserved4 is void

    // var GReserved5 is unavailable because _g_reserved5 is void

    // var GReserved6 is unavailable because _g_reserved6 is void

    // var GReserved7 is unavailable because _g_reserved7 is void

    // var GReserved8 is unavailable because _g_reserved8 is void

    // var GReserved9 is unavailable because _g_reserved9 is void

}



// MARK: - MountOperationPrivate Record

/// The `MountOperationPrivateProtocol` protocol exposes the methods and properties of an underlying `GMountOperationPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MountOperationPrivate`.
/// Alternatively, use `MountOperationPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MountOperationPrivateProtocol {
        /// Untyped pointer to the underlying `GMountOperationPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GMountOperationPrivate` instance.
    var _ptr: UnsafeMutablePointer<GMountOperationPrivate> { get }
}

/// The `MountOperationPrivateRef` type acts as a lightweight Swift reference to an underlying `GMountOperationPrivate` instance.
/// It exposes methods that can operate on this data type through `MountOperationPrivateProtocol` conformance.
/// Use `MountOperationPrivateRef` only as an `unowned` reference to an existing `GMountOperationPrivate` instance.
///

public struct MountOperationPrivateRef: MountOperationPrivateProtocol {
        /// Untyped pointer to the underlying `GMountOperationPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MountOperationPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GMountOperationPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MountOperationPrivateProtocol`
    init<T: MountOperationPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MountOperationPrivate` type acts as an owner of an underlying `GMountOperationPrivate` instance.
/// It provides the methods that can operate on this data type through `MountOperationPrivateProtocol` conformance.
/// Use `MountOperationPrivate` as a strong reference or owner of a `GMountOperationPrivate` instance.
///

open class MountOperationPrivate: MountOperationPrivateProtocol {
        /// Untyped pointer to the underlying `GMountOperationPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MountOperationPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GMountOperationPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GMountOperationPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `MountOperationPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GMountOperationPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GMountOperationPrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `MountOperationPrivateProtocol`
    /// `GMountOperationPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `MountOperationPrivateProtocol`
    public init<T: MountOperationPrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GMountOperationPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GMountOperationPrivate`.
    deinit {
        // no reference counting for GMountOperationPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GMountOperationPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationPrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GMountOperationPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GMountOperationPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GMountOperationPrivate, cannot ref(cast(_ptr))
    }



}

// MARK: no MountOperationPrivate properties

// MARK: no MountOperationPrivate signals


// MARK: MountOperationPrivate Record: MountOperationPrivateProtocol extension (methods and fields)
public extension MountOperationPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMountOperationPrivate` instance.
    var _ptr: UnsafeMutablePointer<GMountOperationPrivate> { return ptr.assumingMemoryBound(to: GMountOperationPrivate.self) }



}



// MARK: - NativeSocketAddressClass Record

/// The `NativeSocketAddressClassProtocol` protocol exposes the methods and properties of an underlying `GNativeSocketAddressClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NativeSocketAddressClass`.
/// Alternatively, use `NativeSocketAddressClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol NativeSocketAddressClassProtocol {
        /// Untyped pointer to the underlying `GNativeSocketAddressClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GNativeSocketAddressClass` instance.
    var _ptr: UnsafeMutablePointer<GNativeSocketAddressClass> { get }
}

/// The `NativeSocketAddressClassRef` type acts as a lightweight Swift reference to an underlying `GNativeSocketAddressClass` instance.
/// It exposes methods that can operate on this data type through `NativeSocketAddressClassProtocol` conformance.
/// Use `NativeSocketAddressClassRef` only as an `unowned` reference to an existing `GNativeSocketAddressClass` instance.
///

public struct NativeSocketAddressClassRef: NativeSocketAddressClassProtocol {
        /// Untyped pointer to the underlying `GNativeSocketAddressClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension NativeSocketAddressClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GNativeSocketAddressClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `NativeSocketAddressClassProtocol`
    init<T: NativeSocketAddressClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `NativeSocketAddressClass` type acts as an owner of an underlying `GNativeSocketAddressClass` instance.
/// It provides the methods that can operate on this data type through `NativeSocketAddressClassProtocol` conformance.
/// Use `NativeSocketAddressClass` as a strong reference or owner of a `GNativeSocketAddressClass` instance.
///

open class NativeSocketAddressClass: NativeSocketAddressClassProtocol {
        /// Untyped pointer to the underlying `GNativeSocketAddressClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NativeSocketAddressClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GNativeSocketAddressClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GNativeSocketAddressClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `NativeSocketAddressClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GNativeSocketAddressClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GNativeSocketAddressClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `NativeSocketAddressClassProtocol`
    /// `GNativeSocketAddressClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `NativeSocketAddressClassProtocol`
    public init<T: NativeSocketAddressClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GNativeSocketAddressClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GNativeSocketAddressClass`.
    deinit {
        // no reference counting for GNativeSocketAddressClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GNativeSocketAddressClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GNativeSocketAddressClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GNativeSocketAddressClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GNativeSocketAddressClass, cannot ref(cast(_ptr))
    }



}

// MARK: no NativeSocketAddressClass properties

// MARK: no NativeSocketAddressClass signals


// MARK: NativeSocketAddressClass Record: NativeSocketAddressClassProtocol extension (methods and fields)
public extension NativeSocketAddressClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GNativeSocketAddressClass` instance.
    var _ptr: UnsafeMutablePointer<GNativeSocketAddressClass> { return ptr.assumingMemoryBound(to: GNativeSocketAddressClass.self) }


    var parentClass: GSocketAddressClass {
        get {
            let rv: GSocketAddressClass = cast(_ptr.pointee.parent_class)
            return rv
        }
    }

}



