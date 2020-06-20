import CGLib
import GLib
import GLibObject

// MARK: - ZlibDecompressorClass Record

/// The `ZlibDecompressorClassProtocol` protocol exposes the methods and properties of an underlying `GZlibDecompressorClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ZlibDecompressorClass`.
/// Alternatively, use `ZlibDecompressorClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ZlibDecompressorClassProtocol {
        /// Untyped pointer to the underlying `GZlibDecompressorClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GZlibDecompressorClass` instance.
    var _ptr: UnsafeMutablePointer<GZlibDecompressorClass> { get }
}

/// The `ZlibDecompressorClassRef` type acts as a lightweight Swift reference to an underlying `GZlibDecompressorClass` instance.
/// It exposes methods that can operate on this data type through `ZlibDecompressorClassProtocol` conformance.
/// Use `ZlibDecompressorClassRef` only as an `unowned` reference to an existing `GZlibDecompressorClass` instance.
///

public struct ZlibDecompressorClassRef: ZlibDecompressorClassProtocol {
        /// Untyped pointer to the underlying `GZlibDecompressorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ZlibDecompressorClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GZlibDecompressorClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ZlibDecompressorClassProtocol`
    init<T: ZlibDecompressorClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibDecompressorClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibDecompressorClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibDecompressorClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibDecompressorClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibDecompressorClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ZlibDecompressorClass` type acts as an owner of an underlying `GZlibDecompressorClass` instance.
/// It provides the methods that can operate on this data type through `ZlibDecompressorClassProtocol` conformance.
/// Use `ZlibDecompressorClass` as a strong reference or owner of a `GZlibDecompressorClass` instance.
///

open class ZlibDecompressorClass: ZlibDecompressorClassProtocol {
        /// Untyped pointer to the underlying `GZlibDecompressorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ZlibDecompressorClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GZlibDecompressorClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GZlibDecompressorClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ZlibDecompressorClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GZlibDecompressorClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GZlibDecompressorClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `ZlibDecompressorClassProtocol`
    /// `GZlibDecompressorClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ZlibDecompressorClassProtocol`
    public init<T: ZlibDecompressorClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GZlibDecompressorClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GZlibDecompressorClass`.
    deinit {
        // no reference counting for GZlibDecompressorClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibDecompressorClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibDecompressorClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GZlibDecompressorClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibDecompressorClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibDecompressorClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GZlibDecompressorClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibDecompressorClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibDecompressorClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GZlibDecompressorClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibDecompressorClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibDecompressorClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GZlibDecompressorClass, cannot ref(cast(_ptr))
    }



}

// MARK: no ZlibDecompressorClass properties

// MARK: no ZlibDecompressorClass signals


// MARK: ZlibDecompressorClass Record: ZlibDecompressorClassProtocol extension (methods and fields)
public extension ZlibDecompressorClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GZlibDecompressorClass` instance.
    var _ptr: UnsafeMutablePointer<GZlibDecompressorClass> { return ptr.assumingMemoryBound(to: GZlibDecompressorClass.self) }


    var parentClass: GObjectClass {
        get {
            let rv: GObjectClass = cast(_ptr.pointee.parent_class)
            return rv
        }
    }

}



