import CGLib
import GLib
import GLibObject

// MARK: - EmblemedIconClass Record

/// The `EmblemedIconClassProtocol` protocol exposes the methods and properties of an underlying `GEmblemedIconClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EmblemedIconClass`.
/// Alternatively, use `EmblemedIconClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EmblemedIconClassProtocol {
    /// Untyped pointer to the underlying `GEmblemedIconClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GEmblemedIconClass` instance.
    var _ptr: UnsafeMutablePointer<GEmblemedIconClass> { get }
}

/// The `EmblemedIconClassRef` type acts as a lightweight Swift reference to an underlying `GEmblemedIconClass` instance.
/// It exposes methods that can operate on this data type through `EmblemedIconClassProtocol` conformance.
/// Use `EmblemedIconClassRef` only as an `unowned` reference to an existing `GEmblemedIconClass` instance.
///

public struct EmblemedIconClassRef: EmblemedIconClassProtocol {
    /// Untyped pointer to the underlying `GEmblemedIconClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EmblemedIconClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GEmblemedIconClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EmblemedIconClassProtocol`
    init<T: EmblemedIconClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EmblemedIconClass` type acts as an owner of an underlying `GEmblemedIconClass` instance.
/// It provides the methods that can operate on this data type through `EmblemedIconClassProtocol` conformance.
/// Use `EmblemedIconClass` as a strong reference or owner of a `GEmblemedIconClass` instance.
///

open class EmblemedIconClass: EmblemedIconClassProtocol {
    /// Untyped pointer to the underlying `GEmblemedIconClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EmblemedIconClass` instance.
    public init(_ op: UnsafeMutablePointer<GEmblemedIconClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `EmblemedIconClassProtocol`
    /// `GEmblemedIconClass` does not allow reference counting.
    public convenience init<T: EmblemedIconClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GEmblemedIconClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GEmblemedIconClass`.
    deinit {
        // no reference counting for GEmblemedIconClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GEmblemedIconClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GEmblemedIconClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GEmblemedIconClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GEmblemedIconClass>(opaquePointer))
    }



}

// MARK: - no EmblemedIconClass properties

// MARK: - no signals


public extension EmblemedIconClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GEmblemedIconClass` instance.
    var _ptr: UnsafeMutablePointer<GEmblemedIconClass> { return ptr.assumingMemoryBound(to: GEmblemedIconClass.self) }

}



// MARK: - EmblemedIconPrivate Record

/// The `EmblemedIconPrivateProtocol` protocol exposes the methods and properties of an underlying `GEmblemedIconPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EmblemedIconPrivate`.
/// Alternatively, use `EmblemedIconPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EmblemedIconPrivateProtocol {
    /// Untyped pointer to the underlying `GEmblemedIconPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GEmblemedIconPrivate` instance.
    var _ptr: UnsafeMutablePointer<GEmblemedIconPrivate> { get }
}

/// The `EmblemedIconPrivateRef` type acts as a lightweight Swift reference to an underlying `GEmblemedIconPrivate` instance.
/// It exposes methods that can operate on this data type through `EmblemedIconPrivateProtocol` conformance.
/// Use `EmblemedIconPrivateRef` only as an `unowned` reference to an existing `GEmblemedIconPrivate` instance.
///

public struct EmblemedIconPrivateRef: EmblemedIconPrivateProtocol {
    /// Untyped pointer to the underlying `GEmblemedIconPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EmblemedIconPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GEmblemedIconPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EmblemedIconPrivateProtocol`
    init<T: EmblemedIconPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EmblemedIconPrivate` type acts as an owner of an underlying `GEmblemedIconPrivate` instance.
/// It provides the methods that can operate on this data type through `EmblemedIconPrivateProtocol` conformance.
/// Use `EmblemedIconPrivate` as a strong reference or owner of a `GEmblemedIconPrivate` instance.
///

open class EmblemedIconPrivate: EmblemedIconPrivateProtocol {
    /// Untyped pointer to the underlying `GEmblemedIconPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EmblemedIconPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GEmblemedIconPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `EmblemedIconPrivateProtocol`
    /// `GEmblemedIconPrivate` does not allow reference counting.
    public convenience init<T: EmblemedIconPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GEmblemedIconPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GEmblemedIconPrivate`.
    deinit {
        // no reference counting for GEmblemedIconPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GEmblemedIconPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GEmblemedIconPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GEmblemedIconPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GEmblemedIconPrivate>(opaquePointer))
    }



}

// MARK: - no EmblemedIconPrivate properties

// MARK: - no signals


public extension EmblemedIconPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GEmblemedIconPrivate` instance.
    var _ptr: UnsafeMutablePointer<GEmblemedIconPrivate> { return ptr.assumingMemoryBound(to: GEmblemedIconPrivate.self) }

}



// MARK: - FileAttributeInfo Record

/// The `FileAttributeInfoProtocol` protocol exposes the methods and properties of an underlying `GFileAttributeInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileAttributeInfo`.
/// Alternatively, use `FileAttributeInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Information about a specific attribute.
public protocol FileAttributeInfoProtocol {
    /// Untyped pointer to the underlying `GFileAttributeInfo` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GFileAttributeInfo` instance.
    var _ptr: UnsafeMutablePointer<GFileAttributeInfo> { get }
}

/// The `FileAttributeInfoRef` type acts as a lightweight Swift reference to an underlying `GFileAttributeInfo` instance.
/// It exposes methods that can operate on this data type through `FileAttributeInfoProtocol` conformance.
/// Use `FileAttributeInfoRef` only as an `unowned` reference to an existing `GFileAttributeInfo` instance.
///
/// Information about a specific attribute.
public struct FileAttributeInfoRef: FileAttributeInfoProtocol {
    /// Untyped pointer to the underlying `GFileAttributeInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FileAttributeInfoRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GFileAttributeInfo>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileAttributeInfoProtocol`
    init<T: FileAttributeInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FileAttributeInfo` type acts as an owner of an underlying `GFileAttributeInfo` instance.
/// It provides the methods that can operate on this data type through `FileAttributeInfoProtocol` conformance.
/// Use `FileAttributeInfo` as a strong reference or owner of a `GFileAttributeInfo` instance.
///
/// Information about a specific attribute.
open class FileAttributeInfo: FileAttributeInfoProtocol {
    /// Untyped pointer to the underlying `GFileAttributeInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FileAttributeInfo` instance.
    public init(_ op: UnsafeMutablePointer<GFileAttributeInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FileAttributeInfoProtocol`
    /// `GFileAttributeInfo` does not allow reference counting.
    public convenience init<T: FileAttributeInfoProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GFileAttributeInfo, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GFileAttributeInfo`.
    deinit {
        // no reference counting for GFileAttributeInfo, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GFileAttributeInfo.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GFileAttributeInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GFileAttributeInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GFileAttributeInfo>(opaquePointer))
    }



}

// MARK: - no FileAttributeInfo properties

// MARK: - no signals


public extension FileAttributeInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileAttributeInfo` instance.
    var _ptr: UnsafeMutablePointer<GFileAttributeInfo> { return ptr.assumingMemoryBound(to: GFileAttributeInfo.self) }

}



