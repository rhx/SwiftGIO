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
public protocol OutputStreamProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GOutputStream` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GOutputStream` instance.
    var output_stream_ptr: UnsafeMutablePointer<GOutputStream>! { get }

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
public struct OutputStreamRef: OutputStreamProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GOutputStream` instance.
    /// For type-safe access, use the generated, typed pointer `output_stream_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension OutputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GOutputStream>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GOutputStream>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GOutputStream>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GOutputStream>?) {
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

    /// Reference intialiser for a related type that implements `OutputStreamProtocol`
    @inlinable init<T: OutputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: OutputStreamProtocol>(_ other: T) -> OutputStreamRef { OutputStreamRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
open class OutputStream: GLibObject.Object, OutputStreamProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GOutputStream>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GOutputStream>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OutputStream` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GOutputStream>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `OutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GOutputStream>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GOutputStream`.
    /// i.e., ownership is transferred to the `OutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GOutputStream>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `OutputStreamProtocol`
    /// Will retain `GOutputStream`.
    /// - Parameter other: an instance of a related type that implements `OutputStreamProtocol`
    @inlinable public init<T: OutputStreamProtocol>(outputStream other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OutputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no OutputStream properties

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
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"

}

// MARK: OutputStream has no signals
// MARK: OutputStream Class: OutputStreamProtocol extension (methods and fields)
public extension OutputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GOutputStream` instance.
    @inlinable var output_stream_ptr: UnsafeMutablePointer<GOutputStream>! { return ptr?.assumingMemoryBound(to: GOutputStream.self) }

    /// Clears the pending flag on `stream`.
    @inlinable func clearPending() {
        g_output_stream_clear_pending(output_stream_ptr)
    
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
    @inlinable func close(cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_output_stream_close(output_stream_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func close<CancellableT: CancellableProtocol>(cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_output_stream_close(output_stream_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func closeAsync(ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_output_stream_close_async(output_stream_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
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
    @inlinable func closeAsync<CancellableT: CancellableProtocol>(ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_output_stream_close_async(output_stream_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Closes an output stream.
    @inlinable func closeFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_output_stream_close_finish(output_stream_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func flush(cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_output_stream_flush(output_stream_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func flush<CancellableT: CancellableProtocol>(cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_output_stream_flush(output_stream_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Forces an asynchronous write of all user-space buffered data for
    /// the given `stream`.
    /// For behaviour details see `g_output_stream_flush()`.
    /// 
    /// When the operation is finished `callback` will be
    /// called. You can then call `g_output_stream_flush_finish()` to get the
    /// result of the operation.
    @inlinable func flushAsync(ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_output_stream_flush_async(output_stream_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Forces an asynchronous write of all user-space buffered data for
    /// the given `stream`.
    /// For behaviour details see `g_output_stream_flush()`.
    /// 
    /// When the operation is finished `callback` will be
    /// called. You can then call `g_output_stream_flush_finish()` to get the
    /// result of the operation.
    @inlinable func flushAsync<CancellableT: CancellableProtocol>(ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_output_stream_flush_async(output_stream_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes flushing an output stream.
    @inlinable func flushFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_output_stream_flush_finish(output_stream_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Checks if an output stream has pending actions.
    @inlinable func hasPending() -> Bool {
        let rv = ((g_output_stream_has_pending(output_stream_ptr)) != 0)
        return rv
    }


    // *** printf() is not available because it has a varargs (...) parameter!


    /// Sets `stream` to have actions pending. If the pending flag is
    /// already set or `stream` is closed, it will return `false` and set
    /// `error`.
    @inlinable func setPending() throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_output_stream_set_pending(output_stream_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Splices an input stream into an output stream.
    @inlinable func splice<InputStreamT: InputStreamProtocol>(source: InputStreamT, flags: OutputStreamSpliceFlags, cancellable: CancellableRef? = nil) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_output_stream_splice(output_stream_ptr, source.input_stream_ptr, flags.value, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Splices an input stream into an output stream.
    @inlinable func splice<CancellableT: CancellableProtocol, InputStreamT: InputStreamProtocol>(source: InputStreamT, flags: OutputStreamSpliceFlags, cancellable: CancellableT?) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_output_stream_splice(output_stream_ptr, source.input_stream_ptr, flags.value, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Splices a stream asynchronously.
    /// When the operation is finished `callback` will be called.
    /// You can then call `g_output_stream_splice_finish()` to get the
    /// result of the operation.
    /// 
    /// For the synchronous, blocking version of this function, see
    /// `g_output_stream_splice()`.
    @inlinable func spliceAsync<InputStreamT: InputStreamProtocol>(source: InputStreamT, flags: OutputStreamSpliceFlags, ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_output_stream_splice_async(output_stream_ptr, source.input_stream_ptr, flags.value, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Splices a stream asynchronously.
    /// When the operation is finished `callback` will be called.
    /// You can then call `g_output_stream_splice_finish()` to get the
    /// result of the operation.
    /// 
    /// For the synchronous, blocking version of this function, see
    /// `g_output_stream_splice()`.
    @inlinable func spliceAsync<CancellableT: CancellableProtocol, InputStreamT: InputStreamProtocol>(source: InputStreamT, flags: OutputStreamSpliceFlags, ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_output_stream_splice_async(output_stream_ptr, source.input_stream_ptr, flags.value, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an asynchronous stream splice operation.
    @inlinable func spliceFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_output_stream_splice_finish(output_stream_ptr, result.async_result_ptr, &error)
        if let error = error { throw GLibError(error) }
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
    @inlinable func vprintf(bytesWritten: UnsafeMutablePointer<gsize>! = nil, cancellable: CancellableRef? = nil, error: UnsafeMutablePointer<UnsafeMutablePointer<GError>?>!, format: UnsafePointer<gchar>!, args: CVaListPointer) -> Bool {
        let rv = ((g_output_stream_vprintf(output_stream_ptr, bytesWritten, cancellable?.cancellable_ptr, error, format, args)) != 0)
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
    @inlinable func vprintf<CancellableT: CancellableProtocol>(bytesWritten: UnsafeMutablePointer<gsize>! = nil, cancellable: CancellableT?, error: UnsafeMutablePointer<UnsafeMutablePointer<GError>?>!, format: UnsafePointer<gchar>!, args: CVaListPointer) -> Bool {
        let rv = ((g_output_stream_vprintf(output_stream_ptr, bytesWritten, cancellable?.cancellable_ptr, error, format, args)) != 0)
        return rv
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
    @inlinable func write(buffer: UnsafeMutableRawPointer!, count: Int, cancellable: CancellableRef? = nil) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_output_stream_write(output_stream_ptr, buffer, gsize(count), cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func write<CancellableT: CancellableProtocol>(buffer: UnsafeMutableRawPointer!, count: Int, cancellable: CancellableT?) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_output_stream_write(output_stream_ptr, buffer, gsize(count), cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
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
    @inlinable func writeAll(buffer: UnsafeMutableRawPointer!, count: Int, bytesWritten: UnsafeMutablePointer<gsize>! = nil, cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_output_stream_write_all(output_stream_ptr, buffer, gsize(count), bytesWritten, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
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
    @inlinable func writeAll<CancellableT: CancellableProtocol>(buffer: UnsafeMutableRawPointer!, count: Int, bytesWritten: UnsafeMutablePointer<gsize>! = nil, cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_output_stream_write_all(output_stream_ptr, buffer, gsize(count), bytesWritten, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func writeAllAsync(buffer: UnsafeMutableRawPointer!, count: Int, ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_output_stream_write_all_async(output_stream_ptr, buffer, gsize(count), gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
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
    @inlinable func writeAllAsync<CancellableT: CancellableProtocol>(buffer: UnsafeMutableRawPointer!, count: Int, ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_output_stream_write_all_async(output_stream_ptr, buffer, gsize(count), gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
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
    @inlinable func writeAllFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT, bytesWritten: UnsafeMutablePointer<gsize>! = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_output_stream_write_all_finish(output_stream_ptr, result.async_result_ptr, bytesWritten, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func writeAsync(buffer: UnsafeMutableRawPointer!, count: Int, ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_output_stream_write_async(output_stream_ptr, buffer, gsize(count), gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
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
    @inlinable func writeAsync<CancellableT: CancellableProtocol>(buffer: UnsafeMutableRawPointer!, count: Int, ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_output_stream_write_async(output_stream_ptr, buffer, gsize(count), gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
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
    @inlinable func write<BytesT: GLib.BytesProtocol>(bytes: BytesT, cancellable: CancellableRef? = nil) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_output_stream_write_bytes(output_stream_ptr, bytes.bytes_ptr, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func write<BytesT: GLib.BytesProtocol, CancellableT: CancellableProtocol>(bytes: BytesT, cancellable: CancellableT?) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_output_stream_write_bytes(output_stream_ptr, bytes.bytes_ptr, cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
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
    @inlinable func writeBytesAsync<BytesT: GLib.BytesProtocol>(bytes: BytesT, ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_output_stream_write_bytes_async(output_stream_ptr, bytes.bytes_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
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
    @inlinable func writeBytesAsync<BytesT: GLib.BytesProtocol, CancellableT: CancellableProtocol>(bytes: BytesT, ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_output_stream_write_bytes_async(output_stream_ptr, bytes.bytes_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes a stream write-from-`GBytes` operation.
    @inlinable func writeBytesFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_output_stream_write_bytes_finish(output_stream_ptr, result.async_result_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Finishes a stream write operation.
    @inlinable func writeFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_output_stream_write_finish(output_stream_ptr, result.async_result_ptr, &error)
        if let error = error { throw GLibError(error) }
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
    @inlinable func writev(vectors: UnsafePointer<GOutputVector>!, nVectors: Int, bytesWritten: UnsafeMutablePointer<gsize>! = nil, cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_output_stream_writev(output_stream_ptr, vectors, gsize(nVectors), bytesWritten, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
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
    @inlinable func writev<CancellableT: CancellableProtocol>(vectors: UnsafePointer<GOutputVector>!, nVectors: Int, bytesWritten: UnsafeMutablePointer<gsize>! = nil, cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_output_stream_writev(output_stream_ptr, vectors, gsize(nVectors), bytesWritten, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func writevAll(vectors: UnsafeMutablePointer<GOutputVector>!, nVectors: Int, bytesWritten: UnsafeMutablePointer<gsize>! = nil, cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_output_stream_writev_all(output_stream_ptr, vectors, gsize(nVectors), bytesWritten, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func writevAll<CancellableT: CancellableProtocol>(vectors: UnsafeMutablePointer<GOutputVector>!, nVectors: Int, bytesWritten: UnsafeMutablePointer<gsize>! = nil, cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_output_stream_writev_all(output_stream_ptr, vectors, gsize(nVectors), bytesWritten, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func writevAllAsync(vectors: UnsafeMutablePointer<GOutputVector>!, nVectors: Int, ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_output_stream_writev_all_async(output_stream_ptr, vectors, gsize(nVectors), gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
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
    @inlinable func writevAllAsync<CancellableT: CancellableProtocol>(vectors: UnsafeMutablePointer<GOutputVector>!, nVectors: Int, ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_output_stream_writev_all_async(output_stream_ptr, vectors, gsize(nVectors), gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
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
    @inlinable func writevAllFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT, bytesWritten: UnsafeMutablePointer<gsize>! = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_output_stream_writev_all_finish(output_stream_ptr, result.async_result_ptr, bytesWritten, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func writevAsync(vectors: UnsafePointer<GOutputVector>!, nVectors: Int, ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_output_stream_writev_async(output_stream_ptr, vectors, gsize(nVectors), gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
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
    @inlinable func writevAsync<CancellableT: CancellableProtocol>(vectors: UnsafePointer<GOutputVector>!, nVectors: Int, ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_output_stream_writev_async(output_stream_ptr, vectors, gsize(nVectors), gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes a stream writev operation.
    @inlinable func writevFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT, bytesWritten: UnsafeMutablePointer<gsize>! = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_output_stream_writev_finish(output_stream_ptr, result.async_result_ptr, bytesWritten, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func pollableStreamWrite(buffer: UnsafeMutableRawPointer!, count: Int, blocking: Bool, cancellable: CancellableRef? = nil) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_pollable_stream_write(output_stream_ptr, buffer, gsize(count), gboolean((blocking) ? 1 : 0), cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func pollableStreamWrite<CancellableT: CancellableProtocol>(buffer: UnsafeMutableRawPointer!, count: Int, blocking: Bool, cancellable: CancellableT?) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_pollable_stream_write(output_stream_ptr, buffer, gsize(count), gboolean((blocking) ? 1 : 0), cancellable?.cancellable_ptr, &error)
        if let error = error { throw GLibError(error) }
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
    @inlinable func pollableStreamWriteAll(buffer: UnsafeMutableRawPointer!, count: Int, blocking: Bool, bytesWritten: UnsafeMutablePointer<gsize>!, cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_pollable_stream_write_all(output_stream_ptr, buffer, gsize(count), gboolean((blocking) ? 1 : 0), bytesWritten, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
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
    @inlinable func pollableStreamWriteAll<CancellableT: CancellableProtocol>(buffer: UnsafeMutableRawPointer!, count: Int, blocking: Bool, bytesWritten: UnsafeMutablePointer<gsize>!, cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_pollable_stream_write_all(output_stream_ptr, buffer, gsize(count), gboolean((blocking) ? 1 : 0), bytesWritten, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Checks if an output stream has already been closed.
    @inlinable var isClosed: Bool {
        /// Checks if an output stream has already been closed.
        get {
            let rv = ((g_output_stream_is_closed(output_stream_ptr)) != 0)
            return rv
        }
    }

    /// Checks if an output stream is being closed. This can be
    /// used inside e.g. a flush implementation to see if the
    /// flush (or other i/o operation) is called from within
    /// the closing operation.
    @inlinable var isClosing: Bool {
        /// Checks if an output stream is being closed. This can be
        /// used inside e.g. a flush implementation to see if the
        /// flush (or other i/o operation) is called from within
        /// the closing operation.
        get {
            let rv = ((g_output_stream_is_closing(output_stream_ptr)) != 0)
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = output_stream_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

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
public protocol PermissionProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GPermission` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GPermission` instance.
    var permission_ptr: UnsafeMutablePointer<GPermission>! { get }

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
public struct PermissionRef: PermissionProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GPermission` instance.
    /// For type-safe access, use the generated, typed pointer `permission_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension PermissionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GPermission>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GPermission>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GPermission>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GPermission>?) {
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

    /// Reference intialiser for a related type that implements `PermissionProtocol`
    @inlinable init<T: PermissionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: PermissionProtocol>(_ other: T) -> PermissionRef { PermissionRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
open class Permission: GLibObject.Object, PermissionProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Permission` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GPermission>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Permission` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GPermission>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Permission` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Permission` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Permission` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GPermission>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Permission` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GPermission>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GPermission`.
    /// i.e., ownership is transferred to the `Permission` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GPermission>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `PermissionProtocol`
    /// Will retain `GPermission`.
    /// - Parameter other: an instance of a related type that implements `PermissionProtocol`
    @inlinable public init<T: PermissionProtocol>(permission other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PermissionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: PermissionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Permission property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: PermissionPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Permission property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: PermissionPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
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
    /// [canonical parameter names](#canonical-parameter-names) as
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

// MARK: Permission has no signals
// MARK: Permission Class: PermissionProtocol extension (methods and fields)
public extension PermissionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GPermission` instance.
    @inlinable var permission_ptr: UnsafeMutablePointer<GPermission>! { return ptr?.assumingMemoryBound(to: GPermission.self) }

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
    @inlinable func acquire(cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_permission_acquire(permission_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
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
    @inlinable func acquire<CancellableT: CancellableProtocol>(cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_permission_acquire(permission_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Attempts to acquire the permission represented by `permission`.
    /// 
    /// This is the first half of the asynchronous version of
    /// `g_permission_acquire()`.
    @inlinable func acquireAsync(cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_permission_acquire_async(permission_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Attempts to acquire the permission represented by `permission`.
    /// 
    /// This is the first half of the asynchronous version of
    /// `g_permission_acquire()`.
    @inlinable func acquireAsync<CancellableT: CancellableProtocol>(cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_permission_acquire_async(permission_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Collects the result of attempting to acquire the permission
    /// represented by `permission`.
    /// 
    /// This is the second half of the asynchronous version of
    /// `g_permission_acquire()`.
    @inlinable func acquireFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_permission_acquire_finish(permission_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Gets the value of the 'allowed' property.  This property is `true` if
    /// the caller currently has permission to perform the action that
    /// `permission` represents the permission to perform.
    @inlinable func getAllowed() -> Bool {
        let rv = ((g_permission_get_allowed(permission_ptr)) != 0)
        return rv
    }

    /// Gets the value of the 'can-acquire' property.  This property is `true`
    /// if it is generally possible to acquire the permission by calling
    /// `g_permission_acquire()`.
    @inlinable func getCanAcquire() -> Bool {
        let rv = ((g_permission_get_can_acquire(permission_ptr)) != 0)
        return rv
    }

    /// Gets the value of the 'can-release' property.  This property is `true`
    /// if it is generally possible to release the permission by calling
    /// `g_permission_release()`.
    @inlinable func getCanRelease() -> Bool {
        let rv = ((g_permission_get_can_release(permission_ptr)) != 0)
        return rv
    }

    /// This function is called by the `GPermission` implementation to update
    /// the properties of the permission.  You should never call this
    /// function except from a `GPermission` implementation.
    /// 
    /// GObject notify signals are generated, as appropriate.
    @inlinable func implUpdate(allowed: Bool, canAcquire: Bool, canRelease: Bool) {
        g_permission_impl_update(permission_ptr, gboolean((allowed) ? 1 : 0), gboolean((canAcquire) ? 1 : 0), gboolean((canRelease) ? 1 : 0))
    
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
    @inlinable func release(cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_permission_release(permission_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func release<CancellableT: CancellableProtocol>(cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_permission_release(permission_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Attempts to release the permission represented by `permission`.
    /// 
    /// This is the first half of the asynchronous version of
    /// `g_permission_release()`.
    @inlinable func releaseAsync(cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_permission_release_async(permission_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Attempts to release the permission represented by `permission`.
    /// 
    /// This is the first half of the asynchronous version of
    /// `g_permission_release()`.
    @inlinable func releaseAsync<CancellableT: CancellableProtocol>(cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_permission_release_async(permission_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Collects the result of attempting to release the permission
    /// represented by `permission`.
    /// 
    /// This is the second half of the asynchronous version of
    /// `g_permission_release()`.
    @inlinable func releaseFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_permission_release_finish(permission_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// `true` if the caller currently has permission to perform the action that
    /// `permission` represents the permission to perform.
    @inlinable var allowed: Bool {
        /// Gets the value of the 'allowed' property.  This property is `true` if
        /// the caller currently has permission to perform the action that
        /// `permission` represents the permission to perform.
        get {
            let rv = ((g_permission_get_allowed(permission_ptr)) != 0)
            return rv
        }
    }

    /// Gets the value of the 'can-acquire' property.  This property is `true`
    /// if it is generally possible to acquire the permission by calling
    /// `g_permission_acquire()`.
    @inlinable var canAcquire: Bool {
        /// Gets the value of the 'can-acquire' property.  This property is `true`
        /// if it is generally possible to acquire the permission by calling
        /// `g_permission_acquire()`.
        get {
            let rv = ((g_permission_get_can_acquire(permission_ptr)) != 0)
            return rv
        }
    }

    /// Gets the value of the 'can-release' property.  This property is `true`
    /// if it is generally possible to release the permission by calling
    /// `g_permission_release()`.
    @inlinable var canRelease: Bool {
        /// Gets the value of the 'can-release' property.  This property is `true`
        /// if it is generally possible to release the permission by calling
        /// `g_permission_release()`.
        get {
            let rv = ((g_permission_get_can_release(permission_ptr)) != 0)
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = permission_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



