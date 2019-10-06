import CGLib
import GLib
import GLibObject

// MARK: - Seekable Interface

/// The `SeekableProtocol` protocol exposes the methods and properties of an underlying `GSeekable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Seekable`.
/// Alternatively, use `SeekableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GSeekable` is implemented by streams (implementations of
/// `GInputStream` or `GOutputStream`) that support seeking.
/// 
/// Seekable streams largely fall into two categories: resizable and
/// fixed-size.
/// 
/// `GSeekable` on fixed-sized streams is approximately the same as POSIX
/// `lseek()` on a block device (for example: attempting to seek past the
/// end of the device is an error).  Fixed streams typically cannot be
/// truncated.
/// 
/// `GSeekable` on resizable streams is approximately the same as POSIX
/// `lseek()` on a normal file.  Seeking past the end and writing data will
/// usually cause the stream to resize by introducing zero bytes.
public protocol SeekableProtocol {
    /// Untyped pointer to the underlying `GSeekable` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSeekable` instance.
    var seekable_ptr: UnsafeMutablePointer<GSeekable> { get }
}

/// The `SeekableRef` type acts as a lightweight Swift reference to an underlying `GSeekable` instance.
/// It exposes methods that can operate on this data type through `SeekableProtocol` conformance.
/// Use `SeekableRef` only as an `unowned` reference to an existing `GSeekable` instance.
///
/// `GSeekable` is implemented by streams (implementations of
/// `GInputStream` or `GOutputStream`) that support seeking.
/// 
/// Seekable streams largely fall into two categories: resizable and
/// fixed-size.
/// 
/// `GSeekable` on fixed-sized streams is approximately the same as POSIX
/// `lseek()` on a block device (for example: attempting to seek past the
/// end of the device is an error).  Fixed streams typically cannot be
/// truncated.
/// 
/// `GSeekable` on resizable streams is approximately the same as POSIX
/// `lseek()` on a normal file.  Seeking past the end and writing data will
/// usually cause the stream to resize by introducing zero bytes.
public struct SeekableRef: SeekableProtocol {
    /// Untyped pointer to the underlying `GSeekable` instance.
    /// For type-safe access, use the generated, typed pointer `seekable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SeekableRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSeekable>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SeekableProtocol`
    init<T: SeekableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeekableProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeekableProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeekableProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeekableProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeekableProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Seekable` type acts as an owner of an underlying `GSeekable` instance.
/// It provides the methods that can operate on this data type through `SeekableProtocol` conformance.
/// Use `Seekable` as a strong reference or owner of a `GSeekable` instance.
///
/// `GSeekable` is implemented by streams (implementations of
/// `GInputStream` or `GOutputStream`) that support seeking.
/// 
/// Seekable streams largely fall into two categories: resizable and
/// fixed-size.
/// 
/// `GSeekable` on fixed-sized streams is approximately the same as POSIX
/// `lseek()` on a block device (for example: attempting to seek past the
/// end of the device is an error).  Fixed streams typically cannot be
/// truncated.
/// 
/// `GSeekable` on resizable streams is approximately the same as POSIX
/// `lseek()` on a normal file.  Seeking past the end and writing data will
/// usually cause the stream to resize by introducing zero bytes.
open class Seekable: SeekableProtocol {
    /// Untyped pointer to the underlying `GSeekable` instance.
    /// For type-safe access, use the generated, typed pointer `seekable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Seekable` instance.
    public init(_ op: UnsafeMutablePointer<GSeekable>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SeekableProtocol`
    /// `GSeekable` does not allow reference counting.
    public convenience init<T: SeekableProtocol>(_ other: T) {
        self.init(cast(other.seekable_ptr))
        // no reference counting for GSeekable, cannot ref(cast(seekable_ptr))
    }

    /// Do-nothing destructor for`GSeekable`.
    deinit {
        // no reference counting for GSeekable, cannot unref(cast(seekable_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeekableProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GSeekable.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeekableProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GSeekable.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeekableProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GSeekable.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeekableProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GSeekable>(opaquePointer))
    }



}

// MARK: - no Seekable properties

// MARK: - no signals


public extension SeekableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSeekable` instance.
    var seekable_ptr: UnsafeMutablePointer<GSeekable> { return ptr.assumingMemoryBound(to: GSeekable.self) }

    /// Tests if the stream supports the `GSeekableIface`.
    func canSeek() -> Bool {
        let rv = g_seekable_can_seek(cast(seekable_ptr))
        return Bool(rv != 0)
    }

    /// Tests if the length of the stream can be adjusted with
    /// `g_seekable_truncate()`.
    func canTruncate() -> Bool {
        let rv = g_seekable_can_truncate(cast(seekable_ptr))
        return Bool(rv != 0)
    }

    /// Seeks in the stream by the given `offset`, modified by `type`.
    /// 
    /// Attempting to seek past the end of the stream will have different
    /// results depending on if the stream is fixed-sized or resizable.  If
    /// the stream is resizable then seeking past the end and then writing
    /// will result in zeros filling the empty space.  Seeking past the end
    /// of a resizable stream and reading will result in EOF.  Seeking past
    /// the end of a fixed-sized stream will fail.
    /// 
    /// Any operation that would result in a negative offset will fail.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    func seek(offset: Int64, type: GLib.SeekType, cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_seekable_seek(cast(seekable_ptr), goffset(offset), type, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Tells the current position within the stream.
    func tell() -> Int {
        let rv = g_seekable_tell(cast(seekable_ptr))
        return Int(rv)
    }

    /// Sets the length of the stream to `offset`. If the stream was previously
    /// larger than `offset`, the extra data is discarded. If the stream was
    /// previouly shorter than `offset`, it is extended with NUL ('\0') bytes.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned. If an
    /// operation was partially finished when the operation was cancelled the
    /// partial result will be returned, without an error.
    func truncate(offset: Int64, cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_seekable_truncate(cast(seekable_ptr), goffset(offset), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }
}



// MARK: - SocketConnectable Interface

/// The `SocketConnectableProtocol` protocol exposes the methods and properties of an underlying `GSocketConnectable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SocketConnectable`.
/// Alternatively, use `SocketConnectableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Objects that describe one or more potential socket endpoints
/// implement `GSocketConnectable`. Callers can then use
/// `g_socket_connectable_enumerate()` to get a `GSocketAddressEnumerator`
/// to try out each socket address in turn until one succeeds, as shown
/// in the sample code below.
/// 
/// (C Language Example):
/// ```C
/// MyConnectionType *
/// connect_to_host (const char    *hostname,
///                  guint16        port,
///                  GCancellable  *cancellable,
///                  GError       **error)
/// {
///   MyConnection *conn = NULL;
///   GSocketConnectable *addr;
///   GSocketAddressEnumerator *enumerator;
///   GSocketAddress *sockaddr;
///   GError *conn_error = NULL;
/// 
///   addr = g_network_address_new (hostname, port);
///   enumerator = g_socket_connectable_enumerate (addr);
///   g_object_unref (addr);
/// 
///   // Try each sockaddr until we succeed. Record the first connection error,
///   // but not any further ones (since they'll probably be basically the same
///   // as the first).
///   while (!conn && (sockaddr = g_socket_address_enumerator_next (enumerator, cancellable, error))
///     {
///       conn = connect_to_sockaddr (sockaddr, conn_error ? NULL : &conn_error);
///       g_object_unref (sockaddr);
///     }
///   g_object_unref (enumerator);
/// 
///   if (conn)
///     {
///       if (conn_error)
///         {
///           // We couldn't connect to the first address, but we succeeded
///           // in connecting to a later address.
///           g_error_free (conn_error);
///         }
///       return conn;
///     }
///   else if (error)
///     {
///       /// Either initial lookup failed, or else the caller cancelled us.
///       if (conn_error)
///         g_error_free (conn_error);
///       return NULL;
///     }
///   else
///     {
///       g_error_propagate (error, conn_error);
///       return NULL;
///     }
/// }
/// ```
/// 
public protocol SocketConnectableProtocol {
    /// Untyped pointer to the underlying `GSocketConnectable` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSocketConnectable` instance.
    var socket_connectable_ptr: UnsafeMutablePointer<GSocketConnectable> { get }
}

/// The `SocketConnectableRef` type acts as a lightweight Swift reference to an underlying `GSocketConnectable` instance.
/// It exposes methods that can operate on this data type through `SocketConnectableProtocol` conformance.
/// Use `SocketConnectableRef` only as an `unowned` reference to an existing `GSocketConnectable` instance.
///
/// Objects that describe one or more potential socket endpoints
/// implement `GSocketConnectable`. Callers can then use
/// `g_socket_connectable_enumerate()` to get a `GSocketAddressEnumerator`
/// to try out each socket address in turn until one succeeds, as shown
/// in the sample code below.
/// 
/// (C Language Example):
/// ```C
/// MyConnectionType *
/// connect_to_host (const char    *hostname,
///                  guint16        port,
///                  GCancellable  *cancellable,
///                  GError       **error)
/// {
///   MyConnection *conn = NULL;
///   GSocketConnectable *addr;
///   GSocketAddressEnumerator *enumerator;
///   GSocketAddress *sockaddr;
///   GError *conn_error = NULL;
/// 
///   addr = g_network_address_new (hostname, port);
///   enumerator = g_socket_connectable_enumerate (addr);
///   g_object_unref (addr);
/// 
///   // Try each sockaddr until we succeed. Record the first connection error,
///   // but not any further ones (since they'll probably be basically the same
///   // as the first).
///   while (!conn && (sockaddr = g_socket_address_enumerator_next (enumerator, cancellable, error))
///     {
///       conn = connect_to_sockaddr (sockaddr, conn_error ? NULL : &conn_error);
///       g_object_unref (sockaddr);
///     }
///   g_object_unref (enumerator);
/// 
///   if (conn)
///     {
///       if (conn_error)
///         {
///           // We couldn't connect to the first address, but we succeeded
///           // in connecting to a later address.
///           g_error_free (conn_error);
///         }
///       return conn;
///     }
///   else if (error)
///     {
///       /// Either initial lookup failed, or else the caller cancelled us.
///       if (conn_error)
///         g_error_free (conn_error);
///       return NULL;
///     }
///   else
///     {
///       g_error_propagate (error, conn_error);
///       return NULL;
///     }
/// }
/// ```
/// 
public struct SocketConnectableRef: SocketConnectableProtocol {
    /// Untyped pointer to the underlying `GSocketConnectable` instance.
    /// For type-safe access, use the generated, typed pointer `socket_connectable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SocketConnectableRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSocketConnectable>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SocketConnectableProtocol`
    init<T: SocketConnectableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SocketConnectable` type acts as an owner of an underlying `GSocketConnectable` instance.
/// It provides the methods that can operate on this data type through `SocketConnectableProtocol` conformance.
/// Use `SocketConnectable` as a strong reference or owner of a `GSocketConnectable` instance.
///
/// Objects that describe one or more potential socket endpoints
/// implement `GSocketConnectable`. Callers can then use
/// `g_socket_connectable_enumerate()` to get a `GSocketAddressEnumerator`
/// to try out each socket address in turn until one succeeds, as shown
/// in the sample code below.
/// 
/// (C Language Example):
/// ```C
/// MyConnectionType *
/// connect_to_host (const char    *hostname,
///                  guint16        port,
///                  GCancellable  *cancellable,
///                  GError       **error)
/// {
///   MyConnection *conn = NULL;
///   GSocketConnectable *addr;
///   GSocketAddressEnumerator *enumerator;
///   GSocketAddress *sockaddr;
///   GError *conn_error = NULL;
/// 
///   addr = g_network_address_new (hostname, port);
///   enumerator = g_socket_connectable_enumerate (addr);
///   g_object_unref (addr);
/// 
///   // Try each sockaddr until we succeed. Record the first connection error,
///   // but not any further ones (since they'll probably be basically the same
///   // as the first).
///   while (!conn && (sockaddr = g_socket_address_enumerator_next (enumerator, cancellable, error))
///     {
///       conn = connect_to_sockaddr (sockaddr, conn_error ? NULL : &conn_error);
///       g_object_unref (sockaddr);
///     }
///   g_object_unref (enumerator);
/// 
///   if (conn)
///     {
///       if (conn_error)
///         {
///           // We couldn't connect to the first address, but we succeeded
///           // in connecting to a later address.
///           g_error_free (conn_error);
///         }
///       return conn;
///     }
///   else if (error)
///     {
///       /// Either initial lookup failed, or else the caller cancelled us.
///       if (conn_error)
///         g_error_free (conn_error);
///       return NULL;
///     }
///   else
///     {
///       g_error_propagate (error, conn_error);
///       return NULL;
///     }
/// }
/// ```
/// 
open class SocketConnectable: SocketConnectableProtocol {
    /// Untyped pointer to the underlying `GSocketConnectable` instance.
    /// For type-safe access, use the generated, typed pointer `socket_connectable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `SocketConnectable` instance.
    public init(_ op: UnsafeMutablePointer<GSocketConnectable>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SocketConnectableProtocol`
    /// `GSocketConnectable` does not allow reference counting.
    public convenience init<T: SocketConnectableProtocol>(_ other: T) {
        self.init(cast(other.socket_connectable_ptr))
        // no reference counting for GSocketConnectable, cannot ref(cast(socket_connectable_ptr))
    }

    /// Do-nothing destructor for`GSocketConnectable`.
    deinit {
        // no reference counting for GSocketConnectable, cannot unref(cast(socket_connectable_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GSocketConnectable.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GSocketConnectable.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GSocketConnectable.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GSocketConnectable>(opaquePointer))
    }



}

// MARK: - no SocketConnectable properties

// MARK: - no signals


public extension SocketConnectableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSocketConnectable` instance.
    var socket_connectable_ptr: UnsafeMutablePointer<GSocketConnectable> { return ptr.assumingMemoryBound(to: GSocketConnectable.self) }

    /// Creates a `GSocketAddressEnumerator` for `connectable`.
    func enumerate() -> UnsafeMutablePointer<GSocketAddressEnumerator>! {
        let rv = g_socket_connectable_enumerate(cast(socket_connectable_ptr))
        return cast(rv)
    }

    /// Creates a `GSocketAddressEnumerator` for `connectable` that will
    /// return a `GProxyAddress` for each of its addresses that you must connect
    /// to via a proxy.
    /// 
    /// If `connectable` does not implement
    /// `g_socket_connectable_proxy_enumerate()`, this will fall back to
    /// calling `g_socket_connectable_enumerate()`.
    func proxyEnumerate() -> UnsafeMutablePointer<GSocketAddressEnumerator>! {
        let rv = g_socket_connectable_proxy_enumerate(cast(socket_connectable_ptr))
        return cast(rv)
    }

    /// Format a `GSocketConnectable` as a string. This is a human-readable format for
    /// use in debugging output, and is not a stable serialization format. It is not
    /// suitable for use in user interfaces as it exposes too much information for a
    /// user.
    /// 
    /// If the `GSocketConnectable` implementation does not support string formatting,
    /// the implementation’s type name will be returned as a fallback.
    func toString() -> String! {
        let rv = g_socket_connectable_to_string(cast(socket_connectable_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Creates a new `GDtlsClientConnection` wrapping `base_socket` which is
    /// assumed to communicate with the server identified by `server_identity`.
    func dtlsClientConnectionNew(baseSocket base_socket: DatagramBasedProtocol) throws -> UnsafeMutablePointer<GDatagramBased>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dtls_client_connection_new(cast(base_socket.ptr), cast(socket_connectable_ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Creates a new `GTlsClientConnection` wrapping `base_io_stream` (which
    /// must have pollable input and output streams) which is assumed to
    /// communicate with the server identified by `server_identity`.
    /// 
    /// See the documentation for `GTlsConnection:base`-io-stream for restrictions
    /// on when application code can run operations on the `base_io_stream` after
    /// this function has returned.
    func tlsClientConnectionNew(baseIoStream base_io_stream: IOStreamProtocol) throws -> UnsafeMutablePointer<GIOStream>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_tls_client_connection_new(cast(base_io_stream.ptr), cast(socket_connectable_ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }
}



// MARK: - TLSBackend Interface

/// The `TLSBackendProtocol` protocol exposes the methods and properties of an underlying `GTlsBackend` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TLSBackend`.
/// Alternatively, use `TLSBackendRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// TLS (Transport Layer Security, aka SSL) and DTLS backend.
public protocol TLSBackendProtocol {
    /// Untyped pointer to the underlying `GTlsBackend` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GTlsBackend` instance.
    var tls_backend_ptr: UnsafeMutablePointer<GTlsBackend> { get }
}

/// The `TLSBackendRef` type acts as a lightweight Swift reference to an underlying `GTlsBackend` instance.
/// It exposes methods that can operate on this data type through `TLSBackendProtocol` conformance.
/// Use `TLSBackendRef` only as an `unowned` reference to an existing `GTlsBackend` instance.
///
/// TLS (Transport Layer Security, aka SSL) and DTLS backend.
public struct TLSBackendRef: TLSBackendProtocol {
    /// Untyped pointer to the underlying `GTlsBackend` instance.
    /// For type-safe access, use the generated, typed pointer `tls_backend_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TLSBackendRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GTlsBackend>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TLSBackendProtocol`
    init<T: TLSBackendProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Gets the default `GTlsBackend` for the system.
    static func getDefault() -> TLSBackendRef! {
        let rv = g_tls_backend_get_default()
        return rv.map { TLSBackendRef(cast($0)) }
    }
}

/// The `TLSBackend` type acts as an owner of an underlying `GTlsBackend` instance.
/// It provides the methods that can operate on this data type through `TLSBackendProtocol` conformance.
/// Use `TLSBackend` as a strong reference or owner of a `GTlsBackend` instance.
///
/// TLS (Transport Layer Security, aka SSL) and DTLS backend.
open class TLSBackend: TLSBackendProtocol {
    /// Untyped pointer to the underlying `GTlsBackend` instance.
    /// For type-safe access, use the generated, typed pointer `tls_backend_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TLSBackend` instance.
    public init(_ op: UnsafeMutablePointer<GTlsBackend>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TLSBackendProtocol`
    /// `GTlsBackend` does not allow reference counting.
    public convenience init<T: TLSBackendProtocol>(_ other: T) {
        self.init(cast(other.tls_backend_ptr))
        // no reference counting for GTlsBackend, cannot ref(cast(tls_backend_ptr))
    }

    /// Do-nothing destructor for`GTlsBackend`.
    deinit {
        // no reference counting for GTlsBackend, cannot unref(cast(tls_backend_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GTlsBackend.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GTlsBackend.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GTlsBackend.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GTlsBackend>(opaquePointer))
    }


    /// Gets the default `GTlsBackend` for the system.
    public static func getDefault() -> TLSBackend! {
        let rv = g_tls_backend_get_default()
        return rv.map { TLSBackend(cast($0)) }
    }

}

// MARK: - no TLSBackend properties

// MARK: - no signals


public extension TLSBackendProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsBackend` instance.
    var tls_backend_ptr: UnsafeMutablePointer<GTlsBackend> { return ptr.assumingMemoryBound(to: GTlsBackend.self) }

    /// Gets the `GType` of `backend`'s `GTlsCertificate` implementation.
    func getCertificateType() -> GType {
        let rv = g_tls_backend_get_certificate_type(cast(tls_backend_ptr))
        return rv
    }

    /// Gets the `GType` of `backend`'s `GTlsClientConnection` implementation.
    func getClientConnectionType() -> GType {
        let rv = g_tls_backend_get_client_connection_type(cast(tls_backend_ptr))
        return rv
    }

    /// Gets the default `GTlsDatabase` used to verify TLS connections.
    func getDefaultDatabase() -> UnsafeMutablePointer<GTlsDatabase>! {
        let rv = g_tls_backend_get_default_database(cast(tls_backend_ptr))
        return cast(rv)
    }

    /// Gets the `GType` of `backend`’s `GDtlsClientConnection` implementation.
    func getDtlsClientConnectionType() -> GType {
        let rv = g_tls_backend_get_dtls_client_connection_type(cast(tls_backend_ptr))
        return rv
    }

    /// Gets the `GType` of `backend`’s `GDtlsServerConnection` implementation.
    func getDtlsServerConnectionType() -> GType {
        let rv = g_tls_backend_get_dtls_server_connection_type(cast(tls_backend_ptr))
        return rv
    }

    /// Gets the `GType` of `backend`'s `GTlsFileDatabase` implementation.
    func getFileDatabaseType() -> GType {
        let rv = g_tls_backend_get_file_database_type(cast(tls_backend_ptr))
        return rv
    }

    /// Gets the `GType` of `backend`'s `GTlsServerConnection` implementation.
    func getServerConnectionType() -> GType {
        let rv = g_tls_backend_get_server_connection_type(cast(tls_backend_ptr))
        return rv
    }

    /// Set the default `GTlsDatabase` used to verify TLS connections
    /// 
    /// Any subsequent call to `g_tls_backend_get_default_database()` will return
    /// the database set in this call.  Existing databases and connections are not
    /// modified.
    /// 
    /// Setting a `nil` default database will reset to using the system default
    /// database as if `g_tls_backend_set_default_database()` had never been called.
    func setDefault(database: TLSDatabaseProtocol) {
        g_tls_backend_set_default_database(cast(tls_backend_ptr), cast(database.ptr))
    
    }

    /// Checks if DTLS is supported. DTLS support may not be available even if TLS
    /// support is available, and vice-versa.
    func supportsDtls() -> Bool {
        let rv = g_tls_backend_supports_dtls(cast(tls_backend_ptr))
        return Bool(rv != 0)
    }

    /// Checks if TLS is supported; if this returns `false` for the default
    /// `GTlsBackend`, it means no "real" TLS backend is available.
    func supportsTLS() -> Bool {
        let rv = g_tls_backend_supports_tls(cast(tls_backend_ptr))
        return Bool(rv != 0)
    }
    /// Gets the `GType` of `backend`'s `GTlsCertificate` implementation.
    var certificateType: GType {
        /// Gets the `GType` of `backend`'s `GTlsCertificate` implementation.
        get {
            let rv = g_tls_backend_get_certificate_type(cast(tls_backend_ptr))
            return rv
        }
    }

    /// Gets the `GType` of `backend`'s `GTlsClientConnection` implementation.
    var clientConnectionType: GType {
        /// Gets the `GType` of `backend`'s `GTlsClientConnection` implementation.
        get {
            let rv = g_tls_backend_get_client_connection_type(cast(tls_backend_ptr))
            return rv
        }
    }

    /// Gets the default `GTlsDatabase` used to verify TLS connections.
    var defaultDatabase: UnsafeMutablePointer<GTlsDatabase>! {
        /// Gets the default `GTlsDatabase` used to verify TLS connections.
        get {
            let rv = g_tls_backend_get_default_database(cast(tls_backend_ptr))
            return cast(rv)
        }
        /// Set the default `GTlsDatabase` used to verify TLS connections
        /// 
        /// Any subsequent call to `g_tls_backend_get_default_database()` will return
        /// the database set in this call.  Existing databases and connections are not
        /// modified.
        /// 
        /// Setting a `nil` default database will reset to using the system default
        /// database as if `g_tls_backend_set_default_database()` had never been called.
        nonmutating set {
            g_tls_backend_set_default_database(cast(tls_backend_ptr), cast(newValue))
        }
    }

    /// Gets the `GType` of `backend`’s `GDtlsClientConnection` implementation.
    var dtlsClientConnectionType: GType {
        /// Gets the `GType` of `backend`’s `GDtlsClientConnection` implementation.
        get {
            let rv = g_tls_backend_get_dtls_client_connection_type(cast(tls_backend_ptr))
            return rv
        }
    }

    /// Gets the `GType` of `backend`’s `GDtlsServerConnection` implementation.
    var dtlsServerConnectionType: GType {
        /// Gets the `GType` of `backend`’s `GDtlsServerConnection` implementation.
        get {
            let rv = g_tls_backend_get_dtls_server_connection_type(cast(tls_backend_ptr))
            return rv
        }
    }

    /// Gets the `GType` of `backend`'s `GTlsFileDatabase` implementation.
    var fileDatabaseType: GType {
        /// Gets the `GType` of `backend`'s `GTlsFileDatabase` implementation.
        get {
            let rv = g_tls_backend_get_file_database_type(cast(tls_backend_ptr))
            return rv
        }
    }

    /// Gets the `GType` of `backend`'s `GTlsServerConnection` implementation.
    var serverConnectionType: GType {
        /// Gets the `GType` of `backend`'s `GTlsServerConnection` implementation.
        get {
            let rv = g_tls_backend_get_server_connection_type(cast(tls_backend_ptr))
            return rv
        }
    }
}



