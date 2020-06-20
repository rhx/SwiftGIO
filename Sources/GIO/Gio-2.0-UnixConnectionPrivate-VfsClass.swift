import CGLib
import GLib
import GLibObject

// MARK: - UnixConnectionPrivate Record

/// The `UnixConnectionPrivateProtocol` protocol exposes the methods and properties of an underlying `GUnixConnectionPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixConnectionPrivate`.
/// Alternatively, use `UnixConnectionPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol UnixConnectionPrivateProtocol {
        /// Untyped pointer to the underlying `GUnixConnectionPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GUnixConnectionPrivate` instance.
    var _ptr: UnsafeMutablePointer<GUnixConnectionPrivate> { get }
}

/// The `UnixConnectionPrivateRef` type acts as a lightweight Swift reference to an underlying `GUnixConnectionPrivate` instance.
/// It exposes methods that can operate on this data type through `UnixConnectionPrivateProtocol` conformance.
/// Use `UnixConnectionPrivateRef` only as an `unowned` reference to an existing `GUnixConnectionPrivate` instance.
///

public struct UnixConnectionPrivateRef: UnixConnectionPrivateProtocol {
        /// Untyped pointer to the underlying `GUnixConnectionPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension UnixConnectionPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GUnixConnectionPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `UnixConnectionPrivateProtocol`
    init<T: UnixConnectionPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UnixConnectionPrivate` type acts as an owner of an underlying `GUnixConnectionPrivate` instance.
/// It provides the methods that can operate on this data type through `UnixConnectionPrivateProtocol` conformance.
/// Use `UnixConnectionPrivate` as a strong reference or owner of a `GUnixConnectionPrivate` instance.
///

open class UnixConnectionPrivate: UnixConnectionPrivateProtocol {
        /// Untyped pointer to the underlying `GUnixConnectionPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixConnectionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GUnixConnectionPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixConnectionPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixConnectionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GUnixConnectionPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixConnectionPrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `UnixConnectionPrivateProtocol`
    /// `GUnixConnectionPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixConnectionPrivateProtocol`
    public init<T: UnixConnectionPrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GUnixConnectionPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GUnixConnectionPrivate`.
    deinit {
        // no reference counting for GUnixConnectionPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixConnectionPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionPrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixConnectionPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixConnectionPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixConnectionPrivate, cannot ref(cast(_ptr))
    }



}

// MARK: no UnixConnectionPrivate properties

// MARK: no UnixConnectionPrivate signals


// MARK: UnixConnectionPrivate Record: UnixConnectionPrivateProtocol extension (methods and fields)
public extension UnixConnectionPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixConnectionPrivate` instance.
    var _ptr: UnsafeMutablePointer<GUnixConnectionPrivate> { return ptr.assumingMemoryBound(to: GUnixConnectionPrivate.self) }



}



// MARK: - UnixCredentialsMessageClass Record

/// The `UnixCredentialsMessageClassProtocol` protocol exposes the methods and properties of an underlying `GUnixCredentialsMessageClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixCredentialsMessageClass`.
/// Alternatively, use `UnixCredentialsMessageClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Class structure for `GUnixCredentialsMessage`.
public protocol UnixCredentialsMessageClassProtocol {
        /// Untyped pointer to the underlying `GUnixCredentialsMessageClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GUnixCredentialsMessageClass` instance.
    var _ptr: UnsafeMutablePointer<GUnixCredentialsMessageClass> { get }
}

/// The `UnixCredentialsMessageClassRef` type acts as a lightweight Swift reference to an underlying `GUnixCredentialsMessageClass` instance.
/// It exposes methods that can operate on this data type through `UnixCredentialsMessageClassProtocol` conformance.
/// Use `UnixCredentialsMessageClassRef` only as an `unowned` reference to an existing `GUnixCredentialsMessageClass` instance.
///
/// Class structure for `GUnixCredentialsMessage`.
public struct UnixCredentialsMessageClassRef: UnixCredentialsMessageClassProtocol {
        /// Untyped pointer to the underlying `GUnixCredentialsMessageClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension UnixCredentialsMessageClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GUnixCredentialsMessageClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `UnixCredentialsMessageClassProtocol`
    init<T: UnixCredentialsMessageClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UnixCredentialsMessageClass` type acts as an owner of an underlying `GUnixCredentialsMessageClass` instance.
/// It provides the methods that can operate on this data type through `UnixCredentialsMessageClassProtocol` conformance.
/// Use `UnixCredentialsMessageClass` as a strong reference or owner of a `GUnixCredentialsMessageClass` instance.
///
/// Class structure for `GUnixCredentialsMessage`.
open class UnixCredentialsMessageClass: UnixCredentialsMessageClassProtocol {
        /// Untyped pointer to the underlying `GUnixCredentialsMessageClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixCredentialsMessageClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GUnixCredentialsMessageClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixCredentialsMessageClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixCredentialsMessageClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GUnixCredentialsMessageClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixCredentialsMessageClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `UnixCredentialsMessageClassProtocol`
    /// `GUnixCredentialsMessageClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixCredentialsMessageClassProtocol`
    public init<T: UnixCredentialsMessageClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GUnixCredentialsMessageClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GUnixCredentialsMessageClass`.
    deinit {
        // no reference counting for GUnixCredentialsMessageClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixCredentialsMessageClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixCredentialsMessageClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixCredentialsMessageClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixCredentialsMessageClass, cannot ref(cast(_ptr))
    }



}

// MARK: no UnixCredentialsMessageClass properties

// MARK: no UnixCredentialsMessageClass signals


// MARK: UnixCredentialsMessageClass Record: UnixCredentialsMessageClassProtocol extension (methods and fields)
public extension UnixCredentialsMessageClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixCredentialsMessageClass` instance.
    var _ptr: UnsafeMutablePointer<GUnixCredentialsMessageClass> { return ptr.assumingMemoryBound(to: GUnixCredentialsMessageClass.self) }


    var parentClass: GSocketControlMessageClass {
        get {
            let rv: GSocketControlMessageClass = cast(_ptr.pointee.parent_class)
            return rv
        }
    }

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

}



// MARK: - UnixCredentialsMessagePrivate Record

/// The `UnixCredentialsMessagePrivateProtocol` protocol exposes the methods and properties of an underlying `GUnixCredentialsMessagePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixCredentialsMessagePrivate`.
/// Alternatively, use `UnixCredentialsMessagePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol UnixCredentialsMessagePrivateProtocol {
        /// Untyped pointer to the underlying `GUnixCredentialsMessagePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GUnixCredentialsMessagePrivate` instance.
    var _ptr: UnsafeMutablePointer<GUnixCredentialsMessagePrivate> { get }
}

/// The `UnixCredentialsMessagePrivateRef` type acts as a lightweight Swift reference to an underlying `GUnixCredentialsMessagePrivate` instance.
/// It exposes methods that can operate on this data type through `UnixCredentialsMessagePrivateProtocol` conformance.
/// Use `UnixCredentialsMessagePrivateRef` only as an `unowned` reference to an existing `GUnixCredentialsMessagePrivate` instance.
///

public struct UnixCredentialsMessagePrivateRef: UnixCredentialsMessagePrivateProtocol {
        /// Untyped pointer to the underlying `GUnixCredentialsMessagePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension UnixCredentialsMessagePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GUnixCredentialsMessagePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `UnixCredentialsMessagePrivateProtocol`
    init<T: UnixCredentialsMessagePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessagePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessagePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessagePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessagePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessagePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UnixCredentialsMessagePrivate` type acts as an owner of an underlying `GUnixCredentialsMessagePrivate` instance.
/// It provides the methods that can operate on this data type through `UnixCredentialsMessagePrivateProtocol` conformance.
/// Use `UnixCredentialsMessagePrivate` as a strong reference or owner of a `GUnixCredentialsMessagePrivate` instance.
///

open class UnixCredentialsMessagePrivate: UnixCredentialsMessagePrivateProtocol {
        /// Untyped pointer to the underlying `GUnixCredentialsMessagePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixCredentialsMessagePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GUnixCredentialsMessagePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixCredentialsMessagePrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixCredentialsMessagePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GUnixCredentialsMessagePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixCredentialsMessagePrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `UnixCredentialsMessagePrivateProtocol`
    /// `GUnixCredentialsMessagePrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixCredentialsMessagePrivateProtocol`
    public init<T: UnixCredentialsMessagePrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GUnixCredentialsMessagePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GUnixCredentialsMessagePrivate`.
    deinit {
        // no reference counting for GUnixCredentialsMessagePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessagePrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessagePrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixCredentialsMessagePrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessagePrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessagePrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixCredentialsMessagePrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessagePrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessagePrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixCredentialsMessagePrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessagePrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessagePrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixCredentialsMessagePrivate, cannot ref(cast(_ptr))
    }



}

// MARK: no UnixCredentialsMessagePrivate properties

// MARK: no UnixCredentialsMessagePrivate signals


// MARK: UnixCredentialsMessagePrivate Record: UnixCredentialsMessagePrivateProtocol extension (methods and fields)
public extension UnixCredentialsMessagePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixCredentialsMessagePrivate` instance.
    var _ptr: UnsafeMutablePointer<GUnixCredentialsMessagePrivate> { return ptr.assumingMemoryBound(to: GUnixCredentialsMessagePrivate.self) }



}



// MARK: - UnixFDListClass Record

/// The `UnixFDListClassProtocol` protocol exposes the methods and properties of an underlying `GUnixFDListClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixFDListClass`.
/// Alternatively, use `UnixFDListClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol UnixFDListClassProtocol {
        /// Untyped pointer to the underlying `GUnixFDListClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GUnixFDListClass` instance.
    var _ptr: UnsafeMutablePointer<GUnixFDListClass> { get }
}

/// The `UnixFDListClassRef` type acts as a lightweight Swift reference to an underlying `GUnixFDListClass` instance.
/// It exposes methods that can operate on this data type through `UnixFDListClassProtocol` conformance.
/// Use `UnixFDListClassRef` only as an `unowned` reference to an existing `GUnixFDListClass` instance.
///

public struct UnixFDListClassRef: UnixFDListClassProtocol {
        /// Untyped pointer to the underlying `GUnixFDListClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension UnixFDListClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GUnixFDListClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `UnixFDListClassProtocol`
    init<T: UnixFDListClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UnixFDListClass` type acts as an owner of an underlying `GUnixFDListClass` instance.
/// It provides the methods that can operate on this data type through `UnixFDListClassProtocol` conformance.
/// Use `UnixFDListClass` as a strong reference or owner of a `GUnixFDListClass` instance.
///

open class UnixFDListClass: UnixFDListClassProtocol {
        /// Untyped pointer to the underlying `GUnixFDListClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDListClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GUnixFDListClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixFDListClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixFDListClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GUnixFDListClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixFDListClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `UnixFDListClassProtocol`
    /// `GUnixFDListClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixFDListClassProtocol`
    public init<T: UnixFDListClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GUnixFDListClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GUnixFDListClass`.
    deinit {
        // no reference counting for GUnixFDListClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixFDListClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixFDListClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixFDListClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixFDListClass, cannot ref(cast(_ptr))
    }



}

// MARK: no UnixFDListClass properties

// MARK: no UnixFDListClass signals


// MARK: UnixFDListClass Record: UnixFDListClassProtocol extension (methods and fields)
public extension UnixFDListClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixFDListClass` instance.
    var _ptr: UnsafeMutablePointer<GUnixFDListClass> { return ptr.assumingMemoryBound(to: GUnixFDListClass.self) }


    var parentClass: GObjectClass {
        get {
            let rv: GObjectClass = cast(_ptr.pointee.parent_class)
            return rv
        }
    }

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

    // var GReserved4 is unavailable because _g_reserved4 is void

    // var GReserved5 is unavailable because _g_reserved5 is void

}



// MARK: - UnixFDListPrivate Record

/// The `UnixFDListPrivateProtocol` protocol exposes the methods and properties of an underlying `GUnixFDListPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixFDListPrivate`.
/// Alternatively, use `UnixFDListPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol UnixFDListPrivateProtocol {
        /// Untyped pointer to the underlying `GUnixFDListPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GUnixFDListPrivate` instance.
    var _ptr: UnsafeMutablePointer<GUnixFDListPrivate> { get }
}

/// The `UnixFDListPrivateRef` type acts as a lightweight Swift reference to an underlying `GUnixFDListPrivate` instance.
/// It exposes methods that can operate on this data type through `UnixFDListPrivateProtocol` conformance.
/// Use `UnixFDListPrivateRef` only as an `unowned` reference to an existing `GUnixFDListPrivate` instance.
///

public struct UnixFDListPrivateRef: UnixFDListPrivateProtocol {
        /// Untyped pointer to the underlying `GUnixFDListPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension UnixFDListPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GUnixFDListPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `UnixFDListPrivateProtocol`
    init<T: UnixFDListPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UnixFDListPrivate` type acts as an owner of an underlying `GUnixFDListPrivate` instance.
/// It provides the methods that can operate on this data type through `UnixFDListPrivateProtocol` conformance.
/// Use `UnixFDListPrivate` as a strong reference or owner of a `GUnixFDListPrivate` instance.
///

open class UnixFDListPrivate: UnixFDListPrivateProtocol {
        /// Untyped pointer to the underlying `GUnixFDListPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDListPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GUnixFDListPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixFDListPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixFDListPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GUnixFDListPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixFDListPrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `UnixFDListPrivateProtocol`
    /// `GUnixFDListPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixFDListPrivateProtocol`
    public init<T: UnixFDListPrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GUnixFDListPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GUnixFDListPrivate`.
    deinit {
        // no reference counting for GUnixFDListPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixFDListPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListPrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixFDListPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixFDListPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixFDListPrivate, cannot ref(cast(_ptr))
    }



}

// MARK: no UnixFDListPrivate properties

// MARK: no UnixFDListPrivate signals


// MARK: UnixFDListPrivate Record: UnixFDListPrivateProtocol extension (methods and fields)
public extension UnixFDListPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixFDListPrivate` instance.
    var _ptr: UnsafeMutablePointer<GUnixFDListPrivate> { return ptr.assumingMemoryBound(to: GUnixFDListPrivate.self) }



}



// MARK: - UnixFDMessageClass Record

/// The `UnixFDMessageClassProtocol` protocol exposes the methods and properties of an underlying `GUnixFDMessageClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixFDMessageClass`.
/// Alternatively, use `UnixFDMessageClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol UnixFDMessageClassProtocol {
        /// Untyped pointer to the underlying `GUnixFDMessageClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GUnixFDMessageClass` instance.
    var _ptr: UnsafeMutablePointer<GUnixFDMessageClass> { get }
}

/// The `UnixFDMessageClassRef` type acts as a lightweight Swift reference to an underlying `GUnixFDMessageClass` instance.
/// It exposes methods that can operate on this data type through `UnixFDMessageClassProtocol` conformance.
/// Use `UnixFDMessageClassRef` only as an `unowned` reference to an existing `GUnixFDMessageClass` instance.
///

public struct UnixFDMessageClassRef: UnixFDMessageClassProtocol {
        /// Untyped pointer to the underlying `GUnixFDMessageClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension UnixFDMessageClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GUnixFDMessageClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `UnixFDMessageClassProtocol`
    init<T: UnixFDMessageClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UnixFDMessageClass` type acts as an owner of an underlying `GUnixFDMessageClass` instance.
/// It provides the methods that can operate on this data type through `UnixFDMessageClassProtocol` conformance.
/// Use `UnixFDMessageClass` as a strong reference or owner of a `GUnixFDMessageClass` instance.
///

open class UnixFDMessageClass: UnixFDMessageClassProtocol {
        /// Untyped pointer to the underlying `GUnixFDMessageClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDMessageClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GUnixFDMessageClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixFDMessageClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixFDMessageClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GUnixFDMessageClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixFDMessageClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `UnixFDMessageClassProtocol`
    /// `GUnixFDMessageClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixFDMessageClassProtocol`
    public init<T: UnixFDMessageClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GUnixFDMessageClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GUnixFDMessageClass`.
    deinit {
        // no reference counting for GUnixFDMessageClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixFDMessageClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixFDMessageClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixFDMessageClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixFDMessageClass, cannot ref(cast(_ptr))
    }



}

// MARK: no UnixFDMessageClass properties

// MARK: no UnixFDMessageClass signals


// MARK: UnixFDMessageClass Record: UnixFDMessageClassProtocol extension (methods and fields)
public extension UnixFDMessageClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixFDMessageClass` instance.
    var _ptr: UnsafeMutablePointer<GUnixFDMessageClass> { return ptr.assumingMemoryBound(to: GUnixFDMessageClass.self) }


    var parentClass: GSocketControlMessageClass {
        get {
            let rv: GSocketControlMessageClass = cast(_ptr.pointee.parent_class)
            return rv
        }
    }

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

}



// MARK: - UnixFDMessagePrivate Record

/// The `UnixFDMessagePrivateProtocol` protocol exposes the methods and properties of an underlying `GUnixFDMessagePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixFDMessagePrivate`.
/// Alternatively, use `UnixFDMessagePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol UnixFDMessagePrivateProtocol {
        /// Untyped pointer to the underlying `GUnixFDMessagePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GUnixFDMessagePrivate` instance.
    var _ptr: UnsafeMutablePointer<GUnixFDMessagePrivate> { get }
}

/// The `UnixFDMessagePrivateRef` type acts as a lightweight Swift reference to an underlying `GUnixFDMessagePrivate` instance.
/// It exposes methods that can operate on this data type through `UnixFDMessagePrivateProtocol` conformance.
/// Use `UnixFDMessagePrivateRef` only as an `unowned` reference to an existing `GUnixFDMessagePrivate` instance.
///

public struct UnixFDMessagePrivateRef: UnixFDMessagePrivateProtocol {
        /// Untyped pointer to the underlying `GUnixFDMessagePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension UnixFDMessagePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GUnixFDMessagePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `UnixFDMessagePrivateProtocol`
    init<T: UnixFDMessagePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessagePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessagePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessagePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessagePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessagePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UnixFDMessagePrivate` type acts as an owner of an underlying `GUnixFDMessagePrivate` instance.
/// It provides the methods that can operate on this data type through `UnixFDMessagePrivateProtocol` conformance.
/// Use `UnixFDMessagePrivate` as a strong reference or owner of a `GUnixFDMessagePrivate` instance.
///

open class UnixFDMessagePrivate: UnixFDMessagePrivateProtocol {
        /// Untyped pointer to the underlying `GUnixFDMessagePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDMessagePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GUnixFDMessagePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixFDMessagePrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixFDMessagePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GUnixFDMessagePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixFDMessagePrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `UnixFDMessagePrivateProtocol`
    /// `GUnixFDMessagePrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixFDMessagePrivateProtocol`
    public init<T: UnixFDMessagePrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GUnixFDMessagePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GUnixFDMessagePrivate`.
    deinit {
        // no reference counting for GUnixFDMessagePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessagePrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessagePrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixFDMessagePrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessagePrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessagePrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixFDMessagePrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessagePrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessagePrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixFDMessagePrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessagePrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessagePrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixFDMessagePrivate, cannot ref(cast(_ptr))
    }



}

// MARK: no UnixFDMessagePrivate properties

// MARK: no UnixFDMessagePrivate signals


// MARK: UnixFDMessagePrivate Record: UnixFDMessagePrivateProtocol extension (methods and fields)
public extension UnixFDMessagePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixFDMessagePrivate` instance.
    var _ptr: UnsafeMutablePointer<GUnixFDMessagePrivate> { return ptr.assumingMemoryBound(to: GUnixFDMessagePrivate.self) }



}



// MARK: - UnixInputStreamClass Record

/// The `UnixInputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GUnixInputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixInputStreamClass`.
/// Alternatively, use `UnixInputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol UnixInputStreamClassProtocol {
        /// Untyped pointer to the underlying `GUnixInputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GUnixInputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GUnixInputStreamClass> { get }
}

/// The `UnixInputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GUnixInputStreamClass` instance.
/// It exposes methods that can operate on this data type through `UnixInputStreamClassProtocol` conformance.
/// Use `UnixInputStreamClassRef` only as an `unowned` reference to an existing `GUnixInputStreamClass` instance.
///

public struct UnixInputStreamClassRef: UnixInputStreamClassProtocol {
        /// Untyped pointer to the underlying `GUnixInputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension UnixInputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GUnixInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `UnixInputStreamClassProtocol`
    init<T: UnixInputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UnixInputStreamClass` type acts as an owner of an underlying `GUnixInputStreamClass` instance.
/// It provides the methods that can operate on this data type through `UnixInputStreamClassProtocol` conformance.
/// Use `UnixInputStreamClass` as a strong reference or owner of a `GUnixInputStreamClass` instance.
///

open class UnixInputStreamClass: UnixInputStreamClassProtocol {
        /// Untyped pointer to the underlying `GUnixInputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixInputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GUnixInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixInputStreamClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixInputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GUnixInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixInputStreamClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `UnixInputStreamClassProtocol`
    /// `GUnixInputStreamClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixInputStreamClassProtocol`
    public init<T: UnixInputStreamClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GUnixInputStreamClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GUnixInputStreamClass`.
    deinit {
        // no reference counting for GUnixInputStreamClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixInputStreamClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixInputStreamClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixInputStreamClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixInputStreamClass, cannot ref(cast(_ptr))
    }



}

// MARK: no UnixInputStreamClass properties

// MARK: no UnixInputStreamClass signals


// MARK: UnixInputStreamClass Record: UnixInputStreamClassProtocol extension (methods and fields)
public extension UnixInputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixInputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GUnixInputStreamClass> { return ptr.assumingMemoryBound(to: GUnixInputStreamClass.self) }


    var parentClass: GInputStreamClass {
        get {
            let rv: GInputStreamClass = cast(_ptr.pointee.parent_class)
            return rv
        }
    }

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

    // var GReserved4 is unavailable because _g_reserved4 is void

    // var GReserved5 is unavailable because _g_reserved5 is void

}



// MARK: - UnixInputStreamPrivate Record

/// The `UnixInputStreamPrivateProtocol` protocol exposes the methods and properties of an underlying `GUnixInputStreamPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixInputStreamPrivate`.
/// Alternatively, use `UnixInputStreamPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol UnixInputStreamPrivateProtocol {
        /// Untyped pointer to the underlying `GUnixInputStreamPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GUnixInputStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GUnixInputStreamPrivate> { get }
}

/// The `UnixInputStreamPrivateRef` type acts as a lightweight Swift reference to an underlying `GUnixInputStreamPrivate` instance.
/// It exposes methods that can operate on this data type through `UnixInputStreamPrivateProtocol` conformance.
/// Use `UnixInputStreamPrivateRef` only as an `unowned` reference to an existing `GUnixInputStreamPrivate` instance.
///

public struct UnixInputStreamPrivateRef: UnixInputStreamPrivateProtocol {
        /// Untyped pointer to the underlying `GUnixInputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension UnixInputStreamPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GUnixInputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `UnixInputStreamPrivateProtocol`
    init<T: UnixInputStreamPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UnixInputStreamPrivate` type acts as an owner of an underlying `GUnixInputStreamPrivate` instance.
/// It provides the methods that can operate on this data type through `UnixInputStreamPrivateProtocol` conformance.
/// Use `UnixInputStreamPrivate` as a strong reference or owner of a `GUnixInputStreamPrivate` instance.
///

open class UnixInputStreamPrivate: UnixInputStreamPrivateProtocol {
        /// Untyped pointer to the underlying `GUnixInputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixInputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GUnixInputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixInputStreamPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixInputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GUnixInputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixInputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `UnixInputStreamPrivateProtocol`
    /// `GUnixInputStreamPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixInputStreamPrivateProtocol`
    public init<T: UnixInputStreamPrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GUnixInputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GUnixInputStreamPrivate`.
    deinit {
        // no reference counting for GUnixInputStreamPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixInputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamPrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixInputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixInputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixInputStreamPrivate, cannot ref(cast(_ptr))
    }



}

// MARK: no UnixInputStreamPrivate properties

// MARK: no UnixInputStreamPrivate signals


// MARK: UnixInputStreamPrivate Record: UnixInputStreamPrivateProtocol extension (methods and fields)
public extension UnixInputStreamPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixInputStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GUnixInputStreamPrivate> { return ptr.assumingMemoryBound(to: GUnixInputStreamPrivate.self) }



}



// MARK: - UnixMountEntry Record

/// The `UnixMountEntryProtocol` protocol exposes the methods and properties of an underlying `GUnixMountEntry` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixMountEntry`.
/// Alternatively, use `UnixMountEntryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Defines a Unix mount entry (e.g. <filename>/media/cdrom</filename>).
/// This corresponds roughly to a mtab entry.
public protocol UnixMountEntryProtocol {
        /// Untyped pointer to the underlying `GUnixMountEntry` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GUnixMountEntry` instance.
    var unix_mount_entry_ptr: UnsafeMutablePointer<GUnixMountEntry> { get }
}

/// The `UnixMountEntryRef` type acts as a lightweight Swift reference to an underlying `GUnixMountEntry` instance.
/// It exposes methods that can operate on this data type through `UnixMountEntryProtocol` conformance.
/// Use `UnixMountEntryRef` only as an `unowned` reference to an existing `GUnixMountEntry` instance.
///
/// Defines a Unix mount entry (e.g. <filename>/media/cdrom</filename>).
/// This corresponds roughly to a mtab entry.
public struct UnixMountEntryRef: UnixMountEntryProtocol {
        /// Untyped pointer to the underlying `GUnixMountEntry` instance.
    /// For type-safe access, use the generated, typed pointer `unix_mount_entry_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension UnixMountEntryRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GUnixMountEntry>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `UnixMountEntryProtocol`
    init<T: UnixMountEntryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UnixMountEntry` type acts as an owner of an underlying `GUnixMountEntry` instance.
/// It provides the methods that can operate on this data type through `UnixMountEntryProtocol` conformance.
/// Use `UnixMountEntry` as a strong reference or owner of a `GUnixMountEntry` instance.
///
/// Defines a Unix mount entry (e.g. <filename>/media/cdrom</filename>).
/// This corresponds roughly to a mtab entry.
open class UnixMountEntry: UnixMountEntryProtocol {
        /// Untyped pointer to the underlying `GUnixMountEntry` instance.
    /// For type-safe access, use the generated, typed pointer `unix_mount_entry_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountEntry` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GUnixMountEntry>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixMountEntry` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixMountEntry` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GUnixMountEntry>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixMountEntry, cannot ref(cast(unix_mount_entry_ptr))
    }

    /// Reference intialiser for a related type that implements `UnixMountEntryProtocol`
    /// `GUnixMountEntry` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixMountEntryProtocol`
    public init<T: UnixMountEntryProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.unix_mount_entry_ptr)
        // no reference counting for GUnixMountEntry, cannot ref(cast(unix_mount_entry_ptr))
    }

    /// Do-nothing destructor for `GUnixMountEntry`.
    deinit {
        // no reference counting for GUnixMountEntry, cannot unref(cast(unix_mount_entry_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixMountEntry, cannot ref(cast(unix_mount_entry_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixMountEntry, cannot ref(cast(unix_mount_entry_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixMountEntry, cannot ref(cast(unix_mount_entry_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixMountEntry, cannot ref(cast(unix_mount_entry_ptr))
    }



}

// MARK: no UnixMountEntry properties

// MARK: no UnixMountEntry signals


// MARK: UnixMountEntry Record: UnixMountEntryProtocol extension (methods and fields)
public extension UnixMountEntryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixMountEntry` instance.
    var unix_mount_entry_ptr: UnsafeMutablePointer<GUnixMountEntry> { return ptr.assumingMemoryBound(to: GUnixMountEntry.self) }

    /// Compares two unix mounts.
    func unixMountCompare(mount2: UnixMountEntryProtocol) -> Int {
        let rv: Int = cast(g_unix_mount_compare(cast(unix_mount_entry_ptr), cast(mount2.ptr)))
        return Int(rv)
    }

    /// Makes a copy of `mount_entry`.
    func unixMountCopy() -> UnsafeMutablePointer<GUnixMountEntry>! {
        let rv: UnsafeMutablePointer<GUnixMountEntry>! = cast(g_unix_mount_copy(cast(unix_mount_entry_ptr)))
        return cast(rv)
    }

    /// Frees a unix mount.
    func unixMountFree() {
        g_unix_mount_free(cast(unix_mount_entry_ptr))
    
    }

    /// Gets the device path for a unix mount.
    func unixMountGetDevicePath() -> String! {
        let rv: String! = cast(g_unix_mount_get_device_path(cast(unix_mount_entry_ptr)))
        return cast(rv)
    }

    /// Gets the filesystem type for the unix mount.
    func unixMountGetFsType() -> String! {
        let rv: String! = cast(g_unix_mount_get_fs_type(cast(unix_mount_entry_ptr)))
        return cast(rv)
    }

    /// Gets the mount path for a unix mount.
    func unixMountGetMountPath() -> String! {
        let rv: String! = cast(g_unix_mount_get_mount_path(cast(unix_mount_entry_ptr)))
        return cast(rv)
    }

    /// Gets a comma-separated list of mount options for the unix mount. For example,
    /// `rw,relatime,seclabel,data=ordered`.
    /// 
    /// This is similar to `g_unix_mount_point_get_options()`, but it takes
    /// a `GUnixMountEntry` as an argument.
    func unixMountGetOptions() -> String! {
        let rv: String! = cast(g_unix_mount_get_options(cast(unix_mount_entry_ptr)))
        return cast(rv)
    }

    /// Gets the root of the mount within the filesystem. This is useful e.g. for
    /// mounts created by bind operation, or btrfs subvolumes.
    /// 
    /// For example, the root path is equal to "/" for mount created by
    /// "mount /dev/sda1 /mnt/foo" and "/bar" for
    /// "mount --bind /mnt/foo/bar /mnt/bar".
    func unixMountGetRootPath() -> String! {
        let rv: String! = cast(g_unix_mount_get_root_path(cast(unix_mount_entry_ptr)))
        return cast(rv)
    }

    /// Guesses whether a Unix mount can be ejected.
    func unixMountGuessCanEject() -> Bool {
        let rv = g_unix_mount_guess_can_eject(cast(unix_mount_entry_ptr))
        return Bool(rv != 0)
    }

    /// Guesses the icon of a Unix mount.
    func unixMountGuessIcon() -> UnsafeMutablePointer<GIcon>! {
        let rv: UnsafeMutablePointer<GIcon>! = cast(g_unix_mount_guess_icon(cast(unix_mount_entry_ptr)))
        return cast(rv)
    }

    /// Guesses the name of a Unix mount.
    /// The result is a translated string.
    func unixMountGuessName() -> String! {
        let rv: String! = cast(g_unix_mount_guess_name(cast(unix_mount_entry_ptr)))
        return cast(rv)
    }

    /// Guesses whether a Unix mount should be displayed in the UI.
    func unixMountGuessShouldDisplay() -> Bool {
        let rv = g_unix_mount_guess_should_display(cast(unix_mount_entry_ptr))
        return Bool(rv != 0)
    }

    /// Guesses the symbolic icon of a Unix mount.
    func unixMountGuessSymbolicIcon() -> UnsafeMutablePointer<GIcon>! {
        let rv: UnsafeMutablePointer<GIcon>! = cast(g_unix_mount_guess_symbolic_icon(cast(unix_mount_entry_ptr)))
        return cast(rv)
    }

    /// Checks if a unix mount is mounted read only.
    func unixMountIsReadonly() -> Bool {
        let rv = g_unix_mount_is_readonly(cast(unix_mount_entry_ptr))
        return Bool(rv != 0)
    }

    /// Checks if a Unix mount is a system mount. This is the Boolean OR of
    /// `g_unix_is_system_fs_type()`, `g_unix_is_system_device_path()` and
    /// `g_unix_is_mount_path_system_internal()` on `mount_entry`’s properties.
    /// 
    /// The definition of what a ‘system’ mount entry is may change over time as new
    /// file system types and device paths are ignored.
    func unixMountIsSystemInternal() -> Bool {
        let rv = g_unix_mount_is_system_internal(cast(unix_mount_entry_ptr))
        return Bool(rv != 0)
    }


}



// MARK: - UnixMountMonitorClass Record

/// The `UnixMountMonitorClassProtocol` protocol exposes the methods and properties of an underlying `GUnixMountMonitorClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixMountMonitorClass`.
/// Alternatively, use `UnixMountMonitorClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol UnixMountMonitorClassProtocol {
        /// Untyped pointer to the underlying `GUnixMountMonitorClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GUnixMountMonitorClass` instance.
    var _ptr: UnsafeMutablePointer<GUnixMountMonitorClass> { get }
}

/// The `UnixMountMonitorClassRef` type acts as a lightweight Swift reference to an underlying `GUnixMountMonitorClass` instance.
/// It exposes methods that can operate on this data type through `UnixMountMonitorClassProtocol` conformance.
/// Use `UnixMountMonitorClassRef` only as an `unowned` reference to an existing `GUnixMountMonitorClass` instance.
///

public struct UnixMountMonitorClassRef: UnixMountMonitorClassProtocol {
        /// Untyped pointer to the underlying `GUnixMountMonitorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension UnixMountMonitorClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GUnixMountMonitorClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `UnixMountMonitorClassProtocol`
    init<T: UnixMountMonitorClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UnixMountMonitorClass` type acts as an owner of an underlying `GUnixMountMonitorClass` instance.
/// It provides the methods that can operate on this data type through `UnixMountMonitorClassProtocol` conformance.
/// Use `UnixMountMonitorClass` as a strong reference or owner of a `GUnixMountMonitorClass` instance.
///

open class UnixMountMonitorClass: UnixMountMonitorClassProtocol {
        /// Untyped pointer to the underlying `GUnixMountMonitorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountMonitorClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GUnixMountMonitorClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixMountMonitorClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixMountMonitorClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GUnixMountMonitorClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixMountMonitorClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `UnixMountMonitorClassProtocol`
    /// `GUnixMountMonitorClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixMountMonitorClassProtocol`
    public init<T: UnixMountMonitorClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GUnixMountMonitorClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GUnixMountMonitorClass`.
    deinit {
        // no reference counting for GUnixMountMonitorClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixMountMonitorClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixMountMonitorClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixMountMonitorClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixMountMonitorClass, cannot ref(cast(_ptr))
    }



}

// MARK: no UnixMountMonitorClass properties

// MARK: no UnixMountMonitorClass signals


// MARK: UnixMountMonitorClass Record: UnixMountMonitorClassProtocol extension (methods and fields)
public extension UnixMountMonitorClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixMountMonitorClass` instance.
    var _ptr: UnsafeMutablePointer<GUnixMountMonitorClass> { return ptr.assumingMemoryBound(to: GUnixMountMonitorClass.self) }



}



// MARK: - UnixMountPoint Record

/// The `UnixMountPointProtocol` protocol exposes the methods and properties of an underlying `GUnixMountPoint` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixMountPoint`.
/// Alternatively, use `UnixMountPointRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Defines a Unix mount point (e.g. <filename>/dev</filename>).
/// This corresponds roughly to a fstab entry.
public protocol UnixMountPointProtocol {
        /// Untyped pointer to the underlying `GUnixMountPoint` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GUnixMountPoint` instance.
    var unix_mount_point_ptr: UnsafeMutablePointer<GUnixMountPoint> { get }
}

/// The `UnixMountPointRef` type acts as a lightweight Swift reference to an underlying `GUnixMountPoint` instance.
/// It exposes methods that can operate on this data type through `UnixMountPointProtocol` conformance.
/// Use `UnixMountPointRef` only as an `unowned` reference to an existing `GUnixMountPoint` instance.
///
/// Defines a Unix mount point (e.g. <filename>/dev</filename>).
/// This corresponds roughly to a fstab entry.
public struct UnixMountPointRef: UnixMountPointProtocol {
        /// Untyped pointer to the underlying `GUnixMountPoint` instance.
    /// For type-safe access, use the generated, typed pointer `unix_mount_point_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension UnixMountPointRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GUnixMountPoint>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `UnixMountPointProtocol`
    init<T: UnixMountPointProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UnixMountPoint` type acts as an owner of an underlying `GUnixMountPoint` instance.
/// It provides the methods that can operate on this data type through `UnixMountPointProtocol` conformance.
/// Use `UnixMountPoint` as a strong reference or owner of a `GUnixMountPoint` instance.
///
/// Defines a Unix mount point (e.g. <filename>/dev</filename>).
/// This corresponds roughly to a fstab entry.
open class UnixMountPoint: UnixMountPointProtocol {
        /// Untyped pointer to the underlying `GUnixMountPoint` instance.
    /// For type-safe access, use the generated, typed pointer `unix_mount_point_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountPoint` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GUnixMountPoint>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixMountPoint` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixMountPoint` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GUnixMountPoint>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixMountPoint, cannot ref(cast(unix_mount_point_ptr))
    }

    /// Reference intialiser for a related type that implements `UnixMountPointProtocol`
    /// `GUnixMountPoint` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixMountPointProtocol`
    public init<T: UnixMountPointProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.unix_mount_point_ptr)
        // no reference counting for GUnixMountPoint, cannot ref(cast(unix_mount_point_ptr))
    }

    /// Do-nothing destructor for `GUnixMountPoint`.
    deinit {
        // no reference counting for GUnixMountPoint, cannot unref(cast(unix_mount_point_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixMountPoint, cannot ref(cast(unix_mount_point_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixMountPoint, cannot ref(cast(unix_mount_point_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixMountPoint, cannot ref(cast(unix_mount_point_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixMountPoint, cannot ref(cast(unix_mount_point_ptr))
    }



}

// MARK: no UnixMountPoint properties

// MARK: no UnixMountPoint signals


// MARK: UnixMountPoint Record: UnixMountPointProtocol extension (methods and fields)
public extension UnixMountPointProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixMountPoint` instance.
    var unix_mount_point_ptr: UnsafeMutablePointer<GUnixMountPoint> { return ptr.assumingMemoryBound(to: GUnixMountPoint.self) }

    /// Compares two unix mount points.
    func compare(mount2: UnixMountPointProtocol) -> Int {
        let rv: Int = cast(g_unix_mount_point_compare(cast(unix_mount_point_ptr), cast(mount2.ptr)))
        return Int(rv)
    }

    /// Makes a copy of `mount_point`.
    func copy() -> UnsafeMutablePointer<GUnixMountPoint>! {
        let rv: UnsafeMutablePointer<GUnixMountPoint>! = cast(g_unix_mount_point_copy(cast(unix_mount_point_ptr)))
        return cast(rv)
    }

    /// Frees a unix mount point.
    func free() {
        g_unix_mount_point_free(cast(unix_mount_point_ptr))
    
    }

    /// Gets the device path for a unix mount point.
    func getDevicePath() -> String! {
        let rv: String! = cast(g_unix_mount_point_get_device_path(cast(unix_mount_point_ptr)))
        return cast(rv)
    }

    /// Gets the file system type for the mount point.
    func getFsType() -> String! {
        let rv: String! = cast(g_unix_mount_point_get_fs_type(cast(unix_mount_point_ptr)))
        return cast(rv)
    }

    /// Gets the mount path for a unix mount point.
    func getMountPath() -> String! {
        let rv: String! = cast(g_unix_mount_point_get_mount_path(cast(unix_mount_point_ptr)))
        return cast(rv)
    }

    /// Gets the options for the mount point.
    func getOptions() -> String! {
        let rv: String! = cast(g_unix_mount_point_get_options(cast(unix_mount_point_ptr)))
        return cast(rv)
    }

    /// Guesses whether a Unix mount point can be ejected.
    func guessCanEject() -> Bool {
        let rv = g_unix_mount_point_guess_can_eject(cast(unix_mount_point_ptr))
        return Bool(rv != 0)
    }

    /// Guesses the icon of a Unix mount point.
    func guessIcon() -> UnsafeMutablePointer<GIcon>! {
        let rv: UnsafeMutablePointer<GIcon>! = cast(g_unix_mount_point_guess_icon(cast(unix_mount_point_ptr)))
        return cast(rv)
    }

    /// Guesses the name of a Unix mount point.
    /// The result is a translated string.
    func guessName() -> String! {
        let rv: String! = cast(g_unix_mount_point_guess_name(cast(unix_mount_point_ptr)))
        return cast(rv)
    }

    /// Guesses the symbolic icon of a Unix mount point.
    func guessSymbolicIcon() -> UnsafeMutablePointer<GIcon>! {
        let rv: UnsafeMutablePointer<GIcon>! = cast(g_unix_mount_point_guess_symbolic_icon(cast(unix_mount_point_ptr)))
        return cast(rv)
    }
    /// Gets the device path for a unix mount point.
    var devicePath: String! {
        /// Gets the device path for a unix mount point.
        get {
            let rv: String! = cast(g_unix_mount_point_get_device_path(cast(unix_mount_point_ptr)))
            return cast(rv)
        }
    }

    /// Gets the file system type for the mount point.
    var fsType: String! {
        /// Gets the file system type for the mount point.
        get {
            let rv: String! = cast(g_unix_mount_point_get_fs_type(cast(unix_mount_point_ptr)))
            return cast(rv)
        }
    }

    /// Checks if a unix mount point is a loopback device.
    var isLoopback: Bool {
        /// Checks if a unix mount point is a loopback device.
        get {
            let rv = g_unix_mount_point_is_loopback(cast(unix_mount_point_ptr))
            return Bool(rv != 0)
        }
    }

    /// Checks if a unix mount point is read only.
    var isReadonly: Bool {
        /// Checks if a unix mount point is read only.
        get {
            let rv = g_unix_mount_point_is_readonly(cast(unix_mount_point_ptr))
            return Bool(rv != 0)
        }
    }

    /// Checks if a unix mount point is mountable by the user.
    var isUserMountable: Bool {
        /// Checks if a unix mount point is mountable by the user.
        get {
            let rv = g_unix_mount_point_is_user_mountable(cast(unix_mount_point_ptr))
            return Bool(rv != 0)
        }
    }

    /// Gets the mount path for a unix mount point.
    var mountPath: String! {
        /// Gets the mount path for a unix mount point.
        get {
            let rv: String! = cast(g_unix_mount_point_get_mount_path(cast(unix_mount_point_ptr)))
            return cast(rv)
        }
    }

    /// Gets the options for the mount point.
    var options: String! {
        /// Gets the options for the mount point.
        get {
            let rv: String! = cast(g_unix_mount_point_get_options(cast(unix_mount_point_ptr)))
            return cast(rv)
        }
    }


}



// MARK: - UnixOutputStreamClass Record

/// The `UnixOutputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GUnixOutputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixOutputStreamClass`.
/// Alternatively, use `UnixOutputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol UnixOutputStreamClassProtocol {
        /// Untyped pointer to the underlying `GUnixOutputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GUnixOutputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GUnixOutputStreamClass> { get }
}

/// The `UnixOutputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GUnixOutputStreamClass` instance.
/// It exposes methods that can operate on this data type through `UnixOutputStreamClassProtocol` conformance.
/// Use `UnixOutputStreamClassRef` only as an `unowned` reference to an existing `GUnixOutputStreamClass` instance.
///

public struct UnixOutputStreamClassRef: UnixOutputStreamClassProtocol {
        /// Untyped pointer to the underlying `GUnixOutputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension UnixOutputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GUnixOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `UnixOutputStreamClassProtocol`
    init<T: UnixOutputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UnixOutputStreamClass` type acts as an owner of an underlying `GUnixOutputStreamClass` instance.
/// It provides the methods that can operate on this data type through `UnixOutputStreamClassProtocol` conformance.
/// Use `UnixOutputStreamClass` as a strong reference or owner of a `GUnixOutputStreamClass` instance.
///

open class UnixOutputStreamClass: UnixOutputStreamClassProtocol {
        /// Untyped pointer to the underlying `GUnixOutputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixOutputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GUnixOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixOutputStreamClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixOutputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GUnixOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixOutputStreamClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `UnixOutputStreamClassProtocol`
    /// `GUnixOutputStreamClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixOutputStreamClassProtocol`
    public init<T: UnixOutputStreamClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GUnixOutputStreamClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GUnixOutputStreamClass`.
    deinit {
        // no reference counting for GUnixOutputStreamClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixOutputStreamClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixOutputStreamClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixOutputStreamClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixOutputStreamClass, cannot ref(cast(_ptr))
    }



}

// MARK: no UnixOutputStreamClass properties

// MARK: no UnixOutputStreamClass signals


// MARK: UnixOutputStreamClass Record: UnixOutputStreamClassProtocol extension (methods and fields)
public extension UnixOutputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixOutputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GUnixOutputStreamClass> { return ptr.assumingMemoryBound(to: GUnixOutputStreamClass.self) }


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



// MARK: - UnixOutputStreamPrivate Record

/// The `UnixOutputStreamPrivateProtocol` protocol exposes the methods and properties of an underlying `GUnixOutputStreamPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixOutputStreamPrivate`.
/// Alternatively, use `UnixOutputStreamPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol UnixOutputStreamPrivateProtocol {
        /// Untyped pointer to the underlying `GUnixOutputStreamPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GUnixOutputStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GUnixOutputStreamPrivate> { get }
}

/// The `UnixOutputStreamPrivateRef` type acts as a lightweight Swift reference to an underlying `GUnixOutputStreamPrivate` instance.
/// It exposes methods that can operate on this data type through `UnixOutputStreamPrivateProtocol` conformance.
/// Use `UnixOutputStreamPrivateRef` only as an `unowned` reference to an existing `GUnixOutputStreamPrivate` instance.
///

public struct UnixOutputStreamPrivateRef: UnixOutputStreamPrivateProtocol {
        /// Untyped pointer to the underlying `GUnixOutputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension UnixOutputStreamPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GUnixOutputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `UnixOutputStreamPrivateProtocol`
    init<T: UnixOutputStreamPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UnixOutputStreamPrivate` type acts as an owner of an underlying `GUnixOutputStreamPrivate` instance.
/// It provides the methods that can operate on this data type through `UnixOutputStreamPrivateProtocol` conformance.
/// Use `UnixOutputStreamPrivate` as a strong reference or owner of a `GUnixOutputStreamPrivate` instance.
///

open class UnixOutputStreamPrivate: UnixOutputStreamPrivateProtocol {
        /// Untyped pointer to the underlying `GUnixOutputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixOutputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GUnixOutputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixOutputStreamPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixOutputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GUnixOutputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixOutputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `UnixOutputStreamPrivateProtocol`
    /// `GUnixOutputStreamPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixOutputStreamPrivateProtocol`
    public init<T: UnixOutputStreamPrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GUnixOutputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GUnixOutputStreamPrivate`.
    deinit {
        // no reference counting for GUnixOutputStreamPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixOutputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamPrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixOutputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixOutputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixOutputStreamPrivate, cannot ref(cast(_ptr))
    }



}

// MARK: no UnixOutputStreamPrivate properties

// MARK: no UnixOutputStreamPrivate signals


// MARK: UnixOutputStreamPrivate Record: UnixOutputStreamPrivateProtocol extension (methods and fields)
public extension UnixOutputStreamPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixOutputStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GUnixOutputStreamPrivate> { return ptr.assumingMemoryBound(to: GUnixOutputStreamPrivate.self) }



}



// MARK: - UnixSocketAddressClass Record

/// The `UnixSocketAddressClassProtocol` protocol exposes the methods and properties of an underlying `GUnixSocketAddressClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixSocketAddressClass`.
/// Alternatively, use `UnixSocketAddressClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol UnixSocketAddressClassProtocol {
        /// Untyped pointer to the underlying `GUnixSocketAddressClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GUnixSocketAddressClass` instance.
    var _ptr: UnsafeMutablePointer<GUnixSocketAddressClass> { get }
}

/// The `UnixSocketAddressClassRef` type acts as a lightweight Swift reference to an underlying `GUnixSocketAddressClass` instance.
/// It exposes methods that can operate on this data type through `UnixSocketAddressClassProtocol` conformance.
/// Use `UnixSocketAddressClassRef` only as an `unowned` reference to an existing `GUnixSocketAddressClass` instance.
///

public struct UnixSocketAddressClassRef: UnixSocketAddressClassProtocol {
        /// Untyped pointer to the underlying `GUnixSocketAddressClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension UnixSocketAddressClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GUnixSocketAddressClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `UnixSocketAddressClassProtocol`
    init<T: UnixSocketAddressClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UnixSocketAddressClass` type acts as an owner of an underlying `GUnixSocketAddressClass` instance.
/// It provides the methods that can operate on this data type through `UnixSocketAddressClassProtocol` conformance.
/// Use `UnixSocketAddressClass` as a strong reference or owner of a `GUnixSocketAddressClass` instance.
///

open class UnixSocketAddressClass: UnixSocketAddressClassProtocol {
        /// Untyped pointer to the underlying `GUnixSocketAddressClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixSocketAddressClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GUnixSocketAddressClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixSocketAddressClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixSocketAddressClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GUnixSocketAddressClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixSocketAddressClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `UnixSocketAddressClassProtocol`
    /// `GUnixSocketAddressClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixSocketAddressClassProtocol`
    public init<T: UnixSocketAddressClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GUnixSocketAddressClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GUnixSocketAddressClass`.
    deinit {
        // no reference counting for GUnixSocketAddressClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixSocketAddressClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixSocketAddressClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixSocketAddressClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixSocketAddressClass, cannot ref(cast(_ptr))
    }



}

// MARK: no UnixSocketAddressClass properties

// MARK: no UnixSocketAddressClass signals


// MARK: UnixSocketAddressClass Record: UnixSocketAddressClassProtocol extension (methods and fields)
public extension UnixSocketAddressClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixSocketAddressClass` instance.
    var _ptr: UnsafeMutablePointer<GUnixSocketAddressClass> { return ptr.assumingMemoryBound(to: GUnixSocketAddressClass.self) }


    var parentClass: GSocketAddressClass {
        get {
            let rv: GSocketAddressClass = cast(_ptr.pointee.parent_class)
            return rv
        }
    }

}



// MARK: - UnixSocketAddressPrivate Record

/// The `UnixSocketAddressPrivateProtocol` protocol exposes the methods and properties of an underlying `GUnixSocketAddressPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixSocketAddressPrivate`.
/// Alternatively, use `UnixSocketAddressPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol UnixSocketAddressPrivateProtocol {
        /// Untyped pointer to the underlying `GUnixSocketAddressPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GUnixSocketAddressPrivate` instance.
    var _ptr: UnsafeMutablePointer<GUnixSocketAddressPrivate> { get }
}

/// The `UnixSocketAddressPrivateRef` type acts as a lightweight Swift reference to an underlying `GUnixSocketAddressPrivate` instance.
/// It exposes methods that can operate on this data type through `UnixSocketAddressPrivateProtocol` conformance.
/// Use `UnixSocketAddressPrivateRef` only as an `unowned` reference to an existing `GUnixSocketAddressPrivate` instance.
///

public struct UnixSocketAddressPrivateRef: UnixSocketAddressPrivateProtocol {
        /// Untyped pointer to the underlying `GUnixSocketAddressPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension UnixSocketAddressPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GUnixSocketAddressPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `UnixSocketAddressPrivateProtocol`
    init<T: UnixSocketAddressPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UnixSocketAddressPrivate` type acts as an owner of an underlying `GUnixSocketAddressPrivate` instance.
/// It provides the methods that can operate on this data type through `UnixSocketAddressPrivateProtocol` conformance.
/// Use `UnixSocketAddressPrivate` as a strong reference or owner of a `GUnixSocketAddressPrivate` instance.
///

open class UnixSocketAddressPrivate: UnixSocketAddressPrivateProtocol {
        /// Untyped pointer to the underlying `GUnixSocketAddressPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixSocketAddressPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GUnixSocketAddressPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixSocketAddressPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixSocketAddressPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GUnixSocketAddressPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixSocketAddressPrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `UnixSocketAddressPrivateProtocol`
    /// `GUnixSocketAddressPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixSocketAddressPrivateProtocol`
    public init<T: UnixSocketAddressPrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GUnixSocketAddressPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GUnixSocketAddressPrivate`.
    deinit {
        // no reference counting for GUnixSocketAddressPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixSocketAddressPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressPrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixSocketAddressPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixSocketAddressPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixSocketAddressPrivate, cannot ref(cast(_ptr))
    }



}

// MARK: no UnixSocketAddressPrivate properties

// MARK: no UnixSocketAddressPrivate signals


// MARK: UnixSocketAddressPrivate Record: UnixSocketAddressPrivateProtocol extension (methods and fields)
public extension UnixSocketAddressPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixSocketAddressPrivate` instance.
    var _ptr: UnsafeMutablePointer<GUnixSocketAddressPrivate> { return ptr.assumingMemoryBound(to: GUnixSocketAddressPrivate.self) }



}



// MARK: - VfsClass Record

/// The `VfsClassProtocol` protocol exposes the methods and properties of an underlying `GVfsClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VfsClass`.
/// Alternatively, use `VfsClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol VfsClassProtocol {
        /// Untyped pointer to the underlying `GVfsClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GVfsClass` instance.
    var _ptr: UnsafeMutablePointer<GVfsClass> { get }
}

/// The `VfsClassRef` type acts as a lightweight Swift reference to an underlying `GVfsClass` instance.
/// It exposes methods that can operate on this data type through `VfsClassProtocol` conformance.
/// Use `VfsClassRef` only as an `unowned` reference to an existing `GVfsClass` instance.
///

public struct VfsClassRef: VfsClassProtocol {
        /// Untyped pointer to the underlying `GVfsClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension VfsClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GVfsClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `VfsClassProtocol`
    init<T: VfsClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `VfsClass` type acts as an owner of an underlying `GVfsClass` instance.
/// It provides the methods that can operate on this data type through `VfsClassProtocol` conformance.
/// Use `VfsClass` as a strong reference or owner of a `GVfsClass` instance.
///

open class VfsClass: VfsClassProtocol {
        /// Untyped pointer to the underlying `GVfsClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VfsClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GVfsClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GVfsClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `VfsClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GVfsClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GVfsClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `VfsClassProtocol`
    /// `GVfsClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `VfsClassProtocol`
    public init<T: VfsClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GVfsClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GVfsClass`.
    deinit {
        // no reference counting for GVfsClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GVfsClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GVfsClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GVfsClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GVfsClass, cannot ref(cast(_ptr))
    }



}

// MARK: no VfsClass properties

// MARK: no VfsClass signals


// MARK: VfsClass Record: VfsClassProtocol extension (methods and fields)
public extension VfsClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GVfsClass` instance.
    var _ptr: UnsafeMutablePointer<GVfsClass> { return ptr.assumingMemoryBound(to: GVfsClass.self) }


    var parentClass: GObjectClass {
        get {
            let rv: GObjectClass = cast(_ptr.pointee.parent_class)
            return rv
        }
    }

    // var isActive is unavailable because is_active is void

    // var getFileForPath is unavailable because get_file_for_path is void

    // var getFileForURI is unavailable because get_file_for_uri is void

    // var getSupportedURISchemes is unavailable because get_supported_uri_schemes is void

    // var parseName is unavailable because parse_name is void

    // var localFileAddInfo is unavailable because local_file_add_info is void

    // var addWritableNamespaces is unavailable because add_writable_namespaces is void

    // var localFileSetAttributes is unavailable because local_file_set_attributes is void

    // var localFileRemoved is unavailable because local_file_removed is void

    // var localFileMoved is unavailable because local_file_moved is void

    // var deserializeIcon is unavailable because deserialize_icon is void

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

    // var GReserved4 is unavailable because _g_reserved4 is void

    // var GReserved5 is unavailable because _g_reserved5 is void

    // var GReserved6 is unavailable because _g_reserved6 is void

}



