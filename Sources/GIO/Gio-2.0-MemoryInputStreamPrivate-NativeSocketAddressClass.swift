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
    /// Ownership is transferred to the `MemoryInputStreamPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GMemoryInputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MemoryInputStreamPrivateProtocol`
    /// `GMemoryInputStreamPrivate` does not allow reference counting.
    public convenience init<T: MemoryInputStreamPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GMemoryInputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GMemoryInputStreamPrivate`.
    deinit {
        // no reference counting for GMemoryInputStreamPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GMemoryInputStreamPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GMemoryInputStreamPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GMemoryInputStreamPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GMemoryInputStreamPrivate>(opaquePointer))
    }



}

// MARK: - no MemoryInputStreamPrivate properties

// MARK: - no signals


public extension MemoryInputStreamPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMemoryInputStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GMemoryInputStreamPrivate> { return ptr.assumingMemoryBound(to: GMemoryInputStreamPrivate.self) }

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
    /// Ownership is transferred to the `MemoryOutputStreamClass` instance.
    public init(_ op: UnsafeMutablePointer<GMemoryOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MemoryOutputStreamClassProtocol`
    /// `GMemoryOutputStreamClass` does not allow reference counting.
    public convenience init<T: MemoryOutputStreamClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GMemoryOutputStreamClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GMemoryOutputStreamClass`.
    deinit {
        // no reference counting for GMemoryOutputStreamClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GMemoryOutputStreamClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GMemoryOutputStreamClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GMemoryOutputStreamClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GMemoryOutputStreamClass>(opaquePointer))
    }



}

// MARK: - no MemoryOutputStreamClass properties

// MARK: - no signals


public extension MemoryOutputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMemoryOutputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GMemoryOutputStreamClass> { return ptr.assumingMemoryBound(to: GMemoryOutputStreamClass.self) }

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
    /// Ownership is transferred to the `MemoryOutputStreamPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GMemoryOutputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MemoryOutputStreamPrivateProtocol`
    /// `GMemoryOutputStreamPrivate` does not allow reference counting.
    public convenience init<T: MemoryOutputStreamPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GMemoryOutputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GMemoryOutputStreamPrivate`.
    deinit {
        // no reference counting for GMemoryOutputStreamPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GMemoryOutputStreamPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GMemoryOutputStreamPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GMemoryOutputStreamPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GMemoryOutputStreamPrivate>(opaquePointer))
    }



}

// MARK: - no MemoryOutputStreamPrivate properties

// MARK: - no signals


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
    /// Ownership is transferred to the `MenuAttributeIterClass` instance.
    public init(_ op: UnsafeMutablePointer<GMenuAttributeIterClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MenuAttributeIterClassProtocol`
    /// `GMenuAttributeIterClass` does not allow reference counting.
    public convenience init<T: MenuAttributeIterClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GMenuAttributeIterClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GMenuAttributeIterClass`.
    deinit {
        // no reference counting for GMenuAttributeIterClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GMenuAttributeIterClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GMenuAttributeIterClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GMenuAttributeIterClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GMenuAttributeIterClass>(opaquePointer))
    }



}

// MARK: - no MenuAttributeIterClass properties

// MARK: - no signals


public extension MenuAttributeIterClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMenuAttributeIterClass` instance.
    var _ptr: UnsafeMutablePointer<GMenuAttributeIterClass> { return ptr.assumingMemoryBound(to: GMenuAttributeIterClass.self) }

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
    /// Ownership is transferred to the `MenuAttributeIterPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GMenuAttributeIterPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MenuAttributeIterPrivateProtocol`
    /// `GMenuAttributeIterPrivate` does not allow reference counting.
    public convenience init<T: MenuAttributeIterPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GMenuAttributeIterPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GMenuAttributeIterPrivate`.
    deinit {
        // no reference counting for GMenuAttributeIterPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GMenuAttributeIterPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GMenuAttributeIterPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GMenuAttributeIterPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GMenuAttributeIterPrivate>(opaquePointer))
    }



}

// MARK: - no MenuAttributeIterPrivate properties

// MARK: - no signals


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
    /// Ownership is transferred to the `MenuLinkIterClass` instance.
    public init(_ op: UnsafeMutablePointer<GMenuLinkIterClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MenuLinkIterClassProtocol`
    /// `GMenuLinkIterClass` does not allow reference counting.
    public convenience init<T: MenuLinkIterClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GMenuLinkIterClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GMenuLinkIterClass`.
    deinit {
        // no reference counting for GMenuLinkIterClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GMenuLinkIterClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GMenuLinkIterClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GMenuLinkIterClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GMenuLinkIterClass>(opaquePointer))
    }



}

// MARK: - no MenuLinkIterClass properties

// MARK: - no signals


public extension MenuLinkIterClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMenuLinkIterClass` instance.
    var _ptr: UnsafeMutablePointer<GMenuLinkIterClass> { return ptr.assumingMemoryBound(to: GMenuLinkIterClass.self) }

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
    /// Ownership is transferred to the `MenuLinkIterPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GMenuLinkIterPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MenuLinkIterPrivateProtocol`
    /// `GMenuLinkIterPrivate` does not allow reference counting.
    public convenience init<T: MenuLinkIterPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GMenuLinkIterPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GMenuLinkIterPrivate`.
    deinit {
        // no reference counting for GMenuLinkIterPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GMenuLinkIterPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GMenuLinkIterPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GMenuLinkIterPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GMenuLinkIterPrivate>(opaquePointer))
    }



}

// MARK: - no MenuLinkIterPrivate properties

// MARK: - no signals


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
    /// Ownership is transferred to the `MenuModelClass` instance.
    public init(_ op: UnsafeMutablePointer<GMenuModelClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MenuModelClassProtocol`
    /// `GMenuModelClass` does not allow reference counting.
    public convenience init<T: MenuModelClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GMenuModelClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GMenuModelClass`.
    deinit {
        // no reference counting for GMenuModelClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GMenuModelClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GMenuModelClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GMenuModelClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GMenuModelClass>(opaquePointer))
    }



}

// MARK: - no MenuModelClass properties

// MARK: - no signals


public extension MenuModelClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMenuModelClass` instance.
    var _ptr: UnsafeMutablePointer<GMenuModelClass> { return ptr.assumingMemoryBound(to: GMenuModelClass.self) }

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
    /// Ownership is transferred to the `MenuModelPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GMenuModelPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MenuModelPrivateProtocol`
    /// `GMenuModelPrivate` does not allow reference counting.
    public convenience init<T: MenuModelPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GMenuModelPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GMenuModelPrivate`.
    deinit {
        // no reference counting for GMenuModelPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GMenuModelPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GMenuModelPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GMenuModelPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GMenuModelPrivate>(opaquePointer))
    }



}

// MARK: - no MenuModelPrivate properties

// MARK: - no signals


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
    /// Ownership is transferred to the `MountIface` instance.
    public init(_ op: UnsafeMutablePointer<GMountIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MountIfaceProtocol`
    /// `GMountIface` does not allow reference counting.
    public convenience init<T: MountIfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GMountIface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GMountIface`.
    deinit {
        // no reference counting for GMountIface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountIfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GMountIface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountIfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GMountIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountIfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GMountIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountIfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GMountIface>(opaquePointer))
    }



}

// MARK: - no MountIface properties

// MARK: - no signals


public extension MountIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMountIface` instance.
    var _ptr: UnsafeMutablePointer<GMountIface> { return ptr.assumingMemoryBound(to: GMountIface.self) }

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
    /// Ownership is transferred to the `MountOperationClass` instance.
    public init(_ op: UnsafeMutablePointer<GMountOperationClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MountOperationClassProtocol`
    /// `GMountOperationClass` does not allow reference counting.
    public convenience init<T: MountOperationClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GMountOperationClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GMountOperationClass`.
    deinit {
        // no reference counting for GMountOperationClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GMountOperationClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GMountOperationClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GMountOperationClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GMountOperationClass>(opaquePointer))
    }



}

// MARK: - no MountOperationClass properties

// MARK: - no signals


public extension MountOperationClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMountOperationClass` instance.
    var _ptr: UnsafeMutablePointer<GMountOperationClass> { return ptr.assumingMemoryBound(to: GMountOperationClass.self) }

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
    /// Ownership is transferred to the `MountOperationPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GMountOperationPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MountOperationPrivateProtocol`
    /// `GMountOperationPrivate` does not allow reference counting.
    public convenience init<T: MountOperationPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GMountOperationPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GMountOperationPrivate`.
    deinit {
        // no reference counting for GMountOperationPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GMountOperationPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GMountOperationPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GMountOperationPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GMountOperationPrivate>(opaquePointer))
    }



}

// MARK: - no MountOperationPrivate properties

// MARK: - no signals


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
    /// Ownership is transferred to the `NativeSocketAddressClass` instance.
    public init(_ op: UnsafeMutablePointer<GNativeSocketAddressClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `NativeSocketAddressClassProtocol`
    /// `GNativeSocketAddressClass` does not allow reference counting.
    public convenience init<T: NativeSocketAddressClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GNativeSocketAddressClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GNativeSocketAddressClass`.
    deinit {
        // no reference counting for GNativeSocketAddressClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GNativeSocketAddressClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GNativeSocketAddressClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GNativeSocketAddressClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GNativeSocketAddressClass>(opaquePointer))
    }



}

// MARK: - no NativeSocketAddressClass properties

// MARK: - no signals


public extension NativeSocketAddressClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GNativeSocketAddressClass` instance.
    var _ptr: UnsafeMutablePointer<GNativeSocketAddressClass> { return ptr.assumingMemoryBound(to: GNativeSocketAddressClass.self) }

}



