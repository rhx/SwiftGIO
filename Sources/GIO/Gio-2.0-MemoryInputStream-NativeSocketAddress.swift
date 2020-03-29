import CGLib
import GLib
import GLibObject

// MARK: - MemoryInputStream Class

/// The `MemoryInputStreamProtocol` protocol exposes the methods and properties of an underlying `GMemoryInputStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MemoryInputStream`.
/// Alternatively, use `MemoryInputStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GMemoryInputStream` is a class for using arbitrary
/// memory chunks as input for GIO streaming input operations.
/// 
/// As of GLib 2.34, `GMemoryInputStream` implements
/// `GPollableInputStream`.
public protocol MemoryInputStreamProtocol: InputStreamProtocol, PollableInputStreamProtocol, SeekableProtocol {
    /// Untyped pointer to the underlying `GMemoryInputStream` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GMemoryInputStream` instance.
    var memory_input_stream_ptr: UnsafeMutablePointer<GMemoryInputStream> { get }
}

/// The `MemoryInputStreamRef` type acts as a lightweight Swift reference to an underlying `GMemoryInputStream` instance.
/// It exposes methods that can operate on this data type through `MemoryInputStreamProtocol` conformance.
/// Use `MemoryInputStreamRef` only as an `unowned` reference to an existing `GMemoryInputStream` instance.
///
/// `GMemoryInputStream` is a class for using arbitrary
/// memory chunks as input for GIO streaming input operations.
/// 
/// As of GLib 2.34, `GMemoryInputStream` implements
/// `GPollableInputStream`.
public struct MemoryInputStreamRef: MemoryInputStreamProtocol {
    /// Untyped pointer to the underlying `GMemoryInputStream` instance.
    /// For type-safe access, use the generated, typed pointer `memory_input_stream_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MemoryInputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GMemoryInputStream>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MemoryInputStreamProtocol`
    init<T: MemoryInputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new empty `GMemoryInputStream`.
    init() {
        let rv = g_memory_input_stream_new()
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// Creates a new `GMemoryInputStream` with data from the given `bytes`.
    init(bytes: BytesProtocol) {
        let rv = g_memory_input_stream_new_from_bytes(cast(bytes.ptr))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// Creates a new `GMemoryInputStream` with data in memory of a given size.
    init(data: UnsafeMutableRawPointer, len: gssize, destroy: @escaping GLib.DestroyNotify) {
        let rv = g_memory_input_stream_new_from_data(cast(data), len, destroy)
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
    /// Creates a new `GMemoryInputStream` with data from the given `bytes`.
    static func newFrom(bytes: BytesProtocol) -> MemoryInputStreamRef! {
        let rv = g_memory_input_stream_new_from_bytes(cast(bytes.ptr))
        return rv.map { MemoryInputStreamRef(cast($0)) }
    }

    /// Creates a new `GMemoryInputStream` with data in memory of a given size.
    static func newFrom(data: UnsafeMutableRawPointer, len: gssize, destroy: @escaping GLib.DestroyNotify) -> MemoryInputStreamRef! {
        let rv = g_memory_input_stream_new_from_data(cast(data), len, destroy)
        return rv.map { MemoryInputStreamRef(cast($0)) }
    }
}

/// The `MemoryInputStream` type acts as a reference-counted owner of an underlying `GMemoryInputStream` instance.
/// It provides the methods that can operate on this data type through `MemoryInputStreamProtocol` conformance.
/// Use `MemoryInputStream` as a strong reference or owner of a `GMemoryInputStream` instance.
///
/// `GMemoryInputStream` is a class for using arbitrary
/// memory chunks as input for GIO streaming input operations.
/// 
/// As of GLib 2.34, `GMemoryInputStream` implements
/// `GPollableInputStream`.
open class MemoryInputStream: InputStream, MemoryInputStreamProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemoryInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GMemoryInputStream>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GMemoryInputStream`.
    /// i.e., ownership is transferred to the `MemoryInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GMemoryInputStream>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `MemoryInputStreamProtocol`
    /// Will retain `GMemoryInputStream`.
    /// - Parameter other: an instance of a related type that implements `MemoryInputStreamProtocol`
    public init<T: MemoryInputStreamProtocol>(memoryInputStream other: T) {
        super.init(retaining: cast(other.memory_input_stream_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new empty `GMemoryInputStream`.
    public init() {
        let rv = g_memory_input_stream_new()
        super.init(cast(rv))
    }

    /// Creates a new `GMemoryInputStream` with data from the given `bytes`.
    public init(bytes: BytesProtocol) {
        let rv = g_memory_input_stream_new_from_bytes(cast(bytes.ptr))
        super.init(cast(rv))
    }

    /// Creates a new `GMemoryInputStream` with data in memory of a given size.
    public init(data: UnsafeMutableRawPointer, len: gssize, destroy: @escaping GLib.DestroyNotify) {
        let rv = g_memory_input_stream_new_from_data(cast(data), len, destroy)
        super.init(cast(rv))
    }

    /// Creates a new `GMemoryInputStream` with data from the given `bytes`.
    public static func newFrom(bytes: BytesProtocol) -> MemoryInputStream! {
        let rv = g_memory_input_stream_new_from_bytes(cast(bytes.ptr))
        return rv.map { MemoryInputStream(cast($0)) }
    }

    /// Creates a new `GMemoryInputStream` with data in memory of a given size.
    public static func newFrom(data: UnsafeMutableRawPointer, len: gssize, destroy: @escaping GLib.DestroyNotify) -> MemoryInputStream! {
        let rv = g_memory_input_stream_new_from_data(cast(data), len, destroy)
        return rv.map { MemoryInputStream(cast($0)) }
    }

}

// MARK: - no MemoryInputStream properties

public enum MemoryInputStreamSignalName: String, SignalNameProtocol {
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

public extension MemoryInputStreamProtocol {
    /// Connect a `MemoryInputStreamSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: MemoryInputStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(memory_input_stream_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension MemoryInputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMemoryInputStream` instance.
    var memory_input_stream_ptr: UnsafeMutablePointer<GMemoryInputStream> { return ptr.assumingMemoryBound(to: GMemoryInputStream.self) }

    /// Appends `bytes` to data that can be read from the input stream.
    func add(bytes: BytesProtocol) {
        g_memory_input_stream_add_bytes(cast(memory_input_stream_ptr), cast(bytes.ptr))
    
    }

    /// Appends `data` to data that can be read from the input stream
    func add(data: UnsafeMutableRawPointer, len: gssize, destroy: @escaping GLib.DestroyNotify) {
        g_memory_input_stream_add_data(cast(memory_input_stream_ptr), cast(data), len, destroy)
    
    }
}



// MARK: - MemoryOutputStream Class

/// The `MemoryOutputStreamProtocol` protocol exposes the methods and properties of an underlying `GMemoryOutputStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MemoryOutputStream`.
/// Alternatively, use `MemoryOutputStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GMemoryOutputStream` is a class for using arbitrary
/// memory chunks as output for GIO streaming output operations.
/// 
/// As of GLib 2.34, `GMemoryOutputStream` trivially implements
/// `GPollableOutputStream:` it always polls as ready.
public protocol MemoryOutputStreamProtocol: OutputStreamProtocol, PollableOutputStreamProtocol, SeekableProtocol {
    /// Untyped pointer to the underlying `GMemoryOutputStream` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GMemoryOutputStream` instance.
    var memory_output_stream_ptr: UnsafeMutablePointer<GMemoryOutputStream> { get }
}

/// The `MemoryOutputStreamRef` type acts as a lightweight Swift reference to an underlying `GMemoryOutputStream` instance.
/// It exposes methods that can operate on this data type through `MemoryOutputStreamProtocol` conformance.
/// Use `MemoryOutputStreamRef` only as an `unowned` reference to an existing `GMemoryOutputStream` instance.
///
/// `GMemoryOutputStream` is a class for using arbitrary
/// memory chunks as output for GIO streaming output operations.
/// 
/// As of GLib 2.34, `GMemoryOutputStream` trivially implements
/// `GPollableOutputStream:` it always polls as ready.
public struct MemoryOutputStreamRef: MemoryOutputStreamProtocol {
    /// Untyped pointer to the underlying `GMemoryOutputStream` instance.
    /// For type-safe access, use the generated, typed pointer `memory_output_stream_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MemoryOutputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GMemoryOutputStream>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MemoryOutputStreamProtocol`
    init<T: MemoryOutputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GMemoryOutputStream`.
    /// 
    /// In most cases this is not the function you want.  See
    /// `g_memory_output_stream_new_resizable()` instead.
    /// 
    /// If `data` is non-`nil`, the stream will use that for its internal storage.
    /// 
    /// If `realloc_fn` is non-`nil`, it will be used for resizing the internal
    /// storage when necessary and the stream will be considered resizable.
    /// In that case, the stream will start out being (conceptually) empty.
    /// `size` is used only as a hint for how big `data` is.  Specifically,
    /// seeking to the end of a newly-created stream will seek to zero, not
    /// `size`.  Seeking past the end of the stream and then writing will
    /// introduce a zero-filled gap.
    /// 
    /// If `realloc_fn` is `nil` then the stream is fixed-sized.  Seeking to
    /// the end will seek to `size` exactly.  Writing past the end will give
    /// an 'out of space' error.  Attempting to seek past the end will fail.
    /// Unlike the resizable case, seeking to an offset within the stream and
    /// writing will preserve the bytes passed in as `data` before that point
    /// and will return them as part of `g_memory_output_stream_steal_data()`.
    /// If you intend to seek you should probably therefore ensure that `data`
    /// is properly initialised.
    /// 
    /// It is probably only meaningful to provide `data` and `size` in the case
    /// that you want a fixed-sized stream.  Put another way: if `realloc_fn`
    /// is non-`nil` then it makes most sense to give `data` as `nil` and
    /// `size` as 0 (allowing `GMemoryOutputStream` to do the initial
    /// allocation for itself).
    /// 
    /// (C Language Example):
    /// ```C
    /// // a stream that can grow
    /// stream = g_memory_output_stream_new (NULL, 0, realloc, free);
    /// 
    /// // another stream that can grow
    /// stream2 = g_memory_output_stream_new (NULL, 0, g_realloc, g_free);
    /// 
    /// // a fixed-size stream
    /// data = malloc (200);
    /// stream3 = g_memory_output_stream_new (data, 200, NULL, free);
    /// ```
    /// 
    init( data: UnsafeMutableRawPointer, size: Int, reallocFunction realloc_function: @escaping ReallocFunc, destroyFunction destroy_function: @escaping GLib.DestroyNotify) {
        let rv = g_memory_output_stream_new(cast(data), gsize(size), realloc_function, destroy_function)
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
    /// Creates a new `GMemoryOutputStream`, using `g_realloc()` and `g_free()`
    /// for memory allocation.
    static func newResizable() -> MemoryOutputStreamRef! {
        let rv = g_memory_output_stream_new_resizable()
        return rv.map { MemoryOutputStreamRef(cast($0)) }
    }
}

/// The `MemoryOutputStream` type acts as a reference-counted owner of an underlying `GMemoryOutputStream` instance.
/// It provides the methods that can operate on this data type through `MemoryOutputStreamProtocol` conformance.
/// Use `MemoryOutputStream` as a strong reference or owner of a `GMemoryOutputStream` instance.
///
/// `GMemoryOutputStream` is a class for using arbitrary
/// memory chunks as output for GIO streaming output operations.
/// 
/// As of GLib 2.34, `GMemoryOutputStream` trivially implements
/// `GPollableOutputStream:` it always polls as ready.
open class MemoryOutputStream: OutputStream, MemoryOutputStreamProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemoryOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GMemoryOutputStream>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GMemoryOutputStream`.
    /// i.e., ownership is transferred to the `MemoryOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GMemoryOutputStream>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `MemoryOutputStreamProtocol`
    /// Will retain `GMemoryOutputStream`.
    /// - Parameter other: an instance of a related type that implements `MemoryOutputStreamProtocol`
    public init<T: MemoryOutputStreamProtocol>(memoryOutputStream other: T) {
        super.init(retaining: cast(other.memory_output_stream_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GMemoryOutputStream`.
    /// 
    /// In most cases this is not the function you want.  See
    /// `g_memory_output_stream_new_resizable()` instead.
    /// 
    /// If `data` is non-`nil`, the stream will use that for its internal storage.
    /// 
    /// If `realloc_fn` is non-`nil`, it will be used for resizing the internal
    /// storage when necessary and the stream will be considered resizable.
    /// In that case, the stream will start out being (conceptually) empty.
    /// `size` is used only as a hint for how big `data` is.  Specifically,
    /// seeking to the end of a newly-created stream will seek to zero, not
    /// `size`.  Seeking past the end of the stream and then writing will
    /// introduce a zero-filled gap.
    /// 
    /// If `realloc_fn` is `nil` then the stream is fixed-sized.  Seeking to
    /// the end will seek to `size` exactly.  Writing past the end will give
    /// an 'out of space' error.  Attempting to seek past the end will fail.
    /// Unlike the resizable case, seeking to an offset within the stream and
    /// writing will preserve the bytes passed in as `data` before that point
    /// and will return them as part of `g_memory_output_stream_steal_data()`.
    /// If you intend to seek you should probably therefore ensure that `data`
    /// is properly initialised.
    /// 
    /// It is probably only meaningful to provide `data` and `size` in the case
    /// that you want a fixed-sized stream.  Put another way: if `realloc_fn`
    /// is non-`nil` then it makes most sense to give `data` as `nil` and
    /// `size` as 0 (allowing `GMemoryOutputStream` to do the initial
    /// allocation for itself).
    /// 
    /// (C Language Example):
    /// ```C
    /// // a stream that can grow
    /// stream = g_memory_output_stream_new (NULL, 0, realloc, free);
    /// 
    /// // another stream that can grow
    /// stream2 = g_memory_output_stream_new (NULL, 0, g_realloc, g_free);
    /// 
    /// // a fixed-size stream
    /// data = malloc (200);
    /// stream3 = g_memory_output_stream_new (data, 200, NULL, free);
    /// ```
    /// 
    public init( data: UnsafeMutableRawPointer, size: Int, reallocFunction realloc_function: @escaping ReallocFunc, destroyFunction destroy_function: @escaping GLib.DestroyNotify) {
        let rv = g_memory_output_stream_new(cast(data), gsize(size), realloc_function, destroy_function)
        super.init(cast(rv))
    }

    /// Creates a new `GMemoryOutputStream`, using `g_realloc()` and `g_free()`
    /// for memory allocation.
    public static func newResizable() -> MemoryOutputStream! {
        let rv = g_memory_output_stream_new_resizable()
        return rv.map { MemoryOutputStream(cast($0)) }
    }

}

public enum MemoryOutputStreamPropertyName: String, PropertyNameProtocol {
    /// Pointer to buffer where data will be written.
    case data = "data"
    /// Size of data written to the buffer.
    case dataSize = "data-size"
    /// Function called with the buffer as argument when the stream is destroyed.
    case destroyFunction = "destroy-function"
    /// Function with realloc semantics called to enlarge the buffer.
    case reallocFunction = "realloc-function"
    /// Current size of the data buffer.
    case size = "size"
}

public extension MemoryOutputStreamProtocol {
    /// Bind a `MemoryOutputStreamPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: MemoryOutputStreamPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(memory_output_stream_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum MemoryOutputStreamSignalName: String, SignalNameProtocol {
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
    /// Pointer to buffer where data will be written.
    case notifyData = "notify::data"
    /// Size of data written to the buffer.
    case notifyDataSize = "notify::data-size"
    /// Function called with the buffer as argument when the stream is destroyed.
    case notifyDestroyFunction = "notify::destroy-function"
    /// Function with realloc semantics called to enlarge the buffer.
    case notifyReallocFunction = "notify::realloc-function"
    /// Current size of the data buffer.
    case notifySize = "notify::size"
}

public extension MemoryOutputStreamProtocol {
    /// Connect a `MemoryOutputStreamSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: MemoryOutputStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(memory_output_stream_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension MemoryOutputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMemoryOutputStream` instance.
    var memory_output_stream_ptr: UnsafeMutablePointer<GMemoryOutputStream> { return ptr.assumingMemoryBound(to: GMemoryOutputStream.self) }

    /// Gets any loaded data from the `ostream`.
    /// 
    /// Note that the returned pointer may become invalid on the next
    /// write or truncate operation on the stream.
    func getData() -> UnsafeMutableRawPointer! {
        let rv = g_memory_output_stream_get_data(cast(memory_output_stream_ptr))
        return cast(rv)
    }

    /// Returns the number of bytes from the start up to including the last
    /// byte written in the stream that has not been truncated away.
    func getDataSize() -> Int {
        let rv = g_memory_output_stream_get_data_size(cast(memory_output_stream_ptr))
        return Int(rv)
    }

    /// Gets the size of the currently allocated data area (available from
    /// `g_memory_output_stream_get_data()`).
    /// 
    /// You probably don't want to use this function on resizable streams.
    /// See `g_memory_output_stream_get_data_size()` instead.  For resizable
    /// streams the size returned by this function is an implementation
    /// detail and may be change at any time in response to operations on the
    /// stream.
    /// 
    /// If the stream is fixed-sized (ie: no realloc was passed to
    /// `g_memory_output_stream_new()`) then this is the maximum size of the
    /// stream and further writes will return `G_IO_ERROR_NO_SPACE`.
    /// 
    /// In any case, if you want the number of bytes currently written to the
    /// stream, use `g_memory_output_stream_get_data_size()`.
    func getSize() -> Int {
        let rv = g_memory_output_stream_get_size(cast(memory_output_stream_ptr))
        return Int(rv)
    }

    /// Returns data from the `ostream` as a `GBytes`. `ostream` must be
    /// closed before calling this function.
    func stealAsBytes() -> UnsafeMutablePointer<GBytes>! {
        let rv = g_memory_output_stream_steal_as_bytes(cast(memory_output_stream_ptr))
        return cast(rv)
    }

    /// Gets any loaded data from the `ostream`. Ownership of the data
    /// is transferred to the caller; when no longer needed it must be
    /// freed using the free function set in `ostream`'s
    /// `GMemoryOutputStream:destroy`-function property.
    /// 
    /// `ostream` must be closed before calling this function.
    func stealData() -> UnsafeMutableRawPointer! {
        let rv = g_memory_output_stream_steal_data(cast(memory_output_stream_ptr))
        return cast(rv)
    }
    /// Pointer to buffer where data will be written.
    var data: UnsafeMutableRawPointer! {
        /// Gets any loaded data from the `ostream`.
        /// 
        /// Note that the returned pointer may become invalid on the next
        /// write or truncate operation on the stream.
        get {
            let rv = g_memory_output_stream_get_data(cast(memory_output_stream_ptr))
            return cast(rv)
        }
    }

    /// Returns the number of bytes from the start up to including the last
    /// byte written in the stream that has not been truncated away.
    var dataSize: Int {
        /// Returns the number of bytes from the start up to including the last
        /// byte written in the stream that has not been truncated away.
        get {
            let rv = g_memory_output_stream_get_data_size(cast(memory_output_stream_ptr))
            return Int(rv)
        }
    }

    /// Current size of the data buffer.
    var size: Int {
        /// Gets the size of the currently allocated data area (available from
        /// `g_memory_output_stream_get_data()`).
        /// 
        /// You probably don't want to use this function on resizable streams.
        /// See `g_memory_output_stream_get_data_size()` instead.  For resizable
        /// streams the size returned by this function is an implementation
        /// detail and may be change at any time in response to operations on the
        /// stream.
        /// 
        /// If the stream is fixed-sized (ie: no realloc was passed to
        /// `g_memory_output_stream_new()`) then this is the maximum size of the
        /// stream and further writes will return `G_IO_ERROR_NO_SPACE`.
        /// 
        /// In any case, if you want the number of bytes currently written to the
        /// stream, use `g_memory_output_stream_get_data_size()`.
        get {
            let rv = g_memory_output_stream_get_size(cast(memory_output_stream_ptr))
            return Int(rv)
        }
    }
}



// MARK: - Menu Class

/// The `MenuProtocol` protocol exposes the methods and properties of an underlying `GMenu` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Menu`.
/// Alternatively, use `MenuRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GMenu` is a simple implementation of `GMenuModel`.
/// You populate a `GMenu` by adding `GMenuItem` instances to it.
/// 
/// There are some convenience functions to allow you to directly
/// add items (avoiding `GMenuItem`) for the common cases. To add
/// a regular item, use `g_menu_insert()`. To add a section, use
/// `g_menu_insert_section()`. To add a submenu, use
/// `g_menu_insert_submenu()`.
public protocol MenuProtocol: MenuModelProtocol {
    /// Untyped pointer to the underlying `GMenu` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GMenu` instance.
    var menu_ptr: UnsafeMutablePointer<GMenu> { get }
}

/// The `MenuRef` type acts as a lightweight Swift reference to an underlying `GMenu` instance.
/// It exposes methods that can operate on this data type through `MenuProtocol` conformance.
/// Use `MenuRef` only as an `unowned` reference to an existing `GMenu` instance.
///
/// `GMenu` is a simple implementation of `GMenuModel`.
/// You populate a `GMenu` by adding `GMenuItem` instances to it.
/// 
/// There are some convenience functions to allow you to directly
/// add items (avoiding `GMenuItem`) for the common cases. To add
/// a regular item, use `g_menu_insert()`. To add a section, use
/// `g_menu_insert_section()`. To add a submenu, use
/// `g_menu_insert_submenu()`.
public struct MenuRef: MenuProtocol {
    /// Untyped pointer to the underlying `GMenu` instance.
    /// For type-safe access, use the generated, typed pointer `menu_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MenuRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GMenu>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MenuProtocol`
    init<T: MenuProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GMenu`.
    /// 
    /// The new menu has no items.
    init() {
        let rv = g_menu_new()
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
}

/// The `Menu` type acts as a reference-counted owner of an underlying `GMenu` instance.
/// It provides the methods that can operate on this data type through `MenuProtocol` conformance.
/// Use `Menu` as a strong reference or owner of a `GMenu` instance.
///
/// `GMenu` is a simple implementation of `GMenuModel`.
/// You populate a `GMenu` by adding `GMenuItem` instances to it.
/// 
/// There are some convenience functions to allow you to directly
/// add items (avoiding `GMenuItem`) for the common cases. To add
/// a regular item, use `g_menu_insert()`. To add a section, use
/// `g_menu_insert_section()`. To add a submenu, use
/// `g_menu_insert_submenu()`.
open class Menu: MenuModel, MenuProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Menu` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GMenu>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GMenu`.
    /// i.e., ownership is transferred to the `Menu` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GMenu>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `MenuProtocol`
    /// Will retain `GMenu`.
    /// - Parameter other: an instance of a related type that implements `MenuProtocol`
    public init<T: MenuProtocol>(menu other: T) {
        super.init(retaining: cast(other.menu_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GMenu`.
    /// 
    /// The new menu has no items.
    public init() {
        let rv = g_menu_new()
        super.init(cast(rv))
    }


}

// MARK: - no Menu properties

public enum MenuSignalName: String, SignalNameProtocol {
    /// Emitted when a change has occured to the menu.
    /// 
    /// The only changes that can occur to a menu is that items are removed
    /// or added.  Items may not change (except by being removed and added
    /// back in the same location).  This signal is capable of describing
    /// both of those changes (at the same time).
    /// 
    /// The signal means that starting at the index `position`, `removed`
    /// items were removed and `added` items were added in their place.  If
    /// `removed` is zero then only items were added.  If `added` is zero
    /// then only items were removed.
    /// 
    /// As an example, if the menu contains items a, b, c, d (in that
    /// order) and the signal (2, 1, 3) occurs then the new composition of
    /// the menu will be a, b, _, _, _, d (with each _ representing some
    /// new item).
    /// 
    /// Signal handlers may query the model (particularly the added items)
    /// and expect to see the results of the modification that is being
    /// reported.  The signal is emitted after the modification.
    case itemsChanged = "items-changed"
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

public extension MenuProtocol {
    /// Connect a `MenuSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: MenuSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(menu_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension MenuProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMenu` instance.
    var menu_ptr: UnsafeMutablePointer<GMenu> { return ptr.assumingMemoryBound(to: GMenu.self) }

    /// Convenience function for appending a normal menu item to the end of
    /// `menu`.  Combine `g_menu_item_new()` and `g_menu_insert_item()` for a more
    /// flexible alternative.
    func append(label: UnsafePointer<gchar>, detailedAction detailed_action: UnsafePointer<gchar>) {
        g_menu_append(cast(menu_ptr), label, detailed_action)
    
    }

    /// Appends `item` to the end of `menu`.
    /// 
    /// See `g_menu_insert_item()` for more information.
    func append(item: MenuItemProtocol) {
        g_menu_append_item(cast(menu_ptr), cast(item.ptr))
    
    }

    /// Convenience function for appending a section menu item to the end of
    /// `menu`.  Combine `g_menu_item_new_section()` and `g_menu_insert_item()` for a
    /// more flexible alternative.
    func appendSection(label: UnsafePointer<gchar>, section: MenuModelProtocol) {
        g_menu_append_section(cast(menu_ptr), label, cast(section.ptr))
    
    }

    /// Convenience function for appending a submenu menu item to the end of
    /// `menu`.  Combine `g_menu_item_new_submenu()` and `g_menu_insert_item()` for a
    /// more flexible alternative.
    func appendSubmenu(label: UnsafePointer<gchar>, submenu: MenuModelProtocol) {
        g_menu_append_submenu(cast(menu_ptr), label, cast(submenu.ptr))
    
    }

    /// Marks `menu` as frozen.
    /// 
    /// After the menu is frozen, it is an error to attempt to make any
    /// changes to it.  In effect this means that the `GMenu` API must no
    /// longer be used.
    /// 
    /// This function causes `g_menu_model_is_mutable()` to begin returning
    /// `false`, which has some positive performance implications.
    func freeze() {
        g_menu_freeze(cast(menu_ptr))
    
    }

    /// Convenience function for inserting a normal menu item into `menu`.
    /// Combine `g_menu_item_new()` and `g_menu_insert_item()` for a more flexible
    /// alternative.
    func insert(position: CInt, label: UnsafePointer<gchar>, detailedAction detailed_action: UnsafePointer<gchar>) {
        g_menu_insert(cast(menu_ptr), gint(position), label, detailed_action)
    
    }

    /// Inserts `item` into `menu`.
    /// 
    /// The "insertion" is actually done by copying all of the attribute and
    /// link values of `item` and using them to form a new item within `menu`.
    /// As such, `item` itself is not really inserted, but rather, a menu item
    /// that is exactly the same as the one presently described by `item`.
    /// 
    /// This means that `item` is essentially useless after the insertion
    /// occurs.  Any changes you make to it are ignored unless it is inserted
    /// again (at which point its updated values will be copied).
    /// 
    /// You should probably just free `item` once you're done.
    /// 
    /// There are many convenience functions to take care of common cases.
    /// See `g_menu_insert()`, `g_menu_insert_section()` and
    /// `g_menu_insert_submenu()` as well as "prepend" and "append" variants of
    /// each of these functions.
    func insertItem(position: CInt, item: MenuItemProtocol) {
        g_menu_insert_item(cast(menu_ptr), gint(position), cast(item.ptr))
    
    }

    /// Convenience function for inserting a section menu item into `menu`.
    /// Combine `g_menu_item_new_section()` and `g_menu_insert_item()` for a more
    /// flexible alternative.
    func insertSection(position: CInt, label: UnsafePointer<gchar>, section: MenuModelProtocol) {
        g_menu_insert_section(cast(menu_ptr), gint(position), label, cast(section.ptr))
    
    }

    /// Convenience function for inserting a submenu menu item into `menu`.
    /// Combine `g_menu_item_new_submenu()` and `g_menu_insert_item()` for a more
    /// flexible alternative.
    func insertSubmenu(position: CInt, label: UnsafePointer<gchar>, submenu: MenuModelProtocol) {
        g_menu_insert_submenu(cast(menu_ptr), gint(position), label, cast(submenu.ptr))
    
    }

    /// Convenience function for prepending a normal menu item to the start
    /// of `menu`.  Combine `g_menu_item_new()` and `g_menu_insert_item()` for a more
    /// flexible alternative.
    func prepend(label: UnsafePointer<gchar>, detailedAction detailed_action: UnsafePointer<gchar>) {
        g_menu_prepend(cast(menu_ptr), label, detailed_action)
    
    }

    /// Prepends `item` to the start of `menu`.
    /// 
    /// See `g_menu_insert_item()` for more information.
    func prepend(item: MenuItemProtocol) {
        g_menu_prepend_item(cast(menu_ptr), cast(item.ptr))
    
    }

    /// Convenience function for prepending a section menu item to the start
    /// of `menu`.  Combine `g_menu_item_new_section()` and `g_menu_insert_item()` for
    /// a more flexible alternative.
    func prependSection(label: UnsafePointer<gchar>, section: MenuModelProtocol) {
        g_menu_prepend_section(cast(menu_ptr), label, cast(section.ptr))
    
    }

    /// Convenience function for prepending a submenu menu item to the start
    /// of `menu`.  Combine `g_menu_item_new_submenu()` and `g_menu_insert_item()` for
    /// a more flexible alternative.
    func prependSubmenu(label: UnsafePointer<gchar>, submenu: MenuModelProtocol) {
        g_menu_prepend_submenu(cast(menu_ptr), label, cast(submenu.ptr))
    
    }

    /// Removes an item from the menu.
    /// 
    /// `position` gives the index of the item to remove.
    /// 
    /// It is an error if position is not in range the range from 0 to one
    /// less than the number of items in the menu.
    /// 
    /// It is not possible to remove items by identity since items are added
    /// to the menu simply by copying their links and attributes (ie:
    /// identity of the item itself is not preserved).
    func remove(position: CInt) {
        g_menu_remove(cast(menu_ptr), gint(position))
    
    }

    /// Removes all items in the menu.
    func removeAll() {
        g_menu_remove_all(cast(menu_ptr))
    
    }
}



// MARK: - MenuAttributeIter Class

/// The `MenuAttributeIterProtocol` protocol exposes the methods and properties of an underlying `GMenuAttributeIter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuAttributeIter`.
/// Alternatively, use `MenuAttributeIterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GMenuAttributeIter` is an opaque structure type.  You must access it
/// using the functions below.
public protocol MenuAttributeIterProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `GMenuAttributeIter` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GMenuAttributeIter` instance.
    var menu_attribute_iter_ptr: UnsafeMutablePointer<GMenuAttributeIter> { get }
}

/// The `MenuAttributeIterRef` type acts as a lightweight Swift reference to an underlying `GMenuAttributeIter` instance.
/// It exposes methods that can operate on this data type through `MenuAttributeIterProtocol` conformance.
/// Use `MenuAttributeIterRef` only as an `unowned` reference to an existing `GMenuAttributeIter` instance.
///
/// `GMenuAttributeIter` is an opaque structure type.  You must access it
/// using the functions below.
public struct MenuAttributeIterRef: MenuAttributeIterProtocol {
    /// Untyped pointer to the underlying `GMenuAttributeIter` instance.
    /// For type-safe access, use the generated, typed pointer `menu_attribute_iter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MenuAttributeIterRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GMenuAttributeIter>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MenuAttributeIterProtocol`
    init<T: MenuAttributeIterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MenuAttributeIter` type acts as a reference-counted owner of an underlying `GMenuAttributeIter` instance.
/// It provides the methods that can operate on this data type through `MenuAttributeIterProtocol` conformance.
/// Use `MenuAttributeIter` as a strong reference or owner of a `GMenuAttributeIter` instance.
///
/// `GMenuAttributeIter` is an opaque structure type.  You must access it
/// using the functions below.
open class MenuAttributeIter: Object, MenuAttributeIterProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuAttributeIter` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GMenuAttributeIter>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GMenuAttributeIter`.
    /// i.e., ownership is transferred to the `MenuAttributeIter` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GMenuAttributeIter>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `MenuAttributeIterProtocol`
    /// Will retain `GMenuAttributeIter`.
    /// - Parameter other: an instance of a related type that implements `MenuAttributeIterProtocol`
    public init<T: MenuAttributeIterProtocol>(menuAttributeIter other: T) {
        super.init(retaining: cast(other.menu_attribute_iter_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: - no MenuAttributeIter properties

public enum MenuAttributeIterSignalName: String, SignalNameProtocol {
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

public extension MenuAttributeIterProtocol {
    /// Connect a `MenuAttributeIterSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: MenuAttributeIterSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(menu_attribute_iter_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension MenuAttributeIterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMenuAttributeIter` instance.
    var menu_attribute_iter_ptr: UnsafeMutablePointer<GMenuAttributeIter> { return ptr.assumingMemoryBound(to: GMenuAttributeIter.self) }

    /// Gets the name of the attribute at the current iterator position, as
    /// a string.
    /// 
    /// The iterator is not advanced.
    func getName() -> String! {
        let rv = g_menu_attribute_iter_get_name(cast(menu_attribute_iter_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// This function combines `g_menu_attribute_iter_next()` with
    /// `g_menu_attribute_iter_get_name()` and `g_menu_attribute_iter_get_value()`.
    /// 
    /// First the iterator is advanced to the next (possibly first) attribute.
    /// If that fails, then `false` is returned and there are no other
    /// effects.
    /// 
    /// If successful, `name` and `value` are set to the name and value of the
    /// attribute that has just been advanced to.  At this point,
    /// `g_menu_attribute_iter_get_name()` and `g_menu_attribute_iter_get_value()` will
    /// return the same values again.
    /// 
    /// The value returned in `name` remains valid for as long as the iterator
    /// remains at the current position.  The value returned in `value` must
    /// be unreffed using `g_variant_unref()` when it is no longer in use.
    func getNext(outName out_name: UnsafePointer<UnsafePointer<gchar>>, value: VariantProtocol) -> Bool {
        let rv = g_menu_attribute_iter_get_next(cast(menu_attribute_iter_ptr), cast(out_name), cast(value.ptr))
        return Bool(rv != 0)
    }

    /// Gets the value of the attribute at the current iterator position.
    /// 
    /// The iterator is not advanced.
    func getValue() -> UnsafeMutablePointer<GVariant>! {
        let rv = g_menu_attribute_iter_get_value(cast(menu_attribute_iter_ptr))
        return cast(rv)
    }

    /// Attempts to advance the iterator to the next (possibly first)
    /// attribute.
    /// 
    /// `true` is returned on success, or `false` if there are no more
    /// attributes.
    /// 
    /// You must call this function when you first acquire the iterator
    /// to advance it to the first attribute (and determine if the first
    /// attribute exists at all).
    func next() -> Bool {
        let rv = g_menu_attribute_iter_next(cast(menu_attribute_iter_ptr))
        return Bool(rv != 0)
    }
    /// Gets the name of the attribute at the current iterator position, as
    /// a string.
    /// 
    /// The iterator is not advanced.
    var name: String! {
        /// Gets the name of the attribute at the current iterator position, as
        /// a string.
        /// 
        /// The iterator is not advanced.
        get {
            let rv = g_menu_attribute_iter_get_name(cast(menu_attribute_iter_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the value of the attribute at the current iterator position.
    /// 
    /// The iterator is not advanced.
    var value: UnsafeMutablePointer<GVariant>! {
        /// Gets the value of the attribute at the current iterator position.
        /// 
        /// The iterator is not advanced.
        get {
            let rv = g_menu_attribute_iter_get_value(cast(menu_attribute_iter_ptr))
            return cast(rv)
        }
    }
}



// MARK: - MenuItem Class

/// The `MenuItemProtocol` protocol exposes the methods and properties of an underlying `GMenuItem` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuItem`.
/// Alternatively, use `MenuItemRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GMenuItem` is an opaque structure type.  You must access it using the
/// functions below.
public protocol MenuItemProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `GMenuItem` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GMenuItem` instance.
    var menu_item_ptr: UnsafeMutablePointer<GMenuItem> { get }
}

/// The `MenuItemRef` type acts as a lightweight Swift reference to an underlying `GMenuItem` instance.
/// It exposes methods that can operate on this data type through `MenuItemProtocol` conformance.
/// Use `MenuItemRef` only as an `unowned` reference to an existing `GMenuItem` instance.
///
/// `GMenuItem` is an opaque structure type.  You must access it using the
/// functions below.
public struct MenuItemRef: MenuItemProtocol {
    /// Untyped pointer to the underlying `GMenuItem` instance.
    /// For type-safe access, use the generated, typed pointer `menu_item_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MenuItemRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GMenuItem>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MenuItemProtocol`
    init<T: MenuItemProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GMenuItem`.
    /// 
    /// If `label` is non-`nil` it is used to set the "label" attribute of the
    /// new item.
    /// 
    /// If `detailed_action` is non-`nil` it is used to set the "action" and
    /// possibly the "target" attribute of the new item.  See
    /// `g_menu_item_set_detailed_action()` for more information.
    init( label: UnsafePointer<gchar>, detailedAction detailed_action: UnsafePointer<gchar>) {
        let rv = g_menu_item_new(label, detailed_action)
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// Creates a `GMenuItem` as an exact copy of an existing menu item in a
    /// `GMenuModel`.
    /// 
    /// `item_index` must be valid (ie: be sure to call
    /// `g_menu_model_get_n_items()` first).
    init(model: MenuModelProtocol, itemIndex item_index: CInt) {
        let rv = g_menu_item_new_from_model(cast(model.ptr), gint(item_index))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// Creates a new `GMenuItem` representing a section.
    /// 
    /// This is a convenience API around `g_menu_item_new()` and
    /// `g_menu_item_set_section()`.
    /// 
    /// The effect of having one menu appear as a section of another is
    /// exactly as it sounds: the items from `section` become a direct part of
    /// the menu that `menu_item` is added to.
    /// 
    /// Visual separation is typically displayed between two non-empty
    /// sections.  If `label` is non-`nil` then it will be encorporated into
    /// this visual indication.  This allows for labeled subsections of a
    /// menu.
    /// 
    /// As a simple example, consider a typical "Edit" menu from a simple
    /// program.  It probably contains an "Undo" and "Redo" item, followed by
    /// a separator, followed by "Cut", "Copy" and "Paste".
    /// 
    /// This would be accomplished by creating three `GMenu` instances.  The
    /// first would be populated with the "Undo" and "Redo" items, and the
    /// second with the "Cut", "Copy" and "Paste" items.  The first and
    /// second menus would then be added as submenus of the third.  In XML
    /// format, this would look something like the following:
    /// ```
    /// <menu id='edit-menu'>
    ///   <section>
    ///     <item label='Undo'/>
    ///     <item label='Redo'/>
    ///   </section>
    ///   <section>
    ///     <item label='Cut'/>
    ///     <item label='Copy'/>
    ///     <item label='Paste'/>
    ///   </section>
    /// </menu>
    /// ```
    /// 
    /// The following example is exactly equivalent.  It is more illustrative
    /// of the exact relationship between the menus and items (keeping in
    /// mind that the 'link' element defines a new menu that is linked to the
    /// containing one).  The style of the second example is more verbose and
    /// difficult to read (and therefore not recommended except for the
    /// purpose of understanding what is really going on).
    /// ```
    /// <menu id='edit-menu'>
    ///   <item>
    ///     <link name='section'>
    ///       <item label='Undo'/>
    ///       <item label='Redo'/>
    ///     </link>
    ///   </item>
    ///   <item>
    ///     <link name='section'>
    ///       <item label='Cut'/>
    ///       <item label='Copy'/>
    ///       <item label='Paste'/>
    ///     </link>
    ///   </item>
    /// </menu>
    /// ```
    /// 
    init(section label: UnsafePointer<gchar>, section: MenuModelProtocol) {
        let rv = g_menu_item_new_section(label, cast(section.ptr))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// Creates a new `GMenuItem` representing a submenu.
    /// 
    /// This is a convenience API around `g_menu_item_new()` and
    /// `g_menu_item_set_submenu()`.
    init(submenu label: UnsafePointer<gchar>, submenu: MenuModelProtocol) {
        let rv = g_menu_item_new_submenu(label, cast(submenu.ptr))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
    /// Creates a `GMenuItem` as an exact copy of an existing menu item in a
    /// `GMenuModel`.
    /// 
    /// `item_index` must be valid (ie: be sure to call
    /// `g_menu_model_get_n_items()` first).
    static func newFrom(model: MenuModelProtocol, itemIndex item_index: CInt) -> MenuItemRef! {
        let rv = g_menu_item_new_from_model(cast(model.ptr), gint(item_index))
        return rv.map { MenuItemRef(cast($0)) }
    }

    /// Creates a new `GMenuItem` representing a section.
    /// 
    /// This is a convenience API around `g_menu_item_new()` and
    /// `g_menu_item_set_section()`.
    /// 
    /// The effect of having one menu appear as a section of another is
    /// exactly as it sounds: the items from `section` become a direct part of
    /// the menu that `menu_item` is added to.
    /// 
    /// Visual separation is typically displayed between two non-empty
    /// sections.  If `label` is non-`nil` then it will be encorporated into
    /// this visual indication.  This allows for labeled subsections of a
    /// menu.
    /// 
    /// As a simple example, consider a typical "Edit" menu from a simple
    /// program.  It probably contains an "Undo" and "Redo" item, followed by
    /// a separator, followed by "Cut", "Copy" and "Paste".
    /// 
    /// This would be accomplished by creating three `GMenu` instances.  The
    /// first would be populated with the "Undo" and "Redo" items, and the
    /// second with the "Cut", "Copy" and "Paste" items.  The first and
    /// second menus would then be added as submenus of the third.  In XML
    /// format, this would look something like the following:
    /// ```
    /// <menu id='edit-menu'>
    ///   <section>
    ///     <item label='Undo'/>
    ///     <item label='Redo'/>
    ///   </section>
    ///   <section>
    ///     <item label='Cut'/>
    ///     <item label='Copy'/>
    ///     <item label='Paste'/>
    ///   </section>
    /// </menu>
    /// ```
    /// 
    /// The following example is exactly equivalent.  It is more illustrative
    /// of the exact relationship between the menus and items (keeping in
    /// mind that the 'link' element defines a new menu that is linked to the
    /// containing one).  The style of the second example is more verbose and
    /// difficult to read (and therefore not recommended except for the
    /// purpose of understanding what is really going on).
    /// ```
    /// <menu id='edit-menu'>
    ///   <item>
    ///     <link name='section'>
    ///       <item label='Undo'/>
    ///       <item label='Redo'/>
    ///     </link>
    ///   </item>
    ///   <item>
    ///     <link name='section'>
    ///       <item label='Cut'/>
    ///       <item label='Copy'/>
    ///       <item label='Paste'/>
    ///     </link>
    ///   </item>
    /// </menu>
    /// ```
    /// 
    static func new(section label: UnsafePointer<gchar>, section: MenuModelProtocol) -> MenuItemRef! {
        let rv = g_menu_item_new_section(label, cast(section.ptr))
        return rv.map { MenuItemRef(cast($0)) }
    }

    /// Creates a new `GMenuItem` representing a submenu.
    /// 
    /// This is a convenience API around `g_menu_item_new()` and
    /// `g_menu_item_set_submenu()`.
    static func new(submenu label: UnsafePointer<gchar>, submenu: MenuModelProtocol) -> MenuItemRef! {
        let rv = g_menu_item_new_submenu(label, cast(submenu.ptr))
        return rv.map { MenuItemRef(cast($0)) }
    }
}

/// The `MenuItem` type acts as a reference-counted owner of an underlying `GMenuItem` instance.
/// It provides the methods that can operate on this data type through `MenuItemProtocol` conformance.
/// Use `MenuItem` as a strong reference or owner of a `GMenuItem` instance.
///
/// `GMenuItem` is an opaque structure type.  You must access it using the
/// functions below.
open class MenuItem: Object, MenuItemProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuItem` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GMenuItem>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GMenuItem`.
    /// i.e., ownership is transferred to the `MenuItem` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GMenuItem>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `MenuItemProtocol`
    /// Will retain `GMenuItem`.
    /// - Parameter other: an instance of a related type that implements `MenuItemProtocol`
    public init<T: MenuItemProtocol>(menuItem other: T) {
        super.init(retaining: cast(other.menu_item_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GMenuItem`.
    /// 
    /// If `label` is non-`nil` it is used to set the "label" attribute of the
    /// new item.
    /// 
    /// If `detailed_action` is non-`nil` it is used to set the "action" and
    /// possibly the "target" attribute of the new item.  See
    /// `g_menu_item_set_detailed_action()` for more information.
    public init( label: UnsafePointer<gchar>, detailedAction detailed_action: UnsafePointer<gchar>) {
        let rv = g_menu_item_new(label, detailed_action)
        super.init(cast(rv))
    }

    /// Creates a `GMenuItem` as an exact copy of an existing menu item in a
    /// `GMenuModel`.
    /// 
    /// `item_index` must be valid (ie: be sure to call
    /// `g_menu_model_get_n_items()` first).
    public init(model: MenuModelProtocol, itemIndex item_index: CInt) {
        let rv = g_menu_item_new_from_model(cast(model.ptr), gint(item_index))
        super.init(cast(rv))
    }

    /// Creates a new `GMenuItem` representing a section.
    /// 
    /// This is a convenience API around `g_menu_item_new()` and
    /// `g_menu_item_set_section()`.
    /// 
    /// The effect of having one menu appear as a section of another is
    /// exactly as it sounds: the items from `section` become a direct part of
    /// the menu that `menu_item` is added to.
    /// 
    /// Visual separation is typically displayed between two non-empty
    /// sections.  If `label` is non-`nil` then it will be encorporated into
    /// this visual indication.  This allows for labeled subsections of a
    /// menu.
    /// 
    /// As a simple example, consider a typical "Edit" menu from a simple
    /// program.  It probably contains an "Undo" and "Redo" item, followed by
    /// a separator, followed by "Cut", "Copy" and "Paste".
    /// 
    /// This would be accomplished by creating three `GMenu` instances.  The
    /// first would be populated with the "Undo" and "Redo" items, and the
    /// second with the "Cut", "Copy" and "Paste" items.  The first and
    /// second menus would then be added as submenus of the third.  In XML
    /// format, this would look something like the following:
    /// ```
    /// <menu id='edit-menu'>
    ///   <section>
    ///     <item label='Undo'/>
    ///     <item label='Redo'/>
    ///   </section>
    ///   <section>
    ///     <item label='Cut'/>
    ///     <item label='Copy'/>
    ///     <item label='Paste'/>
    ///   </section>
    /// </menu>
    /// ```
    /// 
    /// The following example is exactly equivalent.  It is more illustrative
    /// of the exact relationship between the menus and items (keeping in
    /// mind that the 'link' element defines a new menu that is linked to the
    /// containing one).  The style of the second example is more verbose and
    /// difficult to read (and therefore not recommended except for the
    /// purpose of understanding what is really going on).
    /// ```
    /// <menu id='edit-menu'>
    ///   <item>
    ///     <link name='section'>
    ///       <item label='Undo'/>
    ///       <item label='Redo'/>
    ///     </link>
    ///   </item>
    ///   <item>
    ///     <link name='section'>
    ///       <item label='Cut'/>
    ///       <item label='Copy'/>
    ///       <item label='Paste'/>
    ///     </link>
    ///   </item>
    /// </menu>
    /// ```
    /// 
    public init(section label: UnsafePointer<gchar>, section: MenuModelProtocol) {
        let rv = g_menu_item_new_section(label, cast(section.ptr))
        super.init(cast(rv))
    }

    /// Creates a new `GMenuItem` representing a submenu.
    /// 
    /// This is a convenience API around `g_menu_item_new()` and
    /// `g_menu_item_set_submenu()`.
    public init(submenu label: UnsafePointer<gchar>, submenu: MenuModelProtocol) {
        let rv = g_menu_item_new_submenu(label, cast(submenu.ptr))
        super.init(cast(rv))
    }

    /// Creates a `GMenuItem` as an exact copy of an existing menu item in a
    /// `GMenuModel`.
    /// 
    /// `item_index` must be valid (ie: be sure to call
    /// `g_menu_model_get_n_items()` first).
    public static func newFrom(model: MenuModelProtocol, itemIndex item_index: CInt) -> MenuItem! {
        let rv = g_menu_item_new_from_model(cast(model.ptr), gint(item_index))
        return rv.map { MenuItem(cast($0)) }
    }

    /// Creates a new `GMenuItem` representing a section.
    /// 
    /// This is a convenience API around `g_menu_item_new()` and
    /// `g_menu_item_set_section()`.
    /// 
    /// The effect of having one menu appear as a section of another is
    /// exactly as it sounds: the items from `section` become a direct part of
    /// the menu that `menu_item` is added to.
    /// 
    /// Visual separation is typically displayed between two non-empty
    /// sections.  If `label` is non-`nil` then it will be encorporated into
    /// this visual indication.  This allows for labeled subsections of a
    /// menu.
    /// 
    /// As a simple example, consider a typical "Edit" menu from a simple
    /// program.  It probably contains an "Undo" and "Redo" item, followed by
    /// a separator, followed by "Cut", "Copy" and "Paste".
    /// 
    /// This would be accomplished by creating three `GMenu` instances.  The
    /// first would be populated with the "Undo" and "Redo" items, and the
    /// second with the "Cut", "Copy" and "Paste" items.  The first and
    /// second menus would then be added as submenus of the third.  In XML
    /// format, this would look something like the following:
    /// ```
    /// <menu id='edit-menu'>
    ///   <section>
    ///     <item label='Undo'/>
    ///     <item label='Redo'/>
    ///   </section>
    ///   <section>
    ///     <item label='Cut'/>
    ///     <item label='Copy'/>
    ///     <item label='Paste'/>
    ///   </section>
    /// </menu>
    /// ```
    /// 
    /// The following example is exactly equivalent.  It is more illustrative
    /// of the exact relationship between the menus and items (keeping in
    /// mind that the 'link' element defines a new menu that is linked to the
    /// containing one).  The style of the second example is more verbose and
    /// difficult to read (and therefore not recommended except for the
    /// purpose of understanding what is really going on).
    /// ```
    /// <menu id='edit-menu'>
    ///   <item>
    ///     <link name='section'>
    ///       <item label='Undo'/>
    ///       <item label='Redo'/>
    ///     </link>
    ///   </item>
    ///   <item>
    ///     <link name='section'>
    ///       <item label='Cut'/>
    ///       <item label='Copy'/>
    ///       <item label='Paste'/>
    ///     </link>
    ///   </item>
    /// </menu>
    /// ```
    /// 
    public static func new(section label: UnsafePointer<gchar>, section: MenuModelProtocol) -> MenuItem! {
        let rv = g_menu_item_new_section(label, cast(section.ptr))
        return rv.map { MenuItem(cast($0)) }
    }

    /// Creates a new `GMenuItem` representing a submenu.
    /// 
    /// This is a convenience API around `g_menu_item_new()` and
    /// `g_menu_item_set_submenu()`.
    public static func new(submenu label: UnsafePointer<gchar>, submenu: MenuModelProtocol) -> MenuItem! {
        let rv = g_menu_item_new_submenu(label, cast(submenu.ptr))
        return rv.map { MenuItem(cast($0)) }
    }

}

// MARK: - no MenuItem properties

public enum MenuItemSignalName: String, SignalNameProtocol {
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

public extension MenuItemProtocol {
    /// Connect a `MenuItemSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: MenuItemSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(menu_item_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension MenuItemProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMenuItem` instance.
    var menu_item_ptr: UnsafeMutablePointer<GMenuItem> { return ptr.assumingMemoryBound(to: GMenuItem.self) }


    // *** getAttribute() is not available because it has a varargs (...) parameter!


    /// Queries the named `attribute` on `menu_item`.
    /// 
    /// If `expected_type` is specified and the attribute does not have this
    /// type, `nil` is returned.  `nil` is also returned if the attribute
    /// simply does not exist.
    func getAttributeValue(attribute: UnsafePointer<gchar>, expectedType expected_type: VariantTypeProtocol) -> UnsafeMutablePointer<GVariant>! {
        let rv = g_menu_item_get_attribute_value(cast(menu_item_ptr), attribute, cast(expected_type.ptr))
        return cast(rv)
    }

    /// Queries the named `link` on `menu_item`.
    func get(link: UnsafePointer<gchar>) -> UnsafeMutablePointer<GMenuModel>! {
        let rv = g_menu_item_get_link(cast(menu_item_ptr), link)
        return cast(rv)
    }


    // *** setActionAndTarget() is not available because it has a varargs (...) parameter!


    /// Sets or unsets the "action" and "target" attributes of `menu_item`.
    /// 
    /// If `action` is `nil` then both the "action" and "target" attributes
    /// are unset (and `target_value` is ignored).
    /// 
    /// If `action` is non-`nil` then the "action" attribute is set.  The
    /// "target" attribute is then set to the value of `target_value` if it is
    /// non-`nil` or unset otherwise.
    /// 
    /// Normal menu items (ie: not submenu, section or other custom item
    /// types) are expected to have the "action" attribute set to identify
    /// the action that they are associated with.  The state type of the
    /// action help to determine the disposition of the menu item.  See
    /// `GAction` and `GActionGroup` for an overview of actions.
    /// 
    /// In general, clicking on the menu item will result in activation of
    /// the named action with the "target" attribute given as the parameter
    /// to the action invocation.  If the "target" attribute is not set then
    /// the action is invoked with no parameter.
    /// 
    /// If the action has no state then the menu item is usually drawn as a
    /// plain menu item (ie: with no additional decoration).
    /// 
    /// If the action has a boolean state then the menu item is usually drawn
    /// as a toggle menu item (ie: with a checkmark or equivalent
    /// indication).  The item should be marked as 'toggled' or 'checked'
    /// when the boolean state is `true`.
    /// 
    /// If the action has a string state then the menu item is usually drawn
    /// as a radio menu item (ie: with a radio bullet or equivalent
    /// indication).  The item should be marked as 'selected' when the string
    /// state is equal to the value of the `target` property.
    /// 
    /// See `g_menu_item_set_action_and_target()` or
    /// `g_menu_item_set_detailed_action()` for two equivalent calls that are
    /// probably more convenient for most uses.
    func setActionAndTargetValue(action: UnsafePointer<gchar>, targetValue target_value: VariantProtocol) {
        g_menu_item_set_action_and_target_value(cast(menu_item_ptr), action, cast(target_value.ptr))
    
    }


    // *** setAttribute() is not available because it has a varargs (...) parameter!


    /// Sets or unsets an attribute on `menu_item`.
    /// 
    /// The attribute to set or unset is specified by `attribute`. This
    /// can be one of the standard attribute names `G_MENU_ATTRIBUTE_LABEL`,
    /// `G_MENU_ATTRIBUTE_ACTION`, `G_MENU_ATTRIBUTE_TARGET`, or a custom
    /// attribute name.
    /// Attribute names are restricted to lowercase characters, numbers
    /// and '-'. Furthermore, the names must begin with a lowercase character,
    /// must not end with a '-', and must not contain consecutive dashes.
    /// 
    /// must consist only of lowercase
    /// ASCII characters, digits and '-'.
    /// 
    /// If `value` is non-`nil` then it is used as the new value for the
    /// attribute.  If `value` is `nil` then the attribute is unset. If
    /// the `value` `GVariant` is floating, it is consumed.
    /// 
    /// See also `g_menu_item_set_attribute()` for a more convenient way to do
    /// the same.
    func setAttributeValue(attribute: UnsafePointer<gchar>, value: VariantProtocol) {
        g_menu_item_set_attribute_value(cast(menu_item_ptr), attribute, cast(value.ptr))
    
    }

    /// Sets the "action" and possibly the "target" attribute of `menu_item`.
    /// 
    /// The format of `detailed_action` is the same format parsed by
    /// `g_action_parse_detailed_name()`.
    /// 
    /// See `g_menu_item_set_action_and_target()` or
    /// `g_menu_item_set_action_and_target_value()` for more flexible (but
    /// slightly less convenient) alternatives.
    /// 
    /// See also `g_menu_item_set_action_and_target_value()` for a description of
    /// the semantics of the action and target attributes.
    func set(detailedAction detailed_action: UnsafePointer<gchar>) {
        g_menu_item_set_detailed_action(cast(menu_item_ptr), detailed_action)
    
    }

    /// Sets (or unsets) the icon on `menu_item`.
    /// 
    /// This call is the same as calling `g_icon_serialize()` and using the
    /// result as the value to `g_menu_item_set_attribute_value()` for
    /// `G_MENU_ATTRIBUTE_ICON`.
    /// 
    /// This API is only intended for use with "noun" menu items; things like
    /// bookmarks or applications in an "Open With" menu.  Don't use it on
    /// menu items corresponding to verbs (eg: stock icons for 'Save' or
    /// 'Quit').
    /// 
    /// If `icon` is `nil` then the icon is unset.
    func set(icon: IconProtocol) {
        g_menu_item_set_icon(cast(menu_item_ptr), cast(icon.ptr))
    
    }

    /// Sets or unsets the "label" attribute of `menu_item`.
    /// 
    /// If `label` is non-`nil` it is used as the label for the menu item.  If
    /// it is `nil` then the label attribute is unset.
    func set(label: UnsafePointer<gchar>) {
        g_menu_item_set_label(cast(menu_item_ptr), label)
    
    }

    /// Creates a link from `menu_item` to `model` if non-`nil`, or unsets it.
    /// 
    /// Links are used to establish a relationship between a particular menu
    /// item and another menu.  For example, `G_MENU_LINK_SUBMENU` is used to
    /// associate a submenu with a particular menu item, and `G_MENU_LINK_SECTION`
    /// is used to create a section. Other types of link can be used, but there
    /// is no guarantee that clients will be able to make sense of them.
    /// Link types are restricted to lowercase characters, numbers
    /// and '-'. Furthermore, the names must begin with a lowercase character,
    /// must not end with a '-', and must not contain consecutive dashes.
    func set(link: UnsafePointer<gchar>, model: MenuModelProtocol) {
        g_menu_item_set_link(cast(menu_item_ptr), link, cast(model.ptr))
    
    }

    /// Sets or unsets the "section" link of `menu_item` to `section`.
    /// 
    /// The effect of having one menu appear as a section of another is
    /// exactly as it sounds: the items from `section` become a direct part of
    /// the menu that `menu_item` is added to.  See `g_menu_item_new_section()`
    /// for more information about what it means for a menu item to be a
    /// section.
    func set(section: MenuModelProtocol) {
        g_menu_item_set_section(cast(menu_item_ptr), cast(section.ptr))
    
    }

    /// Sets or unsets the "submenu" link of `menu_item` to `submenu`.
    /// 
    /// If `submenu` is non-`nil`, it is linked to.  If it is `nil` then the
    /// link is unset.
    /// 
    /// The effect of having one menu appear as a submenu of another is
    /// exactly as it sounds.
    func set(submenu: MenuModelProtocol) {
        g_menu_item_set_submenu(cast(menu_item_ptr), cast(submenu.ptr))
    
    }
}



// MARK: - MenuLinkIter Class

/// The `MenuLinkIterProtocol` protocol exposes the methods and properties of an underlying `GMenuLinkIter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuLinkIter`.
/// Alternatively, use `MenuLinkIterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GMenuLinkIter` is an opaque structure type.  You must access it using
/// the functions below.
public protocol MenuLinkIterProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `GMenuLinkIter` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GMenuLinkIter` instance.
    var menu_link_iter_ptr: UnsafeMutablePointer<GMenuLinkIter> { get }
}

/// The `MenuLinkIterRef` type acts as a lightweight Swift reference to an underlying `GMenuLinkIter` instance.
/// It exposes methods that can operate on this data type through `MenuLinkIterProtocol` conformance.
/// Use `MenuLinkIterRef` only as an `unowned` reference to an existing `GMenuLinkIter` instance.
///
/// `GMenuLinkIter` is an opaque structure type.  You must access it using
/// the functions below.
public struct MenuLinkIterRef: MenuLinkIterProtocol {
    /// Untyped pointer to the underlying `GMenuLinkIter` instance.
    /// For type-safe access, use the generated, typed pointer `menu_link_iter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MenuLinkIterRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GMenuLinkIter>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MenuLinkIterProtocol`
    init<T: MenuLinkIterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MenuLinkIter` type acts as a reference-counted owner of an underlying `GMenuLinkIter` instance.
/// It provides the methods that can operate on this data type through `MenuLinkIterProtocol` conformance.
/// Use `MenuLinkIter` as a strong reference or owner of a `GMenuLinkIter` instance.
///
/// `GMenuLinkIter` is an opaque structure type.  You must access it using
/// the functions below.
open class MenuLinkIter: Object, MenuLinkIterProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuLinkIter` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GMenuLinkIter>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GMenuLinkIter`.
    /// i.e., ownership is transferred to the `MenuLinkIter` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GMenuLinkIter>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `MenuLinkIterProtocol`
    /// Will retain `GMenuLinkIter`.
    /// - Parameter other: an instance of a related type that implements `MenuLinkIterProtocol`
    public init<T: MenuLinkIterProtocol>(menuLinkIter other: T) {
        super.init(retaining: cast(other.menu_link_iter_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: - no MenuLinkIter properties

public enum MenuLinkIterSignalName: String, SignalNameProtocol {
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

public extension MenuLinkIterProtocol {
    /// Connect a `MenuLinkIterSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: MenuLinkIterSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(menu_link_iter_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension MenuLinkIterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMenuLinkIter` instance.
    var menu_link_iter_ptr: UnsafeMutablePointer<GMenuLinkIter> { return ptr.assumingMemoryBound(to: GMenuLinkIter.self) }

    /// Gets the name of the link at the current iterator position.
    /// 
    /// The iterator is not advanced.
    func getName() -> String! {
        let rv = g_menu_link_iter_get_name(cast(menu_link_iter_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// This function combines `g_menu_link_iter_next()` with
    /// `g_menu_link_iter_get_name()` and `g_menu_link_iter_get_value()`.
    /// 
    /// First the iterator is advanced to the next (possibly first) link.
    /// If that fails, then `false` is returned and there are no other effects.
    /// 
    /// If successful, `out_link` and `value` are set to the name and `GMenuModel`
    /// of the link that has just been advanced to.  At this point,
    /// `g_menu_link_iter_get_name()` and `g_menu_link_iter_get_value()` will return the
    /// same values again.
    /// 
    /// The value returned in `out_link` remains valid for as long as the iterator
    /// remains at the current position.  The value returned in `value` must
    /// be unreffed using `g_object_unref()` when it is no longer in use.
    func getNext(outLink out_link: UnsafePointer<UnsafePointer<gchar>>, value: MenuModelProtocol) -> Bool {
        let rv = g_menu_link_iter_get_next(cast(menu_link_iter_ptr), cast(out_link), cast(value.ptr))
        return Bool(rv != 0)
    }

    /// Gets the linked `GMenuModel` at the current iterator position.
    /// 
    /// The iterator is not advanced.
    func getValue() -> UnsafeMutablePointer<GMenuModel>! {
        let rv = g_menu_link_iter_get_value(cast(menu_link_iter_ptr))
        return cast(rv)
    }

    /// Attempts to advance the iterator to the next (possibly first)
    /// link.
    /// 
    /// `true` is returned on success, or `false` if there are no more links.
    /// 
    /// You must call this function when you first acquire the iterator to
    /// advance it to the first link (and determine if the first link exists
    /// at all).
    func next() -> Bool {
        let rv = g_menu_link_iter_next(cast(menu_link_iter_ptr))
        return Bool(rv != 0)
    }
    /// Gets the name of the link at the current iterator position.
    /// 
    /// The iterator is not advanced.
    var name: String! {
        /// Gets the name of the link at the current iterator position.
        /// 
        /// The iterator is not advanced.
        get {
            let rv = g_menu_link_iter_get_name(cast(menu_link_iter_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the linked `GMenuModel` at the current iterator position.
    /// 
    /// The iterator is not advanced.
    var value: UnsafeMutablePointer<GMenuModel>! {
        /// Gets the linked `GMenuModel` at the current iterator position.
        /// 
        /// The iterator is not advanced.
        get {
            let rv = g_menu_link_iter_get_value(cast(menu_link_iter_ptr))
            return cast(rv)
        }
    }
}



// MARK: - MenuModel Class

/// The `MenuModelProtocol` protocol exposes the methods and properties of an underlying `GMenuModel` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuModel`.
/// Alternatively, use `MenuModelRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GMenuModel` represents the contents of a menu -- an ordered list of
/// menu items. The items are associated with actions, which can be
/// activated through them. Items can be grouped in sections, and may
/// have submenus associated with them. Both items and sections usually
/// have some representation data, such as labels or icons. The type of
/// the associated action (ie whether it is stateful, and what kind of
/// state it has) can influence the representation of the item.
/// 
/// The conceptual model of menus in `GMenuModel` is hierarchical:
/// sections and submenus are again represented by `GMenuModels`.
/// Menus themselves do not define their own roles. Rather, the role
/// of a particular `GMenuModel` is defined by the item that references
/// it (or, in the case of the 'root' menu, is defined by the context
/// in which it is used).
/// 
/// As an example, consider the visible portions of this menu:
/// 
/// ## An example menu # <a name="menu-example"></a>
/// 
/// ![](menu-example.png)
/// 
/// There are 8 "menus" visible in the screenshot: one menubar, two
/// submenus and 5 sections:
/// 
/// - the toplevel menubar (containing 4 items)
/// - the View submenu (containing 3 sections)
/// - the first section of the View submenu (containing 2 items)
/// - the second section of the View submenu (containing 1 item)
/// - the final section of the View submenu (containing 1 item)
/// - the Highlight Mode submenu (containing 2 sections)
/// - the Sources section (containing 2 items)
/// - the Markup section (containing 2 items)
/// 
/// The [example](#menu-model) illustrates the conceptual connection between
/// these 8 menus. Each large block in the figure represents a menu and the
/// smaller blocks within the large block represent items in that menu. Some
/// items contain references to other menus.
/// 
/// ## A menu example # <a name="menu-model"></a>
/// 
/// ![](menu-model.png)
/// 
/// Notice that the separators visible in the [example](#menu-example)
/// appear nowhere in the [menu model](#menu-model). This is because
/// separators are not explicitly represented in the menu model. Instead,
/// a separator is inserted between any two non-empty sections of a menu.
/// Section items can have labels just like any other item. In that case,
/// a display system may show a section header instead of a separator.
/// 
/// The motivation for this abstract model of application controls is
/// that modern user interfaces tend to make these controls available
/// outside the application. Examples include global menus, jumplists,
/// dash boards, etc. To support such uses, it is necessary to 'export'
/// information about actions and their representation in menus, which
/// is exactly what the [GActionGroup exporter](#gio-GActionGroup-exporter)
/// and the [GMenuModel exporter](#gio-GMenuModel-exporter) do for
/// `GActionGroup` and `GMenuModel`. The client-side counterparts to
/// make use of the exported information are `GDBusActionGroup` and
/// `GDBusMenuModel`.
/// 
/// The API of `GMenuModel` is very generic, with iterators for the
/// attributes and links of an item, see `g_menu_model_iterate_item_attributes()`
/// and `g_menu_model_iterate_item_links()`. The 'standard' attributes and
/// link types have predefined names: `G_MENU_ATTRIBUTE_LABEL`,
/// `G_MENU_ATTRIBUTE_ACTION`, `G_MENU_ATTRIBUTE_TARGET`, `G_MENU_LINK_SECTION`
/// and `G_MENU_LINK_SUBMENU`.
/// 
/// Items in a `GMenuModel` represent active controls if they refer to
/// an action that can get activated when the user interacts with the
/// menu item. The reference to the action is encoded by the string id
/// in the `G_MENU_ATTRIBUTE_ACTION` attribute. An action id uniquely
/// identifies an action in an action group. Which action `group(s)` provide
/// actions depends on the context in which the menu model is used.
/// E.g. when the model is exported as the application menu of a
/// `GtkApplication`, actions can be application-wide or window-specific
/// (and thus come from two different action groups). By convention, the
/// application-wide actions have names that start with "app.", while the
/// names of window-specific actions start with "win.".
/// 
/// While a wide variety of stateful actions is possible, the following
/// is the minimum that is expected to be supported by all users of exported
/// menu information:
/// - an action with no parameter type and no state
/// - an action with no parameter type and boolean state
/// - an action with string parameter type and string state
/// 
/// ## Stateless
/// 
/// A stateless action typically corresponds to an ordinary menu item.
/// 
/// Selecting such a menu item will activate the action (with no parameter).
/// 
/// ## Boolean State
/// 
/// An action with a boolean state will most typically be used with a "toggle"
/// or "switch" menu item. The state can be set directly, but activating the
/// action (with no parameter) results in the state being toggled.
/// 
/// Selecting a toggle menu item will activate the action. The menu item should
/// be rendered as "checked" when the state is true.
/// 
/// ## String Parameter and State
/// 
/// Actions with string parameters and state will most typically be used to
/// represent an enumerated choice over the items available for a group of
/// radio menu items. Activating the action with a string parameter is
/// equivalent to setting that parameter as the state.
/// 
/// Radio menu items, in addition to being associated with the action, will
/// have a target value. Selecting that menu item will result in activation
/// of the action with the target value as the parameter. The menu item should
/// be rendered as "selected" when the state of the action is equal to the
/// target value of the menu item.
public protocol MenuModelProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `GMenuModel` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GMenuModel` instance.
    var menu_model_ptr: UnsafeMutablePointer<GMenuModel> { get }
}

/// The `MenuModelRef` type acts as a lightweight Swift reference to an underlying `GMenuModel` instance.
/// It exposes methods that can operate on this data type through `MenuModelProtocol` conformance.
/// Use `MenuModelRef` only as an `unowned` reference to an existing `GMenuModel` instance.
///
/// `GMenuModel` represents the contents of a menu -- an ordered list of
/// menu items. The items are associated with actions, which can be
/// activated through them. Items can be grouped in sections, and may
/// have submenus associated with them. Both items and sections usually
/// have some representation data, such as labels or icons. The type of
/// the associated action (ie whether it is stateful, and what kind of
/// state it has) can influence the representation of the item.
/// 
/// The conceptual model of menus in `GMenuModel` is hierarchical:
/// sections and submenus are again represented by `GMenuModels`.
/// Menus themselves do not define their own roles. Rather, the role
/// of a particular `GMenuModel` is defined by the item that references
/// it (or, in the case of the 'root' menu, is defined by the context
/// in which it is used).
/// 
/// As an example, consider the visible portions of this menu:
/// 
/// ## An example menu # <a name="menu-example"></a>
/// 
/// ![](menu-example.png)
/// 
/// There are 8 "menus" visible in the screenshot: one menubar, two
/// submenus and 5 sections:
/// 
/// - the toplevel menubar (containing 4 items)
/// - the View submenu (containing 3 sections)
/// - the first section of the View submenu (containing 2 items)
/// - the second section of the View submenu (containing 1 item)
/// - the final section of the View submenu (containing 1 item)
/// - the Highlight Mode submenu (containing 2 sections)
/// - the Sources section (containing 2 items)
/// - the Markup section (containing 2 items)
/// 
/// The [example](#menu-model) illustrates the conceptual connection between
/// these 8 menus. Each large block in the figure represents a menu and the
/// smaller blocks within the large block represent items in that menu. Some
/// items contain references to other menus.
/// 
/// ## A menu example # <a name="menu-model"></a>
/// 
/// ![](menu-model.png)
/// 
/// Notice that the separators visible in the [example](#menu-example)
/// appear nowhere in the [menu model](#menu-model). This is because
/// separators are not explicitly represented in the menu model. Instead,
/// a separator is inserted between any two non-empty sections of a menu.
/// Section items can have labels just like any other item. In that case,
/// a display system may show a section header instead of a separator.
/// 
/// The motivation for this abstract model of application controls is
/// that modern user interfaces tend to make these controls available
/// outside the application. Examples include global menus, jumplists,
/// dash boards, etc. To support such uses, it is necessary to 'export'
/// information about actions and their representation in menus, which
/// is exactly what the [GActionGroup exporter](#gio-GActionGroup-exporter)
/// and the [GMenuModel exporter](#gio-GMenuModel-exporter) do for
/// `GActionGroup` and `GMenuModel`. The client-side counterparts to
/// make use of the exported information are `GDBusActionGroup` and
/// `GDBusMenuModel`.
/// 
/// The API of `GMenuModel` is very generic, with iterators for the
/// attributes and links of an item, see `g_menu_model_iterate_item_attributes()`
/// and `g_menu_model_iterate_item_links()`. The 'standard' attributes and
/// link types have predefined names: `G_MENU_ATTRIBUTE_LABEL`,
/// `G_MENU_ATTRIBUTE_ACTION`, `G_MENU_ATTRIBUTE_TARGET`, `G_MENU_LINK_SECTION`
/// and `G_MENU_LINK_SUBMENU`.
/// 
/// Items in a `GMenuModel` represent active controls if they refer to
/// an action that can get activated when the user interacts with the
/// menu item. The reference to the action is encoded by the string id
/// in the `G_MENU_ATTRIBUTE_ACTION` attribute. An action id uniquely
/// identifies an action in an action group. Which action `group(s)` provide
/// actions depends on the context in which the menu model is used.
/// E.g. when the model is exported as the application menu of a
/// `GtkApplication`, actions can be application-wide or window-specific
/// (and thus come from two different action groups). By convention, the
/// application-wide actions have names that start with "app.", while the
/// names of window-specific actions start with "win.".
/// 
/// While a wide variety of stateful actions is possible, the following
/// is the minimum that is expected to be supported by all users of exported
/// menu information:
/// - an action with no parameter type and no state
/// - an action with no parameter type and boolean state
/// - an action with string parameter type and string state
/// 
/// ## Stateless
/// 
/// A stateless action typically corresponds to an ordinary menu item.
/// 
/// Selecting such a menu item will activate the action (with no parameter).
/// 
/// ## Boolean State
/// 
/// An action with a boolean state will most typically be used with a "toggle"
/// or "switch" menu item. The state can be set directly, but activating the
/// action (with no parameter) results in the state being toggled.
/// 
/// Selecting a toggle menu item will activate the action. The menu item should
/// be rendered as "checked" when the state is true.
/// 
/// ## String Parameter and State
/// 
/// Actions with string parameters and state will most typically be used to
/// represent an enumerated choice over the items available for a group of
/// radio menu items. Activating the action with a string parameter is
/// equivalent to setting that parameter as the state.
/// 
/// Radio menu items, in addition to being associated with the action, will
/// have a target value. Selecting that menu item will result in activation
/// of the action with the target value as the parameter. The menu item should
/// be rendered as "selected" when the state of the action is equal to the
/// target value of the menu item.
public struct MenuModelRef: MenuModelProtocol {
    /// Untyped pointer to the underlying `GMenuModel` instance.
    /// For type-safe access, use the generated, typed pointer `menu_model_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MenuModelRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GMenuModel>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MenuModelProtocol`
    init<T: MenuModelProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MenuModel` type acts as a reference-counted owner of an underlying `GMenuModel` instance.
/// It provides the methods that can operate on this data type through `MenuModelProtocol` conformance.
/// Use `MenuModel` as a strong reference or owner of a `GMenuModel` instance.
///
/// `GMenuModel` represents the contents of a menu -- an ordered list of
/// menu items. The items are associated with actions, which can be
/// activated through them. Items can be grouped in sections, and may
/// have submenus associated with them. Both items and sections usually
/// have some representation data, such as labels or icons. The type of
/// the associated action (ie whether it is stateful, and what kind of
/// state it has) can influence the representation of the item.
/// 
/// The conceptual model of menus in `GMenuModel` is hierarchical:
/// sections and submenus are again represented by `GMenuModels`.
/// Menus themselves do not define their own roles. Rather, the role
/// of a particular `GMenuModel` is defined by the item that references
/// it (or, in the case of the 'root' menu, is defined by the context
/// in which it is used).
/// 
/// As an example, consider the visible portions of this menu:
/// 
/// ## An example menu # <a name="menu-example"></a>
/// 
/// ![](menu-example.png)
/// 
/// There are 8 "menus" visible in the screenshot: one menubar, two
/// submenus and 5 sections:
/// 
/// - the toplevel menubar (containing 4 items)
/// - the View submenu (containing 3 sections)
/// - the first section of the View submenu (containing 2 items)
/// - the second section of the View submenu (containing 1 item)
/// - the final section of the View submenu (containing 1 item)
/// - the Highlight Mode submenu (containing 2 sections)
/// - the Sources section (containing 2 items)
/// - the Markup section (containing 2 items)
/// 
/// The [example](#menu-model) illustrates the conceptual connection between
/// these 8 menus. Each large block in the figure represents a menu and the
/// smaller blocks within the large block represent items in that menu. Some
/// items contain references to other menus.
/// 
/// ## A menu example # <a name="menu-model"></a>
/// 
/// ![](menu-model.png)
/// 
/// Notice that the separators visible in the [example](#menu-example)
/// appear nowhere in the [menu model](#menu-model). This is because
/// separators are not explicitly represented in the menu model. Instead,
/// a separator is inserted between any two non-empty sections of a menu.
/// Section items can have labels just like any other item. In that case,
/// a display system may show a section header instead of a separator.
/// 
/// The motivation for this abstract model of application controls is
/// that modern user interfaces tend to make these controls available
/// outside the application. Examples include global menus, jumplists,
/// dash boards, etc. To support such uses, it is necessary to 'export'
/// information about actions and their representation in menus, which
/// is exactly what the [GActionGroup exporter](#gio-GActionGroup-exporter)
/// and the [GMenuModel exporter](#gio-GMenuModel-exporter) do for
/// `GActionGroup` and `GMenuModel`. The client-side counterparts to
/// make use of the exported information are `GDBusActionGroup` and
/// `GDBusMenuModel`.
/// 
/// The API of `GMenuModel` is very generic, with iterators for the
/// attributes and links of an item, see `g_menu_model_iterate_item_attributes()`
/// and `g_menu_model_iterate_item_links()`. The 'standard' attributes and
/// link types have predefined names: `G_MENU_ATTRIBUTE_LABEL`,
/// `G_MENU_ATTRIBUTE_ACTION`, `G_MENU_ATTRIBUTE_TARGET`, `G_MENU_LINK_SECTION`
/// and `G_MENU_LINK_SUBMENU`.
/// 
/// Items in a `GMenuModel` represent active controls if they refer to
/// an action that can get activated when the user interacts with the
/// menu item. The reference to the action is encoded by the string id
/// in the `G_MENU_ATTRIBUTE_ACTION` attribute. An action id uniquely
/// identifies an action in an action group. Which action `group(s)` provide
/// actions depends on the context in which the menu model is used.
/// E.g. when the model is exported as the application menu of a
/// `GtkApplication`, actions can be application-wide or window-specific
/// (and thus come from two different action groups). By convention, the
/// application-wide actions have names that start with "app.", while the
/// names of window-specific actions start with "win.".
/// 
/// While a wide variety of stateful actions is possible, the following
/// is the minimum that is expected to be supported by all users of exported
/// menu information:
/// - an action with no parameter type and no state
/// - an action with no parameter type and boolean state
/// - an action with string parameter type and string state
/// 
/// ## Stateless
/// 
/// A stateless action typically corresponds to an ordinary menu item.
/// 
/// Selecting such a menu item will activate the action (with no parameter).
/// 
/// ## Boolean State
/// 
/// An action with a boolean state will most typically be used with a "toggle"
/// or "switch" menu item. The state can be set directly, but activating the
/// action (with no parameter) results in the state being toggled.
/// 
/// Selecting a toggle menu item will activate the action. The menu item should
/// be rendered as "checked" when the state is true.
/// 
/// ## String Parameter and State
/// 
/// Actions with string parameters and state will most typically be used to
/// represent an enumerated choice over the items available for a group of
/// radio menu items. Activating the action with a string parameter is
/// equivalent to setting that parameter as the state.
/// 
/// Radio menu items, in addition to being associated with the action, will
/// have a target value. Selecting that menu item will result in activation
/// of the action with the target value as the parameter. The menu item should
/// be rendered as "selected" when the state of the action is equal to the
/// target value of the menu item.
open class MenuModel: Object, MenuModelProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuModel` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GMenuModel>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GMenuModel`.
    /// i.e., ownership is transferred to the `MenuModel` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GMenuModel>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `MenuModelProtocol`
    /// Will retain `GMenuModel`.
    /// - Parameter other: an instance of a related type that implements `MenuModelProtocol`
    public init<T: MenuModelProtocol>(menuModel other: T) {
        super.init(retaining: cast(other.menu_model_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: - no MenuModel properties

public enum MenuModelSignalName: String, SignalNameProtocol {
    /// Emitted when a change has occured to the menu.
    /// 
    /// The only changes that can occur to a menu is that items are removed
    /// or added.  Items may not change (except by being removed and added
    /// back in the same location).  This signal is capable of describing
    /// both of those changes (at the same time).
    /// 
    /// The signal means that starting at the index `position`, `removed`
    /// items were removed and `added` items were added in their place.  If
    /// `removed` is zero then only items were added.  If `added` is zero
    /// then only items were removed.
    /// 
    /// As an example, if the menu contains items a, b, c, d (in that
    /// order) and the signal (2, 1, 3) occurs then the new composition of
    /// the menu will be a, b, _, _, _, d (with each _ representing some
    /// new item).
    /// 
    /// Signal handlers may query the model (particularly the added items)
    /// and expect to see the results of the modification that is being
    /// reported.  The signal is emitted after the modification.
    case itemsChanged = "items-changed"
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

public extension MenuModelProtocol {
    /// Connect a `MenuModelSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: MenuModelSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(menu_model_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension MenuModelProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMenuModel` instance.
    var menu_model_ptr: UnsafeMutablePointer<GMenuModel> { return ptr.assumingMemoryBound(to: GMenuModel.self) }


    // *** getItemAttribute() is not available because it has a varargs (...) parameter!


    /// Queries the item at position `item_index` in `model` for the attribute
    /// specified by `attribute`.
    /// 
    /// If `expected_type` is non-`nil` then it specifies the expected type of
    /// the attribute.  If it is `nil` then any type will be accepted.
    /// 
    /// If the attribute exists and matches `expected_type` (or if the
    /// expected type is unspecified) then the value is returned.
    /// 
    /// If the attribute does not exist, or does not match the expected type
    /// then `nil` is returned.
    func getItemAttributeValue(itemIndex item_index: CInt, attribute: UnsafePointer<gchar>, expectedType expected_type: VariantTypeProtocol) -> UnsafeMutablePointer<GVariant>! {
        let rv = g_menu_model_get_item_attribute_value(cast(menu_model_ptr), gint(item_index), attribute, cast(expected_type.ptr))
        return cast(rv)
    }

    /// Queries the item at position `item_index` in `model` for the link
    /// specified by `link`.
    /// 
    /// If the link exists, the linked `GMenuModel` is returned.  If the link
    /// does not exist, `nil` is returned.
    func getItemLink(itemIndex item_index: CInt, link: UnsafePointer<gchar>) -> UnsafeMutablePointer<GMenuModel>! {
        let rv = g_menu_model_get_item_link(cast(menu_model_ptr), gint(item_index), link)
        return cast(rv)
    }

    /// Query the number of items in `model`.
    func getNItems() -> CInt {
        let rv = g_menu_model_get_n_items(cast(menu_model_ptr))
        return CInt(rv)
    }

    /// Requests emission of the `GMenuModel::items`-changed signal on `model`.
    /// 
    /// This function should never be called except by `GMenuModel`
    /// subclasses.  Any other calls to this function will very likely lead
    /// to a violation of the interface of the model.
    /// 
    /// The implementation should update its internal representation of the
    /// menu before emitting the signal.  The implementation should further
    /// expect to receive queries about the new state of the menu (and
    /// particularly added menu items) while signal handlers are running.
    /// 
    /// The implementation must dispatch this call directly from a mainloop
    /// entry and not in response to calls -- particularly those from the
    /// `GMenuModel` API.  Said another way: the menu must not change while
    /// user code is running without returning to the mainloop.
    func itemsChanged(position: CInt, removed: CInt, added: CInt) {
        g_menu_model_items_changed(cast(menu_model_ptr), gint(position), gint(removed), gint(added))
    
    }

    /// Creates a `GMenuAttributeIter` to iterate over the attributes of
    /// the item at position `item_index` in `model`.
    /// 
    /// You must free the iterator with `g_object_unref()` when you are done.
    func iterateItemAttributes(itemIndex item_index: CInt) -> UnsafeMutablePointer<GMenuAttributeIter>! {
        let rv = g_menu_model_iterate_item_attributes(cast(menu_model_ptr), gint(item_index))
        return cast(rv)
    }

    /// Creates a `GMenuLinkIter` to iterate over the links of the item at
    /// position `item_index` in `model`.
    /// 
    /// You must free the iterator with `g_object_unref()` when you are done.
    func iterateItemLinks(itemIndex item_index: CInt) -> UnsafeMutablePointer<GMenuLinkIter>! {
        let rv = g_menu_model_iterate_item_links(cast(menu_model_ptr), gint(item_index))
        return cast(rv)
    }
    /// Queries if `model` is mutable.
    /// 
    /// An immutable `GMenuModel` will never emit the `GMenuModel::items`-changed
    /// signal. Consumers of the model may make optimisations accordingly.
    var isMutable: Bool {
        /// Queries if `model` is mutable.
        /// 
        /// An immutable `GMenuModel` will never emit the `GMenuModel::items`-changed
        /// signal. Consumers of the model may make optimisations accordingly.
        get {
            let rv = g_menu_model_is_mutable(cast(menu_model_ptr))
            return Bool(rv != 0)
        }
    }

    /// Query the number of items in `model`.
    var nItems: CInt {
        /// Query the number of items in `model`.
        get {
            let rv = g_menu_model_get_n_items(cast(menu_model_ptr))
            return CInt(rv)
        }
    }
}



// MARK: - MountOperation Class

/// The `MountOperationProtocol` protocol exposes the methods and properties of an underlying `GMountOperation` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MountOperation`.
/// Alternatively, use `MountOperationRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GMountOperation` provides a mechanism for interacting with the user.
/// It can be used for authenticating mountable operations, such as loop
/// mounting files, hard drive partitions or server locations. It can
/// also be used to ask the user questions or show a list of applications
/// preventing unmount or eject operations from completing.
/// 
/// Note that `GMountOperation` is used for more than just `GMount`
/// objects – for example it is also used in `g_drive_start()` and
/// `g_drive_stop()`.
/// 
/// Users should instantiate a subclass of this that implements all the
/// various callbacks to show the required dialogs, such as
/// `GtkMountOperation`. If no user interaction is desired (for example
/// when automounting filesystems at login time), usually `nil` can be
/// passed, see each method taking a `GMountOperation` for details.
/// 
/// The term ‘TCRYPT’ is used to mean ‘compatible with TrueCrypt and VeraCrypt’.
/// [TrueCrypt](https://en.wikipedia.org/wiki/TrueCrypt) is a discontinued system for
/// encrypting file containers, partitions or whole disks, typically used with Windows.
/// [VeraCrypt](https://www.veracrypt.fr/) is a maintained fork of TrueCrypt with various
/// improvements and auditing fixes.
public protocol MountOperationProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `GMountOperation` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GMountOperation` instance.
    var mount_operation_ptr: UnsafeMutablePointer<GMountOperation> { get }
}

/// The `MountOperationRef` type acts as a lightweight Swift reference to an underlying `GMountOperation` instance.
/// It exposes methods that can operate on this data type through `MountOperationProtocol` conformance.
/// Use `MountOperationRef` only as an `unowned` reference to an existing `GMountOperation` instance.
///
/// `GMountOperation` provides a mechanism for interacting with the user.
/// It can be used for authenticating mountable operations, such as loop
/// mounting files, hard drive partitions or server locations. It can
/// also be used to ask the user questions or show a list of applications
/// preventing unmount or eject operations from completing.
/// 
/// Note that `GMountOperation` is used for more than just `GMount`
/// objects – for example it is also used in `g_drive_start()` and
/// `g_drive_stop()`.
/// 
/// Users should instantiate a subclass of this that implements all the
/// various callbacks to show the required dialogs, such as
/// `GtkMountOperation`. If no user interaction is desired (for example
/// when automounting filesystems at login time), usually `nil` can be
/// passed, see each method taking a `GMountOperation` for details.
/// 
/// The term ‘TCRYPT’ is used to mean ‘compatible with TrueCrypt and VeraCrypt’.
/// [TrueCrypt](https://en.wikipedia.org/wiki/TrueCrypt) is a discontinued system for
/// encrypting file containers, partitions or whole disks, typically used with Windows.
/// [VeraCrypt](https://www.veracrypt.fr/) is a maintained fork of TrueCrypt with various
/// improvements and auditing fixes.
public struct MountOperationRef: MountOperationProtocol {
    /// Untyped pointer to the underlying `GMountOperation` instance.
    /// For type-safe access, use the generated, typed pointer `mount_operation_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MountOperationRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GMountOperation>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MountOperationProtocol`
    init<T: MountOperationProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new mount operation.
    init() {
        let rv = g_mount_operation_new()
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
}

/// The `MountOperation` type acts as a reference-counted owner of an underlying `GMountOperation` instance.
/// It provides the methods that can operate on this data type through `MountOperationProtocol` conformance.
/// Use `MountOperation` as a strong reference or owner of a `GMountOperation` instance.
///
/// `GMountOperation` provides a mechanism for interacting with the user.
/// It can be used for authenticating mountable operations, such as loop
/// mounting files, hard drive partitions or server locations. It can
/// also be used to ask the user questions or show a list of applications
/// preventing unmount or eject operations from completing.
/// 
/// Note that `GMountOperation` is used for more than just `GMount`
/// objects – for example it is also used in `g_drive_start()` and
/// `g_drive_stop()`.
/// 
/// Users should instantiate a subclass of this that implements all the
/// various callbacks to show the required dialogs, such as
/// `GtkMountOperation`. If no user interaction is desired (for example
/// when automounting filesystems at login time), usually `nil` can be
/// passed, see each method taking a `GMountOperation` for details.
/// 
/// The term ‘TCRYPT’ is used to mean ‘compatible with TrueCrypt and VeraCrypt’.
/// [TrueCrypt](https://en.wikipedia.org/wiki/TrueCrypt) is a discontinued system for
/// encrypting file containers, partitions or whole disks, typically used with Windows.
/// [VeraCrypt](https://www.veracrypt.fr/) is a maintained fork of TrueCrypt with various
/// improvements and auditing fixes.
open class MountOperation: Object, MountOperationProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MountOperation` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GMountOperation>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GMountOperation`.
    /// i.e., ownership is transferred to the `MountOperation` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GMountOperation>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `MountOperationProtocol`
    /// Will retain `GMountOperation`.
    /// - Parameter other: an instance of a related type that implements `MountOperationProtocol`
    public init<T: MountOperationProtocol>(mountOperation other: T) {
        super.init(retaining: cast(other.mount_operation_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new mount operation.
    public init() {
        let rv = g_mount_operation_new()
        super.init(cast(rv))
    }


}

public enum MountOperationPropertyName: String, PropertyNameProtocol {
    /// Whether to use an anonymous user when authenticating.
    case anonymous = "anonymous"
    /// The index of the user's choice when a question is asked during the
    /// mount operation. See the `GMountOperation::ask`-question signal.
    case choice = "choice"
    /// The domain to use for the mount operation.
    case domain = "domain"
    /// Whether the device to be unlocked is a TCRYPT hidden volume.
    /// See [the VeraCrypt documentation](https://www.veracrypt.fr/en/Hidden`20Volume.html`).
    case isTcryptHiddenVolume = "is-tcrypt-hidden-volume"
    /// Whether the device to be unlocked is a TCRYPT system volume.
    /// In this context, a system volume is a volume with a bootloader
    /// and operating system installed. This is only supported for Windows
    /// operating systems. For further documentation, see
    /// [the VeraCrypt documentation](https://www.veracrypt.fr/en/System`20Encryption.html`).
    case isTcryptSystemVolume = "is-tcrypt-system-volume"
    /// The password that is used for authentication when carrying out
    /// the mount operation.
    case password = "password"
    /// Determines if and how the password information should be saved.
    case passwordSave = "password-save"
    /// The VeraCrypt PIM value, when unlocking a VeraCrypt volume. See
    /// [the VeraCrypt documentation](https://www.veracrypt.fr/en/Personal`20Iterations``20Multiplier``20``(PIM)`.html).
    case pim = "pim"
    /// The user name that is used for authentication when carrying out
    /// the mount operation.
    case username = "username"
}

public extension MountOperationProtocol {
    /// Bind a `MountOperationPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: MountOperationPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(mount_operation_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum MountOperationSignalName: String, SignalNameProtocol {
    /// Emitted by the backend when e.g. a device becomes unavailable
    /// while a mount operation is in progress.
    /// 
    /// Implementations of GMountOperation should handle this signal
    /// by dismissing open password dialogs.
    case aborted = "aborted"
    /// Emitted when a mount operation asks the user for a password.
    /// 
    /// If the message contains a line break, the first line should be
    /// presented as a heading. For example, it may be used as the
    /// primary text in a `GtkMessageDialog`.
    case askPassword = "ask-password"
    /// Emitted when asking the user a question and gives a list of
    /// choices for the user to choose from.
    /// 
    /// If the message contains a line break, the first line should be
    /// presented as a heading. For example, it may be used as the
    /// primary text in a `GtkMessageDialog`.
    case askQuestion = "ask-question"
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
    /// Emitted when the user has replied to the mount operation.
    case reply = "reply"
    /// Emitted when one or more processes are blocking an operation
    /// e.g. unmounting/ejecting a `GMount` or stopping a `GDrive`.
    /// 
    /// Note that this signal may be emitted several times to update the
    /// list of blocking processes as processes close files. The
    /// application should only respond with `g_mount_operation_reply()` to
    /// the latest signal (setting `GMountOperation:choice` to the choice
    /// the user made).
    /// 
    /// If the message contains a line break, the first line should be
    /// presented as a heading. For example, it may be used as the
    /// primary text in a `GtkMessageDialog`.
    case showProcesses = "show-processes"
    /// Emitted when an unmount operation has been busy for more than some time
    /// (typically 1.5 seconds).
    /// 
    /// When unmounting or ejecting a volume, the kernel might need to flush
    /// pending data in its buffers to the volume stable storage, and this operation
    /// can take a considerable amount of time. This signal may be emitted several
    /// times as long as the unmount operation is outstanding, and then one
    /// last time when the operation is completed, with `bytes_left` set to zero.
    /// 
    /// Implementations of GMountOperation should handle this signal by
    /// showing an UI notification, and then dismiss it, or show another notification
    /// of completion, when `bytes_left` reaches zero.
    /// 
    /// If the message contains a line break, the first line should be
    /// presented as a heading. For example, it may be used as the
    /// primary text in a `GtkMessageDialog`.
    case showUnmountProgress = "show-unmount-progress"
    /// Whether to use an anonymous user when authenticating.
    case notifyAnonymous = "notify::anonymous"
    /// The index of the user's choice when a question is asked during the
    /// mount operation. See the `GMountOperation::ask`-question signal.
    case notifyChoice = "notify::choice"
    /// The domain to use for the mount operation.
    case notifyDomain = "notify::domain"
    /// Whether the device to be unlocked is a TCRYPT hidden volume.
    /// See [the VeraCrypt documentation](https://www.veracrypt.fr/en/Hidden`20Volume.html`).
    case notifyIsTcryptHiddenVolume = "notify::is-tcrypt-hidden-volume"
    /// Whether the device to be unlocked is a TCRYPT system volume.
    /// In this context, a system volume is a volume with a bootloader
    /// and operating system installed. This is only supported for Windows
    /// operating systems. For further documentation, see
    /// [the VeraCrypt documentation](https://www.veracrypt.fr/en/System`20Encryption.html`).
    case notifyIsTcryptSystemVolume = "notify::is-tcrypt-system-volume"
    /// The password that is used for authentication when carrying out
    /// the mount operation.
    case notifyPassword = "notify::password"
    /// Determines if and how the password information should be saved.
    case notifyPasswordSave = "notify::password-save"
    /// The VeraCrypt PIM value, when unlocking a VeraCrypt volume. See
    /// [the VeraCrypt documentation](https://www.veracrypt.fr/en/Personal`20Iterations``20Multiplier``20``(PIM)`.html).
    case notifyPim = "notify::pim"
    /// The user name that is used for authentication when carrying out
    /// the mount operation.
    case notifyUsername = "notify::username"
}

public extension MountOperationProtocol {
    /// Connect a `MountOperationSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: MountOperationSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(mount_operation_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension MountOperationProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMountOperation` instance.
    var mount_operation_ptr: UnsafeMutablePointer<GMountOperation> { return ptr.assumingMemoryBound(to: GMountOperation.self) }

    /// Check to see whether the mount operation is being used
    /// for an anonymous user.
    func getAnonymous() -> Bool {
        let rv = g_mount_operation_get_anonymous(cast(mount_operation_ptr))
        return Bool(rv != 0)
    }

    /// Gets a choice from the mount operation.
    func getChoice() -> CInt {
        let rv = g_mount_operation_get_choice(cast(mount_operation_ptr))
        return rv
    }

    /// Gets the domain of the mount operation.
    func getDomain() -> String! {
        let rv = g_mount_operation_get_domain(cast(mount_operation_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Check to see whether the mount operation is being used
    /// for a TCRYPT hidden volume.
    func getIsTcryptHiddenVolume() -> Bool {
        let rv = g_mount_operation_get_is_tcrypt_hidden_volume(cast(mount_operation_ptr))
        return Bool(rv != 0)
    }

    /// Check to see whether the mount operation is being used
    /// for a TCRYPT system volume.
    func getIsTcryptSystemVolume() -> Bool {
        let rv = g_mount_operation_get_is_tcrypt_system_volume(cast(mount_operation_ptr))
        return Bool(rv != 0)
    }

    /// Gets a password from the mount operation.
    func getPassword() -> String! {
        let rv = g_mount_operation_get_password(cast(mount_operation_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the state of saving passwords for the mount operation.
    func getPasswordSave() -> GPasswordSave {
        let rv = g_mount_operation_get_password_save(cast(mount_operation_ptr))
        return rv
    }

    /// Gets a PIM from the mount operation.
    func getPim() -> CUnsignedInt {
        let rv = g_mount_operation_get_pim(cast(mount_operation_ptr))
        return CUnsignedInt(rv)
    }

    /// Get the user name from the mount operation.
    func getUsername() -> String! {
        let rv = g_mount_operation_get_username(cast(mount_operation_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Emits the `GMountOperation::reply` signal.
    func reply(result: MountOperationResult) {
        g_mount_operation_reply(cast(mount_operation_ptr), result)
    
    }

    /// Sets the mount operation to use an anonymous user if `anonymous` is `true`.
    func set(anonymous: Bool) {
        g_mount_operation_set_anonymous(cast(mount_operation_ptr), gboolean(anonymous ? 1 : 0))
    
    }

    /// Sets a default choice for the mount operation.
    func set(choice: CInt) {
        g_mount_operation_set_choice(cast(mount_operation_ptr), choice)
    
    }

    /// Sets the mount operation's domain.
    func set(domain: UnsafePointer<CChar>) {
        g_mount_operation_set_domain(cast(mount_operation_ptr), domain)
    
    }

    /// Sets the mount operation to use a hidden volume if `hidden_volume` is `true`.
    func setIsTcrypt(hiddenVolume hidden_volume: Bool) {
        g_mount_operation_set_is_tcrypt_hidden_volume(cast(mount_operation_ptr), gboolean(hidden_volume ? 1 : 0))
    
    }

    /// Sets the mount operation to use a system volume if `system_volume` is `true`.
    func setIsTcrypt(systemVolume system_volume: Bool) {
        g_mount_operation_set_is_tcrypt_system_volume(cast(mount_operation_ptr), gboolean(system_volume ? 1 : 0))
    
    }

    /// Sets the mount operation's password to `password`.
    func set(password: UnsafePointer<CChar>) {
        g_mount_operation_set_password(cast(mount_operation_ptr), password)
    
    }

    /// Sets the state of saving passwords for the mount operation.
    func setPassword(save: PasswordSave) {
        g_mount_operation_set_password_save(cast(mount_operation_ptr), save)
    
    }

    /// Sets the mount operation's PIM to `pim`.
    func set(pim: CUnsignedInt) {
        g_mount_operation_set_pim(cast(mount_operation_ptr), guint(pim))
    
    }

    /// Sets the user name within `op` to `username`.
    func set(username: UnsafePointer<CChar>) {
        g_mount_operation_set_username(cast(mount_operation_ptr), username)
    
    }
    /// Whether to use an anonymous user when authenticating.
    var anonymous: Bool {
        /// Check to see whether the mount operation is being used
        /// for an anonymous user.
        get {
            let rv = g_mount_operation_get_anonymous(cast(mount_operation_ptr))
            return Bool(rv != 0)
        }
        /// Sets the mount operation to use an anonymous user if `anonymous` is `true`.
        nonmutating set {
            g_mount_operation_set_anonymous(cast(mount_operation_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// The index of the user's choice when a question is asked during the
    /// mount operation. See the `GMountOperation::ask`-question signal.
    var choice: CInt {
        /// Gets a choice from the mount operation.
        get {
            let rv = g_mount_operation_get_choice(cast(mount_operation_ptr))
            return rv
        }
        /// Sets a default choice for the mount operation.
        nonmutating set {
            g_mount_operation_set_choice(cast(mount_operation_ptr), newValue)
        }
    }

    /// The domain to use for the mount operation.
    var domain: String! {
        /// Gets the domain of the mount operation.
        get {
            let rv = g_mount_operation_get_domain(cast(mount_operation_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets the mount operation's domain.
        nonmutating set {
            g_mount_operation_set_domain(cast(mount_operation_ptr), newValue)
        }
    }

    /// Check to see whether the mount operation is being used
    /// for a TCRYPT hidden volume.
    var isTcryptHiddenVolume: Bool {
        /// Check to see whether the mount operation is being used
        /// for a TCRYPT hidden volume.
        get {
            let rv = g_mount_operation_get_is_tcrypt_hidden_volume(cast(mount_operation_ptr))
            return Bool(rv != 0)
        }
        /// Sets the mount operation to use a hidden volume if `hidden_volume` is `true`.
        nonmutating set {
            g_mount_operation_set_is_tcrypt_hidden_volume(cast(mount_operation_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Check to see whether the mount operation is being used
    /// for a TCRYPT system volume.
    var isTcryptSystemVolume: Bool {
        /// Check to see whether the mount operation is being used
        /// for a TCRYPT system volume.
        get {
            let rv = g_mount_operation_get_is_tcrypt_system_volume(cast(mount_operation_ptr))
            return Bool(rv != 0)
        }
        /// Sets the mount operation to use a system volume if `system_volume` is `true`.
        nonmutating set {
            g_mount_operation_set_is_tcrypt_system_volume(cast(mount_operation_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// The password that is used for authentication when carrying out
    /// the mount operation.
    var password: String! {
        /// Gets a password from the mount operation.
        get {
            let rv = g_mount_operation_get_password(cast(mount_operation_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets the mount operation's password to `password`.
        nonmutating set {
            g_mount_operation_set_password(cast(mount_operation_ptr), newValue)
        }
    }

    /// Gets the state of saving passwords for the mount operation.
    var passwordSave: GPasswordSave {
        /// Gets the state of saving passwords for the mount operation.
        get {
            let rv = g_mount_operation_get_password_save(cast(mount_operation_ptr))
            return rv
        }
        /// Sets the state of saving passwords for the mount operation.
        nonmutating set {
            g_mount_operation_set_password_save(cast(mount_operation_ptr), newValue)
        }
    }

    /// The VeraCrypt PIM value, when unlocking a VeraCrypt volume. See
    /// [the VeraCrypt documentation](https://www.veracrypt.fr/en/Personal`20Iterations``20Multiplier``20``(PIM)`.html).
    var pim: CUnsignedInt {
        /// Gets a PIM from the mount operation.
        get {
            let rv = g_mount_operation_get_pim(cast(mount_operation_ptr))
            return CUnsignedInt(rv)
        }
        /// Sets the mount operation's PIM to `pim`.
        nonmutating set {
            g_mount_operation_set_pim(cast(mount_operation_ptr), guint(newValue))
        }
    }

    /// The user name that is used for authentication when carrying out
    /// the mount operation.
    var username: String! {
        /// Get the user name from the mount operation.
        get {
            let rv = g_mount_operation_get_username(cast(mount_operation_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets the user name within `op` to `username`.
        nonmutating set {
            g_mount_operation_set_username(cast(mount_operation_ptr), newValue)
        }
    }
}



// MARK: - NativeSocketAddress Class

/// The `NativeSocketAddressProtocol` protocol exposes the methods and properties of an underlying `GNativeSocketAddress` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NativeSocketAddress`.
/// Alternatively, use `NativeSocketAddressRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A socket address of some unknown native type.
public protocol NativeSocketAddressProtocol: SocketAddressProtocol {
    /// Untyped pointer to the underlying `GNativeSocketAddress` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GNativeSocketAddress` instance.
    var native_socket_address_ptr: UnsafeMutablePointer<GNativeSocketAddress> { get }
}

/// The `NativeSocketAddressRef` type acts as a lightweight Swift reference to an underlying `GNativeSocketAddress` instance.
/// It exposes methods that can operate on this data type through `NativeSocketAddressProtocol` conformance.
/// Use `NativeSocketAddressRef` only as an `unowned` reference to an existing `GNativeSocketAddress` instance.
///
/// A socket address of some unknown native type.
public struct NativeSocketAddressRef: NativeSocketAddressProtocol {
    /// Untyped pointer to the underlying `GNativeSocketAddress` instance.
    /// For type-safe access, use the generated, typed pointer `native_socket_address_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension NativeSocketAddressRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GNativeSocketAddress>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `NativeSocketAddressProtocol`
    init<T: NativeSocketAddressProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GNativeSocketAddress` for `native` and `len`.
    init( native: UnsafeMutableRawPointer, len: Int) {
        let rv = g_native_socket_address_new(cast(native), gsize(len))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
}

/// The `NativeSocketAddress` type acts as a reference-counted owner of an underlying `GNativeSocketAddress` instance.
/// It provides the methods that can operate on this data type through `NativeSocketAddressProtocol` conformance.
/// Use `NativeSocketAddress` as a strong reference or owner of a `GNativeSocketAddress` instance.
///
/// A socket address of some unknown native type.
open class NativeSocketAddress: SocketAddress, NativeSocketAddressProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NativeSocketAddress` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GNativeSocketAddress>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GNativeSocketAddress`.
    /// i.e., ownership is transferred to the `NativeSocketAddress` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GNativeSocketAddress>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `NativeSocketAddressProtocol`
    /// Will retain `GNativeSocketAddress`.
    /// - Parameter other: an instance of a related type that implements `NativeSocketAddressProtocol`
    public init<T: NativeSocketAddressProtocol>(nativeSocketAddress other: T) {
        super.init(retaining: cast(other.native_socket_address_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GNativeSocketAddress` for `native` and `len`.
    public override init( native: UnsafeMutableRawPointer, len: Int) {
        let rv = g_native_socket_address_new(cast(native), gsize(len))
        super.init(cast(rv))
    }


}

public enum NativeSocketAddressPropertyName: String, PropertyNameProtocol {
    case family = "family"
}

public extension NativeSocketAddressProtocol {
    /// Bind a `NativeSocketAddressPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: NativeSocketAddressPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(native_socket_address_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum NativeSocketAddressSignalName: String, SignalNameProtocol {
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
    case notifyFamily = "notify::family"
}

public extension NativeSocketAddressProtocol {
    /// Connect a `NativeSocketAddressSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: NativeSocketAddressSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(native_socket_address_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension NativeSocketAddressProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GNativeSocketAddress` instance.
    var native_socket_address_ptr: UnsafeMutablePointer<GNativeSocketAddress> { return ptr.assumingMemoryBound(to: GNativeSocketAddress.self) }

}



