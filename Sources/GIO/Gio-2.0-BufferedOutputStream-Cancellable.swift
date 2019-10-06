import CGLib
import GLib
import GLibObject

// MARK: - BufferedOutputStream Class

/// The `BufferedOutputStreamProtocol` protocol exposes the methods and properties of an underlying `GBufferedOutputStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BufferedOutputStream`.
/// Alternatively, use `BufferedOutputStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Buffered output stream implements `GFilterOutputStream` and provides
/// for buffered writes.
/// 
/// By default, `GBufferedOutputStream`'s buffer size is set at 4 kilobytes.
/// 
/// To create a buffered output stream, use `g_buffered_output_stream_new()`,
/// or `g_buffered_output_stream_new_sized()` to specify the buffer's size
/// at construction.
/// 
/// To get the size of a buffer within a buffered input stream, use
/// `g_buffered_output_stream_get_buffer_size()`. To change the size of a
/// buffered output stream's buffer, use
/// `g_buffered_output_stream_set_buffer_size()`. Note that the buffer's
/// size cannot be reduced below the size of the data within the buffer.
public protocol BufferedOutputStreamProtocol: FilterOutputStreamProtocol, SeekableProtocol {
    /// Untyped pointer to the underlying `GBufferedOutputStream` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GBufferedOutputStream` instance.
    var buffered_output_stream_ptr: UnsafeMutablePointer<GBufferedOutputStream> { get }
}

/// The `BufferedOutputStreamRef` type acts as a lightweight Swift reference to an underlying `GBufferedOutputStream` instance.
/// It exposes methods that can operate on this data type through `BufferedOutputStreamProtocol` conformance.
/// Use `BufferedOutputStreamRef` only as an `unowned` reference to an existing `GBufferedOutputStream` instance.
///
/// Buffered output stream implements `GFilterOutputStream` and provides
/// for buffered writes.
/// 
/// By default, `GBufferedOutputStream`'s buffer size is set at 4 kilobytes.
/// 
/// To create a buffered output stream, use `g_buffered_output_stream_new()`,
/// or `g_buffered_output_stream_new_sized()` to specify the buffer's size
/// at construction.
/// 
/// To get the size of a buffer within a buffered input stream, use
/// `g_buffered_output_stream_get_buffer_size()`. To change the size of a
/// buffered output stream's buffer, use
/// `g_buffered_output_stream_set_buffer_size()`. Note that the buffer's
/// size cannot be reduced below the size of the data within the buffer.
public struct BufferedOutputStreamRef: BufferedOutputStreamProtocol {
    /// Untyped pointer to the underlying `GBufferedOutputStream` instance.
    /// For type-safe access, use the generated, typed pointer `buffered_output_stream_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension BufferedOutputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GBufferedOutputStream>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `BufferedOutputStreamProtocol`
    init<T: BufferedOutputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new buffered output stream for a base stream.
    init( base_stream: OutputStreamProtocol) {
        let rv = g_buffered_output_stream_new(cast(base_stream.ptr))
        self.init(cast(rv))
    }

    /// Creates a new buffered output stream with a given buffer size.
    init(sized base_stream: OutputStreamProtocol, size: Int) {
        let rv = g_buffered_output_stream_new_sized(cast(base_stream.ptr), gsize(size))
        self.init(cast(rv))
    }
    /// Creates a new buffered output stream with a given buffer size.
    static func new(sized base_stream: OutputStreamProtocol, size: Int) -> BufferedOutputStreamRef! {
        let rv = g_buffered_output_stream_new_sized(cast(base_stream.ptr), gsize(size))
        return rv.map { BufferedOutputStreamRef(cast($0)) }
    }
}

/// The `BufferedOutputStream` type acts as a reference-counted owner of an underlying `GBufferedOutputStream` instance.
/// It provides the methods that can operate on this data type through `BufferedOutputStreamProtocol` conformance.
/// Use `BufferedOutputStream` as a strong reference or owner of a `GBufferedOutputStream` instance.
///
/// Buffered output stream implements `GFilterOutputStream` and provides
/// for buffered writes.
/// 
/// By default, `GBufferedOutputStream`'s buffer size is set at 4 kilobytes.
/// 
/// To create a buffered output stream, use `g_buffered_output_stream_new()`,
/// or `g_buffered_output_stream_new_sized()` to specify the buffer's size
/// at construction.
/// 
/// To get the size of a buffer within a buffered input stream, use
/// `g_buffered_output_stream_get_buffer_size()`. To change the size of a
/// buffered output stream's buffer, use
/// `g_buffered_output_stream_set_buffer_size()`. Note that the buffer's
/// size cannot be reduced below the size of the data within the buffer.
open class BufferedOutputStream: FilterOutputStream, BufferedOutputStreamProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `BufferedOutputStream` instance.
    public init(_ op: UnsafeMutablePointer<GBufferedOutputStream>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `BufferedOutputStreamProtocol`
    /// Will retain `GBufferedOutputStream`.
    public convenience init<T: BufferedOutputStreamProtocol>(_ other: T) {
        self.init(cast(other.buffered_output_stream_ptr))
        g_object_ref(cast(buffered_output_stream_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GBufferedOutputStream.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GBufferedOutputStream.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GBufferedOutputStream.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GBufferedOutputStream>(opaquePointer))
    }

    /// Creates a new buffered output stream for a base stream.
    public convenience init( base_stream: OutputStreamProtocol) {
        let rv = g_buffered_output_stream_new(cast(base_stream.ptr))
        self.init(cast(rv))
    }

    /// Creates a new buffered output stream with a given buffer size.
    public convenience init(sized base_stream: OutputStreamProtocol, size: Int) {
        let rv = g_buffered_output_stream_new_sized(cast(base_stream.ptr), gsize(size))
        self.init(cast(rv))
    }

    /// Creates a new buffered output stream with a given buffer size.
    public static func new(sized base_stream: OutputStreamProtocol, size: Int) -> BufferedOutputStream! {
        let rv = g_buffered_output_stream_new_sized(cast(base_stream.ptr), gsize(size))
        return rv.map { BufferedOutputStream(cast($0)) }
    }

}

public enum BufferedOutputStreamPropertyName: String, PropertyNameProtocol {
    case autoGrow = "auto-grow"
    case baseStream = "base-stream"
    case bufferSize = "buffer-size"
    case closeBaseStream = "close-base-stream"
}

public extension BufferedOutputStreamProtocol {
    /// Bind a `BufferedOutputStreamPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: BufferedOutputStreamPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(buffered_output_stream_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum BufferedOutputStreamSignalName: String, SignalNameProtocol {
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
    case notifyAutoGrow = "notify::auto-grow"
    case notifyBaseStream = "notify::base-stream"
    case notifyBufferSize = "notify::buffer-size"
    case notifyCloseBaseStream = "notify::close-base-stream"
}

public extension BufferedOutputStreamProtocol {
    /// Connect a `BufferedOutputStreamSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: BufferedOutputStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(buffered_output_stream_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension BufferedOutputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GBufferedOutputStream` instance.
    var buffered_output_stream_ptr: UnsafeMutablePointer<GBufferedOutputStream> { return ptr.assumingMemoryBound(to: GBufferedOutputStream.self) }

    /// Checks if the buffer automatically grows as data is added.
    func getAutoGrow() -> Bool {
        let rv = g_buffered_output_stream_get_auto_grow(cast(buffered_output_stream_ptr))
        return Bool(rv != 0)
    }

    /// Gets the size of the buffer in the `stream`.
    func getBufferSize() -> Int {
        let rv = g_buffered_output_stream_get_buffer_size(cast(buffered_output_stream_ptr))
        return Int(rv)
    }

    /// Sets whether or not the `stream`'s buffer should automatically grow.
    /// If `auto_grow` is true, then each write will just make the buffer
    /// larger, and you must manually flush the buffer to actually write out
    /// the data to the underlying stream.
    func set(autoGrow auto_grow: Bool) {
        g_buffered_output_stream_set_auto_grow(cast(buffered_output_stream_ptr), gboolean(auto_grow ? 1 : 0))
    
    }

    /// Sets the size of the internal buffer to `size`.
    func setBuffer(size: Int) {
        g_buffered_output_stream_set_buffer_size(cast(buffered_output_stream_ptr), gsize(size))
    
    }
    /// Checks if the buffer automatically grows as data is added.
    var autoGrow: Bool {
        /// Checks if the buffer automatically grows as data is added.
        get {
            let rv = g_buffered_output_stream_get_auto_grow(cast(buffered_output_stream_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether or not the `stream`'s buffer should automatically grow.
        /// If `auto_grow` is true, then each write will just make the buffer
        /// larger, and you must manually flush the buffer to actually write out
        /// the data to the underlying stream.
        nonmutating set {
            g_buffered_output_stream_set_auto_grow(cast(buffered_output_stream_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets the size of the buffer in the `stream`.
    var bufferSize: Int {
        /// Gets the size of the buffer in the `stream`.
        get {
            let rv = g_buffered_output_stream_get_buffer_size(cast(buffered_output_stream_ptr))
            return Int(rv)
        }
        /// Sets the size of the internal buffer to `size`.
        nonmutating set {
            g_buffered_output_stream_set_buffer_size(cast(buffered_output_stream_ptr), gsize(newValue))
        }
    }
}



// MARK: - BytesIcon Class

/// The `BytesIconProtocol` protocol exposes the methods and properties of an underlying `GBytesIcon` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BytesIcon`.
/// Alternatively, use `BytesIconRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GBytesIcon` specifies an image held in memory in a common format (usually
/// png) to be used as icon.
public protocol BytesIconProtocol: ObjectProtocol, IconProtocol, LoadableIconProtocol {
    /// Untyped pointer to the underlying `GBytesIcon` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GBytesIcon` instance.
    var bytes_icon_ptr: UnsafeMutablePointer<GBytesIcon> { get }
}

/// The `BytesIconRef` type acts as a lightweight Swift reference to an underlying `GBytesIcon` instance.
/// It exposes methods that can operate on this data type through `BytesIconProtocol` conformance.
/// Use `BytesIconRef` only as an `unowned` reference to an existing `GBytesIcon` instance.
///
/// `GBytesIcon` specifies an image held in memory in a common format (usually
/// png) to be used as icon.
public struct BytesIconRef: BytesIconProtocol {
    /// Untyped pointer to the underlying `GBytesIcon` instance.
    /// For type-safe access, use the generated, typed pointer `bytes_icon_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension BytesIconRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GBytesIcon>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `BytesIconProtocol`
    init<T: BytesIconProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesIconProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesIconProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesIconProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesIconProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesIconProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new icon for a bytes.
    init( bytes: BytesProtocol) {
        let rv = g_bytes_icon_new(cast(bytes.ptr))
        self.init(cast(rv))
    }
}

/// The `BytesIcon` type acts as a reference-counted owner of an underlying `GBytesIcon` instance.
/// It provides the methods that can operate on this data type through `BytesIconProtocol` conformance.
/// Use `BytesIcon` as a strong reference or owner of a `GBytesIcon` instance.
///
/// `GBytesIcon` specifies an image held in memory in a common format (usually
/// png) to be used as icon.
open class BytesIcon: Object, BytesIconProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `BytesIcon` instance.
    public init(_ op: UnsafeMutablePointer<GBytesIcon>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `BytesIconProtocol`
    /// Will retain `GBytesIcon`.
    public convenience init<T: BytesIconProtocol>(_ other: T) {
        self.init(cast(other.bytes_icon_ptr))
        g_object_ref(cast(bytes_icon_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesIconProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GBytesIcon.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesIconProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GBytesIcon.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesIconProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GBytesIcon.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesIconProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GBytesIcon>(opaquePointer))
    }

    /// Creates a new icon for a bytes.
    public convenience init( bytes: BytesProtocol) {
        let rv = g_bytes_icon_new(cast(bytes.ptr))
        self.init(cast(rv))
    }


}

public enum BytesIconPropertyName: String, PropertyNameProtocol {
    /// The bytes containing the icon.
    case bytes = "bytes"
}

public extension BytesIconProtocol {
    /// Bind a `BytesIconPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: BytesIconPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(bytes_icon_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum BytesIconSignalName: String, SignalNameProtocol {
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
    /// The bytes containing the icon.
    case notifyBytes = "notify::bytes"
}

public extension BytesIconProtocol {
    /// Connect a `BytesIconSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: BytesIconSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(bytes_icon_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension BytesIconProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GBytesIcon` instance.
    var bytes_icon_ptr: UnsafeMutablePointer<GBytesIcon> { return ptr.assumingMemoryBound(to: GBytesIcon.self) }

    /// Gets the `GBytes` associated with the given `icon`.
    func getBytes() -> UnsafeMutablePointer<GBytes>! {
        let rv = g_bytes_icon_get_bytes(cast(bytes_icon_ptr))
        return cast(rv)
    }
    /// The bytes containing the icon.
    var bytes: UnsafeMutablePointer<GBytes>! {
        /// Gets the `GBytes` associated with the given `icon`.
        get {
            let rv = g_bytes_icon_get_bytes(cast(bytes_icon_ptr))
            return cast(rv)
        }
    }
}



// MARK: - Cancellable Class

/// The `CancellableProtocol` protocol exposes the methods and properties of an underlying `GCancellable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Cancellable`.
/// Alternatively, use `CancellableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GCancellable is a thread-safe operation cancellation stack used
/// throughout GIO to allow for cancellation of synchronous and
/// asynchronous operations.
public protocol CancellableProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `GCancellable` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GCancellable` instance.
    var cancellable_ptr: UnsafeMutablePointer<GCancellable> { get }
}

/// The `CancellableRef` type acts as a lightweight Swift reference to an underlying `GCancellable` instance.
/// It exposes methods that can operate on this data type through `CancellableProtocol` conformance.
/// Use `CancellableRef` only as an `unowned` reference to an existing `GCancellable` instance.
///
/// GCancellable is a thread-safe operation cancellation stack used
/// throughout GIO to allow for cancellation of synchronous and
/// asynchronous operations.
public struct CancellableRef: CancellableProtocol {
    /// Untyped pointer to the underlying `GCancellable` instance.
    /// For type-safe access, use the generated, typed pointer `cancellable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CancellableRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GCancellable>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CancellableProtocol`
    init<T: CancellableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GCancellable` object.
    /// 
    /// Applications that want to start one or more operations
    /// that should be cancellable should create a `GCancellable`
    /// and pass it to the operations.
    /// 
    /// One `GCancellable` can be used in multiple consecutive
    /// operations or in multiple concurrent operations.
    init() {
        let rv = g_cancellable_new()
        self.init(cast(rv))
    }
    /// Gets the top cancellable from the stack.
    static func getCurrent() -> CancellableRef! {
        let rv = g_cancellable_get_current()
        return rv.map { CancellableRef(cast($0)) }
    }
}

/// The `Cancellable` type acts as a reference-counted owner of an underlying `GCancellable` instance.
/// It provides the methods that can operate on this data type through `CancellableProtocol` conformance.
/// Use `Cancellable` as a strong reference or owner of a `GCancellable` instance.
///
/// GCancellable is a thread-safe operation cancellation stack used
/// throughout GIO to allow for cancellation of synchronous and
/// asynchronous operations.
open class Cancellable: Object, CancellableProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Cancellable` instance.
    public init(_ op: UnsafeMutablePointer<GCancellable>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `CancellableProtocol`
    /// Will retain `GCancellable`.
    public convenience init<T: CancellableProtocol>(_ other: T) {
        self.init(cast(other.cancellable_ptr))
        g_object_ref(cast(cancellable_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GCancellable.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GCancellable.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GCancellable.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GCancellable>(opaquePointer))
    }

    /// Creates a new `GCancellable` object.
    /// 
    /// Applications that want to start one or more operations
    /// that should be cancellable should create a `GCancellable`
    /// and pass it to the operations.
    /// 
    /// One `GCancellable` can be used in multiple consecutive
    /// operations or in multiple concurrent operations.
    public convenience init() {
        let rv = g_cancellable_new()
        self.init(cast(rv))
    }

    /// Gets the top cancellable from the stack.
    public static func getCurrent() -> Cancellable! {
        let rv = g_cancellable_get_current()
        return rv.map { Cancellable(cast($0)) }
    }

}

// MARK: - no Cancellable properties

public enum CancellableSignalName: String, SignalNameProtocol {
    /// Emitted when the operation has been cancelled.
    /// 
    /// Can be used by implementations of cancellable operations. If the
    /// operation is cancelled from another thread, the signal will be
    /// emitted in the thread that cancelled the operation, not the
    /// thread that is running the operation.
    /// 
    /// Note that disconnecting from this signal (or any signal) in a
    /// multi-threaded program is prone to race conditions. For instance
    /// it is possible that a signal handler may be invoked even after
    /// a call to `g_signal_handler_disconnect()` for that handler has
    /// already returned.
    /// 
    /// There is also a problem when cancellation happens right before
    /// connecting to the signal. If this happens the signal will
    /// unexpectedly not be emitted, and checking before connecting to
    /// the signal leaves a race condition where this is still happening.
    /// 
    /// In order to make it safe and easy to connect handlers there
    /// are two helper functions: `g_cancellable_connect()` and
    /// `g_cancellable_disconnect()` which protect against problems
    /// like this.
    /// 
    /// An example of how to us this:
    /// (C Language Example):
    /// ```C
    ///     // Make sure we don't do unnecessary work if already cancelled
    ///     if (g_cancellable_set_error_if_cancelled (cancellable, error))
    ///       return;
    /// 
    ///     // Set up all the data needed to be able to handle cancellation
    ///     // of the operation
    ///     my_data = my_data_new (...);
    /// 
    ///     id = 0;
    ///     if (cancellable)
    ///       id = g_cancellable_connect (cancellable,
    ///     			      G_CALLBACK (cancelled_handler)
    ///     			      data, NULL);
    /// 
    ///     // cancellable operation here...
    /// 
    ///     g_cancellable_disconnect (cancellable, id);
    /// 
    ///     // cancelled_handler is never called after this, it is now safe
    ///     // to free the data
    ///     my_data_free (my_data);
    /// ```
    /// 
    /// Note that the cancelled signal is emitted in the thread that
    /// the user cancelled from, which may be the main thread. So, the
    /// cancellable signal should not do something that can block.
    case cancelled = "cancelled"
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

public extension CancellableProtocol {
    /// Connect a `CancellableSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: CancellableSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(cancellable_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension CancellableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GCancellable` instance.
    var cancellable_ptr: UnsafeMutablePointer<GCancellable> { return ptr.assumingMemoryBound(to: GCancellable.self) }

    /// Will set `cancellable` to cancelled, and will emit the
    /// `GCancellable::cancelled` signal. (However, see the warning about
    /// race conditions in the documentation for that signal if you are
    /// planning to connect to it.)
    /// 
    /// This function is thread-safe. In other words, you can safely call
    /// it from a thread other than the one running the operation that was
    /// passed the `cancellable`.
    /// 
    /// If `cancellable` is `nil`, this function returns immediately for convenience.
    /// 
    /// The convention within GIO is that cancelling an asynchronous
    /// operation causes it to complete asynchronously. That is, if you
    /// cancel the operation from the same thread in which it is running,
    /// then the operation's `GAsyncReadyCallback` will not be invoked until
    /// the application returns to the main loop.
    func cancel() {
        g_cancellable_cancel(cast(cancellable_ptr))
    
    }

    /// Convenience function to connect to the `GCancellable::cancelled`
    /// signal. Also handles the race condition that may happen
    /// if the cancellable is cancelled right before connecting.
    /// 
    /// `callback` is called at most once, either directly at the
    /// time of the connect if `cancellable` is already cancelled,
    /// or when `cancellable` is cancelled in some thread.
    /// 
    /// `data_destroy_func` will be called when the handler is
    /// disconnected, or immediately if the cancellable is already
    /// cancelled.
    /// 
    /// See `GCancellable::cancelled` for details on how to use this.
    /// 
    /// Since GLib 2.40, the lock protecting `cancellable` is not held when
    /// `callback` is invoked.  This lifts a restriction in place for
    /// earlier GLib versions which now makes it easier to write cleanup
    /// code that unconditionally invokes e.g. `g_cancellable_cancel()`.
    func connect(callback: @escaping GLibObject.Callback, data: UnsafeMutableRawPointer, dataDestroyFunc data_destroy_func: @escaping GLib.DestroyNotify) -> CUnsignedLong {
        let rv = g_cancellable_connect(cast(cancellable_ptr), callback, cast(data), data_destroy_func)
        return CUnsignedLong(rv)
    }

    /// Disconnects a handler from a cancellable instance similar to
    /// `g_signal_handler_disconnect()`.  Additionally, in the event that a
    /// signal handler is currently running, this call will block until the
    /// handler has finished.  Calling this function from a
    /// `GCancellable::cancelled` signal handler will therefore result in a
    /// deadlock.
    /// 
    /// This avoids a race condition where a thread cancels at the
    /// same time as the cancellable operation is finished and the
    /// signal handler is removed. See `GCancellable::cancelled` for
    /// details on how to use this.
    /// 
    /// If `cancellable` is `nil` or `handler_id` is `0` this function does
    /// nothing.
    func disconnect(handlerID handler_id: CUnsignedLong) {
        g_cancellable_disconnect(cast(cancellable_ptr), gulong(handler_id))
    
    }

    /// Gets the file descriptor for a cancellable job. This can be used to
    /// implement cancellable operations on Unix systems. The returned fd will
    /// turn readable when `cancellable` is cancelled.
    /// 
    /// You are not supposed to read from the fd yourself, just check for
    /// readable status. Reading to unset the readable status is done
    /// with `g_cancellable_reset()`.
    /// 
    /// After a successful return from this function, you should use
    /// `g_cancellable_release_fd()` to free up resources allocated for
    /// the returned file descriptor.
    /// 
    /// See also `g_cancellable_make_pollfd()`.
    func getFd() -> CInt {
        let rv = g_cancellable_get_fd(cast(cancellable_ptr))
        return rv
    }

    /// Creates a `GPollFD` corresponding to `cancellable`; this can be passed
    /// to `g_poll()` and used to poll for cancellation. This is useful both
    /// for unix systems without a native poll and for portability to
    /// windows.
    /// 
    /// When this function returns `true`, you should use
    /// `g_cancellable_release_fd()` to free up resources allocated for the
    /// `pollfd`. After a `false` return, do not call `g_cancellable_release_fd()`.
    /// 
    /// If this function returns `false`, either no `cancellable` was given or
    /// resource limits prevent this function from allocating the necessary
    /// structures for polling. (On Linux, you will likely have reached
    /// the maximum number of file descriptors.) The suggested way to handle
    /// these cases is to ignore the `cancellable`.
    /// 
    /// You are not supposed to read from the fd yourself, just check for
    /// readable status. Reading to unset the readable status is done
    /// with `g_cancellable_reset()`.
    func make(pollfd: PollFDProtocol) -> Bool {
        let rv = g_cancellable_make_pollfd(cast(cancellable_ptr), cast(pollfd.ptr))
        return Bool(rv != 0)
    }

    /// Pops `cancellable` off the cancellable stack (verifying that `cancellable`
    /// is on the top of the stack).
    func popCurrent() {
        g_cancellable_pop_current(cast(cancellable_ptr))
    
    }

    /// Pushes `cancellable` onto the cancellable stack. The current
    /// cancellable can then be received using `g_cancellable_get_current()`.
    /// 
    /// This is useful when implementing cancellable operations in
    /// code that does not allow you to pass down the cancellable object.
    /// 
    /// This is typically called automatically by e.g. `GFile` operations,
    /// so you rarely have to call this yourself.
    func pushCurrent() {
        g_cancellable_push_current(cast(cancellable_ptr))
    
    }

    /// Releases a resources previously allocated by `g_cancellable_get_fd()`
    /// or `g_cancellable_make_pollfd()`.
    /// 
    /// For compatibility reasons with older releases, calling this function
    /// is not strictly required, the resources will be automatically freed
    /// when the `cancellable` is finalized. However, the `cancellable` will
    /// block scarce file descriptors until it is finalized if this function
    /// is not called. This can cause the application to run out of file
    /// descriptors when many `GCancellables` are used at the same time.
    func releaseFd() {
        g_cancellable_release_fd(cast(cancellable_ptr))
    
    }

    /// Resets `cancellable` to its uncancelled state.
    /// 
    /// If cancellable is currently in use by any cancellable operation
    /// then the behavior of this function is undefined.
    /// 
    /// Note that it is generally not a good idea to reuse an existing
    /// cancellable for more operations after it has been cancelled once,
    /// as this function might tempt you to do. The recommended practice
    /// is to drop the reference to a cancellable after cancelling it,
    /// and let it die with the outstanding async operations. You should
    /// create a fresh cancellable for further async operations.
    func reset() {
        g_cancellable_reset(cast(cancellable_ptr))
    
    }

    /// If the `cancellable` is cancelled, sets the error to notify
    /// that the operation was cancelled.
    func setErrorIfCancelled() throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_cancellable_set_error_if_cancelled(cast(cancellable_ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Creates a source that triggers if `cancellable` is cancelled and
    /// calls its callback of type `GCancellableSourceFunc`. This is
    /// primarily useful for attaching to another (non-cancellable) source
    /// with `g_source_add_child_source()` to add cancellability to it.
    /// 
    /// For convenience, you can call this with a `nil` `GCancellable`,
    /// in which case the source will never trigger.
    /// 
    /// The new `GSource` will hold a reference to the `GCancellable`.
    func sourceNew() -> UnsafeMutablePointer<GSource>! {
        let rv = g_cancellable_source_new(cast(cancellable_ptr))
        return cast(rv)
    }

    /// Async version of `g_app_info_launch_default_for_uri()`.
    /// 
    /// This version is useful if you are interested in receiving
    /// error information in the case where the application is
    /// sandboxed and the portal may present an application chooser
    /// dialog to the user.
    /// 
    /// This is also useful if you want to be sure that the D-Bus–activated
    /// applications are really started before termination and if you are interested
    /// in receiving error information from their activation.
    func appInfoLaunchDefaultForURIAsync(uri: UnsafePointer<CChar>, context: AppLaunchContextProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_app_info_launch_default_for_uri_async(uri, cast(context.ptr), cast(cancellable_ptr), callback, cast(user_data))
    
    }

    /// Helper function for constructing `GAsyncInitable` object. This is
    /// similar to `g_object_newv()` but also initializes the object asynchronously.
    /// 
    /// When the initialization is finished, `callback` will be called. You can
    /// then call `g_async_initable_new_finish()` to get the new object and check
    /// for any errors.
    ///
    /// **async_initable_newv_async is deprecated:**
    /// Use g_object_new_with_properties() and
    /// g_async_initable_init_async() instead. See #GParameter for more information.
    @available(*, deprecated) func asyncInitableNewvAsync(objectType object_type: GType, nParameters n_parameters: CUnsignedInt, parameters: ParameterProtocol, ioPriority io_priority: CInt, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_async_initable_newv_async(object_type, guint(n_parameters), cast(parameters.ptr), io_priority, cast(cancellable_ptr), callback, cast(user_data))
    
    }

    /// Asynchronously connects to the message bus specified by `bus_type`.
    /// 
    /// When the operation is finished, `callback` will be invoked. You can
    /// then call `g_bus_get_finish()` to get the result of the operation.
    /// 
    /// This is an asynchronous failable function. See `g_bus_get_sync()` for
    /// the synchronous version.
    func busGet(busType bus_type: BusType, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_bus_get(bus_type, cast(cancellable_ptr), callback, cast(user_data))
    
    }

    /// Synchronously connects to the message bus specified by `bus_type`.
    /// Note that the returned object may shared with other callers,
    /// e.g. if two separate parts of a process calls this function with
    /// the same `bus_type`, they will share the same object.
    /// 
    /// This is a synchronous failable function. See `g_bus_get()` and
    /// `g_bus_get_finish()` for the asynchronous version.
    /// 
    /// The returned object is a singleton, that is, shared with other
    /// callers of `g_bus_get()` and `g_bus_get_sync()` for `bus_type`. In the
    /// event that you need a private message bus connection, use
    /// `g_dbus_address_get_for_bus_sync()` and
    /// `g_dbus_connection_new_for_address()`.
    /// 
    /// Note that the returned `GDBusConnection` object will (usually) have
    /// the `GDBusConnection:exit`-on-close property set to `true`.
    func busGetSync(busType bus_type: BusType) throws -> UnsafeMutablePointer<GDBusConnection>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bus_get_sync(bus_type, cast(cancellable_ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Synchronously looks up the D-Bus address for the well-known message
    /// bus instance specified by `bus_type`. This may involve using various
    /// platform specific mechanisms.
    /// 
    /// The returned address will be in the
    /// [D-Bus address format](https://dbus.freedesktop.org/doc/dbus-specification.html`addresses`).
    func dbusAddressGetForBusSync(busType bus_type: BusType) throws -> String! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_address_get_for_bus_sync(bus_type, cast(cancellable_ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Asynchronously connects to an endpoint specified by `address` and
    /// sets up the connection so it is in a state to run the client-side
    /// of the D-Bus authentication conversation. `address` must be in the
    /// [D-Bus address format](https://dbus.freedesktop.org/doc/dbus-specification.html`addresses`).
    /// 
    /// When the operation is finished, `callback` will be invoked. You can
    /// then call `g_dbus_address_get_stream_finish()` to get the result of
    /// the operation.
    /// 
    /// This is an asynchronous failable function. See
    /// `g_dbus_address_get_stream_sync()` for the synchronous version.
    func dbusAddressGetStream(address: UnsafePointer<gchar>, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_dbus_address_get_stream(address, cast(cancellable_ptr), callback, cast(user_data))
    
    }

    /// Synchronously connects to an endpoint specified by `address` and
    /// sets up the connection so it is in a state to run the client-side
    /// of the D-Bus authentication conversation. `address` must be in the
    /// [D-Bus address format](https://dbus.freedesktop.org/doc/dbus-specification.html`addresses`).
    /// 
    /// This is a synchronous failable function. See
    /// `g_dbus_address_get_stream()` for the asynchronous version.
    func dbusAddressGetStreamSync(address: UnsafePointer<gchar>, outGuid out_guid: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>) throws -> UnsafeMutablePointer<GIOStream>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_address_get_stream_sync(address, cast(out_guid), cast(cancellable_ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Helper function for constructing `GInitable` object. This is
    /// similar to `g_object_newv()` but also initializes the object
    /// and returns `nil`, setting an error on failure.
    ///
    /// **initable_newv is deprecated:**
    /// Use g_object_new_with_properties() and
    /// g_initable_init() instead. See #GParameter for more information.
    @available(*, deprecated) func initableNewv(objectType object_type: GType, nParameters n_parameters: CUnsignedInt, parameters: UnsafeMutablePointer<GParameter>) throws -> UnsafeMutableRawPointer! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_initable_newv(object_type, guint(n_parameters), cast(parameters), cast(cancellable_ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Schedules the I/O job to run in another thread.
    /// 
    /// `notify` will be called on `user_data` after `job_func` has returned,
    /// regardless whether the job was cancelled or has run to completion.
    /// 
    /// If `cancellable` is not `nil`, it can be used to cancel the I/O job
    /// by calling `g_cancellable_cancel()` or by calling
    /// `g_io_scheduler_cancel_all_jobs()`.
    ///
    /// **io_scheduler_push_job is deprecated:**
    /// use #GThreadPool or g_task_run_in_thread()
    @available(*, deprecated) func ioSchedulerPushJob(jobFunc job_func: @escaping IOSchedulerJobFunc, userData user_data: UnsafeMutableRawPointer, notify: @escaping GLib.DestroyNotify, ioPriority io_priority: CInt) {
        g_io_scheduler_push_job(job_func, cast(user_data), notify, gint(io_priority), cast(cancellable_ptr))
    
    }

    /// Utility method for `GPollableInputStream` and `GPollableOutputStream`
    /// implementations. Creates a new `GSource`, as with
    /// `g_pollable_source_new()`, but also attaching `child_source` (with a
    /// dummy callback), and `cancellable`, if they are non-`nil`.
    func pollableSourceNewFull(pollableStream pollable_stream: ObjectProtocol, childSource child_source: SourceProtocol) -> UnsafeMutablePointer<GSource>! {
        let rv = g_pollable_source_new_full(cast(pollable_stream.ptr), cast(child_source.ptr), cast(cancellable_ptr))
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
    func pollableStreamRead(stream: InputStreamProtocol, buffer: UnsafeMutableRawPointer, count: Int, blocking: Bool) throws -> gssize {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_pollable_stream_read(cast(stream.ptr), cast(buffer), gsize(count), gboolean(blocking ? 1 : 0), cast(cancellable_ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
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
    func pollableStreamWrite(stream: OutputStreamProtocol, buffer: UnsafeMutableRawPointer, count: Int, blocking: Bool) throws -> gssize {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_pollable_stream_write(cast(stream.ptr), cast(buffer), gsize(count), gboolean(blocking ? 1 : 0), cast(cancellable_ptr), &error)
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
    func pollableStreamWriteAll(stream: OutputStreamProtocol, buffer: UnsafeMutableRawPointer, count: Int, blocking: Bool, bytesWritten bytes_written: UnsafeMutablePointer<Int>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_pollable_stream_write_all(cast(stream.ptr), cast(buffer), gsize(count), gboolean(blocking ? 1 : 0), cast(bytes_written), cast(cancellable_ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }
    /// Gets the file descriptor for a cancellable job. This can be used to
    /// implement cancellable operations on Unix systems. The returned fd will
    /// turn readable when `cancellable` is cancelled.
    /// 
    /// You are not supposed to read from the fd yourself, just check for
    /// readable status. Reading to unset the readable status is done
    /// with `g_cancellable_reset()`.
    /// 
    /// After a successful return from this function, you should use
    /// `g_cancellable_release_fd()` to free up resources allocated for
    /// the returned file descriptor.
    /// 
    /// See also `g_cancellable_make_pollfd()`.
    var fd: CInt {
        /// Gets the file descriptor for a cancellable job. This can be used to
        /// implement cancellable operations on Unix systems. The returned fd will
        /// turn readable when `cancellable` is cancelled.
        /// 
        /// You are not supposed to read from the fd yourself, just check for
        /// readable status. Reading to unset the readable status is done
        /// with `g_cancellable_reset()`.
        /// 
        /// After a successful return from this function, you should use
        /// `g_cancellable_release_fd()` to free up resources allocated for
        /// the returned file descriptor.
        /// 
        /// See also `g_cancellable_make_pollfd()`.
        get {
            let rv = g_cancellable_get_fd(cast(cancellable_ptr))
            return rv
        }
    }

    /// Checks if a cancellable job has been cancelled.
    var isCancelled: Bool {
        /// Checks if a cancellable job has been cancelled.
        get {
            let rv = g_cancellable_is_cancelled(cast(cancellable_ptr))
            return Bool(rv != 0)
        }
    }
}



