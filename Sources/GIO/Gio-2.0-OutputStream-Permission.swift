import CGLib
import GLib
import GLibObject

// MARK: - OutputStream Class

/// The `OutputStreamProtocol` protocol exposes the methods and properties of an underlying `GOutputStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `OutputStream`.
/// Alternatively, use `OutputStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GOutputStream` has functions to write to a stream (`g_output_stream_write()`),
/// to close a stream (`g_output_stream_close()`) and to flush pending writes
/// (`g_output_stream_flush()`).
/// 
/// To copy the content of an input stream to an output stream without
/// manually handling the reads and writes, use `g_output_stream_splice()`.
/// 
/// See the documentation for `GIOStream` for details of thread safety of
/// streaming APIs.
/// 
/// All of these functions have async variants too.
public protocol OutputStreamProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `GOutputStream` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GOutputStream` instance.
    var output_stream_ptr: UnsafeMutablePointer<GOutputStream> { get }
}

/// The `OutputStreamRef` type acts as a lightweight Swift reference to an underlying `GOutputStream` instance.
/// It exposes methods that can operate on this data type through `OutputStreamProtocol` conformance.
/// Use `OutputStreamRef` only as an `unowned` reference to an existing `GOutputStream` instance.
///
/// `GOutputStream` has functions to write to a stream (`g_output_stream_write()`),
/// to close a stream (`g_output_stream_close()`) and to flush pending writes
/// (`g_output_stream_flush()`).
/// 
/// To copy the content of an input stream to an output stream without
/// manually handling the reads and writes, use `g_output_stream_splice()`.
/// 
/// See the documentation for `GIOStream` for details of thread safety of
/// streaming APIs.
/// 
/// All of these functions have async variants too.
public struct OutputStreamRef: OutputStreamProtocol {
    /// Untyped pointer to the underlying `GOutputStream` instance.
    /// For type-safe access, use the generated, typed pointer `output_stream_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension OutputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GOutputStream>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `OutputStreamProtocol`
    init<T: OutputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `OutputStream` type acts as a reference-counted owner of an underlying `GOutputStream` instance.
/// It provides the methods that can operate on this data type through `OutputStreamProtocol` conformance.
/// Use `OutputStream` as a strong reference or owner of a `GOutputStream` instance.
///
/// `GOutputStream` has functions to write to a stream (`g_output_stream_write()`),
/// to close a stream (`g_output_stream_close()`) and to flush pending writes
/// (`g_output_stream_flush()`).
/// 
/// To copy the content of an input stream to an output stream without
/// manually handling the reads and writes, use `g_output_stream_splice()`.
/// 
/// See the documentation for `GIOStream` for details of thread safety of
/// streaming APIs.
/// 
/// All of these functions have async variants too.
open class OutputStream: Object, OutputStreamProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `OutputStream` instance.
    public init(_ op: UnsafeMutablePointer<GOutputStream>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `OutputStreamProtocol`
    /// Will retain `GOutputStream`.
    public convenience init<T: OutputStreamProtocol>(_ other: T) {
        self.init(cast(other.output_stream_ptr))
        g_object_ref(cast(output_stream_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GOutputStream.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GOutputStream.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GOutputStream.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GOutputStream>(opaquePointer))
    }



}

// MARK: - no OutputStream properties

public enum OutputStreamSignalName: String, SignalNameProtocol {
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
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"

}

public extension OutputStreamProtocol {
    /// Connect a `OutputStreamSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: OutputStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(output_stream_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension OutputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GOutputStream` instance.
    var output_stream_ptr: UnsafeMutablePointer<GOutputStream> { return ptr.assumingMemoryBound(to: GOutputStream.self) }

    /// Clears the pending flag on `stream`.
    func clearPending() {
        g_output_stream_clear_pending(cast(output_stream_ptr))
    
    }

    /// Closes the stream, releasing resources related to it.
    /// 
    /// Once the stream is closed, all other operations will return `G_IO_ERROR_CLOSED`.
    /// Closing a stream multiple times will not return an error.
    /// 
    /// Closing a stream will automatically flush any outstanding buffers in the
    /// stream.
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
    /// is important to check and report the error to the user, otherwise
    /// there might be a loss of data as all data might not be written.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    /// Cancelling a close will still leave the stream closed, but there some streams
    /// can use a faster close that doesn't block to e.g. check errors. On
    /// cancellation (as with any error) there is no guarantee that all written
    /// data will reach the target.
    func close(cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_output_stream_close(cast(output_stream_ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Requests an asynchronous close of the stream, releasing resources
    /// related to it. When the operation is finished `callback` will be
    /// called. You can then call `g_output_stream_close_finish()` to get
    /// the result of the operation.
    /// 
    /// For behaviour details see `g_output_stream_close()`.
    /// 
    /// The asynchronous methods have a default fallback that uses threads
    /// to implement asynchronicity, so they are optional for inheriting
    /// classes. However, if you override one you must override all.
    func closeAsync(ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_output_stream_close_async(cast(output_stream_ptr), io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Closes an output stream.
    func closeFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_output_stream_close_finish(cast(output_stream_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Forces a write of all user-space buffered data for the given
    /// `stream`. Will block during the operation. Closing the stream will
    /// implicitly cause a flush.
    /// 
    /// This function is optional for inherited classes.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    func flush(cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_output_stream_flush(cast(output_stream_ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Forces an asynchronous write of all user-space buffered data for
    /// the given `stream`.
    /// For behaviour details see `g_output_stream_flush()`.
    /// 
    /// When the operation is finished `callback` will be
    /// called. You can then call `g_output_stream_flush_finish()` to get the
    /// result of the operation.
    func flushAsync(ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_output_stream_flush_async(cast(output_stream_ptr), io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes flushing an output stream.
    func flushFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_output_stream_flush_finish(cast(output_stream_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Checks if an output stream has pending actions.
    func hasPending() -> Bool {
        let rv = g_output_stream_has_pending(cast(output_stream_ptr))
        return Bool(rv != 0)
    }


    // *** printf() is not available because it has a varargs (...) parameter!


    /// Sets `stream` to have actions pending. If the pending flag is
    /// already set or `stream` is closed, it will return `false` and set
    /// `error`.
    func setPending() throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_output_stream_set_pending(cast(output_stream_ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Splices an input stream into an output stream.
    func splice(source: InputStreamProtocol, flags: OutputStreamSpliceFlags, cancellable: CancellableProtocol) throws -> gssize {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_output_stream_splice(cast(output_stream_ptr), cast(source.ptr), flags, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }

    /// Splices a stream asynchronously.
    /// When the operation is finished `callback` will be called.
    /// You can then call `g_output_stream_splice_finish()` to get the
    /// result of the operation.
    /// 
    /// For the synchronous, blocking version of this function, see
    /// `g_output_stream_splice()`.
    func spliceAsync(source: InputStreamProtocol, flags: OutputStreamSpliceFlags, ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_output_stream_splice_async(cast(output_stream_ptr), cast(source.ptr), flags, io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an asynchronous stream splice operation.
    func spliceFinish(result: AsyncResultProtocol) throws -> gssize {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_output_stream_splice_finish(cast(output_stream_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }

    /// This is a utility function around `g_output_stream_write_all()`. It
    /// uses `g_strdup_vprintf()` to turn `format` and `args` into a string that
    /// is then written to `stream`.
    /// 
    /// See the documentation of `g_output_stream_write_all()` about the
    /// behavior of the actual write operation.
    /// 
    /// Note that partial writes cannot be properly checked with this
    /// function due to the variable length of the written string, if you
    /// need precise control over partial write failures, you need to
    /// create you own `printf()`-like wrapper around `g_output_stream_write()`
    /// or `g_output_stream_write_all()`.
    func vprintf(bytesWritten bytes_written: UnsafeMutablePointer<Int>, cancellable: CancellableProtocol, error: ErrorTypeProtocol, format: UnsafePointer<gchar>, args: CVaListPointer) -> Bool {
        let rv = g_output_stream_vprintf(cast(output_stream_ptr), cast(bytes_written), cast(cancellable.ptr), cast(error.ptr), format, args)
        return Bool(rv != 0)
    }

    /// Tries to write `count` bytes from `buffer` into the stream. Will block
    /// during the operation.
    /// 
    /// If count is 0, returns 0 and does nothing. A value of `count`
    /// larger than `G_MAXSSIZE` will cause a `G_IO_ERROR_INVALID_ARGUMENT` error.
    /// 
    /// On success, the number of bytes written to the stream is returned.
    /// It is not an error if this is not the same as the requested size, as it
    /// can happen e.g. on a partial I/O error, or if there is not enough
    /// storage in the stream. All writes block until at least one byte
    /// is written or an error occurs; 0 is never returned (unless
    /// `count` is 0).
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned. If an
    /// operation was partially finished when the operation was cancelled the
    /// partial result will be returned, without an error.
    /// 
    /// On error -1 is returned and `error` is set accordingly.
    func write(buffer: UnsafeMutableRawPointer, count: Int, cancellable: CancellableProtocol) throws -> gssize {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_output_stream_write(cast(output_stream_ptr), cast(buffer), gsize(count), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }

    /// Tries to write `count` bytes from `buffer` into the stream. Will block
    /// during the operation.
    /// 
    /// This function is similar to `g_output_stream_write()`, except it tries to
    /// write as many bytes as requested, only stopping on an error.
    /// 
    /// On a successful write of `count` bytes, `true` is returned, and `bytes_written`
    /// is set to `count`.
    /// 
    /// If there is an error during the operation `false` is returned and `error`
    /// is set to indicate the error status.
    /// 
    /// As a special exception to the normal conventions for functions that
    /// use `GError`, if this function returns `false` (and sets `error`) then
    /// `bytes_written` will be set to the number of bytes that were
    /// successfully written before the error was encountered.  This
    /// functionality is only available from C.  If you need it from another
    /// language then you must write your own loop around
    /// `g_output_stream_write()`.
    func writeAll(buffer: UnsafeMutableRawPointer, count: Int, bytesWritten bytes_written: UnsafeMutablePointer<Int>, cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_output_stream_write_all(cast(output_stream_ptr), cast(buffer), gsize(count), cast(bytes_written), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Request an asynchronous write of `count` bytes from `buffer` into
    /// the stream. When the operation is finished `callback` will be called.
    /// You can then call `g_output_stream_write_all_finish()` to get the result of the
    /// operation.
    /// 
    /// This is the asynchronous version of `g_output_stream_write_all()`.
    /// 
    /// Call `g_output_stream_write_all_finish()` to collect the result.
    /// 
    /// Any outstanding I/O request with higher priority (lower numerical
    /// value) will be executed before an outstanding request with lower
    /// priority. Default priority is `G_PRIORITY_DEFAULT`.
    /// 
    /// Note that no copy of `buffer` will be made, so it must stay valid
    /// until `callback` is called.
    func writeAllAsync(buffer: UnsafeMutableRawPointer, count: Int, ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_output_stream_write_all_async(cast(output_stream_ptr), cast(buffer), gsize(count), io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an asynchronous stream write operation started with
    /// `g_output_stream_write_all_async()`.
    /// 
    /// As a special exception to the normal conventions for functions that
    /// use `GError`, if this function returns `false` (and sets `error`) then
    /// `bytes_written` will be set to the number of bytes that were
    /// successfully written before the error was encountered.  This
    /// functionality is only available from C.  If you need it from another
    /// language then you must write your own loop around
    /// `g_output_stream_write_async()`.
    func writeAllFinish(result: AsyncResultProtocol, bytesWritten bytes_written: UnsafeMutablePointer<Int>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_output_stream_write_all_finish(cast(output_stream_ptr), cast(result.ptr), cast(bytes_written), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Request an asynchronous write of `count` bytes from `buffer` into
    /// the stream. When the operation is finished `callback` will be called.
    /// You can then call `g_output_stream_write_finish()` to get the result of the
    /// operation.
    /// 
    /// During an async request no other sync and async calls are allowed,
    /// and will result in `G_IO_ERROR_PENDING` errors.
    /// 
    /// A value of `count` larger than `G_MAXSSIZE` will cause a
    /// `G_IO_ERROR_INVALID_ARGUMENT` error.
    /// 
    /// On success, the number of bytes written will be passed to the
    /// `callback`. It is not an error if this is not the same as the
    /// requested size, as it can happen e.g. on a partial I/O error,
    /// but generally we try to write as many bytes as requested.
    /// 
    /// You are guaranteed that this method will never fail with
    /// `G_IO_ERROR_WOULD_BLOCK` - if `stream` can't accept more data, the
    /// method will just wait until this changes.
    /// 
    /// Any outstanding I/O request with higher priority (lower numerical
    /// value) will be executed before an outstanding request with lower
    /// priority. Default priority is `G_PRIORITY_DEFAULT`.
    /// 
    /// The asynchronous methods have a default fallback that uses threads
    /// to implement asynchronicity, so they are optional for inheriting
    /// classes. However, if you override one you must override all.
    /// 
    /// For the synchronous, blocking version of this function, see
    /// `g_output_stream_write()`.
    /// 
    /// Note that no copy of `buffer` will be made, so it must stay valid
    /// until `callback` is called. See `g_output_stream_write_bytes_async()`
    /// for a `GBytes` version that will automatically hold a reference to
    /// the contents (without copying) for the duration of the call.
    func writeAsync(buffer: UnsafeMutableRawPointer, count: Int, ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_output_stream_write_async(cast(output_stream_ptr), cast(buffer), gsize(count), io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// A wrapper function for `g_output_stream_write()` which takes a
    /// `GBytes` as input.  This can be more convenient for use by language
    /// bindings or in other cases where the refcounted nature of `GBytes`
    /// is helpful over a bare pointer interface.
    /// 
    /// However, note that this function may still perform partial writes,
    /// just like `g_output_stream_write()`.  If that occurs, to continue
    /// writing, you will need to create a new `GBytes` containing just the
    /// remaining bytes, using `g_bytes_new_from_bytes()`. Passing the same
    /// `GBytes` instance multiple times potentially can result in duplicated
    /// data in the output stream.
    func write(bytes: BytesProtocol, cancellable: CancellableProtocol) throws -> gssize {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_output_stream_write_bytes(cast(output_stream_ptr), cast(bytes.ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }

    /// This function is similar to `g_output_stream_write_async()`, but
    /// takes a `GBytes` as input.  Due to the refcounted nature of `GBytes`,
    /// this allows the stream to avoid taking a copy of the data.
    /// 
    /// However, note that this function may still perform partial writes,
    /// just like `g_output_stream_write_async()`. If that occurs, to continue
    /// writing, you will need to create a new `GBytes` containing just the
    /// remaining bytes, using `g_bytes_new_from_bytes()`. Passing the same
    /// `GBytes` instance multiple times potentially can result in duplicated
    /// data in the output stream.
    /// 
    /// For the synchronous, blocking version of this function, see
    /// `g_output_stream_write_bytes()`.
    func writeBytesAsync(bytes: BytesProtocol, ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_output_stream_write_bytes_async(cast(output_stream_ptr), cast(bytes.ptr), io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes a stream write-from-`GBytes` operation.
    func writeBytesFinish(result: AsyncResultProtocol) throws -> gssize {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_output_stream_write_bytes_finish(cast(output_stream_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }

    /// Finishes a stream write operation.
    func writeFinish(result: AsyncResultProtocol) throws -> gssize {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_output_stream_write_finish(cast(output_stream_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }

    /// Tries to write the bytes contained in the `n_vectors` `vectors` into the
    /// stream. Will block during the operation.
    /// 
    /// If `n_vectors` is 0 or the sum of all bytes in `vectors` is 0, returns 0 and
    /// does nothing.
    /// 
    /// On success, the number of bytes written to the stream is returned.
    /// It is not an error if this is not the same as the requested size, as it
    /// can happen e.g. on a partial I/O error, or if there is not enough
    /// storage in the stream. All writes block until at least one byte
    /// is written or an error occurs; 0 is never returned (unless
    /// `n_vectors` is 0 or the sum of all bytes in `vectors` is 0).
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned. If an
    /// operation was partially finished when the operation was cancelled the
    /// partial result will be returned, without an error.
    /// 
    /// Some implementations of `g_output_stream_writev()` may have limitations on the
    /// aggregate buffer size, and will return `G_IO_ERROR_INVALID_ARGUMENT` if these
    /// are exceeded. For example, when writing to a local file on UNIX platforms,
    /// the aggregate buffer size must not exceed `G_MAXSSIZE` bytes.
    func writev(vectors: UnsafePointer<GOutputVector>, nVectors n_vectors: Int, bytesWritten bytes_written: UnsafeMutablePointer<Int>, cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_output_stream_writev(cast(output_stream_ptr), cast(vectors), gsize(n_vectors), cast(bytes_written), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Tries to write the bytes contained in the `n_vectors` `vectors` into the
    /// stream. Will block during the operation.
    /// 
    /// This function is similar to `g_output_stream_writev()`, except it tries to
    /// write as many bytes as requested, only stopping on an error.
    /// 
    /// On a successful write of all `n_vectors` vectors, `true` is returned, and
    /// `bytes_written` is set to the sum of all the sizes of `vectors`.
    /// 
    /// If there is an error during the operation `false` is returned and `error`
    /// is set to indicate the error status.
    /// 
    /// As a special exception to the normal conventions for functions that
    /// use `GError`, if this function returns `false` (and sets `error`) then
    /// `bytes_written` will be set to the number of bytes that were
    /// successfully written before the error was encountered.  This
    /// functionality is only available from C. If you need it from another
    /// language then you must write your own loop around
    /// `g_output_stream_write()`.
    /// 
    /// The content of the individual elements of `vectors` might be changed by this
    /// function.
    func writevAll(vectors: UnsafeMutablePointer<GOutputVector>, nVectors n_vectors: Int, bytesWritten bytes_written: UnsafeMutablePointer<Int>, cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_output_stream_writev_all(cast(output_stream_ptr), cast(vectors), gsize(n_vectors), cast(bytes_written), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Request an asynchronous write of the bytes contained in the `n_vectors` `vectors` into
    /// the stream. When the operation is finished `callback` will be called.
    /// You can then call `g_output_stream_writev_all_finish()` to get the result of the
    /// operation.
    /// 
    /// This is the asynchronous version of `g_output_stream_writev_all()`.
    /// 
    /// Call `g_output_stream_writev_all_finish()` to collect the result.
    /// 
    /// Any outstanding I/O request with higher priority (lower numerical
    /// value) will be executed before an outstanding request with lower
    /// priority. Default priority is `G_PRIORITY_DEFAULT`.
    /// 
    /// Note that no copy of `vectors` will be made, so it must stay valid
    /// until `callback` is called. The content of the individual elements
    /// of `vectors` might be changed by this function.
    func writevAllAsync(vectors: UnsafeMutablePointer<GOutputVector>, nVectors n_vectors: Int, ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_output_stream_writev_all_async(cast(output_stream_ptr), cast(vectors), gsize(n_vectors), io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an asynchronous stream write operation started with
    /// `g_output_stream_writev_all_async()`.
    /// 
    /// As a special exception to the normal conventions for functions that
    /// use `GError`, if this function returns `false` (and sets `error`) then
    /// `bytes_written` will be set to the number of bytes that were
    /// successfully written before the error was encountered.  This
    /// functionality is only available from C.  If you need it from another
    /// language then you must write your own loop around
    /// `g_output_stream_writev_async()`.
    func writevAllFinish(result: AsyncResultProtocol, bytesWritten bytes_written: UnsafeMutablePointer<Int>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_output_stream_writev_all_finish(cast(output_stream_ptr), cast(result.ptr), cast(bytes_written), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Request an asynchronous write of the bytes contained in `n_vectors` `vectors` into
    /// the stream. When the operation is finished `callback` will be called.
    /// You can then call `g_output_stream_writev_finish()` to get the result of the
    /// operation.
    /// 
    /// During an async request no other sync and async calls are allowed,
    /// and will result in `G_IO_ERROR_PENDING` errors.
    /// 
    /// On success, the number of bytes written will be passed to the
    /// `callback`. It is not an error if this is not the same as the
    /// requested size, as it can happen e.g. on a partial I/O error,
    /// but generally we try to write as many bytes as requested.
    /// 
    /// You are guaranteed that this method will never fail with
    /// `G_IO_ERROR_WOULD_BLOCK` — if `stream` can't accept more data, the
    /// method will just wait until this changes.
    /// 
    /// Any outstanding I/O request with higher priority (lower numerical
    /// value) will be executed before an outstanding request with lower
    /// priority. Default priority is `G_PRIORITY_DEFAULT`.
    /// 
    /// The asynchronous methods have a default fallback that uses threads
    /// to implement asynchronicity, so they are optional for inheriting
    /// classes. However, if you override one you must override all.
    /// 
    /// For the synchronous, blocking version of this function, see
    /// `g_output_stream_writev()`.
    /// 
    /// Note that no copy of `vectors` will be made, so it must stay valid
    /// until `callback` is called.
    func writevAsync(vectors: UnsafePointer<GOutputVector>, nVectors n_vectors: Int, ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_output_stream_writev_async(cast(output_stream_ptr), cast(vectors), gsize(n_vectors), io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes a stream writev operation.
    func writevFinish(result: AsyncResultProtocol, bytesWritten bytes_written: UnsafeMutablePointer<Int>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_output_stream_writev_finish(cast(output_stream_ptr), cast(result.ptr), cast(bytes_written), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Tries to write to `stream`, as with `g_output_stream_write()` (if
    /// `blocking` is `true`) or `g_pollable_output_stream_write_nonblocking()`
    /// (if `blocking` is `false`). This can be used to more easily share
    /// code between blocking and non-blocking implementations of a method.
    /// 
    /// If `blocking` is `false`, then `stream` must be a
    /// `GPollableOutputStream` for which
    /// `g_pollable_output_stream_can_poll()` returns `true` or else the
    /// behavior is undefined. If `blocking` is `true`, then `stream` does not
    /// need to be a `GPollableOutputStream`.
    func pollableStreamWrite(buffer: UnsafeMutableRawPointer, count: Int, blocking: Bool, cancellable: CancellableProtocol) throws -> gssize {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_pollable_stream_write(cast(output_stream_ptr), cast(buffer), gsize(count), gboolean(blocking ? 1 : 0), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }

    /// Tries to write `count` bytes to `stream`, as with
    /// `g_output_stream_write_all()`, but using `g_pollable_stream_write()`
    /// rather than `g_output_stream_write()`.
    /// 
    /// On a successful write of `count` bytes, `true` is returned, and
    /// `bytes_written` is set to `count`.
    /// 
    /// If there is an error during the operation (including
    /// `G_IO_ERROR_WOULD_BLOCK` in the non-blocking case), `false` is
    /// returned and `error` is set to indicate the error status,
    /// `bytes_written` is updated to contain the number of bytes written
    /// into the stream before the error occurred.
    /// 
    /// As with `g_pollable_stream_write()`, if `blocking` is `false`, then
    /// `stream` must be a `GPollableOutputStream` for which
    /// `g_pollable_output_stream_can_poll()` returns `true` or else the
    /// behavior is undefined. If `blocking` is `true`, then `stream` does not
    /// need to be a `GPollableOutputStream`.
    func pollableStreamWriteAll(buffer: UnsafeMutableRawPointer, count: Int, blocking: Bool, bytesWritten bytes_written: UnsafeMutablePointer<Int>, cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_pollable_stream_write_all(cast(output_stream_ptr), cast(buffer), gsize(count), gboolean(blocking ? 1 : 0), cast(bytes_written), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }
    /// Checks if an output stream has already been closed.
    var isClosed: Bool {
        /// Checks if an output stream has already been closed.
        get {
            let rv = g_output_stream_is_closed(cast(output_stream_ptr))
            return Bool(rv != 0)
        }
    }

    /// Checks if an output stream is being closed. This can be
    /// used inside e.g. a flush implementation to see if the
    /// flush (or other i/o operation) is called from within
    /// the closing operation.
    var isClosing: Bool {
        /// Checks if an output stream is being closed. This can be
        /// used inside e.g. a flush implementation to see if the
        /// flush (or other i/o operation) is called from within
        /// the closing operation.
        get {
            let rv = g_output_stream_is_closing(cast(output_stream_ptr))
            return Bool(rv != 0)
        }
    }
}



// MARK: - Permission Class

/// The `PermissionProtocol` protocol exposes the methods and properties of an underlying `GPermission` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Permission`.
/// Alternatively, use `PermissionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GPermission` represents the status of the caller's permission to
/// perform a certain action.
/// 
/// You can query if the action is currently allowed and if it is
/// possible to acquire the permission so that the action will be allowed
/// in the future.
/// 
/// There is also an API to actually acquire the permission and one to
/// release it.
/// 
/// As an example, a `GPermission` might represent the ability for the
/// user to write to a `GSettings` object.  This `GPermission` object could
/// then be used to decide if it is appropriate to show a "Click here to
/// unlock" button in a dialog and to provide the mechanism to invoke
/// when that button is clicked.
public protocol PermissionProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `GPermission` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GPermission` instance.
    var permission_ptr: UnsafeMutablePointer<GPermission> { get }
}

/// The `PermissionRef` type acts as a lightweight Swift reference to an underlying `GPermission` instance.
/// It exposes methods that can operate on this data type through `PermissionProtocol` conformance.
/// Use `PermissionRef` only as an `unowned` reference to an existing `GPermission` instance.
///
/// A `GPermission` represents the status of the caller's permission to
/// perform a certain action.
/// 
/// You can query if the action is currently allowed and if it is
/// possible to acquire the permission so that the action will be allowed
/// in the future.
/// 
/// There is also an API to actually acquire the permission and one to
/// release it.
/// 
/// As an example, a `GPermission` might represent the ability for the
/// user to write to a `GSettings` object.  This `GPermission` object could
/// then be used to decide if it is appropriate to show a "Click here to
/// unlock" button in a dialog and to provide the mechanism to invoke
/// when that button is clicked.
public struct PermissionRef: PermissionProtocol {
    /// Untyped pointer to the underlying `GPermission` instance.
    /// For type-safe access, use the generated, typed pointer `permission_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PermissionRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GPermission>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PermissionProtocol`
    init<T: PermissionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Permission` type acts as a reference-counted owner of an underlying `GPermission` instance.
/// It provides the methods that can operate on this data type through `PermissionProtocol` conformance.
/// Use `Permission` as a strong reference or owner of a `GPermission` instance.
///
/// A `GPermission` represents the status of the caller's permission to
/// perform a certain action.
/// 
/// You can query if the action is currently allowed and if it is
/// possible to acquire the permission so that the action will be allowed
/// in the future.
/// 
/// There is also an API to actually acquire the permission and one to
/// release it.
/// 
/// As an example, a `GPermission` might represent the ability for the
/// user to write to a `GSettings` object.  This `GPermission` object could
/// then be used to decide if it is appropriate to show a "Click here to
/// unlock" button in a dialog and to provide the mechanism to invoke
/// when that button is clicked.
open class Permission: Object, PermissionProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Permission` instance.
    public init(_ op: UnsafeMutablePointer<GPermission>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `PermissionProtocol`
    /// Will retain `GPermission`.
    public convenience init<T: PermissionProtocol>(_ other: T) {
        self.init(cast(other.permission_ptr))
        g_object_ref(cast(permission_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GPermission.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GPermission.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GPermission.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GPermission>(opaquePointer))
    }



}

public enum PermissionPropertyName: String, PropertyNameProtocol {
    /// `true` if the caller currently has permission to perform the action that
    /// `permission` represents the permission to perform.
    case allowed = "allowed"
    /// `true` if it is generally possible to acquire the permission by calling
    /// `g_permission_acquire()`.
    case canAcquire = "can-acquire"
    /// `true` if it is generally possible to release the permission by calling
    /// `g_permission_release()`.
    case canRelease = "can-release"
}

public extension PermissionProtocol {
    /// Bind a `PermissionPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: PermissionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(permission_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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
}

public enum PermissionSignalName: String, SignalNameProtocol {
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
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// `true` if the caller currently has permission to perform the action that
    /// `permission` represents the permission to perform.
    case notifyAllowed = "notify::allowed"
    /// `true` if it is generally possible to acquire the permission by calling
    /// `g_permission_acquire()`.
    case notifyCanAcquire = "notify::can-acquire"
    /// `true` if it is generally possible to release the permission by calling
    /// `g_permission_release()`.
    case notifyCanRelease = "notify::can-release"
}

public extension PermissionProtocol {
    /// Connect a `PermissionSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: PermissionSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(permission_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension PermissionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GPermission` instance.
    var permission_ptr: UnsafeMutablePointer<GPermission> { return ptr.assumingMemoryBound(to: GPermission.self) }

    /// Attempts to acquire the permission represented by `permission`.
    /// 
    /// The precise method by which this happens depends on the permission
    /// and the underlying authentication mechanism.  A simple example is
    /// that a dialog may appear asking the user to enter their password.
    /// 
    /// You should check with `g_permission_get_can_acquire()` before calling
    /// this function.
    /// 
    /// If the permission is acquired then `true` is returned.  Otherwise,
    /// `false` is returned and `error` is set appropriately.
    /// 
    /// This call is blocking, likely for a very long time (in the case that
    /// user interaction is required).  See `g_permission_acquire_async()` for
    /// the non-blocking version.
    func acquire(cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_permission_acquire(cast(permission_ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Attempts to acquire the permission represented by `permission`.
    /// 
    /// This is the first half of the asynchronous version of
    /// `g_permission_acquire()`.
    func acquireAsync(cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_permission_acquire_async(cast(permission_ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Collects the result of attempting to acquire the permission
    /// represented by `permission`.
    /// 
    /// This is the second half of the asynchronous version of
    /// `g_permission_acquire()`.
    func acquireFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_permission_acquire_finish(cast(permission_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Gets the value of the 'allowed' property.  This property is `true` if
    /// the caller currently has permission to perform the action that
    /// `permission` represents the permission to perform.
    func getAllowed() -> Bool {
        let rv = g_permission_get_allowed(cast(permission_ptr))
        return Bool(rv != 0)
    }

    /// Gets the value of the 'can-acquire' property.  This property is `true`
    /// if it is generally possible to acquire the permission by calling
    /// `g_permission_acquire()`.
    func getCanAcquire() -> Bool {
        let rv = g_permission_get_can_acquire(cast(permission_ptr))
        return Bool(rv != 0)
    }

    /// Gets the value of the 'can-release' property.  This property is `true`
    /// if it is generally possible to release the permission by calling
    /// `g_permission_release()`.
    func getCanRelease() -> Bool {
        let rv = g_permission_get_can_release(cast(permission_ptr))
        return Bool(rv != 0)
    }

    /// This function is called by the `GPermission` implementation to update
    /// the properties of the permission.  You should never call this
    /// function except from a `GPermission` implementation.
    /// 
    /// GObject notify signals are generated, as appropriate.
    func implUpdate(allowed: Bool, canAcquire can_acquire: Bool, canRelease can_release: Bool) {
        g_permission_impl_update(cast(permission_ptr), gboolean(allowed ? 1 : 0), gboolean(can_acquire ? 1 : 0), gboolean(can_release ? 1 : 0))
    
    }

    /// Attempts to release the permission represented by `permission`.
    /// 
    /// The precise method by which this happens depends on the permission
    /// and the underlying authentication mechanism.  In most cases the
    /// permission will be dropped immediately without further action.
    /// 
    /// You should check with `g_permission_get_can_release()` before calling
    /// this function.
    /// 
    /// If the permission is released then `true` is returned.  Otherwise,
    /// `false` is returned and `error` is set appropriately.
    /// 
    /// This call is blocking, likely for a very long time (in the case that
    /// user interaction is required).  See `g_permission_release_async()` for
    /// the non-blocking version.
    func release(cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_permission_release(cast(permission_ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Attempts to release the permission represented by `permission`.
    /// 
    /// This is the first half of the asynchronous version of
    /// `g_permission_release()`.
    func releaseAsync(cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_permission_release_async(cast(permission_ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Collects the result of attempting to release the permission
    /// represented by `permission`.
    /// 
    /// This is the second half of the asynchronous version of
    /// `g_permission_release()`.
    func releaseFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_permission_release_finish(cast(permission_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }
    /// `true` if the caller currently has permission to perform the action that
    /// `permission` represents the permission to perform.
    var allowed: Bool {
        /// Gets the value of the 'allowed' property.  This property is `true` if
        /// the caller currently has permission to perform the action that
        /// `permission` represents the permission to perform.
        get {
            let rv = g_permission_get_allowed(cast(permission_ptr))
            return Bool(rv != 0)
        }
    }

    /// Gets the value of the 'can-acquire' property.  This property is `true`
    /// if it is generally possible to acquire the permission by calling
    /// `g_permission_acquire()`.
    var canAcquire: Bool {
        /// Gets the value of the 'can-acquire' property.  This property is `true`
        /// if it is generally possible to acquire the permission by calling
        /// `g_permission_acquire()`.
        get {
            let rv = g_permission_get_can_acquire(cast(permission_ptr))
            return Bool(rv != 0)
        }
    }

    /// Gets the value of the 'can-release' property.  This property is `true`
    /// if it is generally possible to release the permission by calling
    /// `g_permission_release()`.
    var canRelease: Bool {
        /// Gets the value of the 'can-release' property.  This property is `true`
        /// if it is generally possible to release the permission by calling
        /// `g_permission_release()`.
        get {
            let rv = g_permission_get_can_release(cast(permission_ptr))
            return Bool(rv != 0)
        }
    }
}



