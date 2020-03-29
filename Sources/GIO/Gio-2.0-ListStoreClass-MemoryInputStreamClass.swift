import CGLib
import GLib
import GLibObject

// MARK: - ListStoreClass Record

/// The `ListStoreClassProtocol` protocol exposes the methods and properties of an underlying `GListStoreClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListStoreClass`.
/// Alternatively, use `ListStoreClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ListStoreClassProtocol {
    /// Untyped pointer to the underlying `GListStoreClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GListStoreClass` instance.
    var _ptr: UnsafeMutablePointer<GListStoreClass> { get }
}

/// The `ListStoreClassRef` type acts as a lightweight Swift reference to an underlying `GListStoreClass` instance.
/// It exposes methods that can operate on this data type through `ListStoreClassProtocol` conformance.
/// Use `ListStoreClassRef` only as an `unowned` reference to an existing `GListStoreClass` instance.
///

public struct ListStoreClassRef: ListStoreClassProtocol {
    /// Untyped pointer to the underlying `GListStoreClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ListStoreClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GListStoreClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ListStoreClassProtocol`
    init<T: ListStoreClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ListStoreClass` type acts as an owner of an underlying `GListStoreClass` instance.
/// It provides the methods that can operate on this data type through `ListStoreClassProtocol` conformance.
/// Use `ListStoreClass` as a strong reference or owner of a `GListStoreClass` instance.
///

open class ListStoreClass: ListStoreClassProtocol {
    /// Untyped pointer to the underlying `GListStoreClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ListStoreClass` instance.
    public init(_ op: UnsafeMutablePointer<GListStoreClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ListStoreClassProtocol`
    /// `GListStoreClass` does not allow reference counting.
    public convenience init<T: ListStoreClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GListStoreClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GListStoreClass`.
    deinit {
        // no reference counting for GListStoreClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GListStoreClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GListStoreClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GListStoreClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GListStoreClass>(opaquePointer))
    }



}

// MARK: - no ListStoreClass properties

// MARK: - no signals


public extension ListStoreClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GListStoreClass` instance.
    var _ptr: UnsafeMutablePointer<GListStoreClass> { return ptr.assumingMemoryBound(to: GListStoreClass.self) }

}



// MARK: - LoadableIconIface Record

/// The `LoadableIconIfaceProtocol` protocol exposes the methods and properties of an underlying `GLoadableIconIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LoadableIconIface`.
/// Alternatively, use `LoadableIconIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Interface for icons that can be loaded as a stream.
public protocol LoadableIconIfaceProtocol {
    /// Untyped pointer to the underlying `GLoadableIconIface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GLoadableIconIface` instance.
    var _ptr: UnsafeMutablePointer<GLoadableIconIface> { get }
}

/// The `LoadableIconIfaceRef` type acts as a lightweight Swift reference to an underlying `GLoadableIconIface` instance.
/// It exposes methods that can operate on this data type through `LoadableIconIfaceProtocol` conformance.
/// Use `LoadableIconIfaceRef` only as an `unowned` reference to an existing `GLoadableIconIface` instance.
///
/// Interface for icons that can be loaded as a stream.
public struct LoadableIconIfaceRef: LoadableIconIfaceProtocol {
    /// Untyped pointer to the underlying `GLoadableIconIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension LoadableIconIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GLoadableIconIface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LoadableIconIfaceProtocol`
    init<T: LoadableIconIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconIfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconIfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconIfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconIfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconIfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LoadableIconIface` type acts as an owner of an underlying `GLoadableIconIface` instance.
/// It provides the methods that can operate on this data type through `LoadableIconIfaceProtocol` conformance.
/// Use `LoadableIconIface` as a strong reference or owner of a `GLoadableIconIface` instance.
///
/// Interface for icons that can be loaded as a stream.
open class LoadableIconIface: LoadableIconIfaceProtocol {
    /// Untyped pointer to the underlying `GLoadableIconIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `LoadableIconIface` instance.
    public init(_ op: UnsafeMutablePointer<GLoadableIconIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `LoadableIconIfaceProtocol`
    /// `GLoadableIconIface` does not allow reference counting.
    public convenience init<T: LoadableIconIfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GLoadableIconIface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GLoadableIconIface`.
    deinit {
        // no reference counting for GLoadableIconIface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconIfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GLoadableIconIface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconIfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GLoadableIconIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconIfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GLoadableIconIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconIfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GLoadableIconIface>(opaquePointer))
    }



}

// MARK: - no LoadableIconIface properties

// MARK: - no signals


public extension LoadableIconIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GLoadableIconIface` instance.
    var _ptr: UnsafeMutablePointer<GLoadableIconIface> { return ptr.assumingMemoryBound(to: GLoadableIconIface.self) }

}



// MARK: - MemoryInputStreamClass Record

/// The `MemoryInputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GMemoryInputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MemoryInputStreamClass`.
/// Alternatively, use `MemoryInputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MemoryInputStreamClassProtocol {
    /// Untyped pointer to the underlying `GMemoryInputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GMemoryInputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GMemoryInputStreamClass> { get }
}

/// The `MemoryInputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GMemoryInputStreamClass` instance.
/// It exposes methods that can operate on this data type through `MemoryInputStreamClassProtocol` conformance.
/// Use `MemoryInputStreamClassRef` only as an `unowned` reference to an existing `GMemoryInputStreamClass` instance.
///

public struct MemoryInputStreamClassRef: MemoryInputStreamClassProtocol {
    /// Untyped pointer to the underlying `GMemoryInputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MemoryInputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GMemoryInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MemoryInputStreamClassProtocol`
    init<T: MemoryInputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MemoryInputStreamClass` type acts as an owner of an underlying `GMemoryInputStreamClass` instance.
/// It provides the methods that can operate on this data type through `MemoryInputStreamClassProtocol` conformance.
/// Use `MemoryInputStreamClass` as a strong reference or owner of a `GMemoryInputStreamClass` instance.
///

open class MemoryInputStreamClass: MemoryInputStreamClassProtocol {
    /// Untyped pointer to the underlying `GMemoryInputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `MemoryInputStreamClass` instance.
    public init(_ op: UnsafeMutablePointer<GMemoryInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MemoryInputStreamClassProtocol`
    /// `GMemoryInputStreamClass` does not allow reference counting.
    public convenience init<T: MemoryInputStreamClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GMemoryInputStreamClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GMemoryInputStreamClass`.
    deinit {
        // no reference counting for GMemoryInputStreamClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GMemoryInputStreamClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GMemoryInputStreamClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GMemoryInputStreamClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GMemoryInputStreamClass>(opaquePointer))
    }



}

// MARK: - no MemoryInputStreamClass properties

// MARK: - no signals


public extension MemoryInputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMemoryInputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GMemoryInputStreamClass> { return ptr.assumingMemoryBound(to: GMemoryInputStreamClass.self) }

}


