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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSeekable` instance.
    var seekable_ptr: UnsafeMutablePointer<GSeekable>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension SeekableRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSeekable>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSeekable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSeekable>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSeekable>?) {
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

    /// Reference intialiser for a related type that implements `SeekableProtocol`
    @inlinable init<T: SeekableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeekableProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeekableProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeekableProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeekableProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeekableProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Seekable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GSeekable>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Seekable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GSeekable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Seekable` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Seekable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Seekable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GSeekable>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Seekable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GSeekable>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSeekable` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Seekable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GSeekable>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSeekable, cannot ref(seekable_ptr)
    }

    /// Reference intialiser for a related type that implements `SeekableProtocol`
    /// `GSeekable` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SeekableProtocol`
    @inlinable public init<T: SeekableProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GSeekable, cannot ref(seekable_ptr)
    }

    /// Do-nothing destructor for `GSeekable`.
    deinit {
        // no reference counting for GSeekable, cannot unref(seekable_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeekableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeekableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSeekable, cannot ref(seekable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeekableProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeekableProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSeekable, cannot ref(seekable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeekableProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeekableProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSeekable, cannot ref(seekable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeekableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeekableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSeekable, cannot ref(seekable_ptr)
    }



}

// MARK: no Seekable properties

// MARK: no Seekable signals

// MARK: Seekable has no signals
// MARK: Seekable Interface: SeekableProtocol extension (methods and fields)
public extension SeekableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSeekable` instance.
    @inlinable var seekable_ptr: UnsafeMutablePointer<GSeekable>! { return ptr?.assumingMemoryBound(to: GSeekable.self) }

    /// Tests if the stream supports the `GSeekableIface`.
    @inlinable func canSeek() -> Bool {
        let rv = ((g_seekable_can_seek(seekable_ptr)) != 0)
        return rv
    }

    /// Tests if the length of the stream can be adjusted with
    /// `g_seekable_truncate()`.
    @inlinable func canTruncate() -> Bool {
        let rv = ((g_seekable_can_truncate(seekable_ptr)) != 0)
        return rv
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
    @inlinable func seek(offset: goffset, type: GSeekType, cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_seekable_seek(seekable_ptr, offset, type, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func seek<CancellableT: CancellableProtocol>(offset: goffset, type: GSeekType, cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_seekable_seek(seekable_ptr, offset, type, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Tells the current position within the stream.
    @inlinable func tell() -> goffset {
        let rv = g_seekable_tell(seekable_ptr)
        return rv
    }

    /// Sets the length of the stream to `offset`. If the stream was previously
    /// larger than `offset`, the extra data is discarded. If the stream was
    /// previously shorter than `offset`, it is extended with NUL ('\0') bytes.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned. If an
    /// operation was partially finished when the operation was cancelled the
    /// partial result will be returned, without an error.
    @inlinable func truncate(offset: goffset, cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_seekable_truncate(seekable_ptr, offset, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Sets the length of the stream to `offset`. If the stream was previously
    /// larger than `offset`, the extra data is discarded. If the stream was
    /// previously shorter than `offset`, it is extended with NUL ('\0') bytes.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned. If an
    /// operation was partially finished when the operation was cancelled the
    /// partial result will be returned, without an error.
    @inlinable func truncate<CancellableT: CancellableProtocol>(offset: goffset, cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_seekable_truncate(seekable_ptr, offset, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSocketConnectable` instance.
    var socket_connectable_ptr: UnsafeMutablePointer<GSocketConnectable>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension SocketConnectableRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSocketConnectable>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSocketConnectable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSocketConnectable>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSocketConnectable>?) {
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

    /// Reference intialiser for a related type that implements `SocketConnectableProtocol`
    @inlinable init<T: SocketConnectableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketConnectable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GSocketConnectable>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketConnectable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GSocketConnectable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketConnectable` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketConnectable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketConnectable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GSocketConnectable>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SocketConnectable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GSocketConnectable>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSocketConnectable` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SocketConnectable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GSocketConnectable>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSocketConnectable, cannot ref(socket_connectable_ptr)
    }

    /// Reference intialiser for a related type that implements `SocketConnectableProtocol`
    /// `GSocketConnectable` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SocketConnectableProtocol`
    @inlinable public init<T: SocketConnectableProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GSocketConnectable, cannot ref(socket_connectable_ptr)
    }

    /// Do-nothing destructor for `GSocketConnectable`.
    deinit {
        // no reference counting for GSocketConnectable, cannot unref(socket_connectable_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSocketConnectable, cannot ref(socket_connectable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSocketConnectable, cannot ref(socket_connectable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSocketConnectable, cannot ref(socket_connectable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SocketConnectableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSocketConnectable, cannot ref(socket_connectable_ptr)
    }



}

// MARK: no SocketConnectable properties

// MARK: no SocketConnectable signals

// MARK: SocketConnectable has no signals
// MARK: SocketConnectable Interface: SocketConnectableProtocol extension (methods and fields)
public extension SocketConnectableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSocketConnectable` instance.
    @inlinable var socket_connectable_ptr: UnsafeMutablePointer<GSocketConnectable>! { return ptr?.assumingMemoryBound(to: GSocketConnectable.self) }

    /// Creates a `GSocketAddressEnumerator` for `connectable`.
    @inlinable func enumerate() -> SocketAddressEnumeratorRef! {
        let rv = SocketAddressEnumeratorRef(gconstpointer: gconstpointer(g_socket_connectable_enumerate(socket_connectable_ptr)))
        return rv
    }

    /// Creates a `GSocketAddressEnumerator` for `connectable` that will
    /// return a `GProxyAddress` for each of its addresses that you must connect
    /// to via a proxy.
    /// 
    /// If `connectable` does not implement
    /// `g_socket_connectable_proxy_enumerate()`, this will fall back to
    /// calling `g_socket_connectable_enumerate()`.
    @inlinable func proxyEnumerate() -> SocketAddressEnumeratorRef! {
        let rv = SocketAddressEnumeratorRef(gconstpointer: gconstpointer(g_socket_connectable_proxy_enumerate(socket_connectable_ptr)))
        return rv
    }

    /// Format a `GSocketConnectable` as a string. This is a human-readable format for
    /// use in debugging output, and is not a stable serialization format. It is not
    /// suitable for use in user interfaces as it exposes too much information for a
    /// user.
    /// 
    /// If the `GSocketConnectable` implementation does not support string formatting,
    /// the implementation’s type name will be returned as a fallback.
    @inlinable func toString() -> String! {
        let rv = g_socket_connectable_to_string(socket_connectable_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Creates a new `GDtlsClientConnection` wrapping `base_socket` which is
    /// assumed to communicate with the server identified by `server_identity`.
    @inlinable func dtlsClientConnectionNew<DatagramBasedT: DatagramBasedProtocol>(baseSocket: DatagramBasedT) throws -> DtlsClientConnectionRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = DtlsClientConnectionRef(gconstpointer: gconstpointer(g_dtls_client_connection_new(baseSocket.datagram_based_ptr, socket_connectable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Creates a new `GTlsClientConnection` wrapping `base_io_stream` (which
    /// must have pollable input and output streams) which is assumed to
    /// communicate with the server identified by `server_identity`.
    /// 
    /// See the documentation for `GTlsConnection:base`-io-stream for restrictions
    /// on when application code can run operations on the `base_io_stream` after
    /// this function has returned.
    @inlinable func tlsClientConnectionNew<IOStreamT: IOStreamProtocol>(baseIoStream: IOStreamT) throws -> TLSClientConnectionRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = TLSClientConnectionRef(gconstpointer: gconstpointer(g_tls_client_connection_new(baseIoStream.io_stream_ptr, socket_connectable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTlsBackend` instance.
    var tls_backend_ptr: UnsafeMutablePointer<GTlsBackend>! { get }

}

/// The `TLSBackendRef` type acts as a lightweight Swift reference to an underlying `GTlsBackend` instance.
/// It exposes methods that can operate on this data type through `TLSBackendProtocol` conformance.
/// Use `TLSBackendRef` only as an `unowned` reference to an existing `GTlsBackend` instance.
///
/// TLS (Transport Layer Security, aka SSL) and DTLS backend.
public struct TLSBackendRef: TLSBackendProtocol {
        /// Untyped pointer to the underlying `GTlsBackend` instance.
    /// For type-safe access, use the generated, typed pointer `tls_backend_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TLSBackendRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTlsBackend>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTlsBackend>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTlsBackend>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTlsBackend>?) {
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

    /// Reference intialiser for a related type that implements `TLSBackendProtocol`
    @inlinable init<T: TLSBackendProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Gets the default `GTlsBackend` for the system.
    @inlinable static func getDefault() -> TLSBackendRef! {
        guard let rv = TLSBackendRef(gconstpointer: gconstpointer(g_tls_backend_get_default())) else { return nil }
        return rv
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
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSBackend` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTlsBackend>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSBackend` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTlsBackend>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSBackend` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSBackend` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSBackend` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTlsBackend>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSBackend` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTlsBackend>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTlsBackend` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TLSBackend` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTlsBackend>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTlsBackend, cannot ref(tls_backend_ptr)
    }

    /// Reference intialiser for a related type that implements `TLSBackendProtocol`
    /// `GTlsBackend` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TLSBackendProtocol`
    @inlinable public init<T: TLSBackendProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTlsBackend, cannot ref(tls_backend_ptr)
    }

    /// Do-nothing destructor for `GTlsBackend`.
    deinit {
        // no reference counting for GTlsBackend, cannot unref(tls_backend_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTlsBackend, cannot ref(tls_backend_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTlsBackend, cannot ref(tls_backend_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTlsBackend, cannot ref(tls_backend_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTlsBackend, cannot ref(tls_backend_ptr)
    }


    /// Gets the default `GTlsBackend` for the system.
    @inlinable public static func getDefault() -> TLSBackend! {
        guard let rv = TLSBackend(gconstpointer: gconstpointer(g_tls_backend_get_default())) else { return nil }
        return rv
    }

}

// MARK: no TLSBackend properties

// MARK: no TLSBackend signals

// MARK: TLSBackend has no signals
// MARK: TLSBackend Interface: TLSBackendProtocol extension (methods and fields)
public extension TLSBackendProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsBackend` instance.
    @inlinable var tls_backend_ptr: UnsafeMutablePointer<GTlsBackend>! { return ptr?.assumingMemoryBound(to: GTlsBackend.self) }

    /// Gets the `GType` of `backend`'s `GTlsCertificate` implementation.
    @inlinable func getCertificateType() -> GType {
        let rv = g_tls_backend_get_certificate_type(tls_backend_ptr)
        return rv
    }

    /// Gets the `GType` of `backend`'s `GTlsClientConnection` implementation.
    @inlinable func getClientConnectionType() -> GType {
        let rv = g_tls_backend_get_client_connection_type(tls_backend_ptr)
        return rv
    }

    /// Gets the default `GTlsDatabase` used to verify TLS connections.
    @inlinable func getDefaultDatabase() -> TLSDatabaseRef! {
        let rv = TLSDatabaseRef(gconstpointer: gconstpointer(g_tls_backend_get_default_database(tls_backend_ptr)))
        return rv
    }

    /// Gets the `GType` of `backend`’s `GDtlsClientConnection` implementation.
    @inlinable func getDtlsClientConnectionType() -> GType {
        let rv = g_tls_backend_get_dtls_client_connection_type(tls_backend_ptr)
        return rv
    }

    /// Gets the `GType` of `backend`’s `GDtlsServerConnection` implementation.
    @inlinable func getDtlsServerConnectionType() -> GType {
        let rv = g_tls_backend_get_dtls_server_connection_type(tls_backend_ptr)
        return rv
    }

    /// Gets the `GType` of `backend`'s `GTlsFileDatabase` implementation.
    @inlinable func getFileDatabaseType() -> GType {
        let rv = g_tls_backend_get_file_database_type(tls_backend_ptr)
        return rv
    }

    /// Gets the `GType` of `backend`'s `GTlsServerConnection` implementation.
    @inlinable func getServerConnectionType() -> GType {
        let rv = g_tls_backend_get_server_connection_type(tls_backend_ptr)
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
    @inlinable func setDefault(database: TLSDatabaseRef? = nil) {
        g_tls_backend_set_default_database(tls_backend_ptr, database?.tls_database_ptr)
    
    }
    /// Set the default `GTlsDatabase` used to verify TLS connections
    /// 
    /// Any subsequent call to `g_tls_backend_get_default_database()` will return
    /// the database set in this call.  Existing databases and connections are not
    /// modified.
    /// 
    /// Setting a `nil` default database will reset to using the system default
    /// database as if `g_tls_backend_set_default_database()` had never been called.
    @inlinable func setDefault<TLSDatabaseT: TLSDatabaseProtocol>(database: TLSDatabaseT?) {
        g_tls_backend_set_default_database(tls_backend_ptr, database?.tls_database_ptr)
    
    }

    /// Checks if DTLS is supported. DTLS support may not be available even if TLS
    /// support is available, and vice-versa.
    @inlinable func supportsDtls() -> Bool {
        let rv = ((g_tls_backend_supports_dtls(tls_backend_ptr)) != 0)
        return rv
    }

    /// Checks if TLS is supported; if this returns `false` for the default
    /// `GTlsBackend`, it means no "real" TLS backend is available.
    @inlinable func supportsTLS() -> Bool {
        let rv = ((g_tls_backend_supports_tls(tls_backend_ptr)) != 0)
        return rv
    }
    /// Gets the `GType` of `backend`'s `GTlsCertificate` implementation.
    @inlinable var certificateType: GType {
        /// Gets the `GType` of `backend`'s `GTlsCertificate` implementation.
        get {
            let rv = g_tls_backend_get_certificate_type(tls_backend_ptr)
            return rv
        }
    }

    /// Gets the `GType` of `backend`'s `GTlsClientConnection` implementation.
    @inlinable var clientConnectionType: GType {
        /// Gets the `GType` of `backend`'s `GTlsClientConnection` implementation.
        get {
            let rv = g_tls_backend_get_client_connection_type(tls_backend_ptr)
            return rv
        }
    }

    /// Gets the default `GTlsDatabase` used to verify TLS connections.
    @inlinable var defaultDatabase: TLSDatabaseRef! {
        /// Gets the default `GTlsDatabase` used to verify TLS connections.
        get {
            let rv = TLSDatabaseRef(gconstpointer: gconstpointer(g_tls_backend_get_default_database(tls_backend_ptr)))
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
        nonmutating set {
            g_tls_backend_set_default_database(tls_backend_ptr, UnsafeMutablePointer<GTlsDatabase>(newValue?.tls_database_ptr))
        }
    }

    /// Gets the `GType` of `backend`’s `GDtlsClientConnection` implementation.
    @inlinable var dtlsClientConnectionType: GType {
        /// Gets the `GType` of `backend`’s `GDtlsClientConnection` implementation.
        get {
            let rv = g_tls_backend_get_dtls_client_connection_type(tls_backend_ptr)
            return rv
        }
    }

    /// Gets the `GType` of `backend`’s `GDtlsServerConnection` implementation.
    @inlinable var dtlsServerConnectionType: GType {
        /// Gets the `GType` of `backend`’s `GDtlsServerConnection` implementation.
        get {
            let rv = g_tls_backend_get_dtls_server_connection_type(tls_backend_ptr)
            return rv
        }
    }

    /// Gets the `GType` of `backend`'s `GTlsFileDatabase` implementation.
    @inlinable var fileDatabaseType: GType {
        /// Gets the `GType` of `backend`'s `GTlsFileDatabase` implementation.
        get {
            let rv = g_tls_backend_get_file_database_type(tls_backend_ptr)
            return rv
        }
    }

    /// Gets the `GType` of `backend`'s `GTlsServerConnection` implementation.
    @inlinable var serverConnectionType: GType {
        /// Gets the `GType` of `backend`'s `GTlsServerConnection` implementation.
        get {
            let rv = g_tls_backend_get_server_connection_type(tls_backend_ptr)
            return rv
        }
    }


}



