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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GFileIOStream` instance.
    var file_io_stream_ptr: UnsafeMutablePointer<GFileIOStream> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension FileIOStreamRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GFileIOStream>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileIOStreamProtocol`
    init<T: FileIOStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    /// Ownership is transferred to the `FileIOStream` instance.
    public init(_ op: UnsafeMutablePointer<GFileIOStream>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `FileIOStreamProtocol`
    /// Will retain `GFileIOStream`.
    public convenience init<T: FileIOStreamProtocol>(_ other: T) {
        self.init(cast(other.file_io_stream_ptr))
        g_object_ref(cast(file_io_stream_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GFileIOStream.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GFileIOStream.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GFileIOStream.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GFileIOStream>(opaquePointer))
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: FileIOStreamPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(file_io_stream_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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
    @discardableResult func connect(signal kind: FileIOStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(file_io_stream_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension FileIOStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileIOStream` instance.
    var file_io_stream_ptr: UnsafeMutablePointer<GFileIOStream> { return ptr.assumingMemoryBound(to: GFileIOStream.self) }

    /// Gets the entity tag for the file when it has been written.
    /// This must be called after the stream has been written
    /// and closed, as the etag can change while writing.
    func getEtag() -> String! {
        let rv = g_file_io_stream_get_etag(cast(file_io_stream_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
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
    func queryInfo(attributes: UnsafePointer<CChar>, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GFileInfo>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_io_stream_query_info(cast(file_io_stream_ptr), attributes, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Asynchronously queries the `stream` for a `GFileInfo`. When completed,
    /// `callback` will be called with a `GAsyncResult` which can be used to
    /// finish the operation with `g_file_io_stream_query_info_finish()`.
    /// 
    /// For the synchronous version of this function, see
    /// `g_file_io_stream_query_info()`.
    func queryInfoAsync(attributes: UnsafePointer<CChar>, ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_io_stream_query_info_async(cast(file_io_stream_ptr), attributes, io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finalizes the asynchronous query started
    /// by `g_file_io_stream_query_info_async()`.
    func queryInfoFinish(result: AsyncResultProtocol) throws -> UnsafeMutablePointer<GFileInfo>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_io_stream_query_info_finish(cast(file_io_stream_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Opens a file in the preferred directory for temporary files (as
    /// returned by `g_get_tmp_dir()`) and returns a `GFile` and
    /// `GFileIOStream` pointing to it.
    /// 
    /// `tmpl` should be a string in the GLib file name encoding
    /// containing a sequence of six 'X' characters, and containing no
    /// directory components. If it is `nil`, a default template is used.
    /// 
    /// Unlike the other `GFile` constructors, this will return `nil` if
    /// a temporary file could not be created.
    func fileNewTmp(tmpl: UnsafePointer<CChar>) throws -> UnsafeMutablePointer<GFile>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_new_tmp(tmpl, cast(file_io_stream_ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }
    /// Gets the entity tag for the file when it has been written.
    /// This must be called after the stream has been written
    /// and closed, as the etag can change while writing.
    var etag: String! {
        /// Gets the entity tag for the file when it has been written.
        /// This must be called after the stream has been written
        /// and closed, as the etag can change while writing.
        get {
            let rv = g_file_io_stream_get_etag(cast(file_io_stream_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GFileIcon` instance.
    var file_icon_ptr: UnsafeMutablePointer<GFileIcon> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension FileIconRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GFileIcon>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileIconProtocol`
    init<T: FileIconProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new icon for a file.
    init( file: FileProtocol) {
        let rv = g_file_icon_new(cast(file.ptr))
        self.init(cast(rv))
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
    /// Ownership is transferred to the `FileIcon` instance.
    public init(_ op: UnsafeMutablePointer<GFileIcon>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `FileIconProtocol`
    /// Will retain `GFileIcon`.
    public convenience init<T: FileIconProtocol>(_ other: T) {
        self.init(cast(other.file_icon_ptr))
        g_object_ref(cast(file_icon_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GFileIcon.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GFileIcon.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GFileIcon.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GFileIcon>(opaquePointer))
    }

    /// Creates a new icon for a file.
    public convenience init( file: FileProtocol) {
        let rv = g_file_icon_new(cast(file.ptr))
        self.init(cast(rv))
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: FileIconPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(file_icon_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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
    @discardableResult func connect(signal kind: FileIconSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(file_icon_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension FileIconProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileIcon` instance.
    var file_icon_ptr: UnsafeMutablePointer<GFileIcon> { return ptr.assumingMemoryBound(to: GFileIcon.self) }

    /// Gets the `GFile` associated with the given `icon`.
    func getFile() -> UnsafeMutablePointer<GFile>! {
        let rv = g_file_icon_get_file(cast(file_icon_ptr))
        return cast(rv)
    }
    /// The file containing the icon.
    var file: UnsafeMutablePointer<GFile>! {
        /// Gets the `GFile` associated with the given `icon`.
        get {
            let rv = g_file_icon_get_file(cast(file_icon_ptr))
            return cast(rv)
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GFileInfo` instance.
    var file_info_ptr: UnsafeMutablePointer<GFileInfo> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension FileInfoRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GFileInfo>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileInfoProtocol`
    init<T: FileInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new file info structure.
    init() {
        let rv = g_file_info_new()
        self.init(cast(rv))
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
    /// Ownership is transferred to the `FileInfo` instance.
    public init(_ op: UnsafeMutablePointer<GFileInfo>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `FileInfoProtocol`
    /// Will retain `GFileInfo`.
    public convenience init<T: FileInfoProtocol>(_ other: T) {
        self.init(cast(other.file_info_ptr))
        g_object_ref(cast(file_info_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GFileInfo.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GFileInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GFileInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GFileInfo>(opaquePointer))
    }

    /// Creates a new file info structure.
    public convenience init() {
        let rv = g_file_info_new()
        self.init(cast(rv))
    }


}

// MARK: - no FileInfo properties

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
    @discardableResult func connect(signal kind: FileInfoSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(file_info_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension FileInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileInfo` instance.
    var file_info_ptr: UnsafeMutablePointer<GFileInfo> { return ptr.assumingMemoryBound(to: GFileInfo.self) }

    /// Clears the status information from `info`.
    func clearStatus() {
        g_file_info_clear_status(cast(file_info_ptr))
    
    }

    /// First clears all of the [GFileAttribute](#gio-GFileAttribute) of `dest_info`,
    /// and then copies all of the file attributes from `src_info` to `dest_info`.
    func copyInto(destInfo dest_info: FileInfoProtocol) {
        g_file_info_copy_into(cast(file_info_ptr), cast(dest_info.ptr))
    
    }

    /// Duplicates a file info structure.
    func dup() -> UnsafeMutablePointer<GFileInfo>! {
        let rv = g_file_info_dup(cast(file_info_ptr))
        return cast(rv)
    }

    /// Gets the value of a attribute, formated as a string.
    /// This escapes things as needed to make the string valid
    /// UTF-8.
    func getAttributeAsString(attribute: UnsafePointer<CChar>) -> String! {
        let rv = g_file_info_get_attribute_as_string(cast(file_info_ptr), attribute)
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the value of a boolean attribute. If the attribute does not
    /// contain a boolean value, `false` will be returned.
    func getAttributeBoolean(attribute: UnsafePointer<CChar>) -> Bool {
        let rv = g_file_info_get_attribute_boolean(cast(file_info_ptr), attribute)
        return Bool(rv != 0)
    }

    /// Gets the value of a byte string attribute. If the attribute does
    /// not contain a byte string, `nil` will be returned.
    func getAttributeByteString(attribute: UnsafePointer<CChar>) -> String! {
        let rv = g_file_info_get_attribute_byte_string(cast(file_info_ptr), attribute)
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the attribute type, value and status for an attribute key.
    func getAttributeData(attribute: UnsafePointer<CChar>, type: UnsafeMutablePointer<GFileAttributeType>, valuePp value_pp: UnsafeMutablePointer<UnsafeMutableRawPointer>, status: UnsafeMutablePointer<GFileAttributeStatus>) -> Bool {
        let rv = g_file_info_get_attribute_data(cast(file_info_ptr), attribute, cast(type), cast(value_pp), cast(status))
        return Bool(rv != 0)
    }

    /// Gets a signed 32-bit integer contained within the attribute. If the
    /// attribute does not contain a signed 32-bit integer, or is invalid,
    /// 0 will be returned.
    func getAttributeInt32(attribute: UnsafePointer<CChar>) -> Int32 {
        let rv = g_file_info_get_attribute_int32(cast(file_info_ptr), attribute)
        return Int32(rv)
    }

    /// Gets a signed 64-bit integer contained within the attribute. If the
    /// attribute does not contain an signed 64-bit integer, or is invalid,
    /// 0 will be returned.
    func getAttributeInt64(attribute: UnsafePointer<CChar>) -> Int64 {
        let rv = g_file_info_get_attribute_int64(cast(file_info_ptr), attribute)
        return Int64(rv)
    }

    /// Gets the value of a `GObject` attribute. If the attribute does
    /// not contain a `GObject`, `nil` will be returned.
    func getAttributeObject(attribute: UnsafePointer<CChar>) -> UnsafeMutablePointer<GObject>! {
        let rv = g_file_info_get_attribute_object(cast(file_info_ptr), attribute)
        return cast(rv)
    }

    /// Gets the attribute status for an attribute key.
    func getAttributeStatus(attribute: UnsafePointer<CChar>) -> GFileAttributeStatus {
        let rv = g_file_info_get_attribute_status(cast(file_info_ptr), attribute)
        return rv
    }

    /// Gets the value of a string attribute. If the attribute does
    /// not contain a string, `nil` will be returned.
    func getAttributeString(attribute: UnsafePointer<CChar>) -> String! {
        let rv = g_file_info_get_attribute_string(cast(file_info_ptr), attribute)
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the value of a stringv attribute. If the attribute does
    /// not contain a stringv, `nil` will be returned.
    func getAttributeStringv(attribute: UnsafePointer<CChar>) -> UnsafeMutablePointer<UnsafeMutablePointer<CChar>>! {
        let rv = g_file_info_get_attribute_stringv(cast(file_info_ptr), attribute)
        return cast(rv)
    }

    /// Gets the attribute type for an attribute key.
    func getAttributeType(attribute: UnsafePointer<CChar>) -> GFileAttributeType {
        let rv = g_file_info_get_attribute_type(cast(file_info_ptr), attribute)
        return rv
    }

    /// Gets an unsigned 32-bit integer contained within the attribute. If the
    /// attribute does not contain an unsigned 32-bit integer, or is invalid,
    /// 0 will be returned.
    func getAttributeUint32(attribute: UnsafePointer<CChar>) -> UInt32 {
        let rv = g_file_info_get_attribute_uint32(cast(file_info_ptr), attribute)
        return UInt32(rv)
    }

    /// Gets a unsigned 64-bit integer contained within the attribute. If the
    /// attribute does not contain an unsigned 64-bit integer, or is invalid,
    /// 0 will be returned.
    func getAttributeUint64(attribute: UnsafePointer<CChar>) -> UInt64 {
        let rv = g_file_info_get_attribute_uint64(cast(file_info_ptr), attribute)
        return UInt64(rv)
    }

    /// Gets the file's content type.
    func getContentType() -> String! {
        let rv = g_file_info_get_content_type(cast(file_info_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Returns the `GDateTime` representing the deletion date of the file, as
    /// available in G_FILE_ATTRIBUTE_TRASH_DELETION_DATE. If the
    /// G_FILE_ATTRIBUTE_TRASH_DELETION_DATE attribute is unset, `nil` is returned.
    func getDeletionDate() -> UnsafeMutablePointer<GDateTime>! {
        let rv = g_file_info_get_deletion_date(cast(file_info_ptr))
        return cast(rv)
    }

    /// Gets a display name for a file.
    func getDisplayName() -> String! {
        let rv = g_file_info_get_display_name(cast(file_info_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the edit name for a file.
    func getEditName() -> String! {
        let rv = g_file_info_get_edit_name(cast(file_info_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the [entity tag](#gfile-etag) for a given
    /// `GFileInfo`. See `G_FILE_ATTRIBUTE_ETAG_VALUE`.
    func getEtag() -> String! {
        let rv = g_file_info_get_etag(cast(file_info_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets a file's type (whether it is a regular file, symlink, etc).
    /// This is different from the file's content type, see `g_file_info_get_content_type()`.
    func getFileType() -> GFileType {
        let rv = g_file_info_get_file_type(cast(file_info_ptr))
        return rv
    }

    /// Gets the icon for a file.
    func getIcon() -> UnsafeMutablePointer<GIcon>! {
        let rv = g_file_info_get_icon(cast(file_info_ptr))
        return cast(rv)
    }

    /// Checks if a file is a backup file.
    func getIsBackup() -> Bool {
        let rv = g_file_info_get_is_backup(cast(file_info_ptr))
        return Bool(rv != 0)
    }

    /// Checks if a file is hidden.
    func getIsHidden() -> Bool {
        let rv = g_file_info_get_is_hidden(cast(file_info_ptr))
        return Bool(rv != 0)
    }

    /// Checks if a file is a symlink.
    func getIsSymlink() -> Bool {
        let rv = g_file_info_get_is_symlink(cast(file_info_ptr))
        return Bool(rv != 0)
    }

    /// Gets the modification time of the current `info` and returns it as a
    /// `GDateTime`.
    func getModificationDateTime() -> UnsafeMutablePointer<GDateTime>! {
        let rv = g_file_info_get_modification_date_time(cast(file_info_ptr))
        return cast(rv)
    }

    /// Gets the modification time of the current `info` and sets it
    /// in `result`.
    ///
    /// **get_modification_time is deprecated:**
    /// Use g_file_info_get_modification_date_time() instead, as
    ///    #GTimeVal is deprecated due to the year 2038 problem.
    @available(*, deprecated) func getModificationTime(result: TimeValProtocol) {
        g_file_info_get_modification_time(cast(file_info_ptr), cast(result.ptr))
    
    }

    /// Gets the name for a file.
    func getName() -> String! {
        let rv = g_file_info_get_name(cast(file_info_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the file's size.
    func getSize() -> Int {
        let rv = g_file_info_get_size(cast(file_info_ptr))
        return Int(rv)
    }

    /// Gets the value of the sort_order attribute from the `GFileInfo`.
    /// See `G_FILE_ATTRIBUTE_STANDARD_SORT_ORDER`.
    func getSortOrder() -> Int32 {
        let rv = g_file_info_get_sort_order(cast(file_info_ptr))
        return Int32(rv)
    }

    /// Gets the symbolic icon for a file.
    func getSymbolicIcon() -> UnsafeMutablePointer<GIcon>! {
        let rv = g_file_info_get_symbolic_icon(cast(file_info_ptr))
        return cast(rv)
    }

    /// Gets the symlink target for a given `GFileInfo`.
    func getSymlinkTarget() -> String! {
        let rv = g_file_info_get_symlink_target(cast(file_info_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Checks if a file info structure has an attribute named `attribute`.
    func has(attribute: UnsafePointer<CChar>) -> Bool {
        let rv = g_file_info_has_attribute(cast(file_info_ptr), attribute)
        return Bool(rv != 0)
    }

    /// Checks if a file info structure has an attribute in the
    /// specified `name_space`.
    func hasNamespace(nameSpace name_space: UnsafePointer<CChar>) -> Bool {
        let rv = g_file_info_has_namespace(cast(file_info_ptr), name_space)
        return Bool(rv != 0)
    }

    /// Lists the file info structure's attributes.
    func listAttributes(nameSpace name_space: UnsafePointer<CChar>) -> UnsafeMutablePointer<UnsafeMutablePointer<CChar>>! {
        let rv = g_file_info_list_attributes(cast(file_info_ptr), name_space)
        return cast(rv)
    }

    /// Removes all cases of `attribute` from `info` if it exists.
    func remove(attribute: UnsafePointer<CChar>) {
        g_file_info_remove_attribute(cast(file_info_ptr), attribute)
    
    }

    /// Sets the `attribute` to contain the given value, if possible. To unset the
    /// attribute, use `G_FILE_ATTRIBUTE_TYPE_INVALID` for `type`.
    func set(attribute: UnsafePointer<CChar>, type: FileAttributeType, valueP value_p: UnsafeMutableRawPointer) {
        g_file_info_set_attribute(cast(file_info_ptr), attribute, type, cast(value_p))
    
    }

    /// Sets the `attribute` to contain the given `attr_value`,
    /// if possible.
    func setAttributeBoolean(attribute: UnsafePointer<CChar>, attrValue attr_value: Bool) {
        g_file_info_set_attribute_boolean(cast(file_info_ptr), attribute, gboolean(attr_value ? 1 : 0))
    
    }

    /// Sets the `attribute` to contain the given `attr_value`,
    /// if possible.
    func setAttributeByteString(attribute: UnsafePointer<CChar>, attrValue attr_value: UnsafePointer<CChar>) {
        g_file_info_set_attribute_byte_string(cast(file_info_ptr), attribute, attr_value)
    
    }

    /// Sets the `attribute` to contain the given `attr_value`,
    /// if possible.
    func setAttributeInt32(attribute: UnsafePointer<CChar>, attrValue attr_value: Int32) {
        g_file_info_set_attribute_int32(cast(file_info_ptr), attribute, gint32(attr_value))
    
    }

    /// Sets the `attribute` to contain the given `attr_value`,
    /// if possible.
    func setAttributeInt64(attribute: UnsafePointer<CChar>, attrValue attr_value: Int64) {
        g_file_info_set_attribute_int64(cast(file_info_ptr), attribute, gint64(attr_value))
    
    }

    /// Sets `mask` on `info` to match specific attribute types.
    func setAttribute(mask: FileAttributeMatcherProtocol) {
        g_file_info_set_attribute_mask(cast(file_info_ptr), cast(mask.ptr))
    
    }

    /// Sets the `attribute` to contain the given `attr_value`,
    /// if possible.
    func setAttributeObject(attribute: UnsafePointer<CChar>, attrValue attr_value: ObjectProtocol) {
        g_file_info_set_attribute_object(cast(file_info_ptr), attribute, cast(attr_value.ptr))
    
    }

    /// Sets the attribute status for an attribute key. This is only
    /// needed by external code that implement `g_file_set_attributes_from_info()`
    /// or similar functions.
    /// 
    /// The attribute must exist in `info` for this to work. Otherwise `false`
    /// is returned and `info` is unchanged.
    func setAttributeStatus(attribute: UnsafePointer<CChar>, status: FileAttributeStatus) -> Bool {
        let rv = g_file_info_set_attribute_status(cast(file_info_ptr), attribute, status)
        return Bool(rv != 0)
    }

    /// Sets the `attribute` to contain the given `attr_value`,
    /// if possible.
    func setAttributeString(attribute: UnsafePointer<CChar>, attrValue attr_value: UnsafePointer<CChar>) {
        g_file_info_set_attribute_string(cast(file_info_ptr), attribute, attr_value)
    
    }

    /// Sets the `attribute` to contain the given `attr_value`,
    /// if possible.
    /// 
    /// Sinze: 2.22
    func setAttributeStringv(attribute: UnsafePointer<CChar>, attrValue attr_value: UnsafeMutablePointer<UnsafeMutablePointer<CChar>>) {
        g_file_info_set_attribute_stringv(cast(file_info_ptr), attribute, cast(attr_value))
    
    }

    /// Sets the `attribute` to contain the given `attr_value`,
    /// if possible.
    func setAttributeUint32(attribute: UnsafePointer<CChar>, attrValue attr_value: UInt32) {
        g_file_info_set_attribute_uint32(cast(file_info_ptr), attribute, guint32(attr_value))
    
    }

    /// Sets the `attribute` to contain the given `attr_value`,
    /// if possible.
    func setAttributeUint64(attribute: UnsafePointer<CChar>, attrValue attr_value: UInt64) {
        g_file_info_set_attribute_uint64(cast(file_info_ptr), attribute, guint64(attr_value))
    
    }

    /// Sets the content type attribute for a given `GFileInfo`.
    /// See `G_FILE_ATTRIBUTE_STANDARD_CONTENT_TYPE`.
    func set(contentType content_type: UnsafePointer<CChar>) {
        g_file_info_set_content_type(cast(file_info_ptr), content_type)
    
    }

    /// Sets the display name for the current `GFileInfo`.
    /// See `G_FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME`.
    func set(displayName display_name: UnsafePointer<CChar>) {
        g_file_info_set_display_name(cast(file_info_ptr), display_name)
    
    }

    /// Sets the edit name for the current file.
    /// See `G_FILE_ATTRIBUTE_STANDARD_EDIT_NAME`.
    func set(editName edit_name: UnsafePointer<CChar>) {
        g_file_info_set_edit_name(cast(file_info_ptr), edit_name)
    
    }

    /// Sets the file type in a `GFileInfo` to `type`.
    /// See `G_FILE_ATTRIBUTE_STANDARD_TYPE`.
    func setFile(type: FileType) {
        g_file_info_set_file_type(cast(file_info_ptr), type)
    
    }

    /// Sets the icon for a given `GFileInfo`.
    /// See `G_FILE_ATTRIBUTE_STANDARD_ICON`.
    func set(icon: IconProtocol) {
        g_file_info_set_icon(cast(file_info_ptr), cast(icon.ptr))
    
    }

    /// Sets the "is_hidden" attribute in a `GFileInfo` according to `is_hidden`.
    /// See `G_FILE_ATTRIBUTE_STANDARD_IS_HIDDEN`.
    func set(isHidden is_hidden: Bool) {
        g_file_info_set_is_hidden(cast(file_info_ptr), gboolean(is_hidden ? 1 : 0))
    
    }

    /// Sets the "is_symlink" attribute in a `GFileInfo` according to `is_symlink`.
    /// See `G_FILE_ATTRIBUTE_STANDARD_IS_SYMLINK`.
    func set(isSymlink is_symlink: Bool) {
        g_file_info_set_is_symlink(cast(file_info_ptr), gboolean(is_symlink ? 1 : 0))
    
    }

    /// Sets the `G_FILE_ATTRIBUTE_TIME_MODIFIED` attribute in the file
    /// info to the given date/time value.
    func setModificationDateTime(mtime: DateTimeProtocol) {
        g_file_info_set_modification_date_time(cast(file_info_ptr), cast(mtime.ptr))
    
    }

    /// Sets the `G_FILE_ATTRIBUTE_TIME_MODIFIED` attribute in the file
    /// info to the given time value.
    ///
    /// **set_modification_time is deprecated:**
    /// Use g_file_info_set_modification_date_time() instead, as
    ///    #GTimeVal is deprecated due to the year 2038 problem.
    @available(*, deprecated) func setModificationTime(mtime: TimeValProtocol) {
        g_file_info_set_modification_time(cast(file_info_ptr), cast(mtime.ptr))
    
    }

    /// Sets the name attribute for the current `GFileInfo`.
    /// See `G_FILE_ATTRIBUTE_STANDARD_NAME`.
    func set(name: UnsafePointer<CChar>) {
        g_file_info_set_name(cast(file_info_ptr), name)
    
    }

    /// Sets the `G_FILE_ATTRIBUTE_STANDARD_SIZE` attribute in the file info
    /// to the given size.
    func set(size: Int64) {
        g_file_info_set_size(cast(file_info_ptr), goffset(size))
    
    }

    /// Sets the sort order attribute in the file info structure. See
    /// `G_FILE_ATTRIBUTE_STANDARD_SORT_ORDER`.
    func set(sortOrder sort_order: Int32) {
        g_file_info_set_sort_order(cast(file_info_ptr), gint32(sort_order))
    
    }

    /// Sets the symbolic icon for a given `GFileInfo`.
    /// See `G_FILE_ATTRIBUTE_STANDARD_SYMBOLIC_ICON`.
    func setSymbolic(icon: IconProtocol) {
        g_file_info_set_symbolic_icon(cast(file_info_ptr), cast(icon.ptr))
    
    }

    /// Sets the `G_FILE_ATTRIBUTE_STANDARD_SYMLINK_TARGET` attribute in the file info
    /// to the given symlink target.
    func set(symlinkTarget symlink_target: UnsafePointer<CChar>) {
        g_file_info_set_symlink_target(cast(file_info_ptr), symlink_target)
    
    }

    /// Unsets a mask set by `g_file_info_set_attribute_mask()`, if one
    /// is set.
    func unsetAttributeMask() {
        g_file_info_unset_attribute_mask(cast(file_info_ptr))
    
    }
    /// Gets the file's content type.
    var contentType: String! {
        /// Gets the file's content type.
        get {
            let rv = g_file_info_get_content_type(cast(file_info_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets the content type attribute for a given `GFileInfo`.
        /// See `G_FILE_ATTRIBUTE_STANDARD_CONTENT_TYPE`.
        nonmutating set {
            g_file_info_set_content_type(cast(file_info_ptr), newValue)
        }
    }

    /// Returns the `GDateTime` representing the deletion date of the file, as
    /// available in G_FILE_ATTRIBUTE_TRASH_DELETION_DATE. If the
    /// G_FILE_ATTRIBUTE_TRASH_DELETION_DATE attribute is unset, `nil` is returned.
    var deletionDate: UnsafeMutablePointer<GDateTime>! {
        /// Returns the `GDateTime` representing the deletion date of the file, as
        /// available in G_FILE_ATTRIBUTE_TRASH_DELETION_DATE. If the
        /// G_FILE_ATTRIBUTE_TRASH_DELETION_DATE attribute is unset, `nil` is returned.
        get {
            let rv = g_file_info_get_deletion_date(cast(file_info_ptr))
            return cast(rv)
        }
    }

    /// Gets a display name for a file.
    var displayName: String! {
        /// Gets a display name for a file.
        get {
            let rv = g_file_info_get_display_name(cast(file_info_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets the display name for the current `GFileInfo`.
        /// See `G_FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME`.
        nonmutating set {
            g_file_info_set_display_name(cast(file_info_ptr), newValue)
        }
    }

    /// Gets the edit name for a file.
    var editName: String! {
        /// Gets the edit name for a file.
        get {
            let rv = g_file_info_get_edit_name(cast(file_info_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets the edit name for the current file.
        /// See `G_FILE_ATTRIBUTE_STANDARD_EDIT_NAME`.
        nonmutating set {
            g_file_info_set_edit_name(cast(file_info_ptr), newValue)
        }
    }

    /// Gets the [entity tag](#gfile-etag) for a given
    /// `GFileInfo`. See `G_FILE_ATTRIBUTE_ETAG_VALUE`.
    var etag: String! {
        /// Gets the [entity tag](#gfile-etag) for a given
        /// `GFileInfo`. See `G_FILE_ATTRIBUTE_ETAG_VALUE`.
        get {
            let rv = g_file_info_get_etag(cast(file_info_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets a file's type (whether it is a regular file, symlink, etc).
    /// This is different from the file's content type, see `g_file_info_get_content_type()`.
    var fileType: GFileType {
        /// Gets a file's type (whether it is a regular file, symlink, etc).
        /// This is different from the file's content type, see `g_file_info_get_content_type()`.
        get {
            let rv = g_file_info_get_file_type(cast(file_info_ptr))
            return rv
        }
        /// Sets the file type in a `GFileInfo` to `type`.
        /// See `G_FILE_ATTRIBUTE_STANDARD_TYPE`.
        nonmutating set {
            g_file_info_set_file_type(cast(file_info_ptr), newValue)
        }
    }

    /// Gets the icon for a file.
    var icon: UnsafeMutablePointer<GIcon>! {
        /// Gets the icon for a file.
        get {
            let rv = g_file_info_get_icon(cast(file_info_ptr))
            return cast(rv)
        }
        /// Sets the icon for a given `GFileInfo`.
        /// See `G_FILE_ATTRIBUTE_STANDARD_ICON`.
        nonmutating set {
            g_file_info_set_icon(cast(file_info_ptr), cast(newValue))
        }
    }

    /// Checks if a file is a backup file.
    var isBackup: Bool {
        /// Checks if a file is a backup file.
        get {
            let rv = g_file_info_get_is_backup(cast(file_info_ptr))
            return Bool(rv != 0)
        }
    }

    /// Checks if a file is hidden.
    var isHidden: Bool {
        /// Checks if a file is hidden.
        get {
            let rv = g_file_info_get_is_hidden(cast(file_info_ptr))
            return Bool(rv != 0)
        }
        /// Sets the "is_hidden" attribute in a `GFileInfo` according to `is_hidden`.
        /// See `G_FILE_ATTRIBUTE_STANDARD_IS_HIDDEN`.
        nonmutating set {
            g_file_info_set_is_hidden(cast(file_info_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Checks if a file is a symlink.
    var isSymlink: Bool {
        /// Checks if a file is a symlink.
        get {
            let rv = g_file_info_get_is_symlink(cast(file_info_ptr))
            return Bool(rv != 0)
        }
        /// Sets the "is_symlink" attribute in a `GFileInfo` according to `is_symlink`.
        /// See `G_FILE_ATTRIBUTE_STANDARD_IS_SYMLINK`.
        nonmutating set {
            g_file_info_set_is_symlink(cast(file_info_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets the modification time of the current `info` and returns it as a
    /// `GDateTime`.
    var modificationDateTime: UnsafeMutablePointer<GDateTime>! {
        /// Gets the modification time of the current `info` and returns it as a
        /// `GDateTime`.
        get {
            let rv = g_file_info_get_modification_date_time(cast(file_info_ptr))
            return cast(rv)
        }
        /// Sets the `G_FILE_ATTRIBUTE_TIME_MODIFIED` attribute in the file
        /// info to the given date/time value.
        nonmutating set {
            g_file_info_set_modification_date_time(cast(file_info_ptr), cast(newValue))
        }
    }

    /// Gets the name for a file.
    var name: String! {
        /// Gets the name for a file.
        get {
            let rv = g_file_info_get_name(cast(file_info_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets the name attribute for the current `GFileInfo`.
        /// See `G_FILE_ATTRIBUTE_STANDARD_NAME`.
        nonmutating set {
            g_file_info_set_name(cast(file_info_ptr), newValue)
        }
    }

    /// Gets the file's size.
    var size: Int {
        /// Gets the file's size.
        get {
            let rv = g_file_info_get_size(cast(file_info_ptr))
            return Int(rv)
        }
        /// Sets the `G_FILE_ATTRIBUTE_STANDARD_SIZE` attribute in the file info
        /// to the given size.
        nonmutating set {
            g_file_info_set_size(cast(file_info_ptr), goffset(newValue))
        }
    }

    /// Gets the value of the sort_order attribute from the `GFileInfo`.
    /// See `G_FILE_ATTRIBUTE_STANDARD_SORT_ORDER`.
    var sortOrder: Int32 {
        /// Gets the value of the sort_order attribute from the `GFileInfo`.
        /// See `G_FILE_ATTRIBUTE_STANDARD_SORT_ORDER`.
        get {
            let rv = g_file_info_get_sort_order(cast(file_info_ptr))
            return Int32(rv)
        }
        /// Sets the sort order attribute in the file info structure. See
        /// `G_FILE_ATTRIBUTE_STANDARD_SORT_ORDER`.
        nonmutating set {
            g_file_info_set_sort_order(cast(file_info_ptr), gint32(newValue))
        }
    }

    /// Gets the symbolic icon for a file.
    var symbolicIcon: UnsafeMutablePointer<GIcon>! {
        /// Gets the symbolic icon for a file.
        get {
            let rv = g_file_info_get_symbolic_icon(cast(file_info_ptr))
            return cast(rv)
        }
        /// Sets the symbolic icon for a given `GFileInfo`.
        /// See `G_FILE_ATTRIBUTE_STANDARD_SYMBOLIC_ICON`.
        nonmutating set {
            g_file_info_set_symbolic_icon(cast(file_info_ptr), cast(newValue))
        }
    }

    /// Gets the symlink target for a given `GFileInfo`.
    var symlinkTarget: String! {
        /// Gets the symlink target for a given `GFileInfo`.
        get {
            let rv = g_file_info_get_symlink_target(cast(file_info_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets the `G_FILE_ATTRIBUTE_STANDARD_SYMLINK_TARGET` attribute in the file info
        /// to the given symlink target.
        nonmutating set {
            g_file_info_set_symlink_target(cast(file_info_ptr), newValue)
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GFileInputStream` instance.
    var file_input_stream_ptr: UnsafeMutablePointer<GFileInputStream> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension FileInputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GFileInputStream>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileInputStreamProtocol`
    init<T: FileInputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    /// Ownership is transferred to the `FileInputStream` instance.
    public init(_ op: UnsafeMutablePointer<GFileInputStream>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `FileInputStreamProtocol`
    /// Will retain `GFileInputStream`.
    public convenience init<T: FileInputStreamProtocol>(_ other: T) {
        self.init(cast(other.file_input_stream_ptr))
        g_object_ref(cast(file_input_stream_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GFileInputStream.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GFileInputStream.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GFileInputStream.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GFileInputStream>(opaquePointer))
    }



}

// MARK: - no FileInputStream properties

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
    @discardableResult func connect(signal kind: FileInputStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(file_input_stream_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension FileInputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileInputStream` instance.
    var file_input_stream_ptr: UnsafeMutablePointer<GFileInputStream> { return ptr.assumingMemoryBound(to: GFileInputStream.self) }

    /// Queries a file input stream the given `attributes`. This function blocks
    /// while querying the stream. For the asynchronous (non-blocking) version
    /// of this function, see `g_file_input_stream_query_info_async()`. While the
    /// stream is blocked, the stream will set the pending flag internally, and
    /// any other operations on the stream will fail with `G_IO_ERROR_PENDING`.
    func queryInfo(attributes: UnsafePointer<CChar>, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GFileInfo>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_input_stream_query_info(cast(file_input_stream_ptr), attributes, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
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
    func queryInfoAsync(attributes: UnsafePointer<CChar>, ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_input_stream_query_info_async(cast(file_input_stream_ptr), attributes, io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an asynchronous info query operation.
    func queryInfoFinish(result: AsyncResultProtocol) throws -> UnsafeMutablePointer<GFileInfo>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_input_stream_query_info_finish(cast(file_input_stream_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GFileMonitor` instance.
    var file_monitor_ptr: UnsafeMutablePointer<GFileMonitor> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension FileMonitorRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GFileMonitor>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileMonitorProtocol`
    init<T: FileMonitorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    /// Ownership is transferred to the `FileMonitor` instance.
    public init(_ op: UnsafeMutablePointer<GFileMonitor>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `FileMonitorProtocol`
    /// Will retain `GFileMonitor`.
    public convenience init<T: FileMonitorProtocol>(_ other: T) {
        self.init(cast(other.file_monitor_ptr))
        g_object_ref(cast(file_monitor_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GFileMonitor.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GFileMonitor.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GFileMonitor.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GFileMonitor>(opaquePointer))
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: FileMonitorPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(file_monitor_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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
    @discardableResult func connect(signal kind: FileMonitorSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(file_monitor_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension FileMonitorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileMonitor` instance.
    var file_monitor_ptr: UnsafeMutablePointer<GFileMonitor> { return ptr.assumingMemoryBound(to: GFileMonitor.self) }

    /// Cancels a file monitor.
    func cancel() -> Bool {
        let rv = g_file_monitor_cancel(cast(file_monitor_ptr))
        return Bool(rv != 0)
    }

    /// Emits the `GFileMonitor::changed` signal if a change
    /// has taken place. Should be called from file monitor
    /// implementations only.
    /// 
    /// Implementations are responsible to call this method from the
    /// [thread-default main context](#g-main-context-push-thread-default) of the
    /// thread that the monitor was created in.
    func emitEvent(child: FileProtocol, otherFile other_file: FileProtocol, eventType event_type: FileMonitorEvent) {
        g_file_monitor_emit_event(cast(file_monitor_ptr), cast(child.ptr), cast(other_file.ptr), event_type)
    
    }

    /// Sets the rate limit to which the `monitor` will report
    /// consecutive change events to the same file.
    func setRateLimit(limitMsecs limit_msecs: CInt) {
        g_file_monitor_set_rate_limit(cast(file_monitor_ptr), gint(limit_msecs))
    
    }
    /// Returns whether the monitor is canceled.
    var isCancelled: Bool {
        /// Returns whether the monitor is canceled.
        get {
            let rv = g_file_monitor_is_cancelled(cast(file_monitor_ptr))
            return Bool(rv != 0)
        }
    }
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GFileOutputStream` instance.
    var file_output_stream_ptr: UnsafeMutablePointer<GFileOutputStream> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension FileOutputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GFileOutputStream>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileOutputStreamProtocol`
    init<T: FileOutputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    /// Ownership is transferred to the `FileOutputStream` instance.
    public init(_ op: UnsafeMutablePointer<GFileOutputStream>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `FileOutputStreamProtocol`
    /// Will retain `GFileOutputStream`.
    public convenience init<T: FileOutputStreamProtocol>(_ other: T) {
        self.init(cast(other.file_output_stream_ptr))
        g_object_ref(cast(file_output_stream_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GFileOutputStream.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GFileOutputStream.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GFileOutputStream.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GFileOutputStream>(opaquePointer))
    }



}

// MARK: - no FileOutputStream properties

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
    @discardableResult func connect(signal kind: FileOutputStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(file_output_stream_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension FileOutputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileOutputStream` instance.
    var file_output_stream_ptr: UnsafeMutablePointer<GFileOutputStream> { return ptr.assumingMemoryBound(to: GFileOutputStream.self) }

    /// Gets the entity tag for the file when it has been written.
    /// This must be called after the stream has been written
    /// and closed, as the etag can change while writing.
    func getEtag() -> String! {
        let rv = g_file_output_stream_get_etag(cast(file_output_stream_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
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
    func queryInfo(attributes: UnsafePointer<CChar>, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GFileInfo>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_output_stream_query_info(cast(file_output_stream_ptr), attributes, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Asynchronously queries the `stream` for a `GFileInfo`. When completed,
    /// `callback` will be called with a `GAsyncResult` which can be used to
    /// finish the operation with `g_file_output_stream_query_info_finish()`.
    /// 
    /// For the synchronous version of this function, see
    /// `g_file_output_stream_query_info()`.
    func queryInfoAsync(attributes: UnsafePointer<CChar>, ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_output_stream_query_info_async(cast(file_output_stream_ptr), attributes, io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finalizes the asynchronous query started
    /// by `g_file_output_stream_query_info_async()`.
    func queryInfoFinish(result: AsyncResultProtocol) throws -> UnsafeMutablePointer<GFileInfo>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_output_stream_query_info_finish(cast(file_output_stream_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }
    /// Gets the entity tag for the file when it has been written.
    /// This must be called after the stream has been written
    /// and closed, as the etag can change while writing.
    var etag: String! {
        /// Gets the entity tag for the file when it has been written.
        /// This must be called after the stream has been written
        /// and closed, as the etag can change while writing.
        get {
            let rv = g_file_output_stream_get_etag(cast(file_output_stream_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GFilenameCompleter` instance.
    var filename_completer_ptr: UnsafeMutablePointer<GFilenameCompleter> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension FilenameCompleterRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GFilenameCompleter>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FilenameCompleterProtocol`
    init<T: FilenameCompleterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new filename completer.
    init() {
        let rv = g_filename_completer_new()
        self.init(cast(rv))
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
    /// Ownership is transferred to the `FilenameCompleter` instance.
    public init(_ op: UnsafeMutablePointer<GFilenameCompleter>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `FilenameCompleterProtocol`
    /// Will retain `GFilenameCompleter`.
    public convenience init<T: FilenameCompleterProtocol>(_ other: T) {
        self.init(cast(other.filename_completer_ptr))
        g_object_ref(cast(filename_completer_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GFilenameCompleter.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GFilenameCompleter.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GFilenameCompleter.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GFilenameCompleter>(opaquePointer))
    }

    /// Creates a new filename completer.
    public convenience init() {
        let rv = g_filename_completer_new()
        self.init(cast(rv))
    }


}

// MARK: - no FilenameCompleter properties

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
    @discardableResult func connect(signal kind: FilenameCompleterSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(filename_completer_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension FilenameCompleterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFilenameCompleter` instance.
    var filename_completer_ptr: UnsafeMutablePointer<GFilenameCompleter> { return ptr.assumingMemoryBound(to: GFilenameCompleter.self) }

    /// Obtains a completion for `initial_text` from `completer`.
    func getCompletionSuffix(initialText initial_text: UnsafePointer<CChar>) -> String! {
        let rv = g_filename_completer_get_completion_suffix(cast(filename_completer_ptr), initial_text)
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets an array of completion strings for a given initial text.
    func getCompletions(initialText initial_text: UnsafePointer<CChar>) -> UnsafeMutablePointer<UnsafeMutablePointer<CChar>>! {
        let rv = g_filename_completer_get_completions(cast(filename_completer_ptr), initial_text)
        return cast(rv)
    }

    /// If `dirs_only` is `true`, `completer` will only
    /// complete directory names, and not file names.
    func set(dirsOnly dirs_only: Bool) {
        g_filename_completer_set_dirs_only(cast(filename_completer_ptr), gboolean(dirs_only ? 1 : 0))
    
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GFilterInputStream` instance.
    var filter_input_stream_ptr: UnsafeMutablePointer<GFilterInputStream> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension FilterInputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GFilterInputStream>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FilterInputStreamProtocol`
    init<T: FilterInputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    /// Ownership is transferred to the `FilterInputStream` instance.
    public init(_ op: UnsafeMutablePointer<GFilterInputStream>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `FilterInputStreamProtocol`
    /// Will retain `GFilterInputStream`.
    public convenience init<T: FilterInputStreamProtocol>(_ other: T) {
        self.init(cast(other.filter_input_stream_ptr))
        g_object_ref(cast(filter_input_stream_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GFilterInputStream.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GFilterInputStream.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GFilterInputStream.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GFilterInputStream>(opaquePointer))
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: FilterInputStreamPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(filter_input_stream_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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
    @discardableResult func connect(signal kind: FilterInputStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(filter_input_stream_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension FilterInputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFilterInputStream` instance.
    var filter_input_stream_ptr: UnsafeMutablePointer<GFilterInputStream> { return ptr.assumingMemoryBound(to: GFilterInputStream.self) }

    /// Gets the base stream for the filter stream.
    func getBaseStream() -> UnsafeMutablePointer<GInputStream>! {
        let rv = g_filter_input_stream_get_base_stream(cast(filter_input_stream_ptr))
        return cast(rv)
    }

    /// Returns whether the base stream will be closed when `stream` is
    /// closed.
    func getCloseBaseStream() -> Bool {
        let rv = g_filter_input_stream_get_close_base_stream(cast(filter_input_stream_ptr))
        return Bool(rv != 0)
    }

    /// Sets whether the base stream will be closed when `stream` is closed.
    func setCloseBaseStream(closeBase close_base: Bool) {
        g_filter_input_stream_set_close_base_stream(cast(filter_input_stream_ptr), gboolean(close_base ? 1 : 0))
    
    }
    /// Gets the base stream for the filter stream.
    var baseStream: UnsafeMutablePointer<GInputStream>! {
        /// Gets the base stream for the filter stream.
        get {
            let rv = g_filter_input_stream_get_base_stream(cast(filter_input_stream_ptr))
            return cast(rv)
        }
    }

    /// Returns whether the base stream will be closed when `stream` is
    /// closed.
    var closeBaseStream: Bool {
        /// Returns whether the base stream will be closed when `stream` is
        /// closed.
        get {
            let rv = g_filter_input_stream_get_close_base_stream(cast(filter_input_stream_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether the base stream will be closed when `stream` is closed.
        nonmutating set {
            g_filter_input_stream_set_close_base_stream(cast(filter_input_stream_ptr), gboolean(newValue ? 1 : 0))
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GFilterOutputStream` instance.
    var filter_output_stream_ptr: UnsafeMutablePointer<GFilterOutputStream> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension FilterOutputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GFilterOutputStream>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FilterOutputStreamProtocol`
    init<T: FilterOutputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    /// Ownership is transferred to the `FilterOutputStream` instance.
    public init(_ op: UnsafeMutablePointer<GFilterOutputStream>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `FilterOutputStreamProtocol`
    /// Will retain `GFilterOutputStream`.
    public convenience init<T: FilterOutputStreamProtocol>(_ other: T) {
        self.init(cast(other.filter_output_stream_ptr))
        g_object_ref(cast(filter_output_stream_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GFilterOutputStream.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GFilterOutputStream.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GFilterOutputStream.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GFilterOutputStream>(opaquePointer))
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: FilterOutputStreamPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(filter_output_stream_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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
    @discardableResult func connect(signal kind: FilterOutputStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(filter_output_stream_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension FilterOutputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFilterOutputStream` instance.
    var filter_output_stream_ptr: UnsafeMutablePointer<GFilterOutputStream> { return ptr.assumingMemoryBound(to: GFilterOutputStream.self) }

    /// Gets the base stream for the filter stream.
    func getBaseStream() -> UnsafeMutablePointer<GOutputStream>! {
        let rv = g_filter_output_stream_get_base_stream(cast(filter_output_stream_ptr))
        return cast(rv)
    }

    /// Returns whether the base stream will be closed when `stream` is
    /// closed.
    func getCloseBaseStream() -> Bool {
        let rv = g_filter_output_stream_get_close_base_stream(cast(filter_output_stream_ptr))
        return Bool(rv != 0)
    }

    /// Sets whether the base stream will be closed when `stream` is closed.
    func setCloseBaseStream(closeBase close_base: Bool) {
        g_filter_output_stream_set_close_base_stream(cast(filter_output_stream_ptr), gboolean(close_base ? 1 : 0))
    
    }
    /// Gets the base stream for the filter stream.
    var baseStream: UnsafeMutablePointer<GOutputStream>! {
        /// Gets the base stream for the filter stream.
        get {
            let rv = g_filter_output_stream_get_base_stream(cast(filter_output_stream_ptr))
            return cast(rv)
        }
    }

    /// Returns whether the base stream will be closed when `stream` is
    /// closed.
    var closeBaseStream: Bool {
        /// Returns whether the base stream will be closed when `stream` is
        /// closed.
        get {
            let rv = g_filter_output_stream_get_close_base_stream(cast(filter_output_stream_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether the base stream will be closed when `stream` is closed.
        nonmutating set {
            g_filter_output_stream_set_close_base_stream(cast(filter_output_stream_ptr), gboolean(newValue ? 1 : 0))
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GIOModule` instance.
    var io_module_ptr: UnsafeMutablePointer<GIOModule> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension IOModuleRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GIOModule>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `IOModuleProtocol`
    init<T: IOModuleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new GIOModule that will load the specific
    /// shared library when in use.
    init( String_: UnsafePointer<gchar>) {
        let rv = g_io_module_new(String_)
        self.init(cast(rv))
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
    /// Ownership is transferred to the `IOModule` instance.
    public init(_ op: UnsafeMutablePointer<GIOModule>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `IOModuleProtocol`
    /// Will retain `GIOModule`.
    public convenience init<T: IOModuleProtocol>(_ other: T) {
        self.init(cast(other.io_module_ptr))
        g_object_ref(cast(io_module_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GIOModule.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GIOModule.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GIOModule.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GIOModule>(opaquePointer))
    }

    /// Creates a new GIOModule that will load the specific
    /// shared library when in use.
    public convenience init( String_: UnsafePointer<gchar>) {
        let rv = g_io_module_new(String_)
        self.init(cast(rv))
    }


}

// MARK: - no IOModule properties

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
    @discardableResult func connect(signal kind: IOModuleSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(io_module_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension IOModuleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GIOModule` instance.
    var io_module_ptr: UnsafeMutablePointer<GIOModule> { return ptr.assumingMemoryBound(to: GIOModule.self) }

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
    func load() {
        _g_io_module_load(cast(io_module_ptr))
    
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
    func unload() {
        _g_io_module_unload(cast(io_module_ptr))
    
    }
}



