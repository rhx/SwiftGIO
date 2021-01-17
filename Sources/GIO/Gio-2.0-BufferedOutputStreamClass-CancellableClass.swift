import CGLib
import GLib
import GLibObject

/// Metatype/GType declaration for BufferedOutputStream
public extension BufferedOutputStreamClassRef {
    
    /// This getter returns the GLib type identifier registered for `BufferedOutputStream`
    static var metatypeReference: GType { g_buffered_output_stream_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GBufferedOutputStreamClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GBufferedOutputStreamClass.self) }
    
    static var metatype: GBufferedOutputStreamClass? { metatypePointer?.pointee } 
    
    static var wrapper: BufferedOutputStreamClassRef? { BufferedOutputStreamClassRef(metatypePointer) }
    
    
}

// MARK: - BufferedOutputStreamClass Record

/// The `BufferedOutputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GBufferedOutputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BufferedOutputStreamClass`.
/// Alternatively, use `BufferedOutputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol BufferedOutputStreamClassProtocol {
        /// Untyped pointer to the underlying `GBufferedOutputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GBufferedOutputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GBufferedOutputStreamClass>! { get }

}

/// The `BufferedOutputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GBufferedOutputStreamClass` instance.
/// It exposes methods that can operate on this data type through `BufferedOutputStreamClassProtocol` conformance.
/// Use `BufferedOutputStreamClassRef` only as an `unowned` reference to an existing `GBufferedOutputStreamClass` instance.
///

public struct BufferedOutputStreamClassRef: BufferedOutputStreamClassProtocol {
        /// Untyped pointer to the underlying `GBufferedOutputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BufferedOutputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GBufferedOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GBufferedOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GBufferedOutputStreamClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GBufferedOutputStreamClass>?) {
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

    /// Reference intialiser for a related type that implements `BufferedOutputStreamClassProtocol`
    @inlinable init<T: BufferedOutputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: BufferedOutputStreamClass Record: BufferedOutputStreamClassProtocol extension (methods and fields)
public extension BufferedOutputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GBufferedOutputStreamClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GBufferedOutputStreamClass>! { return ptr?.assumingMemoryBound(to: GBufferedOutputStreamClass.self) }


    @inlinable var parentClass: GFilterOutputStreamClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

}



/// Metatype/GType declaration for Cancellable
public extension CancellableClassRef {
    
    /// This getter returns the GLib type identifier registered for `Cancellable`
    static var metatypeReference: GType { g_cancellable_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GCancellableClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GCancellableClass.self) }
    
    static var metatype: GCancellableClass? { metatypePointer?.pointee } 
    
    static var wrapper: CancellableClassRef? { CancellableClassRef(metatypePointer) }
    
    
}

// MARK: - CancellableClass Record

/// The `CancellableClassProtocol` protocol exposes the methods and properties of an underlying `GCancellableClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CancellableClass`.
/// Alternatively, use `CancellableClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CancellableClassProtocol {
        /// Untyped pointer to the underlying `GCancellableClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GCancellableClass` instance.
    var _ptr: UnsafeMutablePointer<GCancellableClass>! { get }

}

/// The `CancellableClassRef` type acts as a lightweight Swift reference to an underlying `GCancellableClass` instance.
/// It exposes methods that can operate on this data type through `CancellableClassProtocol` conformance.
/// Use `CancellableClassRef` only as an `unowned` reference to an existing `GCancellableClass` instance.
///

public struct CancellableClassRef: CancellableClassProtocol {
        /// Untyped pointer to the underlying `GCancellableClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CancellableClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GCancellableClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GCancellableClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GCancellableClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GCancellableClass>?) {
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

    /// Reference intialiser for a related type that implements `CancellableClassProtocol`
    @inlinable init<T: CancellableClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: CancellableClass Record: CancellableClassProtocol extension (methods and fields)
public extension CancellableClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GCancellableClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GCancellableClass>! { return ptr?.assumingMemoryBound(to: GCancellableClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var cancelled is unavailable because cancelled is void

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

    // var GReserved4 is unavailable because _g_reserved4 is void

    // var GReserved5 is unavailable because _g_reserved5 is void

}



