import CGLib
import GLib
import GLibObject

// MARK: - CancellablePrivate Record

/// The `CancellablePrivateProtocol` protocol exposes the methods and properties of an underlying `GCancellablePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CancellablePrivate`.
/// Alternatively, use `CancellablePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CancellablePrivateProtocol {
    /// Untyped pointer to the underlying `GCancellablePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GCancellablePrivate` instance.
    var _ptr: UnsafeMutablePointer<GCancellablePrivate> { get }
}

/// The `CancellablePrivateRef` type acts as a lightweight Swift reference to an underlying `GCancellablePrivate` instance.
/// It exposes methods that can operate on this data type through `CancellablePrivateProtocol` conformance.
/// Use `CancellablePrivateRef` only as an `unowned` reference to an existing `GCancellablePrivate` instance.
///

public struct CancellablePrivateRef: CancellablePrivateProtocol {
    /// Untyped pointer to the underlying `GCancellablePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CancellablePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GCancellablePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CancellablePrivateProtocol`
    init<T: CancellablePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellablePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellablePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellablePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellablePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellablePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CancellablePrivate` type acts as an owner of an underlying `GCancellablePrivate` instance.
/// It provides the methods that can operate on this data type through `CancellablePrivateProtocol` conformance.
/// Use `CancellablePrivate` as a strong reference or owner of a `GCancellablePrivate` instance.
///

open class CancellablePrivate: CancellablePrivateProtocol {
    /// Untyped pointer to the underlying `GCancellablePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CancellablePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GCancellablePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CancellablePrivateProtocol`
    /// `GCancellablePrivate` does not allow reference counting.
    public convenience init<T: CancellablePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GCancellablePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GCancellablePrivate`.
    deinit {
        // no reference counting for GCancellablePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellablePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GCancellablePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellablePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GCancellablePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellablePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GCancellablePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellablePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GCancellablePrivate>(opaquePointer))
    }



}

// MARK: - no CancellablePrivate properties

// MARK: - no signals


public extension CancellablePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GCancellablePrivate` instance.
    var _ptr: UnsafeMutablePointer<GCancellablePrivate> { return ptr.assumingMemoryBound(to: GCancellablePrivate.self) }

}



// MARK: - CharsetConverterClass Record

/// The `CharsetConverterClassProtocol` protocol exposes the methods and properties of an underlying `GCharsetConverterClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CharsetConverterClass`.
/// Alternatively, use `CharsetConverterClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CharsetConverterClassProtocol {
    /// Untyped pointer to the underlying `GCharsetConverterClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GCharsetConverterClass` instance.
    var _ptr: UnsafeMutablePointer<GCharsetConverterClass> { get }
}

/// The `CharsetConverterClassRef` type acts as a lightweight Swift reference to an underlying `GCharsetConverterClass` instance.
/// It exposes methods that can operate on this data type through `CharsetConverterClassProtocol` conformance.
/// Use `CharsetConverterClassRef` only as an `unowned` reference to an existing `GCharsetConverterClass` instance.
///

public struct CharsetConverterClassRef: CharsetConverterClassProtocol {
    /// Untyped pointer to the underlying `GCharsetConverterClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CharsetConverterClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GCharsetConverterClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CharsetConverterClassProtocol`
    init<T: CharsetConverterClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CharsetConverterClass` type acts as an owner of an underlying `GCharsetConverterClass` instance.
/// It provides the methods that can operate on this data type through `CharsetConverterClassProtocol` conformance.
/// Use `CharsetConverterClass` as a strong reference or owner of a `GCharsetConverterClass` instance.
///

open class CharsetConverterClass: CharsetConverterClassProtocol {
    /// Untyped pointer to the underlying `GCharsetConverterClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CharsetConverterClass` instance.
    public init(_ op: UnsafeMutablePointer<GCharsetConverterClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CharsetConverterClassProtocol`
    /// `GCharsetConverterClass` does not allow reference counting.
    public convenience init<T: CharsetConverterClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GCharsetConverterClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GCharsetConverterClass`.
    deinit {
        // no reference counting for GCharsetConverterClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GCharsetConverterClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GCharsetConverterClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GCharsetConverterClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GCharsetConverterClass>(opaquePointer))
    }



}

// MARK: - no CharsetConverterClass properties

// MARK: - no signals


public extension CharsetConverterClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GCharsetConverterClass` instance.
    var _ptr: UnsafeMutablePointer<GCharsetConverterClass> { return ptr.assumingMemoryBound(to: GCharsetConverterClass.self) }

}



// MARK: - ConverterIface Record

/// The `ConverterIfaceProtocol` protocol exposes the methods and properties of an underlying `GConverterIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ConverterIface`.
/// Alternatively, use `ConverterIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Provides an interface for converting data from one type
/// to another type. The conversion can be stateful
/// and may fail at any place.
public protocol ConverterIfaceProtocol {
    /// Untyped pointer to the underlying `GConverterIface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GConverterIface` instance.
    var _ptr: UnsafeMutablePointer<GConverterIface> { get }
}

/// The `ConverterIfaceRef` type acts as a lightweight Swift reference to an underlying `GConverterIface` instance.
/// It exposes methods that can operate on this data type through `ConverterIfaceProtocol` conformance.
/// Use `ConverterIfaceRef` only as an `unowned` reference to an existing `GConverterIface` instance.
///
/// Provides an interface for converting data from one type
/// to another type. The conversion can be stateful
/// and may fail at any place.
public struct ConverterIfaceRef: ConverterIfaceProtocol {
    /// Untyped pointer to the underlying `GConverterIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ConverterIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GConverterIface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ConverterIfaceProtocol`
    init<T: ConverterIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterIfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterIfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterIfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterIfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterIfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ConverterIface` type acts as an owner of an underlying `GConverterIface` instance.
/// It provides the methods that can operate on this data type through `ConverterIfaceProtocol` conformance.
/// Use `ConverterIface` as a strong reference or owner of a `GConverterIface` instance.
///
/// Provides an interface for converting data from one type
/// to another type. The conversion can be stateful
/// and may fail at any place.
open class ConverterIface: ConverterIfaceProtocol {
    /// Untyped pointer to the underlying `GConverterIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ConverterIface` instance.
    public init(_ op: UnsafeMutablePointer<GConverterIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ConverterIfaceProtocol`
    /// `GConverterIface` does not allow reference counting.
    public convenience init<T: ConverterIfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GConverterIface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GConverterIface`.
    deinit {
        // no reference counting for GConverterIface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterIfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GConverterIface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterIfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GConverterIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterIfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GConverterIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterIfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GConverterIface>(opaquePointer))
    }



}

// MARK: - no ConverterIface properties

// MARK: - no signals


public extension ConverterIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GConverterIface` instance.
    var _ptr: UnsafeMutablePointer<GConverterIface> { return ptr.assumingMemoryBound(to: GConverterIface.self) }

}



// MARK: - ConverterInputStreamClass Record

/// The `ConverterInputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GConverterInputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ConverterInputStreamClass`.
/// Alternatively, use `ConverterInputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ConverterInputStreamClassProtocol {
    /// Untyped pointer to the underlying `GConverterInputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GConverterInputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GConverterInputStreamClass> { get }
}

/// The `ConverterInputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GConverterInputStreamClass` instance.
/// It exposes methods that can operate on this data type through `ConverterInputStreamClassProtocol` conformance.
/// Use `ConverterInputStreamClassRef` only as an `unowned` reference to an existing `GConverterInputStreamClass` instance.
///

public struct ConverterInputStreamClassRef: ConverterInputStreamClassProtocol {
    /// Untyped pointer to the underlying `GConverterInputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ConverterInputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GConverterInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ConverterInputStreamClassProtocol`
    init<T: ConverterInputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ConverterInputStreamClass` type acts as an owner of an underlying `GConverterInputStreamClass` instance.
/// It provides the methods that can operate on this data type through `ConverterInputStreamClassProtocol` conformance.
/// Use `ConverterInputStreamClass` as a strong reference or owner of a `GConverterInputStreamClass` instance.
///

open class ConverterInputStreamClass: ConverterInputStreamClassProtocol {
    /// Untyped pointer to the underlying `GConverterInputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ConverterInputStreamClass` instance.
    public init(_ op: UnsafeMutablePointer<GConverterInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ConverterInputStreamClassProtocol`
    /// `GConverterInputStreamClass` does not allow reference counting.
    public convenience init<T: ConverterInputStreamClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GConverterInputStreamClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GConverterInputStreamClass`.
    deinit {
        // no reference counting for GConverterInputStreamClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GConverterInputStreamClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GConverterInputStreamClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GConverterInputStreamClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GConverterInputStreamClass>(opaquePointer))
    }



}

// MARK: - no ConverterInputStreamClass properties

// MARK: - no signals


public extension ConverterInputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GConverterInputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GConverterInputStreamClass> { return ptr.assumingMemoryBound(to: GConverterInputStreamClass.self) }

}



// MARK: - ConverterInputStreamPrivate Record

/// The `ConverterInputStreamPrivateProtocol` protocol exposes the methods and properties of an underlying `GConverterInputStreamPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ConverterInputStreamPrivate`.
/// Alternatively, use `ConverterInputStreamPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ConverterInputStreamPrivateProtocol {
    /// Untyped pointer to the underlying `GConverterInputStreamPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GConverterInputStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GConverterInputStreamPrivate> { get }
}

/// The `ConverterInputStreamPrivateRef` type acts as a lightweight Swift reference to an underlying `GConverterInputStreamPrivate` instance.
/// It exposes methods that can operate on this data type through `ConverterInputStreamPrivateProtocol` conformance.
/// Use `ConverterInputStreamPrivateRef` only as an `unowned` reference to an existing `GConverterInputStreamPrivate` instance.
///

public struct ConverterInputStreamPrivateRef: ConverterInputStreamPrivateProtocol {
    /// Untyped pointer to the underlying `GConverterInputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ConverterInputStreamPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GConverterInputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ConverterInputStreamPrivateProtocol`
    init<T: ConverterInputStreamPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ConverterInputStreamPrivate` type acts as an owner of an underlying `GConverterInputStreamPrivate` instance.
/// It provides the methods that can operate on this data type through `ConverterInputStreamPrivateProtocol` conformance.
/// Use `ConverterInputStreamPrivate` as a strong reference or owner of a `GConverterInputStreamPrivate` instance.
///

open class ConverterInputStreamPrivate: ConverterInputStreamPrivateProtocol {
    /// Untyped pointer to the underlying `GConverterInputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ConverterInputStreamPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GConverterInputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ConverterInputStreamPrivateProtocol`
    /// `GConverterInputStreamPrivate` does not allow reference counting.
    public convenience init<T: ConverterInputStreamPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GConverterInputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GConverterInputStreamPrivate`.
    deinit {
        // no reference counting for GConverterInputStreamPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GConverterInputStreamPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GConverterInputStreamPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GConverterInputStreamPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GConverterInputStreamPrivate>(opaquePointer))
    }



}

// MARK: - no ConverterInputStreamPrivate properties

// MARK: - no signals


public extension ConverterInputStreamPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GConverterInputStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GConverterInputStreamPrivate> { return ptr.assumingMemoryBound(to: GConverterInputStreamPrivate.self) }

}



// MARK: - ConverterOutputStreamClass Record

/// The `ConverterOutputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GConverterOutputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ConverterOutputStreamClass`.
/// Alternatively, use `ConverterOutputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ConverterOutputStreamClassProtocol {
    /// Untyped pointer to the underlying `GConverterOutputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GConverterOutputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GConverterOutputStreamClass> { get }
}

/// The `ConverterOutputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GConverterOutputStreamClass` instance.
/// It exposes methods that can operate on this data type through `ConverterOutputStreamClassProtocol` conformance.
/// Use `ConverterOutputStreamClassRef` only as an `unowned` reference to an existing `GConverterOutputStreamClass` instance.
///

public struct ConverterOutputStreamClassRef: ConverterOutputStreamClassProtocol {
    /// Untyped pointer to the underlying `GConverterOutputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ConverterOutputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GConverterOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ConverterOutputStreamClassProtocol`
    init<T: ConverterOutputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ConverterOutputStreamClass` type acts as an owner of an underlying `GConverterOutputStreamClass` instance.
/// It provides the methods that can operate on this data type through `ConverterOutputStreamClassProtocol` conformance.
/// Use `ConverterOutputStreamClass` as a strong reference or owner of a `GConverterOutputStreamClass` instance.
///

open class ConverterOutputStreamClass: ConverterOutputStreamClassProtocol {
    /// Untyped pointer to the underlying `GConverterOutputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ConverterOutputStreamClass` instance.
    public init(_ op: UnsafeMutablePointer<GConverterOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ConverterOutputStreamClassProtocol`
    /// `GConverterOutputStreamClass` does not allow reference counting.
    public convenience init<T: ConverterOutputStreamClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GConverterOutputStreamClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GConverterOutputStreamClass`.
    deinit {
        // no reference counting for GConverterOutputStreamClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GConverterOutputStreamClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GConverterOutputStreamClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GConverterOutputStreamClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GConverterOutputStreamClass>(opaquePointer))
    }



}

// MARK: - no ConverterOutputStreamClass properties

// MARK: - no signals


public extension ConverterOutputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GConverterOutputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GConverterOutputStreamClass> { return ptr.assumingMemoryBound(to: GConverterOutputStreamClass.self) }

}



// MARK: - ConverterOutputStreamPrivate Record

/// The `ConverterOutputStreamPrivateProtocol` protocol exposes the methods and properties of an underlying `GConverterOutputStreamPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ConverterOutputStreamPrivate`.
/// Alternatively, use `ConverterOutputStreamPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ConverterOutputStreamPrivateProtocol {
    /// Untyped pointer to the underlying `GConverterOutputStreamPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GConverterOutputStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GConverterOutputStreamPrivate> { get }
}

/// The `ConverterOutputStreamPrivateRef` type acts as a lightweight Swift reference to an underlying `GConverterOutputStreamPrivate` instance.
/// It exposes methods that can operate on this data type through `ConverterOutputStreamPrivateProtocol` conformance.
/// Use `ConverterOutputStreamPrivateRef` only as an `unowned` reference to an existing `GConverterOutputStreamPrivate` instance.
///

public struct ConverterOutputStreamPrivateRef: ConverterOutputStreamPrivateProtocol {
    /// Untyped pointer to the underlying `GConverterOutputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ConverterOutputStreamPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GConverterOutputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ConverterOutputStreamPrivateProtocol`
    init<T: ConverterOutputStreamPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ConverterOutputStreamPrivate` type acts as an owner of an underlying `GConverterOutputStreamPrivate` instance.
/// It provides the methods that can operate on this data type through `ConverterOutputStreamPrivateProtocol` conformance.
/// Use `ConverterOutputStreamPrivate` as a strong reference or owner of a `GConverterOutputStreamPrivate` instance.
///

open class ConverterOutputStreamPrivate: ConverterOutputStreamPrivateProtocol {
    /// Untyped pointer to the underlying `GConverterOutputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ConverterOutputStreamPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GConverterOutputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ConverterOutputStreamPrivateProtocol`
    /// `GConverterOutputStreamPrivate` does not allow reference counting.
    public convenience init<T: ConverterOutputStreamPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GConverterOutputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GConverterOutputStreamPrivate`.
    deinit {
        // no reference counting for GConverterOutputStreamPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GConverterOutputStreamPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GConverterOutputStreamPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GConverterOutputStreamPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GConverterOutputStreamPrivate>(opaquePointer))
    }



}

// MARK: - no ConverterOutputStreamPrivate properties

// MARK: - no signals


public extension ConverterOutputStreamPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GConverterOutputStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GConverterOutputStreamPrivate> { return ptr.assumingMemoryBound(to: GConverterOutputStreamPrivate.self) }

}



// MARK: - CredentialsClass Record

/// The `CredentialsClassProtocol` protocol exposes the methods and properties of an underlying `GCredentialsClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CredentialsClass`.
/// Alternatively, use `CredentialsClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Class structure for `GCredentials`.
public protocol CredentialsClassProtocol {
    /// Untyped pointer to the underlying `GCredentialsClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GCredentialsClass` instance.
    var _ptr: UnsafeMutablePointer<GCredentialsClass> { get }
}

/// The `CredentialsClassRef` type acts as a lightweight Swift reference to an underlying `GCredentialsClass` instance.
/// It exposes methods that can operate on this data type through `CredentialsClassProtocol` conformance.
/// Use `CredentialsClassRef` only as an `unowned` reference to an existing `GCredentialsClass` instance.
///
/// Class structure for `GCredentials`.
public struct CredentialsClassRef: CredentialsClassProtocol {
    /// Untyped pointer to the underlying `GCredentialsClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CredentialsClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GCredentialsClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CredentialsClassProtocol`
    init<T: CredentialsClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CredentialsClass` type acts as an owner of an underlying `GCredentialsClass` instance.
/// It provides the methods that can operate on this data type through `CredentialsClassProtocol` conformance.
/// Use `CredentialsClass` as a strong reference or owner of a `GCredentialsClass` instance.
///
/// Class structure for `GCredentials`.
open class CredentialsClass: CredentialsClassProtocol {
    /// Untyped pointer to the underlying `GCredentialsClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CredentialsClass` instance.
    public init(_ op: UnsafeMutablePointer<GCredentialsClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CredentialsClassProtocol`
    /// `GCredentialsClass` does not allow reference counting.
    public convenience init<T: CredentialsClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GCredentialsClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GCredentialsClass`.
    deinit {
        // no reference counting for GCredentialsClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GCredentialsClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GCredentialsClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GCredentialsClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GCredentialsClass>(opaquePointer))
    }



}

// MARK: - no CredentialsClass properties

// MARK: - no signals


public extension CredentialsClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GCredentialsClass` instance.
    var _ptr: UnsafeMutablePointer<GCredentialsClass> { return ptr.assumingMemoryBound(to: GCredentialsClass.self) }

}



// MARK: - DBusAnnotationInfo Record

/// The `DBusAnnotationInfoProtocol` protocol exposes the methods and properties of an underlying `GDBusAnnotationInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusAnnotationInfo`.
/// Alternatively, use `DBusAnnotationInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Information about an annotation.
public protocol DBusAnnotationInfoProtocol {
    /// Untyped pointer to the underlying `GDBusAnnotationInfo` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusAnnotationInfo` instance.
    var dbus_annotation_info_ptr: UnsafeMutablePointer<GDBusAnnotationInfo> { get }
}

/// The `DBusAnnotationInfoRef` type acts as a lightweight Swift reference to an underlying `GDBusAnnotationInfo` instance.
/// It exposes methods that can operate on this data type through `DBusAnnotationInfoProtocol` conformance.
/// Use `DBusAnnotationInfoRef` only as an `unowned` reference to an existing `GDBusAnnotationInfo` instance.
///
/// Information about an annotation.
public struct DBusAnnotationInfoRef: DBusAnnotationInfoProtocol {
    /// Untyped pointer to the underlying `GDBusAnnotationInfo` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_annotation_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusAnnotationInfoRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusAnnotationInfo>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusAnnotationInfoProtocol`
    init<T: DBusAnnotationInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DBusAnnotationInfo` type acts as a reference-counted owner of an underlying `GDBusAnnotationInfo` instance.
/// It provides the methods that can operate on this data type through `DBusAnnotationInfoProtocol` conformance.
/// Use `DBusAnnotationInfo` as a strong reference or owner of a `GDBusAnnotationInfo` instance.
///
/// Information about an annotation.
open class DBusAnnotationInfo: DBusAnnotationInfoProtocol {
    /// Untyped pointer to the underlying `GDBusAnnotationInfo` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_annotation_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DBusAnnotationInfo` instance.
    public init(_ op: UnsafeMutablePointer<GDBusAnnotationInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DBusAnnotationInfoProtocol`
    /// Will retain `GDBusAnnotationInfo`.
    public convenience init<T: DBusAnnotationInfoProtocol>(_ other: T) {
        self.init(cast(other.dbus_annotation_info_ptr))
        g_dbus_annotation_info_ref(cast(dbus_annotation_info_ptr))
    }

    /// Releases the underlying `GDBusAnnotationInfo` instance using `g_dbus_annotation_info_unref`.
    deinit {
        g_dbus_annotation_info_unref(cast(dbus_annotation_info_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusAnnotationInfo.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusAnnotationInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusAnnotationInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusAnnotationInfo>(opaquePointer))
    }



}

// MARK: - no DBusAnnotationInfo properties

// MARK: - no signals


public extension DBusAnnotationInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusAnnotationInfo` instance.
    var dbus_annotation_info_ptr: UnsafeMutablePointer<GDBusAnnotationInfo> { return ptr.assumingMemoryBound(to: GDBusAnnotationInfo.self) }

    /// If `info` is statically allocated does nothing. Otherwise increases
    /// the reference count.
    func ref() -> UnsafeMutablePointer<GDBusAnnotationInfo>! {
        let rv = g_dbus_annotation_info_ref(cast(dbus_annotation_info_ptr))
        return cast(rv)
    }

    /// If `info` is statically allocated, does nothing. Otherwise decreases
    /// the reference count of `info`. When its reference count drops to 0,
    /// the memory used is freed.
    func unref() {
        g_dbus_annotation_info_unref(cast(dbus_annotation_info_ptr))
    
    }
}



