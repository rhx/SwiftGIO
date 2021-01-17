import CGLib
import GLib
import GLibObject

/// Metatype/GType declaration for CharsetConverter
public extension CharsetConverterClassRef {
    
    /// This getter returns the GLib type identifier registered for `CharsetConverter`
    static var metatypeReference: GType { g_charset_converter_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GCharsetConverterClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GCharsetConverterClass.self) }
    
    static var metatype: GCharsetConverterClass? { metatypePointer?.pointee } 
    
    static var wrapper: CharsetConverterClassRef? { CharsetConverterClassRef(metatypePointer) }
    
    
}

// MARK: - CharsetConverterClass Record

/// The `CharsetConverterClassProtocol` protocol exposes the methods and properties of an underlying `GCharsetConverterClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CharsetConverterClass`.
/// Alternatively, use `CharsetConverterClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CharsetConverterClassProtocol {
        /// Untyped pointer to the underlying `GCharsetConverterClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GCharsetConverterClass` instance.
    var _ptr: UnsafeMutablePointer<GCharsetConverterClass>! { get }

}

/// The `CharsetConverterClassRef` type acts as a lightweight Swift reference to an underlying `GCharsetConverterClass` instance.
/// It exposes methods that can operate on this data type through `CharsetConverterClassProtocol` conformance.
/// Use `CharsetConverterClassRef` only as an `unowned` reference to an existing `GCharsetConverterClass` instance.
///

public struct CharsetConverterClassRef: CharsetConverterClassProtocol {
        /// Untyped pointer to the underlying `GCharsetConverterClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CharsetConverterClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GCharsetConverterClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GCharsetConverterClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GCharsetConverterClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GCharsetConverterClass>?) {
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

    /// Reference intialiser for a related type that implements `CharsetConverterClassProtocol`
    @inlinable init<T: CharsetConverterClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: CharsetConverterClass Record: CharsetConverterClassProtocol extension (methods and fields)
public extension CharsetConverterClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GCharsetConverterClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GCharsetConverterClass>! { return ptr?.assumingMemoryBound(to: GCharsetConverterClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for Converter
public extension ConverterIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `Converter`
    static var metatypeReference: GType { g_converter_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GConverterIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GConverterIface.self) }
    
    static var metatype: GConverterIface? { metatypePointer?.pointee } 
    
    static var wrapper: ConverterIfaceRef? { ConverterIfaceRef(metatypePointer) }
    
    
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GConverterIface` instance.
    var _ptr: UnsafeMutablePointer<GConverterIface>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension ConverterIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GConverterIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GConverterIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GConverterIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GConverterIface>?) {
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

    /// Reference intialiser for a related type that implements `ConverterIfaceProtocol`
    @inlinable init<T: ConverterIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ConverterIface Record: ConverterIfaceProtocol extension (methods and fields)
public extension ConverterIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GConverterIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GConverterIface>! { return ptr?.assumingMemoryBound(to: GConverterIface.self) }


    /// The parent interface.
    @inlinable var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var convert is unavailable because convert is void

    // var reset is unavailable because reset is void

}



/// Metatype/GType declaration for ConverterInputStream
public extension ConverterInputStreamClassRef {
    
    /// This getter returns the GLib type identifier registered for `ConverterInputStream`
    static var metatypeReference: GType { g_converter_input_stream_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GConverterInputStreamClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GConverterInputStreamClass.self) }
    
    static var metatype: GConverterInputStreamClass? { metatypePointer?.pointee } 
    
    static var wrapper: ConverterInputStreamClassRef? { ConverterInputStreamClassRef(metatypePointer) }
    
    
}

// MARK: - ConverterInputStreamClass Record

/// The `ConverterInputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GConverterInputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ConverterInputStreamClass`.
/// Alternatively, use `ConverterInputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ConverterInputStreamClassProtocol {
        /// Untyped pointer to the underlying `GConverterInputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GConverterInputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GConverterInputStreamClass>! { get }

}

/// The `ConverterInputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GConverterInputStreamClass` instance.
/// It exposes methods that can operate on this data type through `ConverterInputStreamClassProtocol` conformance.
/// Use `ConverterInputStreamClassRef` only as an `unowned` reference to an existing `GConverterInputStreamClass` instance.
///

public struct ConverterInputStreamClassRef: ConverterInputStreamClassProtocol {
        /// Untyped pointer to the underlying `GConverterInputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ConverterInputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GConverterInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GConverterInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GConverterInputStreamClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GConverterInputStreamClass>?) {
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

    /// Reference intialiser for a related type that implements `ConverterInputStreamClassProtocol`
    @inlinable init<T: ConverterInputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ConverterInputStreamClass Record: ConverterInputStreamClassProtocol extension (methods and fields)
public extension ConverterInputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GConverterInputStreamClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GConverterInputStreamClass>! { return ptr?.assumingMemoryBound(to: GConverterInputStreamClass.self) }


    @inlinable var parentClass: GFilterInputStreamClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

    // var GReserved4 is unavailable because _g_reserved4 is void

    // var GReserved5 is unavailable because _g_reserved5 is void

}



/// Metatype/GType declaration for ConverterOutputStream
public extension ConverterOutputStreamClassRef {
    
    /// This getter returns the GLib type identifier registered for `ConverterOutputStream`
    static var metatypeReference: GType { g_converter_output_stream_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GConverterOutputStreamClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GConverterOutputStreamClass.self) }
    
    static var metatype: GConverterOutputStreamClass? { metatypePointer?.pointee } 
    
    static var wrapper: ConverterOutputStreamClassRef? { ConverterOutputStreamClassRef(metatypePointer) }
    
    
}

// MARK: - ConverterOutputStreamClass Record

/// The `ConverterOutputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GConverterOutputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ConverterOutputStreamClass`.
/// Alternatively, use `ConverterOutputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ConverterOutputStreamClassProtocol {
        /// Untyped pointer to the underlying `GConverterOutputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GConverterOutputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GConverterOutputStreamClass>! { get }

}

/// The `ConverterOutputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GConverterOutputStreamClass` instance.
/// It exposes methods that can operate on this data type through `ConverterOutputStreamClassProtocol` conformance.
/// Use `ConverterOutputStreamClassRef` only as an `unowned` reference to an existing `GConverterOutputStreamClass` instance.
///

public struct ConverterOutputStreamClassRef: ConverterOutputStreamClassProtocol {
        /// Untyped pointer to the underlying `GConverterOutputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ConverterOutputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GConverterOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GConverterOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GConverterOutputStreamClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GConverterOutputStreamClass>?) {
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

    /// Reference intialiser for a related type that implements `ConverterOutputStreamClassProtocol`
    @inlinable init<T: ConverterOutputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ConverterOutputStreamClass Record: ConverterOutputStreamClassProtocol extension (methods and fields)
public extension ConverterOutputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GConverterOutputStreamClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GConverterOutputStreamClass>! { return ptr?.assumingMemoryBound(to: GConverterOutputStreamClass.self) }


    @inlinable var parentClass: GFilterOutputStreamClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

    // var GReserved4 is unavailable because _g_reserved4 is void

    // var GReserved5 is unavailable because _g_reserved5 is void

}



/// Metatype/GType declaration for Credentials
public extension CredentialsClassRef {
    
    /// This getter returns the GLib type identifier registered for `Credentials`
    static var metatypeReference: GType { g_credentials_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GCredentialsClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GCredentialsClass.self) }
    
    static var metatype: GCredentialsClass? { metatypePointer?.pointee } 
    
    static var wrapper: CredentialsClassRef? { CredentialsClassRef(metatypePointer) }
    
    
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GCredentialsClass` instance.
    var _ptr: UnsafeMutablePointer<GCredentialsClass>! { get }

}

/// The `CredentialsClassRef` type acts as a lightweight Swift reference to an underlying `GCredentialsClass` instance.
/// It exposes methods that can operate on this data type through `CredentialsClassProtocol` conformance.
/// Use `CredentialsClassRef` only as an `unowned` reference to an existing `GCredentialsClass` instance.
///
/// Class structure for `GCredentials`.
public struct CredentialsClassRef: CredentialsClassProtocol {
        /// Untyped pointer to the underlying `GCredentialsClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CredentialsClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GCredentialsClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GCredentialsClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GCredentialsClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GCredentialsClass>?) {
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

    /// Reference intialiser for a related type that implements `CredentialsClassProtocol`
    @inlinable init<T: CredentialsClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: CredentialsClass Record: CredentialsClassProtocol extension (methods and fields)
public extension CredentialsClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GCredentialsClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GCredentialsClass>! { return ptr?.assumingMemoryBound(to: GCredentialsClass.self) }



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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusAnnotationInfo` instance.
    var dbus_annotation_info_ptr: UnsafeMutablePointer<GDBusAnnotationInfo>! { get }

}

/// The `DBusAnnotationInfoRef` type acts as a lightweight Swift reference to an underlying `GDBusAnnotationInfo` instance.
/// It exposes methods that can operate on this data type through `DBusAnnotationInfoProtocol` conformance.
/// Use `DBusAnnotationInfoRef` only as an `unowned` reference to an existing `GDBusAnnotationInfo` instance.
///
/// Information about an annotation.
public struct DBusAnnotationInfoRef: DBusAnnotationInfoProtocol {
        /// Untyped pointer to the underlying `GDBusAnnotationInfo` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_annotation_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusAnnotationInfoRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusAnnotationInfo>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusAnnotationInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusAnnotationInfo>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusAnnotationInfo>?) {
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

    /// Reference intialiser for a related type that implements `DBusAnnotationInfoProtocol`
    @inlinable init<T: DBusAnnotationInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusAnnotationInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDBusAnnotationInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusAnnotationInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDBusAnnotationInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusAnnotationInfo` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusAnnotationInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusAnnotationInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDBusAnnotationInfo>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusAnnotationInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDBusAnnotationInfo>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GDBusAnnotationInfo`.
    /// i.e., ownership is transferred to the `DBusAnnotationInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDBusAnnotationInfo>) {
        ptr = UnsafeMutableRawPointer(op)
        g_dbus_annotation_info_ref(ptr.assumingMemoryBound(to: GDBusAnnotationInfo.self))
    }

    /// Reference intialiser for a related type that implements `DBusAnnotationInfoProtocol`
    /// Will retain `GDBusAnnotationInfo`.
    /// - Parameter other: an instance of a related type that implements `DBusAnnotationInfoProtocol`
    @inlinable public init<T: DBusAnnotationInfoProtocol>(_ other: T) {
        ptr = other.ptr
        g_dbus_annotation_info_ref(ptr.assumingMemoryBound(to: GDBusAnnotationInfo.self))
    }

    /// Releases the underlying `GDBusAnnotationInfo` instance using `g_dbus_annotation_info_unref`.
    deinit {
        g_dbus_annotation_info_unref(ptr.assumingMemoryBound(to: GDBusAnnotationInfo.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_dbus_annotation_info_ref(ptr.assumingMemoryBound(to: GDBusAnnotationInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_dbus_annotation_info_ref(ptr.assumingMemoryBound(to: GDBusAnnotationInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_dbus_annotation_info_ref(ptr.assumingMemoryBound(to: GDBusAnnotationInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_dbus_annotation_info_ref(ptr.assumingMemoryBound(to: GDBusAnnotationInfo.self))
    }



}

// MARK: no DBusAnnotationInfo properties

// MARK: no DBusAnnotationInfo signals

// MARK: DBusAnnotationInfo has no signals
// MARK: DBusAnnotationInfo Record: DBusAnnotationInfoProtocol extension (methods and fields)
public extension DBusAnnotationInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusAnnotationInfo` instance.
    @inlinable var dbus_annotation_info_ptr: UnsafeMutablePointer<GDBusAnnotationInfo>! { return ptr?.assumingMemoryBound(to: GDBusAnnotationInfo.self) }

    /// If `info` is statically allocated does nothing. Otherwise increases
    /// the reference count.
    @discardableResult @inlinable func ref() -> DBusAnnotationInfoRef! {
        guard let rv = DBusAnnotationInfoRef(gconstpointer: gconstpointer(g_dbus_annotation_info_ref(dbus_annotation_info_ptr))) else { return nil }
        return rv
    }

    /// If `info` is statically allocated, does nothing. Otherwise decreases
    /// the reference count of `info`. When its reference count drops to 0,
    /// the memory used is freed.
    @inlinable func unref() {
        g_dbus_annotation_info_unref(dbus_annotation_info_ptr)
    
    }

    /// The reference count or -1 if statically allocated.
    @inlinable var refCount: gint {
        /// The reference count or -1 if statically allocated.
        get {
            let rv = dbus_annotation_info_ptr.pointee.ref_count
            return rv
        }
        /// The reference count or -1 if statically allocated.
         set {
            dbus_annotation_info_ptr.pointee.ref_count = newValue
        }
    }

    /// The name of the annotation, e.g. "org.freedesktop.DBus.Deprecated".
    @inlinable var key: UnsafeMutablePointer<gchar>! {
        /// The name of the annotation, e.g. "org.freedesktop.DBus.Deprecated".
        get {
            let rv = dbus_annotation_info_ptr.pointee.key
            return rv
        }
        /// The name of the annotation, e.g. "org.freedesktop.DBus.Deprecated".
         set {
            dbus_annotation_info_ptr.pointee.key = newValue
        }
    }

    /// The value of the annotation.
    @inlinable var value: UnsafeMutablePointer<gchar>! {
        /// The value of the annotation.
        get {
            let rv = dbus_annotation_info_ptr.pointee.value
            return rv
        }
        /// The value of the annotation.
         set {
            dbus_annotation_info_ptr.pointee.value = newValue
        }
    }

    /// A pointer to a `nil`-terminated array of pointers to `GDBusAnnotationInfo` structures or `nil` if there are no annotations.
    @inlinable var annotations: UnsafeMutablePointer<UnsafeMutablePointer<GDBusAnnotationInfo>?>! {
        /// A pointer to a `nil`-terminated array of pointers to `GDBusAnnotationInfo` structures or `nil` if there are no annotations.
        get {
            let rv = dbus_annotation_info_ptr.pointee.annotations
            return rv
        }
        /// A pointer to a `nil`-terminated array of pointers to `GDBusAnnotationInfo` structures or `nil` if there are no annotations.
         set {
            dbus_annotation_info_ptr.pointee.annotations = newValue
        }
    }

}



