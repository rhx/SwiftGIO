import CGLib
import GLib
import GLibObject

/// Metatype/GType declaration for ZlibDecompressor
public extension ZlibDecompressorClassRef {
    
    /// This getter returns the GLib type identifier registered for `ZlibDecompressor`
    static var metatypeReference: GType { g_zlib_decompressor_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GZlibDecompressorClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GZlibDecompressorClass.self) }
    
    static var metatype: GZlibDecompressorClass? { metatypePointer?.pointee } 
    
    static var wrapper: ZlibDecompressorClassRef? { ZlibDecompressorClassRef(metatypePointer) }
    
    
}

// MARK: - ZlibDecompressorClass Record


///
/// The `ZlibDecompressorClassProtocol` protocol exposes the methods and properties of an underlying `GZlibDecompressorClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ZlibDecompressorClass`.
/// Alternatively, use `ZlibDecompressorClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ZlibDecompressorClassProtocol {
        /// Untyped pointer to the underlying `GZlibDecompressorClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GZlibDecompressorClass` instance.
    var _ptr: UnsafeMutablePointer<GZlibDecompressorClass>! { get }

    /// Required Initialiser for types conforming to `ZlibDecompressorClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ZlibDecompressorClassRef` type acts as a lightweight Swift reference to an underlying `GZlibDecompressorClass` instance.
/// It exposes methods that can operate on this data type through `ZlibDecompressorClassProtocol` conformance.
/// Use `ZlibDecompressorClassRef` only as an `unowned` reference to an existing `GZlibDecompressorClass` instance.
///
public struct ZlibDecompressorClassRef: ZlibDecompressorClassProtocol {
        /// Untyped pointer to the underlying `GZlibDecompressorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ZlibDecompressorClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GZlibDecompressorClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GZlibDecompressorClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GZlibDecompressorClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GZlibDecompressorClass>?) {
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

    /// Reference intialiser for a related type that implements `ZlibDecompressorClassProtocol`
    @inlinable init<T: ZlibDecompressorClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibDecompressorClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibDecompressorClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibDecompressorClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibDecompressorClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibDecompressorClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ZlibDecompressorClass Record: ZlibDecompressorClassProtocol extension (methods and fields)
public extension ZlibDecompressorClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GZlibDecompressorClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GZlibDecompressorClass>! { return ptr?.assumingMemoryBound(to: GZlibDecompressorClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



