import CGLib
import GLib
import GLibObject

// MARK: - IOStream Class

/// The `IOStreamProtocol` protocol exposes the methods and properties of an underlying `GIOStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IOStream`.
/// Alternatively, use `IOStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
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
public protocol IOStreamProtocol: ObjectProtocol {
        /// Untyped pointer to the underlying `GIOStream` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GIOStream` instance.
    var io_stream_ptr: UnsafeMutablePointer<GIOStream> { get }
}

/// The `IOStreamRef` type acts as a lightweight Swift reference to an underlying `GIOStream` instance.
/// It exposes methods that can operate on this data type through `IOStreamProtocol` conformance.
/// Use `IOStreamRef` only as an `unowned` reference to an existing `GIOStream` instance.
///
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
public struct IOStreamRef: IOStreamProtocol {
        /// Untyped pointer to the underlying `GIOStream` instance.
    /// For type-safe access, use the generated, typed pointer `io_stream_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension IOStreamRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GIOStream>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `IOStreamProtocol`
    init<T: IOStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `IOStream` type acts as a reference-counted owner of an underlying `GIOStream` instance.
/// It provides the methods that can operate on this data type through `IOStreamProtocol` conformance.
/// Use `IOStream` as a strong reference or owner of a `GIOStream` instance.
///
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
open class IOStream: Object, IOStreamProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOStream` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GIOStream>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GIOStream`.
    /// i.e., ownership is transferred to the `IOStream` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GIOStream>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `IOStreamProtocol`
    /// Will retain `GIOStream`.
    /// - Parameter other: an instance of a related type that implements `IOStreamProtocol`
    public init<T: IOStreamProtocol>(iOStream other: T) {
        super.init(retaining: cast(other.io_stream_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: IOStreamPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(io_stream_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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
    func get(property: IOStreamPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a IOStream property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func set(property: IOStreamPropertyName, value v: GLibObject.Value) {
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    case notifyClosed = "notify::closed"
    case notifyInputStream = "notify::input-stream"
    case notifyOutputStream = "notify::output-stream"
}

public extension IOStreamProtocol {
    /// Connect a `IOStreamSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: IOStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(io_stream_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

// MARK: IOStream Class: IOStreamProtocol extension (methods and fields)
public extension IOStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GIOStream` instance.
    var io_stream_ptr: UnsafeMutablePointer<GIOStream> { return ptr.assumingMemoryBound(to: GIOStream.self) }

    /// Clears the pending flag on `stream`.
    func clearPending() {
        g_io_stream_clear_pending(cast(io_stream_ptr))
    
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
    func close(cancellable: CancellableProtocol) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_io_stream_close(cast(io_stream_ptr), cast(cancellable.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
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
    func closeAsync(ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_io_stream_close_async(cast(io_stream_ptr), io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Closes a stream.
    func closeFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_io_stream_close_finish(cast(io_stream_ptr), cast(result.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
    }

    /// Gets the input stream for this object. This is used
    /// for reading.
    func getInputStream() -> UnsafeMutablePointer<GInputStream>! {
        let rv: UnsafeMutablePointer<GInputStream>! = cast(g_io_stream_get_input_stream(cast(io_stream_ptr)))
        return cast(rv)
    }

    /// Gets the output stream for this object. This is used for
    /// writing.
    func getOutputStream() -> UnsafeMutablePointer<GOutputStream>! {
        let rv: UnsafeMutablePointer<GOutputStream>! = cast(g_io_stream_get_output_stream(cast(io_stream_ptr)))
        return cast(rv)
    }

    /// Checks if a stream has pending actions.
    func hasPending() -> Bool {
        let rv = g_io_stream_has_pending(cast(io_stream_ptr))
        return Bool(rv != 0)
    }

    /// Sets `stream` to have actions pending. If the pending flag is
    /// already set or `stream` is closed, it will return `false` and set
    /// `error`.
    func setPending() throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_io_stream_set_pending(cast(io_stream_ptr), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
    }

    /// Asyncronously splice the output stream of `stream1` to the input stream of
    /// `stream2`, and splice the output stream of `stream2` to the input stream of
    /// `stream1`.
    /// 
    /// When the operation is finished `callback` will be called.
    /// You can then call `g_io_stream_splice_finish()` to get the
    /// result of the operation.
    func spliceAsync(stream2: IOStreamProtocol, flags: IOStreamSpliceFlags, ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_io_stream_splice_async(cast(io_stream_ptr), cast(stream2.ptr), flags.value, io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Creates a new `GTlsClientConnection` wrapping `base_io_stream` (which
    /// must have pollable input and output streams) which is assumed to
    /// communicate with the server identified by `server_identity`.
    /// 
    /// See the documentation for `GTlsConnection:base`-io-stream for restrictions
    /// on when application code can run operations on the `base_io_stream` after
    /// this function has returned.
    func tlsClientConnectionNew(serverIdentity server_identity: SocketConnectableProtocol) throws -> UnsafeMutablePointer<GIOStream>! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GIOStream>! = cast(g_tls_client_connection_new(cast(io_stream_ptr), cast(server_identity.ptr), &error))
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// Creates a new `GTlsServerConnection` wrapping `base_io_stream` (which
    /// must have pollable input and output streams).
    /// 
    /// See the documentation for `GTlsConnection:base`-io-stream for restrictions
    /// on when application code can run operations on the `base_io_stream` after
    /// this function has returned.
    func tlsServerConnectionNew(certificate: TLSCertificateProtocol) throws -> UnsafeMutablePointer<GIOStream>! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GIOStream>! = cast(g_tls_server_connection_new(cast(io_stream_ptr), cast(certificate.ptr), &error))
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }
    /// Gets the input stream for this object. This is used
    /// for reading.
    var inputStream: UnsafeMutablePointer<GInputStream>! {
        /// Gets the input stream for this object. This is used
        /// for reading.
        get {
            let rv: UnsafeMutablePointer<GInputStream>! = cast(g_io_stream_get_input_stream(cast(io_stream_ptr)))
            return cast(rv)
        }
    }

    /// Checks if a stream is closed.
    var isClosed: Bool {
        /// Checks if a stream is closed.
        get {
            let rv = g_io_stream_is_closed(cast(io_stream_ptr))
            return Bool(rv != 0)
        }
    }

    /// Gets the output stream for this object. This is used for
    /// writing.
    var outputStream: UnsafeMutablePointer<GOutputStream>! {
        /// Gets the output stream for this object. This is used for
        /// writing.
        get {
            let rv: UnsafeMutablePointer<GOutputStream>! = cast(g_io_stream_get_output_stream(cast(io_stream_ptr)))
            return cast(rv)
        }
    }

    var parentInstance: GObject {
        get {
            let rv: GObject = cast(io_stream_ptr.pointee.parent_instance)
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - InetAddress Class

/// The `InetAddressProtocol` protocol exposes the methods and properties of an underlying `GInetAddress` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InetAddress`.
/// Alternatively, use `InetAddressRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
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
public protocol InetAddressProtocol: ObjectProtocol {
        /// Untyped pointer to the underlying `GInetAddress` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GInetAddress` instance.
    var inet_address_ptr: UnsafeMutablePointer<GInetAddress> { get }
}

/// The `InetAddressRef` type acts as a lightweight Swift reference to an underlying `GInetAddress` instance.
/// It exposes methods that can operate on this data type through `InetAddressProtocol` conformance.
/// Use `InetAddressRef` only as an `unowned` reference to an existing `GInetAddress` instance.
///
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
public struct InetAddressRef: InetAddressProtocol {
        /// Untyped pointer to the underlying `GInetAddress` instance.
    /// For type-safe access, use the generated, typed pointer `inet_address_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension InetAddressRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GInetAddress>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `InetAddressProtocol`
    init<T: InetAddressProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a `GInetAddress` for the "any" address (unassigned/"don't
    /// care") for `family`.
    init(any family: SocketFamily) {
        let rv: UnsafeMutablePointer<GInetAddress>! = cast(g_inet_address_new_any(family))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// Creates a new `GInetAddress` from the given `family` and `bytes`.
    /// `bytes` should be 4 bytes for `G_SOCKET_FAMILY_IPV4` and 16 bytes for
    /// `G_SOCKET_FAMILY_IPV6`.
    init(bytes: UnsafePointer<UInt8>, family: SocketFamily) {
        let rv: UnsafeMutablePointer<GInetAddress>! = cast(g_inet_address_new_from_bytes(cast(bytes), family))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// Parses `string` as an IP address and creates a new `GInetAddress`.
    init(string: UnsafePointer<gchar>) {
        let rv: UnsafeMutablePointer<GInetAddress>! = cast(g_inet_address_new_from_string(string))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// Creates a `GInetAddress` for the loopback address for `family`.
    init(loopback family: SocketFamily) {
        let rv: UnsafeMutablePointer<GInetAddress>! = cast(g_inet_address_new_loopback(family))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
    /// Creates a `GInetAddress` for the "any" address (unassigned/"don't
    /// care") for `family`.
    static func new(any family: SocketFamily) -> InetAddressRef! {
        let rv: UnsafeMutablePointer<GInetAddress>! = cast(g_inet_address_new_any(family))
        return rv.map { InetAddressRef(cast($0)) }
    }

    /// Creates a new `GInetAddress` from the given `family` and `bytes`.
    /// `bytes` should be 4 bytes for `G_SOCKET_FAMILY_IPV4` and 16 bytes for
    /// `G_SOCKET_FAMILY_IPV6`.
    static func newFrom(bytes: UnsafePointer<UInt8>, family: SocketFamily) -> InetAddressRef! {
        let rv: UnsafeMutablePointer<GInetAddress>! = cast(g_inet_address_new_from_bytes(cast(bytes), family))
        return rv.map { InetAddressRef(cast($0)) }
    }

    /// Parses `string` as an IP address and creates a new `GInetAddress`.
    static func newFrom(string: UnsafePointer<gchar>) -> InetAddressRef! {
        let rv: UnsafeMutablePointer<GInetAddress>! = cast(g_inet_address_new_from_string(string))
        return rv.map { InetAddressRef(cast($0)) }
    }

    /// Creates a `GInetAddress` for the loopback address for `family`.
    static func new(loopback family: SocketFamily) -> InetAddressRef! {
        let rv: UnsafeMutablePointer<GInetAddress>! = cast(g_inet_address_new_loopback(family))
        return rv.map { InetAddressRef(cast($0)) }
    }
}

/// The `InetAddress` type acts as a reference-counted owner of an underlying `GInetAddress` instance.
/// It provides the methods that can operate on this data type through `InetAddressProtocol` conformance.
/// Use `InetAddress` as a strong reference or owner of a `GInetAddress` instance.
///
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
open class InetAddress: Object, InetAddressProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InetAddress` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GInetAddress>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GInetAddress`.
    /// i.e., ownership is transferred to the `InetAddress` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GInetAddress>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `InetAddressProtocol`
    /// Will retain `GInetAddress`.
    /// - Parameter other: an instance of a related type that implements `InetAddressProtocol`
    public init<T: InetAddressProtocol>(inetAddress other: T) {
        super.init(retaining: cast(other.inet_address_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a `GInetAddress` for the "any" address (unassigned/"don't
    /// care") for `family`.
    public init(any family: SocketFamily) {
        let rv: UnsafeMutablePointer<GInetAddress>! = cast(g_inet_address_new_any(family))
        super.init(cast(rv))
    }

    /// Creates a new `GInetAddress` from the given `family` and `bytes`.
    /// `bytes` should be 4 bytes for `G_SOCKET_FAMILY_IPV4` and 16 bytes for
    /// `G_SOCKET_FAMILY_IPV6`.
    public init(bytes: UnsafePointer<UInt8>, family: SocketFamily) {
        let rv: UnsafeMutablePointer<GInetAddress>! = cast(g_inet_address_new_from_bytes(cast(bytes), family))
        super.init(cast(rv))
    }

    /// Parses `string` as an IP address and creates a new `GInetAddress`.
    public init(string: UnsafePointer<gchar>) {
        let rv: UnsafeMutablePointer<GInetAddress>! = cast(g_inet_address_new_from_string(string))
        super.init(cast(rv))
    }

    /// Creates a `GInetAddress` for the loopback address for `family`.
    public init(loopback family: SocketFamily) {
        let rv: UnsafeMutablePointer<GInetAddress>! = cast(g_inet_address_new_loopback(family))
        super.init(cast(rv))
    }

    /// Creates a `GInetAddress` for the "any" address (unassigned/"don't
    /// care") for `family`.
    public static func new(any family: SocketFamily) -> InetAddress! {
        let rv: UnsafeMutablePointer<GInetAddress>! = cast(g_inet_address_new_any(family))
        return rv.map { InetAddress(cast($0)) }
    }

    /// Creates a new `GInetAddress` from the given `family` and `bytes`.
    /// `bytes` should be 4 bytes for `G_SOCKET_FAMILY_IPV4` and 16 bytes for
    /// `G_SOCKET_FAMILY_IPV6`.
    public static func newFrom(bytes: UnsafePointer<UInt8>, family: SocketFamily) -> InetAddress! {
        let rv: UnsafeMutablePointer<GInetAddress>! = cast(g_inet_address_new_from_bytes(cast(bytes), family))
        return rv.map { InetAddress(cast($0)) }
    }

    /// Parses `string` as an IP address and creates a new `GInetAddress`.
    public static func newFrom(string: UnsafePointer<gchar>) -> InetAddress! {
        let rv: UnsafeMutablePointer<GInetAddress>! = cast(g_inet_address_new_from_string(string))
        return rv.map { InetAddress(cast($0)) }
    }

    /// Creates a `GInetAddress` for the loopback address for `family`.
    public static func new(loopback family: SocketFamily) -> InetAddress! {
        let rv: UnsafeMutablePointer<GInetAddress>! = cast(g_inet_address_new_loopback(family))
        return rv.map { InetAddress(cast($0)) }
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: InetAddressPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(inet_address_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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
    func get(property: InetAddressPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a InetAddress property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func set(property: InetAddressPropertyName, value v: GLibObject.Value) {
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
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

public extension InetAddressProtocol {
    /// Connect a `InetAddressSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: InetAddressSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(inet_address_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

// MARK: InetAddress Class: InetAddressProtocol extension (methods and fields)
public extension InetAddressProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GInetAddress` instance.
    var inet_address_ptr: UnsafeMutablePointer<GInetAddress> { return ptr.assumingMemoryBound(to: GInetAddress.self) }

    /// Checks if two `GInetAddress` instances are equal, e.g. the same address.
    func equal(otherAddress other_address: InetAddressProtocol) -> Bool {
        let rv = g_inet_address_equal(cast(inet_address_ptr), cast(other_address.ptr))
        return Bool(rv != 0)
    }

    /// Gets `address`'s family
    func getFamily() -> GSocketFamily {
        let rv = g_inet_address_get_family(cast(inet_address_ptr))
        return cast(rv)
    }

    /// Tests whether `address` is the "any" address for its family.
    func getIsAny() -> Bool {
        let rv = g_inet_address_get_is_any(cast(inet_address_ptr))
        return Bool(rv != 0)
    }

    /// Tests whether `address` is a link-local address (that is, if it
    /// identifies a host on a local network that is not connected to the
    /// Internet).
    func getIsLinkLocal() -> Bool {
        let rv = g_inet_address_get_is_link_local(cast(inet_address_ptr))
        return Bool(rv != 0)
    }

    /// Tests whether `address` is the loopback address for its family.
    func getIsLoopback() -> Bool {
        let rv = g_inet_address_get_is_loopback(cast(inet_address_ptr))
        return Bool(rv != 0)
    }

    /// Tests whether `address` is a global multicast address.
    func getIsMcGlobal() -> Bool {
        let rv = g_inet_address_get_is_mc_global(cast(inet_address_ptr))
        return Bool(rv != 0)
    }

    /// Tests whether `address` is a link-local multicast address.
    func getIsMcLinkLocal() -> Bool {
        let rv = g_inet_address_get_is_mc_link_local(cast(inet_address_ptr))
        return Bool(rv != 0)
    }

    /// Tests whether `address` is a node-local multicast address.
    func getIsMcNodeLocal() -> Bool {
        let rv = g_inet_address_get_is_mc_node_local(cast(inet_address_ptr))
        return Bool(rv != 0)
    }

    /// Tests whether `address` is an organization-local multicast address.
    func getIsMcOrgLocal() -> Bool {
        let rv = g_inet_address_get_is_mc_org_local(cast(inet_address_ptr))
        return Bool(rv != 0)
    }

    /// Tests whether `address` is a site-local multicast address.
    func getIsMcSiteLocal() -> Bool {
        let rv = g_inet_address_get_is_mc_site_local(cast(inet_address_ptr))
        return Bool(rv != 0)
    }

    /// Tests whether `address` is a multicast address.
    func getIsMulticast() -> Bool {
        let rv = g_inet_address_get_is_multicast(cast(inet_address_ptr))
        return Bool(rv != 0)
    }

    /// Tests whether `address` is a site-local address such as 10.0.0.1
    /// (that is, the address identifies a host on a local network that can
    /// not be reached directly from the Internet, but which may have
    /// outgoing Internet connectivity via a NAT or firewall).
    func getIsSiteLocal() -> Bool {
        let rv = g_inet_address_get_is_site_local(cast(inet_address_ptr))
        return Bool(rv != 0)
    }

    /// Gets the size of the native raw binary address for `address`. This
    /// is the size of the data that you get from `g_inet_address_to_bytes()`.
    func getNativeSize() -> Int {
        let rv = g_inet_address_get_native_size(cast(inet_address_ptr))
        return Int(rv)
    }

    /// Gets the raw binary address data from `address`.
    func toBytes() -> UnsafePointer<UInt8>! {
        let rv: UnsafePointer<UInt8>! = cast(g_inet_address_to_bytes(cast(inet_address_ptr)))
        return cast(rv)
    }

    /// Converts `address` to string form.
    func toString() -> String! {
        let rv: String! = cast(g_inet_address_to_string(cast(inet_address_ptr)))
        return cast(rv)
    }
    var family: GSocketFamily {
        /// Gets `address`'s family
        get {
            let rv = g_inet_address_get_family(cast(inet_address_ptr))
            return cast(rv)
        }
    }

    /// Tests whether `address` is the "any" address for its family.
    var isAny: Bool {
        /// Tests whether `address` is the "any" address for its family.
        get {
            let rv = g_inet_address_get_is_any(cast(inet_address_ptr))
            return Bool(rv != 0)
        }
    }

    /// Tests whether `address` is a link-local address (that is, if it
    /// identifies a host on a local network that is not connected to the
    /// Internet).
    var isLinkLocal: Bool {
        /// Tests whether `address` is a link-local address (that is, if it
        /// identifies a host on a local network that is not connected to the
        /// Internet).
        get {
            let rv = g_inet_address_get_is_link_local(cast(inet_address_ptr))
            return Bool(rv != 0)
        }
    }

    /// Tests whether `address` is the loopback address for its family.
    var isLoopback: Bool {
        /// Tests whether `address` is the loopback address for its family.
        get {
            let rv = g_inet_address_get_is_loopback(cast(inet_address_ptr))
            return Bool(rv != 0)
        }
    }

    /// Tests whether `address` is a global multicast address.
    var isMcGlobal: Bool {
        /// Tests whether `address` is a global multicast address.
        get {
            let rv = g_inet_address_get_is_mc_global(cast(inet_address_ptr))
            return Bool(rv != 0)
        }
    }

    /// Tests whether `address` is a link-local multicast address.
    var isMcLinkLocal: Bool {
        /// Tests whether `address` is a link-local multicast address.
        get {
            let rv = g_inet_address_get_is_mc_link_local(cast(inet_address_ptr))
            return Bool(rv != 0)
        }
    }

    /// Tests whether `address` is a node-local multicast address.
    var isMcNodeLocal: Bool {
        /// Tests whether `address` is a node-local multicast address.
        get {
            let rv = g_inet_address_get_is_mc_node_local(cast(inet_address_ptr))
            return Bool(rv != 0)
        }
    }

    /// Tests whether `address` is an organization-local multicast address.
    var isMcOrgLocal: Bool {
        /// Tests whether `address` is an organization-local multicast address.
        get {
            let rv = g_inet_address_get_is_mc_org_local(cast(inet_address_ptr))
            return Bool(rv != 0)
        }
    }

    /// Tests whether `address` is a site-local multicast address.
    var isMcSiteLocal: Bool {
        /// Tests whether `address` is a site-local multicast address.
        get {
            let rv = g_inet_address_get_is_mc_site_local(cast(inet_address_ptr))
            return Bool(rv != 0)
        }
    }

    /// Tests whether `address` is a multicast address.
    var isMulticast: Bool {
        /// Tests whether `address` is a multicast address.
        get {
            let rv = g_inet_address_get_is_multicast(cast(inet_address_ptr))
            return Bool(rv != 0)
        }
    }

    /// Tests whether `address` is a site-local address such as 10.0.0.1
    /// (that is, the address identifies a host on a local network that can
    /// not be reached directly from the Internet, but which may have
    /// outgoing Internet connectivity via a NAT or firewall).
    var isSiteLocal: Bool {
        /// Tests whether `address` is a site-local address such as 10.0.0.1
        /// (that is, the address identifies a host on a local network that can
        /// not be reached directly from the Internet, but which may have
        /// outgoing Internet connectivity via a NAT or firewall).
        get {
            let rv = g_inet_address_get_is_site_local(cast(inet_address_ptr))
            return Bool(rv != 0)
        }
    }

    /// Gets the size of the native raw binary address for `address`. This
    /// is the size of the data that you get from `g_inet_address_to_bytes()`.
    var nativeSize: Int {
        /// Gets the size of the native raw binary address for `address`. This
        /// is the size of the data that you get from `g_inet_address_to_bytes()`.
        get {
            let rv = g_inet_address_get_native_size(cast(inet_address_ptr))
            return Int(rv)
        }
    }

    var parentInstance: GObject {
        get {
            let rv: GObject = cast(inet_address_ptr.pointee.parent_instance)
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - InetAddressMask Class

/// The `InetAddressMaskProtocol` protocol exposes the methods and properties of an underlying `GInetAddressMask` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InetAddressMask`.
/// Alternatively, use `InetAddressMaskRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GInetAddressMask` represents a range of IPv4 or IPv6 addresses
/// described by a base address and a length indicating how many bits
/// of the base address are relevant for matching purposes. These are
/// often given in string form. Eg, "10.0.0.0/8", or "fe80``/10".
public protocol InetAddressMaskProtocol: ObjectProtocol, InitableProtocol {
        /// Untyped pointer to the underlying `GInetAddressMask` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GInetAddressMask` instance.
    var inet_address_mask_ptr: UnsafeMutablePointer<GInetAddressMask> { get }
}

/// The `InetAddressMaskRef` type acts as a lightweight Swift reference to an underlying `GInetAddressMask` instance.
/// It exposes methods that can operate on this data type through `InetAddressMaskProtocol` conformance.
/// Use `InetAddressMaskRef` only as an `unowned` reference to an existing `GInetAddressMask` instance.
///
/// `GInetAddressMask` represents a range of IPv4 or IPv6 addresses
/// described by a base address and a length indicating how many bits
/// of the base address are relevant for matching purposes. These are
/// often given in string form. Eg, "10.0.0.0/8", or "fe80``/10".
public struct InetAddressMaskRef: InetAddressMaskProtocol {
        /// Untyped pointer to the underlying `GInetAddressMask` instance.
    /// For type-safe access, use the generated, typed pointer `inet_address_mask_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension InetAddressMaskRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GInetAddressMask>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `InetAddressMaskProtocol`
    init<T: InetAddressMaskProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GInetAddressMask` representing all addresses whose
    /// first `length` bits match `addr`.
    init( addr: InetAddressProtocol, length: CUnsignedInt) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GInetAddressMask>! = cast(g_inet_address_mask_new(cast(addr.ptr), guint(length), &error))
        if let error = error { throw ErrorType(error) }
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// Parses `mask_string` as an IP address and (optional) length, and
    /// creates a new `GInetAddressMask`. The length, if present, is
    /// delimited by a "/". If it is not present, then the length is
    /// assumed to be the full length of the address.
    init(string mask_string: UnsafePointer<gchar>) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GInetAddressMask>! = cast(g_inet_address_mask_new_from_string(mask_string, &error))
        if let error = error { throw ErrorType(error) }
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
    /// Parses `mask_string` as an IP address and (optional) length, and
    /// creates a new `GInetAddressMask`. The length, if present, is
    /// delimited by a "/". If it is not present, then the length is
    /// assumed to be the full length of the address.
    static func newFrom(string mask_string: UnsafePointer<gchar>) throws -> InetAddressMaskRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GInetAddressMask>! = cast(g_inet_address_mask_new_from_string(mask_string, &error))
        if let error = error { throw ErrorType(error) }
        return rv.map { InetAddressMaskRef(cast($0)) }
    }
}

/// The `InetAddressMask` type acts as a reference-counted owner of an underlying `GInetAddressMask` instance.
/// It provides the methods that can operate on this data type through `InetAddressMaskProtocol` conformance.
/// Use `InetAddressMask` as a strong reference or owner of a `GInetAddressMask` instance.
///
/// `GInetAddressMask` represents a range of IPv4 or IPv6 addresses
/// described by a base address and a length indicating how many bits
/// of the base address are relevant for matching purposes. These are
/// often given in string form. Eg, "10.0.0.0/8", or "fe80``/10".
open class InetAddressMask: Object, InetAddressMaskProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InetAddressMask` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GInetAddressMask>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GInetAddressMask`.
    /// i.e., ownership is transferred to the `InetAddressMask` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GInetAddressMask>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `InetAddressMaskProtocol`
    /// Will retain `GInetAddressMask`.
    /// - Parameter other: an instance of a related type that implements `InetAddressMaskProtocol`
    public init<T: InetAddressMaskProtocol>(inetAddressMask other: T) {
        super.init(retaining: cast(other.inet_address_mask_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GInetAddressMask` representing all addresses whose
    /// first `length` bits match `addr`.
    public init( addr: InetAddressProtocol, length: CUnsignedInt) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GInetAddressMask>! = cast(g_inet_address_mask_new(cast(addr.ptr), guint(length), &error))
        if let error = error { throw ErrorType(error) }
        super.init(cast(rv))
    }

    /// Parses `mask_string` as an IP address and (optional) length, and
    /// creates a new `GInetAddressMask`. The length, if present, is
    /// delimited by a "/". If it is not present, then the length is
    /// assumed to be the full length of the address.
    public init(string mask_string: UnsafePointer<gchar>) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GInetAddressMask>! = cast(g_inet_address_mask_new_from_string(mask_string, &error))
        if let error = error { throw ErrorType(error) }
        super.init(cast(rv))
    }

    /// Parses `mask_string` as an IP address and (optional) length, and
    /// creates a new `GInetAddressMask`. The length, if present, is
    /// delimited by a "/". If it is not present, then the length is
    /// assumed to be the full length of the address.
    public static func newFrom(string mask_string: UnsafePointer<gchar>) throws -> InetAddressMask! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GInetAddressMask>! = cast(g_inet_address_mask_new_from_string(mask_string, &error))
        if let error = error { throw ErrorType(error) }
        return rv.map { InetAddressMask(cast($0)) }
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: InetAddressMaskPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(inet_address_mask_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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
    func get(property: InetAddressMaskPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a InetAddressMask property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func set(property: InetAddressMaskPropertyName, value v: GLibObject.Value) {
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    case notifyAddress = "notify::address"
    case notifyFamily = "notify::family"
    case notifyLength = "notify::length"
}

public extension InetAddressMaskProtocol {
    /// Connect a `InetAddressMaskSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: InetAddressMaskSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(inet_address_mask_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

// MARK: InetAddressMask Class: InetAddressMaskProtocol extension (methods and fields)
public extension InetAddressMaskProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GInetAddressMask` instance.
    var inet_address_mask_ptr: UnsafeMutablePointer<GInetAddressMask> { return ptr.assumingMemoryBound(to: GInetAddressMask.self) }

    /// Tests if `mask` and `mask2` are the same mask.
    func equal(mask2: InetAddressMaskProtocol) -> Bool {
        let rv = g_inet_address_mask_equal(cast(inet_address_mask_ptr), cast(mask2.ptr))
        return Bool(rv != 0)
    }

    /// Gets `mask`'s base address
    func getAddress() -> UnsafeMutablePointer<GInetAddress>! {
        let rv: UnsafeMutablePointer<GInetAddress>! = cast(g_inet_address_mask_get_address(cast(inet_address_mask_ptr)))
        return cast(rv)
    }

    /// Gets the `GSocketFamily` of `mask`'s address
    func getFamily() -> GSocketFamily {
        let rv = g_inet_address_mask_get_family(cast(inet_address_mask_ptr))
        return cast(rv)
    }

    /// Gets `mask`'s length
    func getLength() -> Int {
        let rv: Int = cast(g_inet_address_mask_get_length(cast(inet_address_mask_ptr)))
        return Int(rv)
    }

    /// Tests if `address` falls within the range described by `mask`.
    func matches(address: InetAddressProtocol) -> Bool {
        let rv = g_inet_address_mask_matches(cast(inet_address_mask_ptr), cast(address.ptr))
        return Bool(rv != 0)
    }

    /// Converts `mask` back to its corresponding string form.
    func toString() -> String! {
        let rv: String! = cast(g_inet_address_mask_to_string(cast(inet_address_mask_ptr)))
        return cast(rv)
    }
    var address: UnsafeMutablePointer<GInetAddress>! {
        /// Gets `mask`'s base address
        get {
            let rv: UnsafeMutablePointer<GInetAddress>! = cast(g_inet_address_mask_get_address(cast(inet_address_mask_ptr)))
            return cast(rv)
        }
    }

    var family: GSocketFamily {
        /// Gets the `GSocketFamily` of `mask`'s address
        get {
            let rv = g_inet_address_mask_get_family(cast(inet_address_mask_ptr))
            return cast(rv)
        }
    }

    var length: Int {
        /// Gets `mask`'s length
        get {
            let rv: Int = cast(g_inet_address_mask_get_length(cast(inet_address_mask_ptr)))
            return Int(rv)
        }
    }

    var parentInstance: GObject {
        get {
            let rv: GObject = cast(inet_address_mask_ptr.pointee.parent_instance)
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - InetSocketAddress Class

/// The `InetSocketAddressProtocol` protocol exposes the methods and properties of an underlying `GInetSocketAddress` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InetSocketAddress`.
/// Alternatively, use `InetSocketAddressRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// An IPv4 or IPv6 socket address; that is, the combination of a
/// `GInetAddress` and a port number.
public protocol InetSocketAddressProtocol: SocketAddressProtocol {
        /// Untyped pointer to the underlying `GInetSocketAddress` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GInetSocketAddress` instance.
    var inet_socket_address_ptr: UnsafeMutablePointer<GInetSocketAddress> { get }
}

/// The `InetSocketAddressRef` type acts as a lightweight Swift reference to an underlying `GInetSocketAddress` instance.
/// It exposes methods that can operate on this data type through `InetSocketAddressProtocol` conformance.
/// Use `InetSocketAddressRef` only as an `unowned` reference to an existing `GInetSocketAddress` instance.
///
/// An IPv4 or IPv6 socket address; that is, the combination of a
/// `GInetAddress` and a port number.
public struct InetSocketAddressRef: InetSocketAddressProtocol {
        /// Untyped pointer to the underlying `GInetSocketAddress` instance.
    /// For type-safe access, use the generated, typed pointer `inet_socket_address_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension InetSocketAddressRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GInetSocketAddress>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `InetSocketAddressProtocol`
    init<T: InetSocketAddressProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GInetSocketAddress` for `address` and `port`.
    init( address: InetAddressProtocol, port: UInt16) {
        let rv: UnsafeMutablePointer<GSocketAddress>! = cast(g_inet_socket_address_new(cast(address.ptr), guint16(port)))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// Creates a new `GInetSocketAddress` for `address` and `port`.
    /// 
    /// If `address` is an IPv6 address, it can also contain a scope ID
    /// (separated from the address by a ````).
    init(string address: UnsafePointer<CChar>, port: CUnsignedInt) {
        let rv: UnsafeMutablePointer<GSocketAddress>! = cast(g_inet_socket_address_new_from_string(address, guint(port)))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
    /// Creates a new `GInetSocketAddress` for `address` and `port`.
    /// 
    /// If `address` is an IPv6 address, it can also contain a scope ID
    /// (separated from the address by a ````).
    static func newFrom(string address: UnsafePointer<CChar>, port: CUnsignedInt) -> InetSocketAddressRef! {
        let rv: UnsafeMutablePointer<GSocketAddress>! = cast(g_inet_socket_address_new_from_string(address, guint(port)))
        return rv.map { InetSocketAddressRef(cast($0)) }
    }
}

/// The `InetSocketAddress` type acts as a reference-counted owner of an underlying `GInetSocketAddress` instance.
/// It provides the methods that can operate on this data type through `InetSocketAddressProtocol` conformance.
/// Use `InetSocketAddress` as a strong reference or owner of a `GInetSocketAddress` instance.
///
/// An IPv4 or IPv6 socket address; that is, the combination of a
/// `GInetAddress` and a port number.
open class InetSocketAddress: SocketAddress, InetSocketAddressProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InetSocketAddress` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GInetSocketAddress>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GInetSocketAddress`.
    /// i.e., ownership is transferred to the `InetSocketAddress` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GInetSocketAddress>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `InetSocketAddressProtocol`
    /// Will retain `GInetSocketAddress`.
    /// - Parameter other: an instance of a related type that implements `InetSocketAddressProtocol`
    public init<T: InetSocketAddressProtocol>(inetSocketAddress other: T) {
        super.init(retaining: cast(other.inet_socket_address_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GInetSocketAddress` for `address` and `port`.
    public init( address: InetAddressProtocol, port: UInt16) {
        let rv: UnsafeMutablePointer<GSocketAddress>! = cast(g_inet_socket_address_new(cast(address.ptr), guint16(port)))
        super.init(cast(rv))
    }

    /// Creates a new `GInetSocketAddress` for `address` and `port`.
    /// 
    /// If `address` is an IPv6 address, it can also contain a scope ID
    /// (separated from the address by a ````).
    public init(string address: UnsafePointer<CChar>, port: CUnsignedInt) {
        let rv: UnsafeMutablePointer<GSocketAddress>! = cast(g_inet_socket_address_new_from_string(address, guint(port)))
        super.init(cast(rv))
    }

    /// Creates a new `GInetSocketAddress` for `address` and `port`.
    /// 
    /// If `address` is an IPv6 address, it can also contain a scope ID
    /// (separated from the address by a ````).
    public static func newFrom(string address: UnsafePointer<CChar>, port: CUnsignedInt) -> InetSocketAddress! {
        let rv: UnsafeMutablePointer<GSocketAddress>! = cast(g_inet_socket_address_new_from_string(address, guint(port)))
        return rv.map { InetSocketAddress(cast($0)) }
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: InetSocketAddressPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(inet_socket_address_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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
    func get(property: InetSocketAddressPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a InetSocketAddress property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func set(property: InetSocketAddressPropertyName, value v: GLibObject.Value) {
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
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

public extension InetSocketAddressProtocol {
    /// Connect a `InetSocketAddressSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: InetSocketAddressSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(inet_socket_address_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

// MARK: InetSocketAddress Class: InetSocketAddressProtocol extension (methods and fields)
public extension InetSocketAddressProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GInetSocketAddress` instance.
    var inet_socket_address_ptr: UnsafeMutablePointer<GInetSocketAddress> { return ptr.assumingMemoryBound(to: GInetSocketAddress.self) }

    /// Gets `address`'s `GInetAddress`.
    func getAddress() -> UnsafeMutablePointer<GInetAddress>! {
        let rv: UnsafeMutablePointer<GInetAddress>! = cast(g_inet_socket_address_get_address(cast(inet_socket_address_ptr)))
        return cast(rv)
    }

    /// Gets the `sin6_flowinfo` field from `address`,
    /// which must be an IPv6 address.
    func getFlowinfo() -> UInt32 {
        let rv = g_inet_socket_address_get_flowinfo(cast(inet_socket_address_ptr))
        return UInt32(rv)
    }

    /// Gets `address`'s port.
    func getPort() -> UInt16 {
        let rv = g_inet_socket_address_get_port(cast(inet_socket_address_ptr))
        return UInt16(rv)
    }

    /// Gets the `sin6_scope_id` field from `address`,
    /// which must be an IPv6 address.
    func getScopeID() -> UInt32 {
        let rv = g_inet_socket_address_get_scope_id(cast(inet_socket_address_ptr))
        return UInt32(rv)
    }
    var address: UnsafeMutablePointer<GInetAddress>! {
        /// Gets `address`'s `GInetAddress`.
        get {
            let rv: UnsafeMutablePointer<GInetAddress>! = cast(g_inet_socket_address_get_address(cast(inet_socket_address_ptr)))
            return cast(rv)
        }
    }

    /// The `sin6_flowinfo` field, for IPv6 addresses.
    var flowinfo: UInt32 {
        /// Gets the `sin6_flowinfo` field from `address`,
        /// which must be an IPv6 address.
        get {
            let rv = g_inet_socket_address_get_flowinfo(cast(inet_socket_address_ptr))
            return UInt32(rv)
        }
    }

    var port: UInt16 {
        /// Gets `address`'s port.
        get {
            let rv = g_inet_socket_address_get_port(cast(inet_socket_address_ptr))
            return UInt16(rv)
        }
    }

    /// Gets the `sin6_scope_id` field from `address`,
    /// which must be an IPv6 address.
    var scopeID: UInt32 {
        /// Gets the `sin6_scope_id` field from `address`,
        /// which must be an IPv6 address.
        get {
            let rv = g_inet_socket_address_get_scope_id(cast(inet_socket_address_ptr))
            return UInt32(rv)
        }
    }

    var parentInstance: GSocketAddress {
        get {
            let rv: GSocketAddress = cast(inet_socket_address_ptr.pointee.parent_instance)
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - InputStream Class

/// The `InputStreamProtocol` protocol exposes the methods and properties of an underlying `GInputStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InputStream`.
/// Alternatively, use `InputStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
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
public protocol InputStreamProtocol: ObjectProtocol {
        /// Untyped pointer to the underlying `GInputStream` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GInputStream` instance.
    var input_stream_ptr: UnsafeMutablePointer<GInputStream> { get }
}

/// The `InputStreamRef` type acts as a lightweight Swift reference to an underlying `GInputStream` instance.
/// It exposes methods that can operate on this data type through `InputStreamProtocol` conformance.
/// Use `InputStreamRef` only as an `unowned` reference to an existing `GInputStream` instance.
///
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
public struct InputStreamRef: InputStreamProtocol {
        /// Untyped pointer to the underlying `GInputStream` instance.
    /// For type-safe access, use the generated, typed pointer `input_stream_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension InputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GInputStream>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `InputStreamProtocol`
    init<T: InputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `InputStream` type acts as a reference-counted owner of an underlying `GInputStream` instance.
/// It provides the methods that can operate on this data type through `InputStreamProtocol` conformance.
/// Use `InputStream` as a strong reference or owner of a `GInputStream` instance.
///
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
open class InputStream: Object, InputStreamProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InputStream` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GInputStream>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GInputStream`.
    /// i.e., ownership is transferred to the `InputStream` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GInputStream>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `InputStreamProtocol`
    /// Will retain `GInputStream`.
    /// - Parameter other: an instance of a related type that implements `InputStreamProtocol`
    public init<T: InputStreamProtocol>(inputStream other: T) {
        super.init(retaining: cast(other.input_stream_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"

}

public extension InputStreamProtocol {
    /// Connect a `InputStreamSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: InputStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(input_stream_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

// MARK: InputStream Class: InputStreamProtocol extension (methods and fields)
public extension InputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GInputStream` instance.
    var input_stream_ptr: UnsafeMutablePointer<GInputStream> { return ptr.assumingMemoryBound(to: GInputStream.self) }

    /// Clears the pending flag on `stream`.
    func clearPending() {
        g_input_stream_clear_pending(cast(input_stream_ptr))
    
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
    func close(cancellable: CancellableProtocol) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_input_stream_close(cast(input_stream_ptr), cast(cancellable.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
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
    func closeAsync(ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_input_stream_close_async(cast(input_stream_ptr), io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes closing a stream asynchronously, started from `g_input_stream_close_async()`.
    func closeFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_input_stream_close_finish(cast(input_stream_ptr), cast(result.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
    }

    /// Checks if an input stream has pending actions.
    func hasPending() -> Bool {
        let rv = g_input_stream_has_pending(cast(input_stream_ptr))
        return Bool(rv != 0)
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
    func read(buffer: UnsafeMutableRawPointer, count: Int, cancellable: CancellableProtocol) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_input_stream_read(cast(input_stream_ptr), cast(buffer), gsize(count), cast(cancellable.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return cast(rv)
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
    func readAll(buffer: UnsafeMutableRawPointer, count: Int, bytesRead bytes_read: UnsafeMutablePointer<Int>, cancellable: CancellableProtocol) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_input_stream_read_all(cast(input_stream_ptr), cast(buffer), gsize(count), cast(bytes_read), cast(cancellable.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
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
    func readAllAsync(buffer: UnsafeMutableRawPointer, count: Int, ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_input_stream_read_all_async(cast(input_stream_ptr), cast(buffer), gsize(count), io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
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
    func readAllFinish(result: AsyncResultProtocol, bytesRead bytes_read: UnsafeMutablePointer<Int>) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_input_stream_read_all_finish(cast(input_stream_ptr), cast(result.ptr), cast(bytes_read), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
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
    func readAsync(buffer: UnsafeMutableRawPointer, count: Int, ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_input_stream_read_async(cast(input_stream_ptr), cast(buffer), gsize(count), io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
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
    func readBytes(count: Int, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GBytes>! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GBytes>! = cast(g_input_stream_read_bytes(cast(input_stream_ptr), gsize(count), cast(cancellable.ptr), &error))
        if let error = error { throw ErrorType(error) }
        return cast(rv)
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
    func readBytesAsync(count: Int, ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_input_stream_read_bytes_async(cast(input_stream_ptr), gsize(count), io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an asynchronous stream read-into-`GBytes` operation.
    func readBytesFinish(result: AsyncResultProtocol) throws -> UnsafeMutablePointer<GBytes>! {
        var error: UnsafeMutablePointer<GError>?
        let rv: UnsafeMutablePointer<GBytes>! = cast(g_input_stream_read_bytes_finish(cast(input_stream_ptr), cast(result.ptr), &error))
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// Finishes an asynchronous stream read operation.
    func readFinish(result: AsyncResultProtocol) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_input_stream_read_finish(cast(input_stream_ptr), cast(result.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }

    /// Sets `stream` to have actions pending. If the pending flag is
    /// already set or `stream` is closed, it will return `false` and set
    /// `error`.
    func setPending() throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_input_stream_set_pending(cast(input_stream_ptr), &error)
        if let error = error { throw ErrorType(error) }
        return Bool(rv != 0)
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
    func skip(count: Int, cancellable: CancellableProtocol) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_input_stream_skip(cast(input_stream_ptr), gsize(count), cast(cancellable.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return cast(rv)
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
    func skipAsync(count: Int, ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_input_stream_skip_async(cast(input_stream_ptr), gsize(count), io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes a stream skip operation.
    func skipFinish(result: AsyncResultProtocol) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_input_stream_skip_finish(cast(input_stream_ptr), cast(result.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return cast(rv)
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
    func pollableStreamRead(buffer: UnsafeMutableRawPointer, count: Int, blocking: Bool, cancellable: CancellableProtocol) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_pollable_stream_read(cast(input_stream_ptr), cast(buffer), gsize(count), gboolean(blocking ? 1 : 0), cast(cancellable.ptr), &error)
        if let error = error { throw ErrorType(error) }
        return cast(rv)
    }
    /// Checks if an input stream is closed.
    var isClosed: Bool {
        /// Checks if an input stream is closed.
        get {
            let rv = g_input_stream_is_closed(cast(input_stream_ptr))
            return Bool(rv != 0)
        }
    }

    var parentInstance: GObject {
        get {
            let rv: GObject = cast(input_stream_ptr.pointee.parent_instance)
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - ListStore Class

/// The `ListStoreProtocol` protocol exposes the methods and properties of an underlying `GListStore` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListStore`.
/// Alternatively, use `ListStoreRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GListStore` is a simple implementation of `GListModel` that stores all
/// items in memory.
/// 
/// It provides insertions, deletions, and lookups in logarithmic time
/// with a fast path for the common case of iterating the list linearly.
public protocol ListStoreProtocol: ObjectProtocol, ListModelProtocol {
        /// Untyped pointer to the underlying `GListStore` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GListStore` instance.
    var list_store_ptr: UnsafeMutablePointer<GListStore> { get }
}

/// The `ListStoreRef` type acts as a lightweight Swift reference to an underlying `GListStore` instance.
/// It exposes methods that can operate on this data type through `ListStoreProtocol` conformance.
/// Use `ListStoreRef` only as an `unowned` reference to an existing `GListStore` instance.
///
/// `GListStore` is a simple implementation of `GListModel` that stores all
/// items in memory.
/// 
/// It provides insertions, deletions, and lookups in logarithmic time
/// with a fast path for the common case of iterating the list linearly.
public struct ListStoreRef: ListStoreProtocol {
        /// Untyped pointer to the underlying `GListStore` instance.
    /// For type-safe access, use the generated, typed pointer `list_store_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ListStoreRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GListStore>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ListStoreProtocol`
    init<T: ListStoreProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GListStore` with items of type `item_type`. `item_type`
    /// must be a subclass of `GObject`.
    init( item_type: GType) {
        let rv: UnsafeMutablePointer<GListStore>! = cast(g_list_store_new(item_type))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
}

/// The `ListStore` type acts as a reference-counted owner of an underlying `GListStore` instance.
/// It provides the methods that can operate on this data type through `ListStoreProtocol` conformance.
/// Use `ListStore` as a strong reference or owner of a `GListStore` instance.
///
/// `GListStore` is a simple implementation of `GListModel` that stores all
/// items in memory.
/// 
/// It provides insertions, deletions, and lookups in logarithmic time
/// with a fast path for the common case of iterating the list linearly.
open class ListStore: Object, ListStoreProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListStore` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GListStore>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GListStore`.
    /// i.e., ownership is transferred to the `ListStore` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GListStore>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `ListStoreProtocol`
    /// Will retain `GListStore`.
    /// - Parameter other: an instance of a related type that implements `ListStoreProtocol`
    public init<T: ListStoreProtocol>(listStore other: T) {
        super.init(retaining: cast(other.list_store_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GListStore` with items of type `item_type`. `item_type`
    /// must be a subclass of `GObject`.
    public init( item_type: GType) {
        let rv: UnsafeMutablePointer<GListStore>! = cast(g_list_store_new(item_type))
        super.init(cast(rv))
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: ListStorePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(list_store_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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
    func get(property: ListStorePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a ListStore property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func set(property: ListStorePropertyName, value v: GLibObject.Value) {
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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The type of items contained in this list store. Items must be
    /// subclasses of `GObject`.
    case notifyItemType = "notify::item-type"
}

public extension ListStoreProtocol {
    /// Connect a `ListStoreSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: ListStoreSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(list_store_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

// MARK: ListStore Class: ListStoreProtocol extension (methods and fields)
public extension ListStoreProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GListStore` instance.
    var list_store_ptr: UnsafeMutablePointer<GListStore> { return ptr.assumingMemoryBound(to: GListStore.self) }

    /// Appends `item` to `store`. `item` must be of type `GListStore:item`-type.
    /// 
    /// This function takes a ref on `item`.
    /// 
    /// Use `g_list_store_splice()` to append multiple items at the same time
    /// efficiently.
    func append(item: ObjectProtocol) {
        g_list_store_append(cast(list_store_ptr), cast(item.ptr))
    
    }

    /// Looks up the given `item` in the list store by looping over the items until
    /// the first occurrence of `item`. If `item` was not found, then `position` will
    /// not be set, and this method will return `false`.
    /// 
    /// If you need to compare the two items with a custom comparison function, use
    /// `g_list_store_find_with_equal_func()` with a custom `GEqualFunc` instead.
    func find(item: ObjectProtocol, position: UnsafeMutablePointer<CUnsignedInt>) -> Bool {
        let rv = g_list_store_find(cast(list_store_ptr), cast(item.ptr), cast(position))
        return Bool(rv != 0)
    }

    /// Looks up the given `item` in the list store by looping over the items and
    /// comparing them with `compare_func` until the first occurrence of `item` which
    /// matches. If `item` was not found, then `position` will not be set, and this
    /// method will return `false`.
    func findWithEqualFunc(item: ObjectProtocol, equalFunc equal_func: @escaping GLib.EqualFunc, position: UnsafeMutablePointer<CUnsignedInt>) -> Bool {
        let rv = g_list_store_find_with_equal_func(cast(list_store_ptr), cast(item.ptr), equal_func, cast(position))
        return Bool(rv != 0)
    }

    /// Inserts `item` into `store` at `position`. `item` must be of type
    /// `GListStore:item`-type or derived from it. `position` must be smaller
    /// than the length of the list, or equal to it to append.
    /// 
    /// This function takes a ref on `item`.
    /// 
    /// Use `g_list_store_splice()` to insert multiple items at the same time
    /// efficiently.
    func insert(position: CUnsignedInt, item: ObjectProtocol) {
        g_list_store_insert(cast(list_store_ptr), guint(position), cast(item.ptr))
    
    }

    /// Inserts `item` into `store` at a position to be determined by the
    /// `compare_func`.
    /// 
    /// The list must already be sorted before calling this function or the
    /// result is undefined.  Usually you would approach this by only ever
    /// inserting items by way of this function.
    /// 
    /// This function takes a ref on `item`.
    func insertSorted(item: ObjectProtocol, compareFunc compare_func: @escaping GCompareDataFunc, userData user_data: UnsafeMutableRawPointer) -> Int {
        let rv: Int = cast(g_list_store_insert_sorted(cast(list_store_ptr), cast(item.ptr), compare_func, cast(user_data)))
        return Int(rv)
    }

    /// Removes the item from `store` that is at `position`. `position` must be
    /// smaller than the current length of the list.
    /// 
    /// Use `g_list_store_splice()` to remove multiple items at the same time
    /// efficiently.
    func remove(position: CUnsignedInt) {
        g_list_store_remove(cast(list_store_ptr), guint(position))
    
    }

    /// Removes all items from `store`.
    func removeAll() {
        g_list_store_remove_all(cast(list_store_ptr))
    
    }

    /// Sort the items in `store` according to `compare_func`.
    func sort(compareFunc compare_func: @escaping GCompareDataFunc, userData user_data: UnsafeMutableRawPointer) {
        g_list_store_sort(cast(list_store_ptr), compare_func, cast(user_data))
    
    }

    /// Changes `store` by removing `n_removals` items and adding `n_additions`
    /// items to it. `additions` must contain `n_additions` items of type
    /// `GListStore:item`-type.  `nil` is not permitted.
    /// 
    /// This function is more efficient than `g_list_store_insert()` and
    /// `g_list_store_remove()`, because it only emits
    /// `GListModel::items`-changed once for the change.
    /// 
    /// This function takes a ref on each item in `additions`.
    /// 
    /// The parameters `position` and `n_removals` must be correct (ie:
    /// `position` + `n_removals` must be less than or equal to the length of
    /// the list at the time this function is called).
    func splice(position: CUnsignedInt, nRemovals n_removals: CUnsignedInt, additions: UnsafeMutablePointer<UnsafeMutableRawPointer>, nAdditions n_additions: CUnsignedInt) {
        g_list_store_splice(cast(list_store_ptr), guint(position), guint(n_removals), cast(additions), guint(n_additions))
    
    }


}



