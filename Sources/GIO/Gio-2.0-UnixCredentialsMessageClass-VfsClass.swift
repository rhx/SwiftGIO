import CGLib
import GLib
import GLibObject

/// Metatype/GType declaration for UnixCredentialsMessage
public extension UnixCredentialsMessageClassRef {
    
    /// This getter returns the GLib type identifier registered for `UnixCredentialsMessage`
    static var metatypeReference: GType { g_unix_credentials_message_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GUnixCredentialsMessageClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GUnixCredentialsMessageClass.self) }
    
    static var metatype: GUnixCredentialsMessageClass? { metatypePointer?.pointee } 
    
    static var wrapper: UnixCredentialsMessageClassRef? { UnixCredentialsMessageClassRef(metatypePointer) }
    
    
}

// MARK: - UnixCredentialsMessageClass Record

/// Class structure for `GUnixCredentialsMessage`.
///
/// The `UnixCredentialsMessageClassProtocol` protocol exposes the methods and properties of an underlying `GUnixCredentialsMessageClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixCredentialsMessageClass`.
/// Alternatively, use `UnixCredentialsMessageClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol UnixCredentialsMessageClassProtocol {
        /// Untyped pointer to the underlying `GUnixCredentialsMessageClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixCredentialsMessageClass` instance.
    var _ptr: UnsafeMutablePointer<GUnixCredentialsMessageClass>! { get }

    /// Required Initialiser for types conforming to `UnixCredentialsMessageClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Class structure for `GUnixCredentialsMessage`.
///
/// The `UnixCredentialsMessageClassRef` type acts as a lightweight Swift reference to an underlying `GUnixCredentialsMessageClass` instance.
/// It exposes methods that can operate on this data type through `UnixCredentialsMessageClassProtocol` conformance.
/// Use `UnixCredentialsMessageClassRef` only as an `unowned` reference to an existing `GUnixCredentialsMessageClass` instance.
///
public struct UnixCredentialsMessageClassRef: UnixCredentialsMessageClassProtocol {
        /// Untyped pointer to the underlying `GUnixCredentialsMessageClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixCredentialsMessageClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixCredentialsMessageClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixCredentialsMessageClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixCredentialsMessageClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixCredentialsMessageClass>?) {
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

    /// Reference intialiser for a related type that implements `UnixCredentialsMessageClassProtocol`
    @inlinable init<T: UnixCredentialsMessageClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: UnixCredentialsMessageClass Record: UnixCredentialsMessageClassProtocol extension (methods and fields)
public extension UnixCredentialsMessageClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixCredentialsMessageClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GUnixCredentialsMessageClass>! { return ptr?.assumingMemoryBound(to: GUnixCredentialsMessageClass.self) }


    @inlinable var parentClass: GSocketControlMessageClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

}



/// Metatype/GType declaration for UnixFDList
public extension UnixFDListClassRef {
    
    /// This getter returns the GLib type identifier registered for `UnixFDList`
    static var metatypeReference: GType { g_unix_fd_list_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GUnixFDListClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GUnixFDListClass.self) }
    
    static var metatype: GUnixFDListClass? { metatypePointer?.pointee } 
    
    static var wrapper: UnixFDListClassRef? { UnixFDListClassRef(metatypePointer) }
    
    
}

// MARK: - UnixFDListClass Record


///
/// The `UnixFDListClassProtocol` protocol exposes the methods and properties of an underlying `GUnixFDListClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixFDListClass`.
/// Alternatively, use `UnixFDListClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol UnixFDListClassProtocol {
        /// Untyped pointer to the underlying `GUnixFDListClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixFDListClass` instance.
    var _ptr: UnsafeMutablePointer<GUnixFDListClass>! { get }

    /// Required Initialiser for types conforming to `UnixFDListClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `UnixFDListClassRef` type acts as a lightweight Swift reference to an underlying `GUnixFDListClass` instance.
/// It exposes methods that can operate on this data type through `UnixFDListClassProtocol` conformance.
/// Use `UnixFDListClassRef` only as an `unowned` reference to an existing `GUnixFDListClass` instance.
///
public struct UnixFDListClassRef: UnixFDListClassProtocol {
        /// Untyped pointer to the underlying `GUnixFDListClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixFDListClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixFDListClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixFDListClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixFDListClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixFDListClass>?) {
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

    /// Reference intialiser for a related type that implements `UnixFDListClassProtocol`
    @inlinable init<T: UnixFDListClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: UnixFDListClass Record: UnixFDListClassProtocol extension (methods and fields)
public extension UnixFDListClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixFDListClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GUnixFDListClass>! { return ptr?.assumingMemoryBound(to: GUnixFDListClass.self) }


    @inlinable var parentClass: GObjectClass {
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



/// Metatype/GType declaration for UnixFDMessage
public extension UnixFDMessageClassRef {
    
    /// This getter returns the GLib type identifier registered for `UnixFDMessage`
    static var metatypeReference: GType { g_unix_fd_message_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GUnixFDMessageClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GUnixFDMessageClass.self) }
    
    static var metatype: GUnixFDMessageClass? { metatypePointer?.pointee } 
    
    static var wrapper: UnixFDMessageClassRef? { UnixFDMessageClassRef(metatypePointer) }
    
    
}

// MARK: - UnixFDMessageClass Record


///
/// The `UnixFDMessageClassProtocol` protocol exposes the methods and properties of an underlying `GUnixFDMessageClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixFDMessageClass`.
/// Alternatively, use `UnixFDMessageClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol UnixFDMessageClassProtocol {
        /// Untyped pointer to the underlying `GUnixFDMessageClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixFDMessageClass` instance.
    var _ptr: UnsafeMutablePointer<GUnixFDMessageClass>! { get }

    /// Required Initialiser for types conforming to `UnixFDMessageClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `UnixFDMessageClassRef` type acts as a lightweight Swift reference to an underlying `GUnixFDMessageClass` instance.
/// It exposes methods that can operate on this data type through `UnixFDMessageClassProtocol` conformance.
/// Use `UnixFDMessageClassRef` only as an `unowned` reference to an existing `GUnixFDMessageClass` instance.
///
public struct UnixFDMessageClassRef: UnixFDMessageClassProtocol {
        /// Untyped pointer to the underlying `GUnixFDMessageClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixFDMessageClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixFDMessageClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixFDMessageClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixFDMessageClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixFDMessageClass>?) {
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

    /// Reference intialiser for a related type that implements `UnixFDMessageClassProtocol`
    @inlinable init<T: UnixFDMessageClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: UnixFDMessageClass Record: UnixFDMessageClassProtocol extension (methods and fields)
public extension UnixFDMessageClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixFDMessageClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GUnixFDMessageClass>! { return ptr?.assumingMemoryBound(to: GUnixFDMessageClass.self) }


    @inlinable var parentClass: GSocketControlMessageClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

}



/// Metatype/GType declaration for UnixInputStream
public extension UnixInputStreamClassRef {
    
    /// This getter returns the GLib type identifier registered for `UnixInputStream`
    static var metatypeReference: GType { g_unix_input_stream_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GUnixInputStreamClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GUnixInputStreamClass.self) }
    
    static var metatype: GUnixInputStreamClass? { metatypePointer?.pointee } 
    
    static var wrapper: UnixInputStreamClassRef? { UnixInputStreamClassRef(metatypePointer) }
    
    
}

// MARK: - UnixInputStreamClass Record


///
/// The `UnixInputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GUnixInputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixInputStreamClass`.
/// Alternatively, use `UnixInputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol UnixInputStreamClassProtocol {
        /// Untyped pointer to the underlying `GUnixInputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixInputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GUnixInputStreamClass>! { get }

    /// Required Initialiser for types conforming to `UnixInputStreamClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `UnixInputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GUnixInputStreamClass` instance.
/// It exposes methods that can operate on this data type through `UnixInputStreamClassProtocol` conformance.
/// Use `UnixInputStreamClassRef` only as an `unowned` reference to an existing `GUnixInputStreamClass` instance.
///
public struct UnixInputStreamClassRef: UnixInputStreamClassProtocol {
        /// Untyped pointer to the underlying `GUnixInputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixInputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixInputStreamClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixInputStreamClass>?) {
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

    /// Reference intialiser for a related type that implements `UnixInputStreamClassProtocol`
    @inlinable init<T: UnixInputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: UnixInputStreamClass Record: UnixInputStreamClassProtocol extension (methods and fields)
public extension UnixInputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixInputStreamClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GUnixInputStreamClass>! { return ptr?.assumingMemoryBound(to: GUnixInputStreamClass.self) }


    @inlinable var parentClass: GInputStreamClass {
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



// MARK: - UnixMountEntry Record

/// Defines a Unix mount entry (e.g. &lt;filename&gt;/media/cdrom&lt;/filename&gt;).
/// This corresponds roughly to a mtab entry.
///
/// The `UnixMountEntryProtocol` protocol exposes the methods and properties of an underlying `GUnixMountEntry` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixMountEntry`.
/// Alternatively, use `UnixMountEntryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol UnixMountEntryProtocol {
        /// Untyped pointer to the underlying `GUnixMountEntry` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixMountEntry` instance.
    var unix_mount_entry_ptr: UnsafeMutablePointer<GUnixMountEntry>! { get }

    /// Required Initialiser for types conforming to `UnixMountEntryProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Defines a Unix mount entry (e.g. &lt;filename&gt;/media/cdrom&lt;/filename&gt;).
/// This corresponds roughly to a mtab entry.
///
/// The `UnixMountEntryRef` type acts as a lightweight Swift reference to an underlying `GUnixMountEntry` instance.
/// It exposes methods that can operate on this data type through `UnixMountEntryProtocol` conformance.
/// Use `UnixMountEntryRef` only as an `unowned` reference to an existing `GUnixMountEntry` instance.
///
public struct UnixMountEntryRef: UnixMountEntryProtocol {
        /// Untyped pointer to the underlying `GUnixMountEntry` instance.
    /// For type-safe access, use the generated, typed pointer `unix_mount_entry_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixMountEntryRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixMountEntry>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixMountEntry>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixMountEntry>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixMountEntry>?) {
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

    /// Reference intialiser for a related type that implements `UnixMountEntryProtocol`
    @inlinable init<T: UnixMountEntryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// Defines a Unix mount entry (e.g. &lt;filename&gt;/media/cdrom&lt;/filename&gt;).
/// This corresponds roughly to a mtab entry.
///
/// The `UnixMountEntry` type acts as an owner of an underlying `GUnixMountEntry` instance.
/// It provides the methods that can operate on this data type through `UnixMountEntryProtocol` conformance.
/// Use `UnixMountEntry` as a strong reference or owner of a `GUnixMountEntry` instance.
///
open class UnixMountEntry: UnixMountEntryProtocol {
        /// Untyped pointer to the underlying `GUnixMountEntry` instance.
    /// For type-safe access, use the generated, typed pointer `unix_mount_entry_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GUnixMountEntry>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GUnixMountEntry>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountEntry` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GUnixMountEntry>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GUnixMountEntry>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixMountEntry` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixMountEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GUnixMountEntry>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixMountEntry, cannot ref(unix_mount_entry_ptr)
    }

    /// Reference intialiser for a related type that implements `UnixMountEntryProtocol`
    /// `GUnixMountEntry` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixMountEntryProtocol`
    @inlinable public init<T: UnixMountEntryProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GUnixMountEntry, cannot ref(unix_mount_entry_ptr)
    }

    /// Do-nothing destructor for `GUnixMountEntry`.
    deinit {
        // no reference counting for GUnixMountEntry, cannot unref(unix_mount_entry_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixMountEntry, cannot ref(unix_mount_entry_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixMountEntry, cannot ref(unix_mount_entry_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixMountEntry, cannot ref(unix_mount_entry_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixMountEntry, cannot ref(unix_mount_entry_ptr)
    }



}

// MARK: no UnixMountEntry properties

// MARK: no UnixMountEntry signals

// MARK: UnixMountEntry has no signals
// MARK: UnixMountEntry Record: UnixMountEntryProtocol extension (methods and fields)
public extension UnixMountEntryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixMountEntry` instance.
    @inlinable var unix_mount_entry_ptr: UnsafeMutablePointer<GUnixMountEntry>! { return ptr?.assumingMemoryBound(to: GUnixMountEntry.self) }

    /// Compares two unix mounts.
    @inlinable func unixMountCompare<UnixMountEntryT: UnixMountEntryProtocol>(mount2: UnixMountEntryT) -> Int {
        let rv = Int(g_unix_mount_compare(unix_mount_entry_ptr, mount2.unix_mount_entry_ptr))
        return rv
    }

    /// Makes a copy of `mount_entry`.
    @inlinable func unixMountCopy() -> UnixMountEntryRef! {
        guard let rv = UnixMountEntryRef(gconstpointer: gconstpointer(g_unix_mount_copy(unix_mount_entry_ptr))) else { return nil }
        return rv
    }

    /// Frees a unix mount.
    @inlinable func unixMountFree() {
        g_unix_mount_free(unix_mount_entry_ptr)
    
    }

    /// Gets the device path for a unix mount.
    @inlinable func unixMountGetDevicePath() -> String! {
        let rv = g_unix_mount_get_device_path(unix_mount_entry_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the filesystem type for the unix mount.
    @inlinable func unixMountGetFsType() -> String! {
        let rv = g_unix_mount_get_fs_type(unix_mount_entry_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the mount path for a unix mount.
    @inlinable func unixMountGetMountPath() -> String! {
        let rv = g_unix_mount_get_mount_path(unix_mount_entry_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets a comma-separated list of mount options for the unix mount. For example,
    /// `rw,relatime,seclabel,data=ordered`.
    /// 
    /// This is similar to `g_unix_mount_point_get_options()`, but it takes
    /// a `GUnixMountEntry` as an argument.
    @inlinable func unixMountGetOptions() -> String! {
        let rv = g_unix_mount_get_options(unix_mount_entry_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the root of the mount within the filesystem. This is useful e.g. for
    /// mounts created by bind operation, or btrfs subvolumes.
    /// 
    /// For example, the root path is equal to "/" for mount created by
    /// "mount /dev/sda1 /mnt/foo" and "/bar" for
    /// "mount --bind /mnt/foo/bar /mnt/bar".
    @inlinable func unixMountGetRootPath() -> String! {
        let rv = g_unix_mount_get_root_path(unix_mount_entry_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Guesses whether a Unix mount can be ejected.
    @inlinable func unixMountGuessCanEject() -> Bool {
        let rv = ((g_unix_mount_guess_can_eject(unix_mount_entry_ptr)) != 0)
        return rv
    }

    /// Guesses the icon of a Unix mount.
    @inlinable func unixMountGuessIcon() -> IconRef! {
        let rv = IconRef(gconstpointer: gconstpointer(g_unix_mount_guess_icon(unix_mount_entry_ptr)))
        return rv
    }

    /// Guesses the name of a Unix mount.
    /// The result is a translated string.
    @inlinable func unixMountGuessName() -> String! {
        let rv = g_unix_mount_guess_name(unix_mount_entry_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Guesses whether a Unix mount should be displayed in the UI.
    @inlinable func unixMountGuessShouldDisplay() -> Bool {
        let rv = ((g_unix_mount_guess_should_display(unix_mount_entry_ptr)) != 0)
        return rv
    }

    /// Guesses the symbolic icon of a Unix mount.
    @inlinable func unixMountGuessSymbolicIcon() -> IconRef! {
        let rv = IconRef(gconstpointer: gconstpointer(g_unix_mount_guess_symbolic_icon(unix_mount_entry_ptr)))
        return rv
    }

    /// Checks if a unix mount is mounted read only.
    @inlinable func unixMountIsReadonly() -> Bool {
        let rv = ((g_unix_mount_is_readonly(unix_mount_entry_ptr)) != 0)
        return rv
    }

    /// Checks if a Unix mount is a system mount. This is the Boolean OR of
    /// `g_unix_is_system_fs_type()`, `g_unix_is_system_device_path()` and
    /// `g_unix_is_mount_path_system_internal()` on `mount_entry`’s properties.
    /// 
    /// The definition of what a ‘system’ mount entry is may change over time as new
    /// file system types and device paths are ignored.
    @inlinable func unixMountIsSystemInternal() -> Bool {
        let rv = ((g_unix_mount_is_system_internal(unix_mount_entry_ptr)) != 0)
        return rv
    }


}



/// Metatype/GType declaration for UnixMountMonitor
public extension UnixMountMonitorClassRef {
    
    /// This getter returns the GLib type identifier registered for `UnixMountMonitor`
    static var metatypeReference: GType { g_unix_mount_monitor_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GUnixMountMonitorClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GUnixMountMonitorClass.self) }
    
    static var metatype: GUnixMountMonitorClass? { metatypePointer?.pointee } 
    
    static var wrapper: UnixMountMonitorClassRef? { UnixMountMonitorClassRef(metatypePointer) }
    
    
}

// MARK: - UnixMountMonitorClass Record


///
/// The `UnixMountMonitorClassProtocol` protocol exposes the methods and properties of an underlying `GUnixMountMonitorClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixMountMonitorClass`.
/// Alternatively, use `UnixMountMonitorClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol UnixMountMonitorClassProtocol {
        /// Untyped pointer to the underlying `GUnixMountMonitorClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixMountMonitorClass` instance.
    var _ptr: UnsafeMutablePointer<GUnixMountMonitorClass>! { get }

    /// Required Initialiser for types conforming to `UnixMountMonitorClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `UnixMountMonitorClassRef` type acts as a lightweight Swift reference to an underlying `GUnixMountMonitorClass` instance.
/// It exposes methods that can operate on this data type through `UnixMountMonitorClassProtocol` conformance.
/// Use `UnixMountMonitorClassRef` only as an `unowned` reference to an existing `GUnixMountMonitorClass` instance.
///
public struct UnixMountMonitorClassRef: UnixMountMonitorClassProtocol {
        /// Untyped pointer to the underlying `GUnixMountMonitorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixMountMonitorClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixMountMonitorClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixMountMonitorClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixMountMonitorClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixMountMonitorClass>?) {
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

    /// Reference intialiser for a related type that implements `UnixMountMonitorClassProtocol`
    @inlinable init<T: UnixMountMonitorClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: UnixMountMonitorClass Record: UnixMountMonitorClassProtocol extension (methods and fields)
public extension UnixMountMonitorClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixMountMonitorClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GUnixMountMonitorClass>! { return ptr?.assumingMemoryBound(to: GUnixMountMonitorClass.self) }



}



// MARK: - UnixMountPoint Record

/// Defines a Unix mount point (e.g. &lt;filename&gt;/dev&lt;/filename&gt;).
/// This corresponds roughly to a fstab entry.
///
/// The `UnixMountPointProtocol` protocol exposes the methods and properties of an underlying `GUnixMountPoint` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixMountPoint`.
/// Alternatively, use `UnixMountPointRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol UnixMountPointProtocol {
        /// Untyped pointer to the underlying `GUnixMountPoint` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixMountPoint` instance.
    var unix_mount_point_ptr: UnsafeMutablePointer<GUnixMountPoint>! { get }

    /// Required Initialiser for types conforming to `UnixMountPointProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Defines a Unix mount point (e.g. &lt;filename&gt;/dev&lt;/filename&gt;).
/// This corresponds roughly to a fstab entry.
///
/// The `UnixMountPointRef` type acts as a lightweight Swift reference to an underlying `GUnixMountPoint` instance.
/// It exposes methods that can operate on this data type through `UnixMountPointProtocol` conformance.
/// Use `UnixMountPointRef` only as an `unowned` reference to an existing `GUnixMountPoint` instance.
///
public struct UnixMountPointRef: UnixMountPointProtocol {
        /// Untyped pointer to the underlying `GUnixMountPoint` instance.
    /// For type-safe access, use the generated, typed pointer `unix_mount_point_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixMountPointRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixMountPoint>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixMountPoint>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixMountPoint>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixMountPoint>?) {
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

    /// Reference intialiser for a related type that implements `UnixMountPointProtocol`
    @inlinable init<T: UnixMountPointProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Gets a `GUnixMountPoint` for a given mount path. If `time_read` is set, it
    /// will be filled with a unix timestamp for checking if the mount points have
    /// changed since with `g_unix_mount_points_changed_since()`.
    /// 
    /// If more mount points have the same mount path, the last matching mount point
    /// is returned.
    @inlinable static func at(mountPath: UnsafePointer<CChar>!, timeRead: UnsafeMutablePointer<guint64>! = nil) -> UnixMountPointRef! {
        guard let rv = UnixMountPointRef(gconstpointer: gconstpointer(g_unix_mount_point_at(mountPath, timeRead))) else { return nil }
        return rv
    }
}

/// Defines a Unix mount point (e.g. &lt;filename&gt;/dev&lt;/filename&gt;).
/// This corresponds roughly to a fstab entry.
///
/// The `UnixMountPoint` type acts as an owner of an underlying `GUnixMountPoint` instance.
/// It provides the methods that can operate on this data type through `UnixMountPointProtocol` conformance.
/// Use `UnixMountPoint` as a strong reference or owner of a `GUnixMountPoint` instance.
///
open class UnixMountPoint: UnixMountPointProtocol {
        /// Untyped pointer to the underlying `GUnixMountPoint` instance.
    /// For type-safe access, use the generated, typed pointer `unix_mount_point_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountPoint` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GUnixMountPoint>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountPoint` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GUnixMountPoint>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountPoint` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountPoint` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountPoint` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GUnixMountPoint>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountPoint` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GUnixMountPoint>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixMountPoint` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixMountPoint` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GUnixMountPoint>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixMountPoint, cannot ref(unix_mount_point_ptr)
    }

    /// Reference intialiser for a related type that implements `UnixMountPointProtocol`
    /// `GUnixMountPoint` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixMountPointProtocol`
    @inlinable public init<T: UnixMountPointProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GUnixMountPoint, cannot ref(unix_mount_point_ptr)
    }

    /// Do-nothing destructor for `GUnixMountPoint`.
    deinit {
        // no reference counting for GUnixMountPoint, cannot unref(unix_mount_point_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixMountPoint, cannot ref(unix_mount_point_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixMountPoint, cannot ref(unix_mount_point_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixMountPoint, cannot ref(unix_mount_point_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixMountPoint, cannot ref(unix_mount_point_ptr)
    }


    /// Gets a `GUnixMountPoint` for a given mount path. If `time_read` is set, it
    /// will be filled with a unix timestamp for checking if the mount points have
    /// changed since with `g_unix_mount_points_changed_since()`.
    /// 
    /// If more mount points have the same mount path, the last matching mount point
    /// is returned.
    @inlinable public static func at(mountPath: UnsafePointer<CChar>!, timeRead: UnsafeMutablePointer<guint64>! = nil) -> UnixMountPoint! {
        guard let rv = UnixMountPoint(gconstpointer: gconstpointer(g_unix_mount_point_at(mountPath, timeRead))) else { return nil }
        return rv
    }

}

// MARK: no UnixMountPoint properties

// MARK: no UnixMountPoint signals

// MARK: UnixMountPoint has no signals
// MARK: UnixMountPoint Record: UnixMountPointProtocol extension (methods and fields)
public extension UnixMountPointProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixMountPoint` instance.
    @inlinable var unix_mount_point_ptr: UnsafeMutablePointer<GUnixMountPoint>! { return ptr?.assumingMemoryBound(to: GUnixMountPoint.self) }

    /// Compares two unix mount points.
    @inlinable func compare<UnixMountPointT: UnixMountPointProtocol>(mount2: UnixMountPointT) -> Int {
        let rv = Int(g_unix_mount_point_compare(unix_mount_point_ptr, mount2.unix_mount_point_ptr))
        return rv
    }

    /// Makes a copy of `mount_point`.
    @inlinable func copy() -> UnixMountPointRef! {
        guard let rv = UnixMountPointRef(gconstpointer: gconstpointer(g_unix_mount_point_copy(unix_mount_point_ptr))) else { return nil }
        return rv
    }

    /// Frees a unix mount point.
    @inlinable func free() {
        g_unix_mount_point_free(unix_mount_point_ptr)
    
    }

    /// Gets the device path for a unix mount point.
    @inlinable func getDevicePath() -> String! {
        let rv = g_unix_mount_point_get_device_path(unix_mount_point_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the file system type for the mount point.
    @inlinable func getFsType() -> String! {
        let rv = g_unix_mount_point_get_fs_type(unix_mount_point_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the mount path for a unix mount point.
    @inlinable func getMountPath() -> String! {
        let rv = g_unix_mount_point_get_mount_path(unix_mount_point_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the options for the mount point.
    @inlinable func getOptions() -> String! {
        let rv = g_unix_mount_point_get_options(unix_mount_point_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Guesses whether a Unix mount point can be ejected.
    @inlinable func guessCanEject() -> Bool {
        let rv = ((g_unix_mount_point_guess_can_eject(unix_mount_point_ptr)) != 0)
        return rv
    }

    /// Guesses the icon of a Unix mount point.
    @inlinable func guessIcon() -> IconRef! {
        let rv = IconRef(gconstpointer: gconstpointer(g_unix_mount_point_guess_icon(unix_mount_point_ptr)))
        return rv
    }

    /// Guesses the name of a Unix mount point.
    /// The result is a translated string.
    @inlinable func guessName() -> String! {
        let rv = g_unix_mount_point_guess_name(unix_mount_point_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Guesses the symbolic icon of a Unix mount point.
    @inlinable func guessSymbolicIcon() -> IconRef! {
        let rv = IconRef(gconstpointer: gconstpointer(g_unix_mount_point_guess_symbolic_icon(unix_mount_point_ptr)))
        return rv
    }
    /// Gets the device path for a unix mount point.
    @inlinable var devicePath: String! {
        /// Gets the device path for a unix mount point.
        get {
            let rv = g_unix_mount_point_get_device_path(unix_mount_point_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the file system type for the mount point.
    @inlinable var fsType: String! {
        /// Gets the file system type for the mount point.
        get {
            let rv = g_unix_mount_point_get_fs_type(unix_mount_point_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Checks if a unix mount point is a loopback device.
    @inlinable var isLoopback: Bool {
        /// Checks if a unix mount point is a loopback device.
        get {
            let rv = ((g_unix_mount_point_is_loopback(unix_mount_point_ptr)) != 0)
            return rv
        }
    }

    /// Checks if a unix mount point is read only.
    @inlinable var isReadonly: Bool {
        /// Checks if a unix mount point is read only.
        get {
            let rv = ((g_unix_mount_point_is_readonly(unix_mount_point_ptr)) != 0)
            return rv
        }
    }

    /// Checks if a unix mount point is mountable by the user.
    @inlinable var isUserMountable: Bool {
        /// Checks if a unix mount point is mountable by the user.
        get {
            let rv = ((g_unix_mount_point_is_user_mountable(unix_mount_point_ptr)) != 0)
            return rv
        }
    }

    /// Gets the mount path for a unix mount point.
    @inlinable var mountPath: String! {
        /// Gets the mount path for a unix mount point.
        get {
            let rv = g_unix_mount_point_get_mount_path(unix_mount_point_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the options for the mount point.
    @inlinable var options: String! {
        /// Gets the options for the mount point.
        get {
            let rv = g_unix_mount_point_get_options(unix_mount_point_ptr).map({ String(cString: $0) })
            return rv
        }
    }


}



/// Metatype/GType declaration for UnixOutputStream
public extension UnixOutputStreamClassRef {
    
    /// This getter returns the GLib type identifier registered for `UnixOutputStream`
    static var metatypeReference: GType { g_unix_output_stream_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GUnixOutputStreamClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GUnixOutputStreamClass.self) }
    
    static var metatype: GUnixOutputStreamClass? { metatypePointer?.pointee } 
    
    static var wrapper: UnixOutputStreamClassRef? { UnixOutputStreamClassRef(metatypePointer) }
    
    
}

// MARK: - UnixOutputStreamClass Record


///
/// The `UnixOutputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GUnixOutputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixOutputStreamClass`.
/// Alternatively, use `UnixOutputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol UnixOutputStreamClassProtocol {
        /// Untyped pointer to the underlying `GUnixOutputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixOutputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GUnixOutputStreamClass>! { get }

    /// Required Initialiser for types conforming to `UnixOutputStreamClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `UnixOutputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GUnixOutputStreamClass` instance.
/// It exposes methods that can operate on this data type through `UnixOutputStreamClassProtocol` conformance.
/// Use `UnixOutputStreamClassRef` only as an `unowned` reference to an existing `GUnixOutputStreamClass` instance.
///
public struct UnixOutputStreamClassRef: UnixOutputStreamClassProtocol {
        /// Untyped pointer to the underlying `GUnixOutputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixOutputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixOutputStreamClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixOutputStreamClass>?) {
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

    /// Reference intialiser for a related type that implements `UnixOutputStreamClassProtocol`
    @inlinable init<T: UnixOutputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: UnixOutputStreamClass Record: UnixOutputStreamClassProtocol extension (methods and fields)
public extension UnixOutputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixOutputStreamClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GUnixOutputStreamClass>! { return ptr?.assumingMemoryBound(to: GUnixOutputStreamClass.self) }


    @inlinable var parentClass: GOutputStreamClass {
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



/// Metatype/GType declaration for UnixSocketAddress
public extension UnixSocketAddressClassRef {
    
    /// This getter returns the GLib type identifier registered for `UnixSocketAddress`
    static var metatypeReference: GType { g_unix_socket_address_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GUnixSocketAddressClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GUnixSocketAddressClass.self) }
    
    static var metatype: GUnixSocketAddressClass? { metatypePointer?.pointee } 
    
    static var wrapper: UnixSocketAddressClassRef? { UnixSocketAddressClassRef(metatypePointer) }
    
    
}

// MARK: - UnixSocketAddressClass Record


///
/// The `UnixSocketAddressClassProtocol` protocol exposes the methods and properties of an underlying `GUnixSocketAddressClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixSocketAddressClass`.
/// Alternatively, use `UnixSocketAddressClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol UnixSocketAddressClassProtocol {
        /// Untyped pointer to the underlying `GUnixSocketAddressClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixSocketAddressClass` instance.
    var _ptr: UnsafeMutablePointer<GUnixSocketAddressClass>! { get }

    /// Required Initialiser for types conforming to `UnixSocketAddressClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `UnixSocketAddressClassRef` type acts as a lightweight Swift reference to an underlying `GUnixSocketAddressClass` instance.
/// It exposes methods that can operate on this data type through `UnixSocketAddressClassProtocol` conformance.
/// Use `UnixSocketAddressClassRef` only as an `unowned` reference to an existing `GUnixSocketAddressClass` instance.
///
public struct UnixSocketAddressClassRef: UnixSocketAddressClassProtocol {
        /// Untyped pointer to the underlying `GUnixSocketAddressClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixSocketAddressClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixSocketAddressClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixSocketAddressClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixSocketAddressClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixSocketAddressClass>?) {
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

    /// Reference intialiser for a related type that implements `UnixSocketAddressClassProtocol`
    @inlinable init<T: UnixSocketAddressClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: UnixSocketAddressClass Record: UnixSocketAddressClassProtocol extension (methods and fields)
public extension UnixSocketAddressClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixSocketAddressClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GUnixSocketAddressClass>! { return ptr?.assumingMemoryBound(to: GUnixSocketAddressClass.self) }


    @inlinable var parentClass: GSocketAddressClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for Vfs
public extension VfsClassRef {
    
    /// This getter returns the GLib type identifier registered for `Vfs`
    static var metatypeReference: GType { g_vfs_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GVfsClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GVfsClass.self) }
    
    static var metatype: GVfsClass? { metatypePointer?.pointee } 
    
    static var wrapper: VfsClassRef? { VfsClassRef(metatypePointer) }
    
    
}

// MARK: - VfsClass Record


///
/// The `VfsClassProtocol` protocol exposes the methods and properties of an underlying `GVfsClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VfsClass`.
/// Alternatively, use `VfsClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol VfsClassProtocol {
        /// Untyped pointer to the underlying `GVfsClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GVfsClass` instance.
    var _ptr: UnsafeMutablePointer<GVfsClass>! { get }

    /// Required Initialiser for types conforming to `VfsClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `VfsClassRef` type acts as a lightweight Swift reference to an underlying `GVfsClass` instance.
/// It exposes methods that can operate on this data type through `VfsClassProtocol` conformance.
/// Use `VfsClassRef` only as an `unowned` reference to an existing `GVfsClass` instance.
///
public struct VfsClassRef: VfsClassProtocol {
        /// Untyped pointer to the underlying `GVfsClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension VfsClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GVfsClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GVfsClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GVfsClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GVfsClass>?) {
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

    /// Reference intialiser for a related type that implements `VfsClassProtocol`
    @inlinable init<T: VfsClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: VfsClass Record: VfsClassProtocol extension (methods and fields)
public extension VfsClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GVfsClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GVfsClass>! { return ptr?.assumingMemoryBound(to: GVfsClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
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



