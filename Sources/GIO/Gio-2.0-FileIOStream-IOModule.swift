import CGLib
import GLib
import GLibObject

// MARK: - FileIOStream Class

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
///
/// The `FileIOStreamProtocol` protocol exposes the methods and properties of an underlying `GFileIOStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileIOStream`.
/// Alternatively, use `FileIOStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FileIOStreamProtocol: IOStreamProtocol, SeekableProtocol {
        /// Untyped pointer to the underlying `GFileIOStream` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFileIOStream` instance.
    var file_io_stream_ptr: UnsafeMutablePointer<GFileIOStream>! { get }

    /// Required Initialiser for types conforming to `FileIOStreamProtocol`
    init(raw: UnsafeMutableRawPointer)
}

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
///
/// The `FileIOStreamRef` type acts as a lightweight Swift reference to an underlying `GFileIOStream` instance.
/// It exposes methods that can operate on this data type through `FileIOStreamProtocol` conformance.
/// Use `FileIOStreamRef` only as an `unowned` reference to an existing `GFileIOStream` instance.
///
public struct FileIOStreamRef: FileIOStreamProtocol, GWeakCapturing {
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

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FileIOStreamProtocol>(_ other: T) -> FileIOStreamRef { FileIOStreamRef(other) }

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
    @inlinable init(mutating raw: UnsafeRawPointer) {
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
///
/// The `FileIOStream` type acts as a reference-counted owner of an underlying `GFileIOStream` instance.
/// It provides the methods that can operate on this data type through `FileIOStreamProtocol` conformance.
/// Use `FileIOStream` as a strong reference or owner of a `GFileIOStream` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: FileIOStreamPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

// MARK: FileIOStream has no signals
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
    @inlinable func queryInfo(attributes: UnsafePointer<CChar>!, cancellable: CancellableRef? = nil) throws -> FileInfoRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileInfoRef(gconstpointer: gconstpointer(g_file_io_stream_query_info(file_io_stream_ptr, attributes, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
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
    @inlinable func queryInfo<CancellableT: CancellableProtocol>(attributes: UnsafePointer<CChar>!, cancellable: CancellableT?) throws -> FileInfoRef! {
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
    @inlinable func queryInfoAsync(attributes: UnsafePointer<CChar>!, ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_io_stream_query_info_async(file_io_stream_ptr, attributes, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously queries the `stream` for a `GFileInfo`. When completed,
    /// `callback` will be called with a `GAsyncResult` which can be used to
    /// finish the operation with `g_file_io_stream_query_info_finish()`.
    /// 
    /// For the synchronous version of this function, see
    /// `g_file_io_stream_query_info()`.
    @inlinable func queryInfoAsync<CancellableT: CancellableProtocol>(attributes: UnsafePointer<CChar>!, ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_io_stream_query_info_async(file_io_stream_ptr, attributes, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
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

/// `GFileIcon` specifies an icon by pointing to an image file
/// to be used as icon.
///
/// The `FileIconProtocol` protocol exposes the methods and properties of an underlying `GFileIcon` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileIcon`.
/// Alternatively, use `FileIconRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FileIconProtocol: GLibObject.ObjectProtocol, IconProtocol, LoadableIconProtocol {
        /// Untyped pointer to the underlying `GFileIcon` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFileIcon` instance.
    var file_icon_ptr: UnsafeMutablePointer<GFileIcon>! { get }

    /// Required Initialiser for types conforming to `FileIconProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GFileIcon` specifies an icon by pointing to an image file
/// to be used as icon.
///
/// The `FileIconRef` type acts as a lightweight Swift reference to an underlying `GFileIcon` instance.
/// It exposes methods that can operate on this data type through `FileIconProtocol` conformance.
/// Use `FileIconRef` only as an `unowned` reference to an existing `GFileIcon` instance.
///
public struct FileIconRef: FileIconProtocol, GWeakCapturing {
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

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FileIconProtocol>(_ other: T) -> FileIconRef { FileIconRef(other) }

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
    @inlinable init(mutating raw: UnsafeRawPointer) {
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

/// `GFileIcon` specifies an icon by pointing to an image file
/// to be used as icon.
///
/// The `FileIcon` type acts as a reference-counted owner of an underlying `GFileIcon` instance.
/// It provides the methods that can operate on this data type through `FileIconProtocol` conformance.
/// Use `FileIcon` as a strong reference or owner of a `GFileIcon` instance.
///
open class FileIcon: GLibObject.Object, FileIconProtocol {
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: FileIconPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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
    /// The file containing the icon.
    case notifyFile = "notify::file"
}

// MARK: FileIcon has no signals
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
/// The direct accessors, such as `g_file_info_get_name()`, are slightly more
/// optimized than the generic attribute accessors, such as
/// `g_file_info_get_attribute_byte_string()`.This optimization will matter
/// only if calling the API in a tight loop.
/// 
/// `GFileAttributeMatcher` allows for searching through a `GFileInfo` for
/// attributes.
///
/// The `FileInfoProtocol` protocol exposes the methods and properties of an underlying `GFileInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileInfo`.
/// Alternatively, use `FileInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FileInfoProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GFileInfo` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFileInfo` instance.
    var file_info_ptr: UnsafeMutablePointer<GFileInfo>! { get }

    /// Required Initialiser for types conforming to `FileInfoProtocol`
    init(raw: UnsafeMutableRawPointer)
}

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
/// The direct accessors, such as `g_file_info_get_name()`, are slightly more
/// optimized than the generic attribute accessors, such as
/// `g_file_info_get_attribute_byte_string()`.This optimization will matter
/// only if calling the API in a tight loop.
/// 
/// `GFileAttributeMatcher` allows for searching through a `GFileInfo` for
/// attributes.
///
/// The `FileInfoRef` type acts as a lightweight Swift reference to an underlying `GFileInfo` instance.
/// It exposes methods that can operate on this data type through `FileInfoProtocol` conformance.
/// Use `FileInfoRef` only as an `unowned` reference to an existing `GFileInfo` instance.
///
public struct FileInfoRef: FileInfoProtocol, GWeakCapturing {
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

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FileInfoProtocol>(_ other: T) -> FileInfoRef { FileInfoRef(other) }

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
    @inlinable init(mutating raw: UnsafeRawPointer) {
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
/// The direct accessors, such as `g_file_info_get_name()`, are slightly more
/// optimized than the generic attribute accessors, such as
/// `g_file_info_get_attribute_byte_string()`.This optimization will matter
/// only if calling the API in a tight loop.
/// 
/// `GFileAttributeMatcher` allows for searching through a `GFileInfo` for
/// attributes.
///
/// The `FileInfo` type acts as a reference-counted owner of an underlying `GFileInfo` instance.
/// It provides the methods that can operate on this data type through `FileInfoProtocol` conformance.
/// Use `FileInfo` as a strong reference or owner of a `GFileInfo` instance.
///
open class FileInfo: GLibObject.Object, FileInfoProtocol {
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
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

// MARK: FileInfo has no signals
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
    @inlinable func copyInto<FileInfoT: FileInfoProtocol>(destInfo: FileInfoT) {
        g_file_info_copy_into(file_info_ptr, destInfo.file_info_ptr)
    
    }

    /// Duplicates a file info structure.
    @inlinable func dup() -> FileInfoRef! {
        guard let rv = FileInfoRef(gconstpointer: gconstpointer(g_file_info_dup(file_info_ptr))) else { return nil }
        return rv
    }

    /// Gets the access time of the current `info` and returns it as a
    /// `GDateTime`.
    /// 
    /// This requires the `G_FILE_ATTRIBUTE_TIME_ACCESS` attribute. If
    /// `G_FILE_ATTRIBUTE_TIME_ACCESS_USEC` is provided, the resulting `GDateTime`
    /// will have microsecond precision.
    @inlinable func getAccessDateTime() -> GLib.DateTimeRef! {
        let rv = GLib.DateTimeRef(g_file_info_get_access_date_time(file_info_ptr))
        return rv
    }

    /// Gets the value of a attribute, formatted as a string.
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
    @inlinable func getAttributeData(attribute: UnsafePointer<CChar>!, type: UnsafeMutablePointer<GFileAttributeType>! = nil, valuePp: UnsafeMutablePointer<gpointer?>! = nil, status: UnsafeMutablePointer<GFileAttributeStatus>! = nil) -> Bool {
        let rv = ((g_file_info_get_attribute_data(file_info_ptr, attribute, type, valuePp, status)) != 0)
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
    @inlinable func getAttributeObject(attribute: UnsafePointer<CChar>!) -> GLibObject.ObjectRef! {
        let rv = GLibObject.ObjectRef(g_file_info_get_attribute_object(file_info_ptr, attribute))
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

    /// Gets the creation time of the current `info` and returns it as a
    /// `GDateTime`.
    /// 
    /// This requires the `G_FILE_ATTRIBUTE_TIME_CREATED` attribute. If
    /// `G_FILE_ATTRIBUTE_TIME_CREATED_USEC` is provided, the resulting `GDateTime`
    /// will have microsecond precision.
    @inlinable func getCreationDateTime() -> GLib.DateTimeRef! {
        let rv = GLib.DateTimeRef(g_file_info_get_creation_date_time(file_info_ptr))
        return rv
    }

    /// Returns the `GDateTime` representing the deletion date of the file, as
    /// available in G_FILE_ATTRIBUTE_TRASH_DELETION_DATE. If the
    /// G_FILE_ATTRIBUTE_TRASH_DELETION_DATE attribute is unset, `nil` is returned.
    @inlinable func getDeletionDate() -> GLib.DateTimeRef! {
        let rv = GLib.DateTimeRef(g_file_info_get_deletion_date(file_info_ptr))
        return rv
    }

    /// Gets a display name for a file. This is guaranteed to always be set.
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
    @inlinable func getModificationDateTime() -> GLib.DateTimeRef! {
        let rv = GLib.DateTimeRef(g_file_info_get_modification_date_time(file_info_ptr))
        return rv
    }

    /// Gets the modification time of the current `info` and sets it
    /// in `result`.
    ///
    /// **get_modification_time is deprecated:**
    /// Use g_file_info_get_modification_date_time() instead, as
    ///    #GTimeVal is deprecated due to the year 2038 problem.
    @available(*, deprecated) @inlinable func getModificationTime<TimeValT: GLib.TimeValProtocol>(result: TimeValT) {
        g_file_info_get_modification_time(file_info_ptr, result._ptr)
    
    }

    /// Gets the name for a file. This is guaranteed to always be set.
    @inlinable func getName() -> String! {
        let rv = g_file_info_get_name(file_info_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the file's size (in bytes). The size is retrieved through the value of
    /// the `G_FILE_ATTRIBUTE_STANDARD_SIZE` attribute and is converted
    /// from `guint64` to `goffset` before returning the result.
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
    @inlinable func hasNamespace(nameSpace: UnsafePointer<CChar>!) -> Bool {
        let rv = ((g_file_info_has_namespace(file_info_ptr, nameSpace)) != 0)
        return rv
    }

    /// Lists the file info structure's attributes.
    @inlinable func listAttributes(nameSpace: UnsafePointer<CChar>? = nil) -> UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>! {
        let rv = g_file_info_list_attributes(file_info_ptr, nameSpace)
        return rv
    }

    /// Removes all cases of `attribute` from `info` if it exists.
    @inlinable func remove(attribute: UnsafePointer<CChar>!) {
        g_file_info_remove_attribute(file_info_ptr, attribute)
    
    }

    /// Sets the `G_FILE_ATTRIBUTE_TIME_ACCESS` and
    /// `G_FILE_ATTRIBUTE_TIME_ACCESS_USEC` attributes in the file info to the
    /// given date/time value.
    @inlinable func setAccessDateTime<DateTimeT: GLib.DateTimeProtocol>(atime: DateTimeT) {
        g_file_info_set_access_date_time(file_info_ptr, atime.date_time_ptr)
    
    }

    /// Sets the `attribute` to contain the given value, if possible. To unset the
    /// attribute, use `G_FILE_ATTRIBUTE_TYPE_INVALID` for `type`.
    @inlinable func set(attribute: UnsafePointer<CChar>!, type: GFileAttributeType, valueP: gpointer!) {
        g_file_info_set_attribute(file_info_ptr, attribute, type, valueP)
    
    }

    /// Sets the `attribute` to contain the given `attr_value`,
    /// if possible.
    @inlinable func setAttributeBoolean(attribute: UnsafePointer<CChar>!, attrValue: Bool) {
        g_file_info_set_attribute_boolean(file_info_ptr, attribute, gboolean((attrValue) ? 1 : 0))
    
    }

    /// Sets the `attribute` to contain the given `attr_value`,
    /// if possible.
    @inlinable func setAttributeByteString(attribute: UnsafePointer<CChar>!, attrValue: UnsafePointer<CChar>!) {
        g_file_info_set_attribute_byte_string(file_info_ptr, attribute, attrValue)
    
    }

    /// Sets the `attribute` to contain the given `attr_value`,
    /// if possible.
    @inlinable func setAttributeInt32(attribute: UnsafePointer<CChar>!, attrValue: gint32) {
        g_file_info_set_attribute_int32(file_info_ptr, attribute, attrValue)
    
    }

    /// Sets the `attribute` to contain the given `attr_value`,
    /// if possible.
    @inlinable func setAttributeInt64(attribute: UnsafePointer<CChar>!, attrValue: gint64) {
        g_file_info_set_attribute_int64(file_info_ptr, attribute, attrValue)
    
    }

    /// Sets `mask` on `info` to match specific attribute types.
    @inlinable func setAttribute<FileAttributeMatcherT: FileAttributeMatcherProtocol>(mask: FileAttributeMatcherT) {
        g_file_info_set_attribute_mask(file_info_ptr, mask.file_attribute_matcher_ptr)
    
    }

    /// Sets the `attribute` to contain the given `attr_value`,
    /// if possible.
    @inlinable func setAttributeObject<ObjectT: GLibObject.ObjectProtocol>(attribute: UnsafePointer<CChar>!, attrValue: ObjectT) {
        g_file_info_set_attribute_object(file_info_ptr, attribute, attrValue.object_ptr)
    
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
    @inlinable func setAttributeString(attribute: UnsafePointer<CChar>!, attrValue: UnsafePointer<CChar>!) {
        g_file_info_set_attribute_string(file_info_ptr, attribute, attrValue)
    
    }

    /// Sets the `attribute` to contain the given `attr_value`,
    /// if possible.
    /// 
    /// Sinze: 2.22
    @inlinable func setAttributeStringv(attribute: UnsafePointer<CChar>!, attrValue: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!) {
        g_file_info_set_attribute_stringv(file_info_ptr, attribute, attrValue)
    
    }

    /// Sets the `attribute` to contain the given `attr_value`,
    /// if possible.
    @inlinable func setAttributeUint32(attribute: UnsafePointer<CChar>!, attrValue: guint32) {
        g_file_info_set_attribute_uint32(file_info_ptr, attribute, attrValue)
    
    }

    /// Sets the `attribute` to contain the given `attr_value`,
    /// if possible.
    @inlinable func setAttributeUint64(attribute: UnsafePointer<CChar>!, attrValue: guint64) {
        g_file_info_set_attribute_uint64(file_info_ptr, attribute, attrValue)
    
    }

    /// Sets the content type attribute for a given `GFileInfo`.
    /// See `G_FILE_ATTRIBUTE_STANDARD_CONTENT_TYPE`.
    @inlinable func set(contentType: UnsafePointer<CChar>!) {
        g_file_info_set_content_type(file_info_ptr, contentType)
    
    }

    /// Sets the `G_FILE_ATTRIBUTE_TIME_CREATED` and
    /// `G_FILE_ATTRIBUTE_TIME_CREATED_USEC` attributes in the file info to the
    /// given date/time value.
    @inlinable func setCreationDateTime<DateTimeT: GLib.DateTimeProtocol>(creationTime: DateTimeT) {
        g_file_info_set_creation_date_time(file_info_ptr, creationTime.date_time_ptr)
    
    }

    /// Sets the display name for the current `GFileInfo`.
    /// See `G_FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME`.
    @inlinable func set(displayName: UnsafePointer<CChar>!) {
        g_file_info_set_display_name(file_info_ptr, displayName)
    
    }

    /// Sets the edit name for the current file.
    /// See `G_FILE_ATTRIBUTE_STANDARD_EDIT_NAME`.
    @inlinable func set(editName: UnsafePointer<CChar>!) {
        g_file_info_set_edit_name(file_info_ptr, editName)
    
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
    @inlinable func set(isHidden: Bool) {
        g_file_info_set_is_hidden(file_info_ptr, gboolean((isHidden) ? 1 : 0))
    
    }

    /// Sets the "is_symlink" attribute in a `GFileInfo` according to `is_symlink`.
    /// See `G_FILE_ATTRIBUTE_STANDARD_IS_SYMLINK`.
    @inlinable func set(isSymlink: Bool) {
        g_file_info_set_is_symlink(file_info_ptr, gboolean((isSymlink) ? 1 : 0))
    
    }

    /// Sets the `G_FILE_ATTRIBUTE_TIME_MODIFIED` and
    /// `G_FILE_ATTRIBUTE_TIME_MODIFIED_USEC` attributes in the file info to the
    /// given date/time value.
    @inlinable func setModificationDateTime<DateTimeT: GLib.DateTimeProtocol>(mtime: DateTimeT) {
        g_file_info_set_modification_date_time(file_info_ptr, mtime.date_time_ptr)
    
    }

    /// Sets the `G_FILE_ATTRIBUTE_TIME_MODIFIED` and
    /// `G_FILE_ATTRIBUTE_TIME_MODIFIED_USEC` attributes in the file info to the
    /// given time value.
    ///
    /// **set_modification_time is deprecated:**
    /// Use g_file_info_set_modification_date_time() instead, as
    ///    #GTimeVal is deprecated due to the year 2038 problem.
    @available(*, deprecated) @inlinable func setModificationTime<TimeValT: GLib.TimeValProtocol>(mtime: TimeValT) {
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
    @inlinable func set(sortOrder: gint32) {
        g_file_info_set_sort_order(file_info_ptr, sortOrder)
    
    }

    /// Sets the symbolic icon for a given `GFileInfo`.
    /// See `G_FILE_ATTRIBUTE_STANDARD_SYMBOLIC_ICON`.
    @inlinable func setSymbolic<IconT: IconProtocol>(icon: IconT) {
        g_file_info_set_symbolic_icon(file_info_ptr, icon.icon_ptr)
    
    }

    /// Sets the `G_FILE_ATTRIBUTE_STANDARD_SYMLINK_TARGET` attribute in the file info
    /// to the given symlink target.
    @inlinable func set(symlinkTarget: UnsafePointer<CChar>!) {
        g_file_info_set_symlink_target(file_info_ptr, symlinkTarget)
    
    }

    /// Unsets a mask set by `g_file_info_set_attribute_mask()`, if one
    /// is set.
    @inlinable func unsetAttributeMask() {
        g_file_info_unset_attribute_mask(file_info_ptr)
    
    }
    /// Gets the access time of the current `info` and returns it as a
    /// `GDateTime`.
    /// 
    /// This requires the `G_FILE_ATTRIBUTE_TIME_ACCESS` attribute. If
    /// `G_FILE_ATTRIBUTE_TIME_ACCESS_USEC` is provided, the resulting `GDateTime`
    /// will have microsecond precision.
    @inlinable var accessDateTime: GLib.DateTimeRef! {
        /// Gets the access time of the current `info` and returns it as a
        /// `GDateTime`.
        /// 
        /// This requires the `G_FILE_ATTRIBUTE_TIME_ACCESS` attribute. If
        /// `G_FILE_ATTRIBUTE_TIME_ACCESS_USEC` is provided, the resulting `GDateTime`
        /// will have microsecond precision.
        get {
            let rv = GLib.DateTimeRef(g_file_info_get_access_date_time(file_info_ptr))
            return rv
        }
        /// Sets the `G_FILE_ATTRIBUTE_TIME_ACCESS` and
        /// `G_FILE_ATTRIBUTE_TIME_ACCESS_USEC` attributes in the file info to the
        /// given date/time value.
        nonmutating set {
            g_file_info_set_access_date_time(file_info_ptr, UnsafeMutablePointer<GDateTime>(newValue?.date_time_ptr))
        }
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

    /// Gets the creation time of the current `info` and returns it as a
    /// `GDateTime`.
    /// 
    /// This requires the `G_FILE_ATTRIBUTE_TIME_CREATED` attribute. If
    /// `G_FILE_ATTRIBUTE_TIME_CREATED_USEC` is provided, the resulting `GDateTime`
    /// will have microsecond precision.
    @inlinable var creationDateTime: GLib.DateTimeRef! {
        /// Gets the creation time of the current `info` and returns it as a
        /// `GDateTime`.
        /// 
        /// This requires the `G_FILE_ATTRIBUTE_TIME_CREATED` attribute. If
        /// `G_FILE_ATTRIBUTE_TIME_CREATED_USEC` is provided, the resulting `GDateTime`
        /// will have microsecond precision.
        get {
            let rv = GLib.DateTimeRef(g_file_info_get_creation_date_time(file_info_ptr))
            return rv
        }
        /// Sets the `G_FILE_ATTRIBUTE_TIME_CREATED` and
        /// `G_FILE_ATTRIBUTE_TIME_CREATED_USEC` attributes in the file info to the
        /// given date/time value.
        nonmutating set {
            g_file_info_set_creation_date_time(file_info_ptr, UnsafeMutablePointer<GDateTime>(newValue?.date_time_ptr))
        }
    }

    /// Returns the `GDateTime` representing the deletion date of the file, as
    /// available in G_FILE_ATTRIBUTE_TRASH_DELETION_DATE. If the
    /// G_FILE_ATTRIBUTE_TRASH_DELETION_DATE attribute is unset, `nil` is returned.
    @inlinable var deletionDate: GLib.DateTimeRef! {
        /// Returns the `GDateTime` representing the deletion date of the file, as
        /// available in G_FILE_ATTRIBUTE_TRASH_DELETION_DATE. If the
        /// G_FILE_ATTRIBUTE_TRASH_DELETION_DATE attribute is unset, `nil` is returned.
        get {
            let rv = GLib.DateTimeRef(g_file_info_get_deletion_date(file_info_ptr))
            return rv
        }
    }

    /// Gets a display name for a file. This is guaranteed to always be set.
    @inlinable var displayName: String! {
        /// Gets a display name for a file. This is guaranteed to always be set.
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
    @inlinable var modificationDateTime: GLib.DateTimeRef! {
        /// Gets the modification time of the current `info` and returns it as a
        /// `GDateTime`.
        /// 
        /// This requires the `G_FILE_ATTRIBUTE_TIME_MODIFIED` attribute. If
        /// `G_FILE_ATTRIBUTE_TIME_MODIFIED_USEC` is provided, the resulting `GDateTime`
        /// will have microsecond precision.
        get {
            let rv = GLib.DateTimeRef(g_file_info_get_modification_date_time(file_info_ptr))
            return rv
        }
        /// Sets the `G_FILE_ATTRIBUTE_TIME_MODIFIED` and
        /// `G_FILE_ATTRIBUTE_TIME_MODIFIED_USEC` attributes in the file info to the
        /// given date/time value.
        nonmutating set {
            g_file_info_set_modification_date_time(file_info_ptr, UnsafeMutablePointer<GDateTime>(newValue?.date_time_ptr))
        }
    }

    /// Gets the name for a file. This is guaranteed to always be set.
    @inlinable var name: String! {
        /// Gets the name for a file. This is guaranteed to always be set.
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

    /// Gets the file's size (in bytes). The size is retrieved through the value of
    /// the `G_FILE_ATTRIBUTE_STANDARD_SIZE` attribute and is converted
    /// from `guint64` to `goffset` before returning the result.
    @inlinable var size: goffset {
        /// Gets the file's size (in bytes). The size is retrieved through the value of
        /// the `G_FILE_ATTRIBUTE_STANDARD_SIZE` attribute and is converted
        /// from `guint64` to `goffset` before returning the result.
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

/// GFileInputStream provides input streams that take their
/// content from a file.
/// 
/// GFileInputStream implements `GSeekable`, which allows the input
/// stream to jump to arbitrary positions in the file, provided the
/// filesystem of the file allows it. To find the position of a file
/// input stream, use `g_seekable_tell()`. To find out if a file input
/// stream supports seeking, use `g_seekable_can_seek()`.
/// To position a file input stream, use `g_seekable_seek()`.
///
/// The `FileInputStreamProtocol` protocol exposes the methods and properties of an underlying `GFileInputStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileInputStream`.
/// Alternatively, use `FileInputStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FileInputStreamProtocol: InputStreamProtocol, SeekableProtocol {
        /// Untyped pointer to the underlying `GFileInputStream` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFileInputStream` instance.
    var file_input_stream_ptr: UnsafeMutablePointer<GFileInputStream>! { get }

    /// Required Initialiser for types conforming to `FileInputStreamProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// GFileInputStream provides input streams that take their
/// content from a file.
/// 
/// GFileInputStream implements `GSeekable`, which allows the input
/// stream to jump to arbitrary positions in the file, provided the
/// filesystem of the file allows it. To find the position of a file
/// input stream, use `g_seekable_tell()`. To find out if a file input
/// stream supports seeking, use `g_seekable_can_seek()`.
/// To position a file input stream, use `g_seekable_seek()`.
///
/// The `FileInputStreamRef` type acts as a lightweight Swift reference to an underlying `GFileInputStream` instance.
/// It exposes methods that can operate on this data type through `FileInputStreamProtocol` conformance.
/// Use `FileInputStreamRef` only as an `unowned` reference to an existing `GFileInputStream` instance.
///
public struct FileInputStreamRef: FileInputStreamProtocol, GWeakCapturing {
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

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FileInputStreamProtocol>(_ other: T) -> FileInputStreamRef { FileInputStreamRef(other) }

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
    @inlinable init(mutating raw: UnsafeRawPointer) {
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

/// GFileInputStream provides input streams that take their
/// content from a file.
/// 
/// GFileInputStream implements `GSeekable`, which allows the input
/// stream to jump to arbitrary positions in the file, provided the
/// filesystem of the file allows it. To find the position of a file
/// input stream, use `g_seekable_tell()`. To find out if a file input
/// stream supports seeking, use `g_seekable_can_seek()`.
/// To position a file input stream, use `g_seekable_seek()`.
///
/// The `FileInputStream` type acts as a reference-counted owner of an underlying `GFileInputStream` instance.
/// It provides the methods that can operate on this data type through `FileInputStreamProtocol` conformance.
/// Use `FileInputStream` as a strong reference or owner of a `GFileInputStream` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
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

// MARK: FileInputStream has no signals
// MARK: FileInputStream Class: FileInputStreamProtocol extension (methods and fields)
public extension FileInputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileInputStream` instance.
    @inlinable var file_input_stream_ptr: UnsafeMutablePointer<GFileInputStream>! { return ptr?.assumingMemoryBound(to: GFileInputStream.self) }

    /// Queries a file input stream the given `attributes`. This function blocks
    /// while querying the stream. For the asynchronous (non-blocking) version
    /// of this function, see `g_file_input_stream_query_info_async()`. While the
    /// stream is blocked, the stream will set the pending flag internally, and
    /// any other operations on the stream will fail with `G_IO_ERROR_PENDING`.
    @inlinable func queryInfo(attributes: UnsafePointer<CChar>!, cancellable: CancellableRef? = nil) throws -> FileInfoRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileInfoRef(gconstpointer: gconstpointer(g_file_input_stream_query_info(file_input_stream_ptr, attributes, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Queries a file input stream the given `attributes`. This function blocks
    /// while querying the stream. For the asynchronous (non-blocking) version
    /// of this function, see `g_file_input_stream_query_info_async()`. While the
    /// stream is blocked, the stream will set the pending flag internally, and
    /// any other operations on the stream will fail with `G_IO_ERROR_PENDING`.
    @inlinable func queryInfo<CancellableT: CancellableProtocol>(attributes: UnsafePointer<CChar>!, cancellable: CancellableT?) throws -> FileInfoRef! {
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
    @inlinable func queryInfoAsync(attributes: UnsafePointer<CChar>!, ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_input_stream_query_info_async(file_input_stream_ptr, attributes, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
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
    @inlinable func queryInfoAsync<CancellableT: CancellableProtocol>(attributes: UnsafePointer<CChar>!, ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_input_stream_query_info_async(file_input_stream_ptr, attributes, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
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
///
/// The `FileMonitorProtocol` protocol exposes the methods and properties of an underlying `GFileMonitor` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileMonitor`.
/// Alternatively, use `FileMonitorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FileMonitorProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GFileMonitor` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFileMonitor` instance.
    var file_monitor_ptr: UnsafeMutablePointer<GFileMonitor>! { get }

    /// Required Initialiser for types conforming to `FileMonitorProtocol`
    init(raw: UnsafeMutableRawPointer)
}

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
///
/// The `FileMonitorRef` type acts as a lightweight Swift reference to an underlying `GFileMonitor` instance.
/// It exposes methods that can operate on this data type through `FileMonitorProtocol` conformance.
/// Use `FileMonitorRef` only as an `unowned` reference to an existing `GFileMonitor` instance.
///
public struct FileMonitorRef: FileMonitorProtocol, GWeakCapturing {
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

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FileMonitorProtocol>(_ other: T) -> FileMonitorRef { FileMonitorRef(other) }

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
    @inlinable init(mutating raw: UnsafeRawPointer) {
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
///
/// The `FileMonitor` type acts as a reference-counted owner of an underlying `GFileMonitor` instance.
/// It provides the methods that can operate on this data type through `FileMonitorProtocol` conformance.
/// Use `FileMonitor` as a strong reference or owner of a `GFileMonitor` instance.
///
open class FileMonitor: GLibObject.Object, FileMonitorProtocol {
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: FileMonitorPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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
    case notifyCancelled = "notify::cancelled"
    case notifyRateLimit = "notify::rate-limit"
}

// MARK: FileMonitor signals
public extension FileMonitorProtocol {
    /// Connect a Swift signal handler to the given, typed `FileMonitorSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: FileMonitorSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `FileMonitorSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: FileMonitorSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
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
    /// - Note: This represents the underlying `changed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter file: a `GFile`.
    /// - Parameter otherFile: a `GFile` or `NULL`.
    /// - Parameter eventType: a `GFileMonitorEvent`.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `changed` signal is emitted
    @discardableResult @inlinable func onChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FileMonitorRef, _ file: FileRef, _ otherFile: FileRef?, _ eventType: FileMonitorEvent) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder4<FileMonitorRef, FileRef, FileRef?, FileMonitorEvent, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer?, UInt32, gpointer) -> Void = { unownedSelf, arg1, arg2, arg3, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FileMonitorRef(raw: unownedSelf), FileRef(raw: arg1), arg2.flatMap(FileRef.init(raw:)), FileMonitorEvent(arg3))
            return output
        }
        return connect(
            signal: .changed,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `changed` signal for using the `connect(signal:)` methods
    static var changedSignal: FileMonitorSignalName { .changed }
    
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
    /// - Note: This represents the underlying `notify::cancelled` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyCancelled` signal is emitted
    @discardableResult @inlinable func onNotifyCancelled(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FileMonitorRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<FileMonitorRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FileMonitorRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyCancelled,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::cancelled` signal for using the `connect(signal:)` methods
    static var notifyCancelledSignal: FileMonitorSignalName { .notifyCancelled }
    
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
    /// - Note: This represents the underlying `notify::rate-limit` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyRateLimit` signal is emitted
    @discardableResult @inlinable func onNotifyRateLimit(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FileMonitorRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<FileMonitorRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FileMonitorRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyRateLimit,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::rate-limit` signal for using the `connect(signal:)` methods
    static var notifyRateLimitSignal: FileMonitorSignalName { .notifyRateLimit }
    
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
    @inlinable func emitEvent<FileT: FileProtocol>(child: FileT, otherFile: FileT, eventType: GFileMonitorEvent) {
        g_file_monitor_emit_event(file_monitor_ptr, child.file_ptr, otherFile.file_ptr, eventType)
    
    }

    /// Sets the rate limit to which the `monitor` will report
    /// consecutive change events to the same file.
    @inlinable func setRateLimit(limitMsecs: Int) {
        g_file_monitor_set_rate_limit(file_monitor_ptr, gint(limitMsecs))
    
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
///
/// The `FileOutputStreamProtocol` protocol exposes the methods and properties of an underlying `GFileOutputStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileOutputStream`.
/// Alternatively, use `FileOutputStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FileOutputStreamProtocol: OutputStreamProtocol, SeekableProtocol {
        /// Untyped pointer to the underlying `GFileOutputStream` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFileOutputStream` instance.
    var file_output_stream_ptr: UnsafeMutablePointer<GFileOutputStream>! { get }

    /// Required Initialiser for types conforming to `FileOutputStreamProtocol`
    init(raw: UnsafeMutableRawPointer)
}

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
///
/// The `FileOutputStreamRef` type acts as a lightweight Swift reference to an underlying `GFileOutputStream` instance.
/// It exposes methods that can operate on this data type through `FileOutputStreamProtocol` conformance.
/// Use `FileOutputStreamRef` only as an `unowned` reference to an existing `GFileOutputStream` instance.
///
public struct FileOutputStreamRef: FileOutputStreamProtocol, GWeakCapturing {
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

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FileOutputStreamProtocol>(_ other: T) -> FileOutputStreamRef { FileOutputStreamRef(other) }

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
    @inlinable init(mutating raw: UnsafeRawPointer) {
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
///
/// The `FileOutputStream` type acts as a reference-counted owner of an underlying `GFileOutputStream` instance.
/// It provides the methods that can operate on this data type through `FileOutputStreamProtocol` conformance.
/// Use `FileOutputStream` as a strong reference or owner of a `GFileOutputStream` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
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

// MARK: FileOutputStream has no signals
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
    @inlinable func queryInfo(attributes: UnsafePointer<CChar>!, cancellable: CancellableRef? = nil) throws -> FileInfoRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileInfoRef(gconstpointer: gconstpointer(g_file_output_stream_query_info(file_output_stream_ptr, attributes, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
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
    @inlinable func queryInfo<CancellableT: CancellableProtocol>(attributes: UnsafePointer<CChar>!, cancellable: CancellableT?) throws -> FileInfoRef! {
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
    @inlinable func queryInfoAsync(attributes: UnsafePointer<CChar>!, ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_output_stream_query_info_async(file_output_stream_ptr, attributes, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously queries the `stream` for a `GFileInfo`. When completed,
    /// `callback` will be called with a `GAsyncResult` which can be used to
    /// finish the operation with `g_file_output_stream_query_info_finish()`.
    /// 
    /// For the synchronous version of this function, see
    /// `g_file_output_stream_query_info()`.
    @inlinable func queryInfoAsync<CancellableT: CancellableProtocol>(attributes: UnsafePointer<CChar>!, ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_output_stream_query_info_async(file_output_stream_ptr, attributes, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
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

/// Completes partial file and directory names given a partial string by
/// looking in the file system for clues. Can return a list of possible
/// completion strings for widget implementations.
///
/// The `FilenameCompleterProtocol` protocol exposes the methods and properties of an underlying `GFilenameCompleter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FilenameCompleter`.
/// Alternatively, use `FilenameCompleterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FilenameCompleterProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GFilenameCompleter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFilenameCompleter` instance.
    var filename_completer_ptr: UnsafeMutablePointer<GFilenameCompleter>! { get }

    /// Required Initialiser for types conforming to `FilenameCompleterProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Completes partial file and directory names given a partial string by
/// looking in the file system for clues. Can return a list of possible
/// completion strings for widget implementations.
///
/// The `FilenameCompleterRef` type acts as a lightweight Swift reference to an underlying `GFilenameCompleter` instance.
/// It exposes methods that can operate on this data type through `FilenameCompleterProtocol` conformance.
/// Use `FilenameCompleterRef` only as an `unowned` reference to an existing `GFilenameCompleter` instance.
///
public struct FilenameCompleterRef: FilenameCompleterProtocol, GWeakCapturing {
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

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FilenameCompleterProtocol>(_ other: T) -> FilenameCompleterRef { FilenameCompleterRef(other) }

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
    @inlinable init(mutating raw: UnsafeRawPointer) {
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

/// Completes partial file and directory names given a partial string by
/// looking in the file system for clues. Can return a list of possible
/// completion strings for widget implementations.
///
/// The `FilenameCompleter` type acts as a reference-counted owner of an underlying `GFilenameCompleter` instance.
/// It provides the methods that can operate on this data type through `FilenameCompleterProtocol` conformance.
/// Use `FilenameCompleter` as a strong reference or owner of a `GFilenameCompleter` instance.
///
open class FilenameCompleter: GLibObject.Object, FilenameCompleterProtocol {
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
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

// MARK: FilenameCompleter signals
public extension FilenameCompleterProtocol {
    /// Connect a Swift signal handler to the given, typed `FilenameCompleterSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: FilenameCompleterSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `FilenameCompleterSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: FilenameCompleterSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted when the file name completion information comes available.
    /// - Note: This represents the underlying `got-completion-data` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `gotCompletionData` signal is emitted
    @discardableResult @inlinable func onGotCompletionData(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FilenameCompleterRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<FilenameCompleterRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FilenameCompleterRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .gotCompletionData,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `got-completion-data` signal for using the `connect(signal:)` methods
    static var gotCompletionDataSignal: FilenameCompleterSignalName { .gotCompletionData }
    
    
}

// MARK: FilenameCompleter Class: FilenameCompleterProtocol extension (methods and fields)
public extension FilenameCompleterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFilenameCompleter` instance.
    @inlinable var filename_completer_ptr: UnsafeMutablePointer<GFilenameCompleter>! { return ptr?.assumingMemoryBound(to: GFilenameCompleter.self) }

    /// Obtains a completion for `initial_text` from `completer`.
    @inlinable func getCompletionSuffix(initialText: UnsafePointer<CChar>!) -> String! {
        let rv = g_filename_completer_get_completion_suffix(filename_completer_ptr, initialText).map({ String(cString: $0) })
        return rv
    }

    /// Gets an array of completion strings for a given initial text.
    @inlinable func getCompletions(initialText: UnsafePointer<CChar>!) -> UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>! {
        let rv = g_filename_completer_get_completions(filename_completer_ptr, initialText)
        return rv
    }

    /// If `dirs_only` is `true`, `completer` will only
    /// complete directory names, and not file names.
    @inlinable func set(dirsOnly: Bool) {
        g_filename_completer_set_dirs_only(filename_completer_ptr, gboolean((dirsOnly) ? 1 : 0))
    
    }


}



// MARK: - FilterInputStream Class

/// Base class for input stream implementations that perform some
/// kind of filtering operation on a base stream. Typical examples
/// of filtering operations are character set conversion, compression
/// and byte order flipping.
///
/// The `FilterInputStreamProtocol` protocol exposes the methods and properties of an underlying `GFilterInputStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FilterInputStream`.
/// Alternatively, use `FilterInputStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FilterInputStreamProtocol: InputStreamProtocol {
        /// Untyped pointer to the underlying `GFilterInputStream` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFilterInputStream` instance.
    var filter_input_stream_ptr: UnsafeMutablePointer<GFilterInputStream>! { get }

    /// Required Initialiser for types conforming to `FilterInputStreamProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Base class for input stream implementations that perform some
/// kind of filtering operation on a base stream. Typical examples
/// of filtering operations are character set conversion, compression
/// and byte order flipping.
///
/// The `FilterInputStreamRef` type acts as a lightweight Swift reference to an underlying `GFilterInputStream` instance.
/// It exposes methods that can operate on this data type through `FilterInputStreamProtocol` conformance.
/// Use `FilterInputStreamRef` only as an `unowned` reference to an existing `GFilterInputStream` instance.
///
public struct FilterInputStreamRef: FilterInputStreamProtocol, GWeakCapturing {
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

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FilterInputStreamProtocol>(_ other: T) -> FilterInputStreamRef { FilterInputStreamRef(other) }

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
    @inlinable init(mutating raw: UnsafeRawPointer) {
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

/// Base class for input stream implementations that perform some
/// kind of filtering operation on a base stream. Typical examples
/// of filtering operations are character set conversion, compression
/// and byte order flipping.
///
/// The `FilterInputStream` type acts as a reference-counted owner of an underlying `GFilterInputStream` instance.
/// It provides the methods that can operate on this data type through `FilterInputStreamProtocol` conformance.
/// Use `FilterInputStream` as a strong reference or owner of a `GFilterInputStream` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: FilterInputStreamPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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
    case notifyBaseStream = "notify::base-stream"
    case notifyCloseBaseStream = "notify::close-base-stream"
}

// MARK: FilterInputStream has no signals
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
    @inlinable func setCloseBaseStream(closeBase: Bool) {
        g_filter_input_stream_set_close_base_stream(filter_input_stream_ptr, gboolean((closeBase) ? 1 : 0))
    
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

/// Base class for output stream implementations that perform some
/// kind of filtering operation on a base stream. Typical examples
/// of filtering operations are character set conversion, compression
/// and byte order flipping.
///
/// The `FilterOutputStreamProtocol` protocol exposes the methods and properties of an underlying `GFilterOutputStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FilterOutputStream`.
/// Alternatively, use `FilterOutputStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FilterOutputStreamProtocol: OutputStreamProtocol {
        /// Untyped pointer to the underlying `GFilterOutputStream` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFilterOutputStream` instance.
    var filter_output_stream_ptr: UnsafeMutablePointer<GFilterOutputStream>! { get }

    /// Required Initialiser for types conforming to `FilterOutputStreamProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Base class for output stream implementations that perform some
/// kind of filtering operation on a base stream. Typical examples
/// of filtering operations are character set conversion, compression
/// and byte order flipping.
///
/// The `FilterOutputStreamRef` type acts as a lightweight Swift reference to an underlying `GFilterOutputStream` instance.
/// It exposes methods that can operate on this data type through `FilterOutputStreamProtocol` conformance.
/// Use `FilterOutputStreamRef` only as an `unowned` reference to an existing `GFilterOutputStream` instance.
///
public struct FilterOutputStreamRef: FilterOutputStreamProtocol, GWeakCapturing {
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

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FilterOutputStreamProtocol>(_ other: T) -> FilterOutputStreamRef { FilterOutputStreamRef(other) }

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
    @inlinable init(mutating raw: UnsafeRawPointer) {
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

/// Base class for output stream implementations that perform some
/// kind of filtering operation on a base stream. Typical examples
/// of filtering operations are character set conversion, compression
/// and byte order flipping.
///
/// The `FilterOutputStream` type acts as a reference-counted owner of an underlying `GFilterOutputStream` instance.
/// It provides the methods that can operate on this data type through `FilterOutputStreamProtocol` conformance.
/// Use `FilterOutputStream` as a strong reference or owner of a `GFilterOutputStream` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: FilterOutputStreamPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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
    case notifyBaseStream = "notify::base-stream"
    case notifyCloseBaseStream = "notify::close-base-stream"
}

// MARK: FilterOutputStream has no signals
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
    @inlinable func setCloseBaseStream(closeBase: Bool) {
        g_filter_output_stream_set_close_base_stream(filter_output_stream_ptr, gboolean((closeBase) ? 1 : 0))
    
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

/// Provides an interface and default functions for loading and unloading
/// modules. This is used internally to make GIO extensible, but can also
/// be used by others to implement module loading.
///
/// The `IOModuleProtocol` protocol exposes the methods and properties of an underlying `GIOModule` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IOModule`.
/// Alternatively, use `IOModuleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol IOModuleProtocol: GLibObject.TypeModuleProtocol, GLibObject.TypePluginProtocol {
        /// Untyped pointer to the underlying `GIOModule` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GIOModule` instance.
    var io_module_ptr: UnsafeMutablePointer<GIOModule>! { get }

    /// Required Initialiser for types conforming to `IOModuleProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Provides an interface and default functions for loading and unloading
/// modules. This is used internally to make GIO extensible, but can also
/// be used by others to implement module loading.
///
/// The `IOModuleRef` type acts as a lightweight Swift reference to an underlying `GIOModule` instance.
/// It exposes methods that can operate on this data type through `IOModuleProtocol` conformance.
/// Use `IOModuleRef` only as an `unowned` reference to an existing `GIOModule` instance.
///
public struct IOModuleRef: IOModuleProtocol, GWeakCapturing {
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

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: IOModuleProtocol>(_ other: T) -> IOModuleRef { IOModuleRef(other) }

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
    @inlinable init(mutating raw: UnsafeRawPointer) {
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

/// Provides an interface and default functions for loading and unloading
/// modules. This is used internally to make GIO extensible, but can also
/// be used by others to implement module loading.
///
/// The `IOModule` type acts as a reference-counted owner of an underlying `GIOModule` instance.
/// It provides the methods that can operate on this data type through `IOModuleProtocol` conformance.
/// Use `IOModule` as a strong reference or owner of a `GIOModule` instance.
///
open class IOModule: GLibObject.TypeModule, IOModuleProtocol {
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
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

// MARK: IOModule has no signals
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
    /// Since 2.56, this function should be named `g_io_&lt;modulename&gt;_load`, where
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
    /// Since 2.56, this function should be named `g_io_&lt;modulename&gt;_unload`, where
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



