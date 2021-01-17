import CGLib
import GLib
import GLibObject

/// Metatype/GType declaration for TcpConnection
public extension TcpConnectionClassRef {
    
    /// This getter returns the GLib type identifier registered for `TcpConnection`
    static var metatypeReference: GType { g_tcp_connection_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GTcpConnectionClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GTcpConnectionClass.self) }
    
    static var metatype: GTcpConnectionClass? { metatypePointer?.pointee } 
    
    static var wrapper: TcpConnectionClassRef? { TcpConnectionClassRef(metatypePointer) }
    
    
}

// MARK: - TcpConnectionClass Record

/// The `TcpConnectionClassProtocol` protocol exposes the methods and properties of an underlying `GTcpConnectionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TcpConnectionClass`.
/// Alternatively, use `TcpConnectionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TcpConnectionClassProtocol {
        /// Untyped pointer to the underlying `GTcpConnectionClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTcpConnectionClass` instance.
    var _ptr: UnsafeMutablePointer<GTcpConnectionClass>! { get }

}

/// The `TcpConnectionClassRef` type acts as a lightweight Swift reference to an underlying `GTcpConnectionClass` instance.
/// It exposes methods that can operate on this data type through `TcpConnectionClassProtocol` conformance.
/// Use `TcpConnectionClassRef` only as an `unowned` reference to an existing `GTcpConnectionClass` instance.
///

public struct TcpConnectionClassRef: TcpConnectionClassProtocol {
        /// Untyped pointer to the underlying `GTcpConnectionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TcpConnectionClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTcpConnectionClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTcpConnectionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTcpConnectionClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTcpConnectionClass>?) {
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

    /// Reference intialiser for a related type that implements `TcpConnectionClassProtocol`
    @inlinable init<T: TcpConnectionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TcpConnectionClass Record: TcpConnectionClassProtocol extension (methods and fields)
public extension TcpConnectionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTcpConnectionClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTcpConnectionClass>! { return ptr?.assumingMemoryBound(to: GTcpConnectionClass.self) }


    @inlinable var parentClass: GSocketConnectionClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for TcpWrapperConnection
public extension TcpWrapperConnectionClassRef {
    
    /// This getter returns the GLib type identifier registered for `TcpWrapperConnection`
    static var metatypeReference: GType { g_tcp_wrapper_connection_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GTcpWrapperConnectionClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GTcpWrapperConnectionClass.self) }
    
    static var metatype: GTcpWrapperConnectionClass? { metatypePointer?.pointee } 
    
    static var wrapper: TcpWrapperConnectionClassRef? { TcpWrapperConnectionClassRef(metatypePointer) }
    
    
}

// MARK: - TcpWrapperConnectionClass Record

/// The `TcpWrapperConnectionClassProtocol` protocol exposes the methods and properties of an underlying `GTcpWrapperConnectionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TcpWrapperConnectionClass`.
/// Alternatively, use `TcpWrapperConnectionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TcpWrapperConnectionClassProtocol {
        /// Untyped pointer to the underlying `GTcpWrapperConnectionClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTcpWrapperConnectionClass` instance.
    var _ptr: UnsafeMutablePointer<GTcpWrapperConnectionClass>! { get }

}

/// The `TcpWrapperConnectionClassRef` type acts as a lightweight Swift reference to an underlying `GTcpWrapperConnectionClass` instance.
/// It exposes methods that can operate on this data type through `TcpWrapperConnectionClassProtocol` conformance.
/// Use `TcpWrapperConnectionClassRef` only as an `unowned` reference to an existing `GTcpWrapperConnectionClass` instance.
///

public struct TcpWrapperConnectionClassRef: TcpWrapperConnectionClassProtocol {
        /// Untyped pointer to the underlying `GTcpWrapperConnectionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TcpWrapperConnectionClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTcpWrapperConnectionClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTcpWrapperConnectionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTcpWrapperConnectionClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTcpWrapperConnectionClass>?) {
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

    /// Reference intialiser for a related type that implements `TcpWrapperConnectionClassProtocol`
    @inlinable init<T: TcpWrapperConnectionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TcpWrapperConnectionClass Record: TcpWrapperConnectionClassProtocol extension (methods and fields)
public extension TcpWrapperConnectionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTcpWrapperConnectionClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTcpWrapperConnectionClass>! { return ptr?.assumingMemoryBound(to: GTcpWrapperConnectionClass.self) }


    @inlinable var parentClass: GTcpConnectionClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for ThemedIcon
public extension ThemedIconClassRef {
    
    /// This getter returns the GLib type identifier registered for `ThemedIcon`
    static var metatypeReference: GType { g_themed_icon_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GThemedIconClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GThemedIconClass.self) }
    
    static var metatype: GThemedIconClass? { metatypePointer?.pointee } 
    
    static var wrapper: ThemedIconClassRef? { ThemedIconClassRef(metatypePointer) }
    
    
}

// MARK: - ThemedIconClass Record

/// The `ThemedIconClassProtocol` protocol exposes the methods and properties of an underlying `GThemedIconClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ThemedIconClass`.
/// Alternatively, use `ThemedIconClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ThemedIconClassProtocol {
        /// Untyped pointer to the underlying `GThemedIconClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GThemedIconClass` instance.
    var _ptr: UnsafeMutablePointer<GThemedIconClass>! { get }

}

/// The `ThemedIconClassRef` type acts as a lightweight Swift reference to an underlying `GThemedIconClass` instance.
/// It exposes methods that can operate on this data type through `ThemedIconClassProtocol` conformance.
/// Use `ThemedIconClassRef` only as an `unowned` reference to an existing `GThemedIconClass` instance.
///

public struct ThemedIconClassRef: ThemedIconClassProtocol {
        /// Untyped pointer to the underlying `GThemedIconClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ThemedIconClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GThemedIconClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GThemedIconClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GThemedIconClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GThemedIconClass>?) {
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

    /// Reference intialiser for a related type that implements `ThemedIconClassProtocol`
    @inlinable init<T: ThemedIconClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ThemedIconClass Record: ThemedIconClassProtocol extension (methods and fields)
public extension ThemedIconClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GThemedIconClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GThemedIconClass>! { return ptr?.assumingMemoryBound(to: GThemedIconClass.self) }



}



/// Metatype/GType declaration for ThreadedSocketService
public extension ThreadedSocketServiceClassRef {
    
    /// This getter returns the GLib type identifier registered for `ThreadedSocketService`
    static var metatypeReference: GType { g_threaded_socket_service_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GThreadedSocketServiceClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GThreadedSocketServiceClass.self) }
    
    static var metatype: GThreadedSocketServiceClass? { metatypePointer?.pointee } 
    
    static var wrapper: ThreadedSocketServiceClassRef? { ThreadedSocketServiceClassRef(metatypePointer) }
    
    
}

// MARK: - ThreadedSocketServiceClass Record

/// The `ThreadedSocketServiceClassProtocol` protocol exposes the methods and properties of an underlying `GThreadedSocketServiceClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ThreadedSocketServiceClass`.
/// Alternatively, use `ThreadedSocketServiceClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ThreadedSocketServiceClassProtocol {
        /// Untyped pointer to the underlying `GThreadedSocketServiceClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GThreadedSocketServiceClass` instance.
    var _ptr: UnsafeMutablePointer<GThreadedSocketServiceClass>! { get }

}

/// The `ThreadedSocketServiceClassRef` type acts as a lightweight Swift reference to an underlying `GThreadedSocketServiceClass` instance.
/// It exposes methods that can operate on this data type through `ThreadedSocketServiceClassProtocol` conformance.
/// Use `ThreadedSocketServiceClassRef` only as an `unowned` reference to an existing `GThreadedSocketServiceClass` instance.
///

public struct ThreadedSocketServiceClassRef: ThreadedSocketServiceClassProtocol {
        /// Untyped pointer to the underlying `GThreadedSocketServiceClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ThreadedSocketServiceClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GThreadedSocketServiceClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GThreadedSocketServiceClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GThreadedSocketServiceClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GThreadedSocketServiceClass>?) {
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

    /// Reference intialiser for a related type that implements `ThreadedSocketServiceClassProtocol`
    @inlinable init<T: ThreadedSocketServiceClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ThreadedSocketServiceClass Record: ThreadedSocketServiceClassProtocol extension (methods and fields)
public extension ThreadedSocketServiceClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GThreadedSocketServiceClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GThreadedSocketServiceClass>! { return ptr?.assumingMemoryBound(to: GThreadedSocketServiceClass.self) }


    @inlinable var parentClass: GSocketServiceClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var run is unavailable because run is void

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

    // var GReserved4 is unavailable because _g_reserved4 is void

    // var GReserved5 is unavailable because _g_reserved5 is void

}



/// Metatype/GType declaration for TLSBackend
public extension TLSBackendInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `TLSBackend`
    static var metatypeReference: GType { g_tls_backend_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GTlsBackendInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GTlsBackendInterface.self) }
    
    static var metatype: GTlsBackendInterface? { metatypePointer?.pointee } 
    
    static var wrapper: TLSBackendInterfaceRef? { TLSBackendInterfaceRef(metatypePointer) }
    
    
}

// MARK: - TLSBackendInterface Record

/// The `TLSBackendInterfaceProtocol` protocol exposes the methods and properties of an underlying `GTlsBackendInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TLSBackendInterface`.
/// Alternatively, use `TLSBackendInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Provides an interface for describing TLS-related types.
public protocol TLSBackendInterfaceProtocol {
        /// Untyped pointer to the underlying `GTlsBackendInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTlsBackendInterface` instance.
    var _ptr: UnsafeMutablePointer<GTlsBackendInterface>! { get }

}

/// The `TLSBackendInterfaceRef` type acts as a lightweight Swift reference to an underlying `GTlsBackendInterface` instance.
/// It exposes methods that can operate on this data type through `TLSBackendInterfaceProtocol` conformance.
/// Use `TLSBackendInterfaceRef` only as an `unowned` reference to an existing `GTlsBackendInterface` instance.
///
/// Provides an interface for describing TLS-related types.
public struct TLSBackendInterfaceRef: TLSBackendInterfaceProtocol {
        /// Untyped pointer to the underlying `GTlsBackendInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TLSBackendInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTlsBackendInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTlsBackendInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTlsBackendInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTlsBackendInterface>?) {
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

    /// Reference intialiser for a related type that implements `TLSBackendInterfaceProtocol`
    @inlinable init<T: TLSBackendInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TLSBackendInterface Record: TLSBackendInterfaceProtocol extension (methods and fields)
public extension TLSBackendInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsBackendInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTlsBackendInterface>! { return ptr?.assumingMemoryBound(to: GTlsBackendInterface.self) }


    /// The parent interface.
    @inlinable var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var supportsTLS is unavailable because supports_tls is void

    // var getCertificateType is unavailable because get_certificate_type is void

    // var getClientConnectionType is unavailable because get_client_connection_type is void

    // var getServerConnectionType is unavailable because get_server_connection_type is void

    // var getFileDatabaseType is unavailable because get_file_database_type is void

    // var getDefaultDatabase is unavailable because get_default_database is void

    // var supportsDtls is unavailable because supports_dtls is void

    // var getDtlsClientConnectionType is unavailable because get_dtls_client_connection_type is void

    // var getDtlsServerConnectionType is unavailable because get_dtls_server_connection_type is void

}



/// Metatype/GType declaration for TLSCertificate
public extension TLSCertificateClassRef {
    
    /// This getter returns the GLib type identifier registered for `TLSCertificate`
    static var metatypeReference: GType { g_tls_certificate_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GTlsCertificateClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GTlsCertificateClass.self) }
    
    static var metatype: GTlsCertificateClass? { metatypePointer?.pointee } 
    
    static var wrapper: TLSCertificateClassRef? { TLSCertificateClassRef(metatypePointer) }
    
    
}

// MARK: - TLSCertificateClass Record

/// The `TLSCertificateClassProtocol` protocol exposes the methods and properties of an underlying `GTlsCertificateClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TLSCertificateClass`.
/// Alternatively, use `TLSCertificateClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TLSCertificateClassProtocol {
        /// Untyped pointer to the underlying `GTlsCertificateClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTlsCertificateClass` instance.
    var _ptr: UnsafeMutablePointer<GTlsCertificateClass>! { get }

}

/// The `TLSCertificateClassRef` type acts as a lightweight Swift reference to an underlying `GTlsCertificateClass` instance.
/// It exposes methods that can operate on this data type through `TLSCertificateClassProtocol` conformance.
/// Use `TLSCertificateClassRef` only as an `unowned` reference to an existing `GTlsCertificateClass` instance.
///

public struct TLSCertificateClassRef: TLSCertificateClassProtocol {
        /// Untyped pointer to the underlying `GTlsCertificateClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TLSCertificateClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTlsCertificateClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTlsCertificateClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTlsCertificateClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTlsCertificateClass>?) {
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

    /// Reference intialiser for a related type that implements `TLSCertificateClassProtocol`
    @inlinable init<T: TLSCertificateClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TLSCertificateClass Record: TLSCertificateClassProtocol extension (methods and fields)
public extension TLSCertificateClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsCertificateClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTlsCertificateClass>! { return ptr?.assumingMemoryBound(to: GTlsCertificateClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var verify is unavailable because verify is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for TLSClientConnection
public extension TLSClientConnectionInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `TLSClientConnection`
    static var metatypeReference: GType { g_tls_client_connection_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GTlsClientConnectionInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GTlsClientConnectionInterface.self) }
    
    static var metatype: GTlsClientConnectionInterface? { metatypePointer?.pointee } 
    
    static var wrapper: TLSClientConnectionInterfaceRef? { TLSClientConnectionInterfaceRef(metatypePointer) }
    
    
}

// MARK: - TLSClientConnectionInterface Record

/// The `TLSClientConnectionInterfaceProtocol` protocol exposes the methods and properties of an underlying `GTlsClientConnectionInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TLSClientConnectionInterface`.
/// Alternatively, use `TLSClientConnectionInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// vtable for a `GTlsClientConnection` implementation.
public protocol TLSClientConnectionInterfaceProtocol {
        /// Untyped pointer to the underlying `GTlsClientConnectionInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTlsClientConnectionInterface` instance.
    var _ptr: UnsafeMutablePointer<GTlsClientConnectionInterface>! { get }

}

/// The `TLSClientConnectionInterfaceRef` type acts as a lightweight Swift reference to an underlying `GTlsClientConnectionInterface` instance.
/// It exposes methods that can operate on this data type through `TLSClientConnectionInterfaceProtocol` conformance.
/// Use `TLSClientConnectionInterfaceRef` only as an `unowned` reference to an existing `GTlsClientConnectionInterface` instance.
///
/// vtable for a `GTlsClientConnection` implementation.
public struct TLSClientConnectionInterfaceRef: TLSClientConnectionInterfaceProtocol {
        /// Untyped pointer to the underlying `GTlsClientConnectionInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TLSClientConnectionInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTlsClientConnectionInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTlsClientConnectionInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTlsClientConnectionInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTlsClientConnectionInterface>?) {
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

    /// Reference intialiser for a related type that implements `TLSClientConnectionInterfaceProtocol`
    @inlinable init<T: TLSClientConnectionInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSClientConnectionInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSClientConnectionInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSClientConnectionInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSClientConnectionInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSClientConnectionInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TLSClientConnectionInterface Record: TLSClientConnectionInterfaceProtocol extension (methods and fields)
public extension TLSClientConnectionInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsClientConnectionInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTlsClientConnectionInterface>! { return ptr?.assumingMemoryBound(to: GTlsClientConnectionInterface.self) }


    /// The parent interface.
    @inlinable var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var copySessionState is unavailable because copy_session_state is void

}



/// Metatype/GType declaration for TLSConnection
public extension TLSConnectionClassRef {
    
    /// This getter returns the GLib type identifier registered for `TLSConnection`
    static var metatypeReference: GType { g_tls_connection_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GTlsConnectionClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GTlsConnectionClass.self) }
    
    static var metatype: GTlsConnectionClass? { metatypePointer?.pointee } 
    
    static var wrapper: TLSConnectionClassRef? { TLSConnectionClassRef(metatypePointer) }
    
    
}

// MARK: - TLSConnectionClass Record

/// The `TLSConnectionClassProtocol` protocol exposes the methods and properties of an underlying `GTlsConnectionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TLSConnectionClass`.
/// Alternatively, use `TLSConnectionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TLSConnectionClassProtocol {
        /// Untyped pointer to the underlying `GTlsConnectionClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTlsConnectionClass` instance.
    var _ptr: UnsafeMutablePointer<GTlsConnectionClass>! { get }

}

/// The `TLSConnectionClassRef` type acts as a lightweight Swift reference to an underlying `GTlsConnectionClass` instance.
/// It exposes methods that can operate on this data type through `TLSConnectionClassProtocol` conformance.
/// Use `TLSConnectionClassRef` only as an `unowned` reference to an existing `GTlsConnectionClass` instance.
///

public struct TLSConnectionClassRef: TLSConnectionClassProtocol {
        /// Untyped pointer to the underlying `GTlsConnectionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TLSConnectionClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTlsConnectionClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTlsConnectionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTlsConnectionClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTlsConnectionClass>?) {
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

    /// Reference intialiser for a related type that implements `TLSConnectionClassProtocol`
    @inlinable init<T: TLSConnectionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TLSConnectionClass Record: TLSConnectionClassProtocol extension (methods and fields)
public extension TLSConnectionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsConnectionClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTlsConnectionClass>! { return ptr?.assumingMemoryBound(to: GTlsConnectionClass.self) }


    @inlinable var parentClass: GIOStreamClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var acceptCertificate is unavailable because accept_certificate is void

    // var handshake is unavailable because handshake is void

    // var handshakeAsync is unavailable because handshake_async is void

    // var handshakeFinish is unavailable because handshake_finish is void

    // var getBindingData is unavailable because get_binding_data is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for TLSDatabase
public extension TLSDatabaseClassRef {
    
    /// This getter returns the GLib type identifier registered for `TLSDatabase`
    static var metatypeReference: GType { g_tls_database_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GTlsDatabaseClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GTlsDatabaseClass.self) }
    
    static var metatype: GTlsDatabaseClass? { metatypePointer?.pointee } 
    
    static var wrapper: TLSDatabaseClassRef? { TLSDatabaseClassRef(metatypePointer) }
    
    
}

// MARK: - TLSDatabaseClass Record

/// The `TLSDatabaseClassProtocol` protocol exposes the methods and properties of an underlying `GTlsDatabaseClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TLSDatabaseClass`.
/// Alternatively, use `TLSDatabaseClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The class for `GTlsDatabase`. Derived classes should implement the various
/// virtual methods. _async and _finish methods have a default
/// implementation that runs the corresponding sync method in a thread.
public protocol TLSDatabaseClassProtocol {
        /// Untyped pointer to the underlying `GTlsDatabaseClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTlsDatabaseClass` instance.
    var _ptr: UnsafeMutablePointer<GTlsDatabaseClass>! { get }

}

/// The `TLSDatabaseClassRef` type acts as a lightweight Swift reference to an underlying `GTlsDatabaseClass` instance.
/// It exposes methods that can operate on this data type through `TLSDatabaseClassProtocol` conformance.
/// Use `TLSDatabaseClassRef` only as an `unowned` reference to an existing `GTlsDatabaseClass` instance.
///
/// The class for `GTlsDatabase`. Derived classes should implement the various
/// virtual methods. _async and _finish methods have a default
/// implementation that runs the corresponding sync method in a thread.
public struct TLSDatabaseClassRef: TLSDatabaseClassProtocol {
        /// Untyped pointer to the underlying `GTlsDatabaseClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TLSDatabaseClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTlsDatabaseClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTlsDatabaseClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTlsDatabaseClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTlsDatabaseClass>?) {
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

    /// Reference intialiser for a related type that implements `TLSDatabaseClassProtocol`
    @inlinable init<T: TLSDatabaseClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TLSDatabaseClass Record: TLSDatabaseClassProtocol extension (methods and fields)
public extension TLSDatabaseClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsDatabaseClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTlsDatabaseClass>! { return ptr?.assumingMemoryBound(to: GTlsDatabaseClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var verifyChain is unavailable because verify_chain is void

    // var verifyChainAsync is unavailable because verify_chain_async is void

    // var verifyChainFinish is unavailable because verify_chain_finish is void

    // var createCertificateHandle is unavailable because create_certificate_handle is void

    // var lookupCertificateForHandle is unavailable because lookup_certificate_for_handle is void

    // var lookupCertificateForHandleAsync is unavailable because lookup_certificate_for_handle_async is void

    // var lookupCertificateForHandleFinish is unavailable because lookup_certificate_for_handle_finish is void

    // var lookupCertificateIssuer is unavailable because lookup_certificate_issuer is void

    // var lookupCertificateIssuerAsync is unavailable because lookup_certificate_issuer_async is void

    // var lookupCertificateIssuerFinish is unavailable because lookup_certificate_issuer_finish is void

    // var lookupCertificatesIssuedBy is unavailable because lookup_certificates_issued_by is void

    // var lookupCertificatesIssuedByAsync is unavailable because lookup_certificates_issued_by_async is void

    // var lookupCertificatesIssuedByFinish is unavailable because lookup_certificates_issued_by_finish is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for TLSFileDatabase
public extension TLSFileDatabaseInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `TLSFileDatabase`
    static var metatypeReference: GType { g_tls_file_database_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GTlsFileDatabaseInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GTlsFileDatabaseInterface.self) }
    
    static var metatype: GTlsFileDatabaseInterface? { metatypePointer?.pointee } 
    
    static var wrapper: TLSFileDatabaseInterfaceRef? { TLSFileDatabaseInterfaceRef(metatypePointer) }
    
    
}

// MARK: - TLSFileDatabaseInterface Record

/// The `TLSFileDatabaseInterfaceProtocol` protocol exposes the methods and properties of an underlying `GTlsFileDatabaseInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TLSFileDatabaseInterface`.
/// Alternatively, use `TLSFileDatabaseInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Provides an interface for `GTlsFileDatabase` implementations.
public protocol TLSFileDatabaseInterfaceProtocol {
        /// Untyped pointer to the underlying `GTlsFileDatabaseInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTlsFileDatabaseInterface` instance.
    var _ptr: UnsafeMutablePointer<GTlsFileDatabaseInterface>! { get }

}

/// The `TLSFileDatabaseInterfaceRef` type acts as a lightweight Swift reference to an underlying `GTlsFileDatabaseInterface` instance.
/// It exposes methods that can operate on this data type through `TLSFileDatabaseInterfaceProtocol` conformance.
/// Use `TLSFileDatabaseInterfaceRef` only as an `unowned` reference to an existing `GTlsFileDatabaseInterface` instance.
///
/// Provides an interface for `GTlsFileDatabase` implementations.
public struct TLSFileDatabaseInterfaceRef: TLSFileDatabaseInterfaceProtocol {
        /// Untyped pointer to the underlying `GTlsFileDatabaseInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TLSFileDatabaseInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTlsFileDatabaseInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTlsFileDatabaseInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTlsFileDatabaseInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTlsFileDatabaseInterface>?) {
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

    /// Reference intialiser for a related type that implements `TLSFileDatabaseInterfaceProtocol`
    @inlinable init<T: TLSFileDatabaseInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSFileDatabaseInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSFileDatabaseInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSFileDatabaseInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSFileDatabaseInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSFileDatabaseInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TLSFileDatabaseInterface Record: TLSFileDatabaseInterfaceProtocol extension (methods and fields)
public extension TLSFileDatabaseInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsFileDatabaseInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTlsFileDatabaseInterface>! { return ptr?.assumingMemoryBound(to: GTlsFileDatabaseInterface.self) }


    /// The parent interface.
    @inlinable var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for TLSInteraction
public extension TLSInteractionClassRef {
    
    /// This getter returns the GLib type identifier registered for `TLSInteraction`
    static var metatypeReference: GType { g_tls_interaction_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GTlsInteractionClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GTlsInteractionClass.self) }
    
    static var metatype: GTlsInteractionClass? { metatypePointer?.pointee } 
    
    static var wrapper: TLSInteractionClassRef? { TLSInteractionClassRef(metatypePointer) }
    
    
}

// MARK: - TLSInteractionClass Record

/// The `TLSInteractionClassProtocol` protocol exposes the methods and properties of an underlying `GTlsInteractionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TLSInteractionClass`.
/// Alternatively, use `TLSInteractionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The class for `GTlsInteraction`. Derived classes implement the various
/// virtual interaction methods to handle TLS interactions.
/// 
/// Derived classes can choose to implement whichever interactions methods they'd
/// like to support by overriding those virtual methods in their class
/// initialization function. If a derived class implements an async method,
/// it must also implement the corresponding finish method.
/// 
/// The synchronous interaction methods should implement to display modal dialogs,
/// and the asynchronous methods to display modeless dialogs.
/// 
/// If the user cancels an interaction, then the result should be
/// `G_TLS_INTERACTION_FAILED` and the error should be set with a domain of
/// `G_IO_ERROR` and code of `G_IO_ERROR_CANCELLED`.
public protocol TLSInteractionClassProtocol {
        /// Untyped pointer to the underlying `GTlsInteractionClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTlsInteractionClass` instance.
    var _ptr: UnsafeMutablePointer<GTlsInteractionClass>! { get }

}

/// The `TLSInteractionClassRef` type acts as a lightweight Swift reference to an underlying `GTlsInteractionClass` instance.
/// It exposes methods that can operate on this data type through `TLSInteractionClassProtocol` conformance.
/// Use `TLSInteractionClassRef` only as an `unowned` reference to an existing `GTlsInteractionClass` instance.
///
/// The class for `GTlsInteraction`. Derived classes implement the various
/// virtual interaction methods to handle TLS interactions.
/// 
/// Derived classes can choose to implement whichever interactions methods they'd
/// like to support by overriding those virtual methods in their class
/// initialization function. If a derived class implements an async method,
/// it must also implement the corresponding finish method.
/// 
/// The synchronous interaction methods should implement to display modal dialogs,
/// and the asynchronous methods to display modeless dialogs.
/// 
/// If the user cancels an interaction, then the result should be
/// `G_TLS_INTERACTION_FAILED` and the error should be set with a domain of
/// `G_IO_ERROR` and code of `G_IO_ERROR_CANCELLED`.
public struct TLSInteractionClassRef: TLSInteractionClassProtocol {
        /// Untyped pointer to the underlying `GTlsInteractionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TLSInteractionClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTlsInteractionClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTlsInteractionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTlsInteractionClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTlsInteractionClass>?) {
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

    /// Reference intialiser for a related type that implements `TLSInteractionClassProtocol`
    @inlinable init<T: TLSInteractionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TLSInteractionClass Record: TLSInteractionClassProtocol extension (methods and fields)
public extension TLSInteractionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsInteractionClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTlsInteractionClass>! { return ptr?.assumingMemoryBound(to: GTlsInteractionClass.self) }


    // var parentClass is unavailable because parent_class is private

    // var askPassword is unavailable because ask_password is void

    // var askPasswordAsync is unavailable because ask_password_async is void

    // var askPasswordFinish is unavailable because ask_password_finish is void

    // var requestCertificate is unavailable because request_certificate is void

    // var requestCertificateAsync is unavailable because request_certificate_async is void

    // var requestCertificateFinish is unavailable because request_certificate_finish is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for TLSPassword
public extension TLSPasswordClassRef {
    
    /// This getter returns the GLib type identifier registered for `TLSPassword`
    static var metatypeReference: GType { g_tls_password_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GTlsPasswordClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GTlsPasswordClass.self) }
    
    static var metatype: GTlsPasswordClass? { metatypePointer?.pointee } 
    
    static var wrapper: TLSPasswordClassRef? { TLSPasswordClassRef(metatypePointer) }
    
    
}

// MARK: - TLSPasswordClass Record

/// The `TLSPasswordClassProtocol` protocol exposes the methods and properties of an underlying `GTlsPasswordClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TLSPasswordClass`.
/// Alternatively, use `TLSPasswordClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Class structure for `GTlsPassword`.
public protocol TLSPasswordClassProtocol {
        /// Untyped pointer to the underlying `GTlsPasswordClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTlsPasswordClass` instance.
    var _ptr: UnsafeMutablePointer<GTlsPasswordClass>! { get }

}

/// The `TLSPasswordClassRef` type acts as a lightweight Swift reference to an underlying `GTlsPasswordClass` instance.
/// It exposes methods that can operate on this data type through `TLSPasswordClassProtocol` conformance.
/// Use `TLSPasswordClassRef` only as an `unowned` reference to an existing `GTlsPasswordClass` instance.
///
/// Class structure for `GTlsPassword`.
public struct TLSPasswordClassRef: TLSPasswordClassProtocol {
        /// Untyped pointer to the underlying `GTlsPasswordClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TLSPasswordClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTlsPasswordClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTlsPasswordClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTlsPasswordClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTlsPasswordClass>?) {
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

    /// Reference intialiser for a related type that implements `TLSPasswordClassProtocol`
    @inlinable init<T: TLSPasswordClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TLSPasswordClass Record: TLSPasswordClassProtocol extension (methods and fields)
public extension TLSPasswordClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsPasswordClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTlsPasswordClass>! { return ptr?.assumingMemoryBound(to: GTlsPasswordClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var getValue is unavailable because get_value is void

    // var setValue is unavailable because set_value is void

    // var getDefaultWarning is unavailable because get_default_warning is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for TLSServerConnection
public extension TLSServerConnectionInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `TLSServerConnection`
    static var metatypeReference: GType { g_tls_server_connection_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GTlsServerConnectionInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GTlsServerConnectionInterface.self) }
    
    static var metatype: GTlsServerConnectionInterface? { metatypePointer?.pointee } 
    
    static var wrapper: TLSServerConnectionInterfaceRef? { TLSServerConnectionInterfaceRef(metatypePointer) }
    
    
}

// MARK: - TLSServerConnectionInterface Record

/// The `TLSServerConnectionInterfaceProtocol` protocol exposes the methods and properties of an underlying `GTlsServerConnectionInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TLSServerConnectionInterface`.
/// Alternatively, use `TLSServerConnectionInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// vtable for a `GTlsServerConnection` implementation.
public protocol TLSServerConnectionInterfaceProtocol {
        /// Untyped pointer to the underlying `GTlsServerConnectionInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTlsServerConnectionInterface` instance.
    var _ptr: UnsafeMutablePointer<GTlsServerConnectionInterface>! { get }

}

/// The `TLSServerConnectionInterfaceRef` type acts as a lightweight Swift reference to an underlying `GTlsServerConnectionInterface` instance.
/// It exposes methods that can operate on this data type through `TLSServerConnectionInterfaceProtocol` conformance.
/// Use `TLSServerConnectionInterfaceRef` only as an `unowned` reference to an existing `GTlsServerConnectionInterface` instance.
///
/// vtable for a `GTlsServerConnection` implementation.
public struct TLSServerConnectionInterfaceRef: TLSServerConnectionInterfaceProtocol {
        /// Untyped pointer to the underlying `GTlsServerConnectionInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TLSServerConnectionInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTlsServerConnectionInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTlsServerConnectionInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTlsServerConnectionInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTlsServerConnectionInterface>?) {
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

    /// Reference intialiser for a related type that implements `TLSServerConnectionInterfaceProtocol`
    @inlinable init<T: TLSServerConnectionInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSServerConnectionInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSServerConnectionInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSServerConnectionInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSServerConnectionInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSServerConnectionInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TLSServerConnectionInterface Record: TLSServerConnectionInterfaceProtocol extension (methods and fields)
public extension TLSServerConnectionInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsServerConnectionInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTlsServerConnectionInterface>! { return ptr?.assumingMemoryBound(to: GTlsServerConnectionInterface.self) }


    /// The parent interface.
    @inlinable var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

}



/// Metatype/GType declaration for UnixConnection
public extension UnixConnectionClassRef {
    
    /// This getter returns the GLib type identifier registered for `UnixConnection`
    static var metatypeReference: GType { g_unix_connection_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GUnixConnectionClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GUnixConnectionClass.self) }
    
    static var metatype: GUnixConnectionClass? { metatypePointer?.pointee } 
    
    static var wrapper: UnixConnectionClassRef? { UnixConnectionClassRef(metatypePointer) }
    
    
}

// MARK: - UnixConnectionClass Record

/// The `UnixConnectionClassProtocol` protocol exposes the methods and properties of an underlying `GUnixConnectionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixConnectionClass`.
/// Alternatively, use `UnixConnectionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol UnixConnectionClassProtocol {
        /// Untyped pointer to the underlying `GUnixConnectionClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixConnectionClass` instance.
    var _ptr: UnsafeMutablePointer<GUnixConnectionClass>! { get }

}

/// The `UnixConnectionClassRef` type acts as a lightweight Swift reference to an underlying `GUnixConnectionClass` instance.
/// It exposes methods that can operate on this data type through `UnixConnectionClassProtocol` conformance.
/// Use `UnixConnectionClassRef` only as an `unowned` reference to an existing `GUnixConnectionClass` instance.
///

public struct UnixConnectionClassRef: UnixConnectionClassProtocol {
        /// Untyped pointer to the underlying `GUnixConnectionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixConnectionClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixConnectionClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixConnectionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixConnectionClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixConnectionClass>?) {
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

    /// Reference intialiser for a related type that implements `UnixConnectionClassProtocol`
    @inlinable init<T: UnixConnectionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: UnixConnectionClass Record: UnixConnectionClassProtocol extension (methods and fields)
public extension UnixConnectionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixConnectionClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GUnixConnectionClass>! { return ptr?.assumingMemoryBound(to: GUnixConnectionClass.self) }


    @inlinable var parentClass: GSocketConnectionClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



