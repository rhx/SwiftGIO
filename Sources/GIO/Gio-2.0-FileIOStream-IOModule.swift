import CGLib
import GLib
import GLibObject

// MARK: - FileIOStream Class

/// The `FileIOStreamProtocol` protocol exposes the methods and properties of an underlying `GFileIOStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileIOStream`.
/// Alternatively, use `FileIOStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GFileIOStream provides io streams that both read and write to the same
/// file handle.
/// 
/// GFileIOStream implements `GSeekable`, which allows the io
/// stream to jump to arbitrary positions in the file and to truncate
/// the file, provided the filesystem of the file supports these
/// operations.
/// 
/// To find the position of a file io stream, use
/// `g_seekable_tell()`.
/// 
/// To find out if a file io stream supports seeking, use `g_seekable_can_seek()`.
/// To position a file io stream, use `g_seekable_seek()`.
/// To find out if a file io stream supports truncating, use
/// `g_seekable_can_truncate()`. To truncate a file io
/// stream, use `g_seekable_truncate()`.
/// 
/// The default implementation of all the `GFileIOStream` operations
/// and the implementation of `GSeekable` just call into the same operations
/// on the output stream.
public protocol FileIOStreamProtocol: IOStreamProtocol, SeekableProtocol {
        /// Untyped pointer to the underlying `GFileIOStream` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFileIOStream` instance.
    var file_io_stream_ptr: UnsafeMutablePointer<GFileIOStream>! { get }

}

/// The `FileIOStreamRef` type acts as a lightweight Swift reference to an underlying `GFileIOStream` instance.
/// It exposes methods that can operate on this data type through `FileIOStreamProtocol` conformance.
/// Use `FileIOStreamRef` only as an `unowned` reference to an existing `GFileIOStream` instance.
///
/// GFileIOStream provides io streams that both read and write to the same
/// file handle.
/// 
/// GFileIOStream implements `GSeekable`, which allows the io
/// stream to jump to arbitrary positions in the file and to truncate
/// the file, provided the filesystem of the file supports these
/// operations.
/// 
/// To find the position of a file io stream, use
/// `g_seekable_tell()`.
/// 
/// To find out if a file io stream supports seeking, use `g_seekable_can_seek()`.
/// To position a file io stream, use `g_seekable_seek()`.
/// To find out if a file io stream supports truncating, use
/// `g_seekable_can_truncate()`. To truncate a file io
/// stream, use `g_seekable_truncate()`.
/// 
/// The default implementation of all the `GFileIOStream` operations
/// and the implementation of `GSeekable` just call into the same operations
/// on the output stream.
public struct FileIOStreamRef: FileIOStreamProtocol {
        /// Untyped pointer to the underlying `GFileIOStream` instance.
    /// For type-safe access, use the generated, typed pointer `file_io_stream_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FileIOStreamRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GFileIOStream>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GFileIOStream>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GFileIOStream>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GFileIOStream>?) {
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

    /// Reference intialiser for a related type that implements `FileIOStreamProtocol`
    @inlinable init<T: FileIOStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FileIOStream` type acts as a reference-counted owner of an underlying `GFileIOStream` instance.
/// It provides the methods that can operate on this data type through `FileIOStreamProtocol` conformance.
/// Use `FileIOStream` as a strong reference or owner of a `GFileIOStream` instance.
///
/// GFileIOStream provides io streams that both read and write to the same
/// file handle.
/// 
/// GFileIOStream implements `GSeekable`, which allows the io
/// stream to jump to arbitrary positions in the file and to truncate
/// the file, provided the filesystem of the file supports these
/// operations.
/// 
/// To find the position of a file io stream, use
/// `g_seekable_tell()`.
/// 
/// To find out if a file io stream supports seeking, use `g_seekable_can_seek()`.
/// To position a file io stream, use `g_seekable_seek()`.
/// To find out if a file io stream supports truncating, use
/// `g_seekable_can_truncate()`. To truncate a file io
/// stream, use `g_seekable_truncate()`.
/// 
/// The default implementation of all the `GFileIOStream` operations
/// and the implementation of `GSeekable` just call into the same operations
/// on the output stream.
open class FileIOStream: IOStream, FileIOStreamProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileIOStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GFileIOStream>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileIOStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GFileIOStream>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileIOStream` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileIOStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileIOStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GFileIOStream>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileIOStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GFileIOStream>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GFileIOStream`.
    /// i.e., ownership is transferred to the `FileIOStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GFileIOStream>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FileIOStreamProtocol`
    /// Will retain `GFileIOStream`.
    /// - Parameter other: an instance of a related type that implements `FileIOStreamProtocol`
    @inlinable public init<T: FileIOStreamProtocol>(fileIOStream other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum FileIOStreamPropertyName: String, PropertyNameProtocol {
    case closed = "closed"
    case inputStream = "input-stream"
    case outputStream = "output-stream"
}

public extension FileIOStreamProtocol {
    /// Bind a `FileIOStreamPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: FileIOStreamPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a FileIOStream property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: FileIOStreamPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a FileIOStream property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: FileIOStreamPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum FileIOStreamSignalName: String, SignalNameProtocol {
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

public extension FileIOStreamProtocol {
    /// Connect a `FileIOStreamSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: FileIOStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: FileIOStream Class: FileIOStreamProtocol extension (methods and fields)
public extension FileIOStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileIOStream` instance.
    @inlinable var file_io_stream_ptr: UnsafeMutablePointer<GFileIOStream>! { return ptr?.assumingMemoryBound(to: GFileIOStream.self) }

    /// Gets the entity tag for the file when it has been written.
    /// This must be called after the stream has been written
    /// and closed, as the etag can change while writing.
    @inlinable func getEtag() -> String! {
        let rv = g_file_io_stream_get_etag(file_io_stream_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Queries a file io stream for the given `attributes`.
    /// This function blocks while querying the stream. For the asynchronous
    /// version of this function, see `g_file_io_stream_query_info_async()`.
    /// While the stream is blocked, the stream will set the pending flag
    /// internally, and any other operations on the stream will fail with
    /// `G_IO_ERROR_PENDING`.
    /// 
    /// Can fail if the stream was already closed (with `error` being set to
    /// `G_IO_ERROR_CLOSED`), the stream has pending operations (with `error` being
    /// set to `G_IO_ERROR_PENDING`), or if querying info is not supported for
    /// the stream's interface (with `error` being set to `G_IO_ERROR_NOT_SUPPORTED`). I
    /// all cases of failure, `nil` will be returned.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be set, and `nil` will
    /// be returned.
    @inlinable func queryInfo<CancellableT: CancellableProtocol>(attributes: UnsafePointer<CChar>!, cancellable: CancellableT? = nil) throws -> FileInfoRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileInfoRef(gconstpointer: gconstpointer(g_file_io_stream_query_info(file_io_stream_ptr, attributes, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously queries the `stream` for a `GFileInfo`. When completed,
    /// `callback` will be called with a `GAsyncResult` which can be used to
    /// finish the operation with `g_file_io_stream_query_info_finish()`.
    /// 
    /// For the synchronous version of this function, see
    /// `g_file_io_stream_query_info()`.
    @inlinable func queryInfoAsync<CancellableT: CancellableProtocol>(attributes: UnsafePointer<CChar>!, ioPriority io_priority: Int, cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
        g_file_io_stream_query_info_async(file_io_stream_ptr, attributes, gint(io_priority), cancellable?.cancellable_ptr, callback, user_data)
    
    }

    /// Finalizes the asynchronous query started
    /// by `g_file_io_stream_query_info_async()`.
    @inlinable func queryInfoFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> FileInfoRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileInfoRef(gconstpointer: gconstpointer(g_file_io_stream_query_info_finish(file_io_stream_ptr, result.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Gets the entity tag for the file when it has been written.
    /// This must be called after the stream has been written
    /// and closed, as the etag can change while writing.
    @inlinable var etag: String! {
        /// Gets the entity tag for the file when it has been written.
        /// This must be called after the stream has been written
        /// and closed, as the etag can change while writing.
        get {
            let rv = g_file_io_stream_get_etag(file_io_stream_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    @inlinable var parentInstance: GIOStream {
        get {
            let rv = file_io_stream_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - FileIcon Class

/// The `FileIconProtocol` protocol exposes the methods and properties of an underlying `GFileIcon` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileIcon`.
/// Alternatively, use `FileIconRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GFileIcon` specifies an icon by pointing to an image file
/// to be used as icon.
public protocol FileIconProtocol: ObjectProtocol, IconProtocol, LoadableIconProtocol {
        /// Untyped pointer to the underlying `GFileIcon` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFileIcon` instance.
    var file_icon_ptr: UnsafeMutablePointer<GFileIcon>! { get }

}

/// The `FileIconRef` type acts as a lightweight Swift reference to an underlying `GFileIcon` instance.
/// It exposes methods that can operate on this data type through `FileIconProtocol` conformance.
/// Use `FileIconRef` only as an `unowned` reference to an existing `GFileIcon` instance.
///
/// `GFileIcon` specifies an icon by pointing to an image file
/// to be used as icon.
public struct FileIconRef: FileIconProtocol {
        /// Untyped pointer to the underlying `GFileIcon` instance.
    /// For type-safe access, use the generated, typed pointer `file_icon_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FileIconRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GFileIcon>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GFileIcon>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GFileIcon>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GFileIcon>?) {
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

    /// Reference intialiser for a related type that implements `FileIconProtocol`
    @inlinable init<T: FileIconProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FileIcon` type acts as a reference-counted owner of an underlying `GFileIcon` instance.
/// It provides the methods that can operate on this data type through `FileIconProtocol` conformance.
/// Use `FileIcon` as a strong reference or owner of a `GFileIcon` instance.
///
/// `GFileIcon` specifies an icon by pointing to an image file
/// to be used as icon.
open class FileIcon: Object, FileIconProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GFileIcon>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GFileIcon>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileIcon` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GFileIcon>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GFileIcon>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GFileIcon`.
    /// i.e., ownership is transferred to the `FileIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GFileIcon>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FileIconProtocol`
    /// Will retain `GFileIcon`.
    /// - Parameter other: an instance of a related type that implements `FileIconProtocol`
    @inlinable public init<T: FileIconProtocol>(fileIcon other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum FileIconPropertyName: String, PropertyNameProtocol {
    /// The file containing the icon.
    case file = "file"
}

public extension FileIconProtocol {
    /// Bind a `FileIconPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: FileIconPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a FileIcon property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: FileIconPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a FileIcon property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: FileIconPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum FileIconSignalName: String, SignalNameProtocol {
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
    /// The file containing the icon.
    case notifyFile = "notify::file"
}

public extension FileIconProtocol {
    /// Connect a `FileIconSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: FileIconSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: FileIcon Class: FileIconProtocol extension (methods and fields)
public extension FileIconProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileIcon` instance.
    @inlinable var file_icon_ptr: UnsafeMutablePointer<GFileIcon>! { return ptr?.assumingMemoryBound(to: GFileIcon.self) }

    /// Gets the `GFile` associated with the given `icon`.
    @inlinable func getFile() -> FileRef! {
        let rv = FileRef(gconstpointer: gconstpointer(g_file_icon_get_file(file_icon_ptr)))
        return rv
    }
    /// The file containing the icon.
    @inlinable var file: FileRef! {
        /// Gets the `GFile` associated with the given `icon`.
        get {
            let rv = FileRef(gconstpointer: gconstpointer(g_file_icon_get_file(file_icon_ptr)))
            return rv
        }
    }


}



// MARK: - FileInfo Class

/// The `FileInfoProtocol` protocol exposes the methods and properties of an underlying `GFileInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileInfo`.
/// Alternatively, use `FileInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Functionality for manipulating basic metadata for files. `GFileInfo`
/// implements methods for getting information that all files should
/// contain, and allows for manipulation of extended attributes.
/// 
/// See [GFileAttribute](#gio-GFileAttribute) for more information on how
/// GIO handles file attributes.
/// 
/// To obtain a `GFileInfo` for a `GFile`, use `g_file_query_info()` (or its
/// async variant). To obtain a `GFileInfo` for a file input or output
/// stream, use `g_file_input_stream_query_info()` or
/// `g_file_output_stream_query_info()` (or their async variants).
/// 
/// To change the actual attributes of a file, you should then set the
/// attribute in the `GFileInfo` and call `g_file_set_attributes_from_info()`
/// or `g_file_set_attributes_async()` on a GFile.
/// 
/// However, not all attributes can be changed in the file. For instance,
/// the actual size of a file cannot be changed via `g_file_info_set_size()`.
/// You may call `g_file_query_settable_attributes()` and
/// `g_file_query_writable_namespaces()` to discover the settable attributes
/// of a particular file at runtime.
/// 
/// `GFileAttributeMatcher` allows for searching through a `GFileInfo` for
/// attributes.
public protocol FileInfoProtocol: ObjectProtocol {
        /// Untyped pointer to the underlying `GFileInfo` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFileInfo` instance.
    var file_info_ptr: UnsafeMutablePointer<GFileInfo>! { get }

}

/// The `FileInfoRef` type acts as a lightweight Swift reference to an underlying `GFileInfo` instance.
/// It exposes methods that can operate on this data type through `FileInfoProtocol` conformance.
/// Use `FileInfoRef` only as an `unowned` reference to an existing `GFileInfo` instance.
///
/// Functionality for manipulating basic metadata for files. `GFileInfo`
/// implements methods for getting information that all files should
/// contain, and allows for manipulation of extended attributes.
/// 
/// See [GFileAttribute](#gio-GFileAttribute) for more information on how
/// GIO handles file attributes.
/// 
/// To obtain a `GFileInfo` for a `GFile`, use `g_file_query_info()` (or its
/// async variant). To obtain a `GFileInfo` for a file input or output
/// stream, use `g_file_input_stream_query_info()` or
/// `g_file_output_stream_query_info()` (or their async variants).
/// 
/// To change the actual attributes of a file, you should then set the
/// attribute in the `GFileInfo` and call `g_file_set_attributes_from_info()`
/// or `g_file_set_attributes_async()` on a GFile.
/// 
/// However, not all attributes can be changed in the file. For instance,
/// the actual size of a file cannot be changed via `g_file_info_set_size()`.
/// You may call `g_file_query_settable_attributes()` and
/// `g_file_query_writable_namespaces()` to discover the settable attributes
/// of a particular file at runtime.
/// 
/// `GFileAttributeMatcher` allows for searching through a `GFileInfo` for
/// attributes.
public struct FileInfoRef: FileInfoProtocol {
        /// Untyped pointer to the underlying `GFileInfo` instance.
    /// For type-safe access, use the generated, typed pointer `file_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FileInfoRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GFileInfo>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GFileInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GFileInfo>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GFileInfo>?) {
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

    /// Reference intialiser for a related type that implements `FileInfoProtocol`
    @inlinable init<T: FileInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new file info structure.
    @inlinable init() {
        let rv = g_file_info_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `FileInfo` type acts as a reference-counted owner of an underlying `GFileInfo` instance.
/// It provides the methods that can operate on this data type through `FileInfoProtocol` conformance.
/// Use `FileInfo` as a strong reference or owner of a `GFileInfo` instance.
///
/// Functionality for manipulating basic metadata for files. `GFileInfo`
/// implements methods for getting information that all files should
/// contain, and allows for manipulation of extended attributes.
/// 
/// See [GFileAttribute](#gio-GFileAttribute) for more information on how
/// GIO handles file attributes.
/// 
/// To obtain a `GFileInfo` for a `GFile`, use `g_file_query_info()` (or its
/// async variant). To obtain a `GFileInfo` for a file input or output
/// stream, use `g_file_input_stream_query_info()` or
/// `g_file_output_stream_query_info()` (or their async variants).
/// 
/// To change the actual attributes of a file, you should then set the
/// attribute in the `GFileInfo` and call `g_file_set_attributes_from_info()`
/// or `g_file_set_attributes_async()` on a GFile.
/// 
/// However, not all attributes can be changed in the file. For instance,
/// the actual size of a file cannot be changed via `g_file_info_set_size()`.
/// You may call `g_file_query_settable_attributes()` and
/// `g_file_query_writable_namespaces()` to discover the settable attributes
/// of a particular file at runtime.
/// 
/// `GFileAttributeMatcher` allows for searching through a `GFileInfo` for
/// attributes.
open class FileInfo: Object, FileInfoProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GFileInfo>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GFileInfo>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileInfo` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GFileInfo>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GFileInfo>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GFileInfo`.
    /// i.e., ownership is transferred to the `FileInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GFileInfo>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FileInfoProtocol`
    /// Will retain `GFileInfo`.
    /// - Parameter other: an instance of a related type that implements `FileInfoProtocol`
    @inlinable public init<T: FileInfoProtocol>(fileInfo other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new file info structure.
    @inlinable public init() {
        let rv = g_file_info_new()
        super.init(gpointer: (rv))
    }


}

// MARK: no FileInfo properties

public enum FileInfoSignalName: String, SignalNameProtocol {
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

public extension FileInfoProtocol {
    /// Connect a `FileInfoSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: FileInfoSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: FileInfo Class: FileInfoProtocol extension (methods and fields)
public extension FileInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileInfo` instance.
    @inlinable var file_info_ptr: UnsafeMutablePointer<GFileInfo>! { return ptr?.assumingMemoryBound(to: GFileInfo.self) }

    /// Clears the status information from `info`.
    @inlinable func clearStatus() {
        g_file_info_clear_status(file_info_ptr)
    
    }

    /// First clears all of the [GFileAttribute](#gio-GFileAttribute) of `dest_info`,
    /// and then copies all of the file attributes from `src_info` to `dest_info`.
    @inlinable func copyInto<FileInfoT: FileInfoProtocol>(destInfo dest_info: FileInfoT) {
        g_file_info_copy_into(file_info_ptr, dest_info.file_info_ptr)
    
    }

    /// Duplicates a file info structure.
    @inlinable func dup() -> FileInfoRef! {
        guard let rv = FileInfoRef(gconstpointer: gconstpointer(g_file_info_dup(file_info_ptr))) else { return nil }
        return rv
    }

    /// Gets the value of a attribute, formated as a string.
    /// This escapes things as needed to make the string valid
    /// UTF-8.
    @inlinable func getAttributeAsString(attribute: UnsafePointer<CChar>!) -> String! {
        let rv = g_file_info_get_attribute_as_string(file_info_ptr, attribute).map({ String(cString: $0) })
        return rv
    }

    /// Gets the value of a boolean attribute. If the attribute does not
    /// contain a boolean value, `false` will be returned.
    @inlinable func getAttributeBoolean(attribute: UnsafePointer<CChar>!) -> Bool {
        let rv = ((g_file_info_get_attribute_boolean(file_info_ptr, attribute)) != 0)
        return rv
    }

    /// Gets the value of a byte string attribute. If the attribute does
    /// not contain a byte string, `nil` will be returned.
    @inlinable func getAttributeByteString(attribute: UnsafePointer<CChar>!) -> String! {
        let rv = g_file_info_get_attribute_byte_string(file_info_ptr, attribute).map({ String(cString: $0) })
        return rv
    }

    /// Gets the attribute type, value and status for an attribute key.
    @inlinable func getAttributeData(attribute: UnsafePointer<CChar>!, type: UnsafeMutablePointer<GFileAttributeType>! = nil, valuePp value_pp: UnsafeMutablePointer<gpointer?>! = nil, status: UnsafeMutablePointer<GFileAttributeStatus>! = nil) -> Bool {
        let rv = ((g_file_info_get_attribute_data(file_info_ptr, attribute, type, value_pp, status)) != 0)
        return rv
    }

    /// Gets a signed 32-bit integer contained within the attribute. If the
    /// attribute does not contain a signed 32-bit integer, or is invalid,
    /// 0 will be returned.
    @inlinable func getAttributeInt32(attribute: UnsafePointer<CChar>!) -> gint32 {
        let rv = g_file_info_get_attribute_int32(file_info_ptr, attribute)
        return rv
    }

    /// Gets a signed 64-bit integer contained within the attribute. If the
    /// attribute does not contain a signed 64-bit integer, or is invalid,
    /// 0 will be returned.
    @inlinable func getAttributeInt64(attribute: UnsafePointer<CChar>!) -> gint64 {
        let rv = g_file_info_get_attribute_int64(file_info_ptr, attribute)
        return rv
    }

    /// Gets the value of a `GObject` attribute. If the attribute does
    /// not contain a `GObject`, `nil` will be returned.
    @inlinable func getAttributeObject(attribute: UnsafePointer<CChar>!) -> ObjectRef! {
        guard let rv = ObjectRef(gconstpointer: gconstpointer(g_file_info_get_attribute_object(file_info_ptr, attribute))) else { return nil }
        return rv
    }

    /// Gets the attribute status for an attribute key.
    @inlinable func getAttributeStatus(attribute: UnsafePointer<CChar>!) -> GFileAttributeStatus {
        let rv = g_file_info_get_attribute_status(file_info_ptr, attribute)
        return rv
    }

    /// Gets the value of a string attribute. If the attribute does
    /// not contain a string, `nil` will be returned.
    @inlinable func getAttributeString(attribute: UnsafePointer<CChar>!) -> String! {
        let rv = g_file_info_get_attribute_string(file_info_ptr, attribute).map({ String(cString: $0) })
        return rv
    }

    /// Gets the value of a stringv attribute. If the attribute does
    /// not contain a stringv, `nil` will be returned.
    @inlinable func getAttributeStringv(attribute: UnsafePointer<CChar>!) -> UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>! {
        let rv = g_file_info_get_attribute_stringv(file_info_ptr, attribute)
        return rv
    }

    /// Gets the attribute type for an attribute key.
    @inlinable func getAttributeType(attribute: UnsafePointer<CChar>!) -> GFileAttributeType {
        let rv = g_file_info_get_attribute_type(file_info_ptr, attribute)
        return rv
    }

    /// Gets an unsigned 32-bit integer contained within the attribute. If the
    /// attribute does not contain an unsigned 32-bit integer, or is invalid,
    /// 0 will be returned.
    @inlinable func getAttributeUint32(attribute: UnsafePointer<CChar>!) -> guint32 {
        let rv = g_file_info_get_attribute_uint32(file_info_ptr, attribute)
        return rv
    }

    /// Gets a unsigned 64-bit integer contained within the attribute. If the
    /// attribute does not contain an unsigned 64-bit integer, or is invalid,
    /// 0 will be returned.
    @inlinable func getAttributeUint64(attribute: UnsafePointer<CChar>!) -> guint64 {
        let rv = g_file_info_get_attribute_uint64(file_info_ptr, attribute)
        return rv
    }

    /// Gets the file's content type.
    @inlinable func getContentType() -> String! {
        let rv = g_file_info_get_content_type(file_info_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the `GDateTime` representing the deletion date of the file, as
    /// available in G_FILE_ATTRIBUTE_TRASH_DELETION_DATE. If the
    /// G_FILE_ATTRIBUTE_TRASH_DELETION_DATE attribute is unset, `nil` is returned.
    @inlinable func getDeletionDate() -> DateTimeRef! {
        let rv = DateTimeRef(gconstpointer: gconstpointer(g_file_info_get_deletion_date(file_info_ptr)))
        return rv
    }

    /// Gets a display name for a file.
    @inlinable func getDisplayName() -> String! {
        let rv = g_file_info_get_display_name(file_info_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the edit name for a file.
    @inlinable func getEditName() -> String! {
        let rv = g_file_info_get_edit_name(file_info_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the [entity tag](#gfile-etag) for a given
    /// `GFileInfo`. See `G_FILE_ATTRIBUTE_ETAG_VALUE`.
    @inlinable func getEtag() -> String! {
        let rv = g_file_info_get_etag(file_info_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets a file's type (whether it is a regular file, symlink, etc).
    /// This is different from the file's content type, see `g_file_info_get_content_type()`.
    @inlinable func getFileType() -> GFileType {
        let rv = g_file_info_get_file_type(file_info_ptr)
        return rv
    }

    /// Gets the icon for a file.
    @inlinable func getIcon() -> IconRef! {
        let rv = IconRef(gconstpointer: gconstpointer(g_file_info_get_icon(file_info_ptr)))
        return rv
    }

    /// Checks if a file is a backup file.
    @inlinable func getIsBackup() -> Bool {
        let rv = ((g_file_info_get_is_backup(file_info_ptr)) != 0)
        return rv
    }

    /// Checks if a file is hidden.
    @inlinable func getIsHidden() -> Bool {
        let rv = ((g_file_info_get_is_hidden(file_info_ptr)) != 0)
        return rv
    }

    /// Checks if a file is a symlink.
    @inlinable func getIsSymlink() -> Bool {
        let rv = ((g_file_info_get_is_symlink(file_info_ptr)) != 0)
        return rv
    }

    /// Gets the modification time of the current `info` and returns it as a
    /// `GDateTime`.
    /// 
    /// This requires the `G_FILE_ATTRIBUTE_TIME_MODIFIED` attribute. If
    /// `G_FILE_ATTRIBUTE_TIME_MODIFIED_USEC` is provided, the resulting `GDateTime`
    /// will have microsecond precision.
    @inlinable func getModificationDateTime() -> DateTimeRef! {
        let rv = DateTimeRef(gconstpointer: gconstpointer(g_file_info_get_modification_date_time(file_info_ptr)))
        return rv
    }

    /// Gets the modification time of the current `info` and sets it
    /// in `result`.
    ///
    /// **get_modification_time is deprecated:**
    /// Use g_file_info_get_modification_date_time() instead, as
    ///    #GTimeVal is deprecated due to the year 2038 problem.
    @available(*, deprecated) @inlinable func getModificationTime<TimeValT: TimeValProtocol>(result: TimeValT) {
        g_file_info_get_modification_time(file_info_ptr, result._ptr)
    
    }

    /// Gets the name for a file.
    @inlinable func getName() -> String! {
        let rv = g_file_info_get_name(file_info_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the file's size.
    @inlinable func getSize() -> goffset {
        let rv = g_file_info_get_size(file_info_ptr)
        return rv
    }

    /// Gets the value of the sort_order attribute from the `GFileInfo`.
    /// See `G_FILE_ATTRIBUTE_STANDARD_SORT_ORDER`.
    @inlinable func getSortOrder() -> gint32 {
        let rv = g_file_info_get_sort_order(file_info_ptr)
        return rv
    }

    /// Gets the symbolic icon for a file.
    @inlinable func getSymbolicIcon() -> IconRef! {
        let rv = IconRef(gconstpointer: gconstpointer(g_file_info_get_symbolic_icon(file_info_ptr)))
        return rv
    }

    /// Gets the symlink target for a given `GFileInfo`.
    @inlinable func getSymlinkTarget() -> String! {
        let rv = g_file_info_get_symlink_target(file_info_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Checks if a file info structure has an attribute named `attribute`.
    @inlinable func has(attribute: UnsafePointer<CChar>!) -> Bool {
        let rv = ((g_file_info_has_attribute(file_info_ptr, attribute)) != 0)
        return rv
    }

    /// Checks if a file info structure has an attribute in the
    /// specified `name_space`.
    @inlinable func hasNamespace(nameSpace name_space: UnsafePointer<CChar>!) -> Bool {
        let rv = ((g_file_info_has_namespace(file_info_ptr, name_space)) != 0)
        return rv
    }

    /// Lists the file info structure's attributes.
    @inlinable func listAttributes(nameSpace name_space: UnsafePointer<CChar>? = nil) -> UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>! {
        let rv = g_file_info_list_attributes(file_info_ptr, name_space)
        return rv
    }

    /// Removes all cases of `attribute` from `info` if it exists.
    @inlinable func remove(attribute: UnsafePointer<CChar>!) {
        g_file_info_remove_attribute(file_info_ptr, attribute)
    
    }

    /// Sets the `attribute` to contain the given value, if possible. To unset the
    /// attribute, use `G_FILE_ATTRIBUTE_TYPE_INVALID` for `type`.
    @inlinable func set(attribute: UnsafePointer<CChar>!, type: GFileAttributeType, valueP value_p: gpointer!) {
        g_file_info_set_attribute(file_info_ptr, attribute, type, value_p)
    
    }

    /// Sets the `attribute` to contain the given `attr_value`,
    /// if possible.
    @inlinable func setAttributeBoolean(attribute: UnsafePointer<CChar>!, attrValue attr_value: Bool) {
        g_file_info_set_attribute_boolean(file_info_ptr, attribute, gboolean((attr_value) ? 1 : 0))
    
    }

    /// Sets the `attribute` to contain the given `attr_value`,
    /// if possible.
    @inlinable func setAttributeByteString(attribute: UnsafePointer<CChar>!, attrValue attr_value: UnsafePointer<CChar>!) {
        g_file_info_set_attribute_byte_string(file_info_ptr, attribute, attr_value)
    
    }

    /// Sets the `attribute` to contain the given `attr_value`,
    /// if possible.
    @inlinable func setAttributeInt32(attribute: UnsafePointer<CChar>!, attrValue attr_value: gint32) {
        g_file_info_set_attribute_int32(file_info_ptr, attribute, attr_value)
    
    }

    /// Sets the `attribute` to contain the given `attr_value`,
    /// if possible.
    @inlinable func setAttributeInt64(attribute: UnsafePointer<CChar>!, attrValue attr_value: gint64) {
        g_file_info_set_attribute_int64(file_info_ptr, attribute, attr_value)
    
    }

    /// Sets `mask` on `info` to match specific attribute types.
    @inlinable func setAttribute<FileAttributeMatcherT: FileAttributeMatcherProtocol>(mask: FileAttributeMatcherT) {
        g_file_info_set_attribute_mask(file_info_ptr, mask.file_attribute_matcher_ptr)
    
    }

    /// Sets the `attribute` to contain the given `attr_value`,
    /// if possible.
    @inlinable func setAttributeObject<ObjectT: ObjectProtocol>(attribute: UnsafePointer<CChar>!, attrValue attr_value: ObjectT) {
        g_file_info_set_attribute_object(file_info_ptr, attribute, attr_value.object_ptr)
    
    }

    /// Sets the attribute status for an attribute key. This is only
    /// needed by external code that implement `g_file_set_attributes_from_info()`
    /// or similar functions.
    /// 
    /// The attribute must exist in `info` for this to work. Otherwise `false`
    /// is returned and `info` is unchanged.
    @inlinable func setAttributeStatus(attribute: UnsafePointer<CChar>!, status: GFileAttributeStatus) -> Bool {
        let rv = ((g_file_info_set_attribute_status(file_info_ptr, attribute, status)) != 0)
        return rv
    }

    /// Sets the `attribute` to contain the given `attr_value`,
    /// if possible.
    @inlinable func setAttributeString(attribute: UnsafePointer<CChar>!, attrValue attr_value: UnsafePointer<CChar>!) {
        g_file_info_set_attribute_string(file_info_ptr, attribute, attr_value)
    
    }

    /// Sets the `attribute` to contain the given `attr_value`,
    /// if possible.
    /// 
    /// Sinze: 2.22
    @inlinable func setAttributeStringv(attribute: UnsafePointer<CChar>!, attrValue attr_value: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!) {
        g_file_info_set_attribute_stringv(file_info_ptr, attribute, attr_value)
    
    }

    /// Sets the `attribute` to contain the given `attr_value`,
    /// if possible.
    @inlinable func setAttributeUint32(attribute: UnsafePointer<CChar>!, attrValue attr_value: guint32) {
        g_file_info_set_attribute_uint32(file_info_ptr, attribute, attr_value)
    
    }

    /// Sets the `attribute` to contain the given `attr_value`,
    /// if possible.
    @inlinable func setAttributeUint64(attribute: UnsafePointer<CChar>!, attrValue attr_value: guint64) {
        g_file_info_set_attribute_uint64(file_info_ptr, attribute, attr_value)
    
    }

    /// Sets the content type attribute for a given `GFileInfo`.
    /// See `G_FILE_ATTRIBUTE_STANDARD_CONTENT_TYPE`.
    @inlinable func set(contentType content_type: UnsafePointer<CChar>!) {
        g_file_info_set_content_type(file_info_ptr, content_type)
    
    }

    /// Sets the display name for the current `GFileInfo`.
    /// See `G_FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME`.
    @inlinable func set(displayName display_name: UnsafePointer<CChar>!) {
        g_file_info_set_display_name(file_info_ptr, display_name)
    
    }

    /// Sets the edit name for the current file.
    /// See `G_FILE_ATTRIBUTE_STANDARD_EDIT_NAME`.
    @inlinable func set(editName edit_name: UnsafePointer<CChar>!) {
        g_file_info_set_edit_name(file_info_ptr, edit_name)
    
    }

    /// Sets the file type in a `GFileInfo` to `type`.
    /// See `G_FILE_ATTRIBUTE_STANDARD_TYPE`.
    @inlinable func setFile(type: GFileType) {
        g_file_info_set_file_type(file_info_ptr, type)
    
    }

    /// Sets the icon for a given `GFileInfo`.
    /// See `G_FILE_ATTRIBUTE_STANDARD_ICON`.
    @inlinable func set<IconT: IconProtocol>(icon: IconT) {
        g_file_info_set_icon(file_info_ptr, icon.icon_ptr)
    
    }

    /// Sets the "is_hidden" attribute in a `GFileInfo` according to `is_hidden`.
    /// See `G_FILE_ATTRIBUTE_STANDARD_IS_HIDDEN`.
    @inlinable func set(isHidden is_hidden: Bool) {
        g_file_info_set_is_hidden(file_info_ptr, gboolean((is_hidden) ? 1 : 0))
    
    }

    /// Sets the "is_symlink" attribute in a `GFileInfo` according to `is_symlink`.
    /// See `G_FILE_ATTRIBUTE_STANDARD_IS_SYMLINK`.
    @inlinable func set(isSymlink is_symlink: Bool) {
        g_file_info_set_is_symlink(file_info_ptr, gboolean((is_symlink) ? 1 : 0))
    
    }

    /// Sets the `G_FILE_ATTRIBUTE_TIME_MODIFIED` and
    /// `G_FILE_ATTRIBUTE_TIME_MODIFIED_USEC` attributes in the file info to the
    /// given date/time value.
    @inlinable func setModificationDateTime<DateTimeT: DateTimeProtocol>(mtime: DateTimeT) {
        g_file_info_set_modification_date_time(file_info_ptr, mtime.date_time_ptr)
    
    }

    /// Sets the `G_FILE_ATTRIBUTE_TIME_MODIFIED` and
    /// `G_FILE_ATTRIBUTE_TIME_MODIFIED_USEC` attributes in the file info to the
    /// given time value.
    ///
    /// **set_modification_time is deprecated:**
    /// Use g_file_info_set_modification_date_time() instead, as
    ///    #GTimeVal is deprecated due to the year 2038 problem.
    @available(*, deprecated) @inlinable func setModificationTime<TimeValT: TimeValProtocol>(mtime: TimeValT) {
        g_file_info_set_modification_time(file_info_ptr, mtime._ptr)
    
    }

    /// Sets the name attribute for the current `GFileInfo`.
    /// See `G_FILE_ATTRIBUTE_STANDARD_NAME`.
    @inlinable func set(name: UnsafePointer<CChar>!) {
        g_file_info_set_name(file_info_ptr, name)
    
    }

    /// Sets the `G_FILE_ATTRIBUTE_STANDARD_SIZE` attribute in the file info
    /// to the given size.
    @inlinable func set(size: goffset) {
        g_file_info_set_size(file_info_ptr, size)
    
    }

    /// Sets the sort order attribute in the file info structure. See
    /// `G_FILE_ATTRIBUTE_STANDARD_SORT_ORDER`.
    @inlinable func set(sortOrder sort_order: gint32) {
        g_file_info_set_sort_order(file_info_ptr, sort_order)
    
    }

    /// Sets the symbolic icon for a given `GFileInfo`.
    /// See `G_FILE_ATTRIBUTE_STANDARD_SYMBOLIC_ICON`.
    @inlinable func setSymbolic<IconT: IconProtocol>(icon: IconT) {
        g_file_info_set_symbolic_icon(file_info_ptr, icon.icon_ptr)
    
    }

    /// Sets the `G_FILE_ATTRIBUTE_STANDARD_SYMLINK_TARGET` attribute in the file info
    /// to the given symlink target.
    @inlinable func set(symlinkTarget symlink_target: UnsafePointer<CChar>!) {
        g_file_info_set_symlink_target(file_info_ptr, symlink_target)
    
    }

    /// Unsets a mask set by `g_file_info_set_attribute_mask()`, if one
    /// is set.
    @inlinable func unsetAttributeMask() {
        g_file_info_unset_attribute_mask(file_info_ptr)
    
    }
    /// Gets the file's content type.
    @inlinable var contentType: String! {
        /// Gets the file's content type.
        get {
            let rv = g_file_info_get_content_type(file_info_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the content type attribute for a given `GFileInfo`.
        /// See `G_FILE_ATTRIBUTE_STANDARD_CONTENT_TYPE`.
        nonmutating set {
            g_file_info_set_content_type(file_info_ptr, newValue)
        }
    }

    /// Returns the `GDateTime` representing the deletion date of the file, as
    /// available in G_FILE_ATTRIBUTE_TRASH_DELETION_DATE. If the
    /// G_FILE_ATTRIBUTE_TRASH_DELETION_DATE attribute is unset, `nil` is returned.
    @inlinable var deletionDate: DateTimeRef! {
        /// Returns the `GDateTime` representing the deletion date of the file, as
        /// available in G_FILE_ATTRIBUTE_TRASH_DELETION_DATE. If the
        /// G_FILE_ATTRIBUTE_TRASH_DELETION_DATE attribute is unset, `nil` is returned.
        get {
            let rv = DateTimeRef(gconstpointer: gconstpointer(g_file_info_get_deletion_date(file_info_ptr)))
            return rv
        }
    }

    /// Gets a display name for a file.
    @inlinable var displayName: String! {
        /// Gets a display name for a file.
        get {
            let rv = g_file_info_get_display_name(file_info_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the display name for the current `GFileInfo`.
        /// See `G_FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME`.
        nonmutating set {
            g_file_info_set_display_name(file_info_ptr, newValue)
        }
    }

    /// Gets the edit name for a file.
    @inlinable var editName: String! {
        /// Gets the edit name for a file.
        get {
            let rv = g_file_info_get_edit_name(file_info_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the edit name for the current file.
        /// See `G_FILE_ATTRIBUTE_STANDARD_EDIT_NAME`.
        nonmutating set {
            g_file_info_set_edit_name(file_info_ptr, newValue)
        }
    }

    /// Gets the [entity tag](#gfile-etag) for a given
    /// `GFileInfo`. See `G_FILE_ATTRIBUTE_ETAG_VALUE`.
    @inlinable var etag: String! {
        /// Gets the [entity tag](#gfile-etag) for a given
        /// `GFileInfo`. See `G_FILE_ATTRIBUTE_ETAG_VALUE`.
        get {
            let rv = g_file_info_get_etag(file_info_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets a file's type (whether it is a regular file, symlink, etc).
    /// This is different from the file's content type, see `g_file_info_get_content_type()`.
    @inlinable var fileType: GFileType {
        /// Gets a file's type (whether it is a regular file, symlink, etc).
        /// This is different from the file's content type, see `g_file_info_get_content_type()`.
        get {
            let rv = g_file_info_get_file_type(file_info_ptr)
            return rv
        }
        /// Sets the file type in a `GFileInfo` to `type`.
        /// See `G_FILE_ATTRIBUTE_STANDARD_TYPE`.
        nonmutating set {
            g_file_info_set_file_type(file_info_ptr, newValue)
        }
    }

    /// Gets the icon for a file.
    @inlinable var icon: IconRef! {
        /// Gets the icon for a file.
        get {
            let rv = IconRef(gconstpointer: gconstpointer(g_file_info_get_icon(file_info_ptr)))
            return rv
        }
        /// Sets the icon for a given `GFileInfo`.
        /// See `G_FILE_ATTRIBUTE_STANDARD_ICON`.
        nonmutating set {
            g_file_info_set_icon(file_info_ptr, UnsafeMutablePointer<GIcon>(newValue?.icon_ptr))
        }
    }

    /// Checks if a file is a backup file.
    @inlinable var isBackup: Bool {
        /// Checks if a file is a backup file.
        get {
            let rv = ((g_file_info_get_is_backup(file_info_ptr)) != 0)
            return rv
        }
    }

    /// Checks if a file is hidden.
    @inlinable var isHidden: Bool {
        /// Checks if a file is hidden.
        get {
            let rv = ((g_file_info_get_is_hidden(file_info_ptr)) != 0)
            return rv
        }
        /// Sets the "is_hidden" attribute in a `GFileInfo` according to `is_hidden`.
        /// See `G_FILE_ATTRIBUTE_STANDARD_IS_HIDDEN`.
        nonmutating set {
            g_file_info_set_is_hidden(file_info_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Checks if a file is a symlink.
    @inlinable var isSymlink: Bool {
        /// Checks if a file is a symlink.
        get {
            let rv = ((g_file_info_get_is_symlink(file_info_ptr)) != 0)
            return rv
        }
        /// Sets the "is_symlink" attribute in a `GFileInfo` according to `is_symlink`.
        /// See `G_FILE_ATTRIBUTE_STANDARD_IS_SYMLINK`.
        nonmutating set {
            g_file_info_set_is_symlink(file_info_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the modification time of the current `info` and returns it as a
    /// `GDateTime`.
    /// 
    /// This requires the `G_FILE_ATTRIBUTE_TIME_MODIFIED` attribute. If
    /// `G_FILE_ATTRIBUTE_TIME_MODIFIED_USEC` is provided, the resulting `GDateTime`
    /// will have microsecond precision.
    @inlinable var modificationDateTime: DateTimeRef! {
        /// Gets the modification time of the current `info` and returns it as a
        /// `GDateTime`.
        /// 
        /// This requires the `G_FILE_ATTRIBUTE_TIME_MODIFIED` attribute. If
        /// `G_FILE_ATTRIBUTE_TIME_MODIFIED_USEC` is provided, the resulting `GDateTime`
        /// will have microsecond precision.
        get {
            let rv = DateTimeRef(gconstpointer: gconstpointer(g_file_info_get_modification_date_time(file_info_ptr)))
            return rv
        }
        /// Sets the `G_FILE_ATTRIBUTE_TIME_MODIFIED` and
        /// `G_FILE_ATTRIBUTE_TIME_MODIFIED_USEC` attributes in the file info to the
        /// given date/time value.
        nonmutating set {
            g_file_info_set_modification_date_time(file_info_ptr, UnsafeMutablePointer<GDateTime>(newValue?.date_time_ptr))
        }
    }

    /// Gets the name for a file.
    @inlinable var name: String! {
        /// Gets the name for a file.
        get {
            let rv = g_file_info_get_name(file_info_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the name attribute for the current `GFileInfo`.
        /// See `G_FILE_ATTRIBUTE_STANDARD_NAME`.
        nonmutating set {
            g_file_info_set_name(file_info_ptr, newValue)
        }
    }

    /// Gets the file's size.
    @inlinable var size: goffset {
        /// Gets the file's size.
        get {
            let rv = g_file_info_get_size(file_info_ptr)
            return rv
        }
        /// Sets the `G_FILE_ATTRIBUTE_STANDARD_SIZE` attribute in the file info
        /// to the given size.
        nonmutating set {
            g_file_info_set_size(file_info_ptr, newValue)
        }
    }

    /// Gets the value of the sort_order attribute from the `GFileInfo`.
    /// See `G_FILE_ATTRIBUTE_STANDARD_SORT_ORDER`.
    @inlinable var sortOrder: gint32 {
        /// Gets the value of the sort_order attribute from the `GFileInfo`.
        /// See `G_FILE_ATTRIBUTE_STANDARD_SORT_ORDER`.
        get {
            let rv = g_file_info_get_sort_order(file_info_ptr)
            return rv
        }
        /// Sets the sort order attribute in the file info structure. See
        /// `G_FILE_ATTRIBUTE_STANDARD_SORT_ORDER`.
        nonmutating set {
            g_file_info_set_sort_order(file_info_ptr, newValue)
        }
    }

    /// Gets the symbolic icon for a file.
    @inlinable var symbolicIcon: IconRef! {
        /// Gets the symbolic icon for a file.
        get {
            let rv = IconRef(gconstpointer: gconstpointer(g_file_info_get_symbolic_icon(file_info_ptr)))
            return rv
        }
        /// Sets the symbolic icon for a given `GFileInfo`.
        /// See `G_FILE_ATTRIBUTE_STANDARD_SYMBOLIC_ICON`.
        nonmutating set {
            g_file_info_set_symbolic_icon(file_info_ptr, UnsafeMutablePointer<GIcon>(newValue?.icon_ptr))
        }
    }

    /// Gets the symlink target for a given `GFileInfo`.
    @inlinable var symlinkTarget: String! {
        /// Gets the symlink target for a given `GFileInfo`.
        get {
            let rv = g_file_info_get_symlink_target(file_info_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the `G_FILE_ATTRIBUTE_STANDARD_SYMLINK_TARGET` attribute in the file info
        /// to the given symlink target.
        nonmutating set {
            g_file_info_set_symlink_target(file_info_ptr, newValue)
        }
    }


}



// MARK: - FileInputStream Class

/// The `FileInputStreamProtocol` protocol exposes the methods and properties of an underlying `GFileInputStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileInputStream`.
/// Alternatively, use `FileInputStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GFileInputStream provides input streams that take their
/// content from a file.
/// 
/// GFileInputStream implements `GSeekable`, which allows the input
/// stream to jump to arbitrary positions in the file, provided the
/// filesystem of the file allows it. To find the position of a file
/// input stream, use `g_seekable_tell()`. To find out if a file input
/// stream supports seeking, use `g_seekable_can_seek()`.
/// To position a file input stream, use `g_seekable_seek()`.
public protocol FileInputStreamProtocol: InputStreamProtocol, SeekableProtocol {
        /// Untyped pointer to the underlying `GFileInputStream` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFileInputStream` instance.
    var file_input_stream_ptr: UnsafeMutablePointer<GFileInputStream>! { get }

}

/// The `FileInputStreamRef` type acts as a lightweight Swift reference to an underlying `GFileInputStream` instance.
/// It exposes methods that can operate on this data type through `FileInputStreamProtocol` conformance.
/// Use `FileInputStreamRef` only as an `unowned` reference to an existing `GFileInputStream` instance.
///
/// GFileInputStream provides input streams that take their
/// content from a file.
/// 
/// GFileInputStream implements `GSeekable`, which allows the input
/// stream to jump to arbitrary positions in the file, provided the
/// filesystem of the file allows it. To find the position of a file
/// input stream, use `g_seekable_tell()`. To find out if a file input
/// stream supports seeking, use `g_seekable_can_seek()`.
/// To position a file input stream, use `g_seekable_seek()`.
public struct FileInputStreamRef: FileInputStreamProtocol {
        /// Untyped pointer to the underlying `GFileInputStream` instance.
    /// For type-safe access, use the generated, typed pointer `file_input_stream_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FileInputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GFileInputStream>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GFileInputStream>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GFileInputStream>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GFileInputStream>?) {
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

    /// Reference intialiser for a related type that implements `FileInputStreamProtocol`
    @inlinable init<T: FileInputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FileInputStream` type acts as a reference-counted owner of an underlying `GFileInputStream` instance.
/// It provides the methods that can operate on this data type through `FileInputStreamProtocol` conformance.
/// Use `FileInputStream` as a strong reference or owner of a `GFileInputStream` instance.
///
/// GFileInputStream provides input streams that take their
/// content from a file.
/// 
/// GFileInputStream implements `GSeekable`, which allows the input
/// stream to jump to arbitrary positions in the file, provided the
/// filesystem of the file allows it. To find the position of a file
/// input stream, use `g_seekable_tell()`. To find out if a file input
/// stream supports seeking, use `g_seekable_can_seek()`.
/// To position a file input stream, use `g_seekable_seek()`.
open class FileInputStream: InputStream, FileInputStreamProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GFileInputStream>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GFileInputStream>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileInputStream` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GFileInputStream>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GFileInputStream>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GFileInputStream`.
    /// i.e., ownership is transferred to the `FileInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GFileInputStream>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FileInputStreamProtocol`
    /// Will retain `GFileInputStream`.
    /// - Parameter other: an instance of a related type that implements `FileInputStreamProtocol`
    @inlinable public init<T: FileInputStreamProtocol>(fileInputStream other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no FileInputStream properties

public enum FileInputStreamSignalName: String, SignalNameProtocol {
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

public extension FileInputStreamProtocol {
    /// Connect a `FileInputStreamSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: FileInputStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: FileInputStream Class: FileInputStreamProtocol extension (methods and fields)
public extension FileInputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileInputStream` instance.
    @inlinable var file_input_stream_ptr: UnsafeMutablePointer<GFileInputStream>! { return ptr?.assumingMemoryBound(to: GFileInputStream.self) }

    /// Queries a file input stream the given `attributes`. This function blocks
    /// while querying the stream. For the asynchronous (non-blocking) version
    /// of this function, see `g_file_input_stream_query_info_async()`. While the
    /// stream is blocked, the stream will set the pending flag internally, and
    /// any other operations on the stream will fail with `G_IO_ERROR_PENDING`.
    @inlinable func queryInfo<CancellableT: CancellableProtocol>(attributes: UnsafePointer<CChar>!, cancellable: CancellableT? = nil) throws -> FileInfoRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileInfoRef(gconstpointer: gconstpointer(g_file_input_stream_query_info(file_input_stream_ptr, attributes, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Queries the stream information asynchronously.
    /// When the operation is finished `callback` will be called.
    /// You can then call `g_file_input_stream_query_info_finish()`
    /// to get the result of the operation.
    /// 
    /// For the synchronous version of this function,
    /// see `g_file_input_stream_query_info()`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be set
    @inlinable func queryInfoAsync<CancellableT: CancellableProtocol>(attributes: UnsafePointer<CChar>!, ioPriority io_priority: Int, cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
        g_file_input_stream_query_info_async(file_input_stream_ptr, attributes, gint(io_priority), cancellable?.cancellable_ptr, callback, user_data)
    
    }

    /// Finishes an asynchronous info query operation.
    @inlinable func queryInfoFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> FileInfoRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileInfoRef(gconstpointer: gconstpointer(g_file_input_stream_query_info_finish(file_input_stream_ptr, result.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    @inlinable var parentInstance: GInputStream {
        get {
            let rv = file_input_stream_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - FileMonitor Class

/// The `FileMonitorProtocol` protocol exposes the methods and properties of an underlying `GFileMonitor` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileMonitor`.
/// Alternatively, use `FileMonitorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Monitors a file or directory for changes.
/// 
/// To obtain a `GFileMonitor` for a file or directory, use
/// `g_file_monitor()`, `g_file_monitor_file()`, or
/// `g_file_monitor_directory()`.
/// 
/// To get informed about changes to the file or directory you are
/// monitoring, connect to the `GFileMonitor::changed` signal. The
/// signal will be emitted in the
/// [thread-default main context](#g-main-context-push-thread-default)
/// of the thread that the monitor was created in
/// (though if the global default main context is blocked, this may
/// cause notifications to be blocked even if the thread-default
/// context is still running).
public protocol FileMonitorProtocol: ObjectProtocol {
        /// Untyped pointer to the underlying `GFileMonitor` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFileMonitor` instance.
    var file_monitor_ptr: UnsafeMutablePointer<GFileMonitor>! { get }

}

/// The `FileMonitorRef` type acts as a lightweight Swift reference to an underlying `GFileMonitor` instance.
/// It exposes methods that can operate on this data type through `FileMonitorProtocol` conformance.
/// Use `FileMonitorRef` only as an `unowned` reference to an existing `GFileMonitor` instance.
///
/// Monitors a file or directory for changes.
/// 
/// To obtain a `GFileMonitor` for a file or directory, use
/// `g_file_monitor()`, `g_file_monitor_file()`, or
/// `g_file_monitor_directory()`.
/// 
/// To get informed about changes to the file or directory you are
/// monitoring, connect to the `GFileMonitor::changed` signal. The
/// signal will be emitted in the
/// [thread-default main context](#g-main-context-push-thread-default)
/// of the thread that the monitor was created in
/// (though if the global default main context is blocked, this may
/// cause notifications to be blocked even if the thread-default
/// context is still running).
public struct FileMonitorRef: FileMonitorProtocol {
        /// Untyped pointer to the underlying `GFileMonitor` instance.
    /// For type-safe access, use the generated, typed pointer `file_monitor_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FileMonitorRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GFileMonitor>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GFileMonitor>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GFileMonitor>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GFileMonitor>?) {
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

    /// Reference intialiser for a related type that implements `FileMonitorProtocol`
    @inlinable init<T: FileMonitorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FileMonitor` type acts as a reference-counted owner of an underlying `GFileMonitor` instance.
/// It provides the methods that can operate on this data type through `FileMonitorProtocol` conformance.
/// Use `FileMonitor` as a strong reference or owner of a `GFileMonitor` instance.
///
/// Monitors a file or directory for changes.
/// 
/// To obtain a `GFileMonitor` for a file or directory, use
/// `g_file_monitor()`, `g_file_monitor_file()`, or
/// `g_file_monitor_directory()`.
/// 
/// To get informed about changes to the file or directory you are
/// monitoring, connect to the `GFileMonitor::changed` signal. The
/// signal will be emitted in the
/// [thread-default main context](#g-main-context-push-thread-default)
/// of the thread that the monitor was created in
/// (though if the global default main context is blocked, this may
/// cause notifications to be blocked even if the thread-default
/// context is still running).
open class FileMonitor: Object, FileMonitorProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GFileMonitor>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GFileMonitor>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileMonitor` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GFileMonitor>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GFileMonitor>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GFileMonitor`.
    /// i.e., ownership is transferred to the `FileMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GFileMonitor>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FileMonitorProtocol`
    /// Will retain `GFileMonitor`.
    /// - Parameter other: an instance of a related type that implements `FileMonitorProtocol`
    @inlinable public init<T: FileMonitorProtocol>(fileMonitor other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum FileMonitorPropertyName: String, PropertyNameProtocol {
    case cancelled = "cancelled"
    case rateLimit = "rate-limit"
}

public extension FileMonitorProtocol {
    /// Bind a `FileMonitorPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: FileMonitorPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a FileMonitor property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: FileMonitorPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a FileMonitor property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: FileMonitorPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum FileMonitorSignalName: String, SignalNameProtocol {
    /// Emitted when `file` has been changed.
    /// 
    /// If using `G_FILE_MONITOR_WATCH_MOVES` on a directory monitor, and
    /// the information is available (and if supported by the backend),
    /// `event_type` may be `G_FILE_MONITOR_EVENT_RENAMED`,
    /// `G_FILE_MONITOR_EVENT_MOVED_IN` or `G_FILE_MONITOR_EVENT_MOVED_OUT`.
    /// 
    /// In all cases `file` will be a child of the monitored directory.  For
    /// renames, `file` will be the old name and `other_file` is the new
    /// name.  For "moved in" events, `file` is the name of the file that
    /// appeared and `other_file` is the old name that it was moved from (in
    /// another directory).  For "moved out" events, `file` is the name of
    /// the file that used to be in this directory and `other_file` is the
    /// name of the file at its new location.
    /// 
    /// It makes sense to treat `G_FILE_MONITOR_EVENT_MOVED_IN` as
    /// equivalent to `G_FILE_MONITOR_EVENT_CREATED` and
    /// `G_FILE_MONITOR_EVENT_MOVED_OUT` as equivalent to
    /// `G_FILE_MONITOR_EVENT_DELETED`, with extra information.
    /// `G_FILE_MONITOR_EVENT_RENAMED` is equivalent to a delete/create
    /// pair.  This is exactly how the events will be reported in the case
    /// that the `G_FILE_MONITOR_WATCH_MOVES` flag is not in use.
    /// 
    /// If using the deprecated flag `G_FILE_MONITOR_SEND_MOVED` flag and `event_type` is
    /// `G_FILE_MONITOR_EVENT_MOVED`, `file` will be set to a `GFile` containing the
    /// old path, and `other_file` will be set to a `GFile` containing the new path.
    /// 
    /// In all the other cases, `other_file` will be set to `NULL`.
    case changed = "changed"
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
    case notifyCancelled = "notify::cancelled"
    case notifyRateLimit = "notify::rate-limit"
}

public extension FileMonitorProtocol {
    /// Connect a `FileMonitorSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: FileMonitorSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: FileMonitor Class: FileMonitorProtocol extension (methods and fields)
public extension FileMonitorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileMonitor` instance.
    @inlinable var file_monitor_ptr: UnsafeMutablePointer<GFileMonitor>! { return ptr?.assumingMemoryBound(to: GFileMonitor.self) }

    /// Cancels a file monitor.
    @inlinable func cancel() -> Bool {
        let rv = ((g_file_monitor_cancel(file_monitor_ptr)) != 0)
        return rv
    }

    /// Emits the `GFileMonitor::changed` signal if a change
    /// has taken place. Should be called from file monitor
    /// implementations only.
    /// 
    /// Implementations are responsible to call this method from the
    /// [thread-default main context](#g-main-context-push-thread-default) of the
    /// thread that the monitor was created in.
    @inlinable func emitEvent<FileT: FileProtocol>(child: FileT, otherFile other_file: FileT, eventType event_type: GFileMonitorEvent) {
        g_file_monitor_emit_event(file_monitor_ptr, child.file_ptr, other_file.file_ptr, event_type)
    
    }

    /// Sets the rate limit to which the `monitor` will report
    /// consecutive change events to the same file.
    @inlinable func setRateLimit(limitMsecs limit_msecs: Int) {
        g_file_monitor_set_rate_limit(file_monitor_ptr, gint(limit_msecs))
    
    }
    /// Returns whether the monitor is canceled.
    @inlinable var isCancelled: Bool {
        /// Returns whether the monitor is canceled.
        get {
            let rv = ((g_file_monitor_is_cancelled(file_monitor_ptr)) != 0)
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = file_monitor_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - FileOutputStream Class

/// The `FileOutputStreamProtocol` protocol exposes the methods and properties of an underlying `GFileOutputStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileOutputStream`.
/// Alternatively, use `FileOutputStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GFileOutputStream provides output streams that write their
/// content to a file.
/// 
/// GFileOutputStream implements `GSeekable`, which allows the output
/// stream to jump to arbitrary positions in the file and to truncate
/// the file, provided the filesystem of the file supports these
/// operations.
/// 
/// To find the position of a file output stream, use `g_seekable_tell()`.
/// To find out if a file output stream supports seeking, use
/// `g_seekable_can_seek()`.To position a file output stream, use
/// `g_seekable_seek()`. To find out if a file output stream supports
/// truncating, use `g_seekable_can_truncate()`. To truncate a file output
/// stream, use `g_seekable_truncate()`.
public protocol FileOutputStreamProtocol: OutputStreamProtocol, SeekableProtocol {
        /// Untyped pointer to the underlying `GFileOutputStream` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFileOutputStream` instance.
    var file_output_stream_ptr: UnsafeMutablePointer<GFileOutputStream>! { get }

}

/// The `FileOutputStreamRef` type acts as a lightweight Swift reference to an underlying `GFileOutputStream` instance.
/// It exposes methods that can operate on this data type through `FileOutputStreamProtocol` conformance.
/// Use `FileOutputStreamRef` only as an `unowned` reference to an existing `GFileOutputStream` instance.
///
/// GFileOutputStream provides output streams that write their
/// content to a file.
/// 
/// GFileOutputStream implements `GSeekable`, which allows the output
/// stream to jump to arbitrary positions in the file and to truncate
/// the file, provided the filesystem of the file supports these
/// operations.
/// 
/// To find the position of a file output stream, use `g_seekable_tell()`.
/// To find out if a file output stream supports seeking, use
/// `g_seekable_can_seek()`.To position a file output stream, use
/// `g_seekable_seek()`. To find out if a file output stream supports
/// truncating, use `g_seekable_can_truncate()`. To truncate a file output
/// stream, use `g_seekable_truncate()`.
public struct FileOutputStreamRef: FileOutputStreamProtocol {
        /// Untyped pointer to the underlying `GFileOutputStream` instance.
    /// For type-safe access, use the generated, typed pointer `file_output_stream_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FileOutputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GFileOutputStream>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GFileOutputStream>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GFileOutputStream>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GFileOutputStream>?) {
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

    /// Reference intialiser for a related type that implements `FileOutputStreamProtocol`
    @inlinable init<T: FileOutputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FileOutputStream` type acts as a reference-counted owner of an underlying `GFileOutputStream` instance.
/// It provides the methods that can operate on this data type through `FileOutputStreamProtocol` conformance.
/// Use `FileOutputStream` as a strong reference or owner of a `GFileOutputStream` instance.
///
/// GFileOutputStream provides output streams that write their
/// content to a file.
/// 
/// GFileOutputStream implements `GSeekable`, which allows the output
/// stream to jump to arbitrary positions in the file and to truncate
/// the file, provided the filesystem of the file supports these
/// operations.
/// 
/// To find the position of a file output stream, use `g_seekable_tell()`.
/// To find out if a file output stream supports seeking, use
/// `g_seekable_can_seek()`.To position a file output stream, use
/// `g_seekable_seek()`. To find out if a file output stream supports
/// truncating, use `g_seekable_can_truncate()`. To truncate a file output
/// stream, use `g_seekable_truncate()`.
open class FileOutputStream: OutputStream, FileOutputStreamProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GFileOutputStream>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GFileOutputStream>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileOutputStream` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GFileOutputStream>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GFileOutputStream>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GFileOutputStream`.
    /// i.e., ownership is transferred to the `FileOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GFileOutputStream>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FileOutputStreamProtocol`
    /// Will retain `GFileOutputStream`.
    /// - Parameter other: an instance of a related type that implements `FileOutputStreamProtocol`
    @inlinable public init<T: FileOutputStreamProtocol>(fileOutputStream other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no FileOutputStream properties

public enum FileOutputStreamSignalName: String, SignalNameProtocol {
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

public extension FileOutputStreamProtocol {
    /// Connect a `FileOutputStreamSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: FileOutputStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: FileOutputStream Class: FileOutputStreamProtocol extension (methods and fields)
public extension FileOutputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileOutputStream` instance.
    @inlinable var file_output_stream_ptr: UnsafeMutablePointer<GFileOutputStream>! { return ptr?.assumingMemoryBound(to: GFileOutputStream.self) }

    /// Gets the entity tag for the file when it has been written.
    /// This must be called after the stream has been written
    /// and closed, as the etag can change while writing.
    @inlinable func getEtag() -> String! {
        let rv = g_file_output_stream_get_etag(file_output_stream_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Queries a file output stream for the given `attributes`.
    /// This function blocks while querying the stream. For the asynchronous
    /// version of this function, see `g_file_output_stream_query_info_async()`.
    /// While the stream is blocked, the stream will set the pending flag
    /// internally, and any other operations on the stream will fail with
    /// `G_IO_ERROR_PENDING`.
    /// 
    /// Can fail if the stream was already closed (with `error` being set to
    /// `G_IO_ERROR_CLOSED`), the stream has pending operations (with `error` being
    /// set to `G_IO_ERROR_PENDING`), or if querying info is not supported for
    /// the stream's interface (with `error` being set to `G_IO_ERROR_NOT_SUPPORTED`). In
    /// all cases of failure, `nil` will be returned.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be set, and `nil` will
    /// be returned.
    @inlinable func queryInfo<CancellableT: CancellableProtocol>(attributes: UnsafePointer<CChar>!, cancellable: CancellableT? = nil) throws -> FileInfoRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileInfoRef(gconstpointer: gconstpointer(g_file_output_stream_query_info(file_output_stream_ptr, attributes, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously queries the `stream` for a `GFileInfo`. When completed,
    /// `callback` will be called with a `GAsyncResult` which can be used to
    /// finish the operation with `g_file_output_stream_query_info_finish()`.
    /// 
    /// For the synchronous version of this function, see
    /// `g_file_output_stream_query_info()`.
    @inlinable func queryInfoAsync<CancellableT: CancellableProtocol>(attributes: UnsafePointer<CChar>!, ioPriority io_priority: Int, cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
        g_file_output_stream_query_info_async(file_output_stream_ptr, attributes, gint(io_priority), cancellable?.cancellable_ptr, callback, user_data)
    
    }

    /// Finalizes the asynchronous query started
    /// by `g_file_output_stream_query_info_async()`.
    @inlinable func queryInfoFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> FileInfoRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileInfoRef(gconstpointer: gconstpointer(g_file_output_stream_query_info_finish(file_output_stream_ptr, result.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Gets the entity tag for the file when it has been written.
    /// This must be called after the stream has been written
    /// and closed, as the etag can change while writing.
    @inlinable var etag: String! {
        /// Gets the entity tag for the file when it has been written.
        /// This must be called after the stream has been written
        /// and closed, as the etag can change while writing.
        get {
            let rv = g_file_output_stream_get_etag(file_output_stream_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    @inlinable var parentInstance: GOutputStream {
        get {
            let rv = file_output_stream_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - FilenameCompleter Class

/// The `FilenameCompleterProtocol` protocol exposes the methods and properties of an underlying `GFilenameCompleter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FilenameCompleter`.
/// Alternatively, use `FilenameCompleterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Completes partial file and directory names given a partial string by
/// looking in the file system for clues. Can return a list of possible
/// completion strings for widget implementations.
public protocol FilenameCompleterProtocol: ObjectProtocol {
        /// Untyped pointer to the underlying `GFilenameCompleter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFilenameCompleter` instance.
    var filename_completer_ptr: UnsafeMutablePointer<GFilenameCompleter>! { get }

}

/// The `FilenameCompleterRef` type acts as a lightweight Swift reference to an underlying `GFilenameCompleter` instance.
/// It exposes methods that can operate on this data type through `FilenameCompleterProtocol` conformance.
/// Use `FilenameCompleterRef` only as an `unowned` reference to an existing `GFilenameCompleter` instance.
///
/// Completes partial file and directory names given a partial string by
/// looking in the file system for clues. Can return a list of possible
/// completion strings for widget implementations.
public struct FilenameCompleterRef: FilenameCompleterProtocol {
        /// Untyped pointer to the underlying `GFilenameCompleter` instance.
    /// For type-safe access, use the generated, typed pointer `filename_completer_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FilenameCompleterRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GFilenameCompleter>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GFilenameCompleter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GFilenameCompleter>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GFilenameCompleter>?) {
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

    /// Reference intialiser for a related type that implements `FilenameCompleterProtocol`
    @inlinable init<T: FilenameCompleterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new filename completer.
    @inlinable init() {
        let rv = g_filename_completer_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `FilenameCompleter` type acts as a reference-counted owner of an underlying `GFilenameCompleter` instance.
/// It provides the methods that can operate on this data type through `FilenameCompleterProtocol` conformance.
/// Use `FilenameCompleter` as a strong reference or owner of a `GFilenameCompleter` instance.
///
/// Completes partial file and directory names given a partial string by
/// looking in the file system for clues. Can return a list of possible
/// completion strings for widget implementations.
open class FilenameCompleter: Object, FilenameCompleterProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FilenameCompleter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GFilenameCompleter>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FilenameCompleter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GFilenameCompleter>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FilenameCompleter` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FilenameCompleter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FilenameCompleter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GFilenameCompleter>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FilenameCompleter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GFilenameCompleter>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GFilenameCompleter`.
    /// i.e., ownership is transferred to the `FilenameCompleter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GFilenameCompleter>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FilenameCompleterProtocol`
    /// Will retain `GFilenameCompleter`.
    /// - Parameter other: an instance of a related type that implements `FilenameCompleterProtocol`
    @inlinable public init<T: FilenameCompleterProtocol>(filenameCompleter other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new filename completer.
    @inlinable public init() {
        let rv = g_filename_completer_new()
        super.init(gpointer: (rv))
    }


}

// MARK: no FilenameCompleter properties

public enum FilenameCompleterSignalName: String, SignalNameProtocol {
    /// Emitted when the file name completion information comes available.
    case gotCompletionData = "got-completion-data"
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

public extension FilenameCompleterProtocol {
    /// Connect a `FilenameCompleterSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: FilenameCompleterSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: FilenameCompleter Class: FilenameCompleterProtocol extension (methods and fields)
public extension FilenameCompleterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFilenameCompleter` instance.
    @inlinable var filename_completer_ptr: UnsafeMutablePointer<GFilenameCompleter>! { return ptr?.assumingMemoryBound(to: GFilenameCompleter.self) }

    /// Obtains a completion for `initial_text` from `completer`.
    @inlinable func getCompletionSuffix(initialText initial_text: UnsafePointer<CChar>!) -> String! {
        let rv = g_filename_completer_get_completion_suffix(filename_completer_ptr, initial_text).map({ String(cString: $0) })
        return rv
    }

    /// Gets an array of completion strings for a given initial text.
    @inlinable func getCompletions(initialText initial_text: UnsafePointer<CChar>!) -> UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>! {
        let rv = g_filename_completer_get_completions(filename_completer_ptr, initial_text)
        return rv
    }

    /// If `dirs_only` is `true`, `completer` will only
    /// complete directory names, and not file names.
    @inlinable func set(dirsOnly dirs_only: Bool) {
        g_filename_completer_set_dirs_only(filename_completer_ptr, gboolean((dirs_only) ? 1 : 0))
    
    }


}



// MARK: - FilterInputStream Class

/// The `FilterInputStreamProtocol` protocol exposes the methods and properties of an underlying `GFilterInputStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FilterInputStream`.
/// Alternatively, use `FilterInputStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Base class for input stream implementations that perform some
/// kind of filtering operation on a base stream. Typical examples
/// of filtering operations are character set conversion, compression
/// and byte order flipping.
public protocol FilterInputStreamProtocol: InputStreamProtocol {
        /// Untyped pointer to the underlying `GFilterInputStream` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFilterInputStream` instance.
    var filter_input_stream_ptr: UnsafeMutablePointer<GFilterInputStream>! { get }

}

/// The `FilterInputStreamRef` type acts as a lightweight Swift reference to an underlying `GFilterInputStream` instance.
/// It exposes methods that can operate on this data type through `FilterInputStreamProtocol` conformance.
/// Use `FilterInputStreamRef` only as an `unowned` reference to an existing `GFilterInputStream` instance.
///
/// Base class for input stream implementations that perform some
/// kind of filtering operation on a base stream. Typical examples
/// of filtering operations are character set conversion, compression
/// and byte order flipping.
public struct FilterInputStreamRef: FilterInputStreamProtocol {
        /// Untyped pointer to the underlying `GFilterInputStream` instance.
    /// For type-safe access, use the generated, typed pointer `filter_input_stream_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FilterInputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GFilterInputStream>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GFilterInputStream>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GFilterInputStream>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GFilterInputStream>?) {
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

    /// Reference intialiser for a related type that implements `FilterInputStreamProtocol`
    @inlinable init<T: FilterInputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FilterInputStream` type acts as a reference-counted owner of an underlying `GFilterInputStream` instance.
/// It provides the methods that can operate on this data type through `FilterInputStreamProtocol` conformance.
/// Use `FilterInputStream` as a strong reference or owner of a `GFilterInputStream` instance.
///
/// Base class for input stream implementations that perform some
/// kind of filtering operation on a base stream. Typical examples
/// of filtering operations are character set conversion, compression
/// and byte order flipping.
open class FilterInputStream: InputStream, FilterInputStreamProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FilterInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GFilterInputStream>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FilterInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GFilterInputStream>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FilterInputStream` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FilterInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FilterInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GFilterInputStream>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FilterInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GFilterInputStream>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GFilterInputStream`.
    /// i.e., ownership is transferred to the `FilterInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GFilterInputStream>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FilterInputStreamProtocol`
    /// Will retain `GFilterInputStream`.
    /// - Parameter other: an instance of a related type that implements `FilterInputStreamProtocol`
    @inlinable public init<T: FilterInputStreamProtocol>(filterInputStream other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum FilterInputStreamPropertyName: String, PropertyNameProtocol {
    case baseStream = "base-stream"
    case closeBaseStream = "close-base-stream"
}

public extension FilterInputStreamProtocol {
    /// Bind a `FilterInputStreamPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: FilterInputStreamPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a FilterInputStream property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: FilterInputStreamPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a FilterInputStream property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: FilterInputStreamPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum FilterInputStreamSignalName: String, SignalNameProtocol {
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
    case notifyBaseStream = "notify::base-stream"
    case notifyCloseBaseStream = "notify::close-base-stream"
}

public extension FilterInputStreamProtocol {
    /// Connect a `FilterInputStreamSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: FilterInputStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: FilterInputStream Class: FilterInputStreamProtocol extension (methods and fields)
public extension FilterInputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFilterInputStream` instance.
    @inlinable var filter_input_stream_ptr: UnsafeMutablePointer<GFilterInputStream>! { return ptr?.assumingMemoryBound(to: GFilterInputStream.self) }

    /// Gets the base stream for the filter stream.
    @inlinable func getBaseStream() -> InputStreamRef! {
        guard let rv = InputStreamRef(gconstpointer: gconstpointer(g_filter_input_stream_get_base_stream(filter_input_stream_ptr))) else { return nil }
        return rv
    }

    /// Returns whether the base stream will be closed when `stream` is
    /// closed.
    @inlinable func getCloseBaseStream() -> Bool {
        let rv = ((g_filter_input_stream_get_close_base_stream(filter_input_stream_ptr)) != 0)
        return rv
    }

    /// Sets whether the base stream will be closed when `stream` is closed.
    @inlinable func setCloseBaseStream(closeBase close_base: Bool) {
        g_filter_input_stream_set_close_base_stream(filter_input_stream_ptr, gboolean((close_base) ? 1 : 0))
    
    }
    /// Gets the base stream for the filter stream.
    @inlinable var baseStream: InputStreamRef! {
        /// Gets the base stream for the filter stream.
        get {
            guard let rv = InputStreamRef(gconstpointer: gconstpointer(g_filter_input_stream_get_base_stream(filter_input_stream_ptr))) else { return nil }
            return rv
        }
    }

    /// Returns whether the base stream will be closed when `stream` is
    /// closed.
    @inlinable var closeBaseStream: Bool {
        /// Returns whether the base stream will be closed when `stream` is
        /// closed.
        get {
            let rv = ((g_filter_input_stream_get_close_base_stream(filter_input_stream_ptr)) != 0)
            return rv
        }
        /// Sets whether the base stream will be closed when `stream` is closed.
        nonmutating set {
            g_filter_input_stream_set_close_base_stream(filter_input_stream_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var parentInstance: GInputStream {
        get {
            let rv = filter_input_stream_ptr.pointee.parent_instance
            return rv
        }
    }

    @inlinable var _baseStream: InputStreamRef! {
        get {
            let rv = InputStreamRef(gconstpointer: gconstpointer(filter_input_stream_ptr.pointee.base_stream))
            return rv
        }
    }

}



// MARK: - FilterOutputStream Class

/// The `FilterOutputStreamProtocol` protocol exposes the methods and properties of an underlying `GFilterOutputStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FilterOutputStream`.
/// Alternatively, use `FilterOutputStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Base class for output stream implementations that perform some
/// kind of filtering operation on a base stream. Typical examples
/// of filtering operations are character set conversion, compression
/// and byte order flipping.
public protocol FilterOutputStreamProtocol: OutputStreamProtocol {
        /// Untyped pointer to the underlying `GFilterOutputStream` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFilterOutputStream` instance.
    var filter_output_stream_ptr: UnsafeMutablePointer<GFilterOutputStream>! { get }

}

/// The `FilterOutputStreamRef` type acts as a lightweight Swift reference to an underlying `GFilterOutputStream` instance.
/// It exposes methods that can operate on this data type through `FilterOutputStreamProtocol` conformance.
/// Use `FilterOutputStreamRef` only as an `unowned` reference to an existing `GFilterOutputStream` instance.
///
/// Base class for output stream implementations that perform some
/// kind of filtering operation on a base stream. Typical examples
/// of filtering operations are character set conversion, compression
/// and byte order flipping.
public struct FilterOutputStreamRef: FilterOutputStreamProtocol {
        /// Untyped pointer to the underlying `GFilterOutputStream` instance.
    /// For type-safe access, use the generated, typed pointer `filter_output_stream_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FilterOutputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GFilterOutputStream>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GFilterOutputStream>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GFilterOutputStream>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GFilterOutputStream>?) {
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

    /// Reference intialiser for a related type that implements `FilterOutputStreamProtocol`
    @inlinable init<T: FilterOutputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FilterOutputStream` type acts as a reference-counted owner of an underlying `GFilterOutputStream` instance.
/// It provides the methods that can operate on this data type through `FilterOutputStreamProtocol` conformance.
/// Use `FilterOutputStream` as a strong reference or owner of a `GFilterOutputStream` instance.
///
/// Base class for output stream implementations that perform some
/// kind of filtering operation on a base stream. Typical examples
/// of filtering operations are character set conversion, compression
/// and byte order flipping.
open class FilterOutputStream: OutputStream, FilterOutputStreamProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FilterOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GFilterOutputStream>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FilterOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GFilterOutputStream>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FilterOutputStream` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FilterOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FilterOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GFilterOutputStream>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FilterOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GFilterOutputStream>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GFilterOutputStream`.
    /// i.e., ownership is transferred to the `FilterOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GFilterOutputStream>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FilterOutputStreamProtocol`
    /// Will retain `GFilterOutputStream`.
    /// - Parameter other: an instance of a related type that implements `FilterOutputStreamProtocol`
    @inlinable public init<T: FilterOutputStreamProtocol>(filterOutputStream other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum FilterOutputStreamPropertyName: String, PropertyNameProtocol {
    case baseStream = "base-stream"
    case closeBaseStream = "close-base-stream"
}

public extension FilterOutputStreamProtocol {
    /// Bind a `FilterOutputStreamPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: FilterOutputStreamPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a FilterOutputStream property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: FilterOutputStreamPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a FilterOutputStream property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: FilterOutputStreamPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum FilterOutputStreamSignalName: String, SignalNameProtocol {
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
    case notifyBaseStream = "notify::base-stream"
    case notifyCloseBaseStream = "notify::close-base-stream"
}

public extension FilterOutputStreamProtocol {
    /// Connect a `FilterOutputStreamSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: FilterOutputStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: FilterOutputStream Class: FilterOutputStreamProtocol extension (methods and fields)
public extension FilterOutputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFilterOutputStream` instance.
    @inlinable var filter_output_stream_ptr: UnsafeMutablePointer<GFilterOutputStream>! { return ptr?.assumingMemoryBound(to: GFilterOutputStream.self) }

    /// Gets the base stream for the filter stream.
    @inlinable func getBaseStream() -> OutputStreamRef! {
        guard let rv = OutputStreamRef(gconstpointer: gconstpointer(g_filter_output_stream_get_base_stream(filter_output_stream_ptr))) else { return nil }
        return rv
    }

    /// Returns whether the base stream will be closed when `stream` is
    /// closed.
    @inlinable func getCloseBaseStream() -> Bool {
        let rv = ((g_filter_output_stream_get_close_base_stream(filter_output_stream_ptr)) != 0)
        return rv
    }

    /// Sets whether the base stream will be closed when `stream` is closed.
    @inlinable func setCloseBaseStream(closeBase close_base: Bool) {
        g_filter_output_stream_set_close_base_stream(filter_output_stream_ptr, gboolean((close_base) ? 1 : 0))
    
    }
    /// Gets the base stream for the filter stream.
    @inlinable var baseStream: OutputStreamRef! {
        /// Gets the base stream for the filter stream.
        get {
            guard let rv = OutputStreamRef(gconstpointer: gconstpointer(g_filter_output_stream_get_base_stream(filter_output_stream_ptr))) else { return nil }
            return rv
        }
    }

    /// Returns whether the base stream will be closed when `stream` is
    /// closed.
    @inlinable var closeBaseStream: Bool {
        /// Returns whether the base stream will be closed when `stream` is
        /// closed.
        get {
            let rv = ((g_filter_output_stream_get_close_base_stream(filter_output_stream_ptr)) != 0)
            return rv
        }
        /// Sets whether the base stream will be closed when `stream` is closed.
        nonmutating set {
            g_filter_output_stream_set_close_base_stream(filter_output_stream_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var parentInstance: GOutputStream {
        get {
            let rv = filter_output_stream_ptr.pointee.parent_instance
            return rv
        }
    }

    @inlinable var _baseStream: OutputStreamRef! {
        get {
            let rv = OutputStreamRef(gconstpointer: gconstpointer(filter_output_stream_ptr.pointee.base_stream))
            return rv
        }
    }

}



// MARK: - IOModule Class

/// The `IOModuleProtocol` protocol exposes the methods and properties of an underlying `GIOModule` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IOModule`.
/// Alternatively, use `IOModuleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Provides an interface and default functions for loading and unloading
/// modules. This is used internally to make GIO extensible, but can also
/// be used by others to implement module loading.
public protocol IOModuleProtocol: TypeModuleProtocol {
        /// Untyped pointer to the underlying `GIOModule` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GIOModule` instance.
    var io_module_ptr: UnsafeMutablePointer<GIOModule>! { get }

}

/// The `IOModuleRef` type acts as a lightweight Swift reference to an underlying `GIOModule` instance.
/// It exposes methods that can operate on this data type through `IOModuleProtocol` conformance.
/// Use `IOModuleRef` only as an `unowned` reference to an existing `GIOModule` instance.
///
/// Provides an interface and default functions for loading and unloading
/// modules. This is used internally to make GIO extensible, but can also
/// be used by others to implement module loading.
public struct IOModuleRef: IOModuleProtocol {
        /// Untyped pointer to the underlying `GIOModule` instance.
    /// For type-safe access, use the generated, typed pointer `io_module_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IOModuleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GIOModule>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GIOModule>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GIOModule>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GIOModule>?) {
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

    /// Reference intialiser for a related type that implements `IOModuleProtocol`
    @inlinable init<T: IOModuleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new GIOModule that will load the specific
    /// shared library when in use.
    @inlinable init( filename: UnsafePointer<gchar>!) {
        let rv = g_io_module_new(filename)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `IOModule` type acts as a reference-counted owner of an underlying `GIOModule` instance.
/// It provides the methods that can operate on this data type through `IOModuleProtocol` conformance.
/// Use `IOModule` as a strong reference or owner of a `GIOModule` instance.
///
/// Provides an interface and default functions for loading and unloading
/// modules. This is used internally to make GIO extensible, but can also
/// be used by others to implement module loading.
open class IOModule: TypeModule, IOModuleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOModule` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GIOModule>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOModule` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GIOModule>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOModule` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOModule` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOModule` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GIOModule>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOModule` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GIOModule>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GIOModule`.
    /// i.e., ownership is transferred to the `IOModule` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GIOModule>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `IOModuleProtocol`
    /// Will retain `GIOModule`.
    /// - Parameter other: an instance of a related type that implements `IOModuleProtocol`
    @inlinable public init<T: IOModuleProtocol>(iOModule other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new GIOModule that will load the specific
    /// shared library when in use.
    @inlinable public init( filename: UnsafePointer<gchar>!) {
        let rv = g_io_module_new(filename)
        super.init(gpointer: (rv))
    }


}

// MARK: no IOModule properties

public enum IOModuleSignalName: String, SignalNameProtocol {
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

public extension IOModuleProtocol {
    /// Connect a `IOModuleSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: IOModuleSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: IOModule Class: IOModuleProtocol extension (methods and fields)
public extension IOModuleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GIOModule` instance.
    @inlinable var io_module_ptr: UnsafeMutablePointer<GIOModule>! { return ptr?.assumingMemoryBound(to: GIOModule.self) }

    /// Required API for GIO modules to implement.
    /// 
    /// This function is run after the module has been loaded into GIO,
    /// to initialize the module. Typically, this function will call
    /// `g_io_extension_point_implement()`.
    /// 
    /// Since 2.56, this function should be named `g_io_<modulename>_load`, where
    /// `modulename` is the plugin’s filename with the `lib` or `libgio` prefix and
    /// everything after the first dot removed, and with `-` replaced with `_`
    /// throughout. For example, `libgiognutls-helper.so` becomes `gnutls_helper`.
    /// Using the new symbol names avoids name clashes when building modules
    /// statically. The old symbol names continue to be supported, but cannot be used
    /// for static builds.
    @inlinable func load() {
        _g_io_module_load(io_module_ptr)
    
    }

    /// Required API for GIO modules to implement.
    /// 
    /// This function is run when the module is being unloaded from GIO,
    /// to finalize the module.
    /// 
    /// Since 2.56, this function should be named `g_io_<modulename>_unload`, where
    /// `modulename` is the plugin’s filename with the `lib` or `libgio` prefix and
    /// everything after the first dot removed, and with `-` replaced with `_`
    /// throughout. For example, `libgiognutls-helper.so` becomes `gnutls_helper`.
    /// Using the new symbol names avoids name clashes when building modules
    /// statically. The old symbol names continue to be supported, but cannot be used
    /// for static builds.
    @inlinable func unload() {
        _g_io_module_unload(io_module_ptr)
    
    }


}



