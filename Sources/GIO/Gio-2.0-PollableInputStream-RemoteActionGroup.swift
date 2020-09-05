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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GPollableInputStream` instance.
    var pollable_input_stream_ptr: UnsafeMutablePointer<GPollableInputStream>! { get }

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
    @inlinable init(raw: UnsafeRawPointer) {
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
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableInputStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
    @inlinable @discardableResult func connect(signal kind: PollableInputStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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
    @inlinable func createSource<CancellableT: CancellableProtocol>(cancellable: CancellableT? = nil) -> SourceRef! {
        let rv = SourceRef(gconstpointer: gconstpointer(g_pollable_input_stream_create_source(pollable_input_stream_ptr, cancellable?.cancellable_ptr)))
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
    @inlinable func readNonblocking<CancellableT: CancellableProtocol>(buffer: UnsafeMutableRawPointer!, count: Int, cancellable: CancellableT? = nil) throws -> gssize {
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GPollableOutputStream` instance.
    var pollable_output_stream_ptr: UnsafeMutablePointer<GPollableOutputStream>! { get }

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
    @inlinable init(raw: UnsafeRawPointer) {
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
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PollableOutputStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
    @inlinable @discardableResult func connect(signal kind: PollableOutputStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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
    @inlinable func createSource<CancellableT: CancellableProtocol>(cancellable: CancellableT? = nil) -> SourceRef! {
        let rv = SourceRef(gconstpointer: gconstpointer(g_pollable_output_stream_create_source(pollable_output_stream_ptr, cancellable?.cancellable_ptr)))
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
    @inlinable func writeNonblocking<CancellableT: CancellableProtocol>(buffer: UnsafeMutableRawPointer!, count: Int, cancellable: CancellableT? = nil) throws -> gssize {
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
    @inlinable func writevNonblocking<CancellableT: CancellableProtocol>(vectors: UnsafePointer<GOutputVector>!, nVectors n_vectors: Int, bytesWritten bytes_written: UnsafeMutablePointer<gsize>! = nil, cancellable: CancellableT? = nil) throws -> GPollableReturn {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_pollable_output_stream_writev_nonblocking(pollable_output_stream_ptr, vectors, gsize(n_vectors), bytes_written, cancellable?.cancellable_ptr, &error)
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GProxy` instance.
    var proxy_ptr: UnsafeMutablePointer<GProxy>! { get }

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
    @inlinable init(raw: UnsafeRawPointer) {
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
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
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


// MARK: Proxy Interface: ProxyProtocol extension (methods and fields)
public extension ProxyProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GProxy` instance.
    @inlinable var proxy_ptr: UnsafeMutablePointer<GProxy>! { return ptr?.assumingMemoryBound(to: GProxy.self) }

    /// Given `connection` to communicate with a proxy (eg, a
    /// `GSocketConnection` that is connected to the proxy server), this
    /// does the necessary handshake to connect to `proxy_address`, and if
    /// required, wraps the `GIOStream` to handle proxy payload.
    @inlinable func connect<CancellableT: CancellableProtocol, IOStreamT: IOStreamProtocol, ProxyAddressT: ProxyAddressProtocol>(connection: IOStreamT, proxyAddress proxy_address: ProxyAddressT, cancellable: CancellableT? = nil) throws -> IOStreamRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = IOStreamRef(gconstpointer: gconstpointer(g_proxy_connect(proxy_ptr, connection.io_stream_ptr, proxy_address.proxy_address_ptr, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronous version of `g_proxy_connect()`.
    @inlinable func connectAsync<CancellableT: CancellableProtocol, IOStreamT: IOStreamProtocol, ProxyAddressT: ProxyAddressProtocol>(connection: IOStreamT, proxyAddress proxy_address: ProxyAddressT, cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
        g_proxy_connect_async(proxy_ptr, connection.io_stream_ptr, proxy_address.proxy_address_ptr, cancellable?.cancellable_ptr, callback, user_data)
    
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GProxyResolver` instance.
    var proxy_resolver_ptr: UnsafeMutablePointer<GProxyResolver>! { get }

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
    @inlinable init(raw: UnsafeRawPointer) {
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
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
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


// MARK: ProxyResolver Interface: ProxyResolverProtocol extension (methods and fields)
public extension ProxyResolverProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GProxyResolver` instance.
    @inlinable var proxy_resolver_ptr: UnsafeMutablePointer<GProxyResolver>! { return ptr?.assumingMemoryBound(to: GProxyResolver.self) }

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
    @inlinable func lookup<CancellableT: CancellableProtocol>(uri: UnsafePointer<gchar>!, cancellable: CancellableT? = nil) throws -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_proxy_resolver_lookup(proxy_resolver_ptr, uri, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronous lookup of proxy. See `g_proxy_resolver_lookup()` for more
    /// details.
    @inlinable func lookupAsync<CancellableT: CancellableProtocol>(uri: UnsafePointer<gchar>!, cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
        g_proxy_resolver_lookup_async(proxy_resolver_ptr, uri, cancellable?.cancellable_ptr, callback, user_data)
    
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GRemoteActionGroup` instance.
    var remote_action_group_ptr: UnsafeMutablePointer<GRemoteActionGroup>! { get }

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
    @inlinable init(raw: UnsafeRawPointer) {
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
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
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

public extension RemoteActionGroupProtocol {
    /// Connect a `RemoteActionGroupSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: RemoteActionGroupSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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
    @inlinable func activateActionFull<VariantT: VariantProtocol>(actionName action_name: UnsafePointer<gchar>!, parameter: VariantT? = nil, platformData platform_data: VariantT) {
        g_remote_action_group_activate_action_full(remote_action_group_ptr, action_name, parameter?.variant_ptr, platform_data.variant_ptr)
    
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
    @inlinable func changeActionStateFull<VariantT: VariantProtocol>(actionName action_name: UnsafePointer<gchar>!, value: VariantT, platformData platform_data: VariantT) {
        g_remote_action_group_change_action_state_full(remote_action_group_ptr, action_name, value.variant_ptr, platform_data.variant_ptr)
    
    }


}



