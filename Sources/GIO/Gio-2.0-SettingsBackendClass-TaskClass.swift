import CGLib
import GLib
import GLibObject

// MARK: - SettingsBackendClass Record

/// The `SettingsBackendClassProtocol` protocol exposes the methods and properties of an underlying `GSettingsBackendClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SettingsBackendClass`.
/// Alternatively, use `SettingsBackendClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Class structure for `GSettingsBackend`.
public protocol SettingsBackendClassProtocol {
    /// Untyped pointer to the underlying `GSettingsBackendClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSettingsBackendClass` instance.
    var _ptr: UnsafeMutablePointer<GSettingsBackendClass> { get }
}

/// The `SettingsBackendClassRef` type acts as a lightweight Swift reference to an underlying `GSettingsBackendClass` instance.
/// It exposes methods that can operate on this data type through `SettingsBackendClassProtocol` conformance.
/// Use `SettingsBackendClassRef` only as an `unowned` reference to an existing `GSettingsBackendClass` instance.
///
/// Class structure for `GSettingsBackend`.
public struct SettingsBackendClassRef: SettingsBackendClassProtocol {
    /// Untyped pointer to the underlying `GSettingsBackendClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SettingsBackendClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSettingsBackendClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SettingsBackendClassProtocol`
    init<T: SettingsBackendClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SettingsBackendClass` type acts as an owner of an underlying `GSettingsBackendClass` instance.
/// It provides the methods that can operate on this data type through `SettingsBackendClassProtocol` conformance.
/// Use `SettingsBackendClass` as a strong reference or owner of a `GSettingsBackendClass` instance.
///
/// Class structure for `GSettingsBackend`.
open class SettingsBackendClass: SettingsBackendClassProtocol {
    /// Untyped pointer to the underlying `GSettingsBackendClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsBackendClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSettingsBackendClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSettingsBackendClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SettingsBackendClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSettingsBackendClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSettingsBackendClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `SettingsBackendClassProtocol`
    /// `GSettingsBackendClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SettingsBackendClassProtocol`
    public init<T: SettingsBackendClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GSettingsBackendClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GSettingsBackendClass`.
    deinit {
        // no reference counting for GSettingsBackendClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSettingsBackendClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSettingsBackendClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSettingsBackendClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSettingsBackendClass, cannot ref(cast(_ptr))
    }



}

// MARK: - no SettingsBackendClass properties

// MARK: - no signals


public extension SettingsBackendClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSettingsBackendClass` instance.
    var _ptr: UnsafeMutablePointer<GSettingsBackendClass> { return ptr.assumingMemoryBound(to: GSettingsBackendClass.self) }

}



// MARK: - SettingsBackendPrivate Record

/// The `SettingsBackendPrivateProtocol` protocol exposes the methods and properties of an underlying `GSettingsBackendPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SettingsBackendPrivate`.
/// Alternatively, use `SettingsBackendPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SettingsBackendPrivateProtocol {
    /// Untyped pointer to the underlying `GSettingsBackendPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSettingsBackendPrivate` instance.
    var _ptr: UnsafeMutablePointer<GSettingsBackendPrivate> { get }
}

/// The `SettingsBackendPrivateRef` type acts as a lightweight Swift reference to an underlying `GSettingsBackendPrivate` instance.
/// It exposes methods that can operate on this data type through `SettingsBackendPrivateProtocol` conformance.
/// Use `SettingsBackendPrivateRef` only as an `unowned` reference to an existing `GSettingsBackendPrivate` instance.
///

public struct SettingsBackendPrivateRef: SettingsBackendPrivateProtocol {
    /// Untyped pointer to the underlying `GSettingsBackendPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SettingsBackendPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSettingsBackendPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SettingsBackendPrivateProtocol`
    init<T: SettingsBackendPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SettingsBackendPrivate` type acts as an owner of an underlying `GSettingsBackendPrivate` instance.
/// It provides the methods that can operate on this data type through `SettingsBackendPrivateProtocol` conformance.
/// Use `SettingsBackendPrivate` as a strong reference or owner of a `GSettingsBackendPrivate` instance.
///

open class SettingsBackendPrivate: SettingsBackendPrivateProtocol {
    /// Untyped pointer to the underlying `GSettingsBackendPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsBackendPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSettingsBackendPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSettingsBackendPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SettingsBackendPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSettingsBackendPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSettingsBackendPrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `SettingsBackendPrivateProtocol`
    /// `GSettingsBackendPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SettingsBackendPrivateProtocol`
    public init<T: SettingsBackendPrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GSettingsBackendPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GSettingsBackendPrivate`.
    deinit {
        // no reference counting for GSettingsBackendPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSettingsBackendPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendPrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSettingsBackendPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSettingsBackendPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsBackendPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSettingsBackendPrivate, cannot ref(cast(_ptr))
    }



}

// MARK: - no SettingsBackendPrivate properties

// MARK: - no signals


public extension SettingsBackendPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSettingsBackendPrivate` instance.
    var _ptr: UnsafeMutablePointer<GSettingsBackendPrivate> { return ptr.assumingMemoryBound(to: GSettingsBackendPrivate.self) }

}



// MARK: - SettingsClass Record

/// The `SettingsClassProtocol` protocol exposes the methods and properties of an underlying `GSettingsClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SettingsClass`.
/// Alternatively, use `SettingsClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SettingsClassProtocol {
    /// Untyped pointer to the underlying `GSettingsClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSettingsClass` instance.
    var _ptr: UnsafeMutablePointer<GSettingsClass> { get }
}

/// The `SettingsClassRef` type acts as a lightweight Swift reference to an underlying `GSettingsClass` instance.
/// It exposes methods that can operate on this data type through `SettingsClassProtocol` conformance.
/// Use `SettingsClassRef` only as an `unowned` reference to an existing `GSettingsClass` instance.
///

public struct SettingsClassRef: SettingsClassProtocol {
    /// Untyped pointer to the underlying `GSettingsClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SettingsClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSettingsClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SettingsClassProtocol`
    init<T: SettingsClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SettingsClass` type acts as an owner of an underlying `GSettingsClass` instance.
/// It provides the methods that can operate on this data type through `SettingsClassProtocol` conformance.
/// Use `SettingsClass` as a strong reference or owner of a `GSettingsClass` instance.
///

open class SettingsClass: SettingsClassProtocol {
    /// Untyped pointer to the underlying `GSettingsClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSettingsClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSettingsClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SettingsClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSettingsClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSettingsClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `SettingsClassProtocol`
    /// `GSettingsClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SettingsClassProtocol`
    public init<T: SettingsClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GSettingsClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GSettingsClass`.
    deinit {
        // no reference counting for GSettingsClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSettingsClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSettingsClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSettingsClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSettingsClass, cannot ref(cast(_ptr))
    }



}

// MARK: - no SettingsClass properties

// MARK: - no signals


public extension SettingsClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSettingsClass` instance.
    var _ptr: UnsafeMutablePointer<GSettingsClass> { return ptr.assumingMemoryBound(to: GSettingsClass.self) }

}



// MARK: - SettingsPrivate Record

/// The `SettingsPrivateProtocol` protocol exposes the methods and properties of an underlying `GSettingsPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SettingsPrivate`.
/// Alternatively, use `SettingsPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SettingsPrivateProtocol {
    /// Untyped pointer to the underlying `GSettingsPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSettingsPrivate` instance.
    var _ptr: UnsafeMutablePointer<GSettingsPrivate> { get }
}

/// The `SettingsPrivateRef` type acts as a lightweight Swift reference to an underlying `GSettingsPrivate` instance.
/// It exposes methods that can operate on this data type through `SettingsPrivateProtocol` conformance.
/// Use `SettingsPrivateRef` only as an `unowned` reference to an existing `GSettingsPrivate` instance.
///

public struct SettingsPrivateRef: SettingsPrivateProtocol {
    /// Untyped pointer to the underlying `GSettingsPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SettingsPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSettingsPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SettingsPrivateProtocol`
    init<T: SettingsPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SettingsPrivate` type acts as an owner of an underlying `GSettingsPrivate` instance.
/// It provides the methods that can operate on this data type through `SettingsPrivateProtocol` conformance.
/// Use `SettingsPrivate` as a strong reference or owner of a `GSettingsPrivate` instance.
///

open class SettingsPrivate: SettingsPrivateProtocol {
    /// Untyped pointer to the underlying `GSettingsPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSettingsPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSettingsPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SettingsPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSettingsPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSettingsPrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `SettingsPrivateProtocol`
    /// `GSettingsPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SettingsPrivateProtocol`
    public init<T: SettingsPrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GSettingsPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GSettingsPrivate`.
    deinit {
        // no reference counting for GSettingsPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSettingsPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsPrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSettingsPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSettingsPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSettingsPrivate, cannot ref(cast(_ptr))
    }



}

// MARK: - no SettingsPrivate properties

// MARK: - no signals


public extension SettingsPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSettingsPrivate` instance.
    var _ptr: UnsafeMutablePointer<GSettingsPrivate> { return ptr.assumingMemoryBound(to: GSettingsPrivate.self) }

}



// MARK: - SettingsSchema Record

/// The `SettingsSchemaProtocol` protocol exposes the methods and properties of an underlying `GSettingsSchema` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SettingsSchema`.
/// Alternatively, use `SettingsSchemaRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GSettingsSchemaSource` and `GSettingsSchema` APIs provide a
/// mechanism for advanced control over the loading of schemas and a
/// mechanism for introspecting their content.
/// 
/// Plugin loading systems that wish to provide plugins a way to access
/// settings face the problem of how to make the schemas for these
/// settings visible to GSettings.  Typically, a plugin will want to ship
/// the schema along with itself and it won't be installed into the
/// standard system directories for schemas.
/// 
/// `GSettingsSchemaSource` provides a mechanism for dealing with this by
/// allowing the creation of a new 'schema source' from which schemas can
/// be acquired.  This schema source can then become part of the metadata
/// associated with the plugin and queried whenever the plugin requires
/// access to some settings.
/// 
/// Consider the following example:
/// 
/// (C Language Example):
/// ```C
/// typedef struct
/// {
///    ...
///    GSettingsSchemaSource *schema_source;
///    ...
/// } Plugin;
/// 
/// Plugin *
/// initialise_plugin (const gchar *dir)
/// {
///   Plugin *plugin;
/// 
///   ...
/// 
///   plugin->schema_source =
///     g_settings_schema_source_new_from_directory (dir,
///       g_settings_schema_source_get_default (), FALSE, NULL);
/// 
///   ...
/// 
///   return plugin;
/// }
/// 
/// ...
/// 
/// GSettings *
/// plugin_get_settings (Plugin      *plugin,
///                      const gchar *schema_id)
/// {
///   GSettingsSchema *schema;
/// 
///   if (schema_id == NULL)
///     schema_id = plugin->identifier;
/// 
///   schema = g_settings_schema_source_lookup (plugin->schema_source,
///                                             schema_id, FALSE);
/// 
///   if (schema == NULL)
///     {
///       ... disable the plugin or abort, etc ...
///     }
/// 
///   return g_settings_new_full (schema, NULL, NULL);
/// }
/// ```
/// 
/// The code above shows how hooks should be added to the code that
/// initialises (or enables) the plugin to create the schema source and
/// how an API can be added to the plugin system to provide a convenient
/// way for the plugin to access its settings, using the schemas that it
/// ships.
/// 
/// From the standpoint of the plugin, it would need to ensure that it
/// ships a gschemas.compiled file as part of itself, and then simply do
/// the following:
/// 
/// (C Language Example):
/// ```C
/// {
///   GSettings *settings;
///   gint some_value;
/// 
///   settings = plugin_get_settings (self, NULL);
///   some_value = g_settings_get_int (settings, "some-value");
///   ...
/// }
/// ```
/// 
/// It's also possible that the plugin system expects the schema source
/// files (ie: .gschema.xml files) instead of a gschemas.compiled file.
/// In that case, the plugin loading system must compile the schemas for
/// itself before attempting to create the settings source.
public protocol SettingsSchemaProtocol {
    /// Untyped pointer to the underlying `GSettingsSchema` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSettingsSchema` instance.
    var settings_schema_ptr: UnsafeMutablePointer<GSettingsSchema> { get }
}

/// The `SettingsSchemaRef` type acts as a lightweight Swift reference to an underlying `GSettingsSchema` instance.
/// It exposes methods that can operate on this data type through `SettingsSchemaProtocol` conformance.
/// Use `SettingsSchemaRef` only as an `unowned` reference to an existing `GSettingsSchema` instance.
///
/// The `GSettingsSchemaSource` and `GSettingsSchema` APIs provide a
/// mechanism for advanced control over the loading of schemas and a
/// mechanism for introspecting their content.
/// 
/// Plugin loading systems that wish to provide plugins a way to access
/// settings face the problem of how to make the schemas for these
/// settings visible to GSettings.  Typically, a plugin will want to ship
/// the schema along with itself and it won't be installed into the
/// standard system directories for schemas.
/// 
/// `GSettingsSchemaSource` provides a mechanism for dealing with this by
/// allowing the creation of a new 'schema source' from which schemas can
/// be acquired.  This schema source can then become part of the metadata
/// associated with the plugin and queried whenever the plugin requires
/// access to some settings.
/// 
/// Consider the following example:
/// 
/// (C Language Example):
/// ```C
/// typedef struct
/// {
///    ...
///    GSettingsSchemaSource *schema_source;
///    ...
/// } Plugin;
/// 
/// Plugin *
/// initialise_plugin (const gchar *dir)
/// {
///   Plugin *plugin;
/// 
///   ...
/// 
///   plugin->schema_source =
///     g_settings_schema_source_new_from_directory (dir,
///       g_settings_schema_source_get_default (), FALSE, NULL);
/// 
///   ...
/// 
///   return plugin;
/// }
/// 
/// ...
/// 
/// GSettings *
/// plugin_get_settings (Plugin      *plugin,
///                      const gchar *schema_id)
/// {
///   GSettingsSchema *schema;
/// 
///   if (schema_id == NULL)
///     schema_id = plugin->identifier;
/// 
///   schema = g_settings_schema_source_lookup (plugin->schema_source,
///                                             schema_id, FALSE);
/// 
///   if (schema == NULL)
///     {
///       ... disable the plugin or abort, etc ...
///     }
/// 
///   return g_settings_new_full (schema, NULL, NULL);
/// }
/// ```
/// 
/// The code above shows how hooks should be added to the code that
/// initialises (or enables) the plugin to create the schema source and
/// how an API can be added to the plugin system to provide a convenient
/// way for the plugin to access its settings, using the schemas that it
/// ships.
/// 
/// From the standpoint of the plugin, it would need to ensure that it
/// ships a gschemas.compiled file as part of itself, and then simply do
/// the following:
/// 
/// (C Language Example):
/// ```C
/// {
///   GSettings *settings;
///   gint some_value;
/// 
///   settings = plugin_get_settings (self, NULL);
///   some_value = g_settings_get_int (settings, "some-value");
///   ...
/// }
/// ```
/// 
/// It's also possible that the plugin system expects the schema source
/// files (ie: .gschema.xml files) instead of a gschemas.compiled file.
/// In that case, the plugin loading system must compile the schemas for
/// itself before attempting to create the settings source.
public struct SettingsSchemaRef: SettingsSchemaProtocol {
    /// Untyped pointer to the underlying `GSettingsSchema` instance.
    /// For type-safe access, use the generated, typed pointer `settings_schema_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SettingsSchemaRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSettingsSchema>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SettingsSchemaProtocol`
    init<T: SettingsSchemaProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SettingsSchema` type acts as a reference-counted owner of an underlying `GSettingsSchema` instance.
/// It provides the methods that can operate on this data type through `SettingsSchemaProtocol` conformance.
/// Use `SettingsSchema` as a strong reference or owner of a `GSettingsSchema` instance.
///
/// The `GSettingsSchemaSource` and `GSettingsSchema` APIs provide a
/// mechanism for advanced control over the loading of schemas and a
/// mechanism for introspecting their content.
/// 
/// Plugin loading systems that wish to provide plugins a way to access
/// settings face the problem of how to make the schemas for these
/// settings visible to GSettings.  Typically, a plugin will want to ship
/// the schema along with itself and it won't be installed into the
/// standard system directories for schemas.
/// 
/// `GSettingsSchemaSource` provides a mechanism for dealing with this by
/// allowing the creation of a new 'schema source' from which schemas can
/// be acquired.  This schema source can then become part of the metadata
/// associated with the plugin and queried whenever the plugin requires
/// access to some settings.
/// 
/// Consider the following example:
/// 
/// (C Language Example):
/// ```C
/// typedef struct
/// {
///    ...
///    GSettingsSchemaSource *schema_source;
///    ...
/// } Plugin;
/// 
/// Plugin *
/// initialise_plugin (const gchar *dir)
/// {
///   Plugin *plugin;
/// 
///   ...
/// 
///   plugin->schema_source =
///     g_settings_schema_source_new_from_directory (dir,
///       g_settings_schema_source_get_default (), FALSE, NULL);
/// 
///   ...
/// 
///   return plugin;
/// }
/// 
/// ...
/// 
/// GSettings *
/// plugin_get_settings (Plugin      *plugin,
///                      const gchar *schema_id)
/// {
///   GSettingsSchema *schema;
/// 
///   if (schema_id == NULL)
///     schema_id = plugin->identifier;
/// 
///   schema = g_settings_schema_source_lookup (plugin->schema_source,
///                                             schema_id, FALSE);
/// 
///   if (schema == NULL)
///     {
///       ... disable the plugin or abort, etc ...
///     }
/// 
///   return g_settings_new_full (schema, NULL, NULL);
/// }
/// ```
/// 
/// The code above shows how hooks should be added to the code that
/// initialises (or enables) the plugin to create the schema source and
/// how an API can be added to the plugin system to provide a convenient
/// way for the plugin to access its settings, using the schemas that it
/// ships.
/// 
/// From the standpoint of the plugin, it would need to ensure that it
/// ships a gschemas.compiled file as part of itself, and then simply do
/// the following:
/// 
/// (C Language Example):
/// ```C
/// {
///   GSettings *settings;
///   gint some_value;
/// 
///   settings = plugin_get_settings (self, NULL);
///   some_value = g_settings_get_int (settings, "some-value");
///   ...
/// }
/// ```
/// 
/// It's also possible that the plugin system expects the schema source
/// files (ie: .gschema.xml files) instead of a gschemas.compiled file.
/// In that case, the plugin loading system must compile the schemas for
/// itself before attempting to create the settings source.
open class SettingsSchema: SettingsSchemaProtocol {
    /// Untyped pointer to the underlying `GSettingsSchema` instance.
    /// For type-safe access, use the generated, typed pointer `settings_schema_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsSchema` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSettingsSchema>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSettingsSchema`.
    /// i.e., ownership is transferred to the `SettingsSchema` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSettingsSchema>) {
        ptr = UnsafeMutableRawPointer(op)
        g_settings_schema_ref(cast(settings_schema_ptr))
    }

    /// Reference intialiser for a related type that implements `SettingsSchemaProtocol`
    /// Will retain `GSettingsSchema`.
    /// - Parameter other: an instance of a related type that implements `SettingsSchemaProtocol`
    public init<T: SettingsSchemaProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.settings_schema_ptr)
        g_settings_schema_ref(cast(settings_schema_ptr))
    }

    /// Releases the underlying `GSettingsSchema` instance using `g_settings_schema_unref`.
    deinit {
        g_settings_schema_unref(cast(settings_schema_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_settings_schema_ref(cast(settings_schema_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_settings_schema_ref(cast(settings_schema_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_settings_schema_ref(cast(settings_schema_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_settings_schema_ref(cast(settings_schema_ptr))
    }



}

// MARK: - no SettingsSchema properties

// MARK: - no signals


public extension SettingsSchemaProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSettingsSchema` instance.
    var settings_schema_ptr: UnsafeMutablePointer<GSettingsSchema> { return ptr.assumingMemoryBound(to: GSettingsSchema.self) }

    /// Get the ID of `schema`.
    func getID() -> String! {
        let rv = g_settings_schema_get_id(cast(settings_schema_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the key named `name` from `schema`.
    /// 
    /// It is a programmer error to request a key that does not exist.  See
    /// `g_settings_schema_list_keys()`.
    func getKey(name: UnsafePointer<gchar>) -> UnsafeMutablePointer<GSettingsSchemaKey>! {
        let rv = g_settings_schema_get_key(cast(settings_schema_ptr), name)
        return cast(rv)
    }

    /// Gets the path associated with `schema`, or `nil`.
    /// 
    /// Schemas may be single-instance or relocatable.  Single-instance
    /// schemas correspond to exactly one set of keys in the backend
    /// database: those located at the path returned by this function.
    /// 
    /// Relocatable schemas can be referenced by other schemas and can
    /// therefore describe multiple sets of keys at different locations.  For
    /// relocatable schemas, this function will return `nil`.
    func getPath() -> String! {
        let rv = g_settings_schema_get_path(cast(settings_schema_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Checks if `schema` has a key named `name`.
    func hasKey(name: UnsafePointer<gchar>) -> Bool {
        let rv = g_settings_schema_has_key(cast(settings_schema_ptr), name)
        return Bool(rv != 0)
    }

    /// Gets the list of children in `schema`.
    /// 
    /// You should free the return value with `g_strfreev()` when you are done
    /// with it.
    func listChildren() -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        let rv = g_settings_schema_list_children(cast(settings_schema_ptr))
        return cast(rv)
    }

    /// Introspects the list of keys on `schema`.
    /// 
    /// You should probably not be calling this function from "normal" code
    /// (since you should already know what keys are in your schema).  This
    /// function is intended for introspection reasons.
    func listKeys() -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        let rv = g_settings_schema_list_keys(cast(settings_schema_ptr))
        return cast(rv)
    }

    /// Increase the reference count of `schema`, returning a new reference.
    func ref() -> UnsafeMutablePointer<GSettingsSchema>! {
        let rv = g_settings_schema_ref(cast(settings_schema_ptr))
        return cast(rv)
    }

    /// Decrease the reference count of `schema`, possibly freeing it.
    func unref() {
        g_settings_schema_unref(cast(settings_schema_ptr))
    
    }
    /// Get the ID of `schema`.
    var id: String! {
        /// Get the ID of `schema`.
        get {
            let rv = g_settings_schema_get_id(cast(settings_schema_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the path associated with `schema`, or `nil`.
    /// 
    /// Schemas may be single-instance or relocatable.  Single-instance
    /// schemas correspond to exactly one set of keys in the backend
    /// database: those located at the path returned by this function.
    /// 
    /// Relocatable schemas can be referenced by other schemas and can
    /// therefore describe multiple sets of keys at different locations.  For
    /// relocatable schemas, this function will return `nil`.
    var path: String! {
        /// Gets the path associated with `schema`, or `nil`.
        /// 
        /// Schemas may be single-instance or relocatable.  Single-instance
        /// schemas correspond to exactly one set of keys in the backend
        /// database: those located at the path returned by this function.
        /// 
        /// Relocatable schemas can be referenced by other schemas and can
        /// therefore describe multiple sets of keys at different locations.  For
        /// relocatable schemas, this function will return `nil`.
        get {
            let rv = g_settings_schema_get_path(cast(settings_schema_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }
}



// MARK: - SettingsSchemaKey Record

/// The `SettingsSchemaKeyProtocol` protocol exposes the methods and properties of an underlying `GSettingsSchemaKey` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SettingsSchemaKey`.
/// Alternatively, use `SettingsSchemaKeyRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GSettingsSchemaKey` is an opaque data structure and can only be accessed
/// using the following functions.
public protocol SettingsSchemaKeyProtocol {
    /// Untyped pointer to the underlying `GSettingsSchemaKey` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSettingsSchemaKey` instance.
    var settings_schema_key_ptr: UnsafeMutablePointer<GSettingsSchemaKey> { get }
}

/// The `SettingsSchemaKeyRef` type acts as a lightweight Swift reference to an underlying `GSettingsSchemaKey` instance.
/// It exposes methods that can operate on this data type through `SettingsSchemaKeyProtocol` conformance.
/// Use `SettingsSchemaKeyRef` only as an `unowned` reference to an existing `GSettingsSchemaKey` instance.
///
/// `GSettingsSchemaKey` is an opaque data structure and can only be accessed
/// using the following functions.
public struct SettingsSchemaKeyRef: SettingsSchemaKeyProtocol {
    /// Untyped pointer to the underlying `GSettingsSchemaKey` instance.
    /// For type-safe access, use the generated, typed pointer `settings_schema_key_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SettingsSchemaKeyRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSettingsSchemaKey>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SettingsSchemaKeyProtocol`
    init<T: SettingsSchemaKeyProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaKeyProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaKeyProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaKeyProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaKeyProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaKeyProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SettingsSchemaKey` type acts as a reference-counted owner of an underlying `GSettingsSchemaKey` instance.
/// It provides the methods that can operate on this data type through `SettingsSchemaKeyProtocol` conformance.
/// Use `SettingsSchemaKey` as a strong reference or owner of a `GSettingsSchemaKey` instance.
///
/// `GSettingsSchemaKey` is an opaque data structure and can only be accessed
/// using the following functions.
open class SettingsSchemaKey: SettingsSchemaKeyProtocol {
    /// Untyped pointer to the underlying `GSettingsSchemaKey` instance.
    /// For type-safe access, use the generated, typed pointer `settings_schema_key_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsSchemaKey` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSettingsSchemaKey>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSettingsSchemaKey`.
    /// i.e., ownership is transferred to the `SettingsSchemaKey` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSettingsSchemaKey>) {
        ptr = UnsafeMutableRawPointer(op)
        g_settings_schema_key_ref(cast(settings_schema_key_ptr))
    }

    /// Reference intialiser for a related type that implements `SettingsSchemaKeyProtocol`
    /// Will retain `GSettingsSchemaKey`.
    /// - Parameter other: an instance of a related type that implements `SettingsSchemaKeyProtocol`
    public init<T: SettingsSchemaKeyProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.settings_schema_key_ptr)
        g_settings_schema_key_ref(cast(settings_schema_key_ptr))
    }

    /// Releases the underlying `GSettingsSchemaKey` instance using `g_settings_schema_key_unref`.
    deinit {
        g_settings_schema_key_unref(cast(settings_schema_key_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaKeyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaKeyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_settings_schema_key_ref(cast(settings_schema_key_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaKeyProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaKeyProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_settings_schema_key_ref(cast(settings_schema_key_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaKeyProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaKeyProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_settings_schema_key_ref(cast(settings_schema_key_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaKeyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaKeyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_settings_schema_key_ref(cast(settings_schema_key_ptr))
    }



}

// MARK: - no SettingsSchemaKey properties

// MARK: - no signals


public extension SettingsSchemaKeyProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSettingsSchemaKey` instance.
    var settings_schema_key_ptr: UnsafeMutablePointer<GSettingsSchemaKey> { return ptr.assumingMemoryBound(to: GSettingsSchemaKey.self) }

    /// Gets the default value for `key`.
    /// 
    /// Note that this is the default value according to the schema.  System
    /// administrator defaults and lockdown are not visible via this API.
    func getDefaultValue() -> UnsafeMutablePointer<GVariant>! {
        let rv = g_settings_schema_key_get_default_value(cast(settings_schema_key_ptr))
        return cast(rv)
    }

    /// Gets the description for `key`.
    /// 
    /// If no description has been provided in the schema for `key`, returns
    /// `nil`.
    /// 
    /// The description can be one sentence to several paragraphs in length.
    /// Paragraphs are delimited with a double newline.  Descriptions can be
    /// translated and the value returned from this function is is the
    /// current locale.
    /// 
    /// This function is slow.  The summary and description information for
    /// the schemas is not stored in the compiled schema database so this
    /// function has to parse all of the source XML files in the schema
    /// directory.
    func getDescription() -> String! {
        let rv = g_settings_schema_key_get_description(cast(settings_schema_key_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the name of `key`.
    func getName() -> String! {
        let rv = g_settings_schema_key_get_name(cast(settings_schema_key_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Queries the range of a key.
    /// 
    /// This function will return a `GVariant` that fully describes the range
    /// of values that are valid for `key`.
    /// 
    /// The type of `GVariant` returned is `(sv)`. The string describes
    /// the type of range restriction in effect. The type and meaning of
    /// the value contained in the variant depends on the string.
    /// 
    /// If the string is `'type'` then the variant contains an empty array.
    /// The element type of that empty array is the expected type of value
    /// and all values of that type are valid.
    /// 
    /// If the string is `'enum'` then the variant contains an array
    /// enumerating the possible values. Each item in the array is
    /// a possible valid value and no other values are valid.
    /// 
    /// If the string is `'flags'` then the variant contains an array. Each
    /// item in the array is a value that may appear zero or one times in an
    /// array to be used as the value for this key. For example, if the
    /// variant contained the array `['x', 'y']` then the valid values for
    /// the key would be `[]`, `['x']`, `['y']`, `['x', 'y']` and
    /// `['y', 'x']`.
    /// 
    /// Finally, if the string is `'range'` then the variant contains a pair
    /// of like-typed values -- the minimum and maximum permissible values
    /// for this key.
    /// 
    /// This information should not be used by normal programs.  It is
    /// considered to be a hint for introspection purposes.  Normal programs
    /// should already know what is permitted by their own schema.  The
    /// format may change in any way in the future -- but particularly, new
    /// forms may be added to the possibilities described above.
    /// 
    /// You should free the returned value with `g_variant_unref()` when it is
    /// no longer needed.
    func getRange() -> UnsafeMutablePointer<GVariant>! {
        let rv = g_settings_schema_key_get_range(cast(settings_schema_key_ptr))
        return cast(rv)
    }

    /// Gets the summary for `key`.
    /// 
    /// If no summary has been provided in the schema for `key`, returns
    /// `nil`.
    /// 
    /// The summary is a short description of the purpose of the key; usually
    /// one short sentence.  Summaries can be translated and the value
    /// returned from this function is is the current locale.
    /// 
    /// This function is slow.  The summary and description information for
    /// the schemas is not stored in the compiled schema database so this
    /// function has to parse all of the source XML files in the schema
    /// directory.
    func getSummary() -> String! {
        let rv = g_settings_schema_key_get_summary(cast(settings_schema_key_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the `GVariantType` of `key`.
    func getValueType() -> UnsafePointer<GVariantType>! {
        let rv = g_settings_schema_key_get_value_type(cast(settings_schema_key_ptr))
        return cast(rv)
    }

    /// Checks if the given `value` is of the correct type and within the
    /// permitted range for `key`.
    /// 
    /// It is a programmer error if `value` is not of the correct type -- you
    /// must check for this first.
    func rangeCheck(value: VariantProtocol) -> Bool {
        let rv = g_settings_schema_key_range_check(cast(settings_schema_key_ptr), cast(value.ptr))
        return Bool(rv != 0)
    }

    /// Increase the reference count of `key`, returning a new reference.
    func ref() -> UnsafeMutablePointer<GSettingsSchemaKey>! {
        let rv = g_settings_schema_key_ref(cast(settings_schema_key_ptr))
        return cast(rv)
    }

    /// Decrease the reference count of `key`, possibly freeing it.
    func unref() {
        g_settings_schema_key_unref(cast(settings_schema_key_ptr))
    
    }
    /// Gets the default value for `key`.
    /// 
    /// Note that this is the default value according to the schema.  System
    /// administrator defaults and lockdown are not visible via this API.
    var defaultValue: UnsafeMutablePointer<GVariant>! {
        /// Gets the default value for `key`.
        /// 
        /// Note that this is the default value according to the schema.  System
        /// administrator defaults and lockdown are not visible via this API.
        get {
            let rv = g_settings_schema_key_get_default_value(cast(settings_schema_key_ptr))
            return cast(rv)
        }
    }

    /// Gets the description for `key`.
    /// 
    /// If no description has been provided in the schema for `key`, returns
    /// `nil`.
    /// 
    /// The description can be one sentence to several paragraphs in length.
    /// Paragraphs are delimited with a double newline.  Descriptions can be
    /// translated and the value returned from this function is is the
    /// current locale.
    /// 
    /// This function is slow.  The summary and description information for
    /// the schemas is not stored in the compiled schema database so this
    /// function has to parse all of the source XML files in the schema
    /// directory.
    var description: String! {
        /// Gets the description for `key`.
        /// 
        /// If no description has been provided in the schema for `key`, returns
        /// `nil`.
        /// 
        /// The description can be one sentence to several paragraphs in length.
        /// Paragraphs are delimited with a double newline.  Descriptions can be
        /// translated and the value returned from this function is is the
        /// current locale.
        /// 
        /// This function is slow.  The summary and description information for
        /// the schemas is not stored in the compiled schema database so this
        /// function has to parse all of the source XML files in the schema
        /// directory.
        get {
            let rv = g_settings_schema_key_get_description(cast(settings_schema_key_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the name of `key`.
    var name: String! {
        /// Gets the name of `key`.
        get {
            let rv = g_settings_schema_key_get_name(cast(settings_schema_key_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Queries the range of a key.
    /// 
    /// This function will return a `GVariant` that fully describes the range
    /// of values that are valid for `key`.
    /// 
    /// The type of `GVariant` returned is `(sv)`. The string describes
    /// the type of range restriction in effect. The type and meaning of
    /// the value contained in the variant depends on the string.
    /// 
    /// If the string is `'type'` then the variant contains an empty array.
    /// The element type of that empty array is the expected type of value
    /// and all values of that type are valid.
    /// 
    /// If the string is `'enum'` then the variant contains an array
    /// enumerating the possible values. Each item in the array is
    /// a possible valid value and no other values are valid.
    /// 
    /// If the string is `'flags'` then the variant contains an array. Each
    /// item in the array is a value that may appear zero or one times in an
    /// array to be used as the value for this key. For example, if the
    /// variant contained the array `['x', 'y']` then the valid values for
    /// the key would be `[]`, `['x']`, `['y']`, `['x', 'y']` and
    /// `['y', 'x']`.
    /// 
    /// Finally, if the string is `'range'` then the variant contains a pair
    /// of like-typed values -- the minimum and maximum permissible values
    /// for this key.
    /// 
    /// This information should not be used by normal programs.  It is
    /// considered to be a hint for introspection purposes.  Normal programs
    /// should already know what is permitted by their own schema.  The
    /// format may change in any way in the future -- but particularly, new
    /// forms may be added to the possibilities described above.
    /// 
    /// You should free the returned value with `g_variant_unref()` when it is
    /// no longer needed.
    var range: UnsafeMutablePointer<GVariant>! {
        /// Queries the range of a key.
        /// 
        /// This function will return a `GVariant` that fully describes the range
        /// of values that are valid for `key`.
        /// 
        /// The type of `GVariant` returned is `(sv)`. The string describes
        /// the type of range restriction in effect. The type and meaning of
        /// the value contained in the variant depends on the string.
        /// 
        /// If the string is `'type'` then the variant contains an empty array.
        /// The element type of that empty array is the expected type of value
        /// and all values of that type are valid.
        /// 
        /// If the string is `'enum'` then the variant contains an array
        /// enumerating the possible values. Each item in the array is
        /// a possible valid value and no other values are valid.
        /// 
        /// If the string is `'flags'` then the variant contains an array. Each
        /// item in the array is a value that may appear zero or one times in an
        /// array to be used as the value for this key. For example, if the
        /// variant contained the array `['x', 'y']` then the valid values for
        /// the key would be `[]`, `['x']`, `['y']`, `['x', 'y']` and
        /// `['y', 'x']`.
        /// 
        /// Finally, if the string is `'range'` then the variant contains a pair
        /// of like-typed values -- the minimum and maximum permissible values
        /// for this key.
        /// 
        /// This information should not be used by normal programs.  It is
        /// considered to be a hint for introspection purposes.  Normal programs
        /// should already know what is permitted by their own schema.  The
        /// format may change in any way in the future -- but particularly, new
        /// forms may be added to the possibilities described above.
        /// 
        /// You should free the returned value with `g_variant_unref()` when it is
        /// no longer needed.
        get {
            let rv = g_settings_schema_key_get_range(cast(settings_schema_key_ptr))
            return cast(rv)
        }
    }

    /// Gets the summary for `key`.
    /// 
    /// If no summary has been provided in the schema for `key`, returns
    /// `nil`.
    /// 
    /// The summary is a short description of the purpose of the key; usually
    /// one short sentence.  Summaries can be translated and the value
    /// returned from this function is is the current locale.
    /// 
    /// This function is slow.  The summary and description information for
    /// the schemas is not stored in the compiled schema database so this
    /// function has to parse all of the source XML files in the schema
    /// directory.
    var summary: String! {
        /// Gets the summary for `key`.
        /// 
        /// If no summary has been provided in the schema for `key`, returns
        /// `nil`.
        /// 
        /// The summary is a short description of the purpose of the key; usually
        /// one short sentence.  Summaries can be translated and the value
        /// returned from this function is is the current locale.
        /// 
        /// This function is slow.  The summary and description information for
        /// the schemas is not stored in the compiled schema database so this
        /// function has to parse all of the source XML files in the schema
        /// directory.
        get {
            let rv = g_settings_schema_key_get_summary(cast(settings_schema_key_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the `GVariantType` of `key`.
    var valueType: UnsafePointer<GVariantType>! {
        /// Gets the `GVariantType` of `key`.
        get {
            let rv = g_settings_schema_key_get_value_type(cast(settings_schema_key_ptr))
            return cast(rv)
        }
    }
}



// MARK: - SettingsSchemaSource Record

/// The `SettingsSchemaSourceProtocol` protocol exposes the methods and properties of an underlying `GSettingsSchemaSource` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SettingsSchemaSource`.
/// Alternatively, use `SettingsSchemaSourceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// This is an opaque structure type.  You may not access it directly.
public protocol SettingsSchemaSourceProtocol {
    /// Untyped pointer to the underlying `GSettingsSchemaSource` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSettingsSchemaSource` instance.
    var settings_schema_source_ptr: UnsafeMutablePointer<GSettingsSchemaSource> { get }
}

/// The `SettingsSchemaSourceRef` type acts as a lightweight Swift reference to an underlying `GSettingsSchemaSource` instance.
/// It exposes methods that can operate on this data type through `SettingsSchemaSourceProtocol` conformance.
/// Use `SettingsSchemaSourceRef` only as an `unowned` reference to an existing `GSettingsSchemaSource` instance.
///
/// This is an opaque structure type.  You may not access it directly.
public struct SettingsSchemaSourceRef: SettingsSchemaSourceProtocol {
    /// Untyped pointer to the underlying `GSettingsSchemaSource` instance.
    /// For type-safe access, use the generated, typed pointer `settings_schema_source_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SettingsSchemaSourceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSettingsSchemaSource>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SettingsSchemaSourceProtocol`
    init<T: SettingsSchemaSourceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaSourceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaSourceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaSourceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaSourceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaSourceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Attempts to create a new schema source corresponding to the contents
    /// of the given directory.
    /// 
    /// This function is not required for normal uses of `GSettings` but it
    /// may be useful to authors of plugin management systems.
    /// 
    /// The directory should contain a file called `gschemas.compiled` as
    /// produced by the [glib-compile-schemas](#glib-compile-schemas) tool.
    /// 
    /// If `trusted` is `true` then `gschemas.compiled` is trusted not to be
    /// corrupted. This assumption has a performance advantage, but can result
    /// in crashes or inconsistent behaviour in the case of a corrupted file.
    /// Generally, you should set `trusted` to `true` for files installed by the
    /// system and to `false` for files in the home directory.
    /// 
    /// In either case, an empty file or some types of corruption in the file will
    /// result in `G_FILE_ERROR_INVAL` being returned.
    /// 
    /// If `parent` is non-`nil` then there are two effects.
    /// 
    /// First, if `g_settings_schema_source_lookup()` is called with the
    /// `recursive` flag set to `true` and the schema can not be found in the
    /// source, the lookup will recurse to the parent.
    /// 
    /// Second, any references to other schemas specified within this
    /// source (ie: `child` or `extends`) references may be resolved
    /// from the `parent`.
    /// 
    /// For this second reason, except in very unusual situations, the
    /// `parent` should probably be given as the default schema source, as
    /// returned by `g_settings_schema_source_get_default()`.
    init(directory: UnsafePointer<gchar>, parent: SettingsSchemaSourceProtocol, trusted: Bool) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_settings_schema_source_new_from_directory(directory, cast(parent.ptr), gboolean(trusted ? 1 : 0), &error)
        if let error = error {
                throw ErrorType(error)
        }
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
    /// Attempts to create a new schema source corresponding to the contents
    /// of the given directory.
    /// 
    /// This function is not required for normal uses of `GSettings` but it
    /// may be useful to authors of plugin management systems.
    /// 
    /// The directory should contain a file called `gschemas.compiled` as
    /// produced by the [glib-compile-schemas](#glib-compile-schemas) tool.
    /// 
    /// If `trusted` is `true` then `gschemas.compiled` is trusted not to be
    /// corrupted. This assumption has a performance advantage, but can result
    /// in crashes or inconsistent behaviour in the case of a corrupted file.
    /// Generally, you should set `trusted` to `true` for files installed by the
    /// system and to `false` for files in the home directory.
    /// 
    /// In either case, an empty file or some types of corruption in the file will
    /// result in `G_FILE_ERROR_INVAL` being returned.
    /// 
    /// If `parent` is non-`nil` then there are two effects.
    /// 
    /// First, if `g_settings_schema_source_lookup()` is called with the
    /// `recursive` flag set to `true` and the schema can not be found in the
    /// source, the lookup will recurse to the parent.
    /// 
    /// Second, any references to other schemas specified within this
    /// source (ie: `child` or `extends`) references may be resolved
    /// from the `parent`.
    /// 
    /// For this second reason, except in very unusual situations, the
    /// `parent` should probably be given as the default schema source, as
    /// returned by `g_settings_schema_source_get_default()`.
    static func newFrom(directory: UnsafePointer<gchar>, parent: SettingsSchemaSourceProtocol, trusted: Bool) throws -> SettingsSchemaSourceRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_settings_schema_source_new_from_directory(directory, cast(parent.ptr), gboolean(trusted ? 1 : 0), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { SettingsSchemaSourceRef(cast($0)) }
    }

    /// Gets the default system schema source.
    /// 
    /// This function is not required for normal uses of `GSettings` but it
    /// may be useful to authors of plugin management systems or to those who
    /// want to introspect the content of schemas.
    /// 
    /// If no schemas are installed, `nil` will be returned.
    /// 
    /// The returned source may actually consist of multiple schema sources
    /// from different directories, depending on which directories were given
    /// in `XDG_DATA_DIRS` and `GSETTINGS_SCHEMA_DIR`. For this reason, all
    /// lookups performed against the default source should probably be done
    /// recursively.
    static func getDefault() -> SettingsSchemaSourceRef! {
        let rv = g_settings_schema_source_get_default()
        return rv.map { SettingsSchemaSourceRef(cast($0)) }
    }
}

/// The `SettingsSchemaSource` type acts as a reference-counted owner of an underlying `GSettingsSchemaSource` instance.
/// It provides the methods that can operate on this data type through `SettingsSchemaSourceProtocol` conformance.
/// Use `SettingsSchemaSource` as a strong reference or owner of a `GSettingsSchemaSource` instance.
///
/// This is an opaque structure type.  You may not access it directly.
open class SettingsSchemaSource: SettingsSchemaSourceProtocol {
    /// Untyped pointer to the underlying `GSettingsSchemaSource` instance.
    /// For type-safe access, use the generated, typed pointer `settings_schema_source_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SettingsSchemaSource` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSettingsSchemaSource>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GSettingsSchemaSource`.
    /// i.e., ownership is transferred to the `SettingsSchemaSource` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSettingsSchemaSource>) {
        ptr = UnsafeMutableRawPointer(op)
        g_settings_schema_source_ref(cast(settings_schema_source_ptr))
    }

    /// Reference intialiser for a related type that implements `SettingsSchemaSourceProtocol`
    /// Will retain `GSettingsSchemaSource`.
    /// - Parameter other: an instance of a related type that implements `SettingsSchemaSourceProtocol`
    public init<T: SettingsSchemaSourceProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.settings_schema_source_ptr)
        g_settings_schema_source_ref(cast(settings_schema_source_ptr))
    }

    /// Releases the underlying `GSettingsSchemaSource` instance using `g_settings_schema_source_unref`.
    deinit {
        g_settings_schema_source_unref(cast(settings_schema_source_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaSourceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaSourceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_settings_schema_source_ref(cast(settings_schema_source_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaSourceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaSourceProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_settings_schema_source_ref(cast(settings_schema_source_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaSourceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaSourceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_settings_schema_source_ref(cast(settings_schema_source_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaSourceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SettingsSchemaSourceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_settings_schema_source_ref(cast(settings_schema_source_ptr))
    }

    /// Attempts to create a new schema source corresponding to the contents
    /// of the given directory.
    /// 
    /// This function is not required for normal uses of `GSettings` but it
    /// may be useful to authors of plugin management systems.
    /// 
    /// The directory should contain a file called `gschemas.compiled` as
    /// produced by the [glib-compile-schemas](#glib-compile-schemas) tool.
    /// 
    /// If `trusted` is `true` then `gschemas.compiled` is trusted not to be
    /// corrupted. This assumption has a performance advantage, but can result
    /// in crashes or inconsistent behaviour in the case of a corrupted file.
    /// Generally, you should set `trusted` to `true` for files installed by the
    /// system and to `false` for files in the home directory.
    /// 
    /// In either case, an empty file or some types of corruption in the file will
    /// result in `G_FILE_ERROR_INVAL` being returned.
    /// 
    /// If `parent` is non-`nil` then there are two effects.
    /// 
    /// First, if `g_settings_schema_source_lookup()` is called with the
    /// `recursive` flag set to `true` and the schema can not be found in the
    /// source, the lookup will recurse to the parent.
    /// 
    /// Second, any references to other schemas specified within this
    /// source (ie: `child` or `extends`) references may be resolved
    /// from the `parent`.
    /// 
    /// For this second reason, except in very unusual situations, the
    /// `parent` should probably be given as the default schema source, as
    /// returned by `g_settings_schema_source_get_default()`.
    public init(directory: UnsafePointer<gchar>, parent: SettingsSchemaSourceProtocol, trusted: Bool) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_settings_schema_source_new_from_directory(directory, cast(parent.ptr), gboolean(trusted ? 1 : 0), &error)
        if let error = error {
                throw ErrorType(error)
        }
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// Attempts to create a new schema source corresponding to the contents
    /// of the given directory.
    /// 
    /// This function is not required for normal uses of `GSettings` but it
    /// may be useful to authors of plugin management systems.
    /// 
    /// The directory should contain a file called `gschemas.compiled` as
    /// produced by the [glib-compile-schemas](#glib-compile-schemas) tool.
    /// 
    /// If `trusted` is `true` then `gschemas.compiled` is trusted not to be
    /// corrupted. This assumption has a performance advantage, but can result
    /// in crashes or inconsistent behaviour in the case of a corrupted file.
    /// Generally, you should set `trusted` to `true` for files installed by the
    /// system and to `false` for files in the home directory.
    /// 
    /// In either case, an empty file or some types of corruption in the file will
    /// result in `G_FILE_ERROR_INVAL` being returned.
    /// 
    /// If `parent` is non-`nil` then there are two effects.
    /// 
    /// First, if `g_settings_schema_source_lookup()` is called with the
    /// `recursive` flag set to `true` and the schema can not be found in the
    /// source, the lookup will recurse to the parent.
    /// 
    /// Second, any references to other schemas specified within this
    /// source (ie: `child` or `extends`) references may be resolved
    /// from the `parent`.
    /// 
    /// For this second reason, except in very unusual situations, the
    /// `parent` should probably be given as the default schema source, as
    /// returned by `g_settings_schema_source_get_default()`.
    public static func newFrom(directory: UnsafePointer<gchar>, parent: SettingsSchemaSourceProtocol, trusted: Bool) throws -> SettingsSchemaSource! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_settings_schema_source_new_from_directory(directory, cast(parent.ptr), gboolean(trusted ? 1 : 0), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { SettingsSchemaSource(cast($0)) }
    }

    /// Gets the default system schema source.
    /// 
    /// This function is not required for normal uses of `GSettings` but it
    /// may be useful to authors of plugin management systems or to those who
    /// want to introspect the content of schemas.
    /// 
    /// If no schemas are installed, `nil` will be returned.
    /// 
    /// The returned source may actually consist of multiple schema sources
    /// from different directories, depending on which directories were given
    /// in `XDG_DATA_DIRS` and `GSETTINGS_SCHEMA_DIR`. For this reason, all
    /// lookups performed against the default source should probably be done
    /// recursively.
    public static func getDefault() -> SettingsSchemaSource! {
        let rv = g_settings_schema_source_get_default()
        return rv.map { SettingsSchemaSource(cast($0)) }
    }

}

// MARK: - no SettingsSchemaSource properties

// MARK: - no signals


public extension SettingsSchemaSourceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSettingsSchemaSource` instance.
    var settings_schema_source_ptr: UnsafeMutablePointer<GSettingsSchemaSource> { return ptr.assumingMemoryBound(to: GSettingsSchemaSource.self) }

    /// Lists the schemas in a given source.
    /// 
    /// If `recursive` is `true` then include parent sources.  If `false` then
    /// only include the schemas from one source (ie: one directory).  You
    /// probably want `true`.
    /// 
    /// Non-relocatable schemas are those for which you can call
    /// `g_settings_new()`.  Relocatable schemas are those for which you must
    /// use `g_settings_new_with_path()`.
    /// 
    /// Do not call this function from normal programs.  This is designed for
    /// use by database editors, commandline tools, etc.
    func listSchemas(recursive: Bool, nonRelocatable non_relocatable: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<gchar>>>, relocatable: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<gchar>>>) {
        g_settings_schema_source_list_schemas(cast(settings_schema_source_ptr), gboolean(recursive ? 1 : 0), cast(non_relocatable), cast(relocatable))
    
    }

    /// Looks up a schema with the identifier `schema_id` in `source`.
    /// 
    /// This function is not required for normal uses of `GSettings` but it
    /// may be useful to authors of plugin management systems or to those who
    /// want to introspect the content of schemas.
    /// 
    /// If the schema isn't found directly in `source` and `recursive` is `true`
    /// then the parent sources will also be checked.
    /// 
    /// If the schema isn't found, `nil` is returned.
    func lookup(schemaID schema_id: UnsafePointer<gchar>, recursive: Bool) -> UnsafeMutablePointer<GSettingsSchema>! {
        let rv = g_settings_schema_source_lookup(cast(settings_schema_source_ptr), schema_id, gboolean(recursive ? 1 : 0))
        return cast(rv)
    }

    /// Increase the reference count of `source`, returning a new reference.
    func ref() -> UnsafeMutablePointer<GSettingsSchemaSource>! {
        let rv = g_settings_schema_source_ref(cast(settings_schema_source_ptr))
        return cast(rv)
    }

    /// Decrease the reference count of `source`, possibly freeing it.
    func unref() {
        g_settings_schema_source_unref(cast(settings_schema_source_ptr))
    
    }
}



// MARK: - SimpleActionGroupClass Record

/// The `SimpleActionGroupClassProtocol` protocol exposes the methods and properties of an underlying `GSimpleActionGroupClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SimpleActionGroupClass`.
/// Alternatively, use `SimpleActionGroupClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SimpleActionGroupClassProtocol {
    /// Untyped pointer to the underlying `GSimpleActionGroupClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSimpleActionGroupClass` instance.
    var _ptr: UnsafeMutablePointer<GSimpleActionGroupClass> { get }
}

/// The `SimpleActionGroupClassRef` type acts as a lightweight Swift reference to an underlying `GSimpleActionGroupClass` instance.
/// It exposes methods that can operate on this data type through `SimpleActionGroupClassProtocol` conformance.
/// Use `SimpleActionGroupClassRef` only as an `unowned` reference to an existing `GSimpleActionGroupClass` instance.
///

public struct SimpleActionGroupClassRef: SimpleActionGroupClassProtocol {
    /// Untyped pointer to the underlying `GSimpleActionGroupClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SimpleActionGroupClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSimpleActionGroupClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SimpleActionGroupClassProtocol`
    init<T: SimpleActionGroupClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SimpleActionGroupClass` type acts as an owner of an underlying `GSimpleActionGroupClass` instance.
/// It provides the methods that can operate on this data type through `SimpleActionGroupClassProtocol` conformance.
/// Use `SimpleActionGroupClass` as a strong reference or owner of a `GSimpleActionGroupClass` instance.
///

open class SimpleActionGroupClass: SimpleActionGroupClassProtocol {
    /// Untyped pointer to the underlying `GSimpleActionGroupClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleActionGroupClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSimpleActionGroupClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSimpleActionGroupClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SimpleActionGroupClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSimpleActionGroupClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSimpleActionGroupClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `SimpleActionGroupClassProtocol`
    /// `GSimpleActionGroupClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SimpleActionGroupClassProtocol`
    public init<T: SimpleActionGroupClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GSimpleActionGroupClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GSimpleActionGroupClass`.
    deinit {
        // no reference counting for GSimpleActionGroupClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSimpleActionGroupClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSimpleActionGroupClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSimpleActionGroupClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSimpleActionGroupClass, cannot ref(cast(_ptr))
    }



}

// MARK: - no SimpleActionGroupClass properties

// MARK: - no signals


public extension SimpleActionGroupClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSimpleActionGroupClass` instance.
    var _ptr: UnsafeMutablePointer<GSimpleActionGroupClass> { return ptr.assumingMemoryBound(to: GSimpleActionGroupClass.self) }

}



// MARK: - SimpleActionGroupPrivate Record

/// The `SimpleActionGroupPrivateProtocol` protocol exposes the methods and properties of an underlying `GSimpleActionGroupPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SimpleActionGroupPrivate`.
/// Alternatively, use `SimpleActionGroupPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SimpleActionGroupPrivateProtocol {
    /// Untyped pointer to the underlying `GSimpleActionGroupPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSimpleActionGroupPrivate` instance.
    var _ptr: UnsafeMutablePointer<GSimpleActionGroupPrivate> { get }
}

/// The `SimpleActionGroupPrivateRef` type acts as a lightweight Swift reference to an underlying `GSimpleActionGroupPrivate` instance.
/// It exposes methods that can operate on this data type through `SimpleActionGroupPrivateProtocol` conformance.
/// Use `SimpleActionGroupPrivateRef` only as an `unowned` reference to an existing `GSimpleActionGroupPrivate` instance.
///

public struct SimpleActionGroupPrivateRef: SimpleActionGroupPrivateProtocol {
    /// Untyped pointer to the underlying `GSimpleActionGroupPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SimpleActionGroupPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSimpleActionGroupPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SimpleActionGroupPrivateProtocol`
    init<T: SimpleActionGroupPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SimpleActionGroupPrivate` type acts as an owner of an underlying `GSimpleActionGroupPrivate` instance.
/// It provides the methods that can operate on this data type through `SimpleActionGroupPrivateProtocol` conformance.
/// Use `SimpleActionGroupPrivate` as a strong reference or owner of a `GSimpleActionGroupPrivate` instance.
///

open class SimpleActionGroupPrivate: SimpleActionGroupPrivateProtocol {
    /// Untyped pointer to the underlying `GSimpleActionGroupPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleActionGroupPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSimpleActionGroupPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSimpleActionGroupPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SimpleActionGroupPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSimpleActionGroupPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSimpleActionGroupPrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `SimpleActionGroupPrivateProtocol`
    /// `GSimpleActionGroupPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SimpleActionGroupPrivateProtocol`
    public init<T: SimpleActionGroupPrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GSimpleActionGroupPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GSimpleActionGroupPrivate`.
    deinit {
        // no reference counting for GSimpleActionGroupPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSimpleActionGroupPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupPrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSimpleActionGroupPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSimpleActionGroupPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleActionGroupPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSimpleActionGroupPrivate, cannot ref(cast(_ptr))
    }



}

// MARK: - no SimpleActionGroupPrivate properties

// MARK: - no signals


public extension SimpleActionGroupPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSimpleActionGroupPrivate` instance.
    var _ptr: UnsafeMutablePointer<GSimpleActionGroupPrivate> { return ptr.assumingMemoryBound(to: GSimpleActionGroupPrivate.self) }

}



// MARK: - SimpleAsyncResultClass Record

/// The `SimpleAsyncResultClassProtocol` protocol exposes the methods and properties of an underlying `GSimpleAsyncResultClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SimpleAsyncResultClass`.
/// Alternatively, use `SimpleAsyncResultClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SimpleAsyncResultClassProtocol {
    /// Untyped pointer to the underlying `GSimpleAsyncResultClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSimpleAsyncResultClass` instance.
    var _ptr: UnsafeMutablePointer<GSimpleAsyncResultClass> { get }
}

/// The `SimpleAsyncResultClassRef` type acts as a lightweight Swift reference to an underlying `GSimpleAsyncResultClass` instance.
/// It exposes methods that can operate on this data type through `SimpleAsyncResultClassProtocol` conformance.
/// Use `SimpleAsyncResultClassRef` only as an `unowned` reference to an existing `GSimpleAsyncResultClass` instance.
///

public struct SimpleAsyncResultClassRef: SimpleAsyncResultClassProtocol {
    /// Untyped pointer to the underlying `GSimpleAsyncResultClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SimpleAsyncResultClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSimpleAsyncResultClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SimpleAsyncResultClassProtocol`
    init<T: SimpleAsyncResultClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SimpleAsyncResultClass` type acts as an owner of an underlying `GSimpleAsyncResultClass` instance.
/// It provides the methods that can operate on this data type through `SimpleAsyncResultClassProtocol` conformance.
/// Use `SimpleAsyncResultClass` as a strong reference or owner of a `GSimpleAsyncResultClass` instance.
///

open class SimpleAsyncResultClass: SimpleAsyncResultClassProtocol {
    /// Untyped pointer to the underlying `GSimpleAsyncResultClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleAsyncResultClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSimpleAsyncResultClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSimpleAsyncResultClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SimpleAsyncResultClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSimpleAsyncResultClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSimpleAsyncResultClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `SimpleAsyncResultClassProtocol`
    /// `GSimpleAsyncResultClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SimpleAsyncResultClassProtocol`
    public init<T: SimpleAsyncResultClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GSimpleAsyncResultClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GSimpleAsyncResultClass`.
    deinit {
        // no reference counting for GSimpleAsyncResultClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSimpleAsyncResultClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSimpleAsyncResultClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSimpleAsyncResultClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleAsyncResultClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSimpleAsyncResultClass, cannot ref(cast(_ptr))
    }



}

// MARK: - no SimpleAsyncResultClass properties

// MARK: - no signals


public extension SimpleAsyncResultClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSimpleAsyncResultClass` instance.
    var _ptr: UnsafeMutablePointer<GSimpleAsyncResultClass> { return ptr.assumingMemoryBound(to: GSimpleAsyncResultClass.self) }

}



// MARK: - SimpleProxyResolverClass Record

/// The `SimpleProxyResolverClassProtocol` protocol exposes the methods and properties of an underlying `GSimpleProxyResolverClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SimpleProxyResolverClass`.
/// Alternatively, use `SimpleProxyResolverClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SimpleProxyResolverClassProtocol {
    /// Untyped pointer to the underlying `GSimpleProxyResolverClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSimpleProxyResolverClass` instance.
    var _ptr: UnsafeMutablePointer<GSimpleProxyResolverClass> { get }
}

/// The `SimpleProxyResolverClassRef` type acts as a lightweight Swift reference to an underlying `GSimpleProxyResolverClass` instance.
/// It exposes methods that can operate on this data type through `SimpleProxyResolverClassProtocol` conformance.
/// Use `SimpleProxyResolverClassRef` only as an `unowned` reference to an existing `GSimpleProxyResolverClass` instance.
///

public struct SimpleProxyResolverClassRef: SimpleProxyResolverClassProtocol {
    /// Untyped pointer to the underlying `GSimpleProxyResolverClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SimpleProxyResolverClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSimpleProxyResolverClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SimpleProxyResolverClassProtocol`
    init<T: SimpleProxyResolverClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SimpleProxyResolverClass` type acts as an owner of an underlying `GSimpleProxyResolverClass` instance.
/// It provides the methods that can operate on this data type through `SimpleProxyResolverClassProtocol` conformance.
/// Use `SimpleProxyResolverClass` as a strong reference or owner of a `GSimpleProxyResolverClass` instance.
///

open class SimpleProxyResolverClass: SimpleProxyResolverClassProtocol {
    /// Untyped pointer to the underlying `GSimpleProxyResolverClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleProxyResolverClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSimpleProxyResolverClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSimpleProxyResolverClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SimpleProxyResolverClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSimpleProxyResolverClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSimpleProxyResolverClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `SimpleProxyResolverClassProtocol`
    /// `GSimpleProxyResolverClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SimpleProxyResolverClassProtocol`
    public init<T: SimpleProxyResolverClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GSimpleProxyResolverClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GSimpleProxyResolverClass`.
    deinit {
        // no reference counting for GSimpleProxyResolverClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSimpleProxyResolverClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSimpleProxyResolverClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSimpleProxyResolverClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSimpleProxyResolverClass, cannot ref(cast(_ptr))
    }



}

// MARK: - no SimpleProxyResolverClass properties

// MARK: - no signals


public extension SimpleProxyResolverClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSimpleProxyResolverClass` instance.
    var _ptr: UnsafeMutablePointer<GSimpleProxyResolverClass> { return ptr.assumingMemoryBound(to: GSimpleProxyResolverClass.self) }

}



// MARK: - SimpleProxyResolverPrivate Record

/// The `SimpleProxyResolverPrivateProtocol` protocol exposes the methods and properties of an underlying `GSimpleProxyResolverPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SimpleProxyResolverPrivate`.
/// Alternatively, use `SimpleProxyResolverPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SimpleProxyResolverPrivateProtocol {
    /// Untyped pointer to the underlying `GSimpleProxyResolverPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSimpleProxyResolverPrivate` instance.
    var _ptr: UnsafeMutablePointer<GSimpleProxyResolverPrivate> { get }
}

/// The `SimpleProxyResolverPrivateRef` type acts as a lightweight Swift reference to an underlying `GSimpleProxyResolverPrivate` instance.
/// It exposes methods that can operate on this data type through `SimpleProxyResolverPrivateProtocol` conformance.
/// Use `SimpleProxyResolverPrivateRef` only as an `unowned` reference to an existing `GSimpleProxyResolverPrivate` instance.
///

public struct SimpleProxyResolverPrivateRef: SimpleProxyResolverPrivateProtocol {
    /// Untyped pointer to the underlying `GSimpleProxyResolverPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SimpleProxyResolverPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSimpleProxyResolverPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SimpleProxyResolverPrivateProtocol`
    init<T: SimpleProxyResolverPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SimpleProxyResolverPrivate` type acts as an owner of an underlying `GSimpleProxyResolverPrivate` instance.
/// It provides the methods that can operate on this data type through `SimpleProxyResolverPrivateProtocol` conformance.
/// Use `SimpleProxyResolverPrivate` as a strong reference or owner of a `GSimpleProxyResolverPrivate` instance.
///

open class SimpleProxyResolverPrivate: SimpleProxyResolverPrivateProtocol {
    /// Untyped pointer to the underlying `GSimpleProxyResolverPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SimpleProxyResolverPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSimpleProxyResolverPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSimpleProxyResolverPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SimpleProxyResolverPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSimpleProxyResolverPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSimpleProxyResolverPrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `SimpleProxyResolverPrivateProtocol`
    /// `GSimpleProxyResolverPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SimpleProxyResolverPrivateProtocol`
    public init<T: SimpleProxyResolverPrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GSimpleProxyResolverPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GSimpleProxyResolverPrivate`.
    deinit {
        // no reference counting for GSimpleProxyResolverPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSimpleProxyResolverPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverPrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSimpleProxyResolverPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSimpleProxyResolverPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SimpleProxyResolverPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSimpleProxyResolverPrivate, cannot ref(cast(_ptr))
    }



}

// MARK: - no SimpleProxyResolverPrivate properties

// MARK: - no signals


public extension SimpleProxyResolverPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSimpleProxyResolverPrivate` instance.
    var _ptr: UnsafeMutablePointer<GSimpleProxyResolverPrivate> { return ptr.assumingMemoryBound(to: GSimpleProxyResolverPrivate.self) }

}



// MARK: - SocketAddressClass Record

/// The `SocketAddressClassProtocol` protocol exposes the methods and properties of an underlying `GSocketAddressClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SocketAddressClass`.
/// Alternatively, use `SocketAddressClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SocketAddressClassProtocol {
    /// Untyped pointer to the underlying `GSocketAddressClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSocketAddressClass` instance.
    var _ptr: UnsafeMutablePointer<GSocketAddressClass> { get }
}

/// The `SocketAddressClassRef` type acts as a lightweight Swift reference to an underlying `GSocketAddressClass` instance.
/// It exposes methods that can operate on this data type through `SocketAddressClassProtocol` conformance.
/// Use `SocketAddressClassRef` only as an `unowned` reference to an existing `GSocketAddressClass` instance.
///

public struct SocketAddressClassRef: SocketAddressClassProtocol {
    /// Untyped pointer to the underlying `GSocketAddressClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SocketAddressClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSocketAddressClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SocketAddressClassProtocol`
    init<T: SocketAddressClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SocketAddressClass` type acts as an owner of an underlying `GSocketAddressClass` instance.
/// It provides the methods that can operate on this data type through `SocketAddressClassProtocol` conformance.
/// Use `SocketAddressClass` as a strong reference or owner of a `GSocketAddressClass` instance.
///

open class SocketAddressClass: SocketAddressClassProtocol {
    /// Untyped pointer to the underlying `GSocketAddressClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketAddressClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSocketAddressClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSocketAddressClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SocketAddressClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSocketAddressClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSocketAddressClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `SocketAddressClassProtocol`
    /// `GSocketAddressClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SocketAddressClassProtocol`
    public init<T: SocketAddressClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GSocketAddressClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GSocketAddressClass`.
    deinit {
        // no reference counting for GSocketAddressClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSocketAddressClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSocketAddressClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSocketAddressClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSocketAddressClass, cannot ref(cast(_ptr))
    }



}

// MARK: - no SocketAddressClass properties

// MARK: - no signals


public extension SocketAddressClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSocketAddressClass` instance.
    var _ptr: UnsafeMutablePointer<GSocketAddressClass> { return ptr.assumingMemoryBound(to: GSocketAddressClass.self) }

}



// MARK: - SocketAddressEnumeratorClass Record

/// The `SocketAddressEnumeratorClassProtocol` protocol exposes the methods and properties of an underlying `GSocketAddressEnumeratorClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SocketAddressEnumeratorClass`.
/// Alternatively, use `SocketAddressEnumeratorClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Class structure for `GSocketAddressEnumerator`.
public protocol SocketAddressEnumeratorClassProtocol {
    /// Untyped pointer to the underlying `GSocketAddressEnumeratorClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSocketAddressEnumeratorClass` instance.
    var _ptr: UnsafeMutablePointer<GSocketAddressEnumeratorClass> { get }
}

/// The `SocketAddressEnumeratorClassRef` type acts as a lightweight Swift reference to an underlying `GSocketAddressEnumeratorClass` instance.
/// It exposes methods that can operate on this data type through `SocketAddressEnumeratorClassProtocol` conformance.
/// Use `SocketAddressEnumeratorClassRef` only as an `unowned` reference to an existing `GSocketAddressEnumeratorClass` instance.
///
/// Class structure for `GSocketAddressEnumerator`.
public struct SocketAddressEnumeratorClassRef: SocketAddressEnumeratorClassProtocol {
    /// Untyped pointer to the underlying `GSocketAddressEnumeratorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SocketAddressEnumeratorClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSocketAddressEnumeratorClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SocketAddressEnumeratorClassProtocol`
    init<T: SocketAddressEnumeratorClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SocketAddressEnumeratorClass` type acts as an owner of an underlying `GSocketAddressEnumeratorClass` instance.
/// It provides the methods that can operate on this data type through `SocketAddressEnumeratorClassProtocol` conformance.
/// Use `SocketAddressEnumeratorClass` as a strong reference or owner of a `GSocketAddressEnumeratorClass` instance.
///
/// Class structure for `GSocketAddressEnumerator`.
open class SocketAddressEnumeratorClass: SocketAddressEnumeratorClassProtocol {
    /// Untyped pointer to the underlying `GSocketAddressEnumeratorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketAddressEnumeratorClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSocketAddressEnumeratorClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSocketAddressEnumeratorClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SocketAddressEnumeratorClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSocketAddressEnumeratorClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSocketAddressEnumeratorClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `SocketAddressEnumeratorClassProtocol`
    /// `GSocketAddressEnumeratorClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SocketAddressEnumeratorClassProtocol`
    public init<T: SocketAddressEnumeratorClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GSocketAddressEnumeratorClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GSocketAddressEnumeratorClass`.
    deinit {
        // no reference counting for GSocketAddressEnumeratorClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSocketAddressEnumeratorClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSocketAddressEnumeratorClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSocketAddressEnumeratorClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketAddressEnumeratorClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSocketAddressEnumeratorClass, cannot ref(cast(_ptr))
    }



}

// MARK: - no SocketAddressEnumeratorClass properties

// MARK: - no signals


public extension SocketAddressEnumeratorClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSocketAddressEnumeratorClass` instance.
    var _ptr: UnsafeMutablePointer<GSocketAddressEnumeratorClass> { return ptr.assumingMemoryBound(to: GSocketAddressEnumeratorClass.self) }

}



// MARK: - SocketClass Record

/// The `SocketClassProtocol` protocol exposes the methods and properties of an underlying `GSocketClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SocketClass`.
/// Alternatively, use `SocketClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SocketClassProtocol {
    /// Untyped pointer to the underlying `GSocketClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSocketClass` instance.
    var _ptr: UnsafeMutablePointer<GSocketClass> { get }
}

/// The `SocketClassRef` type acts as a lightweight Swift reference to an underlying `GSocketClass` instance.
/// It exposes methods that can operate on this data type through `SocketClassProtocol` conformance.
/// Use `SocketClassRef` only as an `unowned` reference to an existing `GSocketClass` instance.
///

public struct SocketClassRef: SocketClassProtocol {
    /// Untyped pointer to the underlying `GSocketClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SocketClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSocketClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SocketClassProtocol`
    init<T: SocketClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SocketClass` type acts as an owner of an underlying `GSocketClass` instance.
/// It provides the methods that can operate on this data type through `SocketClassProtocol` conformance.
/// Use `SocketClass` as a strong reference or owner of a `GSocketClass` instance.
///

open class SocketClass: SocketClassProtocol {
    /// Untyped pointer to the underlying `GSocketClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSocketClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSocketClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SocketClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSocketClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSocketClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `SocketClassProtocol`
    /// `GSocketClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SocketClassProtocol`
    public init<T: SocketClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GSocketClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GSocketClass`.
    deinit {
        // no reference counting for GSocketClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSocketClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSocketClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSocketClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSocketClass, cannot ref(cast(_ptr))
    }



}

// MARK: - no SocketClass properties

// MARK: - no signals


public extension SocketClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSocketClass` instance.
    var _ptr: UnsafeMutablePointer<GSocketClass> { return ptr.assumingMemoryBound(to: GSocketClass.self) }

}



// MARK: - SocketClientClass Record

/// The `SocketClientClassProtocol` protocol exposes the methods and properties of an underlying `GSocketClientClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SocketClientClass`.
/// Alternatively, use `SocketClientClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SocketClientClassProtocol {
    /// Untyped pointer to the underlying `GSocketClientClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSocketClientClass` instance.
    var _ptr: UnsafeMutablePointer<GSocketClientClass> { get }
}

/// The `SocketClientClassRef` type acts as a lightweight Swift reference to an underlying `GSocketClientClass` instance.
/// It exposes methods that can operate on this data type through `SocketClientClassProtocol` conformance.
/// Use `SocketClientClassRef` only as an `unowned` reference to an existing `GSocketClientClass` instance.
///

public struct SocketClientClassRef: SocketClientClassProtocol {
    /// Untyped pointer to the underlying `GSocketClientClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SocketClientClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSocketClientClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SocketClientClassProtocol`
    init<T: SocketClientClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SocketClientClass` type acts as an owner of an underlying `GSocketClientClass` instance.
/// It provides the methods that can operate on this data type through `SocketClientClassProtocol` conformance.
/// Use `SocketClientClass` as a strong reference or owner of a `GSocketClientClass` instance.
///

open class SocketClientClass: SocketClientClassProtocol {
    /// Untyped pointer to the underlying `GSocketClientClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketClientClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSocketClientClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSocketClientClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SocketClientClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSocketClientClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSocketClientClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `SocketClientClassProtocol`
    /// `GSocketClientClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SocketClientClassProtocol`
    public init<T: SocketClientClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GSocketClientClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GSocketClientClass`.
    deinit {
        // no reference counting for GSocketClientClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSocketClientClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSocketClientClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSocketClientClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSocketClientClass, cannot ref(cast(_ptr))
    }



}

// MARK: - no SocketClientClass properties

// MARK: - no signals


public extension SocketClientClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSocketClientClass` instance.
    var _ptr: UnsafeMutablePointer<GSocketClientClass> { return ptr.assumingMemoryBound(to: GSocketClientClass.self) }

}



// MARK: - SocketClientPrivate Record

/// The `SocketClientPrivateProtocol` protocol exposes the methods and properties of an underlying `GSocketClientPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SocketClientPrivate`.
/// Alternatively, use `SocketClientPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SocketClientPrivateProtocol {
    /// Untyped pointer to the underlying `GSocketClientPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSocketClientPrivate` instance.
    var _ptr: UnsafeMutablePointer<GSocketClientPrivate> { get }
}

/// The `SocketClientPrivateRef` type acts as a lightweight Swift reference to an underlying `GSocketClientPrivate` instance.
/// It exposes methods that can operate on this data type through `SocketClientPrivateProtocol` conformance.
/// Use `SocketClientPrivateRef` only as an `unowned` reference to an existing `GSocketClientPrivate` instance.
///

public struct SocketClientPrivateRef: SocketClientPrivateProtocol {
    /// Untyped pointer to the underlying `GSocketClientPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SocketClientPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSocketClientPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SocketClientPrivateProtocol`
    init<T: SocketClientPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SocketClientPrivate` type acts as an owner of an underlying `GSocketClientPrivate` instance.
/// It provides the methods that can operate on this data type through `SocketClientPrivateProtocol` conformance.
/// Use `SocketClientPrivate` as a strong reference or owner of a `GSocketClientPrivate` instance.
///

open class SocketClientPrivate: SocketClientPrivateProtocol {
    /// Untyped pointer to the underlying `GSocketClientPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketClientPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSocketClientPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSocketClientPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SocketClientPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSocketClientPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSocketClientPrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `SocketClientPrivateProtocol`
    /// `GSocketClientPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SocketClientPrivateProtocol`
    public init<T: SocketClientPrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GSocketClientPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GSocketClientPrivate`.
    deinit {
        // no reference counting for GSocketClientPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSocketClientPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientPrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSocketClientPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSocketClientPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketClientPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSocketClientPrivate, cannot ref(cast(_ptr))
    }



}

// MARK: - no SocketClientPrivate properties

// MARK: - no signals


public extension SocketClientPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSocketClientPrivate` instance.
    var _ptr: UnsafeMutablePointer<GSocketClientPrivate> { return ptr.assumingMemoryBound(to: GSocketClientPrivate.self) }

}



// MARK: - SocketConnectableIface Record

/// The `SocketConnectableIfaceProtocol` protocol exposes the methods and properties of an underlying `GSocketConnectableIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SocketConnectableIface`.
/// Alternatively, use `SocketConnectableIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Provides an interface for returning a `GSocketAddressEnumerator`
/// and `GProxyAddressEnumerator`
public protocol SocketConnectableIfaceProtocol {
    /// Untyped pointer to the underlying `GSocketConnectableIface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSocketConnectableIface` instance.
    var _ptr: UnsafeMutablePointer<GSocketConnectableIface> { get }
}

/// The `SocketConnectableIfaceRef` type acts as a lightweight Swift reference to an underlying `GSocketConnectableIface` instance.
/// It exposes methods that can operate on this data type through `SocketConnectableIfaceProtocol` conformance.
/// Use `SocketConnectableIfaceRef` only as an `unowned` reference to an existing `GSocketConnectableIface` instance.
///
/// Provides an interface for returning a `GSocketAddressEnumerator`
/// and `GProxyAddressEnumerator`
public struct SocketConnectableIfaceRef: SocketConnectableIfaceProtocol {
    /// Untyped pointer to the underlying `GSocketConnectableIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SocketConnectableIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSocketConnectableIface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SocketConnectableIfaceProtocol`
    init<T: SocketConnectableIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableIfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableIfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableIfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableIfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableIfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SocketConnectableIface` type acts as an owner of an underlying `GSocketConnectableIface` instance.
/// It provides the methods that can operate on this data type through `SocketConnectableIfaceProtocol` conformance.
/// Use `SocketConnectableIface` as a strong reference or owner of a `GSocketConnectableIface` instance.
///
/// Provides an interface for returning a `GSocketAddressEnumerator`
/// and `GProxyAddressEnumerator`
open class SocketConnectableIface: SocketConnectableIfaceProtocol {
    /// Untyped pointer to the underlying `GSocketConnectableIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketConnectableIface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSocketConnectableIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSocketConnectableIface` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SocketConnectableIface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSocketConnectableIface>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSocketConnectableIface, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `SocketConnectableIfaceProtocol`
    /// `GSocketConnectableIface` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SocketConnectableIfaceProtocol`
    public init<T: SocketConnectableIfaceProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GSocketConnectableIface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GSocketConnectableIface`.
    deinit {
        // no reference counting for GSocketConnectableIface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableIfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableIfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSocketConnectableIface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableIfaceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableIfaceProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSocketConnectableIface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableIfaceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableIfaceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSocketConnectableIface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableIfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableIfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSocketConnectableIface, cannot ref(cast(_ptr))
    }



}

// MARK: - no SocketConnectableIface properties

// MARK: - no signals


public extension SocketConnectableIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSocketConnectableIface` instance.
    var _ptr: UnsafeMutablePointer<GSocketConnectableIface> { return ptr.assumingMemoryBound(to: GSocketConnectableIface.self) }

}



// MARK: - SocketConnectionClass Record

/// The `SocketConnectionClassProtocol` protocol exposes the methods and properties of an underlying `GSocketConnectionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SocketConnectionClass`.
/// Alternatively, use `SocketConnectionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SocketConnectionClassProtocol {
    /// Untyped pointer to the underlying `GSocketConnectionClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSocketConnectionClass` instance.
    var _ptr: UnsafeMutablePointer<GSocketConnectionClass> { get }
}

/// The `SocketConnectionClassRef` type acts as a lightweight Swift reference to an underlying `GSocketConnectionClass` instance.
/// It exposes methods that can operate on this data type through `SocketConnectionClassProtocol` conformance.
/// Use `SocketConnectionClassRef` only as an `unowned` reference to an existing `GSocketConnectionClass` instance.
///

public struct SocketConnectionClassRef: SocketConnectionClassProtocol {
    /// Untyped pointer to the underlying `GSocketConnectionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SocketConnectionClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSocketConnectionClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SocketConnectionClassProtocol`
    init<T: SocketConnectionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SocketConnectionClass` type acts as an owner of an underlying `GSocketConnectionClass` instance.
/// It provides the methods that can operate on this data type through `SocketConnectionClassProtocol` conformance.
/// Use `SocketConnectionClass` as a strong reference or owner of a `GSocketConnectionClass` instance.
///

open class SocketConnectionClass: SocketConnectionClassProtocol {
    /// Untyped pointer to the underlying `GSocketConnectionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketConnectionClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSocketConnectionClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSocketConnectionClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SocketConnectionClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSocketConnectionClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSocketConnectionClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `SocketConnectionClassProtocol`
    /// `GSocketConnectionClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SocketConnectionClassProtocol`
    public init<T: SocketConnectionClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GSocketConnectionClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GSocketConnectionClass`.
    deinit {
        // no reference counting for GSocketConnectionClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSocketConnectionClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSocketConnectionClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSocketConnectionClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSocketConnectionClass, cannot ref(cast(_ptr))
    }



}

// MARK: - no SocketConnectionClass properties

// MARK: - no signals


public extension SocketConnectionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSocketConnectionClass` instance.
    var _ptr: UnsafeMutablePointer<GSocketConnectionClass> { return ptr.assumingMemoryBound(to: GSocketConnectionClass.self) }

}



// MARK: - SocketConnectionPrivate Record

/// The `SocketConnectionPrivateProtocol` protocol exposes the methods and properties of an underlying `GSocketConnectionPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SocketConnectionPrivate`.
/// Alternatively, use `SocketConnectionPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SocketConnectionPrivateProtocol {
    /// Untyped pointer to the underlying `GSocketConnectionPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSocketConnectionPrivate` instance.
    var _ptr: UnsafeMutablePointer<GSocketConnectionPrivate> { get }
}

/// The `SocketConnectionPrivateRef` type acts as a lightweight Swift reference to an underlying `GSocketConnectionPrivate` instance.
/// It exposes methods that can operate on this data type through `SocketConnectionPrivateProtocol` conformance.
/// Use `SocketConnectionPrivateRef` only as an `unowned` reference to an existing `GSocketConnectionPrivate` instance.
///

public struct SocketConnectionPrivateRef: SocketConnectionPrivateProtocol {
    /// Untyped pointer to the underlying `GSocketConnectionPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SocketConnectionPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSocketConnectionPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SocketConnectionPrivateProtocol`
    init<T: SocketConnectionPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SocketConnectionPrivate` type acts as an owner of an underlying `GSocketConnectionPrivate` instance.
/// It provides the methods that can operate on this data type through `SocketConnectionPrivateProtocol` conformance.
/// Use `SocketConnectionPrivate` as a strong reference or owner of a `GSocketConnectionPrivate` instance.
///

open class SocketConnectionPrivate: SocketConnectionPrivateProtocol {
    /// Untyped pointer to the underlying `GSocketConnectionPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketConnectionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSocketConnectionPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSocketConnectionPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SocketConnectionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSocketConnectionPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSocketConnectionPrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `SocketConnectionPrivateProtocol`
    /// `GSocketConnectionPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SocketConnectionPrivateProtocol`
    public init<T: SocketConnectionPrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GSocketConnectionPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GSocketConnectionPrivate`.
    deinit {
        // no reference counting for GSocketConnectionPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSocketConnectionPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionPrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSocketConnectionPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSocketConnectionPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectionPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSocketConnectionPrivate, cannot ref(cast(_ptr))
    }



}

// MARK: - no SocketConnectionPrivate properties

// MARK: - no signals


public extension SocketConnectionPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSocketConnectionPrivate` instance.
    var _ptr: UnsafeMutablePointer<GSocketConnectionPrivate> { return ptr.assumingMemoryBound(to: GSocketConnectionPrivate.self) }

}



// MARK: - SocketControlMessageClass Record

/// The `SocketControlMessageClassProtocol` protocol exposes the methods and properties of an underlying `GSocketControlMessageClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SocketControlMessageClass`.
/// Alternatively, use `SocketControlMessageClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Class structure for `GSocketControlMessage`.
public protocol SocketControlMessageClassProtocol {
    /// Untyped pointer to the underlying `GSocketControlMessageClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSocketControlMessageClass` instance.
    var _ptr: UnsafeMutablePointer<GSocketControlMessageClass> { get }
}

/// The `SocketControlMessageClassRef` type acts as a lightweight Swift reference to an underlying `GSocketControlMessageClass` instance.
/// It exposes methods that can operate on this data type through `SocketControlMessageClassProtocol` conformance.
/// Use `SocketControlMessageClassRef` only as an `unowned` reference to an existing `GSocketControlMessageClass` instance.
///
/// Class structure for `GSocketControlMessage`.
public struct SocketControlMessageClassRef: SocketControlMessageClassProtocol {
    /// Untyped pointer to the underlying `GSocketControlMessageClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SocketControlMessageClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSocketControlMessageClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SocketControlMessageClassProtocol`
    init<T: SocketControlMessageClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SocketControlMessageClass` type acts as an owner of an underlying `GSocketControlMessageClass` instance.
/// It provides the methods that can operate on this data type through `SocketControlMessageClassProtocol` conformance.
/// Use `SocketControlMessageClass` as a strong reference or owner of a `GSocketControlMessageClass` instance.
///
/// Class structure for `GSocketControlMessage`.
open class SocketControlMessageClass: SocketControlMessageClassProtocol {
    /// Untyped pointer to the underlying `GSocketControlMessageClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketControlMessageClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSocketControlMessageClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSocketControlMessageClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SocketControlMessageClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSocketControlMessageClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSocketControlMessageClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `SocketControlMessageClassProtocol`
    /// `GSocketControlMessageClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SocketControlMessageClassProtocol`
    public init<T: SocketControlMessageClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GSocketControlMessageClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GSocketControlMessageClass`.
    deinit {
        // no reference counting for GSocketControlMessageClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSocketControlMessageClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSocketControlMessageClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSocketControlMessageClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessageClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSocketControlMessageClass, cannot ref(cast(_ptr))
    }



}

// MARK: - no SocketControlMessageClass properties

// MARK: - no signals


public extension SocketControlMessageClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSocketControlMessageClass` instance.
    var _ptr: UnsafeMutablePointer<GSocketControlMessageClass> { return ptr.assumingMemoryBound(to: GSocketControlMessageClass.self) }

}



// MARK: - SocketControlMessagePrivate Record

/// The `SocketControlMessagePrivateProtocol` protocol exposes the methods and properties of an underlying `GSocketControlMessagePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SocketControlMessagePrivate`.
/// Alternatively, use `SocketControlMessagePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SocketControlMessagePrivateProtocol {
    /// Untyped pointer to the underlying `GSocketControlMessagePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSocketControlMessagePrivate` instance.
    var _ptr: UnsafeMutablePointer<GSocketControlMessagePrivate> { get }
}

/// The `SocketControlMessagePrivateRef` type acts as a lightweight Swift reference to an underlying `GSocketControlMessagePrivate` instance.
/// It exposes methods that can operate on this data type through `SocketControlMessagePrivateProtocol` conformance.
/// Use `SocketControlMessagePrivateRef` only as an `unowned` reference to an existing `GSocketControlMessagePrivate` instance.
///

public struct SocketControlMessagePrivateRef: SocketControlMessagePrivateProtocol {
    /// Untyped pointer to the underlying `GSocketControlMessagePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SocketControlMessagePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSocketControlMessagePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SocketControlMessagePrivateProtocol`
    init<T: SocketControlMessagePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessagePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessagePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessagePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessagePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessagePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SocketControlMessagePrivate` type acts as an owner of an underlying `GSocketControlMessagePrivate` instance.
/// It provides the methods that can operate on this data type through `SocketControlMessagePrivateProtocol` conformance.
/// Use `SocketControlMessagePrivate` as a strong reference or owner of a `GSocketControlMessagePrivate` instance.
///

open class SocketControlMessagePrivate: SocketControlMessagePrivateProtocol {
    /// Untyped pointer to the underlying `GSocketControlMessagePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketControlMessagePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSocketControlMessagePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSocketControlMessagePrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SocketControlMessagePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSocketControlMessagePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSocketControlMessagePrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `SocketControlMessagePrivateProtocol`
    /// `GSocketControlMessagePrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SocketControlMessagePrivateProtocol`
    public init<T: SocketControlMessagePrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GSocketControlMessagePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GSocketControlMessagePrivate`.
    deinit {
        // no reference counting for GSocketControlMessagePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessagePrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessagePrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSocketControlMessagePrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessagePrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessagePrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSocketControlMessagePrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessagePrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessagePrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSocketControlMessagePrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessagePrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketControlMessagePrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSocketControlMessagePrivate, cannot ref(cast(_ptr))
    }



}

// MARK: - no SocketControlMessagePrivate properties

// MARK: - no signals


public extension SocketControlMessagePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSocketControlMessagePrivate` instance.
    var _ptr: UnsafeMutablePointer<GSocketControlMessagePrivate> { return ptr.assumingMemoryBound(to: GSocketControlMessagePrivate.self) }

}



// MARK: - SocketListenerClass Record

/// The `SocketListenerClassProtocol` protocol exposes the methods and properties of an underlying `GSocketListenerClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SocketListenerClass`.
/// Alternatively, use `SocketListenerClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Class structure for `GSocketListener`.
public protocol SocketListenerClassProtocol {
    /// Untyped pointer to the underlying `GSocketListenerClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSocketListenerClass` instance.
    var _ptr: UnsafeMutablePointer<GSocketListenerClass> { get }
}

/// The `SocketListenerClassRef` type acts as a lightweight Swift reference to an underlying `GSocketListenerClass` instance.
/// It exposes methods that can operate on this data type through `SocketListenerClassProtocol` conformance.
/// Use `SocketListenerClassRef` only as an `unowned` reference to an existing `GSocketListenerClass` instance.
///
/// Class structure for `GSocketListener`.
public struct SocketListenerClassRef: SocketListenerClassProtocol {
    /// Untyped pointer to the underlying `GSocketListenerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SocketListenerClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSocketListenerClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SocketListenerClassProtocol`
    init<T: SocketListenerClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SocketListenerClass` type acts as an owner of an underlying `GSocketListenerClass` instance.
/// It provides the methods that can operate on this data type through `SocketListenerClassProtocol` conformance.
/// Use `SocketListenerClass` as a strong reference or owner of a `GSocketListenerClass` instance.
///
/// Class structure for `GSocketListener`.
open class SocketListenerClass: SocketListenerClassProtocol {
    /// Untyped pointer to the underlying `GSocketListenerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketListenerClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSocketListenerClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSocketListenerClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SocketListenerClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSocketListenerClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSocketListenerClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `SocketListenerClassProtocol`
    /// `GSocketListenerClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SocketListenerClassProtocol`
    public init<T: SocketListenerClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GSocketListenerClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GSocketListenerClass`.
    deinit {
        // no reference counting for GSocketListenerClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSocketListenerClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSocketListenerClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSocketListenerClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSocketListenerClass, cannot ref(cast(_ptr))
    }



}

// MARK: - no SocketListenerClass properties

// MARK: - no signals


public extension SocketListenerClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSocketListenerClass` instance.
    var _ptr: UnsafeMutablePointer<GSocketListenerClass> { return ptr.assumingMemoryBound(to: GSocketListenerClass.self) }

}



// MARK: - SocketListenerPrivate Record

/// The `SocketListenerPrivateProtocol` protocol exposes the methods and properties of an underlying `GSocketListenerPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SocketListenerPrivate`.
/// Alternatively, use `SocketListenerPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SocketListenerPrivateProtocol {
    /// Untyped pointer to the underlying `GSocketListenerPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSocketListenerPrivate` instance.
    var _ptr: UnsafeMutablePointer<GSocketListenerPrivate> { get }
}

/// The `SocketListenerPrivateRef` type acts as a lightweight Swift reference to an underlying `GSocketListenerPrivate` instance.
/// It exposes methods that can operate on this data type through `SocketListenerPrivateProtocol` conformance.
/// Use `SocketListenerPrivateRef` only as an `unowned` reference to an existing `GSocketListenerPrivate` instance.
///

public struct SocketListenerPrivateRef: SocketListenerPrivateProtocol {
    /// Untyped pointer to the underlying `GSocketListenerPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SocketListenerPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSocketListenerPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SocketListenerPrivateProtocol`
    init<T: SocketListenerPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SocketListenerPrivate` type acts as an owner of an underlying `GSocketListenerPrivate` instance.
/// It provides the methods that can operate on this data type through `SocketListenerPrivateProtocol` conformance.
/// Use `SocketListenerPrivate` as a strong reference or owner of a `GSocketListenerPrivate` instance.
///

open class SocketListenerPrivate: SocketListenerPrivateProtocol {
    /// Untyped pointer to the underlying `GSocketListenerPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketListenerPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSocketListenerPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSocketListenerPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SocketListenerPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSocketListenerPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSocketListenerPrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `SocketListenerPrivateProtocol`
    /// `GSocketListenerPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SocketListenerPrivateProtocol`
    public init<T: SocketListenerPrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GSocketListenerPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GSocketListenerPrivate`.
    deinit {
        // no reference counting for GSocketListenerPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSocketListenerPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerPrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSocketListenerPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSocketListenerPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketListenerPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSocketListenerPrivate, cannot ref(cast(_ptr))
    }



}

// MARK: - no SocketListenerPrivate properties

// MARK: - no signals


public extension SocketListenerPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSocketListenerPrivate` instance.
    var _ptr: UnsafeMutablePointer<GSocketListenerPrivate> { return ptr.assumingMemoryBound(to: GSocketListenerPrivate.self) }

}



// MARK: - SocketPrivate Record

/// The `SocketPrivateProtocol` protocol exposes the methods and properties of an underlying `GSocketPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SocketPrivate`.
/// Alternatively, use `SocketPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SocketPrivateProtocol {
    /// Untyped pointer to the underlying `GSocketPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSocketPrivate` instance.
    var _ptr: UnsafeMutablePointer<GSocketPrivate> { get }
}

/// The `SocketPrivateRef` type acts as a lightweight Swift reference to an underlying `GSocketPrivate` instance.
/// It exposes methods that can operate on this data type through `SocketPrivateProtocol` conformance.
/// Use `SocketPrivateRef` only as an `unowned` reference to an existing `GSocketPrivate` instance.
///

public struct SocketPrivateRef: SocketPrivateProtocol {
    /// Untyped pointer to the underlying `GSocketPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SocketPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSocketPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SocketPrivateProtocol`
    init<T: SocketPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SocketPrivate` type acts as an owner of an underlying `GSocketPrivate` instance.
/// It provides the methods that can operate on this data type through `SocketPrivateProtocol` conformance.
/// Use `SocketPrivate` as a strong reference or owner of a `GSocketPrivate` instance.
///

open class SocketPrivate: SocketPrivateProtocol {
    /// Untyped pointer to the underlying `GSocketPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSocketPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSocketPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SocketPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSocketPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSocketPrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `SocketPrivateProtocol`
    /// `GSocketPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SocketPrivateProtocol`
    public init<T: SocketPrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GSocketPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GSocketPrivate`.
    deinit {
        // no reference counting for GSocketPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSocketPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketPrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSocketPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSocketPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSocketPrivate, cannot ref(cast(_ptr))
    }



}

// MARK: - no SocketPrivate properties

// MARK: - no signals


public extension SocketPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSocketPrivate` instance.
    var _ptr: UnsafeMutablePointer<GSocketPrivate> { return ptr.assumingMemoryBound(to: GSocketPrivate.self) }

}



// MARK: - SocketServiceClass Record

/// The `SocketServiceClassProtocol` protocol exposes the methods and properties of an underlying `GSocketServiceClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SocketServiceClass`.
/// Alternatively, use `SocketServiceClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Class structure for `GSocketService`.
public protocol SocketServiceClassProtocol {
    /// Untyped pointer to the underlying `GSocketServiceClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSocketServiceClass` instance.
    var _ptr: UnsafeMutablePointer<GSocketServiceClass> { get }
}

/// The `SocketServiceClassRef` type acts as a lightweight Swift reference to an underlying `GSocketServiceClass` instance.
/// It exposes methods that can operate on this data type through `SocketServiceClassProtocol` conformance.
/// Use `SocketServiceClassRef` only as an `unowned` reference to an existing `GSocketServiceClass` instance.
///
/// Class structure for `GSocketService`.
public struct SocketServiceClassRef: SocketServiceClassProtocol {
    /// Untyped pointer to the underlying `GSocketServiceClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SocketServiceClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSocketServiceClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SocketServiceClassProtocol`
    init<T: SocketServiceClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SocketServiceClass` type acts as an owner of an underlying `GSocketServiceClass` instance.
/// It provides the methods that can operate on this data type through `SocketServiceClassProtocol` conformance.
/// Use `SocketServiceClass` as a strong reference or owner of a `GSocketServiceClass` instance.
///
/// Class structure for `GSocketService`.
open class SocketServiceClass: SocketServiceClassProtocol {
    /// Untyped pointer to the underlying `GSocketServiceClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketServiceClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSocketServiceClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSocketServiceClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SocketServiceClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSocketServiceClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSocketServiceClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `SocketServiceClassProtocol`
    /// `GSocketServiceClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SocketServiceClassProtocol`
    public init<T: SocketServiceClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GSocketServiceClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GSocketServiceClass`.
    deinit {
        // no reference counting for GSocketServiceClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSocketServiceClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSocketServiceClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSocketServiceClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServiceClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSocketServiceClass, cannot ref(cast(_ptr))
    }



}

// MARK: - no SocketServiceClass properties

// MARK: - no signals


public extension SocketServiceClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSocketServiceClass` instance.
    var _ptr: UnsafeMutablePointer<GSocketServiceClass> { return ptr.assumingMemoryBound(to: GSocketServiceClass.self) }

}



// MARK: - SocketServicePrivate Record

/// The `SocketServicePrivateProtocol` protocol exposes the methods and properties of an underlying `GSocketServicePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SocketServicePrivate`.
/// Alternatively, use `SocketServicePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol SocketServicePrivateProtocol {
    /// Untyped pointer to the underlying `GSocketServicePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSocketServicePrivate` instance.
    var _ptr: UnsafeMutablePointer<GSocketServicePrivate> { get }
}

/// The `SocketServicePrivateRef` type acts as a lightweight Swift reference to an underlying `GSocketServicePrivate` instance.
/// It exposes methods that can operate on this data type through `SocketServicePrivateProtocol` conformance.
/// Use `SocketServicePrivateRef` only as an `unowned` reference to an existing `GSocketServicePrivate` instance.
///

public struct SocketServicePrivateRef: SocketServicePrivateProtocol {
    /// Untyped pointer to the underlying `GSocketServicePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SocketServicePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSocketServicePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SocketServicePrivateProtocol`
    init<T: SocketServicePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServicePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServicePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServicePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServicePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServicePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SocketServicePrivate` type acts as an owner of an underlying `GSocketServicePrivate` instance.
/// It provides the methods that can operate on this data type through `SocketServicePrivateProtocol` conformance.
/// Use `SocketServicePrivate` as a strong reference or owner of a `GSocketServicePrivate` instance.
///

open class SocketServicePrivate: SocketServicePrivateProtocol {
    /// Untyped pointer to the underlying `GSocketServicePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketServicePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSocketServicePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSocketServicePrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SocketServicePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSocketServicePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSocketServicePrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `SocketServicePrivateProtocol`
    /// `GSocketServicePrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SocketServicePrivateProtocol`
    public init<T: SocketServicePrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GSocketServicePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GSocketServicePrivate`.
    deinit {
        // no reference counting for GSocketServicePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServicePrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServicePrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSocketServicePrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServicePrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServicePrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSocketServicePrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServicePrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServicePrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSocketServicePrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServicePrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketServicePrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSocketServicePrivate, cannot ref(cast(_ptr))
    }



}

// MARK: - no SocketServicePrivate properties

// MARK: - no signals


public extension SocketServicePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSocketServicePrivate` instance.
    var _ptr: UnsafeMutablePointer<GSocketServicePrivate> { return ptr.assumingMemoryBound(to: GSocketServicePrivate.self) }

}



// MARK: - SrvTarget Record

/// The `SrvTargetProtocol` protocol exposes the methods and properties of an underlying `GSrvTarget` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SrvTarget`.
/// Alternatively, use `SrvTargetRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// SRV (service) records are used by some network protocols to provide
/// service-specific aliasing and load-balancing. For example, XMPP
/// (Jabber) uses SRV records to locate the XMPP server for a domain;
/// rather than connecting directly to "example.com" or assuming a
/// specific server hostname like "xmpp.example.com", an XMPP client
/// would look up the "xmpp-client" SRV record for "example.com", and
/// then connect to whatever host was pointed to by that record.
/// 
/// You can use `g_resolver_lookup_service()` or
/// `g_resolver_lookup_service_async()` to find the `GSrvTargets`
/// for a given service. However, if you are simply planning to connect
/// to the remote service, you can use `GNetworkService`'s
/// `GSocketConnectable` interface and not need to worry about
/// `GSrvTarget` at all.
public protocol SrvTargetProtocol {
    /// Untyped pointer to the underlying `GSrvTarget` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSrvTarget` instance.
    var srv_target_ptr: UnsafeMutablePointer<GSrvTarget> { get }
}

/// The `SrvTargetRef` type acts as a lightweight Swift reference to an underlying `GSrvTarget` instance.
/// It exposes methods that can operate on this data type through `SrvTargetProtocol` conformance.
/// Use `SrvTargetRef` only as an `unowned` reference to an existing `GSrvTarget` instance.
///
/// SRV (service) records are used by some network protocols to provide
/// service-specific aliasing and load-balancing. For example, XMPP
/// (Jabber) uses SRV records to locate the XMPP server for a domain;
/// rather than connecting directly to "example.com" or assuming a
/// specific server hostname like "xmpp.example.com", an XMPP client
/// would look up the "xmpp-client" SRV record for "example.com", and
/// then connect to whatever host was pointed to by that record.
/// 
/// You can use `g_resolver_lookup_service()` or
/// `g_resolver_lookup_service_async()` to find the `GSrvTargets`
/// for a given service. However, if you are simply planning to connect
/// to the remote service, you can use `GNetworkService`'s
/// `GSocketConnectable` interface and not need to worry about
/// `GSrvTarget` at all.
public struct SrvTargetRef: SrvTargetProtocol {
    /// Untyped pointer to the underlying `GSrvTarget` instance.
    /// For type-safe access, use the generated, typed pointer `srv_target_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SrvTargetRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSrvTarget>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SrvTargetProtocol`
    init<T: SrvTargetProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SrvTargetProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SrvTargetProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SrvTargetProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SrvTargetProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SrvTargetProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GSrvTarget` with the given parameters.
    /// 
    /// You should not need to use this; normally `GSrvTargets` are
    /// created by `GResolver`.
    init( hostname: UnsafePointer<gchar>, port: UInt16, priority: UInt16, weight: UInt16) {
        let rv = g_srv_target_new(hostname, guint16(port), guint16(priority), guint16(weight))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
}

/// The `SrvTarget` type acts as an owner of an underlying `GSrvTarget` instance.
/// It provides the methods that can operate on this data type through `SrvTargetProtocol` conformance.
/// Use `SrvTarget` as a strong reference or owner of a `GSrvTarget` instance.
///
/// SRV (service) records are used by some network protocols to provide
/// service-specific aliasing and load-balancing. For example, XMPP
/// (Jabber) uses SRV records to locate the XMPP server for a domain;
/// rather than connecting directly to "example.com" or assuming a
/// specific server hostname like "xmpp.example.com", an XMPP client
/// would look up the "xmpp-client" SRV record for "example.com", and
/// then connect to whatever host was pointed to by that record.
/// 
/// You can use `g_resolver_lookup_service()` or
/// `g_resolver_lookup_service_async()` to find the `GSrvTargets`
/// for a given service. However, if you are simply planning to connect
/// to the remote service, you can use `GNetworkService`'s
/// `GSocketConnectable` interface and not need to worry about
/// `GSrvTarget` at all.
open class SrvTarget: SrvTargetProtocol {
    /// Untyped pointer to the underlying `GSrvTarget` instance.
    /// For type-safe access, use the generated, typed pointer `srv_target_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SrvTarget` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSrvTarget>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSrvTarget` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SrvTarget` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSrvTarget>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSrvTarget, cannot ref(cast(srv_target_ptr))
    }

    /// Reference intialiser for a related type that implements `SrvTargetProtocol`
    /// `GSrvTarget` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SrvTargetProtocol`
    public init<T: SrvTargetProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.srv_target_ptr)
        // no reference counting for GSrvTarget, cannot ref(cast(srv_target_ptr))
    }

    /// Do-nothing destructor for`GSrvTarget`.
    deinit {
        // no reference counting for GSrvTarget, cannot unref(cast(srv_target_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SrvTargetProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SrvTargetProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSrvTarget, cannot ref(cast(srv_target_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SrvTargetProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SrvTargetProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSrvTarget, cannot ref(cast(srv_target_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SrvTargetProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SrvTargetProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSrvTarget, cannot ref(cast(srv_target_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SrvTargetProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SrvTargetProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSrvTarget, cannot ref(cast(srv_target_ptr))
    }

    /// Creates a new `GSrvTarget` with the given parameters.
    /// 
    /// You should not need to use this; normally `GSrvTargets` are
    /// created by `GResolver`.
    public init( hostname: UnsafePointer<gchar>, port: UInt16, priority: UInt16, weight: UInt16) {
        let rv = g_srv_target_new(hostname, guint16(port), guint16(priority), guint16(weight))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }


}

// MARK: - no SrvTarget properties

// MARK: - no signals


public extension SrvTargetProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSrvTarget` instance.
    var srv_target_ptr: UnsafeMutablePointer<GSrvTarget> { return ptr.assumingMemoryBound(to: GSrvTarget.self) }

    /// Copies `target`
    func copy() -> UnsafeMutablePointer<GSrvTarget>! {
        let rv = g_srv_target_copy(cast(srv_target_ptr))
        return cast(rv)
    }

    /// Frees `target`
    func free() {
        g_srv_target_free(cast(srv_target_ptr))
    
    }

    /// Gets `target`'s hostname (in ASCII form; if you are going to present
    /// this to the user, you should use `g_hostname_is_ascii_encoded()` to
    /// check if it contains encoded Unicode segments, and use
    /// `g_hostname_to_unicode()` to convert it if it does.)
    func getHostname() -> String! {
        let rv = g_srv_target_get_hostname(cast(srv_target_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets `target`'s port
    func getPort() -> UInt16 {
        let rv = g_srv_target_get_port(cast(srv_target_ptr))
        return UInt16(rv)
    }

    /// Gets `target`'s priority. You should not need to look at this;
    /// `GResolver` already sorts the targets according to the algorithm in
    /// RFC 2782.
    func getPriority() -> UInt16 {
        let rv = g_srv_target_get_priority(cast(srv_target_ptr))
        return UInt16(rv)
    }

    /// Gets `target`'s weight. You should not need to look at this;
    /// `GResolver` already sorts the targets according to the algorithm in
    /// RFC 2782.
    func getWeight() -> UInt16 {
        let rv = g_srv_target_get_weight(cast(srv_target_ptr))
        return UInt16(rv)
    }
    /// Gets `target`'s hostname (in ASCII form; if you are going to present
    /// this to the user, you should use `g_hostname_is_ascii_encoded()` to
    /// check if it contains encoded Unicode segments, and use
    /// `g_hostname_to_unicode()` to convert it if it does.)
    var hostname: String! {
        /// Gets `target`'s hostname (in ASCII form; if you are going to present
        /// this to the user, you should use `g_hostname_is_ascii_encoded()` to
        /// check if it contains encoded Unicode segments, and use
        /// `g_hostname_to_unicode()` to convert it if it does.)
        get {
            let rv = g_srv_target_get_hostname(cast(srv_target_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets `target`'s port
    var port: UInt16 {
        /// Gets `target`'s port
        get {
            let rv = g_srv_target_get_port(cast(srv_target_ptr))
            return UInt16(rv)
        }
    }

    /// Gets `target`'s priority. You should not need to look at this;
    /// `GResolver` already sorts the targets according to the algorithm in
    /// RFC 2782.
    var priority: UInt16 {
        /// Gets `target`'s priority. You should not need to look at this;
        /// `GResolver` already sorts the targets according to the algorithm in
        /// RFC 2782.
        get {
            let rv = g_srv_target_get_priority(cast(srv_target_ptr))
            return UInt16(rv)
        }
    }

    /// Gets `target`'s weight. You should not need to look at this;
    /// `GResolver` already sorts the targets according to the algorithm in
    /// RFC 2782.
    var weight: UInt16 {
        /// Gets `target`'s weight. You should not need to look at this;
        /// `GResolver` already sorts the targets according to the algorithm in
        /// RFC 2782.
        get {
            let rv = g_srv_target_get_weight(cast(srv_target_ptr))
            return UInt16(rv)
        }
    }
}



// MARK: - StaticResource Record

/// The `StaticResourceProtocol` protocol exposes the methods and properties of an underlying `GStaticResource` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StaticResource`.
/// Alternatively, use `StaticResourceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GStaticResource` is an opaque data structure and can only be accessed
/// using the following functions.
public protocol StaticResourceProtocol {
    /// Untyped pointer to the underlying `GStaticResource` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GStaticResource` instance.
    var _ptr: UnsafeMutablePointer<GStaticResource> { get }
}

/// The `StaticResourceRef` type acts as a lightweight Swift reference to an underlying `GStaticResource` instance.
/// It exposes methods that can operate on this data type through `StaticResourceProtocol` conformance.
/// Use `StaticResourceRef` only as an `unowned` reference to an existing `GStaticResource` instance.
///
/// `GStaticResource` is an opaque data structure and can only be accessed
/// using the following functions.
public struct StaticResourceRef: StaticResourceProtocol {
    /// Untyped pointer to the underlying `GStaticResource` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension StaticResourceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GStaticResource>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `StaticResourceProtocol`
    init<T: StaticResourceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StaticResourceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StaticResourceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StaticResourceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StaticResourceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StaticResourceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `StaticResource` type acts as an owner of an underlying `GStaticResource` instance.
/// It provides the methods that can operate on this data type through `StaticResourceProtocol` conformance.
/// Use `StaticResource` as a strong reference or owner of a `GStaticResource` instance.
///
/// `GStaticResource` is an opaque data structure and can only be accessed
/// using the following functions.
open class StaticResource: StaticResourceProtocol {
    /// Untyped pointer to the underlying `GStaticResource` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `StaticResource` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GStaticResource>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GStaticResource` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `StaticResource` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GStaticResource>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GStaticResource, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `StaticResourceProtocol`
    /// `GStaticResource` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `StaticResourceProtocol`
    public init<T: StaticResourceProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GStaticResource, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GStaticResource`.
    deinit {
        // no reference counting for GStaticResource, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StaticResourceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StaticResourceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GStaticResource, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StaticResourceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StaticResourceProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GStaticResource, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StaticResourceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StaticResourceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GStaticResource, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StaticResourceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StaticResourceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GStaticResource, cannot ref(cast(_ptr))
    }



}

// MARK: - no StaticResource properties

// MARK: - no signals


public extension StaticResourceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GStaticResource` instance.
    var _ptr: UnsafeMutablePointer<GStaticResource> { return ptr.assumingMemoryBound(to: GStaticResource.self) }

    /// Finalized a GResource initialized by `g_static_resource_init()`.
    /// 
    /// This is normally used by code generated by
    /// [glib-compile-resources](#glib-compile-resources)
    /// and is not typically used by other code.
    func fini() {
        g_static_resource_fini(cast(_ptr))
    
    }

    /// Gets the GResource that was registered by a call to `g_static_resource_init()`.
    /// 
    /// This is normally used by code generated by
    /// [glib-compile-resources](#glib-compile-resources)
    /// and is not typically used by other code.
    func getResource() -> UnsafeMutablePointer<GResource>! {
        let rv = g_static_resource_get_resource(cast(_ptr))
        return cast(rv)
    }

    /// Initializes a GResource from static data using a
    /// GStaticResource.
    /// 
    /// This is normally used by code generated by
    /// [glib-compile-resources](#glib-compile-resources)
    /// and is not typically used by other code.
    func init_() {
        g_static_resource_init(cast(_ptr))
    
    }
    /// Gets the GResource that was registered by a call to `g_static_resource_init()`.
    /// 
    /// This is normally used by code generated by
    /// [glib-compile-resources](#glib-compile-resources)
    /// and is not typically used by other code.
    var resource: UnsafeMutablePointer<GResource>! {
        /// Gets the GResource that was registered by a call to `g_static_resource_init()`.
        /// 
        /// This is normally used by code generated by
        /// [glib-compile-resources](#glib-compile-resources)
        /// and is not typically used by other code.
        get {
            let rv = g_static_resource_get_resource(cast(_ptr))
            return cast(rv)
        }
    }
}



// MARK: - TaskClass Record

/// The `TaskClassProtocol` protocol exposes the methods and properties of an underlying `GTaskClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TaskClass`.
/// Alternatively, use `TaskClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TaskClassProtocol {
    /// Untyped pointer to the underlying `GTaskClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GTaskClass` instance.
    var _ptr: UnsafeMutablePointer<GTaskClass> { get }
}

/// The `TaskClassRef` type acts as a lightweight Swift reference to an underlying `GTaskClass` instance.
/// It exposes methods that can operate on this data type through `TaskClassProtocol` conformance.
/// Use `TaskClassRef` only as an `unowned` reference to an existing `GTaskClass` instance.
///

public struct TaskClassRef: TaskClassProtocol {
    /// Untyped pointer to the underlying `GTaskClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TaskClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GTaskClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TaskClassProtocol`
    init<T: TaskClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TaskClass` type acts as an owner of an underlying `GTaskClass` instance.
/// It provides the methods that can operate on this data type through `TaskClassProtocol` conformance.
/// Use `TaskClass` as a strong reference or owner of a `GTaskClass` instance.
///

open class TaskClass: TaskClassProtocol {
    /// Untyped pointer to the underlying `GTaskClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TaskClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GTaskClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTaskClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TaskClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GTaskClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTaskClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `TaskClassProtocol`
    /// `GTaskClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TaskClassProtocol`
    public init<T: TaskClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GTaskClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GTaskClass`.
    deinit {
        // no reference counting for GTaskClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTaskClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTaskClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTaskClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TaskClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTaskClass, cannot ref(cast(_ptr))
    }



}

// MARK: - no TaskClass properties

// MARK: - no signals


public extension TaskClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTaskClass` instance.
    var _ptr: UnsafeMutablePointer<GTaskClass> { return ptr.assumingMemoryBound(to: GTaskClass.self) }

}



