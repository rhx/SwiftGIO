import CGLib
import GLib
import GLibObject

// MARK: - IOStream Class

/// GIOStream represents an object that has both read and write streams.
/// Generally the two streams act as separate input and output streams,
/// but they share some common resources and state. For instance, for
/// seekable streams, both streams may use the same position.
/// 
/// Examples of `GIOStream` objects are `GSocketConnection`, which represents
/// a two-way network connection; and `GFileIOStream`, which represents a
/// file handle opened in read-write mode.
/// 
/// To do the actual reading and writing you need to get the substreams
/// with `g_io_stream_get_input_stream()` and `g_io_stream_get_output_stream()`.
/// 
/// The `GIOStream` object owns the input and the output streams, not the other
/// way around, so keeping the substreams alive will not keep the `GIOStream`
/// object alive. If the `GIOStream` object is freed it will be closed, thus
/// closing the substreams, so even if the substreams stay alive they will
/// always return `G_IO_ERROR_CLOSED` for all operations.
/// 
/// To close a stream use `g_io_stream_close()` which will close the common
/// stream object and also the individual substreams. You can also close
/// the substreams themselves. In most cases this only marks the
/// substream as closed, so further I/O on it fails but common state in the
/// `GIOStream` may still be open. However, some streams may support
/// "half-closed" states where one direction of the stream is actually shut down.
/// 
/// Operations on `GIOStreams` cannot be started while another operation on the
/// `GIOStream` or its substreams is in progress. Specifically, an application can
/// read from the `GInputStream` and write to the `GOutputStream` simultaneously
/// (either in separate threads, or as asynchronous operations in the same
/// thread), but an application cannot start any `GIOStream` operation while there
/// is a `GIOStream`, `GInputStream` or `GOutputStream` operation in progress, and
/// an application can’t start any `GInputStream` or `GOutputStream` operation
/// while there is a `GIOStream` operation in progress.
/// 
/// This is a product of individual stream operations being associated with a
/// given `GMainContext` (the thread-default context at the time the operation was
/// started), rather than entire streams being associated with a single
/// `GMainContext`.
/// 
/// GIO may run operations on `GIOStreams` from other (worker) threads, and this
/// may be exposed to application code in the behaviour of wrapper streams, such
/// as `GBufferedInputStream` or `GTlsConnection`. With such wrapper APIs,
/// application code may only run operations on the base (wrapped) stream when
/// the wrapper stream is idle. Note that the semantics of such operations may
/// not be well-defined due to the state the wrapper stream leaves the base
/// stream in (though they are guaranteed not to crash).
///
/// The `IOStreamProtocol` protocol exposes the methods and properties of an underlying `GIOStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IOStream`.
/// Alternatively, use `IOStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol IOStreamProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GIOStream` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GIOStream` instance.
    var io_stream_ptr: UnsafeMutablePointer<GIOStream>! { get }

    /// Required Initialiser for types conforming to `IOStreamProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// GIOStream represents an object that has both read and write streams.
/// Generally the two streams act as separate input and output streams,
/// but they share some common resources and state. For instance, for
/// seekable streams, both streams may use the same position.
/// 
/// Examples of `GIOStream` objects are `GSocketConnection`, which represents
/// a two-way network connection; and `GFileIOStream`, which represents a
/// file handle opened in read-write mode.
/// 
/// To do the actual reading and writing you need to get the substreams
/// with `g_io_stream_get_input_stream()` and `g_io_stream_get_output_stream()`.
/// 
/// The `GIOStream` object owns the input and the output streams, not the other
/// way around, so keeping the substreams alive will not keep the `GIOStream`
/// object alive. If the `GIOStream` object is freed it will be closed, thus
/// closing the substreams, so even if the substreams stay alive they will
/// always return `G_IO_ERROR_CLOSED` for all operations.
/// 
/// To close a stream use `g_io_stream_close()` which will close the common
/// stream object and also the individual substreams. You can also close
/// the substreams themselves. In most cases this only marks the
/// substream as closed, so further I/O on it fails but common state in the
/// `GIOStream` may still be open. However, some streams may support
/// "half-closed" states where one direction of the stream is actually shut down.
/// 
/// Operations on `GIOStreams` cannot be started while another operation on the
/// `GIOStream` or its substreams is in progress. Specifically, an application can
/// read from the `GInputStream` and write to the `GOutputStream` simultaneously
/// (either in separate threads, or as asynchronous operations in the same
/// thread), but an application cannot start any `GIOStream` operation while there
/// is a `GIOStream`, `GInputStream` or `GOutputStream` operation in progress, and
/// an application can’t start any `GInputStream` or `GOutputStream` operation
/// while there is a `GIOStream` operation in progress.
/// 
/// This is a product of individual stream operations being associated with a
/// given `GMainContext` (the thread-default context at the time the operation was
/// started), rather than entire streams being associated with a single
/// `GMainContext`.
/// 
/// GIO may run operations on `GIOStreams` from other (worker) threads, and this
/// may be exposed to application code in the behaviour of wrapper streams, such
/// as `GBufferedInputStream` or `GTlsConnection`. With such wrapper APIs,
/// application code may only run operations on the base (wrapped) stream when
/// the wrapper stream is idle. Note that the semantics of such operations may
/// not be well-defined due to the state the wrapper stream leaves the base
/// stream in (though they are guaranteed not to crash).
///
/// The `IOStreamRef` type acts as a lightweight Swift reference to an underlying `GIOStream` instance.
/// It exposes methods that can operate on this data type through `IOStreamProtocol` conformance.
/// Use `IOStreamRef` only as an `unowned` reference to an existing `GIOStream` instance.
///
public struct IOStreamRef: IOStreamProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GIOStream` instance.
    /// For type-safe access, use the generated, typed pointer `io_stream_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IOStreamRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GIOStream>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GIOStream>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GIOStream>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GIOStream>?) {
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

    /// Reference intialiser for a related type that implements `IOStreamProtocol`
    @inlinable init<T: IOStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: IOStreamProtocol>(_ other: T) -> IOStreamRef { IOStreamRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// GIOStream represents an object that has both read and write streams.
/// Generally the two streams act as separate input and output streams,
/// but they share some common resources and state. For instance, for
/// seekable streams, both streams may use the same position.
/// 
/// Examples of `GIOStream` objects are `GSocketConnection`, which represents
/// a two-way network connection; and `GFileIOStream`, which represents a
/// file handle opened in read-write mode.
/// 
/// To do the actual reading and writing you need to get the substreams
/// with `g_io_stream_get_input_stream()` and `g_io_stream_get_output_stream()`.
/// 
/// The `GIOStream` object owns the input and the output streams, not the other
/// way around, so keeping the substreams alive will not keep the `GIOStream`
/// object alive. If the `GIOStream` object is freed it will be closed, thus
/// closing the substreams, so even if the substreams stay alive they will
/// always return `G_IO_ERROR_CLOSED` for all operations.
/// 
/// To close a stream use `g_io_stream_close()` which will close the common
/// stream object and also the individual substreams. You can also close
/// the substreams themselves. In most cases this only marks the
/// substream as closed, so further I/O on it fails but common state in the
/// `GIOStream` may still be open. However, some streams may support
/// "half-closed" states where one direction of the stream is actually shut down.
/// 
/// Operations on `GIOStreams` cannot be started while another operation on the
/// `GIOStream` or its substreams is in progress. Specifically, an application can
/// read from the `GInputStream` and write to the `GOutputStream` simultaneously
/// (either in separate threads, or as asynchronous operations in the same
/// thread), but an application cannot start any `GIOStream` operation while there
/// is a `GIOStream`, `GInputStream` or `GOutputStream` operation in progress, and
/// an application can’t start any `GInputStream` or `GOutputStream` operation
/// while there is a `GIOStream` operation in progress.
/// 
/// This is a product of individual stream operations being associated with a
/// given `GMainContext` (the thread-default context at the time the operation was
/// started), rather than entire streams being associated with a single
/// `GMainContext`.
/// 
/// GIO may run operations on `GIOStreams` from other (worker) threads, and this
/// may be exposed to application code in the behaviour of wrapper streams, such
/// as `GBufferedInputStream` or `GTlsConnection`. With such wrapper APIs,
/// application code may only run operations on the base (wrapped) stream when
/// the wrapper stream is idle. Note that the semantics of such operations may
/// not be well-defined due to the state the wrapper stream leaves the base
/// stream in (though they are guaranteed not to crash).
///
/// The `IOStream` type acts as a reference-counted owner of an underlying `GIOStream` instance.
/// It provides the methods that can operate on this data type through `IOStreamProtocol` conformance.
/// Use `IOStream` as a strong reference or owner of a `GIOStream` instance.
///
open class IOStream: GLibObject.Object, IOStreamProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GIOStream>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GIOStream>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOStream` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GIOStream>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GIOStream>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GIOStream`.
    /// i.e., ownership is transferred to the `IOStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GIOStream>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `IOStreamProtocol`
    /// Will retain `GIOStream`.
    /// - Parameter other: an instance of a related type that implements `IOStreamProtocol`
    @inlinable public init<T: IOStreamProtocol>(iOStream other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum IOStreamPropertyName: String, PropertyNameProtocol {
    case closed = "closed"
    case inputStream = "input-stream"
    case outputStream = "output-stream"
}

public extension IOStreamProtocol {
    /// Bind a `IOStreamPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: IOStreamPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a IOStream property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: IOStreamPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a IOStream property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: IOStreamPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum IOStreamSignalName: String, SignalNameProtocol {
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
    case notifyClosed = "notify::closed"
    case notifyInputStream = "notify::input-stream"
    case notifyOutputStream = "notify::output-stream"
}

// MARK: IOStream has no signals
// MARK: IOStream Class: IOStreamProtocol extension (methods and fields)
public extension IOStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GIOStream` instance.
    @inlinable var io_stream_ptr: UnsafeMutablePointer<GIOStream>! { return ptr?.assumingMemoryBound(to: GIOStream.self) }

    /// Clears the pending flag on `stream`.
    @inlinable func clearPending() {
        g_io_stream_clear_pending(io_stream_ptr)
    
    }

    /// Closes the stream, releasing resources related to it. This will also
    /// close the individual input and output streams, if they are not already
    /// closed.
    /// 
    /// Once the stream is closed, all other operations will return
    /// `G_IO_ERROR_CLOSED`. Closing a stream multiple times will not
    /// return an error.
    /// 
    /// Closing a stream will automatically flush any outstanding buffers
    /// in the stream.
    /// 
    /// Streams will be automatically closed when the last reference
    /// is dropped, but you might want to call this function to make sure
    /// resources are released as early as possible.
    /// 
    /// Some streams might keep the backing store of the stream (e.g. a file
    /// descriptor) open after the stream is closed. See the documentation for
    /// the individual stream for details.
    /// 
    /// On failure the first error that happened will be reported, but the
    /// close operation will finish as much as possible. A stream that failed
    /// to close will still return `G_IO_ERROR_CLOSED` for all operations.
    /// Still, it is important to check and report the error to the user,
    /// otherwise there might be a loss of data as all data might not be written.
    /// 
    /// If `cancellable` is not NULL, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    /// Cancelling a close will still leave the stream closed, but some streams
    /// can use a faster close that doesn't block to e.g. check errors.
    /// 
    /// The default implementation of this method just calls close on the
    /// individual input/output streams.
    @inlinable func close(cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_io_stream_close(io_stream_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Closes the stream, releasing resources related to it. This will also
    /// close the individual input and output streams, if they are not already
    /// closed.
    /// 
    /// Once the stream is closed, all other operations will return
    /// `G_IO_ERROR_CLOSED`. Closing a stream multiple times will not
    /// return an error.
    /// 
    /// Closing a stream will automatically flush any outstanding buffers
    /// in the stream.
    /// 
    /// Streams will be automatically closed when the last reference
    /// is dropped, but you might want to call this function to make sure
    /// resources are released as early as possible.
    /// 
    /// Some streams might keep the backing store of the stream (e.g. a file
    /// descriptor) open after the stream is closed. See the documentation for
    /// the individual stream for details.
    /// 
    /// On failure the first error that happened will be reported, but the
    /// close operation will finish as much as possible. A stream that failed
    /// to close will still return `G_IO_ERROR_CLOSED` for all operations.
    /// Still, it is important to check and report the error to the user,
    /// otherwise there might be a loss of data as all data might not be written.
    /// 
    /// If `cancellable` is not NULL, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    /// Cancelling a close will still leave the stream closed, but some streams
    /// can use a faster close that doesn't block to e.g. check errors.
    /// 
    /// The default implementation of this method just calls close on the
    /// individual input/output streams.
    @inlinable func close<CancellableT: CancellableProtocol>(cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_io_stream_close(io_stream_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Requests an asynchronous close of the stream, releasing resources
    /// related to it. When the operation is finished `callback` will be
    /// called. You can then call `g_io_stream_close_finish()` to get
    /// the result of the operation.
    /// 
    /// For behaviour details see `g_io_stream_close()`.
    /// 
    /// The asynchronous methods have a default fallback that uses threads
    /// to implement asynchronicity, so they are optional for inheriting
    /// classes. However, if you override one you must override all.
    @inlinable func closeAsync(ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_io_stream_close_async(io_stream_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Requests an asynchronous close of the stream, releasing resources
    /// related to it. When the operation is finished `callback` will be
    /// called. You can then call `g_io_stream_close_finish()` to get
    /// the result of the operation.
    /// 
    /// For behaviour details see `g_io_stream_close()`.
    /// 
    /// The asynchronous methods have a default fallback that uses threads
    /// to implement asynchronicity, so they are optional for inheriting
    /// classes. However, if you override one you must override all.
    @inlinable func closeAsync<CancellableT: CancellableProtocol>(ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_io_stream_close_async(io_stream_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Closes a stream.
    @inlinable func closeFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_io_stream_close_finish(io_stream_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Gets the input stream for this object. This is used
    /// for reading.
    @inlinable func getInputStream() -> InputStreamRef! {
        let rv = InputStreamRef(gconstpointer: gconstpointer(g_io_stream_get_input_stream(io_stream_ptr)))
        return rv
    }

    /// Gets the output stream for this object. This is used for
    /// writing.
    @inlinable func getOutputStream() -> OutputStreamRef! {
        let rv = OutputStreamRef(gconstpointer: gconstpointer(g_io_stream_get_output_stream(io_stream_ptr)))
        return rv
    }

    /// Checks if a stream has pending actions.
    @inlinable func hasPending() -> Bool {
        let rv = ((g_io_stream_has_pending(io_stream_ptr)) != 0)
        return rv
    }

    /// Sets `stream` to have actions pending. If the pending flag is
    /// already set or `stream` is closed, it will return `false` and set
    /// `error`.
    @inlinable func setPending() throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_io_stream_set_pending(io_stream_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously splice the output stream of `stream1` to the input stream of
    /// `stream2`, and splice the output stream of `stream2` to the input stream of
    /// `stream1`.
    /// 
    /// When the operation is finished `callback` will be called.
    /// You can then call `g_io_stream_splice_finish()` to get the
    /// result of the operation.
    @inlinable func spliceAsync<IOStreamT: IOStreamProtocol>(stream2: IOStreamT, flags: IOStreamSpliceFlags, ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_io_stream_splice_async(io_stream_ptr, stream2.io_stream_ptr, flags.value, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously splice the output stream of `stream1` to the input stream of
    /// `stream2`, and splice the output stream of `stream2` to the input stream of
    /// `stream1`.
    /// 
    /// When the operation is finished `callback` will be called.
    /// You can then call `g_io_stream_splice_finish()` to get the
    /// result of the operation.
    @inlinable func spliceAsync<CancellableT: CancellableProtocol, IOStreamT: IOStreamProtocol>(stream2: IOStreamT, flags: IOStreamSpliceFlags, ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_io_stream_splice_async(io_stream_ptr, stream2.io_stream_ptr, flags.value, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Creates a new `GTlsClientConnection` wrapping `base_io_stream` (which
    /// must have pollable input and output streams) which is assumed to
    /// communicate with the server identified by `server_identity`.
    /// 
    /// See the documentation for `GTlsConnection:base-io-stream` for restrictions
    /// on when application code can run operations on the `base_io_stream` after
    /// this function has returned.
    @inlinable func tlsClientConnectionNew(serverIdentity: SocketConnectableRef? = nil) throws -> TLSClientConnectionRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = TLSClientConnectionRef(gconstpointer: gconstpointer(g_tls_client_connection_new(io_stream_ptr, serverIdentity?.socket_connectable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Creates a new `GTlsClientConnection` wrapping `base_io_stream` (which
    /// must have pollable input and output streams) which is assumed to
    /// communicate with the server identified by `server_identity`.
    /// 
    /// See the documentation for `GTlsConnection:base-io-stream` for restrictions
    /// on when application code can run operations on the `base_io_stream` after
    /// this function has returned.
    @inlinable func tlsClientConnectionNew<SocketConnectableT: SocketConnectableProtocol>(serverIdentity: SocketConnectableT?) throws -> TLSClientConnectionRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = TLSClientConnectionRef(gconstpointer: gconstpointer(g_tls_client_connection_new(io_stream_ptr, serverIdentity?.socket_connectable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Creates a new `GTlsServerConnection` wrapping `base_io_stream` (which
    /// must have pollable input and output streams).
    /// 
    /// See the documentation for `GTlsConnection:base-io-stream` for restrictions
    /// on when application code can run operations on the `base_io_stream` after
    /// this function has returned.
    @inlinable func tlsServerConnectionNew(certificate: TLSCertificateRef? = nil) throws -> TLSServerConnectionRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = TLSServerConnectionRef(gconstpointer: gconstpointer(g_tls_server_connection_new(io_stream_ptr, certificate?.tls_certificate_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Creates a new `GTlsServerConnection` wrapping `base_io_stream` (which
    /// must have pollable input and output streams).
    /// 
    /// See the documentation for `GTlsConnection:base-io-stream` for restrictions
    /// on when application code can run operations on the `base_io_stream` after
    /// this function has returned.
    @inlinable func tlsServerConnectionNew<TLSCertificateT: TLSCertificateProtocol>(certificate: TLSCertificateT?) throws -> TLSServerConnectionRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = TLSServerConnectionRef(gconstpointer: gconstpointer(g_tls_server_connection_new(io_stream_ptr, certificate?.tls_certificate_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Gets the input stream for this object. This is used
    /// for reading.
    @inlinable var inputStream: InputStreamRef! {
        /// Gets the input stream for this object. This is used
        /// for reading.
        get {
            let rv = InputStreamRef(gconstpointer: gconstpointer(g_io_stream_get_input_stream(io_stream_ptr)))
            return rv
        }
    }

    /// Checks if a stream is closed.
    @inlinable var isClosed: Bool {
        /// Checks if a stream is closed.
        get {
            let rv = ((g_io_stream_is_closed(io_stream_ptr)) != 0)
            return rv
        }
    }

    /// Gets the output stream for this object. This is used for
    /// writing.
    @inlinable var outputStream: OutputStreamRef! {
        /// Gets the output stream for this object. This is used for
        /// writing.
        get {
            let rv = OutputStreamRef(gconstpointer: gconstpointer(g_io_stream_get_output_stream(io_stream_ptr)))
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = io_stream_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - InetAddress Class

/// `GInetAddress` represents an IPv4 or IPv6 internet address. Use
/// `g_resolver_lookup_by_name()` or `g_resolver_lookup_by_name_async()` to
/// look up the `GInetAddress` for a hostname. Use
/// `g_resolver_lookup_by_address()` or
/// `g_resolver_lookup_by_address_async()` to look up the hostname for a
/// `GInetAddress`.
/// 
/// To actually connect to a remote host, you will need a
/// `GInetSocketAddress` (which includes a `GInetAddress` as well as a
/// port number).
///
/// The `InetAddressProtocol` protocol exposes the methods and properties of an underlying `GInetAddress` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InetAddress`.
/// Alternatively, use `InetAddressRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol InetAddressProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GInetAddress` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GInetAddress` instance.
    var inet_address_ptr: UnsafeMutablePointer<GInetAddress>! { get }

    /// Required Initialiser for types conforming to `InetAddressProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GInetAddress` represents an IPv4 or IPv6 internet address. Use
/// `g_resolver_lookup_by_name()` or `g_resolver_lookup_by_name_async()` to
/// look up the `GInetAddress` for a hostname. Use
/// `g_resolver_lookup_by_address()` or
/// `g_resolver_lookup_by_address_async()` to look up the hostname for a
/// `GInetAddress`.
/// 
/// To actually connect to a remote host, you will need a
/// `GInetSocketAddress` (which includes a `GInetAddress` as well as a
/// port number).
///
/// The `InetAddressRef` type acts as a lightweight Swift reference to an underlying `GInetAddress` instance.
/// It exposes methods that can operate on this data type through `InetAddressProtocol` conformance.
/// Use `InetAddressRef` only as an `unowned` reference to an existing `GInetAddress` instance.
///
public struct InetAddressRef: InetAddressProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GInetAddress` instance.
    /// For type-safe access, use the generated, typed pointer `inet_address_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension InetAddressRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GInetAddress>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GInetAddress>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GInetAddress>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GInetAddress>?) {
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

    /// Reference intialiser for a related type that implements `InetAddressProtocol`
    @inlinable init<T: InetAddressProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: InetAddressProtocol>(_ other: T) -> InetAddressRef { InetAddressRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a `GInetAddress` for the "any" address (unassigned/"don't
    /// care") for `family`.
    @inlinable init(any family: GSocketFamily) {
        let rv = g_inet_address_new_any(family)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GInetAddress` from the given `family` and `bytes`.
    /// `bytes` should be 4 bytes for `G_SOCKET_FAMILY_IPV4` and 16 bytes for
    /// `G_SOCKET_FAMILY_IPV6`.
    @inlinable init(bytes: UnsafePointer<guint8>!, family: GSocketFamily) {
        let rv = g_inet_address_new_from_bytes(bytes, family)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Parses `string` as an IP address and creates a new `GInetAddress`.
    @inlinable init(string: UnsafePointer<gchar>!) {
        let rv = g_inet_address_new_from_string(string)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GInetAddress` for the loopback address for `family`.
    @inlinable init(loopback family: GSocketFamily) {
        let rv = g_inet_address_new_loopback(family)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a `GInetAddress` for the "any" address (unassigned/"don't
    /// care") for `family`.
    @inlinable static func new(any family: GSocketFamily) -> InetAddressRef! {
        guard let rv = InetAddressRef(gconstpointer: gconstpointer(g_inet_address_new_any(family))) else { return nil }
        return rv
    }

    /// Creates a new `GInetAddress` from the given `family` and `bytes`.
    /// `bytes` should be 4 bytes for `G_SOCKET_FAMILY_IPV4` and 16 bytes for
    /// `G_SOCKET_FAMILY_IPV6`.
    @inlinable static func newFrom(bytes: UnsafePointer<guint8>!, family: GSocketFamily) -> InetAddressRef! {
        guard let rv = InetAddressRef(gconstpointer: gconstpointer(g_inet_address_new_from_bytes(bytes, family))) else { return nil }
        return rv
    }

    /// Parses `string` as an IP address and creates a new `GInetAddress`.
    @inlinable static func newFrom(string: UnsafePointer<gchar>!) -> InetAddressRef! {
        guard let rv = InetAddressRef(gconstpointer: gconstpointer(g_inet_address_new_from_string(string))) else { return nil }
        return rv
    }

    /// Creates a `GInetAddress` for the loopback address for `family`.
    @inlinable static func new(loopback family: GSocketFamily) -> InetAddressRef! {
        guard let rv = InetAddressRef(gconstpointer: gconstpointer(g_inet_address_new_loopback(family))) else { return nil }
        return rv
    }
}

/// `GInetAddress` represents an IPv4 or IPv6 internet address. Use
/// `g_resolver_lookup_by_name()` or `g_resolver_lookup_by_name_async()` to
/// look up the `GInetAddress` for a hostname. Use
/// `g_resolver_lookup_by_address()` or
/// `g_resolver_lookup_by_address_async()` to look up the hostname for a
/// `GInetAddress`.
/// 
/// To actually connect to a remote host, you will need a
/// `GInetSocketAddress` (which includes a `GInetAddress` as well as a
/// port number).
///
/// The `InetAddress` type acts as a reference-counted owner of an underlying `GInetAddress` instance.
/// It provides the methods that can operate on this data type through `InetAddressProtocol` conformance.
/// Use `InetAddress` as a strong reference or owner of a `GInetAddress` instance.
///
open class InetAddress: GLibObject.Object, InetAddressProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InetAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GInetAddress>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InetAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GInetAddress>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InetAddress` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InetAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InetAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GInetAddress>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InetAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GInetAddress>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GInetAddress`.
    /// i.e., ownership is transferred to the `InetAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GInetAddress>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `InetAddressProtocol`
    /// Will retain `GInetAddress`.
    /// - Parameter other: an instance of a related type that implements `InetAddressProtocol`
    @inlinable public init<T: InetAddressProtocol>(inetAddress other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a `GInetAddress` for the "any" address (unassigned/"don't
    /// care") for `family`.
    @inlinable public init(any family: GSocketFamily) {
        let rv = g_inet_address_new_any(family)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GInetAddress` from the given `family` and `bytes`.
    /// `bytes` should be 4 bytes for `G_SOCKET_FAMILY_IPV4` and 16 bytes for
    /// `G_SOCKET_FAMILY_IPV6`.
    @inlinable public init(bytes: UnsafePointer<guint8>!, family: GSocketFamily) {
        let rv = g_inet_address_new_from_bytes(bytes, family)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Parses `string` as an IP address and creates a new `GInetAddress`.
    @inlinable public init(string: UnsafePointer<gchar>!) {
        let rv = g_inet_address_new_from_string(string)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a `GInetAddress` for the loopback address for `family`.
    @inlinable public init(loopback family: GSocketFamily) {
        let rv = g_inet_address_new_loopback(family)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a `GInetAddress` for the "any" address (unassigned/"don't
    /// care") for `family`.
    @inlinable public static func new(any family: GSocketFamily) -> InetAddress! {
        guard let rv = InetAddress(gconstpointer: gconstpointer(g_inet_address_new_any(family))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a new `GInetAddress` from the given `family` and `bytes`.
    /// `bytes` should be 4 bytes for `G_SOCKET_FAMILY_IPV4` and 16 bytes for
    /// `G_SOCKET_FAMILY_IPV6`.
    @inlinable public static func newFrom(bytes: UnsafePointer<guint8>!, family: GSocketFamily) -> InetAddress! {
        guard let rv = InetAddress(gconstpointer: gconstpointer(g_inet_address_new_from_bytes(bytes, family))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Parses `string` as an IP address and creates a new `GInetAddress`.
    @inlinable public static func newFrom(string: UnsafePointer<gchar>!) -> InetAddress! {
        guard let rv = InetAddress(gconstpointer: gconstpointer(g_inet_address_new_from_string(string))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a `GInetAddress` for the loopback address for `family`.
    @inlinable public static func new(loopback family: GSocketFamily) -> InetAddress! {
        guard let rv = InetAddress(gconstpointer: gconstpointer(g_inet_address_new_loopback(family))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum InetAddressPropertyName: String, PropertyNameProtocol {
    case bytes = "bytes"
    case family = "family"
    /// Whether this is the "any" address for its family.
    /// See `g_inet_address_get_is_any()`.
    case isAny = "is-any"
    /// Whether this is a link-local address.
    /// See `g_inet_address_get_is_link_local()`.
    case isLinkLocal = "is-link-local"
    /// Whether this is the loopback address for its family.
    /// See `g_inet_address_get_is_loopback()`.
    case isLoopback = "is-loopback"
    /// Whether this is a global multicast address.
    /// See `g_inet_address_get_is_mc_global()`.
    case isMcGlobal = "is-mc-global"
    /// Whether this is a link-local multicast address.
    /// See `g_inet_address_get_is_mc_link_local()`.
    case isMcLinkLocal = "is-mc-link-local"
    /// Whether this is a node-local multicast address.
    /// See `g_inet_address_get_is_mc_node_local()`.
    case isMcNodeLocal = "is-mc-node-local"
    /// Whether this is an organization-local multicast address.
    /// See `g_inet_address_get_is_mc_org_local()`.
    case isMcOrgLocal = "is-mc-org-local"
    /// Whether this is a site-local multicast address.
    /// See `g_inet_address_get_is_mc_site_local()`.
    case isMcSiteLocal = "is-mc-site-local"
    /// Whether this is a multicast address.
    /// See `g_inet_address_get_is_multicast()`.
    case isMulticast = "is-multicast"
    /// Whether this is a site-local address.
    /// See `g_inet_address_get_is_loopback()`.
    case isSiteLocal = "is-site-local"
}

public extension InetAddressProtocol {
    /// Bind a `InetAddressPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: InetAddressPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a InetAddress property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: InetAddressPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a InetAddress property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: InetAddressPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum InetAddressSignalName: String, SignalNameProtocol {
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
    case notifyBytes = "notify::bytes"
    case notifyFamily = "notify::family"
    /// Whether this is the "any" address for its family.
    /// See `g_inet_address_get_is_any()`.
    case notifyIsAny = "notify::is-any"
    /// Whether this is a link-local address.
    /// See `g_inet_address_get_is_link_local()`.
    case notifyIsLinkLocal = "notify::is-link-local"
    /// Whether this is the loopback address for its family.
    /// See `g_inet_address_get_is_loopback()`.
    case notifyIsLoopback = "notify::is-loopback"
    /// Whether this is a global multicast address.
    /// See `g_inet_address_get_is_mc_global()`.
    case notifyIsMcGlobal = "notify::is-mc-global"
    /// Whether this is a link-local multicast address.
    /// See `g_inet_address_get_is_mc_link_local()`.
    case notifyIsMcLinkLocal = "notify::is-mc-link-local"
    /// Whether this is a node-local multicast address.
    /// See `g_inet_address_get_is_mc_node_local()`.
    case notifyIsMcNodeLocal = "notify::is-mc-node-local"
    /// Whether this is an organization-local multicast address.
    /// See `g_inet_address_get_is_mc_org_local()`.
    case notifyIsMcOrgLocal = "notify::is-mc-org-local"
    /// Whether this is a site-local multicast address.
    /// See `g_inet_address_get_is_mc_site_local()`.
    case notifyIsMcSiteLocal = "notify::is-mc-site-local"
    /// Whether this is a multicast address.
    /// See `g_inet_address_get_is_multicast()`.
    case notifyIsMulticast = "notify::is-multicast"
    /// Whether this is a site-local address.
    /// See `g_inet_address_get_is_loopback()`.
    case notifyIsSiteLocal = "notify::is-site-local"
}

// MARK: InetAddress has no signals
// MARK: InetAddress Class: InetAddressProtocol extension (methods and fields)
public extension InetAddressProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GInetAddress` instance.
    @inlinable var inet_address_ptr: UnsafeMutablePointer<GInetAddress>! { return ptr?.assumingMemoryBound(to: GInetAddress.self) }

    /// Checks if two `GInetAddress` instances are equal, e.g. the same address.
    @inlinable func equal<InetAddressT: InetAddressProtocol>(otherAddress: InetAddressT) -> Bool {
        let rv = ((g_inet_address_equal(inet_address_ptr, otherAddress.inet_address_ptr)) != 0)
        return rv
    }

    /// Gets `address`'s family
    @inlinable func getFamily() -> GSocketFamily {
        let rv = g_inet_address_get_family(inet_address_ptr)
        return rv
    }

    /// Tests whether `address` is the "any" address for its family.
    @inlinable func getIsAny() -> Bool {
        let rv = ((g_inet_address_get_is_any(inet_address_ptr)) != 0)
        return rv
    }

    /// Tests whether `address` is a link-local address (that is, if it
    /// identifies a host on a local network that is not connected to the
    /// Internet).
    @inlinable func getIsLinkLocal() -> Bool {
        let rv = ((g_inet_address_get_is_link_local(inet_address_ptr)) != 0)
        return rv
    }

    /// Tests whether `address` is the loopback address for its family.
    @inlinable func getIsLoopback() -> Bool {
        let rv = ((g_inet_address_get_is_loopback(inet_address_ptr)) != 0)
        return rv
    }

    /// Tests whether `address` is a global multicast address.
    @inlinable func getIsMcGlobal() -> Bool {
        let rv = ((g_inet_address_get_is_mc_global(inet_address_ptr)) != 0)
        return rv
    }

    /// Tests whether `address` is a link-local multicast address.
    @inlinable func getIsMcLinkLocal() -> Bool {
        let rv = ((g_inet_address_get_is_mc_link_local(inet_address_ptr)) != 0)
        return rv
    }

    /// Tests whether `address` is a node-local multicast address.
    @inlinable func getIsMcNodeLocal() -> Bool {
        let rv = ((g_inet_address_get_is_mc_node_local(inet_address_ptr)) != 0)
        return rv
    }

    /// Tests whether `address` is an organization-local multicast address.
    @inlinable func getIsMcOrgLocal() -> Bool {
        let rv = ((g_inet_address_get_is_mc_org_local(inet_address_ptr)) != 0)
        return rv
    }

    /// Tests whether `address` is a site-local multicast address.
    @inlinable func getIsMcSiteLocal() -> Bool {
        let rv = ((g_inet_address_get_is_mc_site_local(inet_address_ptr)) != 0)
        return rv
    }

    /// Tests whether `address` is a multicast address.
    @inlinable func getIsMulticast() -> Bool {
        let rv = ((g_inet_address_get_is_multicast(inet_address_ptr)) != 0)
        return rv
    }

    /// Tests whether `address` is a site-local address such as 10.0.0.1
    /// (that is, the address identifies a host on a local network that can
    /// not be reached directly from the Internet, but which may have
    /// outgoing Internet connectivity via a NAT or firewall).
    @inlinable func getIsSiteLocal() -> Bool {
        let rv = ((g_inet_address_get_is_site_local(inet_address_ptr)) != 0)
        return rv
    }

    /// Gets the size of the native raw binary address for `address`. This
    /// is the size of the data that you get from `g_inet_address_to_bytes()`.
    @inlinable func getNativeSize() -> Int {
        let rv = Int(g_inet_address_get_native_size(inet_address_ptr))
        return rv
    }

    /// Gets the raw binary address data from `address`.
    @inlinable func toBytes() -> UnsafePointer<guint8>! {
        let rv = g_inet_address_to_bytes(inet_address_ptr)
        return rv
    }

    /// Converts `address` to string form.
    @inlinable func toString() -> String! {
        let rv = g_inet_address_to_string(inet_address_ptr).map({ String(cString: $0) })
        return rv
    }
    @inlinable var family: GSocketFamily {
        /// Gets `address`'s family
        get {
            let rv = g_inet_address_get_family(inet_address_ptr)
            return rv
        }
    }

    /// Tests whether `address` is the "any" address for its family.
    @inlinable var isAny: Bool {
        /// Tests whether `address` is the "any" address for its family.
        get {
            let rv = ((g_inet_address_get_is_any(inet_address_ptr)) != 0)
            return rv
        }
    }

    /// Tests whether `address` is a link-local address (that is, if it
    /// identifies a host on a local network that is not connected to the
    /// Internet).
    @inlinable var isLinkLocal: Bool {
        /// Tests whether `address` is a link-local address (that is, if it
        /// identifies a host on a local network that is not connected to the
        /// Internet).
        get {
            let rv = ((g_inet_address_get_is_link_local(inet_address_ptr)) != 0)
            return rv
        }
    }

    /// Tests whether `address` is the loopback address for its family.
    @inlinable var isLoopback: Bool {
        /// Tests whether `address` is the loopback address for its family.
        get {
            let rv = ((g_inet_address_get_is_loopback(inet_address_ptr)) != 0)
            return rv
        }
    }

    /// Tests whether `address` is a global multicast address.
    @inlinable var isMcGlobal: Bool {
        /// Tests whether `address` is a global multicast address.
        get {
            let rv = ((g_inet_address_get_is_mc_global(inet_address_ptr)) != 0)
            return rv
        }
    }

    /// Tests whether `address` is a link-local multicast address.
    @inlinable var isMcLinkLocal: Bool {
        /// Tests whether `address` is a link-local multicast address.
        get {
            let rv = ((g_inet_address_get_is_mc_link_local(inet_address_ptr)) != 0)
            return rv
        }
    }

    /// Tests whether `address` is a node-local multicast address.
    @inlinable var isMcNodeLocal: Bool {
        /// Tests whether `address` is a node-local multicast address.
        get {
            let rv = ((g_inet_address_get_is_mc_node_local(inet_address_ptr)) != 0)
            return rv
        }
    }

    /// Tests whether `address` is an organization-local multicast address.
    @inlinable var isMcOrgLocal: Bool {
        /// Tests whether `address` is an organization-local multicast address.
        get {
            let rv = ((g_inet_address_get_is_mc_org_local(inet_address_ptr)) != 0)
            return rv
        }
    }

    /// Tests whether `address` is a site-local multicast address.
    @inlinable var isMcSiteLocal: Bool {
        /// Tests whether `address` is a site-local multicast address.
        get {
            let rv = ((g_inet_address_get_is_mc_site_local(inet_address_ptr)) != 0)
            return rv
        }
    }

    /// Tests whether `address` is a multicast address.
    @inlinable var isMulticast: Bool {
        /// Tests whether `address` is a multicast address.
        get {
            let rv = ((g_inet_address_get_is_multicast(inet_address_ptr)) != 0)
            return rv
        }
    }

    /// Tests whether `address` is a site-local address such as 10.0.0.1
    /// (that is, the address identifies a host on a local network that can
    /// not be reached directly from the Internet, but which may have
    /// outgoing Internet connectivity via a NAT or firewall).
    @inlinable var isSiteLocal: Bool {
        /// Tests whether `address` is a site-local address such as 10.0.0.1
        /// (that is, the address identifies a host on a local network that can
        /// not be reached directly from the Internet, but which may have
        /// outgoing Internet connectivity via a NAT or firewall).
        get {
            let rv = ((g_inet_address_get_is_site_local(inet_address_ptr)) != 0)
            return rv
        }
    }

    /// Gets the size of the native raw binary address for `address`. This
    /// is the size of the data that you get from `g_inet_address_to_bytes()`.
    @inlinable var nativeSize: Int {
        /// Gets the size of the native raw binary address for `address`. This
        /// is the size of the data that you get from `g_inet_address_to_bytes()`.
        get {
            let rv = Int(g_inet_address_get_native_size(inet_address_ptr))
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = inet_address_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - InetAddressMask Class

/// `GInetAddressMask` represents a range of IPv4 or IPv6 addresses
/// described by a base address and a length indicating how many bits
/// of the base address are relevant for matching purposes. These are
/// often given in string form. Eg, "10.0.0.0/8", or "fe80``/10".
///
/// The `InetAddressMaskProtocol` protocol exposes the methods and properties of an underlying `GInetAddressMask` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InetAddressMask`.
/// Alternatively, use `InetAddressMaskRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol InetAddressMaskProtocol: GLibObject.ObjectProtocol, InitableProtocol {
        /// Untyped pointer to the underlying `GInetAddressMask` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GInetAddressMask` instance.
    var inet_address_mask_ptr: UnsafeMutablePointer<GInetAddressMask>! { get }

    /// Required Initialiser for types conforming to `InetAddressMaskProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GInetAddressMask` represents a range of IPv4 or IPv6 addresses
/// described by a base address and a length indicating how many bits
/// of the base address are relevant for matching purposes. These are
/// often given in string form. Eg, "10.0.0.0/8", or "fe80``/10".
///
/// The `InetAddressMaskRef` type acts as a lightweight Swift reference to an underlying `GInetAddressMask` instance.
/// It exposes methods that can operate on this data type through `InetAddressMaskProtocol` conformance.
/// Use `InetAddressMaskRef` only as an `unowned` reference to an existing `GInetAddressMask` instance.
///
public struct InetAddressMaskRef: InetAddressMaskProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GInetAddressMask` instance.
    /// For type-safe access, use the generated, typed pointer `inet_address_mask_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension InetAddressMaskRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GInetAddressMask>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GInetAddressMask>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GInetAddressMask>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GInetAddressMask>?) {
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

    /// Reference intialiser for a related type that implements `InetAddressMaskProtocol`
    @inlinable init<T: InetAddressMaskProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: InetAddressMaskProtocol>(_ other: T) -> InetAddressMaskRef { InetAddressMaskRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GInetAddressMask` representing all addresses whose
    /// first `length` bits match `addr`.
    @inlinable init<InetAddressT: InetAddressProtocol>( addr: InetAddressT, length: Int) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_inet_address_mask_new(addr.inet_address_ptr, guint(length), &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Parses `mask_string` as an IP address and (optional) length, and
    /// creates a new `GInetAddressMask`. The length, if present, is
    /// delimited by a "/". If it is not present, then the length is
    /// assumed to be the full length of the address.
    @inlinable init(string maskString: UnsafePointer<gchar>!) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_inet_address_mask_new_from_string(maskString, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Parses `mask_string` as an IP address and (optional) length, and
    /// creates a new `GInetAddressMask`. The length, if present, is
    /// delimited by a "/". If it is not present, then the length is
    /// assumed to be the full length of the address.
    @inlinable static func newFrom(string maskString: UnsafePointer<gchar>!) throws -> InetAddressMaskRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = InetAddressMaskRef(gconstpointer: gconstpointer(g_inet_address_mask_new_from_string(maskString, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }
}

/// `GInetAddressMask` represents a range of IPv4 or IPv6 addresses
/// described by a base address and a length indicating how many bits
/// of the base address are relevant for matching purposes. These are
/// often given in string form. Eg, "10.0.0.0/8", or "fe80``/10".
///
/// The `InetAddressMask` type acts as a reference-counted owner of an underlying `GInetAddressMask` instance.
/// It provides the methods that can operate on this data type through `InetAddressMaskProtocol` conformance.
/// Use `InetAddressMask` as a strong reference or owner of a `GInetAddressMask` instance.
///
open class InetAddressMask: GLibObject.Object, InetAddressMaskProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InetAddressMask` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GInetAddressMask>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InetAddressMask` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GInetAddressMask>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InetAddressMask` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InetAddressMask` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InetAddressMask` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GInetAddressMask>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InetAddressMask` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GInetAddressMask>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GInetAddressMask`.
    /// i.e., ownership is transferred to the `InetAddressMask` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GInetAddressMask>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `InetAddressMaskProtocol`
    /// Will retain `GInetAddressMask`.
    /// - Parameter other: an instance of a related type that implements `InetAddressMaskProtocol`
    @inlinable public init<T: InetAddressMaskProtocol>(inetAddressMask other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GInetAddressMask` representing all addresses whose
    /// first `length` bits match `addr`.
    @inlinable public init<InetAddressT: InetAddressProtocol>( addr: InetAddressT, length: Int) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_inet_address_mask_new(addr.inet_address_ptr, guint(length), &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Parses `mask_string` as an IP address and (optional) length, and
    /// creates a new `GInetAddressMask`. The length, if present, is
    /// delimited by a "/". If it is not present, then the length is
    /// assumed to be the full length of the address.
    @inlinable public init(string maskString: UnsafePointer<gchar>!) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_inet_address_mask_new_from_string(maskString, &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Parses `mask_string` as an IP address and (optional) length, and
    /// creates a new `GInetAddressMask`. The length, if present, is
    /// delimited by a "/". If it is not present, then the length is
    /// assumed to be the full length of the address.
    @inlinable public static func newFrom(string maskString: UnsafePointer<gchar>!) throws -> InetAddressMask! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = InetAddressMask(gconstpointer: gconstpointer(g_inet_address_mask_new_from_string(maskString, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum InetAddressMaskPropertyName: String, PropertyNameProtocol {
    case address = "address"
    case family = "family"
    case length = "length"
}

public extension InetAddressMaskProtocol {
    /// Bind a `InetAddressMaskPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: InetAddressMaskPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a InetAddressMask property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: InetAddressMaskPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a InetAddressMask property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: InetAddressMaskPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum InetAddressMaskSignalName: String, SignalNameProtocol {
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
    case notifyAddress = "notify::address"
    case notifyFamily = "notify::family"
    case notifyLength = "notify::length"
}

// MARK: InetAddressMask has no signals
// MARK: InetAddressMask Class: InetAddressMaskProtocol extension (methods and fields)
public extension InetAddressMaskProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GInetAddressMask` instance.
    @inlinable var inet_address_mask_ptr: UnsafeMutablePointer<GInetAddressMask>! { return ptr?.assumingMemoryBound(to: GInetAddressMask.self) }

    /// Tests if `mask` and `mask2` are the same mask.
    @inlinable func equal<InetAddressMaskT: InetAddressMaskProtocol>(mask2: InetAddressMaskT) -> Bool {
        let rv = ((g_inet_address_mask_equal(inet_address_mask_ptr, mask2.inet_address_mask_ptr)) != 0)
        return rv
    }

    /// Gets `mask`'s base address
    @inlinable func getAddress() -> InetAddressRef! {
        let rv = InetAddressRef(gconstpointer: gconstpointer(g_inet_address_mask_get_address(inet_address_mask_ptr)))
        return rv
    }

    /// Gets the `GSocketFamily` of `mask`'s address
    @inlinable func getFamily() -> GSocketFamily {
        let rv = g_inet_address_mask_get_family(inet_address_mask_ptr)
        return rv
    }

    /// Gets `mask`'s length
    @inlinable func getLength() -> Int {
        let rv = Int(g_inet_address_mask_get_length(inet_address_mask_ptr))
        return rv
    }

    /// Tests if `address` falls within the range described by `mask`.
    @inlinable func matches<InetAddressT: InetAddressProtocol>(address: InetAddressT) -> Bool {
        let rv = ((g_inet_address_mask_matches(inet_address_mask_ptr, address.inet_address_ptr)) != 0)
        return rv
    }

    /// Converts `mask` back to its corresponding string form.
    @inlinable func toString() -> String! {
        let rv = g_inet_address_mask_to_string(inet_address_mask_ptr).map({ String(cString: $0) })
        return rv
    }
    @inlinable var address: InetAddressRef! {
        /// Gets `mask`'s base address
        get {
            let rv = InetAddressRef(gconstpointer: gconstpointer(g_inet_address_mask_get_address(inet_address_mask_ptr)))
            return rv
        }
    }

    @inlinable var family: GSocketFamily {
        /// Gets the `GSocketFamily` of `mask`'s address
        get {
            let rv = g_inet_address_mask_get_family(inet_address_mask_ptr)
            return rv
        }
    }

    @inlinable var length: Int {
        /// Gets `mask`'s length
        get {
            let rv = Int(g_inet_address_mask_get_length(inet_address_mask_ptr))
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = inet_address_mask_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - InetSocketAddress Class

/// An IPv4 or IPv6 socket address; that is, the combination of a
/// `GInetAddress` and a port number.
///
/// The `InetSocketAddressProtocol` protocol exposes the methods and properties of an underlying `GInetSocketAddress` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InetSocketAddress`.
/// Alternatively, use `InetSocketAddressRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol InetSocketAddressProtocol: SocketAddressProtocol {
        /// Untyped pointer to the underlying `GInetSocketAddress` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GInetSocketAddress` instance.
    var inet_socket_address_ptr: UnsafeMutablePointer<GInetSocketAddress>! { get }

    /// Required Initialiser for types conforming to `InetSocketAddressProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// An IPv4 or IPv6 socket address; that is, the combination of a
/// `GInetAddress` and a port number.
///
/// The `InetSocketAddressRef` type acts as a lightweight Swift reference to an underlying `GInetSocketAddress` instance.
/// It exposes methods that can operate on this data type through `InetSocketAddressProtocol` conformance.
/// Use `InetSocketAddressRef` only as an `unowned` reference to an existing `GInetSocketAddress` instance.
///
public struct InetSocketAddressRef: InetSocketAddressProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GInetSocketAddress` instance.
    /// For type-safe access, use the generated, typed pointer `inet_socket_address_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension InetSocketAddressRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GInetSocketAddress>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GInetSocketAddress>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GInetSocketAddress>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GInetSocketAddress>?) {
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

    /// Reference intialiser for a related type that implements `InetSocketAddressProtocol`
    @inlinable init<T: InetSocketAddressProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: InetSocketAddressProtocol>(_ other: T) -> InetSocketAddressRef { InetSocketAddressRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GInetSocketAddress` for `address` and `port`.
    @inlinable init<InetAddressT: InetAddressProtocol>( address: InetAddressT, port: guint16) {
        let rv = g_inet_socket_address_new(address.inet_address_ptr, port)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GInetSocketAddress` for `address` and `port`.
    /// 
    /// If `address` is an IPv6 address, it can also contain a scope ID
    /// (separated from the address by a ````).
    @inlinable init(string address: UnsafePointer<CChar>!, port: Int) {
        let rv = g_inet_socket_address_new_from_string(address, guint(port))
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GInetSocketAddress` for `address` and `port`.
    /// 
    /// If `address` is an IPv6 address, it can also contain a scope ID
    /// (separated from the address by a ````).
    @inlinable static func newFrom(string address: UnsafePointer<CChar>!, port: Int) -> SocketAddressRef! {
        guard let rv = SocketAddressRef(gconstpointer: gconstpointer(g_inet_socket_address_new_from_string(address, guint(port)))) else { return nil }
        return rv
    }
}

/// An IPv4 or IPv6 socket address; that is, the combination of a
/// `GInetAddress` and a port number.
///
/// The `InetSocketAddress` type acts as a reference-counted owner of an underlying `GInetSocketAddress` instance.
/// It provides the methods that can operate on this data type through `InetSocketAddressProtocol` conformance.
/// Use `InetSocketAddress` as a strong reference or owner of a `GInetSocketAddress` instance.
///
open class InetSocketAddress: SocketAddress, InetSocketAddressProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InetSocketAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GInetSocketAddress>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InetSocketAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GInetSocketAddress>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InetSocketAddress` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InetSocketAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InetSocketAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GInetSocketAddress>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InetSocketAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GInetSocketAddress>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GInetSocketAddress`.
    /// i.e., ownership is transferred to the `InetSocketAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GInetSocketAddress>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `InetSocketAddressProtocol`
    /// Will retain `GInetSocketAddress`.
    /// - Parameter other: an instance of a related type that implements `InetSocketAddressProtocol`
    @inlinable public init<T: InetSocketAddressProtocol>(inetSocketAddress other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GInetSocketAddress` for `address` and `port`.
    @inlinable public init<InetAddressT: InetAddressProtocol>( address: InetAddressT, port: guint16) {
        let rv = g_inet_socket_address_new(address.inet_address_ptr, port)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GInetSocketAddress` for `address` and `port`.
    /// 
    /// If `address` is an IPv6 address, it can also contain a scope ID
    /// (separated from the address by a ````).
    @inlinable public init(string address: UnsafePointer<CChar>!, port: Int) {
        let rv = g_inet_socket_address_new_from_string(address, guint(port))
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GInetSocketAddress` for `address` and `port`.
    /// 
    /// If `address` is an IPv6 address, it can also contain a scope ID
    /// (separated from the address by a ````).
    @inlinable public static func newFrom(string address: UnsafePointer<CChar>!, port: Int) -> SocketAddress! {
        guard let rv = SocketAddress(gconstpointer: gconstpointer(g_inet_socket_address_new_from_string(address, guint(port)))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum InetSocketAddressPropertyName: String, PropertyNameProtocol {
    case address = "address"
    case family = "family"
    /// The `sin6_flowinfo` field, for IPv6 addresses.
    case flowinfo = "flowinfo"
    case port = "port"
    case scopeID = "scope-id"
}

public extension InetSocketAddressProtocol {
    /// Bind a `InetSocketAddressPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: InetSocketAddressPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a InetSocketAddress property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: InetSocketAddressPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a InetSocketAddress property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: InetSocketAddressPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum InetSocketAddressSignalName: String, SignalNameProtocol {
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
    case notifyAddress = "notify::address"
    case notifyFamily = "notify::family"
    /// The `sin6_flowinfo` field, for IPv6 addresses.
    case notifyFlowinfo = "notify::flowinfo"
    case notifyPort = "notify::port"
    case notifyScopeID = "notify::scope-id"
}

// MARK: InetSocketAddress has no signals
// MARK: InetSocketAddress Class: InetSocketAddressProtocol extension (methods and fields)
public extension InetSocketAddressProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GInetSocketAddress` instance.
    @inlinable var inet_socket_address_ptr: UnsafeMutablePointer<GInetSocketAddress>! { return ptr?.assumingMemoryBound(to: GInetSocketAddress.self) }

    /// Gets `address`'s `GInetAddress`.
    @inlinable func getAddress() -> InetAddressRef! {
        let rv = InetAddressRef(gconstpointer: gconstpointer(g_inet_socket_address_get_address(inet_socket_address_ptr)))
        return rv
    }

    /// Gets the `sin6_flowinfo` field from `address`,
    /// which must be an IPv6 address.
    @inlinable func getFlowinfo() -> guint32 {
        let rv = g_inet_socket_address_get_flowinfo(inet_socket_address_ptr)
        return rv
    }

    /// Gets `address`'s port.
    @inlinable func getPort() -> guint16 {
        let rv = g_inet_socket_address_get_port(inet_socket_address_ptr)
        return rv
    }

    /// Gets the `sin6_scope_id` field from `address`,
    /// which must be an IPv6 address.
    @inlinable func getScopeID() -> guint32 {
        let rv = g_inet_socket_address_get_scope_id(inet_socket_address_ptr)
        return rv
    }
    @inlinable var address: InetAddressRef! {
        /// Gets `address`'s `GInetAddress`.
        get {
            let rv = InetAddressRef(gconstpointer: gconstpointer(g_inet_socket_address_get_address(inet_socket_address_ptr)))
            return rv
        }
    }

    /// The `sin6_flowinfo` field, for IPv6 addresses.
    @inlinable var flowinfo: guint32 {
        /// Gets the `sin6_flowinfo` field from `address`,
        /// which must be an IPv6 address.
        get {
            let rv = g_inet_socket_address_get_flowinfo(inet_socket_address_ptr)
            return rv
        }
    }

    @inlinable var port: guint16 {
        /// Gets `address`'s port.
        get {
            let rv = g_inet_socket_address_get_port(inet_socket_address_ptr)
            return rv
        }
    }

    /// Gets the `sin6_scope_id` field from `address`,
    /// which must be an IPv6 address.
    @inlinable var scopeID: guint32 {
        /// Gets the `sin6_scope_id` field from `address`,
        /// which must be an IPv6 address.
        get {
            let rv = g_inet_socket_address_get_scope_id(inet_socket_address_ptr)
            return rv
        }
    }

    @inlinable var parentInstance: GSocketAddress {
        get {
            let rv = inet_socket_address_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - InputStream Class

/// `GInputStream` has functions to read from a stream (`g_input_stream_read()`),
/// to close a stream (`g_input_stream_close()`) and to skip some content
/// (`g_input_stream_skip()`).
/// 
/// To copy the content of an input stream to an output stream without
/// manually handling the reads and writes, use `g_output_stream_splice()`.
/// 
/// See the documentation for `GIOStream` for details of thread safety of
/// streaming APIs.
/// 
/// All of these functions have async variants too.
///
/// The `InputStreamProtocol` protocol exposes the methods and properties of an underlying `GInputStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InputStream`.
/// Alternatively, use `InputStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol InputStreamProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GInputStream` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GInputStream` instance.
    var input_stream_ptr: UnsafeMutablePointer<GInputStream>! { get }

    /// Required Initialiser for types conforming to `InputStreamProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GInputStream` has functions to read from a stream (`g_input_stream_read()`),
/// to close a stream (`g_input_stream_close()`) and to skip some content
/// (`g_input_stream_skip()`).
/// 
/// To copy the content of an input stream to an output stream without
/// manually handling the reads and writes, use `g_output_stream_splice()`.
/// 
/// See the documentation for `GIOStream` for details of thread safety of
/// streaming APIs.
/// 
/// All of these functions have async variants too.
///
/// The `InputStreamRef` type acts as a lightweight Swift reference to an underlying `GInputStream` instance.
/// It exposes methods that can operate on this data type through `InputStreamProtocol` conformance.
/// Use `InputStreamRef` only as an `unowned` reference to an existing `GInputStream` instance.
///
public struct InputStreamRef: InputStreamProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GInputStream` instance.
    /// For type-safe access, use the generated, typed pointer `input_stream_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension InputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GInputStream>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GInputStream>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GInputStream>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GInputStream>?) {
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

    /// Reference intialiser for a related type that implements `InputStreamProtocol`
    @inlinable init<T: InputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: InputStreamProtocol>(_ other: T) -> InputStreamRef { InputStreamRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// `GInputStream` has functions to read from a stream (`g_input_stream_read()`),
/// to close a stream (`g_input_stream_close()`) and to skip some content
/// (`g_input_stream_skip()`).
/// 
/// To copy the content of an input stream to an output stream without
/// manually handling the reads and writes, use `g_output_stream_splice()`.
/// 
/// See the documentation for `GIOStream` for details of thread safety of
/// streaming APIs.
/// 
/// All of these functions have async variants too.
///
/// The `InputStream` type acts as a reference-counted owner of an underlying `GInputStream` instance.
/// It provides the methods that can operate on this data type through `InputStreamProtocol` conformance.
/// Use `InputStream` as a strong reference or owner of a `GInputStream` instance.
///
open class InputStream: GLibObject.Object, InputStreamProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GInputStream>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GInputStream>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InputStream` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GInputStream>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GInputStream>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GInputStream`.
    /// i.e., ownership is transferred to the `InputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GInputStream>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `InputStreamProtocol`
    /// Will retain `GInputStream`.
    /// - Parameter other: an instance of a related type that implements `InputStreamProtocol`
    @inlinable public init<T: InputStreamProtocol>(inputStream other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no InputStream properties

public enum InputStreamSignalName: String, SignalNameProtocol {
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

// MARK: InputStream has no signals
// MARK: InputStream Class: InputStreamProtocol extension (methods and fields)
public extension InputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GInputStream` instance.
    @inlinable var input_stream_ptr: UnsafeMutablePointer<GInputStream>! { return ptr?.assumingMemoryBound(to: GInputStream.self) }

    /// Clears the pending flag on `stream`.
    @inlinable func clearPending() {
        g_input_stream_clear_pending(input_stream_ptr)
    
    }

    /// Closes the stream, releasing resources related to it.
    /// 
    /// Once the stream is closed, all other operations will return `G_IO_ERROR_CLOSED`.
    /// Closing a stream multiple times will not return an error.
    /// 
    /// Streams will be automatically closed when the last reference
    /// is dropped, but you might want to call this function to make sure
    /// resources are released as early as possible.
    /// 
    /// Some streams might keep the backing store of the stream (e.g. a file descriptor)
    /// open after the stream is closed. See the documentation for the individual
    /// stream for details.
    /// 
    /// On failure the first error that happened will be reported, but the close
    /// operation will finish as much as possible. A stream that failed to
    /// close will still return `G_IO_ERROR_CLOSED` for all operations. Still, it
    /// is important to check and report the error to the user.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    /// Cancelling a close will still leave the stream closed, but some streams
    /// can use a faster close that doesn't block to e.g. check errors.
    @inlinable func close(cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_input_stream_close(input_stream_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Closes the stream, releasing resources related to it.
    /// 
    /// Once the stream is closed, all other operations will return `G_IO_ERROR_CLOSED`.
    /// Closing a stream multiple times will not return an error.
    /// 
    /// Streams will be automatically closed when the last reference
    /// is dropped, but you might want to call this function to make sure
    /// resources are released as early as possible.
    /// 
    /// Some streams might keep the backing store of the stream (e.g. a file descriptor)
    /// open after the stream is closed. See the documentation for the individual
    /// stream for details.
    /// 
    /// On failure the first error that happened will be reported, but the close
    /// operation will finish as much as possible. A stream that failed to
    /// close will still return `G_IO_ERROR_CLOSED` for all operations. Still, it
    /// is important to check and report the error to the user.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    /// Cancelling a close will still leave the stream closed, but some streams
    /// can use a faster close that doesn't block to e.g. check errors.
    @inlinable func close<CancellableT: CancellableProtocol>(cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_input_stream_close(input_stream_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Requests an asynchronous closes of the stream, releasing resources related to it.
    /// When the operation is finished `callback` will be called.
    /// You can then call `g_input_stream_close_finish()` to get the result of the
    /// operation.
    /// 
    /// For behaviour details see `g_input_stream_close()`.
    /// 
    /// The asynchronous methods have a default fallback that uses threads to implement
    /// asynchronicity, so they are optional for inheriting classes. However, if you
    /// override one you must override all.
    @inlinable func closeAsync(ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_input_stream_close_async(input_stream_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Requests an asynchronous closes of the stream, releasing resources related to it.
    /// When the operation is finished `callback` will be called.
    /// You can then call `g_input_stream_close_finish()` to get the result of the
    /// operation.
    /// 
    /// For behaviour details see `g_input_stream_close()`.
    /// 
    /// The asynchronous methods have a default fallback that uses threads to implement
    /// asynchronicity, so they are optional for inheriting classes. However, if you
    /// override one you must override all.
    @inlinable func closeAsync<CancellableT: CancellableProtocol>(ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_input_stream_close_async(input_stream_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes closing a stream asynchronously, started from `g_input_stream_close_async()`.
    @inlinable func closeFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_input_stream_close_finish(input_stream_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Checks if an input stream has pending actions.
    @inlinable func hasPending() -> Bool {
        let rv = ((g_input_stream_has_pending(input_stream_ptr)) != 0)
        return rv
    }

    /// Tries to read `count` bytes from the stream into the buffer starting at
    /// `buffer`. Will block during this read.
    /// 
    /// If count is zero returns zero and does nothing. A value of `count`
    /// larger than `G_MAXSSIZE` will cause a `G_IO_ERROR_INVALID_ARGUMENT` error.
    /// 
    /// On success, the number of bytes read into the buffer is returned.
    /// It is not an error if this is not the same as the requested size, as it
    /// can happen e.g. near the end of a file. Zero is returned on end of file
    /// (or if `count` is zero),  but never otherwise.
    /// 
    /// The returned `buffer` is not a nul-terminated string, it can contain nul bytes
    /// at any position, and this function doesn't nul-terminate the `buffer`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned. If an
    /// operation was partially finished when the operation was cancelled the
    /// partial result will be returned, without an error.
    /// 
    /// On error -1 is returned and `error` is set accordingly.
    @inlinable func read(buffer: UnsafeMutableRawPointer!, count: Int, cancellable: CancellableRef? = nil) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_input_stream_read(input_stream_ptr, buffer, gsize(count), cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Tries to read `count` bytes from the stream into the buffer starting at
    /// `buffer`. Will block during this read.
    /// 
    /// If count is zero returns zero and does nothing. A value of `count`
    /// larger than `G_MAXSSIZE` will cause a `G_IO_ERROR_INVALID_ARGUMENT` error.
    /// 
    /// On success, the number of bytes read into the buffer is returned.
    /// It is not an error if this is not the same as the requested size, as it
    /// can happen e.g. near the end of a file. Zero is returned on end of file
    /// (or if `count` is zero),  but never otherwise.
    /// 
    /// The returned `buffer` is not a nul-terminated string, it can contain nul bytes
    /// at any position, and this function doesn't nul-terminate the `buffer`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned. If an
    /// operation was partially finished when the operation was cancelled the
    /// partial result will be returned, without an error.
    /// 
    /// On error -1 is returned and `error` is set accordingly.
    @inlinable func read<CancellableT: CancellableProtocol>(buffer: UnsafeMutableRawPointer!, count: Int, cancellable: CancellableT?) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_input_stream_read(input_stream_ptr, buffer, gsize(count), cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Tries to read `count` bytes from the stream into the buffer starting at
    /// `buffer`. Will block during this read.
    /// 
    /// This function is similar to `g_input_stream_read()`, except it tries to
    /// read as many bytes as requested, only stopping on an error or end of stream.
    /// 
    /// On a successful read of `count` bytes, or if we reached the end of the
    /// stream,  `true` is returned, and `bytes_read` is set to the number of bytes
    /// read into `buffer`.
    /// 
    /// If there is an error during the operation `false` is returned and `error`
    /// is set to indicate the error status.
    /// 
    /// As a special exception to the normal conventions for functions that
    /// use `GError`, if this function returns `false` (and sets `error`) then
    /// `bytes_read` will be set to the number of bytes that were successfully
    /// read before the error was encountered.  This functionality is only
    /// available from C.  If you need it from another language then you must
    /// write your own loop around `g_input_stream_read()`.
    @inlinable func readAll(buffer: UnsafeMutableRawPointer!, count: Int, bytesRead: UnsafeMutablePointer<gsize>!, cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_input_stream_read_all(input_stream_ptr, buffer, gsize(count), bytesRead, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Tries to read `count` bytes from the stream into the buffer starting at
    /// `buffer`. Will block during this read.
    /// 
    /// This function is similar to `g_input_stream_read()`, except it tries to
    /// read as many bytes as requested, only stopping on an error or end of stream.
    /// 
    /// On a successful read of `count` bytes, or if we reached the end of the
    /// stream,  `true` is returned, and `bytes_read` is set to the number of bytes
    /// read into `buffer`.
    /// 
    /// If there is an error during the operation `false` is returned and `error`
    /// is set to indicate the error status.
    /// 
    /// As a special exception to the normal conventions for functions that
    /// use `GError`, if this function returns `false` (and sets `error`) then
    /// `bytes_read` will be set to the number of bytes that were successfully
    /// read before the error was encountered.  This functionality is only
    /// available from C.  If you need it from another language then you must
    /// write your own loop around `g_input_stream_read()`.
    @inlinable func readAll<CancellableT: CancellableProtocol>(buffer: UnsafeMutableRawPointer!, count: Int, bytesRead: UnsafeMutablePointer<gsize>!, cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_input_stream_read_all(input_stream_ptr, buffer, gsize(count), bytesRead, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Request an asynchronous read of `count` bytes from the stream into the
    /// buffer starting at `buffer`.
    /// 
    /// This is the asynchronous equivalent of `g_input_stream_read_all()`.
    /// 
    /// Call `g_input_stream_read_all_finish()` to collect the result.
    /// 
    /// Any outstanding I/O request with higher priority (lower numerical
    /// value) will be executed before an outstanding request with lower
    /// priority. Default priority is `G_PRIORITY_DEFAULT`.
    @inlinable func readAllAsync(buffer: UnsafeMutableRawPointer!, count: Int, ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_input_stream_read_all_async(input_stream_ptr, buffer, gsize(count), gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Request an asynchronous read of `count` bytes from the stream into the
    /// buffer starting at `buffer`.
    /// 
    /// This is the asynchronous equivalent of `g_input_stream_read_all()`.
    /// 
    /// Call `g_input_stream_read_all_finish()` to collect the result.
    /// 
    /// Any outstanding I/O request with higher priority (lower numerical
    /// value) will be executed before an outstanding request with lower
    /// priority. Default priority is `G_PRIORITY_DEFAULT`.
    @inlinable func readAllAsync<CancellableT: CancellableProtocol>(buffer: UnsafeMutableRawPointer!, count: Int, ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_input_stream_read_all_async(input_stream_ptr, buffer, gsize(count), gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an asynchronous stream read operation started with
    /// `g_input_stream_read_all_async()`.
    /// 
    /// As a special exception to the normal conventions for functions that
    /// use `GError`, if this function returns `false` (and sets `error`) then
    /// `bytes_read` will be set to the number of bytes that were successfully
    /// read before the error was encountered.  This functionality is only
    /// available from C.  If you need it from another language then you must
    /// write your own loop around `g_input_stream_read_async()`.
    @inlinable func readAllFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT, bytesRead: UnsafeMutablePointer<gsize>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_input_stream_read_all_finish(input_stream_ptr, result.async_result_ptr, bytesRead, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Request an asynchronous read of `count` bytes from the stream into the buffer
    /// starting at `buffer`. When the operation is finished `callback` will be called.
    /// You can then call `g_input_stream_read_finish()` to get the result of the
    /// operation.
    /// 
    /// During an async request no other sync and async calls are allowed on `stream`, and will
    /// result in `G_IO_ERROR_PENDING` errors.
    /// 
    /// A value of `count` larger than `G_MAXSSIZE` will cause a `G_IO_ERROR_INVALID_ARGUMENT` error.
    /// 
    /// On success, the number of bytes read into the buffer will be passed to the
    /// callback. It is not an error if this is not the same as the requested size, as it
    /// can happen e.g. near the end of a file, but generally we try to read
    /// as many bytes as requested. Zero is returned on end of file
    /// (or if `count` is zero),  but never otherwise.
    /// 
    /// Any outstanding i/o request with higher priority (lower numerical value) will
    /// be executed before an outstanding request with lower priority. Default
    /// priority is `G_PRIORITY_DEFAULT`.
    /// 
    /// The asynchronous methods have a default fallback that uses threads to implement
    /// asynchronicity, so they are optional for inheriting classes. However, if you
    /// override one you must override all.
    @inlinable func readAsync(buffer: UnsafeMutableRawPointer!, count: Int, ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_input_stream_read_async(input_stream_ptr, buffer, gsize(count), gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Request an asynchronous read of `count` bytes from the stream into the buffer
    /// starting at `buffer`. When the operation is finished `callback` will be called.
    /// You can then call `g_input_stream_read_finish()` to get the result of the
    /// operation.
    /// 
    /// During an async request no other sync and async calls are allowed on `stream`, and will
    /// result in `G_IO_ERROR_PENDING` errors.
    /// 
    /// A value of `count` larger than `G_MAXSSIZE` will cause a `G_IO_ERROR_INVALID_ARGUMENT` error.
    /// 
    /// On success, the number of bytes read into the buffer will be passed to the
    /// callback. It is not an error if this is not the same as the requested size, as it
    /// can happen e.g. near the end of a file, but generally we try to read
    /// as many bytes as requested. Zero is returned on end of file
    /// (or if `count` is zero),  but never otherwise.
    /// 
    /// Any outstanding i/o request with higher priority (lower numerical value) will
    /// be executed before an outstanding request with lower priority. Default
    /// priority is `G_PRIORITY_DEFAULT`.
    /// 
    /// The asynchronous methods have a default fallback that uses threads to implement
    /// asynchronicity, so they are optional for inheriting classes. However, if you
    /// override one you must override all.
    @inlinable func readAsync<CancellableT: CancellableProtocol>(buffer: UnsafeMutableRawPointer!, count: Int, ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_input_stream_read_async(input_stream_ptr, buffer, gsize(count), gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Like `g_input_stream_read()`, this tries to read `count` bytes from
    /// the stream in a blocking fashion. However, rather than reading into
    /// a user-supplied buffer, this will create a new `GBytes` containing
    /// the data that was read. This may be easier to use from language
    /// bindings.
    /// 
    /// If count is zero, returns a zero-length `GBytes` and does nothing. A
    /// value of `count` larger than `G_MAXSSIZE` will cause a
    /// `G_IO_ERROR_INVALID_ARGUMENT` error.
    /// 
    /// On success, a new `GBytes` is returned. It is not an error if the
    /// size of this object is not the same as the requested size, as it
    /// can happen e.g. near the end of a file. A zero-length `GBytes` is
    /// returned on end of file (or if `count` is zero), but never
    /// otherwise.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned. If an
    /// operation was partially finished when the operation was cancelled the
    /// partial result will be returned, without an error.
    /// 
    /// On error `nil` is returned and `error` is set accordingly.
    @inlinable func readBytes(count: Int, cancellable: CancellableRef? = nil) throws -> GLib.BytesRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = GLib.BytesRef(g_input_stream_read_bytes(input_stream_ptr, gsize(count), cancellable?.cancellable_ptr, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Like `g_input_stream_read()`, this tries to read `count` bytes from
    /// the stream in a blocking fashion. However, rather than reading into
    /// a user-supplied buffer, this will create a new `GBytes` containing
    /// the data that was read. This may be easier to use from language
    /// bindings.
    /// 
    /// If count is zero, returns a zero-length `GBytes` and does nothing. A
    /// value of `count` larger than `G_MAXSSIZE` will cause a
    /// `G_IO_ERROR_INVALID_ARGUMENT` error.
    /// 
    /// On success, a new `GBytes` is returned. It is not an error if the
    /// size of this object is not the same as the requested size, as it
    /// can happen e.g. near the end of a file. A zero-length `GBytes` is
    /// returned on end of file (or if `count` is zero), but never
    /// otherwise.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned. If an
    /// operation was partially finished when the operation was cancelled the
    /// partial result will be returned, without an error.
    /// 
    /// On error `nil` is returned and `error` is set accordingly.
    @inlinable func readBytes<CancellableT: CancellableProtocol>(count: Int, cancellable: CancellableT?) throws -> GLib.BytesRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = GLib.BytesRef(g_input_stream_read_bytes(input_stream_ptr, gsize(count), cancellable?.cancellable_ptr, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Request an asynchronous read of `count` bytes from the stream into a
    /// new `GBytes`. When the operation is finished `callback` will be
    /// called. You can then call `g_input_stream_read_bytes_finish()` to get the
    /// result of the operation.
    /// 
    /// During an async request no other sync and async calls are allowed
    /// on `stream`, and will result in `G_IO_ERROR_PENDING` errors.
    /// 
    /// A value of `count` larger than `G_MAXSSIZE` will cause a
    /// `G_IO_ERROR_INVALID_ARGUMENT` error.
    /// 
    /// On success, the new `GBytes` will be passed to the callback. It is
    /// not an error if this is smaller than the requested size, as it can
    /// happen e.g. near the end of a file, but generally we try to read as
    /// many bytes as requested. Zero is returned on end of file (or if
    /// `count` is zero), but never otherwise.
    /// 
    /// Any outstanding I/O request with higher priority (lower numerical
    /// value) will be executed before an outstanding request with lower
    /// priority. Default priority is `G_PRIORITY_DEFAULT`.
    @inlinable func readBytesAsync(count: Int, ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_input_stream_read_bytes_async(input_stream_ptr, gsize(count), gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Request an asynchronous read of `count` bytes from the stream into a
    /// new `GBytes`. When the operation is finished `callback` will be
    /// called. You can then call `g_input_stream_read_bytes_finish()` to get the
    /// result of the operation.
    /// 
    /// During an async request no other sync and async calls are allowed
    /// on `stream`, and will result in `G_IO_ERROR_PENDING` errors.
    /// 
    /// A value of `count` larger than `G_MAXSSIZE` will cause a
    /// `G_IO_ERROR_INVALID_ARGUMENT` error.
    /// 
    /// On success, the new `GBytes` will be passed to the callback. It is
    /// not an error if this is smaller than the requested size, as it can
    /// happen e.g. near the end of a file, but generally we try to read as
    /// many bytes as requested. Zero is returned on end of file (or if
    /// `count` is zero), but never otherwise.
    /// 
    /// Any outstanding I/O request with higher priority (lower numerical
    /// value) will be executed before an outstanding request with lower
    /// priority. Default priority is `G_PRIORITY_DEFAULT`.
    @inlinable func readBytesAsync<CancellableT: CancellableProtocol>(count: Int, ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_input_stream_read_bytes_async(input_stream_ptr, gsize(count), gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an asynchronous stream read-into-`GBytes` operation.
    @inlinable func readBytesFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> GLib.BytesRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = GLib.BytesRef(g_input_stream_read_bytes_finish(input_stream_ptr, result.async_result_ptr, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Finishes an asynchronous stream read operation.
    @inlinable func readFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_input_stream_read_finish(input_stream_ptr, result.async_result_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Sets `stream` to have actions pending. If the pending flag is
    /// already set or `stream` is closed, it will return `false` and set
    /// `error`.
    @inlinable func setPending() throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_input_stream_set_pending(input_stream_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Tries to skip `count` bytes from the stream. Will block during the operation.
    /// 
    /// This is identical to `g_input_stream_read()`, from a behaviour standpoint,
    /// but the bytes that are skipped are not returned to the user. Some
    /// streams have an implementation that is more efficient than reading the data.
    /// 
    /// This function is optional for inherited classes, as the default implementation
    /// emulates it using read.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned. If an
    /// operation was partially finished when the operation was cancelled the
    /// partial result will be returned, without an error.
    @inlinable func skip(count: Int, cancellable: CancellableRef? = nil) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_input_stream_skip(input_stream_ptr, gsize(count), cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Tries to skip `count` bytes from the stream. Will block during the operation.
    /// 
    /// This is identical to `g_input_stream_read()`, from a behaviour standpoint,
    /// but the bytes that are skipped are not returned to the user. Some
    /// streams have an implementation that is more efficient than reading the data.
    /// 
    /// This function is optional for inherited classes, as the default implementation
    /// emulates it using read.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned. If an
    /// operation was partially finished when the operation was cancelled the
    /// partial result will be returned, without an error.
    @inlinable func skip<CancellableT: CancellableProtocol>(count: Int, cancellable: CancellableT?) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_input_stream_skip(input_stream_ptr, gsize(count), cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Request an asynchronous skip of `count` bytes from the stream.
    /// When the operation is finished `callback` will be called.
    /// You can then call `g_input_stream_skip_finish()` to get the result
    /// of the operation.
    /// 
    /// During an async request no other sync and async calls are allowed,
    /// and will result in `G_IO_ERROR_PENDING` errors.
    /// 
    /// A value of `count` larger than `G_MAXSSIZE` will cause a `G_IO_ERROR_INVALID_ARGUMENT` error.
    /// 
    /// On success, the number of bytes skipped will be passed to the callback.
    /// It is not an error if this is not the same as the requested size, as it
    /// can happen e.g. near the end of a file, but generally we try to skip
    /// as many bytes as requested. Zero is returned on end of file
    /// (or if `count` is zero), but never otherwise.
    /// 
    /// Any outstanding i/o request with higher priority (lower numerical value)
    /// will be executed before an outstanding request with lower priority.
    /// Default priority is `G_PRIORITY_DEFAULT`.
    /// 
    /// The asynchronous methods have a default fallback that uses threads to
    /// implement asynchronicity, so they are optional for inheriting classes.
    /// However, if you override one, you must override all.
    @inlinable func skipAsync(count: Int, ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_input_stream_skip_async(input_stream_ptr, gsize(count), gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Request an asynchronous skip of `count` bytes from the stream.
    /// When the operation is finished `callback` will be called.
    /// You can then call `g_input_stream_skip_finish()` to get the result
    /// of the operation.
    /// 
    /// During an async request no other sync and async calls are allowed,
    /// and will result in `G_IO_ERROR_PENDING` errors.
    /// 
    /// A value of `count` larger than `G_MAXSSIZE` will cause a `G_IO_ERROR_INVALID_ARGUMENT` error.
    /// 
    /// On success, the number of bytes skipped will be passed to the callback.
    /// It is not an error if this is not the same as the requested size, as it
    /// can happen e.g. near the end of a file, but generally we try to skip
    /// as many bytes as requested. Zero is returned on end of file
    /// (or if `count` is zero), but never otherwise.
    /// 
    /// Any outstanding i/o request with higher priority (lower numerical value)
    /// will be executed before an outstanding request with lower priority.
    /// Default priority is `G_PRIORITY_DEFAULT`.
    /// 
    /// The asynchronous methods have a default fallback that uses threads to
    /// implement asynchronicity, so they are optional for inheriting classes.
    /// However, if you override one, you must override all.
    @inlinable func skipAsync<CancellableT: CancellableProtocol>(count: Int, ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_input_stream_skip_async(input_stream_ptr, gsize(count), gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes a stream skip operation.
    @inlinable func skipFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_input_stream_skip_finish(input_stream_ptr, result.async_result_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Tries to read from `stream`, as with `g_input_stream_read()` (if
    /// `blocking` is `true`) or `g_pollable_input_stream_read_nonblocking()`
    /// (if `blocking` is `false`). This can be used to more easily share
    /// code between blocking and non-blocking implementations of a method.
    /// 
    /// If `blocking` is `false`, then `stream` must be a
    /// `GPollableInputStream` for which `g_pollable_input_stream_can_poll()`
    /// returns `true`, or else the behavior is undefined. If `blocking` is
    /// `true`, then `stream` does not need to be a `GPollableInputStream`.
    @inlinable func pollableStreamRead(buffer: UnsafeMutableRawPointer!, count: Int, blocking: Bool, cancellable: CancellableRef? = nil) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_pollable_stream_read(input_stream_ptr, buffer, gsize(count), gboolean((blocking) ? 1 : 0), cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Tries to read from `stream`, as with `g_input_stream_read()` (if
    /// `blocking` is `true`) or `g_pollable_input_stream_read_nonblocking()`
    /// (if `blocking` is `false`). This can be used to more easily share
    /// code between blocking and non-blocking implementations of a method.
    /// 
    /// If `blocking` is `false`, then `stream` must be a
    /// `GPollableInputStream` for which `g_pollable_input_stream_can_poll()`
    /// returns `true`, or else the behavior is undefined. If `blocking` is
    /// `true`, then `stream` does not need to be a `GPollableInputStream`.
    @inlinable func pollableStreamRead<CancellableT: CancellableProtocol>(buffer: UnsafeMutableRawPointer!, count: Int, blocking: Bool, cancellable: CancellableT?) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_pollable_stream_read(input_stream_ptr, buffer, gsize(count), gboolean((blocking) ? 1 : 0), cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Checks if an input stream is closed.
    @inlinable var isClosed: Bool {
        /// Checks if an input stream is closed.
        get {
            let rv = ((g_input_stream_is_closed(input_stream_ptr)) != 0)
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = input_stream_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - ListStore Class

/// `GListStore` is a simple implementation of `GListModel` that stores all
/// items in memory.
/// 
/// It provides insertions, deletions, and lookups in logarithmic time
/// with a fast path for the common case of iterating the list linearly.
///
/// The `ListStoreProtocol` protocol exposes the methods and properties of an underlying `GListStore` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListStore`.
/// Alternatively, use `ListStoreRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ListStoreProtocol: GLibObject.ObjectProtocol, ListModelProtocol {
        /// Untyped pointer to the underlying `GListStore` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GListStore` instance.
    var list_store_ptr: UnsafeMutablePointer<GListStore>! { get }

    /// Required Initialiser for types conforming to `ListStoreProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GListStore` is a simple implementation of `GListModel` that stores all
/// items in memory.
/// 
/// It provides insertions, deletions, and lookups in logarithmic time
/// with a fast path for the common case of iterating the list linearly.
///
/// The `ListStoreRef` type acts as a lightweight Swift reference to an underlying `GListStore` instance.
/// It exposes methods that can operate on this data type through `ListStoreProtocol` conformance.
/// Use `ListStoreRef` only as an `unowned` reference to an existing `GListStore` instance.
///
public struct ListStoreRef: ListStoreProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GListStore` instance.
    /// For type-safe access, use the generated, typed pointer `list_store_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ListStoreRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GListStore>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GListStore>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GListStore>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GListStore>?) {
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

    /// Reference intialiser for a related type that implements `ListStoreProtocol`
    @inlinable init<T: ListStoreProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ListStoreProtocol>(_ other: T) -> ListStoreRef { ListStoreRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GListStore` with items of type `item_type`. `item_type`
    /// must be a subclass of `GObject`.
    @inlinable init( itemType: GType) {
        let rv = g_list_store_new(itemType)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// `GListStore` is a simple implementation of `GListModel` that stores all
/// items in memory.
/// 
/// It provides insertions, deletions, and lookups in logarithmic time
/// with a fast path for the common case of iterating the list linearly.
///
/// The `ListStore` type acts as a reference-counted owner of an underlying `GListStore` instance.
/// It provides the methods that can operate on this data type through `ListStoreProtocol` conformance.
/// Use `ListStore` as a strong reference or owner of a `GListStore` instance.
///
open class ListStore: GLibObject.Object, ListStoreProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListStore` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GListStore>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListStore` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GListStore>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListStore` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListStore` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListStore` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GListStore>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListStore` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GListStore>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GListStore`.
    /// i.e., ownership is transferred to the `ListStore` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GListStore>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ListStoreProtocol`
    /// Will retain `GListStore`.
    /// - Parameter other: an instance of a related type that implements `ListStoreProtocol`
    @inlinable public init<T: ListStoreProtocol>(listStore other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GListStore` with items of type `item_type`. `item_type`
    /// must be a subclass of `GObject`.
    @inlinable public init( itemType: GType) {
        let rv = g_list_store_new(itemType)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum ListStorePropertyName: String, PropertyNameProtocol {
    /// The type of items contained in this list store. Items must be
    /// subclasses of `GObject`.
    case itemType = "item-type"
}

public extension ListStoreProtocol {
    /// Bind a `ListStorePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ListStorePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a ListStore property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ListStorePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a ListStore property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ListStorePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum ListStoreSignalName: String, SignalNameProtocol {
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
    /// The type of items contained in this list store. Items must be
    /// subclasses of `GObject`.
    case notifyItemType = "notify::item-type"
}

// MARK: ListStore has no signals
// MARK: ListStore Class: ListStoreProtocol extension (methods and fields)
public extension ListStoreProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GListStore` instance.
    @inlinable var list_store_ptr: UnsafeMutablePointer<GListStore>! { return ptr?.assumingMemoryBound(to: GListStore.self) }

    /// Appends `item` to `store`. `item` must be of type `GListStore:item-type`.
    /// 
    /// This function takes a ref on `item`.
    /// 
    /// Use `g_list_store_splice()` to append multiple items at the same time
    /// efficiently.
    @inlinable func append<ObjectT: GLibObject.ObjectProtocol>(item: ObjectT) {
        g_list_store_append(list_store_ptr, item.object_ptr)
    
    }

    /// Looks up the given `item` in the list store by looping over the items until
    /// the first occurrence of `item`. If `item` was not found, then `position` will
    /// not be set, and this method will return `false`.
    /// 
    /// If you need to compare the two items with a custom comparison function, use
    /// `g_list_store_find_with_equal_func()` with a custom `GEqualFunc` instead.
    @inlinable func find<ObjectT: GLibObject.ObjectProtocol>(item: ObjectT, position: UnsafeMutablePointer<guint>! = nil) -> Bool {
        let rv = ((g_list_store_find(list_store_ptr, item.object_ptr, position)) != 0)
        return rv
    }

    /// Looks up the given `item` in the list store by looping over the items and
    /// comparing them with `compare_func` until the first occurrence of `item` which
    /// matches. If `item` was not found, then `position` will not be set, and this
    /// method will return `false`.
    @inlinable func findWithEqualFunc<ObjectT: GLibObject.ObjectProtocol>(item: ObjectT, equalFunc: GEqualFunc?, position: UnsafeMutablePointer<guint>! = nil) -> Bool {
        let rv = ((g_list_store_find_with_equal_func(list_store_ptr, item.object_ptr, equalFunc, position)) != 0)
        return rv
    }

    /// Inserts `item` into `store` at `position`. `item` must be of type
    /// `GListStore:item-type` or derived from it. `position` must be smaller
    /// than the length of the list, or equal to it to append.
    /// 
    /// This function takes a ref on `item`.
    /// 
    /// Use `g_list_store_splice()` to insert multiple items at the same time
    /// efficiently.
    @inlinable func insert<ObjectT: GLibObject.ObjectProtocol>(position: Int, item: ObjectT) {
        g_list_store_insert(list_store_ptr, guint(position), item.object_ptr)
    
    }

    /// Inserts `item` into `store` at a position to be determined by the
    /// `compare_func`.
    /// 
    /// The list must already be sorted before calling this function or the
    /// result is undefined.  Usually you would approach this by only ever
    /// inserting items by way of this function.
    /// 
    /// This function takes a ref on `item`.
    @inlinable func insertSorted<ObjectT: GLibObject.ObjectProtocol>(item: ObjectT, compareFunc: GCompareDataFunc?, userData: gpointer! = nil) -> Int {
        let rv = Int(g_list_store_insert_sorted(list_store_ptr, item.object_ptr, compareFunc, userData))
        return rv
    }

    /// Removes the item from `store` that is at `position`. `position` must be
    /// smaller than the current length of the list.
    /// 
    /// Use `g_list_store_splice()` to remove multiple items at the same time
    /// efficiently.
    @inlinable func remove(position: Int) {
        g_list_store_remove(list_store_ptr, guint(position))
    
    }

    /// Removes all items from `store`.
    @inlinable func removeAll() {
        g_list_store_remove_all(list_store_ptr)
    
    }

    /// Sort the items in `store` according to `compare_func`.
    @inlinable func sort(compareFunc: GCompareDataFunc?, userData: gpointer! = nil) {
        g_list_store_sort(list_store_ptr, compareFunc, userData)
    
    }

    /// Changes `store` by removing `n_removals` items and adding `n_additions`
    /// items to it. `additions` must contain `n_additions` items of type
    /// `GListStore:item-type`.  `nil` is not permitted.
    /// 
    /// This function is more efficient than `g_list_store_insert()` and
    /// `g_list_store_remove()`, because it only emits
    /// `GListModel::items-changed` once for the change.
    /// 
    /// This function takes a ref on each item in `additions`.
    /// 
    /// The parameters `position` and `n_removals` must be correct (ie:
    /// `position` + `n_removals` must be less than or equal to the length of
    /// the list at the time this function is called).
    @inlinable func splice(position: Int, nRemovals: Int, additions: UnsafeMutablePointer<gpointer?>!, nAdditions: Int) {
        g_list_store_splice(list_store_ptr, guint(position), guint(nRemovals), additions, guint(nAdditions))
    
    }


}



