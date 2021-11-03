import CGLib
import GLib
import GLibObject

// MARK: - BufferedOutputStream Class

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
///
/// The `BufferedOutputStreamProtocol` protocol exposes the methods and properties of an underlying `GBufferedOutputStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BufferedOutputStream`.
/// Alternatively, use `BufferedOutputStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol BufferedOutputStreamProtocol: FilterOutputStreamProtocol, SeekableProtocol {
        /// Untyped pointer to the underlying `GBufferedOutputStream` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GBufferedOutputStream` instance.
    var buffered_output_stream_ptr: UnsafeMutablePointer<GBufferedOutputStream>! { get }

    /// Required Initialiser for types conforming to `BufferedOutputStreamProtocol`
    init(raw: UnsafeMutableRawPointer)
}

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
///
/// The `BufferedOutputStreamRef` type acts as a lightweight Swift reference to an underlying `GBufferedOutputStream` instance.
/// It exposes methods that can operate on this data type through `BufferedOutputStreamProtocol` conformance.
/// Use `BufferedOutputStreamRef` only as an `unowned` reference to an existing `GBufferedOutputStream` instance.
///
public struct BufferedOutputStreamRef: BufferedOutputStreamProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GBufferedOutputStream` instance.
    /// For type-safe access, use the generated, typed pointer `buffered_output_stream_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BufferedOutputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GBufferedOutputStream>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GBufferedOutputStream>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GBufferedOutputStream>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GBufferedOutputStream>?) {
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

    /// Reference intialiser for a related type that implements `BufferedOutputStreamProtocol`
    @inlinable init<T: BufferedOutputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: BufferedOutputStreamProtocol>(_ other: T) -> BufferedOutputStreamRef { BufferedOutputStreamRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new buffered output stream for a base stream.
    @inlinable init<OutputStreamT: OutputStreamProtocol>( baseStream: OutputStreamT) {
        let rv = g_buffered_output_stream_new(baseStream.output_stream_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new buffered output stream with a given buffer size.
    @inlinable init<OutputStreamT: OutputStreamProtocol>(sized baseStream: OutputStreamT, size: Int) {
        let rv = g_buffered_output_stream_new_sized(baseStream.output_stream_ptr, gsize(size))
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new buffered output stream with a given buffer size.
    @inlinable static func new<OutputStreamT: OutputStreamProtocol>(sized baseStream: OutputStreamT, size: Int) -> OutputStreamRef! {
        guard let rv = OutputStreamRef(gconstpointer: gconstpointer(g_buffered_output_stream_new_sized(baseStream.output_stream_ptr, gsize(size)))) else { return nil }
        return rv
    }
}

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
///
/// The `BufferedOutputStream` type acts as a reference-counted owner of an underlying `GBufferedOutputStream` instance.
/// It provides the methods that can operate on this data type through `BufferedOutputStreamProtocol` conformance.
/// Use `BufferedOutputStream` as a strong reference or owner of a `GBufferedOutputStream` instance.
///
open class BufferedOutputStream: FilterOutputStream, BufferedOutputStreamProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BufferedOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GBufferedOutputStream>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BufferedOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GBufferedOutputStream>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BufferedOutputStream` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BufferedOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BufferedOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GBufferedOutputStream>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BufferedOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GBufferedOutputStream>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GBufferedOutputStream`.
    /// i.e., ownership is transferred to the `BufferedOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GBufferedOutputStream>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `BufferedOutputStreamProtocol`
    /// Will retain `GBufferedOutputStream`.
    /// - Parameter other: an instance of a related type that implements `BufferedOutputStreamProtocol`
    @inlinable public init<T: BufferedOutputStreamProtocol>(bufferedOutputStream other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedOutputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new buffered output stream for a base stream.
    @inlinable public init<OutputStreamT: OutputStreamProtocol>( baseStream: OutputStreamT) {
        let rv = g_buffered_output_stream_new(baseStream.output_stream_ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new buffered output stream with a given buffer size.
    @inlinable public init<OutputStreamT: OutputStreamProtocol>(sized baseStream: OutputStreamT, size: Int) {
        let rv = g_buffered_output_stream_new_sized(baseStream.output_stream_ptr, gsize(size))
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new buffered output stream with a given buffer size.
    @inlinable public static func new<OutputStreamT: OutputStreamProtocol>(sized baseStream: OutputStreamT, size: Int) -> OutputStream! {
        guard let rv = OutputStream(gconstpointer: gconstpointer(g_buffered_output_stream_new_sized(baseStream.output_stream_ptr, gsize(size)))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: BufferedOutputStreamPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a BufferedOutputStream property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: BufferedOutputStreamPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a BufferedOutputStream property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: BufferedOutputStreamPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
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
    case notifyAutoGrow = "notify::auto-grow"
    case notifyBaseStream = "notify::base-stream"
    case notifyBufferSize = "notify::buffer-size"
    case notifyCloseBaseStream = "notify::close-base-stream"
}

// MARK: BufferedOutputStream has no signals
// MARK: BufferedOutputStream Class: BufferedOutputStreamProtocol extension (methods and fields)
public extension BufferedOutputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GBufferedOutputStream` instance.
    @inlinable var buffered_output_stream_ptr: UnsafeMutablePointer<GBufferedOutputStream>! { return ptr?.assumingMemoryBound(to: GBufferedOutputStream.self) }

    /// Checks if the buffer automatically grows as data is added.
    @inlinable func getAutoGrow() -> Bool {
        let rv = ((g_buffered_output_stream_get_auto_grow(buffered_output_stream_ptr)) != 0)
        return rv
    }

    /// Gets the size of the buffer in the `stream`.
    @inlinable func getBufferSize() -> Int {
        let rv = Int(g_buffered_output_stream_get_buffer_size(buffered_output_stream_ptr))
        return rv
    }

    /// Sets whether or not the `stream`'s buffer should automatically grow.
    /// If `auto_grow` is true, then each write will just make the buffer
    /// larger, and you must manually flush the buffer to actually write out
    /// the data to the underlying stream.
    @inlinable func set(autoGrow: Bool) {
        g_buffered_output_stream_set_auto_grow(buffered_output_stream_ptr, gboolean((autoGrow) ? 1 : 0))
    
    }

    /// Sets the size of the internal buffer to `size`.
    @inlinable func setBuffer(size: Int) {
        g_buffered_output_stream_set_buffer_size(buffered_output_stream_ptr, gsize(size))
    
    }
    /// Checks if the buffer automatically grows as data is added.
    @inlinable var autoGrow: Bool {
        /// Checks if the buffer automatically grows as data is added.
        get {
            let rv = ((g_buffered_output_stream_get_auto_grow(buffered_output_stream_ptr)) != 0)
            return rv
        }
        /// Sets whether or not the `stream`'s buffer should automatically grow.
        /// If `auto_grow` is true, then each write will just make the buffer
        /// larger, and you must manually flush the buffer to actually write out
        /// the data to the underlying stream.
        nonmutating set {
            g_buffered_output_stream_set_auto_grow(buffered_output_stream_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the size of the buffer in the `stream`.
    @inlinable var bufferSize: Int {
        /// Gets the size of the buffer in the `stream`.
        get {
            let rv = Int(g_buffered_output_stream_get_buffer_size(buffered_output_stream_ptr))
            return rv
        }
        /// Sets the size of the internal buffer to `size`.
        nonmutating set {
            g_buffered_output_stream_set_buffer_size(buffered_output_stream_ptr, gsize(newValue))
        }
    }

    @inlinable var parentInstance: GFilterOutputStream {
        get {
            let rv = buffered_output_stream_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - BytesIcon Class

/// `GBytesIcon` specifies an image held in memory in a common format (usually
/// png) to be used as icon.
///
/// The `BytesIconProtocol` protocol exposes the methods and properties of an underlying `GBytesIcon` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BytesIcon`.
/// Alternatively, use `BytesIconRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol BytesIconProtocol: GLibObject.ObjectProtocol, IconProtocol, LoadableIconProtocol {
        /// Untyped pointer to the underlying `GBytesIcon` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GBytesIcon` instance.
    var bytes_icon_ptr: UnsafeMutablePointer<GBytesIcon>! { get }

    /// Required Initialiser for types conforming to `BytesIconProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GBytesIcon` specifies an image held in memory in a common format (usually
/// png) to be used as icon.
///
/// The `BytesIconRef` type acts as a lightweight Swift reference to an underlying `GBytesIcon` instance.
/// It exposes methods that can operate on this data type through `BytesIconProtocol` conformance.
/// Use `BytesIconRef` only as an `unowned` reference to an existing `GBytesIcon` instance.
///
public struct BytesIconRef: BytesIconProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GBytesIcon` instance.
    /// For type-safe access, use the generated, typed pointer `bytes_icon_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BytesIconRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GBytesIcon>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GBytesIcon>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GBytesIcon>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GBytesIcon>?) {
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

    /// Reference intialiser for a related type that implements `BytesIconProtocol`
    @inlinable init<T: BytesIconProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: BytesIconProtocol>(_ other: T) -> BytesIconRef { BytesIconRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesIconProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesIconProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesIconProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesIconProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesIconProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// `GBytesIcon` specifies an image held in memory in a common format (usually
/// png) to be used as icon.
///
/// The `BytesIcon` type acts as a reference-counted owner of an underlying `GBytesIcon` instance.
/// It provides the methods that can operate on this data type through `BytesIconProtocol` conformance.
/// Use `BytesIcon` as a strong reference or owner of a `GBytesIcon` instance.
///
open class BytesIcon: GLibObject.Object, BytesIconProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BytesIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GBytesIcon>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BytesIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GBytesIcon>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BytesIcon` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BytesIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BytesIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GBytesIcon>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BytesIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GBytesIcon>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GBytesIcon`.
    /// i.e., ownership is transferred to the `BytesIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GBytesIcon>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `BytesIconProtocol`
    /// Will retain `GBytesIcon`.
    /// - Parameter other: an instance of a related type that implements `BytesIconProtocol`
    @inlinable public init<T: BytesIconProtocol>(bytesIcon other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesIconProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesIconProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesIconProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesIconProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesIconProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesIconProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesIconProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BytesIconProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: BytesIconPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a BytesIcon property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: BytesIconPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a BytesIcon property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: BytesIconPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
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
    /// The bytes containing the icon.
    case notifyBytes = "notify::bytes"
}

// MARK: BytesIcon has no signals
// MARK: BytesIcon Class: BytesIconProtocol extension (methods and fields)
public extension BytesIconProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GBytesIcon` instance.
    @inlinable var bytes_icon_ptr: UnsafeMutablePointer<GBytesIcon>! { return ptr?.assumingMemoryBound(to: GBytesIcon.self) }

    /// Gets the `GBytes` associated with the given `icon`.
    @inlinable func getBytes() -> GLib.BytesRef! {
        let rv = GLib.BytesRef(g_bytes_icon_get_bytes(bytes_icon_ptr))
        return rv
    }
    /// The bytes containing the icon.
    @inlinable var bytes: GLib.BytesRef! {
        /// Gets the `GBytes` associated with the given `icon`.
        get {
            let rv = GLib.BytesRef(g_bytes_icon_get_bytes(bytes_icon_ptr))
            return rv
        }
    }


}



// MARK: - Cancellable Class

/// GCancellable is a thread-safe operation cancellation stack used
/// throughout GIO to allow for cancellation of synchronous and
/// asynchronous operations.
///
/// The `CancellableProtocol` protocol exposes the methods and properties of an underlying `GCancellable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Cancellable`.
/// Alternatively, use `CancellableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol CancellableProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GCancellable` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GCancellable` instance.
    var cancellable_ptr: UnsafeMutablePointer<GCancellable>! { get }

    /// Required Initialiser for types conforming to `CancellableProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// GCancellable is a thread-safe operation cancellation stack used
/// throughout GIO to allow for cancellation of synchronous and
/// asynchronous operations.
///
/// The `CancellableRef` type acts as a lightweight Swift reference to an underlying `GCancellable` instance.
/// It exposes methods that can operate on this data type through `CancellableProtocol` conformance.
/// Use `CancellableRef` only as an `unowned` reference to an existing `GCancellable` instance.
///
public struct CancellableRef: CancellableProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GCancellable` instance.
    /// For type-safe access, use the generated, typed pointer `cancellable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CancellableRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GCancellable>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GCancellable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GCancellable>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GCancellable>?) {
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

    /// Reference intialiser for a related type that implements `CancellableProtocol`
    @inlinable init<T: CancellableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: CancellableProtocol>(_ other: T) -> CancellableRef { CancellableRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    @inlinable init() {
        let rv = g_cancellable_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Gets the top cancellable from the stack.
    @inlinable static func getCurrent() -> CancellableRef! {
        guard let rv = CancellableRef(gconstpointer: gconstpointer(g_cancellable_get_current())) else { return nil }
        return rv
    }
}

/// GCancellable is a thread-safe operation cancellation stack used
/// throughout GIO to allow for cancellation of synchronous and
/// asynchronous operations.
///
/// The `Cancellable` type acts as a reference-counted owner of an underlying `GCancellable` instance.
/// It provides the methods that can operate on this data type through `CancellableProtocol` conformance.
/// Use `Cancellable` as a strong reference or owner of a `GCancellable` instance.
///
open class Cancellable: GLibObject.Object, CancellableProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Cancellable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GCancellable>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Cancellable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GCancellable>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Cancellable` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Cancellable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Cancellable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GCancellable>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Cancellable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GCancellable>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GCancellable`.
    /// i.e., ownership is transferred to the `Cancellable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GCancellable>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `CancellableProtocol`
    /// Will retain `GCancellable`.
    /// - Parameter other: an instance of a related type that implements `CancellableProtocol`
    @inlinable public init<T: CancellableProtocol>(cancellable other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GCancellable` object.
    /// 
    /// Applications that want to start one or more operations
    /// that should be cancellable should create a `GCancellable`
    /// and pass it to the operations.
    /// 
    /// One `GCancellable` can be used in multiple consecutive
    /// operations or in multiple concurrent operations.
    @inlinable public init() {
        let rv = g_cancellable_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Gets the top cancellable from the stack.
    @inlinable public static func getCurrent() -> Cancellable! {
        guard let rv = Cancellable(gconstpointer: gconstpointer(g_cancellable_get_current())) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

// MARK: no Cancellable properties

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

// MARK: Cancellable signals
public extension CancellableProtocol {
    /// Connect a Swift signal handler to the given, typed `CancellableSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: CancellableSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `CancellableSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: CancellableSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
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
    /// - Note: This represents the underlying `cancelled` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `cancelled` signal is emitted
    @discardableResult @inlinable func onCancelled(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: CancellableRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<CancellableRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(CancellableRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .cancelled,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `cancelled` signal for using the `connect(signal:)` methods
    static var cancelledSignal: CancellableSignalName { .cancelled }
    
    
}

// MARK: Cancellable Class: CancellableProtocol extension (methods and fields)
public extension CancellableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GCancellable` instance.
    @inlinable var cancellable_ptr: UnsafeMutablePointer<GCancellable>! { return ptr?.assumingMemoryBound(to: GCancellable.self) }

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
    @inlinable func cancel() {
        g_cancellable_cancel(cancellable_ptr)
    
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
    @inlinable func connect(callback: GCallback?, data: gpointer! = nil, dataDestroyFunc: GDestroyNotify? = nil) -> Int {
        let rv = Int(g_cancellable_connect(cancellable_ptr, callback, data, dataDestroyFunc))
        return rv
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
    @inlinable func disconnect(handlerID: Int) {
        g_cancellable_disconnect(cancellable_ptr, gulong(handlerID))
    
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
    @inlinable func getFd() -> Int {
        let rv = Int(g_cancellable_get_fd(cancellable_ptr))
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
    @inlinable func make<PollFDT: GLib.PollFDProtocol>(pollfd: PollFDT) -> Bool {
        let rv = ((g_cancellable_make_pollfd(cancellable_ptr, pollfd.pollfd_ptr)) != 0)
        return rv
    }

    /// Pops `cancellable` off the cancellable stack (verifying that `cancellable`
    /// is on the top of the stack).
    @inlinable func popCurrent() {
        g_cancellable_pop_current(cancellable_ptr)
    
    }

    /// Pushes `cancellable` onto the cancellable stack. The current
    /// cancellable can then be received using `g_cancellable_get_current()`.
    /// 
    /// This is useful when implementing cancellable operations in
    /// code that does not allow you to pass down the cancellable object.
    /// 
    /// This is typically called automatically by e.g. `GFile` operations,
    /// so you rarely have to call this yourself.
    @inlinable func pushCurrent() {
        g_cancellable_push_current(cancellable_ptr)
    
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
    @inlinable func releaseFd() {
        g_cancellable_release_fd(cancellable_ptr)
    
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
    @inlinable func reset() {
        g_cancellable_reset(cancellable_ptr)
    
    }

    /// If the `cancellable` is cancelled, sets the error to notify
    /// that the operation was cancelled.
    @inlinable func setErrorIfCancelled() throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_cancellable_set_error_if_cancelled(cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func sourceNew() -> GLib.SourceRef! {
        let rv = GLib.SourceRef(g_cancellable_source_new(cancellable_ptr))
        return rv
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
    @inlinable func appInfoLaunchDefaultForURIAsync(uri: UnsafePointer<CChar>!, context: AppLaunchContextRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_app_info_launch_default_for_uri_async(uri, context?.app_launch_context_ptr, cancellable_ptr, callback, userData)
    
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
    @inlinable func appInfoLaunchDefaultForURIAsync<AppLaunchContextT: AppLaunchContextProtocol>(uri: UnsafePointer<CChar>!, context: AppLaunchContextT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_app_info_launch_default_for_uri_async(uri, context?.app_launch_context_ptr, cancellable_ptr, callback, userData)
    
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
    @available(*, deprecated) @inlinable func asyncInitableNewvAsync<ParameterT: GLibObject.ParameterProtocol>(objectType: GType, nParameters: Int, parameters: ParameterT, ioPriority: Int, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_async_initable_newv_async(objectType, guint(nParameters), parameters._ptr, gint(ioPriority), cancellable_ptr, callback, userData)
    
    }

    /// Asynchronously connects to the message bus specified by `bus_type`.
    /// 
    /// When the operation is finished, `callback` will be invoked. You can
    /// then call `g_bus_get_finish()` to get the result of the operation.
    /// 
    /// This is an asynchronous failable function. See `g_bus_get_sync()` for
    /// the synchronous version.
    @inlinable func busGet(busType: GBusType, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_bus_get(busType, cancellable_ptr, callback, userData)
    
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
    /// the `GDBusConnection:exit-on-close` property set to `true`.
    @inlinable func busGetSync(busType: GBusType) throws -> DBusConnectionRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = DBusConnectionRef(gconstpointer: gconstpointer(g_bus_get_sync(busType, cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Synchronously looks up the D-Bus address for the well-known message
    /// bus instance specified by `bus_type`. This may involve using various
    /// platform specific mechanisms.
    /// 
    /// The returned address will be in the
    /// [D-Bus address format](https://dbus.freedesktop.org/doc/dbus-specification.html`addresses`).
    @inlinable func dbusAddressGetForBusSync(busType: GBusType) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_dbus_address_get_for_bus_sync(busType, cancellable_ptr, &error).map({ String(cString: $0) })
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func dbusAddressGetStream(address: UnsafePointer<gchar>!, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_dbus_address_get_stream(address, cancellable_ptr, callback, userData)
    
    }

    /// Synchronously connects to an endpoint specified by `address` and
    /// sets up the connection so it is in a state to run the client-side
    /// of the D-Bus authentication conversation. `address` must be in the
    /// [D-Bus address format](https://dbus.freedesktop.org/doc/dbus-specification.html`addresses`).
    /// 
    /// A server is not required to set a GUID, so `out_guid` may be set to `nil`
    /// even on success.
    /// 
    /// This is a synchronous failable function. See
    /// `g_dbus_address_get_stream()` for the asynchronous version.
    @inlinable func dbusAddressGetStreamSync(address: UnsafePointer<gchar>!, outGuid: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>? = nil) throws -> IOStreamRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = IOStreamRef(gconstpointer: gconstpointer(g_dbus_address_get_stream_sync(address, outGuid, cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Helper function for constructing `GInitable` object. This is
    /// similar to `g_object_newv()` but also initializes the object
    /// and returns `nil`, setting an error on failure.
    ///
    /// **initable_newv is deprecated:**
    /// Use g_object_new_with_properties() and
    /// g_initable_init() instead. See #GParameter for more information.
    @available(*, deprecated) @inlinable func initableNewv(objectType: GType, nParameters: Int, parameters: UnsafeMutablePointer<GParameter>!) throws -> GLibObject.ObjectRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = GLibObject.ObjectRef(gpointer: g_initable_newv(objectType, guint(nParameters), parameters, cancellable_ptr, &error))
        if let error = error { throw GLibError(error) }
        return rv
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
    @available(*, deprecated) @inlinable func ioSchedulerPushJob(jobFunc: GIOSchedulerJobFunc?, userData: gpointer! = nil, notify: GDestroyNotify? = nil, ioPriority: Int) {
        g_io_scheduler_push_job(jobFunc, userData, notify, gint(ioPriority), cancellable_ptr)
    
    }

    /// Utility method for `GPollableInputStream` and `GPollableOutputStream`
    /// implementations. Creates a new `GSource`, as with
    /// `g_pollable_source_new()`, but also attaching `child_source` (with a
    /// dummy callback), and `cancellable`, if they are non-`nil`.
    @inlinable func pollableSourceNewFull<ObjectT: GLibObject.ObjectProtocol>(pollableStream: ObjectT, childSource: GLib.SourceRef? = nil) -> GLib.SourceRef! {
        let rv = GLib.SourceRef(g_pollable_source_new_full(pollableStream.object_ptr, childSource?.source_ptr, cancellable_ptr))
        return rv
    }
    /// Utility method for `GPollableInputStream` and `GPollableOutputStream`
    /// implementations. Creates a new `GSource`, as with
    /// `g_pollable_source_new()`, but also attaching `child_source` (with a
    /// dummy callback), and `cancellable`, if they are non-`nil`.
    @inlinable func pollableSourceNewFull<ObjectT: GLibObject.ObjectProtocol, SourceT: GLib.SourceProtocol>(pollableStream: ObjectT, childSource: SourceT?) -> GLib.SourceRef! {
        let rv = GLib.SourceRef(g_pollable_source_new_full(pollableStream.object_ptr, childSource?.source_ptr, cancellable_ptr))
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
    @inlinable func pollableStreamRead<InputStreamT: InputStreamProtocol>(stream: InputStreamT, buffer: UnsafeMutableRawPointer!, count: Int, blocking: Bool) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_pollable_stream_read(stream.input_stream_ptr, buffer, gsize(count), gboolean((blocking) ? 1 : 0), cancellable_ptr, &error)
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
    @inlinable func pollableStreamWrite<OutputStreamT: OutputStreamProtocol>(stream: OutputStreamT, buffer: UnsafeMutableRawPointer!, count: Int, blocking: Bool) throws -> gssize {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_pollable_stream_write(stream.output_stream_ptr, buffer, gsize(count), gboolean((blocking) ? 1 : 0), cancellable_ptr, &error)
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
    @inlinable func pollableStreamWriteAll<OutputStreamT: OutputStreamProtocol>(stream: OutputStreamT, buffer: UnsafeMutableRawPointer!, count: Int, blocking: Bool, bytesWritten: UnsafeMutablePointer<gsize>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_pollable_stream_write_all(stream.output_stream_ptr, buffer, gsize(count), gboolean((blocking) ? 1 : 0), bytesWritten, cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable var fd: Int {
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
            let rv = Int(g_cancellable_get_fd(cancellable_ptr))
            return rv
        }
    }

    /// Checks if a cancellable job has been cancelled.
    @inlinable var isCancelled: Bool {
        /// Checks if a cancellable job has been cancelled.
        get {
            let rv = ((g_cancellable_is_cancelled(cancellable_ptr)) != 0)
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = cancellable_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



