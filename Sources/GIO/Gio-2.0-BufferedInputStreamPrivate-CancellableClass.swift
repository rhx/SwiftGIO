import CGLib
import GLib
import GLibObject

// MARK: - BufferedInputStreamPrivate Record

/// The `BufferedInputStreamPrivateProtocol` protocol exposes the methods and properties of an underlying `GBufferedInputStreamPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BufferedInputStreamPrivate`.
/// Alternatively, use `BufferedInputStreamPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol BufferedInputStreamPrivateProtocol {
    /// Untyped pointer to the underlying `GBufferedInputStreamPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GBufferedInputStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GBufferedInputStreamPrivate> { get }
}

/// The `BufferedInputStreamPrivateRef` type acts as a lightweight Swift reference to an underlying `GBufferedInputStreamPrivate` instance.
/// It exposes methods that can operate on this data type through `BufferedInputStreamPrivateProtocol` conformance.
/// Use `BufferedInputStreamPrivateRef` only as an `unowned` reference to an existing `GBufferedInputStreamPrivate` instance.
///

public struct BufferedInputStreamPrivateRef: BufferedInputStreamPrivateProtocol {
    /// Untyped pointer to the underlying `GBufferedInputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension BufferedInputStreamPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GBufferedInputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `BufferedInputStreamPrivateProtocol`
    init<T: BufferedInputStreamPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `BufferedInputStreamPrivate` type acts as an owner of an underlying `GBufferedInputStreamPrivate` instance.
/// It provides the methods that can operate on this data type through `BufferedInputStreamPrivateProtocol` conformance.
/// Use `BufferedInputStreamPrivate` as a strong reference or owner of a `GBufferedInputStreamPrivate` instance.
///

open class BufferedInputStreamPrivate: BufferedInputStreamPrivateProtocol {
    /// Untyped pointer to the underlying `GBufferedInputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `BufferedInputStreamPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GBufferedInputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `BufferedInputStreamPrivateProtocol`
    /// `GBufferedInputStreamPrivate` does not allow reference counting.
    public convenience init<T: BufferedInputStreamPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GBufferedInputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GBufferedInputStreamPrivate`.
    deinit {
        // no reference counting for GBufferedInputStreamPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GBufferedInputStreamPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GBufferedInputStreamPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GBufferedInputStreamPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GBufferedInputStreamPrivate>(opaquePointer))
    }



}

// MARK: - no BufferedInputStreamPrivate properties

// MARK: - no signals


public extension BufferedInputStreamPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GBufferedInputStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GBufferedInputStreamPrivate> { return ptr.assumingMemoryBound(to: GBufferedInputStreamPrivate.self) }

}



// MARK: - BufferedOutputStreamClass Record

/// The `BufferedOutputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GBufferedOutputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BufferedOutputStreamClass`.
/// Alternatively, use `BufferedOutputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol BufferedOutputStreamClassProtocol {
    /// Untyped pointer to the underlying `GBufferedOutputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GBufferedOutputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GBufferedOutputStreamClass> { get }
}

/// The `BufferedOutputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GBufferedOutputStreamClass` instance.
/// It exposes methods that can operate on this data type through `BufferedOutputStreamClassProtocol` conformance.
/// Use `BufferedOutputStreamClassRef` only as an `unowned` reference to an existing `GBufferedOutputStreamClass` instance.
///

public struct BufferedOutputStreamClassRef: BufferedOutputStreamClassProtocol {
    /// Untyped pointer to the underlying `GBufferedOutputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension BufferedOutputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GBufferedOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `BufferedOutputStreamClassProtocol`
    init<T: BufferedOutputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `BufferedOutputStreamClass` type acts as an owner of an underlying `GBufferedOutputStreamClass` instance.
/// It provides the methods that can operate on this data type through `BufferedOutputStreamClassProtocol` conformance.
/// Use `BufferedOutputStreamClass` as a strong reference or owner of a `GBufferedOutputStreamClass` instance.
///

open class BufferedOutputStreamClass: BufferedOutputStreamClassProtocol {
    /// Untyped pointer to the underlying `GBufferedOutputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `BufferedOutputStreamClass` instance.
    public init(_ op: UnsafeMutablePointer<GBufferedOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `BufferedOutputStreamClassProtocol`
    /// `GBufferedOutputStreamClass` does not allow reference counting.
    public convenience init<T: BufferedOutputStreamClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GBufferedOutputStreamClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GBufferedOutputStreamClass`.
    deinit {
        // no reference counting for GBufferedOutputStreamClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GBufferedOutputStreamClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GBufferedOutputStreamClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GBufferedOutputStreamClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GBufferedOutputStreamClass>(opaquePointer))
    }



}

// MARK: - no BufferedOutputStreamClass properties

// MARK: - no signals


public extension BufferedOutputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GBufferedOutputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GBufferedOutputStreamClass> { return ptr.assumingMemoryBound(to: GBufferedOutputStreamClass.self) }

}



// MARK: - BufferedOutputStreamPrivate Record

/// The `BufferedOutputStreamPrivateProtocol` protocol exposes the methods and properties of an underlying `GBufferedOutputStreamPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BufferedOutputStreamPrivate`.
/// Alternatively, use `BufferedOutputStreamPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol BufferedOutputStreamPrivateProtocol {
    /// Untyped pointer to the underlying `GBufferedOutputStreamPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GBufferedOutputStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GBufferedOutputStreamPrivate> { get }
}

/// The `BufferedOutputStreamPrivateRef` type acts as a lightweight Swift reference to an underlying `GBufferedOutputStreamPrivate` instance.
/// It exposes methods that can operate on this data type through `BufferedOutputStreamPrivateProtocol` conformance.
/// Use `BufferedOutputStreamPrivateRef` only as an `unowned` reference to an existing `GBufferedOutputStreamPrivate` instance.
///

public struct BufferedOutputStreamPrivateRef: BufferedOutputStreamPrivateProtocol {
    /// Untyped pointer to the underlying `GBufferedOutputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension BufferedOutputStreamPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GBufferedOutputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `BufferedOutputStreamPrivateProtocol`
    init<T: BufferedOutputStreamPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `BufferedOutputStreamPrivate` type acts as an owner of an underlying `GBufferedOutputStreamPrivate` instance.
/// It provides the methods that can operate on this data type through `BufferedOutputStreamPrivateProtocol` conformance.
/// Use `BufferedOutputStreamPrivate` as a strong reference or owner of a `GBufferedOutputStreamPrivate` instance.
///

open class BufferedOutputStreamPrivate: BufferedOutputStreamPrivateProtocol {
    /// Untyped pointer to the underlying `GBufferedOutputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `BufferedOutputStreamPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GBufferedOutputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `BufferedOutputStreamPrivateProtocol`
    /// `GBufferedOutputStreamPrivate` does not allow reference counting.
    public convenience init<T: BufferedOutputStreamPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GBufferedOutputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GBufferedOutputStreamPrivate`.
    deinit {
        // no reference counting for GBufferedOutputStreamPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GBufferedOutputStreamPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GBufferedOutputStreamPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GBufferedOutputStreamPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GBufferedOutputStreamPrivate>(opaquePointer))
    }



}

// MARK: - no BufferedOutputStreamPrivate properties

// MARK: - no signals


public extension BufferedOutputStreamPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GBufferedOutputStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GBufferedOutputStreamPrivate> { return ptr.assumingMemoryBound(to: GBufferedOutputStreamPrivate.self) }

}



// MARK: - CancellableClass Record

/// The `CancellableClassProtocol` protocol exposes the methods and properties of an underlying `GCancellableClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CancellableClass`.
/// Alternatively, use `CancellableClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CancellableClassProtocol {
    /// Untyped pointer to the underlying `GCancellableClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GCancellableClass` instance.
    var _ptr: UnsafeMutablePointer<GCancellableClass> { get }
}

/// The `CancellableClassRef` type acts as a lightweight Swift reference to an underlying `GCancellableClass` instance.
/// It exposes methods that can operate on this data type through `CancellableClassProtocol` conformance.
/// Use `CancellableClassRef` only as an `unowned` reference to an existing `GCancellableClass` instance.
///

public struct CancellableClassRef: CancellableClassProtocol {
    /// Untyped pointer to the underlying `GCancellableClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CancellableClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GCancellableClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CancellableClassProtocol`
    init<T: CancellableClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CancellableClass` type acts as an owner of an underlying `GCancellableClass` instance.
/// It provides the methods that can operate on this data type through `CancellableClassProtocol` conformance.
/// Use `CancellableClass` as a strong reference or owner of a `GCancellableClass` instance.
///

open class CancellableClass: CancellableClassProtocol {
    /// Untyped pointer to the underlying `GCancellableClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CancellableClass` instance.
    public init(_ op: UnsafeMutablePointer<GCancellableClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CancellableClassProtocol`
    /// `GCancellableClass` does not allow reference counting.
    public convenience init<T: CancellableClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GCancellableClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GCancellableClass`.
    deinit {
        // no reference counting for GCancellableClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GCancellableClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GCancellableClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GCancellableClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GCancellableClass>(opaquePointer))
    }



}

// MARK: - no CancellableClass properties

// MARK: - no signals


public extension CancellableClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GCancellableClass` instance.
    var _ptr: UnsafeMutablePointer<GCancellableClass> { return ptr.assumingMemoryBound(to: GCancellableClass.self) }

}



