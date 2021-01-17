import CGLib
import GLib
import GLibObject

/// Metatype/GType declaration for PollableInputStream
public extension PollableInputStreamInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `PollableInputStream`
    static var metatypeReference: GType { g_pollable_input_stream_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GPollableInputStreamInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GPollableInputStreamInterface.self) }
    
    static var metatype: GPollableInputStreamInterface? { metatypePointer?.pointee } 
    
    static var wrapper: PollableInputStreamInterfaceRef? { PollableInputStreamInterfaceRef(metatypePointer) }
    
    
}

// MARK: - PollableInputStreamInterface Record

/// The `PollableInputStreamInterfaceProtocol` protocol exposes the methods and properties of an underlying `GPollableInputStreamInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PollableInputStreamInterface`.
/// Alternatively, use `PollableInputStreamInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The interface for pollable input streams.
/// 
/// The default implementation of `can_poll` always returns `true`.
/// 
/// The default implementation of `read_nonblocking` calls
/// `g_pollable_input_stream_is_readable()`, and then calls
/// `g_input_stream_read()` if it returns `true`. This means you only need
/// to override it if it is possible that your `is_readable`
/// implementation may return `true` when the stream is not actually
/// readable.
public protocol PollableInputStreamInterfaceProtocol {
        /// Untyped pointer to the underlying `GPollableInputStreamInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GPollableInputStreamInterface` instance.
    var _ptr: UnsafeMutablePointer<GPollableInputStreamInterface>! { get }

}

/// The `PollableInputStreamInterfaceRef` type acts as a lightweight Swift reference to an underlying `GPollableInputStreamInterface` instance.
/// It exposes methods that can operate on this data type through `PollableInputStreamInterfaceProtocol` conformance.
/// Use `PollableInputStreamInterfaceRef` only as an `unowned` reference to an existing `GPollableInputStreamInterface` instance.
///
/// The interface for pollable input streams.
/// 
/// The default implementation of `can_poll` always returns `true`.
/// 
/// The default implementation of `read_nonblocking` calls
/// `g_pollable_input_stream_is_readable()`, and then calls
/// `g_input_stream_read()` if it returns `true`. This means you only need
/// to override it if it is possible that your `is_readable`
/// implementation may return `true` when the stream is not actually
/// readable.
public struct PollableInputStreamInterfaceRef: PollableInputStreamInterfaceProtocol {
        /// Untyped pointer to the underlying `GPollableInputStreamInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PollableInputStreamInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GPollableInputStreamInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GPollableInputStreamInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GPollableInputStreamInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GPollableInputStreamInterface>?) {
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

    /// Reference intialiser for a related type that implements `PollableInputStreamInterfaceProtocol`
    @inlinable init<T: PollableInputStreamInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: PollableInputStreamInterface Record: PollableInputStreamInterfaceProtocol extension (methods and fields)
public extension PollableInputStreamInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GPollableInputStreamInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GPollableInputStreamInterface>! { return ptr?.assumingMemoryBound(to: GPollableInputStreamInterface.self) }


    /// The parent interface.
    @inlinable var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var canPoll is unavailable because can_poll is void

    // var isReadable is unavailable because is_readable is void

    // var createSource is unavailable because create_source is void

    // var readNonblocking is unavailable because read_nonblocking is void

}



/// Metatype/GType declaration for PollableOutputStream
public extension PollableOutputStreamInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `PollableOutputStream`
    static var metatypeReference: GType { g_pollable_output_stream_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GPollableOutputStreamInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GPollableOutputStreamInterface.self) }
    
    static var metatype: GPollableOutputStreamInterface? { metatypePointer?.pointee } 
    
    static var wrapper: PollableOutputStreamInterfaceRef? { PollableOutputStreamInterfaceRef(metatypePointer) }
    
    
}

// MARK: - PollableOutputStreamInterface Record

/// The `PollableOutputStreamInterfaceProtocol` protocol exposes the methods and properties of an underlying `GPollableOutputStreamInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PollableOutputStreamInterface`.
/// Alternatively, use `PollableOutputStreamInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The interface for pollable output streams.
/// 
/// The default implementation of `can_poll` always returns `true`.
/// 
/// The default implementation of `write_nonblocking` calls
/// `g_pollable_output_stream_is_writable()`, and then calls
/// `g_output_stream_write()` if it returns `true`. This means you only
/// need to override it if it is possible that your `is_writable`
/// implementation may return `true` when the stream is not actually
/// writable.
/// 
/// The default implementation of `writev_nonblocking` calls
/// `g_pollable_output_stream_write_nonblocking()` for each vector, and converts
/// its return value and error (if set) to a `GPollableReturn`. You should
/// override this where possible to avoid having to allocate a `GError` to return
/// `G_IO_ERROR_WOULD_BLOCK`.
public protocol PollableOutputStreamInterfaceProtocol {
        /// Untyped pointer to the underlying `GPollableOutputStreamInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GPollableOutputStreamInterface` instance.
    var _ptr: UnsafeMutablePointer<GPollableOutputStreamInterface>! { get }

}

/// The `PollableOutputStreamInterfaceRef` type acts as a lightweight Swift reference to an underlying `GPollableOutputStreamInterface` instance.
/// It exposes methods that can operate on this data type through `PollableOutputStreamInterfaceProtocol` conformance.
/// Use `PollableOutputStreamInterfaceRef` only as an `unowned` reference to an existing `GPollableOutputStreamInterface` instance.
///
/// The interface for pollable output streams.
/// 
/// The default implementation of `can_poll` always returns `true`.
/// 
/// The default implementation of `write_nonblocking` calls
/// `g_pollable_output_stream_is_writable()`, and then calls
/// `g_output_stream_write()` if it returns `true`. This means you only
/// need to override it if it is possible that your `is_writable`
/// implementation may return `true` when the stream is not actually
/// writable.
/// 
/// The default implementation of `writev_nonblocking` calls
/// `g_pollable_output_stream_write_nonblocking()` for each vector, and converts
/// its return value and error (if set) to a `GPollableReturn`. You should
/// override this where possible to avoid having to allocate a `GError` to return
/// `G_IO_ERROR_WOULD_BLOCK`.
public struct PollableOutputStreamInterfaceRef: PollableOutputStreamInterfaceProtocol {
        /// Untyped pointer to the underlying `GPollableOutputStreamInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PollableOutputStreamInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GPollableOutputStreamInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GPollableOutputStreamInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GPollableOutputStreamInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GPollableOutputStreamInterface>?) {
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

    /// Reference intialiser for a related type that implements `PollableOutputStreamInterfaceProtocol`
    @inlinable init<T: PollableOutputStreamInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: PollableOutputStreamInterface Record: PollableOutputStreamInterfaceProtocol extension (methods and fields)
public extension PollableOutputStreamInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GPollableOutputStreamInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GPollableOutputStreamInterface>! { return ptr?.assumingMemoryBound(to: GPollableOutputStreamInterface.self) }


    /// The parent interface.
    @inlinable var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var canPoll is unavailable because can_poll is void

    // var isWritable is unavailable because is_writable is void

    // var createSource is unavailable because create_source is void

    // var writeNonblocking is unavailable because write_nonblocking is void

    // var writevNonblocking is unavailable because writev_nonblocking is void

}



/// Metatype/GType declaration for ProxyAddress
public extension ProxyAddressClassRef {
    
    /// This getter returns the GLib type identifier registered for `ProxyAddress`
    static var metatypeReference: GType { g_proxy_address_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GProxyAddressClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GProxyAddressClass.self) }
    
    static var metatype: GProxyAddressClass? { metatypePointer?.pointee } 
    
    static var wrapper: ProxyAddressClassRef? { ProxyAddressClassRef(metatypePointer) }
    
    
}

// MARK: - ProxyAddressClass Record

/// The `ProxyAddressClassProtocol` protocol exposes the methods and properties of an underlying `GProxyAddressClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ProxyAddressClass`.
/// Alternatively, use `ProxyAddressClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Class structure for `GProxyAddress`.
public protocol ProxyAddressClassProtocol {
        /// Untyped pointer to the underlying `GProxyAddressClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GProxyAddressClass` instance.
    var _ptr: UnsafeMutablePointer<GProxyAddressClass>! { get }

}

/// The `ProxyAddressClassRef` type acts as a lightweight Swift reference to an underlying `GProxyAddressClass` instance.
/// It exposes methods that can operate on this data type through `ProxyAddressClassProtocol` conformance.
/// Use `ProxyAddressClassRef` only as an `unowned` reference to an existing `GProxyAddressClass` instance.
///
/// Class structure for `GProxyAddress`.
public struct ProxyAddressClassRef: ProxyAddressClassProtocol {
        /// Untyped pointer to the underlying `GProxyAddressClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ProxyAddressClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GProxyAddressClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GProxyAddressClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GProxyAddressClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GProxyAddressClass>?) {
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

    /// Reference intialiser for a related type that implements `ProxyAddressClassProtocol`
    @inlinable init<T: ProxyAddressClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ProxyAddressClass Record: ProxyAddressClassProtocol extension (methods and fields)
public extension ProxyAddressClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GProxyAddressClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GProxyAddressClass>! { return ptr?.assumingMemoryBound(to: GProxyAddressClass.self) }


    @inlinable var parentClass: GInetSocketAddressClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for ProxyAddressEnumerator
public extension ProxyAddressEnumeratorClassRef {
    
    /// This getter returns the GLib type identifier registered for `ProxyAddressEnumerator`
    static var metatypeReference: GType { g_proxy_address_enumerator_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GProxyAddressEnumeratorClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GProxyAddressEnumeratorClass.self) }
    
    static var metatype: GProxyAddressEnumeratorClass? { metatypePointer?.pointee } 
    
    static var wrapper: ProxyAddressEnumeratorClassRef? { ProxyAddressEnumeratorClassRef(metatypePointer) }
    
    
}

// MARK: - ProxyAddressEnumeratorClass Record

/// The `ProxyAddressEnumeratorClassProtocol` protocol exposes the methods and properties of an underlying `GProxyAddressEnumeratorClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ProxyAddressEnumeratorClass`.
/// Alternatively, use `ProxyAddressEnumeratorClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Class structure for `GProxyAddressEnumerator`.
public protocol ProxyAddressEnumeratorClassProtocol {
        /// Untyped pointer to the underlying `GProxyAddressEnumeratorClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GProxyAddressEnumeratorClass` instance.
    var _ptr: UnsafeMutablePointer<GProxyAddressEnumeratorClass>! { get }

}

/// The `ProxyAddressEnumeratorClassRef` type acts as a lightweight Swift reference to an underlying `GProxyAddressEnumeratorClass` instance.
/// It exposes methods that can operate on this data type through `ProxyAddressEnumeratorClassProtocol` conformance.
/// Use `ProxyAddressEnumeratorClassRef` only as an `unowned` reference to an existing `GProxyAddressEnumeratorClass` instance.
///
/// Class structure for `GProxyAddressEnumerator`.
public struct ProxyAddressEnumeratorClassRef: ProxyAddressEnumeratorClassProtocol {
        /// Untyped pointer to the underlying `GProxyAddressEnumeratorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ProxyAddressEnumeratorClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GProxyAddressEnumeratorClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GProxyAddressEnumeratorClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GProxyAddressEnumeratorClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GProxyAddressEnumeratorClass>?) {
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

    /// Reference intialiser for a related type that implements `ProxyAddressEnumeratorClassProtocol`
    @inlinable init<T: ProxyAddressEnumeratorClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ProxyAddressEnumeratorClass Record: ProxyAddressEnumeratorClassProtocol extension (methods and fields)
public extension ProxyAddressEnumeratorClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GProxyAddressEnumeratorClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GProxyAddressEnumeratorClass>! { return ptr?.assumingMemoryBound(to: GProxyAddressEnumeratorClass.self) }


    // var parentClass is unavailable because parent_class is private

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

    // var GReserved4 is unavailable because _g_reserved4 is void

    // var GReserved5 is unavailable because _g_reserved5 is void

    // var GReserved6 is unavailable because _g_reserved6 is void

    // var GReserved7 is unavailable because _g_reserved7 is void

}



/// Metatype/GType declaration for Proxy
public extension ProxyInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `Proxy`
    static var metatypeReference: GType { g_proxy_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GProxyInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GProxyInterface.self) }
    
    static var metatype: GProxyInterface? { metatypePointer?.pointee } 
    
    static var wrapper: ProxyInterfaceRef? { ProxyInterfaceRef(metatypePointer) }
    
    
}

// MARK: - ProxyInterface Record

/// The `ProxyInterfaceProtocol` protocol exposes the methods and properties of an underlying `GProxyInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ProxyInterface`.
/// Alternatively, use `ProxyInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Provides an interface for handling proxy connection and payload.
public protocol ProxyInterfaceProtocol {
        /// Untyped pointer to the underlying `GProxyInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GProxyInterface` instance.
    var _ptr: UnsafeMutablePointer<GProxyInterface>! { get }

}

/// The `ProxyInterfaceRef` type acts as a lightweight Swift reference to an underlying `GProxyInterface` instance.
/// It exposes methods that can operate on this data type through `ProxyInterfaceProtocol` conformance.
/// Use `ProxyInterfaceRef` only as an `unowned` reference to an existing `GProxyInterface` instance.
///
/// Provides an interface for handling proxy connection and payload.
public struct ProxyInterfaceRef: ProxyInterfaceProtocol {
        /// Untyped pointer to the underlying `GProxyInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ProxyInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GProxyInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GProxyInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GProxyInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GProxyInterface>?) {
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

    /// Reference intialiser for a related type that implements `ProxyInterfaceProtocol`
    @inlinable init<T: ProxyInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ProxyInterface Record: ProxyInterfaceProtocol extension (methods and fields)
public extension ProxyInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GProxyInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GProxyInterface>! { return ptr?.assumingMemoryBound(to: GProxyInterface.self) }


    /// The parent interface.
    @inlinable var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var connect is unavailable because connect is void

    // var connectAsync is unavailable because connect_async is void

    // var connectFinish is unavailable because connect_finish is void

    // var supportsHostname is unavailable because supports_hostname is void

}



/// Metatype/GType declaration for ProxyResolver
public extension ProxyResolverInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `ProxyResolver`
    static var metatypeReference: GType { g_proxy_resolver_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GProxyResolverInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GProxyResolverInterface.self) }
    
    static var metatype: GProxyResolverInterface? { metatypePointer?.pointee } 
    
    static var wrapper: ProxyResolverInterfaceRef? { ProxyResolverInterfaceRef(metatypePointer) }
    
    
}

// MARK: - ProxyResolverInterface Record

/// The `ProxyResolverInterfaceProtocol` protocol exposes the methods and properties of an underlying `GProxyResolverInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ProxyResolverInterface`.
/// Alternatively, use `ProxyResolverInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The virtual function table for `GProxyResolver`.
public protocol ProxyResolverInterfaceProtocol {
        /// Untyped pointer to the underlying `GProxyResolverInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GProxyResolverInterface` instance.
    var _ptr: UnsafeMutablePointer<GProxyResolverInterface>! { get }

}

/// The `ProxyResolverInterfaceRef` type acts as a lightweight Swift reference to an underlying `GProxyResolverInterface` instance.
/// It exposes methods that can operate on this data type through `ProxyResolverInterfaceProtocol` conformance.
/// Use `ProxyResolverInterfaceRef` only as an `unowned` reference to an existing `GProxyResolverInterface` instance.
///
/// The virtual function table for `GProxyResolver`.
public struct ProxyResolverInterfaceRef: ProxyResolverInterfaceProtocol {
        /// Untyped pointer to the underlying `GProxyResolverInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ProxyResolverInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GProxyResolverInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GProxyResolverInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GProxyResolverInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GProxyResolverInterface>?) {
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

    /// Reference intialiser for a related type that implements `ProxyResolverInterfaceProtocol`
    @inlinable init<T: ProxyResolverInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ProxyResolverInterface Record: ProxyResolverInterfaceProtocol extension (methods and fields)
public extension ProxyResolverInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GProxyResolverInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GProxyResolverInterface>! { return ptr?.assumingMemoryBound(to: GProxyResolverInterface.self) }


    /// The parent interface.
    @inlinable var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var isSupported is unavailable because is_supported is void

    // var lookup is unavailable because lookup is void

    // var lookupAsync is unavailable because lookup_async is void

    // var lookupFinish is unavailable because lookup_finish is void

}



/// Metatype/GType declaration for RemoteActionGroup
public extension RemoteActionGroupInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `RemoteActionGroup`
    static var metatypeReference: GType { g_remote_action_group_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GRemoteActionGroupInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GRemoteActionGroupInterface.self) }
    
    static var metatype: GRemoteActionGroupInterface? { metatypePointer?.pointee } 
    
    static var wrapper: RemoteActionGroupInterfaceRef? { RemoteActionGroupInterfaceRef(metatypePointer) }
    
    
}

// MARK: - RemoteActionGroupInterface Record

/// The `RemoteActionGroupInterfaceProtocol` protocol exposes the methods and properties of an underlying `GRemoteActionGroupInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RemoteActionGroupInterface`.
/// Alternatively, use `RemoteActionGroupInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The virtual function table for `GRemoteActionGroup`.
public protocol RemoteActionGroupInterfaceProtocol {
        /// Untyped pointer to the underlying `GRemoteActionGroupInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GRemoteActionGroupInterface` instance.
    var _ptr: UnsafeMutablePointer<GRemoteActionGroupInterface>! { get }

}

/// The `RemoteActionGroupInterfaceRef` type acts as a lightweight Swift reference to an underlying `GRemoteActionGroupInterface` instance.
/// It exposes methods that can operate on this data type through `RemoteActionGroupInterfaceProtocol` conformance.
/// Use `RemoteActionGroupInterfaceRef` only as an `unowned` reference to an existing `GRemoteActionGroupInterface` instance.
///
/// The virtual function table for `GRemoteActionGroup`.
public struct RemoteActionGroupInterfaceRef: RemoteActionGroupInterfaceProtocol {
        /// Untyped pointer to the underlying `GRemoteActionGroupInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RemoteActionGroupInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GRemoteActionGroupInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GRemoteActionGroupInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GRemoteActionGroupInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GRemoteActionGroupInterface>?) {
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

    /// Reference intialiser for a related type that implements `RemoteActionGroupInterfaceProtocol`
    @inlinable init<T: RemoteActionGroupInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: RemoteActionGroupInterface Record: RemoteActionGroupInterfaceProtocol extension (methods and fields)
public extension RemoteActionGroupInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GRemoteActionGroupInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GRemoteActionGroupInterface>! { return ptr?.assumingMemoryBound(to: GRemoteActionGroupInterface.self) }


    @inlinable var gIface: GTypeInterface {
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var activateActionFull is unavailable because activate_action_full is void

    // var changeActionStateFull is unavailable because change_action_state_full is void

}



