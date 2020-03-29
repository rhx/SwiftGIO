import CGLib
import GLib
import GLibObject

// MARK: - PollableInputStream Interface

/// The `PollableInputStreamProtocol` protocol exposes the methods and properties of an underlying `GPollableInputStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PollableInputStream`.
/// Alternatively, use `PollableInputStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GPollableInputStream` is implemented by `GInputStreams` that
/// can be polled for readiness to read. This can be used when
/// interfacing with a non-GIO API that expects
/// UNIX-file-descriptor-style asynchronous I/O rather than GIO-style.
public protocol PollableInputStreamProtocol: InputStreamProtocol {
    /// Untyped pointer to the underlying `GPollableInputStream` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GPollableInputStream` instance.
    var pollable_input_stream_ptr: UnsafeMutablePointer<GPollableInputStream> { get }
}

/// The `PollableInputStreamRef` type acts as a lightweight Swift reference to an underlying `GPollableInputStream` instance.
/// It exposes methods that can operate on this data type through `PollableInputStreamProtocol` conformance.
/// Use `PollableInputStreamRef` only as an `unowned` reference to an existing `GPollableInputStream` instance.
///
/// `GPollableInputStream` is implemented by `GInputStreams` that
/// can be polled for readiness to read. This can be used when
/// interfacing with a non-GIO API that expects
/// UNIX-file-descriptor-style asynchronous I/O rather than GIO-style.
public struct PollableInputStreamRef: PollableInputStreamProtocol {
    /// Untyped pointer to the underlying `GPollableInputStream` instance.
    /// For type-safe access, use the generated, typed pointer `pollable_input_stream_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PollableInputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GPollableInputStream>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PollableInputStreamProtocol`
    init<T: PollableInputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PollableInputStream` type acts as a reference-counted owner of an underlying `GPollableInputStream` instance.
/// It provides the methods that can operate on this data type through `PollableInputStreamProtocol` conformance.
/// Use `PollableInputStream` as a strong reference or owner of a `GPollableInputStream` instance.
///
/// `GPollableInputStream` is implemented by `GInputStreams` that
/// can be polled for readiness to read. This can be used when
/// interfacing with a non-GIO API that expects
/// UNIX-file-descriptor-style asynchronous I/O rather than GIO-style.
open class PollableInputStream: InputStream, PollableInputStreamProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PollableInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GPollableInputStream>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GPollableInputStream`.
    /// i.e., ownership is transferred to the `PollableInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GPollableInputStream>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `PollableInputStreamProtocol`
    /// Will retain `GPollableInputStream`.
    /// - Parameter other: an instance of a related type that implements `PollableInputStreamProtocol`
    public init<T: PollableInputStreamProtocol>(pollableInputStream other: T) {
        super.init(retaining: cast(other.pollable_input_stream_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: - no PollableInputStream properties

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

public extension PollableInputStreamProtocol {
    /// Connect a `PollableInputStreamSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: PollableInputStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(pollable_input_stream_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension PollableInputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GPollableInputStream` instance.
    var pollable_input_stream_ptr: UnsafeMutablePointer<GPollableInputStream> { return ptr.assumingMemoryBound(to: GPollableInputStream.self) }

    /// Checks if `stream` is actually pollable. Some classes may implement
    /// `GPollableInputStream` but have only certain instances of that class
    /// be pollable. If this method returns `false`, then the behavior of
    /// other `GPollableInputStream` methods is undefined.
    /// 
    /// For any given stream, the value returned by this method is constant;
    /// a stream cannot switch from pollable to non-pollable or vice versa.
    func canPoll() -> Bool {
        let rv = g_pollable_input_stream_can_poll(cast(pollable_input_stream_ptr))
        return Bool(rv != 0)
    }

    /// Creates a `GSource` that triggers when `stream` can be read, or
    /// `cancellable` is triggered or an error occurs. The callback on the
    /// source is of the `GPollableSourceFunc` type.
    /// 
    /// As with `g_pollable_input_stream_is_readable()`, it is possible that
    /// the stream may not actually be readable even after the source
    /// triggers, so you should use `g_pollable_input_stream_read_nonblocking()`
    /// rather than `g_input_stream_read()` from the callback.
    func createSource(cancellable: CancellableProtocol) -> UnsafeMutablePointer<GSource>! {
        let rv = g_pollable_input_stream_create_source(cast(pollable_input_stream_ptr), cast(cancellable.ptr))
        return cast(rv)
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
    func readNonblocking(buffer: UnsafeMutableRawPointer, count: Int, cancellable: CancellableProtocol) throws -> gssize {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_pollable_input_stream_read_nonblocking(cast(pollable_input_stream_ptr), cast(buffer), gsize(count), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
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
    var isReadable: Bool {
        /// Checks if `stream` can be read.
        /// 
        /// Note that some stream types may not be able to implement this 100%
        /// reliably, and it is possible that a call to `g_input_stream_read()`
        /// after this returns `true` would still block. To guarantee
        /// non-blocking behavior, you should always use
        /// `g_pollable_input_stream_read_nonblocking()`, which will return a
        /// `G_IO_ERROR_WOULD_BLOCK` error rather than blocking.
        get {
            let rv = g_pollable_input_stream_is_readable(cast(pollable_input_stream_ptr))
            return Bool(rv != 0)
        }
    }
}



// MARK: - PollableOutputStream Interface

/// The `PollableOutputStreamProtocol` protocol exposes the methods and properties of an underlying `GPollableOutputStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PollableOutputStream`.
/// Alternatively, use `PollableOutputStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GPollableOutputStream` is implemented by `GOutputStreams` that
/// can be polled for readiness to write. This can be used when
/// interfacing with a non-GIO API that expects
/// UNIX-file-descriptor-style asynchronous I/O rather than GIO-style.
public protocol PollableOutputStreamProtocol: OutputStreamProtocol {
    /// Untyped pointer to the underlying `GPollableOutputStream` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GPollableOutputStream` instance.
    var pollable_output_stream_ptr: UnsafeMutablePointer<GPollableOutputStream> { get }
}

/// The `PollableOutputStreamRef` type acts as a lightweight Swift reference to an underlying `GPollableOutputStream` instance.
/// It exposes methods that can operate on this data type through `PollableOutputStreamProtocol` conformance.
/// Use `PollableOutputStreamRef` only as an `unowned` reference to an existing `GPollableOutputStream` instance.
///
/// `GPollableOutputStream` is implemented by `GOutputStreams` that
/// can be polled for readiness to write. This can be used when
/// interfacing with a non-GIO API that expects
/// UNIX-file-descriptor-style asynchronous I/O rather than GIO-style.
public struct PollableOutputStreamRef: PollableOutputStreamProtocol {
    /// Untyped pointer to the underlying `GPollableOutputStream` instance.
    /// For type-safe access, use the generated, typed pointer `pollable_output_stream_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PollableOutputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GPollableOutputStream>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PollableOutputStreamProtocol`
    init<T: PollableOutputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `PollableOutputStream` type acts as a reference-counted owner of an underlying `GPollableOutputStream` instance.
/// It provides the methods that can operate on this data type through `PollableOutputStreamProtocol` conformance.
/// Use `PollableOutputStream` as a strong reference or owner of a `GPollableOutputStream` instance.
///
/// `GPollableOutputStream` is implemented by `GOutputStreams` that
/// can be polled for readiness to write. This can be used when
/// interfacing with a non-GIO API that expects
/// UNIX-file-descriptor-style asynchronous I/O rather than GIO-style.
open class PollableOutputStream: OutputStream, PollableOutputStreamProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PollableOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GPollableOutputStream>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GPollableOutputStream`.
    /// i.e., ownership is transferred to the `PollableOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GPollableOutputStream>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `PollableOutputStreamProtocol`
    /// Will retain `GPollableOutputStream`.
    /// - Parameter other: an instance of a related type that implements `PollableOutputStreamProtocol`
    public init<T: PollableOutputStreamProtocol>(pollableOutputStream other: T) {
        super.init(retaining: cast(other.pollable_output_stream_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: - no PollableOutputStream properties

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

public extension PollableOutputStreamProtocol {
    /// Connect a `PollableOutputStreamSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: PollableOutputStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(pollable_output_stream_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension PollableOutputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GPollableOutputStream` instance.
    var pollable_output_stream_ptr: UnsafeMutablePointer<GPollableOutputStream> { return ptr.assumingMemoryBound(to: GPollableOutputStream.self) }

    /// Checks if `stream` is actually pollable. Some classes may implement
    /// `GPollableOutputStream` but have only certain instances of that
    /// class be pollable. If this method returns `false`, then the behavior
    /// of other `GPollableOutputStream` methods is undefined.
    /// 
    /// For any given stream, the value returned by this method is constant;
    /// a stream cannot switch from pollable to non-pollable or vice versa.
    func canPoll() -> Bool {
        let rv = g_pollable_output_stream_can_poll(cast(pollable_output_stream_ptr))
        return Bool(rv != 0)
    }

    /// Creates a `GSource` that triggers when `stream` can be written, or
    /// `cancellable` is triggered or an error occurs. The callback on the
    /// source is of the `GPollableSourceFunc` type.
    /// 
    /// As with `g_pollable_output_stream_is_writable()`, it is possible that
    /// the stream may not actually be writable even after the source
    /// triggers, so you should use `g_pollable_output_stream_write_nonblocking()`
    /// rather than `g_output_stream_write()` from the callback.
    func createSource(cancellable: CancellableProtocol) -> UnsafeMutablePointer<GSource>! {
        let rv = g_pollable_output_stream_create_source(cast(pollable_output_stream_ptr), cast(cancellable.ptr))
        return cast(rv)
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
    func writeNonblocking(buffer: UnsafeMutableRawPointer, count: Int, cancellable: CancellableProtocol) throws -> gssize {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_pollable_output_stream_write_nonblocking(cast(pollable_output_stream_ptr), cast(buffer), gsize(count), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
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
    func writevNonblocking(vectors: UnsafePointer<GOutputVector>, nVectors n_vectors: Int, bytesWritten bytes_written: UnsafeMutablePointer<Int>, cancellable: CancellableProtocol) throws -> GPollableReturn {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_pollable_output_stream_writev_nonblocking(cast(pollable_output_stream_ptr), cast(vectors), gsize(n_vectors), cast(bytes_written), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
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
    var isWritable: Bool {
        /// Checks if `stream` can be written.
        /// 
        /// Note that some stream types may not be able to implement this 100%
        /// reliably, and it is possible that a call to `g_output_stream_write()`
        /// after this returns `true` would still block. To guarantee
        /// non-blocking behavior, you should always use
        /// `g_pollable_output_stream_write_nonblocking()`, which will return a
        /// `G_IO_ERROR_WOULD_BLOCK` error rather than blocking.
        get {
            let rv = g_pollable_output_stream_is_writable(cast(pollable_output_stream_ptr))
            return Bool(rv != 0)
        }
    }
}



// MARK: - Proxy Interface

/// The `ProxyProtocol` protocol exposes the methods and properties of an underlying `GProxy` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Proxy`.
/// Alternatively, use `ProxyRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GProxy` handles connecting to a remote host via a given type of
/// proxy server. It is implemented by the 'gio-proxy' extension point.
/// The extensions are named after their proxy protocol name. As an
/// example, a SOCKS5 proxy implementation can be retrieved with the
/// name 'socks5' using the function
/// `g_io_extension_point_get_extension_by_name()`.
public protocol ProxyProtocol {
    /// Untyped pointer to the underlying `GProxy` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GProxy` instance.
    var proxy_ptr: UnsafeMutablePointer<GProxy> { get }
}

/// The `ProxyRef` type acts as a lightweight Swift reference to an underlying `GProxy` instance.
/// It exposes methods that can operate on this data type through `ProxyProtocol` conformance.
/// Use `ProxyRef` only as an `unowned` reference to an existing `GProxy` instance.
///
/// A `GProxy` handles connecting to a remote host via a given type of
/// proxy server. It is implemented by the 'gio-proxy' extension point.
/// The extensions are named after their proxy protocol name. As an
/// example, a SOCKS5 proxy implementation can be retrieved with the
/// name 'socks5' using the function
/// `g_io_extension_point_get_extension_by_name()`.
public struct ProxyRef: ProxyProtocol {
    /// Untyped pointer to the underlying `GProxy` instance.
    /// For type-safe access, use the generated, typed pointer `proxy_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ProxyRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GProxy>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ProxyProtocol`
    init<T: ProxyProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Find the `gio-proxy` extension point for a proxy implementation that supports
    /// the specified protocol.
    static func getDefaultFor(protocol_: UnsafePointer<gchar>) -> ProxyRef! {
        let rv = g_proxy_get_default_for_protocol(protocol_)
        return rv.map { ProxyRef(cast($0)) }
    }
}

/// The `Proxy` type acts as an owner of an underlying `GProxy` instance.
/// It provides the methods that can operate on this data type through `ProxyProtocol` conformance.
/// Use `Proxy` as a strong reference or owner of a `GProxy` instance.
///
/// A `GProxy` handles connecting to a remote host via a given type of
/// proxy server. It is implemented by the 'gio-proxy' extension point.
/// The extensions are named after their proxy protocol name. As an
/// example, a SOCKS5 proxy implementation can be retrieved with the
/// name 'socks5' using the function
/// `g_io_extension_point_get_extension_by_name()`.
open class Proxy: ProxyProtocol {
    /// Untyped pointer to the underlying `GProxy` instance.
    /// For type-safe access, use the generated, typed pointer `proxy_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Proxy` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GProxy>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GProxy` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Proxy` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GProxy>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GProxy, cannot ref(cast(proxy_ptr))
    }

    /// Reference intialiser for a related type that implements `ProxyProtocol`
    /// `GProxy` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ProxyProtocol`
    public init<T: ProxyProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.proxy_ptr)
        // no reference counting for GProxy, cannot ref(cast(proxy_ptr))
    }

    /// Do-nothing destructor for`GProxy`.
    deinit {
        // no reference counting for GProxy, cannot unref(cast(proxy_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GProxy, cannot ref(cast(proxy_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GProxy, cannot ref(cast(proxy_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GProxy, cannot ref(cast(proxy_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GProxy, cannot ref(cast(proxy_ptr))
    }


    /// Find the `gio-proxy` extension point for a proxy implementation that supports
    /// the specified protocol.
    public static func getDefaultFor(protocol_: UnsafePointer<gchar>) -> Proxy! {
        let rv = g_proxy_get_default_for_protocol(protocol_)
        return rv.map { Proxy(cast($0)) }
    }

}

// MARK: - no Proxy properties

// MARK: - no signals


public extension ProxyProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GProxy` instance.
    var proxy_ptr: UnsafeMutablePointer<GProxy> { return ptr.assumingMemoryBound(to: GProxy.self) }

    /// Given `connection` to communicate with a proxy (eg, a
    /// `GSocketConnection` that is connected to the proxy server), this
    /// does the necessary handshake to connect to `proxy_address`, and if
    /// required, wraps the `GIOStream` to handle proxy payload.
    func connect(connection: IOStreamProtocol, proxyAddress proxy_address: ProxyAddressProtocol, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GIOStream>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_proxy_connect(cast(proxy_ptr), cast(connection.ptr), cast(proxy_address.ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Asynchronous version of `g_proxy_connect()`.
    func connectAsync(connection: IOStreamProtocol, proxyAddress proxy_address: ProxyAddressProtocol, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_proxy_connect_async(cast(proxy_ptr), cast(connection.ptr), cast(proxy_address.ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// See `g_proxy_connect()`.
    func connectFinish(result: AsyncResultProtocol) throws -> UnsafeMutablePointer<GIOStream>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_proxy_connect_finish(cast(proxy_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Some proxy protocols expect to be passed a hostname, which they
    /// will resolve to an IP address themselves. Others, like SOCKS4, do
    /// not allow this. This function will return `false` if `proxy` is
    /// implementing such a protocol. When `false` is returned, the caller
    /// should resolve the destination hostname first, and then pass a
    /// `GProxyAddress` containing the stringified IP address to
    /// `g_proxy_connect()` or `g_proxy_connect_async()`.
    func supportsHostname() -> Bool {
        let rv = g_proxy_supports_hostname(cast(proxy_ptr))
        return Bool(rv != 0)
    }
}



// MARK: - ProxyResolver Interface

/// The `ProxyResolverProtocol` protocol exposes the methods and properties of an underlying `GProxyResolver` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ProxyResolver`.
/// Alternatively, use `ProxyResolverRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GProxyResolver` provides synchronous and asynchronous network proxy
/// resolution. `GProxyResolver` is used within `GSocketClient` through
/// the method `g_socket_connectable_proxy_enumerate()`.
/// 
/// Implementations of `GProxyResolver` based on libproxy and GNOME settings can
/// be found in glib-networking. GIO comes with an implementation for use inside
/// Flatpak portals.
public protocol ProxyResolverProtocol {
    /// Untyped pointer to the underlying `GProxyResolver` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GProxyResolver` instance.
    var proxy_resolver_ptr: UnsafeMutablePointer<GProxyResolver> { get }
}

/// The `ProxyResolverRef` type acts as a lightweight Swift reference to an underlying `GProxyResolver` instance.
/// It exposes methods that can operate on this data type through `ProxyResolverProtocol` conformance.
/// Use `ProxyResolverRef` only as an `unowned` reference to an existing `GProxyResolver` instance.
///
/// `GProxyResolver` provides synchronous and asynchronous network proxy
/// resolution. `GProxyResolver` is used within `GSocketClient` through
/// the method `g_socket_connectable_proxy_enumerate()`.
/// 
/// Implementations of `GProxyResolver` based on libproxy and GNOME settings can
/// be found in glib-networking. GIO comes with an implementation for use inside
/// Flatpak portals.
public struct ProxyResolverRef: ProxyResolverProtocol {
    /// Untyped pointer to the underlying `GProxyResolver` instance.
    /// For type-safe access, use the generated, typed pointer `proxy_resolver_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ProxyResolverRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GProxyResolver>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ProxyResolverProtocol`
    init<T: ProxyResolverProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Gets the default `GProxyResolver` for the system.
    static func getDefault() -> ProxyResolverRef! {
        let rv = g_proxy_resolver_get_default()
        return rv.map { ProxyResolverRef(cast($0)) }
    }
}

/// The `ProxyResolver` type acts as an owner of an underlying `GProxyResolver` instance.
/// It provides the methods that can operate on this data type through `ProxyResolverProtocol` conformance.
/// Use `ProxyResolver` as a strong reference or owner of a `GProxyResolver` instance.
///
/// `GProxyResolver` provides synchronous and asynchronous network proxy
/// resolution. `GProxyResolver` is used within `GSocketClient` through
/// the method `g_socket_connectable_proxy_enumerate()`.
/// 
/// Implementations of `GProxyResolver` based on libproxy and GNOME settings can
/// be found in glib-networking. GIO comes with an implementation for use inside
/// Flatpak portals.
open class ProxyResolver: ProxyResolverProtocol {
    /// Untyped pointer to the underlying `GProxyResolver` instance.
    /// For type-safe access, use the generated, typed pointer `proxy_resolver_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ProxyResolver` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GProxyResolver>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GProxyResolver` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ProxyResolver` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GProxyResolver>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GProxyResolver, cannot ref(cast(proxy_resolver_ptr))
    }

    /// Reference intialiser for a related type that implements `ProxyResolverProtocol`
    /// `GProxyResolver` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ProxyResolverProtocol`
    public init<T: ProxyResolverProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.proxy_resolver_ptr)
        // no reference counting for GProxyResolver, cannot ref(cast(proxy_resolver_ptr))
    }

    /// Do-nothing destructor for`GProxyResolver`.
    deinit {
        // no reference counting for GProxyResolver, cannot unref(cast(proxy_resolver_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GProxyResolver, cannot ref(cast(proxy_resolver_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GProxyResolver, cannot ref(cast(proxy_resolver_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GProxyResolver, cannot ref(cast(proxy_resolver_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyResolverProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GProxyResolver, cannot ref(cast(proxy_resolver_ptr))
    }


    /// Gets the default `GProxyResolver` for the system.
    public static func getDefault() -> ProxyResolver! {
        let rv = g_proxy_resolver_get_default()
        return rv.map { ProxyResolver(cast($0)) }
    }

}

// MARK: - no ProxyResolver properties

// MARK: - no signals


public extension ProxyResolverProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GProxyResolver` instance.
    var proxy_resolver_ptr: UnsafeMutablePointer<GProxyResolver> { return ptr.assumingMemoryBound(to: GProxyResolver.self) }

    /// Looks into the system proxy configuration to determine what proxy,
    /// if any, to use to connect to `uri`. The returned proxy URIs are of
    /// the form `<protocol>://[user[:password]@]host:port` or
    /// `direct://`, where <protocol> could be http, rtsp, socks
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
    func lookup(uri: UnsafePointer<gchar>, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_proxy_resolver_lookup(cast(proxy_resolver_ptr), uri, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Asynchronous lookup of proxy. See `g_proxy_resolver_lookup()` for more
    /// details.
    func lookupAsync(uri: UnsafePointer<gchar>, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_proxy_resolver_lookup_async(cast(proxy_resolver_ptr), uri, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Call this function to obtain the array of proxy URIs when
    /// `g_proxy_resolver_lookup_async()` is complete. See
    /// `g_proxy_resolver_lookup()` for more details.
    func lookupFinish(result: AsyncResultProtocol) throws -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_proxy_resolver_lookup_finish(cast(proxy_resolver_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }
    /// Checks if `resolver` can be used on this system. (This is used
    /// internally; `g_proxy_resolver_get_default()` will only return a proxy
    /// resolver that returns `true` for this method.)
    var isSupported: Bool {
        /// Checks if `resolver` can be used on this system. (This is used
        /// internally; `g_proxy_resolver_get_default()` will only return a proxy
        /// resolver that returns `true` for this method.)
        get {
            let rv = g_proxy_resolver_is_supported(cast(proxy_resolver_ptr))
            return Bool(rv != 0)
        }
    }
}



// MARK: - RemoteActionGroup Interface

/// The `RemoteActionGroupProtocol` protocol exposes the methods and properties of an underlying `GRemoteActionGroup` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RemoteActionGroup`.
/// Alternatively, use `RemoteActionGroupRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
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
public protocol RemoteActionGroupProtocol: ActionGroupProtocol {
    /// Untyped pointer to the underlying `GRemoteActionGroup` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GRemoteActionGroup` instance.
    var remote_action_group_ptr: UnsafeMutablePointer<GRemoteActionGroup> { get }
}

/// The `RemoteActionGroupRef` type acts as a lightweight Swift reference to an underlying `GRemoteActionGroup` instance.
/// It exposes methods that can operate on this data type through `RemoteActionGroupProtocol` conformance.
/// Use `RemoteActionGroupRef` only as an `unowned` reference to an existing `GRemoteActionGroup` instance.
///
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
public struct RemoteActionGroupRef: RemoteActionGroupProtocol {
    /// Untyped pointer to the underlying `GRemoteActionGroup` instance.
    /// For type-safe access, use the generated, typed pointer `remote_action_group_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension RemoteActionGroupRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GRemoteActionGroup>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `RemoteActionGroupProtocol`
    init<T: RemoteActionGroupProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `RemoteActionGroup` type acts as an owner of an underlying `GRemoteActionGroup` instance.
/// It provides the methods that can operate on this data type through `RemoteActionGroupProtocol` conformance.
/// Use `RemoteActionGroup` as a strong reference or owner of a `GRemoteActionGroup` instance.
///
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
open class RemoteActionGroup: ActionGroup, RemoteActionGroupProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RemoteActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GRemoteActionGroup>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GRemoteActionGroup` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `RemoteActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GRemoteActionGroup>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `RemoteActionGroupProtocol`
    /// `GRemoteActionGroup` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `RemoteActionGroupProtocol`
    public init<T: RemoteActionGroupProtocol>(remoteActionGroup other: T) {
        super.init(retaining: cast(other.remote_action_group_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RemoteActionGroupProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: - no RemoteActionGroup properties

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

public extension RemoteActionGroupProtocol {
    /// Connect a `RemoteActionGroupSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: RemoteActionGroupSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(remote_action_group_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension RemoteActionGroupProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GRemoteActionGroup` instance.
    var remote_action_group_ptr: UnsafeMutablePointer<GRemoteActionGroup> { return ptr.assumingMemoryBound(to: GRemoteActionGroup.self) }

    /// Activates the remote action.
    /// 
    /// This is the same as `g_action_group_activate_action()` except that it
    /// allows for provision of "platform data" to be sent along with the
    /// activation request.  This typically contains details such as the user
    /// interaction timestamp or startup notification information.
    /// 
    /// `platform_data` must be non-`nil` and must have the type
    /// `G_VARIANT_TYPE_VARDICT`.  If it is floating, it will be consumed.
    func activateActionFull(actionName action_name: UnsafePointer<gchar>, parameter: VariantProtocol, platformData platform_data: VariantProtocol) {
        g_remote_action_group_activate_action_full(cast(remote_action_group_ptr), action_name, cast(parameter.ptr), cast(platform_data.ptr))
    
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
    func changeActionStateFull(actionName action_name: UnsafePointer<gchar>, value: VariantProtocol, platformData platform_data: VariantProtocol) {
        g_remote_action_group_change_action_state_full(cast(remote_action_group_ptr), action_name, cast(value.ptr), cast(platform_data.ptr))
    
    }
}



