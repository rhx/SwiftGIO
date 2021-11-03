import CGLib
import GLib
import GLibObject

// MARK: - PollableInputStream Interface

/// `GPollableInputStream` is implemented by `GInputStreams` that
/// can be polled for readiness to read. This can be used when
/// interfacing with a non-GIO API that expects
/// UNIX-file-descriptor-style asynchronous I/O rather than GIO-style.
///
/// The `PollableInputStreamProtocol` protocol exposes the methods and properties of an underlying `GPollableInputStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PollableInputStream`.
/// Alternatively, use `PollableInputStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol PollableInputStreamProtocol: InputStreamProtocol {
        /// Untyped pointer to the underlying `GPollableInputStream` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GPollableInputStream` instance.
    var pollable_input_stream_ptr: UnsafeMutablePointer<GPollableInputStream>! { get }

    /// Required Initialiser for types conforming to `PollableInputStreamProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GPollableInputStream` is implemented by `GInputStreams` that
/// can be polled for readiness to read. This can be used when
/// interfacing with a non-GIO API that expects
/// UNIX-file-descriptor-style asynchronous I/O rather than GIO-style.
///
/// The `PollableInputStreamRef` type acts as a lightweight Swift reference to an underlying `GPollableInputStream` instance.
/// It exposes methods that can operate on this data type through `PollableInputStreamProtocol` conformance.
/// Use `PollableInputStreamRef` only as an `unowned` reference to an existing `GPollableInputStream` instance.
///
public struct PollableInputStreamRef: PollableInputStreamProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GPollableInputStream` instance.
    /// For type-safe access, use the generated, typed pointer `pollable_input_stream_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PollableInputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GPollableInputStream>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GPollableInputStream>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GPollableInputStream>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GPollableInputStream>?) {
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

    /// Reference intialiser for a related type that implements `PollableInputStreamProtocol`
    @inlinable init<T: PollableInputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: PollableInputStreamProtocol>(_ other: T) -> PollableInputStreamRef { PollableInputStreamRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// `GPollableInputStream` is implemented by `GInputStreams` that
/// can be polled for readiness to read. This can be used when
/// interfacing with a non-GIO API that expects
/// UNIX-file-descriptor-style asynchronous I/O rather than GIO-style.
///
/// The `PollableInputStream` type acts as a reference-counted owner of an underlying `GPollableInputStream` instance.
/// It provides the methods that can operate on this data type through `PollableInputStreamProtocol` conformance.
/// Use `PollableInputStream` as a strong reference or owner of a `GPollableInputStream` instance.
///
open class PollableInputStream: InputStream, PollableInputStreamProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PollableInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GPollableInputStream>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PollableInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GPollableInputStream>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PollableInputStream` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PollableInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PollableInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GPollableInputStream>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PollableInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GPollableInputStream>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GPollableInputStream`.
    /// i.e., ownership is transferred to the `PollableInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GPollableInputStream>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `PollableInputStreamProtocol`
    /// Will retain `GPollableInputStream`.
    /// - Parameter other: an instance of a related type that implements `PollableInputStreamProtocol`
    @inlinable public init<T: PollableInputStreamProtocol>(pollableInputStream other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no PollableInputStream properties

public enum PollableInputStreamSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"

}

// MARK: PollableInputStream has no signals
// MARK: PollableInputStream Interface: PollableInputStreamProtocol extension (methods and fields)
public extension PollableInputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GPollableInputStream` instance.
    @inlinable var pollable_input_stream_ptr: UnsafeMutablePointer<GPollableInputStream>! { return ptr?.assumingMemoryBound(to: GPollableInputStream.self) }

    /// Checks if `stream` is actually pollable. Some classes may implement
    /// `GPollableInputStream` but have only certain instances of that class
    /// be pollable. If this method returns `false`, then the behavior of
    /// other `GPollableInputStream` methods is undefined.
    /// 
    /// For any given stream, the value returned by this method is constant;
    /// a stream cannot switch from pollable to non-pollable or vice versa.
    @inlinable func canPoll() -> Bool {
        let rv = ((g_pollable_input_stream_can_poll(pollable_input_stream_ptr)) != 0)
        return rv
    }

    /// Creates a `GSource` that triggers when `stream` can be read, or
    /// `cancellable` is triggered or an error occurs. The callback on the
    /// source is of the `GPollableSourceFunc` type.
    /// 
    /// As with `g_pollable_input_stream_is_readable()`, it is possible that
    /// the stream may not actually be readable even after the source
    /// triggers, so you should use `g_pollable_input_stream_read_nonblocking()`
    /// rather than `g_input_stream_read()` from the callback.
    @inlinable func createSource(cancellable: CancellableRef? = nil) -> GLib.SourceRef! {
        let rv = GLib.SourceRef(g_pollable_input_stream_create_source(pollable_input_stream_ptr, cancellable?.cancellable_ptr))
        return rv
    }
    /// Creates a `GSource` that triggers when `stream` can be read, or
    /// `cancellable` is triggered or an error occurs. The callback on the
    /// source is of the `GPollableSourceFunc` type.
    /// 
    /// As with `g_pollable_input_stream_is_readable()`, it is possible that
    /// the stream may not actually be readable even after the source
    /// triggers, so you should use `g_pollable_input_stream_read_nonblocking()`
    /// rather than `g_input_stream_read()` from the callback.
    @inlinable func createSource<CancellableT: CancellableProtocol>(cancellable: CancellableT?) -> GLib.SourceRef! {
        let rv = GLib.SourceRef(g_pollable_input_stream_create_source(pollable_input_stream_ptr, cancellable?.cancellable_ptr))
        return rv
    }

    /// Attempts to read up to `count` bytes from `stream` into `buffer`, as
    /// with `g_input_stream_read()`. If `stream` is not currently readable,
    /// this will immediately return `G_IO_ERROR_WOULD_BLOCK`, and you can
    /// use `g_pollable_input_stream_create_source()` to create a `GSource`
    /// that will be triggered when `stream` is readable.
    /// 
    /// Note that since this method never blocks, you cannot actually
    /// use `cancellable` to cancel it. However, it will return an error
    /// if `cancellable` has already been cancelled when you call, which
    /// may happen if you call this method after a source triggers due
    /// to having been cancelled.
    @inlinable func readNonblocking(buffer: UnsafeMutableRawPointer!, count: Int, cancellable: CancellableRef? = nil) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_pollable_input_stream_read_nonblocking(pollable_input_stream_ptr, buffer, gsize(count), cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Attempts to read up to `count` bytes from `stream` into `buffer`, as
    /// with `g_input_stream_read()`. If `stream` is not currently readable,
    /// this will immediately return `G_IO_ERROR_WOULD_BLOCK`, and you can
    /// use `g_pollable_input_stream_create_source()` to create a `GSource`
    /// that will be triggered when `stream` is readable.
    /// 
    /// Note that since this method never blocks, you cannot actually
    /// use `cancellable` to cancel it. However, it will return an error
    /// if `cancellable` has already been cancelled when you call, which
    /// may happen if you call this method after a source triggers due
    /// to having been cancelled.
    @inlinable func readNonblocking<CancellableT: CancellableProtocol>(buffer: UnsafeMutableRawPointer!, count: Int, cancellable: CancellableT?) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_pollable_input_stream_read_nonblocking(pollable_input_stream_ptr, buffer, gsize(count), cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Checks if `stream` can be read.
    /// 
    /// Note that some stream types may not be able to implement this 100%
    /// reliably, and it is possible that a call to `g_input_stream_read()`
    /// after this returns `true` would still block. To guarantee
    /// non-blocking behavior, you should always use
    /// `g_pollable_input_stream_read_nonblocking()`, which will return a
    /// `G_IO_ERROR_WOULD_BLOCK` error rather than blocking.
    @inlinable var isReadable: Bool {
        /// Checks if `stream` can be read.
        /// 
        /// Note that some stream types may not be able to implement this 100%
        /// reliably, and it is possible that a call to `g_input_stream_read()`
        /// after this returns `true` would still block. To guarantee
        /// non-blocking behavior, you should always use
        /// `g_pollable_input_stream_read_nonblocking()`, which will return a
        /// `G_IO_ERROR_WOULD_BLOCK` error rather than blocking.
        get {
            let rv = ((g_pollable_input_stream_is_readable(pollable_input_stream_ptr)) != 0)
            return rv
        }
    }


}



// MARK: - PollableOutputStream Interface

/// `GPollableOutputStream` is implemented by `GOutputStreams` that
/// can be polled for readiness to write. This can be used when
/// interfacing with a non-GIO API that expects
/// UNIX-file-descriptor-style asynchronous I/O rather than GIO-style.
///
/// The `PollableOutputStreamProtocol` protocol exposes the methods and properties of an underlying `GPollableOutputStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PollableOutputStream`.
/// Alternatively, use `PollableOutputStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol PollableOutputStreamProtocol: OutputStreamProtocol {
        /// Untyped pointer to the underlying `GPollableOutputStream` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GPollableOutputStream` instance.
    var pollable_output_stream_ptr: UnsafeMutablePointer<GPollableOutputStream>! { get }

    /// Required Initialiser for types conforming to `PollableOutputStreamProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GPollableOutputStream` is implemented by `GOutputStreams` that
/// can be polled for readiness to write. This can be used when
/// interfacing with a non-GIO API that expects
/// UNIX-file-descriptor-style asynchronous I/O rather than GIO-style.
///
/// The `PollableOutputStreamRef` type acts as a lightweight Swift reference to an underlying `GPollableOutputStream` instance.
/// It exposes methods that can operate on this data type through `PollableOutputStreamProtocol` conformance.
/// Use `PollableOutputStreamRef` only as an `unowned` reference to an existing `GPollableOutputStream` instance.
///
public struct PollableOutputStreamRef: PollableOutputStreamProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GPollableOutputStream` instance.
    /// For type-safe access, use the generated, typed pointer `pollable_output_stream_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PollableOutputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GPollableOutputStream>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GPollableOutputStream>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GPollableOutputStream>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GPollableOutputStream>?) {
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

    /// Reference intialiser for a related type that implements `PollableOutputStreamProtocol`
    @inlinable init<T: PollableOutputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: PollableOutputStreamProtocol>(_ other: T) -> PollableOutputStreamRef { PollableOutputStreamRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// `GPollableOutputStream` is implemented by `GOutputStreams` that
/// can be polled for readiness to write. This can be used when
/// interfacing with a non-GIO API that expects
/// UNIX-file-descriptor-style asynchronous I/O rather than GIO-style.
///
/// The `PollableOutputStream` type acts as a reference-counted owner of an underlying `GPollableOutputStream` instance.
/// It provides the methods that can operate on this data type through `PollableOutputStreamProtocol` conformance.
/// Use `PollableOutputStream` as a strong reference or owner of a `GPollableOutputStream` instance.
///
open class PollableOutputStream: OutputStream, PollableOutputStreamProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PollableOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GPollableOutputStream>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PollableOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GPollableOutputStream>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PollableOutputStream` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PollableOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PollableOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GPollableOutputStream>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PollableOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GPollableOutputStream>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GPollableOutputStream`.
    /// i.e., ownership is transferred to the `PollableOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GPollableOutputStream>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `PollableOutputStreamProtocol`
    /// Will retain `GPollableOutputStream`.
    /// - Parameter other: an instance of a related type that implements `PollableOutputStreamProtocol`
    @inlinable public init<T: PollableOutputStreamProtocol>(pollableOutputStream other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no PollableOutputStream properties

public enum PollableOutputStreamSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"

}

// MARK: PollableOutputStream has no signals
// MARK: PollableOutputStream Interface: PollableOutputStreamProtocol extension (methods and fields)
public extension PollableOutputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GPollableOutputStream` instance.
    @inlinable var pollable_output_stream_ptr: UnsafeMutablePointer<GPollableOutputStream>! { return ptr?.assumingMemoryBound(to: GPollableOutputStream.self) }

    /// Checks if `stream` is actually pollable. Some classes may implement
    /// `GPollableOutputStream` but have only certain instances of that
    /// class be pollable. If this method returns `false`, then the behavior
    /// of other `GPollableOutputStream` methods is undefined.
    /// 
    /// For any given stream, the value returned by this method is constant;
    /// a stream cannot switch from pollable to non-pollable or vice versa.
    @inlinable func canPoll() -> Bool {
        let rv = ((g_pollable_output_stream_can_poll(pollable_output_stream_ptr)) != 0)
        return rv
    }

    /// Creates a `GSource` that triggers when `stream` can be written, or
    /// `cancellable` is triggered or an error occurs. The callback on the
    /// source is of the `GPollableSourceFunc` type.
    /// 
    /// As with `g_pollable_output_stream_is_writable()`, it is possible that
    /// the stream may not actually be writable even after the source
    /// triggers, so you should use `g_pollable_output_stream_write_nonblocking()`
    /// rather than `g_output_stream_write()` from the callback.
    @inlinable func createSource(cancellable: CancellableRef? = nil) -> GLib.SourceRef! {
        let rv = GLib.SourceRef(g_pollable_output_stream_create_source(pollable_output_stream_ptr, cancellable?.cancellable_ptr))
        return rv
    }
    /// Creates a `GSource` that triggers when `stream` can be written, or
    /// `cancellable` is triggered or an error occurs. The callback on the
    /// source is of the `GPollableSourceFunc` type.
    /// 
    /// As with `g_pollable_output_stream_is_writable()`, it is possible that
    /// the stream may not actually be writable even after the source
    /// triggers, so you should use `g_pollable_output_stream_write_nonblocking()`
    /// rather than `g_output_stream_write()` from the callback.
    @inlinable func createSource<CancellableT: CancellableProtocol>(cancellable: CancellableT?) -> GLib.SourceRef! {
        let rv = GLib.SourceRef(g_pollable_output_stream_create_source(pollable_output_stream_ptr, cancellable?.cancellable_ptr))
        return rv
    }

    /// Attempts to write up to `count` bytes from `buffer` to `stream`, as
    /// with `g_output_stream_write()`. If `stream` is not currently writable,
    /// this will immediately return `G_IO_ERROR_WOULD_BLOCK`, and you can
    /// use `g_pollable_output_stream_create_source()` to create a `GSource`
    /// that will be triggered when `stream` is writable.
    /// 
    /// Note that since this method never blocks, you cannot actually
    /// use `cancellable` to cancel it. However, it will return an error
    /// if `cancellable` has already been cancelled when you call, which
    /// may happen if you call this method after a source triggers due
    /// to having been cancelled.
    /// 
    /// Also note that if `G_IO_ERROR_WOULD_BLOCK` is returned some underlying
    /// transports like D/TLS require that you re-send the same `buffer` and
    /// `count` in the next write call.
    @inlinable func writeNonblocking(buffer: UnsafeMutableRawPointer!, count: Int, cancellable: CancellableRef? = nil) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_pollable_output_stream_write_nonblocking(pollable_output_stream_ptr, buffer, gsize(count), cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Attempts to write up to `count` bytes from `buffer` to `stream`, as
    /// with `g_output_stream_write()`. If `stream` is not currently writable,
    /// this will immediately return `G_IO_ERROR_WOULD_BLOCK`, and you can
    /// use `g_pollable_output_stream_create_source()` to create a `GSource`
    /// that will be triggered when `stream` is writable.
    /// 
    /// Note that since this method never blocks, you cannot actually
    /// use `cancellable` to cancel it. However, it will return an error
    /// if `cancellable` has already been cancelled when you call, which
    /// may happen if you call this method after a source triggers due
    /// to having been cancelled.
    /// 
    /// Also note that if `G_IO_ERROR_WOULD_BLOCK` is returned some underlying
    /// transports like D/TLS require that you re-send the same `buffer` and
    /// `count` in the next write call.
    @inlinable func writeNonblocking<CancellableT: CancellableProtocol>(buffer: UnsafeMutableRawPointer!, count: Int, cancellable: CancellableT?) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_pollable_output_stream_write_nonblocking(pollable_output_stream_ptr, buffer, gsize(count), cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Attempts to write the bytes contained in the `n_vectors` `vectors` to `stream`,
    /// as with `g_output_stream_writev()`. If `stream` is not currently writable,
    /// this will immediately return ```G_POLLABLE_RETURN_WOULD_BLOCK`, and you can
    /// use `g_pollable_output_stream_create_source()` to create a `GSource`
    /// that will be triggered when `stream` is writable. `error` will *not* be
    /// set in that case.
    /// 
    /// Note that since this method never blocks, you cannot actually
    /// use `cancellable` to cancel it. However, it will return an error
    /// if `cancellable` has already been cancelled when you call, which
    /// may happen if you call this method after a source triggers due
    /// to having been cancelled.
    /// 
    /// Also note that if `G_POLLABLE_RETURN_WOULD_BLOCK` is returned some underlying
    /// transports like D/TLS require that you re-send the same `vectors` and
    /// `n_vectors` in the next write call.
    @inlinable func writevNonblocking(vectors: UnsafePointer<GOutputVector>!, nVectors: Int, bytesWritten: UnsafeMutablePointer<gsize>! = nil, cancellable: CancellableRef? = nil) throws -> GPollableReturn {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_pollable_output_stream_writev_nonblocking(pollable_output_stream_ptr, vectors, gsize(nVectors), bytesWritten, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Attempts to write the bytes contained in the `n_vectors` `vectors` to `stream`,
    /// as with `g_output_stream_writev()`. If `stream` is not currently writable,
    /// this will immediately return ```G_POLLABLE_RETURN_WOULD_BLOCK`, and you can
    /// use `g_pollable_output_stream_create_source()` to create a `GSource`
    /// that will be triggered when `stream` is writable. `error` will *not* be
    /// set in that case.
    /// 
    /// Note that since this method never blocks, you cannot actually
    /// use `cancellable` to cancel it. However, it will return an error
    /// if `cancellable` has already been cancelled when you call, which
    /// may happen if you call this method after a source triggers due
    /// to having been cancelled.
    /// 
    /// Also note that if `G_POLLABLE_RETURN_WOULD_BLOCK` is returned some underlying
    /// transports like D/TLS require that you re-send the same `vectors` and
    /// `n_vectors` in the next write call.
    @inlinable func writevNonblocking<CancellableT: CancellableProtocol>(vectors: UnsafePointer<GOutputVector>!, nVectors: Int, bytesWritten: UnsafeMutablePointer<gsize>! = nil, cancellable: CancellableT?) throws -> GPollableReturn {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_pollable_output_stream_writev_nonblocking(pollable_output_stream_ptr, vectors, gsize(nVectors), bytesWritten, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Checks if `stream` can be written.
    /// 
    /// Note that some stream types may not be able to implement this 100%
    /// reliably, and it is possible that a call to `g_output_stream_write()`
    /// after this returns `true` would still block. To guarantee
    /// non-blocking behavior, you should always use
    /// `g_pollable_output_stream_write_nonblocking()`, which will return a
    /// `G_IO_ERROR_WOULD_BLOCK` error rather than blocking.
    @inlinable var isWritable: Bool {
        /// Checks if `stream` can be written.
        /// 
        /// Note that some stream types may not be able to implement this 100%
        /// reliably, and it is possible that a call to `g_output_stream_write()`
        /// after this returns `true` would still block. To guarantee
        /// non-blocking behavior, you should always use
        /// `g_pollable_output_stream_write_nonblocking()`, which will return a
        /// `G_IO_ERROR_WOULD_BLOCK` error rather than blocking.
        get {
            let rv = ((g_pollable_output_stream_is_writable(pollable_output_stream_ptr)) != 0)
            return rv
        }
    }


}



// MARK: - PowerProfileMonitor Interface

/// `GPowerProfileMonitor` makes it possible for applications as well as OS components
/// to monitor system power profiles and act upon them. It currently only exports
/// whether the system is in “Power Saver” mode (known as “Low Power” mode on
/// some systems).
/// 
/// When in “Low Power” mode, it is recommended that applications:
/// - disabling automatic downloads
/// - reduce the rate of refresh from online sources such as calendar or
///   email synchronisation
/// - if the application has expensive visual effects, reduce them
/// 
/// It is also likely that OS components providing services to applications will
/// lower their own background activity, for the sake of the system.
/// 
/// There are a variety of tools that exist for power consumption analysis, but those
/// usually depend on the OS and hardware used. On Linux, one could use `upower` to
/// monitor the battery discharge rate, `powertop` to check on the background activity
/// or activity at all), `sysprof` to inspect CPU usage, and `intel_gpu_time` to
/// profile GPU usage.
/// 
/// Don't forget to disconnect the `GPowerProfileMonitor::notify::power-saver-enabled`
/// signal, and unref the `GPowerProfileMonitor` itself when exiting.
///
/// The `PowerProfileMonitorProtocol` protocol exposes the methods and properties of an underlying `GPowerProfileMonitor` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PowerProfileMonitor`.
/// Alternatively, use `PowerProfileMonitorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol PowerProfileMonitorProtocol: InitableProtocol {
        /// Untyped pointer to the underlying `GPowerProfileMonitor` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GPowerProfileMonitor` instance.
    var power_profile_monitor_ptr: UnsafeMutablePointer<GPowerProfileMonitor>! { get }

    /// Required Initialiser for types conforming to `PowerProfileMonitorProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GPowerProfileMonitor` makes it possible for applications as well as OS components
/// to monitor system power profiles and act upon them. It currently only exports
/// whether the system is in “Power Saver” mode (known as “Low Power” mode on
/// some systems).
/// 
/// When in “Low Power” mode, it is recommended that applications:
/// - disabling automatic downloads
/// - reduce the rate of refresh from online sources such as calendar or
///   email synchronisation
/// - if the application has expensive visual effects, reduce them
/// 
/// It is also likely that OS components providing services to applications will
/// lower their own background activity, for the sake of the system.
/// 
/// There are a variety of tools that exist for power consumption analysis, but those
/// usually depend on the OS and hardware used. On Linux, one could use `upower` to
/// monitor the battery discharge rate, `powertop` to check on the background activity
/// or activity at all), `sysprof` to inspect CPU usage, and `intel_gpu_time` to
/// profile GPU usage.
/// 
/// Don't forget to disconnect the `GPowerProfileMonitor::notify::power-saver-enabled`
/// signal, and unref the `GPowerProfileMonitor` itself when exiting.
///
/// The `PowerProfileMonitorRef` type acts as a lightweight Swift reference to an underlying `GPowerProfileMonitor` instance.
/// It exposes methods that can operate on this data type through `PowerProfileMonitorProtocol` conformance.
/// Use `PowerProfileMonitorRef` only as an `unowned` reference to an existing `GPowerProfileMonitor` instance.
///
public struct PowerProfileMonitorRef: PowerProfileMonitorProtocol {
        /// Untyped pointer to the underlying `GPowerProfileMonitor` instance.
    /// For type-safe access, use the generated, typed pointer `power_profile_monitor_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PowerProfileMonitorRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GPowerProfileMonitor>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GPowerProfileMonitor>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GPowerProfileMonitor>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GPowerProfileMonitor>?) {
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

    /// Reference intialiser for a related type that implements `PowerProfileMonitorProtocol`
    @inlinable init<T: PowerProfileMonitorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PowerProfileMonitorProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PowerProfileMonitorProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PowerProfileMonitorProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PowerProfileMonitorProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PowerProfileMonitorProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Gets a reference to the default `GPowerProfileMonitor` for the system.
    @inlinable static func dupDefault() -> PowerProfileMonitorRef! {
        guard let rv = PowerProfileMonitorRef(gconstpointer: gconstpointer(g_power_profile_monitor_dup_default())) else { return nil }
        return rv
    }
}

/// `GPowerProfileMonitor` makes it possible for applications as well as OS components
/// to monitor system power profiles and act upon them. It currently only exports
/// whether the system is in “Power Saver” mode (known as “Low Power” mode on
/// some systems).
/// 
/// When in “Low Power” mode, it is recommended that applications:
/// - disabling automatic downloads
/// - reduce the rate of refresh from online sources such as calendar or
///   email synchronisation
/// - if the application has expensive visual effects, reduce them
/// 
/// It is also likely that OS components providing services to applications will
/// lower their own background activity, for the sake of the system.
/// 
/// There are a variety of tools that exist for power consumption analysis, but those
/// usually depend on the OS and hardware used. On Linux, one could use `upower` to
/// monitor the battery discharge rate, `powertop` to check on the background activity
/// or activity at all), `sysprof` to inspect CPU usage, and `intel_gpu_time` to
/// profile GPU usage.
/// 
/// Don't forget to disconnect the `GPowerProfileMonitor::notify::power-saver-enabled`
/// signal, and unref the `GPowerProfileMonitor` itself when exiting.
///
/// The `PowerProfileMonitor` type acts as an owner of an underlying `GPowerProfileMonitor` instance.
/// It provides the methods that can operate on this data type through `PowerProfileMonitorProtocol` conformance.
/// Use `PowerProfileMonitor` as a strong reference or owner of a `GPowerProfileMonitor` instance.
///
open class PowerProfileMonitor: Initable, PowerProfileMonitorProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PowerProfileMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GPowerProfileMonitor>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PowerProfileMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GPowerProfileMonitor>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PowerProfileMonitor` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PowerProfileMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PowerProfileMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GPowerProfileMonitor>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PowerProfileMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GPowerProfileMonitor>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GPowerProfileMonitor` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `PowerProfileMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GPowerProfileMonitor>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `PowerProfileMonitorProtocol`
    /// `GPowerProfileMonitor` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `PowerProfileMonitorProtocol`
    @inlinable public init<T: PowerProfileMonitorProtocol>(powerProfileMonitor other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PowerProfileMonitorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PowerProfileMonitorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PowerProfileMonitorProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PowerProfileMonitorProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PowerProfileMonitorProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PowerProfileMonitorProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PowerProfileMonitorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PowerProfileMonitorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    /// Gets a reference to the default `GPowerProfileMonitor` for the system.
    @inlinable public static func dupDefault() -> PowerProfileMonitor! {
        guard let rv = PowerProfileMonitor(gconstpointer: gconstpointer(g_power_profile_monitor_dup_default())) else { return nil }
        return rv
    }

}

public enum PowerProfileMonitorPropertyName: String, PropertyNameProtocol {
    /// Whether “Power Saver” mode is enabled on the system.
    case powerSaverEnabled = "power-saver-enabled"
}

public extension PowerProfileMonitorProtocol {
    /// Bind a `PowerProfileMonitorPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: PowerProfileMonitorPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a PowerProfileMonitor property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: PowerProfileMonitorPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a PowerProfileMonitor property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: PowerProfileMonitorPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum PowerProfileMonitorSignalName: String, SignalNameProtocol {

    /// Whether “Power Saver” mode is enabled on the system.
    case notifyPowerSaverEnabled = "notify::power-saver-enabled"
}

// MARK: PowerProfileMonitor has no signals
// MARK: PowerProfileMonitor Interface: PowerProfileMonitorProtocol extension (methods and fields)
public extension PowerProfileMonitorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GPowerProfileMonitor` instance.
    @inlinable var power_profile_monitor_ptr: UnsafeMutablePointer<GPowerProfileMonitor>! { return ptr?.assumingMemoryBound(to: GPowerProfileMonitor.self) }

    /// Gets whether the system is in “Power Saver” mode.
    /// 
    /// You are expected to listen to the
    /// `GPowerProfileMonitor::notify::power-saver-enabled` signal to know when the profile has
    /// changed.
    @inlinable func getPowerSaverEnabled() -> Bool {
        let rv = ((g_power_profile_monitor_get_power_saver_enabled(power_profile_monitor_ptr)) != 0)
        return rv
    }
    /// Gets whether the system is in “Power Saver” mode.
    /// 
    /// You are expected to listen to the
    /// `GPowerProfileMonitor::notify::power-saver-enabled` signal to know when the profile has
    /// changed.
    @inlinable var powerSaverEnabled: Bool {
        /// Gets whether the system is in “Power Saver” mode.
        /// 
        /// You are expected to listen to the
        /// `GPowerProfileMonitor::notify::power-saver-enabled` signal to know when the profile has
        /// changed.
        get {
            let rv = ((g_power_profile_monitor_get_power_saver_enabled(power_profile_monitor_ptr)) != 0)
            return rv
        }
    }


}



// MARK: - Proxy Interface

/// A `GProxy` handles connecting to a remote host via a given type of
/// proxy server. It is implemented by the 'gio-proxy' extension point.
/// The extensions are named after their proxy protocol name. As an
/// example, a SOCKS5 proxy implementation can be retrieved with the
/// name 'socks5' using the function
/// `g_io_extension_point_get_extension_by_name()`.
///
/// The `ProxyProtocol` protocol exposes the methods and properties of an underlying `GProxy` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Proxy`.
/// Alternatively, use `ProxyRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ProxyProtocol {
        /// Untyped pointer to the underlying `GProxy` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GProxy` instance.
    var proxy_ptr: UnsafeMutablePointer<GProxy>! { get }

    /// Required Initialiser for types conforming to `ProxyProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GProxy` handles connecting to a remote host via a given type of
/// proxy server. It is implemented by the 'gio-proxy' extension point.
/// The extensions are named after their proxy protocol name. As an
/// example, a SOCKS5 proxy implementation can be retrieved with the
/// name 'socks5' using the function
/// `g_io_extension_point_get_extension_by_name()`.
///
/// The `ProxyRef` type acts as a lightweight Swift reference to an underlying `GProxy` instance.
/// It exposes methods that can operate on this data type through `ProxyProtocol` conformance.
/// Use `ProxyRef` only as an `unowned` reference to an existing `GProxy` instance.
///
public struct ProxyRef: ProxyProtocol {
        /// Untyped pointer to the underlying `GProxy` instance.
    /// For type-safe access, use the generated, typed pointer `proxy_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ProxyRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GProxy>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GProxy>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GProxy>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GProxy>?) {
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

    /// Reference intialiser for a related type that implements `ProxyProtocol`
    @inlinable init<T: ProxyProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Find the `gio-proxy` extension point for a proxy implementation that supports
    /// the specified protocol.
    @inlinable static func getDefaultFor(`protocol`: UnsafePointer<gchar>!) -> ProxyRef! {
        guard let rv = ProxyRef(gconstpointer: gconstpointer(g_proxy_get_default_for_protocol(`protocol`))) else { return nil }
        return rv
    }
}

/// A `GProxy` handles connecting to a remote host via a given type of
/// proxy server. It is implemented by the 'gio-proxy' extension point.
/// The extensions are named after their proxy protocol name. As an
/// example, a SOCKS5 proxy implementation can be retrieved with the
/// name 'socks5' using the function
/// `g_io_extension_point_get_extension_by_name()`.
///
/// The `Proxy` type acts as an owner of an underlying `GProxy` instance.
/// It provides the methods that can operate on this data type through `ProxyProtocol` conformance.
/// Use `Proxy` as a strong reference or owner of a `GProxy` instance.
///
open class Proxy: ProxyProtocol {
        /// Untyped pointer to the underlying `GProxy` instance.
    /// For type-safe access, use the generated, typed pointer `proxy_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Proxy` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GProxy>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Proxy` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GProxy>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Proxy` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Proxy` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Proxy` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GProxy>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Proxy` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GProxy>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GProxy` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Proxy` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GProxy>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GProxy, cannot ref(proxy_ptr)
    }

    /// Reference intialiser for a related type that implements `ProxyProtocol`
    /// `GProxy` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ProxyProtocol`
    @inlinable public init<T: ProxyProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GProxy, cannot ref(proxy_ptr)
    }

    /// Do-nothing destructor for `GProxy`.
    deinit {
        // no reference counting for GProxy, cannot unref(proxy_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GProxy, cannot ref(proxy_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GProxy, cannot ref(proxy_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GProxy, cannot ref(proxy_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GProxy, cannot ref(proxy_ptr)
    }


    /// Find the `gio-proxy` extension point for a proxy implementation that supports
    /// the specified protocol.
    @inlinable public static func getDefaultFor(`protocol`: UnsafePointer<gchar>!) -> Proxy! {
        guard let rv = Proxy(gconstpointer: gconstpointer(g_proxy_get_default_for_protocol(`protocol`))) else { return nil }
        return rv
    }

}

// MARK: no Proxy properties

// MARK: no Proxy signals

// MARK: Proxy has no signals
// MARK: Proxy Interface: ProxyProtocol extension (methods and fields)
public extension ProxyProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GProxy` instance.
    @inlinable var proxy_ptr: UnsafeMutablePointer<GProxy>! { return ptr?.assumingMemoryBound(to: GProxy.self) }

    /// Given `connection` to communicate with a proxy (eg, a
    /// `GSocketConnection` that is connected to the proxy server), this
    /// does the necessary handshake to connect to `proxy_address`, and if
    /// required, wraps the `GIOStream` to handle proxy payload.
    @inlinable func connect<IOStreamT: IOStreamProtocol, ProxyAddressT: ProxyAddressProtocol>(connection: IOStreamT, proxyAddress: ProxyAddressT, cancellable: CancellableRef? = nil) throws -> IOStreamRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = IOStreamRef(gconstpointer: gconstpointer(g_proxy_connect(proxy_ptr, connection.io_stream_ptr, proxyAddress.proxy_address_ptr, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Given `connection` to communicate with a proxy (eg, a
    /// `GSocketConnection` that is connected to the proxy server), this
    /// does the necessary handshake to connect to `proxy_address`, and if
    /// required, wraps the `GIOStream` to handle proxy payload.
    @inlinable func connect<CancellableT: CancellableProtocol, IOStreamT: IOStreamProtocol, ProxyAddressT: ProxyAddressProtocol>(connection: IOStreamT, proxyAddress: ProxyAddressT, cancellable: CancellableT?) throws -> IOStreamRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = IOStreamRef(gconstpointer: gconstpointer(g_proxy_connect(proxy_ptr, connection.io_stream_ptr, proxyAddress.proxy_address_ptr, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronous version of `g_proxy_connect()`.
    @inlinable func connectAsync<IOStreamT: IOStreamProtocol, ProxyAddressT: ProxyAddressProtocol>(connection: IOStreamT, proxyAddress: ProxyAddressT, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_proxy_connect_async(proxy_ptr, connection.io_stream_ptr, proxyAddress.proxy_address_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronous version of `g_proxy_connect()`.
    @inlinable func connectAsync<CancellableT: CancellableProtocol, IOStreamT: IOStreamProtocol, ProxyAddressT: ProxyAddressProtocol>(connection: IOStreamT, proxyAddress: ProxyAddressT, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_proxy_connect_async(proxy_ptr, connection.io_stream_ptr, proxyAddress.proxy_address_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// See `g_proxy_connect()`.
    @inlinable func connectFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> IOStreamRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = IOStreamRef(gconstpointer: gconstpointer(g_proxy_connect_finish(proxy_ptr, result.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Some proxy protocols expect to be passed a hostname, which they
    /// will resolve to an IP address themselves. Others, like SOCKS4, do
    /// not allow this. This function will return `false` if `proxy` is
    /// implementing such a protocol. When `false` is returned, the caller
    /// should resolve the destination hostname first, and then pass a
    /// `GProxyAddress` containing the stringified IP address to
    /// `g_proxy_connect()` or `g_proxy_connect_async()`.
    @inlinable func supportsHostname() -> Bool {
        let rv = ((g_proxy_supports_hostname(proxy_ptr)) != 0)
        return rv
    }


}



// MARK: - ProxyResolver Interface

/// `GProxyResolver` provides synchronous and asynchronous network proxy
/// resolution. `GProxyResolver` is used within `GSocketClient` through
/// the method `g_socket_connectable_proxy_enumerate()`.
/// 
/// Implementations of `GProxyResolver` based on libproxy and GNOME settings can
/// be found in glib-networking. GIO comes with an implementation for use inside
/// Flatpak portals.
///
/// The `ProxyResolverProtocol` protocol exposes the methods and properties of an underlying `GProxyResolver` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ProxyResolver`.
/// Alternatively, use `ProxyResolverRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ProxyResolverProtocol {
        /// Untyped pointer to the underlying `GProxyResolver` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GProxyResolver` instance.
    var proxy_resolver_ptr: UnsafeMutablePointer<GProxyResolver>! { get }

    /// Required Initialiser for types conforming to `ProxyResolverProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GProxyResolver` provides synchronous and asynchronous network proxy
/// resolution. `GProxyResolver` is used within `GSocketClient` through
/// the method `g_socket_connectable_proxy_enumerate()`.
/// 
/// Implementations of `GProxyResolver` based on libproxy and GNOME settings can
/// be found in glib-networking. GIO comes with an implementation for use inside
/// Flatpak portals.
///
/// The `ProxyResolverRef` type acts as a lightweight Swift reference to an underlying `GProxyResolver` instance.
/// It exposes methods that can operate on this data type through `ProxyResolverProtocol` conformance.
/// Use `ProxyResolverRef` only as an `unowned` reference to an existing `GProxyResolver` instance.
///
public struct ProxyResolverRef: ProxyResolverProtocol {
        /// Untyped pointer to the underlying `GProxyResolver` instance.
    /// For type-safe access, use the generated, typed pointer `proxy_resolver_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ProxyResolverRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GProxyResolver>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GProxyResolver>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GProxyResolver>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GProxyResolver>?) {
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

    /// Reference intialiser for a related type that implements `ProxyResolverProtocol`
    @inlinable init<T: ProxyResolverProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Gets the default `GProxyResolver` for the system.
    @inlinable static func getDefault() -> ProxyResolverRef! {
        guard let rv = ProxyResolverRef(gconstpointer: gconstpointer(g_proxy_resolver_get_default())) else { return nil }
        return rv
    }
}

/// `GProxyResolver` provides synchronous and asynchronous network proxy
/// resolution. `GProxyResolver` is used within `GSocketClient` through
/// the method `g_socket_connectable_proxy_enumerate()`.
/// 
/// Implementations of `GProxyResolver` based on libproxy and GNOME settings can
/// be found in glib-networking. GIO comes with an implementation for use inside
/// Flatpak portals.
///
/// The `ProxyResolver` type acts as an owner of an underlying `GProxyResolver` instance.
/// It provides the methods that can operate on this data type through `ProxyResolverProtocol` conformance.
/// Use `ProxyResolver` as a strong reference or owner of a `GProxyResolver` instance.
///
open class ProxyResolver: ProxyResolverProtocol {
        /// Untyped pointer to the underlying `GProxyResolver` instance.
    /// For type-safe access, use the generated, typed pointer `proxy_resolver_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ProxyResolver` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GProxyResolver>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ProxyResolver` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GProxyResolver>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ProxyResolver` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ProxyResolver` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ProxyResolver` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GProxyResolver>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ProxyResolver` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GProxyResolver>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GProxyResolver` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ProxyResolver` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GProxyResolver>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GProxyResolver, cannot ref(proxy_resolver_ptr)
    }

    /// Reference intialiser for a related type that implements `ProxyResolverProtocol`
    /// `GProxyResolver` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ProxyResolverProtocol`
    @inlinable public init<T: ProxyResolverProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GProxyResolver, cannot ref(proxy_resolver_ptr)
    }

    /// Do-nothing destructor for `GProxyResolver`.
    deinit {
        // no reference counting for GProxyResolver, cannot unref(proxy_resolver_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GProxyResolver, cannot ref(proxy_resolver_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GProxyResolver, cannot ref(proxy_resolver_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GProxyResolver, cannot ref(proxy_resolver_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GProxyResolver, cannot ref(proxy_resolver_ptr)
    }


    /// Gets the default `GProxyResolver` for the system.
    @inlinable public static func getDefault() -> ProxyResolver! {
        guard let rv = ProxyResolver(gconstpointer: gconstpointer(g_proxy_resolver_get_default())) else { return nil }
        return rv
    }

}

// MARK: no ProxyResolver properties

// MARK: no ProxyResolver signals

// MARK: ProxyResolver has no signals
// MARK: ProxyResolver Interface: ProxyResolverProtocol extension (methods and fields)
public extension ProxyResolverProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GProxyResolver` instance.
    @inlinable var proxy_resolver_ptr: UnsafeMutablePointer<GProxyResolver>! { return ptr?.assumingMemoryBound(to: GProxyResolver.self) }

    /// Looks into the system proxy configuration to determine what proxy,
    /// if any, to use to connect to `uri`. The returned proxy URIs are of
    /// the form `&lt;protocol&gt;://[user[:password]@]host:port` or
    /// `direct://`, where &lt;protocol&gt; could be http, rtsp, socks
    /// or other proxying protocol.
    /// 
    /// If you don't know what network protocol is being used on the
    /// socket, you should use `none` as the URI protocol.
    /// In this case, the resolver might still return a generic proxy type
    /// (such as SOCKS), but would not return protocol-specific proxy types
    /// (such as http).
    /// 
    /// `direct://` is used when no proxy is needed.
    /// Direct connection should not be attempted unless it is part of the
    /// returned array of proxies.
    @inlinable func lookup(uri: UnsafePointer<gchar>!, cancellable: CancellableRef? = nil) throws -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_proxy_resolver_lookup(proxy_resolver_ptr, uri, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Looks into the system proxy configuration to determine what proxy,
    /// if any, to use to connect to `uri`. The returned proxy URIs are of
    /// the form `&lt;protocol&gt;://[user[:password]@]host:port` or
    /// `direct://`, where &lt;protocol&gt; could be http, rtsp, socks
    /// or other proxying protocol.
    /// 
    /// If you don't know what network protocol is being used on the
    /// socket, you should use `none` as the URI protocol.
    /// In this case, the resolver might still return a generic proxy type
    /// (such as SOCKS), but would not return protocol-specific proxy types
    /// (such as http).
    /// 
    /// `direct://` is used when no proxy is needed.
    /// Direct connection should not be attempted unless it is part of the
    /// returned array of proxies.
    @inlinable func lookup<CancellableT: CancellableProtocol>(uri: UnsafePointer<gchar>!, cancellable: CancellableT?) throws -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_proxy_resolver_lookup(proxy_resolver_ptr, uri, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronous lookup of proxy. See `g_proxy_resolver_lookup()` for more
    /// details.
    @inlinable func lookupAsync(uri: UnsafePointer<gchar>!, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_proxy_resolver_lookup_async(proxy_resolver_ptr, uri, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronous lookup of proxy. See `g_proxy_resolver_lookup()` for more
    /// details.
    @inlinable func lookupAsync<CancellableT: CancellableProtocol>(uri: UnsafePointer<gchar>!, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_proxy_resolver_lookup_async(proxy_resolver_ptr, uri, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Call this function to obtain the array of proxy URIs when
    /// `g_proxy_resolver_lookup_async()` is complete. See
    /// `g_proxy_resolver_lookup()` for more details.
    @inlinable func lookupFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_proxy_resolver_lookup_finish(proxy_resolver_ptr, result.async_result_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Checks if `resolver` can be used on this system. (This is used
    /// internally; `g_proxy_resolver_get_default()` will only return a proxy
    /// resolver that returns `true` for this method.)
    @inlinable var isSupported: Bool {
        /// Checks if `resolver` can be used on this system. (This is used
        /// internally; `g_proxy_resolver_get_default()` will only return a proxy
        /// resolver that returns `true` for this method.)
        get {
            let rv = ((g_proxy_resolver_is_supported(proxy_resolver_ptr)) != 0)
            return rv
        }
    }


}



// MARK: - RemoteActionGroup Interface

/// The GRemoteActionGroup interface is implemented by `GActionGroup`
/// instances that either transmit action invocations to other processes
/// or receive action invocations in the local process from other
/// processes.
/// 
/// The interface has `_full` variants of the two
/// methods on `GActionGroup` used to activate actions:
/// `g_action_group_activate_action()` and
/// `g_action_group_change_action_state()`. These variants allow a
/// "platform data" `GVariant` to be specified: a dictionary providing
/// context for the action invocation (for example: timestamps, startup
/// notification IDs, etc).
/// 
/// `GDBusActionGroup` implements `GRemoteActionGroup`.  This provides a
/// mechanism to send platform data for action invocations over D-Bus.
/// 
/// Additionally, `g_dbus_connection_export_action_group()` will check if
/// the exported `GActionGroup` implements `GRemoteActionGroup` and use the
/// `_full` variants of the calls if available.  This
/// provides a mechanism by which to receive platform data for action
/// invocations that arrive by way of D-Bus.
///
/// The `RemoteActionGroupProtocol` protocol exposes the methods and properties of an underlying `GRemoteActionGroup` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RemoteActionGroup`.
/// Alternatively, use `RemoteActionGroupRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol RemoteActionGroupProtocol: ActionGroupProtocol {
        /// Untyped pointer to the underlying `GRemoteActionGroup` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GRemoteActionGroup` instance.
    var remote_action_group_ptr: UnsafeMutablePointer<GRemoteActionGroup>! { get }

    /// Required Initialiser for types conforming to `RemoteActionGroupProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The GRemoteActionGroup interface is implemented by `GActionGroup`
/// instances that either transmit action invocations to other processes
/// or receive action invocations in the local process from other
/// processes.
/// 
/// The interface has `_full` variants of the two
/// methods on `GActionGroup` used to activate actions:
/// `g_action_group_activate_action()` and
/// `g_action_group_change_action_state()`. These variants allow a
/// "platform data" `GVariant` to be specified: a dictionary providing
/// context for the action invocation (for example: timestamps, startup
/// notification IDs, etc).
/// 
/// `GDBusActionGroup` implements `GRemoteActionGroup`.  This provides a
/// mechanism to send platform data for action invocations over D-Bus.
/// 
/// Additionally, `g_dbus_connection_export_action_group()` will check if
/// the exported `GActionGroup` implements `GRemoteActionGroup` and use the
/// `_full` variants of the calls if available.  This
/// provides a mechanism by which to receive platform data for action
/// invocations that arrive by way of D-Bus.
///
/// The `RemoteActionGroupRef` type acts as a lightweight Swift reference to an underlying `GRemoteActionGroup` instance.
/// It exposes methods that can operate on this data type through `RemoteActionGroupProtocol` conformance.
/// Use `RemoteActionGroupRef` only as an `unowned` reference to an existing `GRemoteActionGroup` instance.
///
public struct RemoteActionGroupRef: RemoteActionGroupProtocol {
        /// Untyped pointer to the underlying `GRemoteActionGroup` instance.
    /// For type-safe access, use the generated, typed pointer `remote_action_group_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RemoteActionGroupRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GRemoteActionGroup>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GRemoteActionGroup>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GRemoteActionGroup>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GRemoteActionGroup>?) {
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

    /// Reference intialiser for a related type that implements `RemoteActionGroupProtocol`
    @inlinable init<T: RemoteActionGroupProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The GRemoteActionGroup interface is implemented by `GActionGroup`
/// instances that either transmit action invocations to other processes
/// or receive action invocations in the local process from other
/// processes.
/// 
/// The interface has `_full` variants of the two
/// methods on `GActionGroup` used to activate actions:
/// `g_action_group_activate_action()` and
/// `g_action_group_change_action_state()`. These variants allow a
/// "platform data" `GVariant` to be specified: a dictionary providing
/// context for the action invocation (for example: timestamps, startup
/// notification IDs, etc).
/// 
/// `GDBusActionGroup` implements `GRemoteActionGroup`.  This provides a
/// mechanism to send platform data for action invocations over D-Bus.
/// 
/// Additionally, `g_dbus_connection_export_action_group()` will check if
/// the exported `GActionGroup` implements `GRemoteActionGroup` and use the
/// `_full` variants of the calls if available.  This
/// provides a mechanism by which to receive platform data for action
/// invocations that arrive by way of D-Bus.
///
/// The `RemoteActionGroup` type acts as an owner of an underlying `GRemoteActionGroup` instance.
/// It provides the methods that can operate on this data type through `RemoteActionGroupProtocol` conformance.
/// Use `RemoteActionGroup` as a strong reference or owner of a `GRemoteActionGroup` instance.
///
open class RemoteActionGroup: ActionGroup, RemoteActionGroupProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RemoteActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GRemoteActionGroup>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RemoteActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GRemoteActionGroup>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RemoteActionGroup` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RemoteActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RemoteActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GRemoteActionGroup>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RemoteActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GRemoteActionGroup>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GRemoteActionGroup` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `RemoteActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GRemoteActionGroup>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `RemoteActionGroupProtocol`
    /// `GRemoteActionGroup` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `RemoteActionGroupProtocol`
    @inlinable public init<T: RemoteActionGroupProtocol>(remoteActionGroup other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no RemoteActionGroup properties

public enum RemoteActionGroupSignalName: String, SignalNameProtocol {
    /// Signals that a new action was just added to the group.
    /// This signal is emitted after the action has been added
    /// and is now visible.
    case actionAdded = "action-added"
    /// Signals that the enabled status of the named action has changed.
    case actionEnabledChanged = "action-enabled-changed"
    /// Signals that an action is just about to be removed from the group.
    /// This signal is emitted before the action is removed, so the action
    /// is still visible and can be queried from the signal handler.
    case actionRemoved = "action-removed"
    /// Signals that the state of the named action has changed.
    case actionStateChanged = "action-state-changed"

}

// MARK: RemoteActionGroup has no signals
// MARK: RemoteActionGroup Interface: RemoteActionGroupProtocol extension (methods and fields)
public extension RemoteActionGroupProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GRemoteActionGroup` instance.
    @inlinable var remote_action_group_ptr: UnsafeMutablePointer<GRemoteActionGroup>! { return ptr?.assumingMemoryBound(to: GRemoteActionGroup.self) }

    /// Activates the remote action.
    /// 
    /// This is the same as `g_action_group_activate_action()` except that it
    /// allows for provision of "platform data" to be sent along with the
    /// activation request.  This typically contains details such as the user
    /// interaction timestamp or startup notification information.
    /// 
    /// `platform_data` must be non-`nil` and must have the type
    /// `G_VARIANT_TYPE_VARDICT`.  If it is floating, it will be consumed.
    @inlinable func activateActionFull<VariantT: GLib.VariantProtocol>(actionName: UnsafePointer<gchar>!, parameter: VariantT?, platformData: VariantT) {
        g_remote_action_group_activate_action_full(remote_action_group_ptr, actionName, parameter?.variant_ptr, platformData.variant_ptr)
    
    }

    /// Changes the state of a remote action.
    /// 
    /// This is the same as `g_action_group_change_action_state()` except that
    /// it allows for provision of "platform data" to be sent along with the
    /// state change request.  This typically contains details such as the
    /// user interaction timestamp or startup notification information.
    /// 
    /// `platform_data` must be non-`nil` and must have the type
    /// `G_VARIANT_TYPE_VARDICT`.  If it is floating, it will be consumed.
    @inlinable func changeActionStateFull<VariantT: GLib.VariantProtocol>(actionName: UnsafePointer<gchar>!, value: VariantT, platformData: VariantT) {
        g_remote_action_group_change_action_state_full(remote_action_group_ptr, actionName, value.variant_ptr, platformData.variant_ptr)
    
    }


}



