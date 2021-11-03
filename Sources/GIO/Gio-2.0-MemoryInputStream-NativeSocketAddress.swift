import CGLib
import GLib
import GLibObject

// MARK: - MemoryInputStream Class

/// `GMemoryInputStream` is a class for using arbitrary
/// memory chunks as input for GIO streaming input operations.
/// 
/// As of GLib 2.34, `GMemoryInputStream` implements
/// `GPollableInputStream`.
///
/// The `MemoryInputStreamProtocol` protocol exposes the methods and properties of an underlying `GMemoryInputStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MemoryInputStream`.
/// Alternatively, use `MemoryInputStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MemoryInputStreamProtocol: InputStreamProtocol, PollableInputStreamProtocol, SeekableProtocol {
        /// Untyped pointer to the underlying `GMemoryInputStream` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GMemoryInputStream` instance.
    var memory_input_stream_ptr: UnsafeMutablePointer<GMemoryInputStream>! { get }

    /// Required Initialiser for types conforming to `MemoryInputStreamProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GMemoryInputStream` is a class for using arbitrary
/// memory chunks as input for GIO streaming input operations.
/// 
/// As of GLib 2.34, `GMemoryInputStream` implements
/// `GPollableInputStream`.
///
/// The `MemoryInputStreamRef` type acts as a lightweight Swift reference to an underlying `GMemoryInputStream` instance.
/// It exposes methods that can operate on this data type through `MemoryInputStreamProtocol` conformance.
/// Use `MemoryInputStreamRef` only as an `unowned` reference to an existing `GMemoryInputStream` instance.
///
public struct MemoryInputStreamRef: MemoryInputStreamProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GMemoryInputStream` instance.
    /// For type-safe access, use the generated, typed pointer `memory_input_stream_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MemoryInputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GMemoryInputStream>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GMemoryInputStream>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GMemoryInputStream>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GMemoryInputStream>?) {
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

    /// Reference intialiser for a related type that implements `MemoryInputStreamProtocol`
    @inlinable init<T: MemoryInputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: MemoryInputStreamProtocol>(_ other: T) -> MemoryInputStreamRef { MemoryInputStreamRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new empty `GMemoryInputStream`.
    @inlinable init() {
        let rv = g_memory_input_stream_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GMemoryInputStream` with data from the given `bytes`.
    @inlinable init<BytesT: GLib.BytesProtocol>(bytes: BytesT) {
        let rv = g_memory_input_stream_new_from_bytes(bytes.bytes_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GMemoryInputStream` with data in memory of a given size.
    @inlinable init(data: UnsafeMutableRawPointer!, len: gssize, destroy: GDestroyNotify? = nil) {
        let rv = g_memory_input_stream_new_from_data(data, len, destroy)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GMemoryInputStream` with data from the given `bytes`.
    @inlinable static func newFrom<BytesT: GLib.BytesProtocol>(bytes: BytesT) -> InputStreamRef! {
        guard let rv = InputStreamRef(gconstpointer: gconstpointer(g_memory_input_stream_new_from_bytes(bytes.bytes_ptr))) else { return nil }
        return rv
    }

    /// Creates a new `GMemoryInputStream` with data in memory of a given size.
    @inlinable static func newFrom(data: UnsafeMutableRawPointer!, len: gssize, destroy: GDestroyNotify? = nil) -> InputStreamRef! {
        guard let rv = InputStreamRef(gconstpointer: gconstpointer(g_memory_input_stream_new_from_data(data, len, destroy))) else { return nil }
        return rv
    }
}

/// `GMemoryInputStream` is a class for using arbitrary
/// memory chunks as input for GIO streaming input operations.
/// 
/// As of GLib 2.34, `GMemoryInputStream` implements
/// `GPollableInputStream`.
///
/// The `MemoryInputStream` type acts as a reference-counted owner of an underlying `GMemoryInputStream` instance.
/// It provides the methods that can operate on this data type through `MemoryInputStreamProtocol` conformance.
/// Use `MemoryInputStream` as a strong reference or owner of a `GMemoryInputStream` instance.
///
open class MemoryInputStream: InputStream, MemoryInputStreamProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemoryInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GMemoryInputStream>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemoryInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GMemoryInputStream>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemoryInputStream` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemoryInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemoryInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GMemoryInputStream>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemoryInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GMemoryInputStream>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GMemoryInputStream`.
    /// i.e., ownership is transferred to the `MemoryInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GMemoryInputStream>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MemoryInputStreamProtocol`
    /// Will retain `GMemoryInputStream`.
    /// - Parameter other: an instance of a related type that implements `MemoryInputStreamProtocol`
    @inlinable public init<T: MemoryInputStreamProtocol>(memoryInputStream other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new empty `GMemoryInputStream`.
    @inlinable public init() {
        let rv = g_memory_input_stream_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GMemoryInputStream` with data from the given `bytes`.
    @inlinable public init<BytesT: GLib.BytesProtocol>(bytes: BytesT) {
        let rv = g_memory_input_stream_new_from_bytes(bytes.bytes_ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GMemoryInputStream` with data in memory of a given size.
    @inlinable public init(data: UnsafeMutableRawPointer!, len: gssize, destroy: GDestroyNotify? = nil) {
        let rv = g_memory_input_stream_new_from_data(data, len, destroy)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GMemoryInputStream` with data from the given `bytes`.
    @inlinable public static func newFrom<BytesT: GLib.BytesProtocol>(bytes: BytesT) -> InputStream! {
        guard let rv = InputStream(gconstpointer: gconstpointer(g_memory_input_stream_new_from_bytes(bytes.bytes_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a new `GMemoryInputStream` with data in memory of a given size.
    @inlinable public static func newFrom(data: UnsafeMutableRawPointer!, len: gssize, destroy: GDestroyNotify? = nil) -> InputStream! {
        guard let rv = InputStream(gconstpointer: gconstpointer(g_memory_input_stream_new_from_data(data, len, destroy))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

// MARK: no MemoryInputStream properties

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

// MARK: MemoryInputStream has no signals
// MARK: MemoryInputStream Class: MemoryInputStreamProtocol extension (methods and fields)
public extension MemoryInputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMemoryInputStream` instance.
    @inlinable var memory_input_stream_ptr: UnsafeMutablePointer<GMemoryInputStream>! { return ptr?.assumingMemoryBound(to: GMemoryInputStream.self) }

    /// Appends `bytes` to data that can be read from the input stream.
    @inlinable func add<BytesT: GLib.BytesProtocol>(bytes: BytesT) {
        g_memory_input_stream_add_bytes(memory_input_stream_ptr, bytes.bytes_ptr)
    
    }

    /// Appends `data` to data that can be read from the input stream
    @inlinable func add(data: UnsafeMutableRawPointer!, len: gssize, destroy: GDestroyNotify? = nil) {
        g_memory_input_stream_add_data(memory_input_stream_ptr, data, len, destroy)
    
    }

    @inlinable var parentInstance: GInputStream {
        get {
            let rv = memory_input_stream_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - MemoryOutputStream Class

/// `GMemoryOutputStream` is a class for using arbitrary
/// memory chunks as output for GIO streaming output operations.
/// 
/// As of GLib 2.34, `GMemoryOutputStream` trivially implements
/// `GPollableOutputStream:` it always polls as ready.
///
/// The `MemoryOutputStreamProtocol` protocol exposes the methods and properties of an underlying `GMemoryOutputStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MemoryOutputStream`.
/// Alternatively, use `MemoryOutputStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MemoryOutputStreamProtocol: OutputStreamProtocol, PollableOutputStreamProtocol, SeekableProtocol {
        /// Untyped pointer to the underlying `GMemoryOutputStream` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GMemoryOutputStream` instance.
    var memory_output_stream_ptr: UnsafeMutablePointer<GMemoryOutputStream>! { get }

    /// Required Initialiser for types conforming to `MemoryOutputStreamProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GMemoryOutputStream` is a class for using arbitrary
/// memory chunks as output for GIO streaming output operations.
/// 
/// As of GLib 2.34, `GMemoryOutputStream` trivially implements
/// `GPollableOutputStream:` it always polls as ready.
///
/// The `MemoryOutputStreamRef` type acts as a lightweight Swift reference to an underlying `GMemoryOutputStream` instance.
/// It exposes methods that can operate on this data type through `MemoryOutputStreamProtocol` conformance.
/// Use `MemoryOutputStreamRef` only as an `unowned` reference to an existing `GMemoryOutputStream` instance.
///
public struct MemoryOutputStreamRef: MemoryOutputStreamProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GMemoryOutputStream` instance.
    /// For type-safe access, use the generated, typed pointer `memory_output_stream_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MemoryOutputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GMemoryOutputStream>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GMemoryOutputStream>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GMemoryOutputStream>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GMemoryOutputStream>?) {
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

    /// Reference intialiser for a related type that implements `MemoryOutputStreamProtocol`
    @inlinable init<T: MemoryOutputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: MemoryOutputStreamProtocol>(_ other: T) -> MemoryOutputStreamRef { MemoryOutputStreamRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    @inlinable init( data: gpointer! = nil, size: Int, reallocFunction: GReallocFunc? = nil, destroyFunction: GDestroyNotify? = nil) {
        let rv = g_memory_output_stream_new(data, gsize(size), reallocFunction, destroyFunction)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GMemoryOutputStream`, using `g_realloc()` and `g_free()`
    /// for memory allocation.
    @inlinable static func newResizable() -> OutputStreamRef! {
        guard let rv = OutputStreamRef(gconstpointer: gconstpointer(g_memory_output_stream_new_resizable())) else { return nil }
        return rv
    }
}

/// `GMemoryOutputStream` is a class for using arbitrary
/// memory chunks as output for GIO streaming output operations.
/// 
/// As of GLib 2.34, `GMemoryOutputStream` trivially implements
/// `GPollableOutputStream:` it always polls as ready.
///
/// The `MemoryOutputStream` type acts as a reference-counted owner of an underlying `GMemoryOutputStream` instance.
/// It provides the methods that can operate on this data type through `MemoryOutputStreamProtocol` conformance.
/// Use `MemoryOutputStream` as a strong reference or owner of a `GMemoryOutputStream` instance.
///
open class MemoryOutputStream: OutputStream, MemoryOutputStreamProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemoryOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GMemoryOutputStream>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemoryOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GMemoryOutputStream>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemoryOutputStream` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemoryOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemoryOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GMemoryOutputStream>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemoryOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GMemoryOutputStream>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GMemoryOutputStream`.
    /// i.e., ownership is transferred to the `MemoryOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GMemoryOutputStream>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MemoryOutputStreamProtocol`
    /// Will retain `GMemoryOutputStream`.
    /// - Parameter other: an instance of a related type that implements `MemoryOutputStreamProtocol`
    @inlinable public init<T: MemoryOutputStreamProtocol>(memoryOutputStream other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
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
    @inlinable public init( data: gpointer! = nil, size: Int, reallocFunction: GReallocFunc? = nil, destroyFunction: GDestroyNotify? = nil) {
        let rv = g_memory_output_stream_new(data, gsize(size), reallocFunction, destroyFunction)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GMemoryOutputStream`, using `g_realloc()` and `g_free()`
    /// for memory allocation.
    @inlinable public static func newResizable() -> OutputStream! {
        guard let rv = OutputStream(gconstpointer: gconstpointer(g_memory_output_stream_new_resizable())) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: MemoryOutputStreamPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a MemoryOutputStream property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: MemoryOutputStreamPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a MemoryOutputStream property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: MemoryOutputStreamPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
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

// MARK: MemoryOutputStream has no signals
// MARK: MemoryOutputStream Class: MemoryOutputStreamProtocol extension (methods and fields)
public extension MemoryOutputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMemoryOutputStream` instance.
    @inlinable var memory_output_stream_ptr: UnsafeMutablePointer<GMemoryOutputStream>! { return ptr?.assumingMemoryBound(to: GMemoryOutputStream.self) }

    /// Gets any loaded data from the `ostream`.
    /// 
    /// Note that the returned pointer may become invalid on the next
    /// write or truncate operation on the stream.
    @inlinable func getData() -> gpointer! {
        let rv = g_memory_output_stream_get_data(memory_output_stream_ptr)
        return rv
    }

    /// Returns the number of bytes from the start up to including the last
    /// byte written in the stream that has not been truncated away.
    @inlinable func getDataSize() -> Int {
        let rv = Int(g_memory_output_stream_get_data_size(memory_output_stream_ptr))
        return rv
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
    @inlinable func getSize() -> Int {
        let rv = Int(g_memory_output_stream_get_size(memory_output_stream_ptr))
        return rv
    }

    /// Returns data from the `ostream` as a `GBytes`. `ostream` must be
    /// closed before calling this function.
    @inlinable func stealAsBytes() -> GLib.BytesRef! {
        let rv = GLib.BytesRef(g_memory_output_stream_steal_as_bytes(memory_output_stream_ptr))
        return rv
    }

    /// Gets any loaded data from the `ostream`. Ownership of the data
    /// is transferred to the caller; when no longer needed it must be
    /// freed using the free function set in `ostream`'s
    /// `GMemoryOutputStream:destroy-function` property.
    /// 
    /// `ostream` must be closed before calling this function.
    @inlinable func stealData() -> gpointer! {
        let rv = g_memory_output_stream_steal_data(memory_output_stream_ptr)
        return rv
    }
    /// Pointer to buffer where data will be written.
    @inlinable var data: gpointer! {
        /// Gets any loaded data from the `ostream`.
        /// 
        /// Note that the returned pointer may become invalid on the next
        /// write or truncate operation on the stream.
        get {
            let rv = g_memory_output_stream_get_data(memory_output_stream_ptr)
            return rv
        }
    }

    /// Returns the number of bytes from the start up to including the last
    /// byte written in the stream that has not been truncated away.
    @inlinable var dataSize: Int {
        /// Returns the number of bytes from the start up to including the last
        /// byte written in the stream that has not been truncated away.
        get {
            let rv = Int(g_memory_output_stream_get_data_size(memory_output_stream_ptr))
            return rv
        }
    }

    /// Current size of the data buffer.
    @inlinable var size: Int {
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
            let rv = Int(g_memory_output_stream_get_size(memory_output_stream_ptr))
            return rv
        }
    }

    @inlinable var parentInstance: GOutputStream {
        get {
            let rv = memory_output_stream_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - Menu Class

/// `GMenu` is a simple implementation of `GMenuModel`.
/// You populate a `GMenu` by adding `GMenuItem` instances to it.
/// 
/// There are some convenience functions to allow you to directly
/// add items (avoiding `GMenuItem`) for the common cases. To add
/// a regular item, use `g_menu_insert()`. To add a section, use
/// `g_menu_insert_section()`. To add a submenu, use
/// `g_menu_insert_submenu()`.
///
/// The `MenuProtocol` protocol exposes the methods and properties of an underlying `GMenu` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Menu`.
/// Alternatively, use `MenuRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MenuProtocol: MenuModelProtocol {
        /// Untyped pointer to the underlying `GMenu` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GMenu` instance.
    var menu_ptr: UnsafeMutablePointer<GMenu>! { get }

    /// Required Initialiser for types conforming to `MenuProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GMenu` is a simple implementation of `GMenuModel`.
/// You populate a `GMenu` by adding `GMenuItem` instances to it.
/// 
/// There are some convenience functions to allow you to directly
/// add items (avoiding `GMenuItem`) for the common cases. To add
/// a regular item, use `g_menu_insert()`. To add a section, use
/// `g_menu_insert_section()`. To add a submenu, use
/// `g_menu_insert_submenu()`.
///
/// The `MenuRef` type acts as a lightweight Swift reference to an underlying `GMenu` instance.
/// It exposes methods that can operate on this data type through `MenuProtocol` conformance.
/// Use `MenuRef` only as an `unowned` reference to an existing `GMenu` instance.
///
public struct MenuRef: MenuProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GMenu` instance.
    /// For type-safe access, use the generated, typed pointer `menu_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MenuRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GMenu>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GMenu>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GMenu>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GMenu>?) {
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

    /// Reference intialiser for a related type that implements `MenuProtocol`
    @inlinable init<T: MenuProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: MenuProtocol>(_ other: T) -> MenuRef { MenuRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GMenu`.
    /// 
    /// The new menu has no items.
    @inlinable init() {
        let rv = g_menu_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// `GMenu` is a simple implementation of `GMenuModel`.
/// You populate a `GMenu` by adding `GMenuItem` instances to it.
/// 
/// There are some convenience functions to allow you to directly
/// add items (avoiding `GMenuItem`) for the common cases. To add
/// a regular item, use `g_menu_insert()`. To add a section, use
/// `g_menu_insert_section()`. To add a submenu, use
/// `g_menu_insert_submenu()`.
///
/// The `Menu` type acts as a reference-counted owner of an underlying `GMenu` instance.
/// It provides the methods that can operate on this data type through `MenuProtocol` conformance.
/// Use `Menu` as a strong reference or owner of a `GMenu` instance.
///
open class Menu: MenuModel, MenuProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Menu` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GMenu>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Menu` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GMenu>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Menu` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Menu` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Menu` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GMenu>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Menu` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GMenu>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GMenu`.
    /// i.e., ownership is transferred to the `Menu` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GMenu>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MenuProtocol`
    /// Will retain `GMenu`.
    /// - Parameter other: an instance of a related type that implements `MenuProtocol`
    @inlinable public init<T: MenuProtocol>(menu other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GMenu`.
    /// 
    /// The new menu has no items.
    @inlinable public init() {
        let rv = g_menu_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

// MARK: no Menu properties

public enum MenuSignalName: String, SignalNameProtocol {
    /// Emitted when a change has occurred to the menu.
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

// MARK: Menu has no signals
// MARK: Menu Class: MenuProtocol extension (methods and fields)
public extension MenuProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMenu` instance.
    @inlinable var menu_ptr: UnsafeMutablePointer<GMenu>! { return ptr?.assumingMemoryBound(to: GMenu.self) }

    /// Convenience function for appending a normal menu item to the end of
    /// `menu`.  Combine `g_menu_item_new()` and `g_menu_insert_item()` for a more
    /// flexible alternative.
    @inlinable func append(label: UnsafePointer<gchar>? = nil, detailedAction: UnsafePointer<gchar>? = nil) {
        g_menu_append(menu_ptr, label, detailedAction)
    
    }

    /// Appends `item` to the end of `menu`.
    /// 
    /// See `g_menu_insert_item()` for more information.
    @inlinable func append<MenuItemT: MenuItemProtocol>(item: MenuItemT) {
        g_menu_append_item(menu_ptr, item.menu_item_ptr)
    
    }

    /// Convenience function for appending a section menu item to the end of
    /// `menu`.  Combine `g_menu_item_new_section()` and `g_menu_insert_item()` for a
    /// more flexible alternative.
    @inlinable func appendSection<MenuModelT: MenuModelProtocol>(label: UnsafePointer<gchar>? = nil, section: MenuModelT) {
        g_menu_append_section(menu_ptr, label, section.menu_model_ptr)
    
    }

    /// Convenience function for appending a submenu menu item to the end of
    /// `menu`.  Combine `g_menu_item_new_submenu()` and `g_menu_insert_item()` for a
    /// more flexible alternative.
    @inlinable func appendSubmenu<MenuModelT: MenuModelProtocol>(label: UnsafePointer<gchar>? = nil, submenu: MenuModelT) {
        g_menu_append_submenu(menu_ptr, label, submenu.menu_model_ptr)
    
    }

    /// Marks `menu` as frozen.
    /// 
    /// After the menu is frozen, it is an error to attempt to make any
    /// changes to it.  In effect this means that the `GMenu` API must no
    /// longer be used.
    /// 
    /// This function causes `g_menu_model_is_mutable()` to begin returning
    /// `false`, which has some positive performance implications.
    @inlinable func freeze() {
        g_menu_freeze(menu_ptr)
    
    }

    /// Convenience function for inserting a normal menu item into `menu`.
    /// Combine `g_menu_item_new()` and `g_menu_insert_item()` for a more flexible
    /// alternative.
    @inlinable func insert(position: Int, label: UnsafePointer<gchar>? = nil, detailedAction: UnsafePointer<gchar>? = nil) {
        g_menu_insert(menu_ptr, gint(position), label, detailedAction)
    
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
    @inlinable func insertItem<MenuItemT: MenuItemProtocol>(position: Int, item: MenuItemT) {
        g_menu_insert_item(menu_ptr, gint(position), item.menu_item_ptr)
    
    }

    /// Convenience function for inserting a section menu item into `menu`.
    /// Combine `g_menu_item_new_section()` and `g_menu_insert_item()` for a more
    /// flexible alternative.
    @inlinable func insertSection<MenuModelT: MenuModelProtocol>(position: Int, label: UnsafePointer<gchar>? = nil, section: MenuModelT) {
        g_menu_insert_section(menu_ptr, gint(position), label, section.menu_model_ptr)
    
    }

    /// Convenience function for inserting a submenu menu item into `menu`.
    /// Combine `g_menu_item_new_submenu()` and `g_menu_insert_item()` for a more
    /// flexible alternative.
    @inlinable func insertSubmenu<MenuModelT: MenuModelProtocol>(position: Int, label: UnsafePointer<gchar>? = nil, submenu: MenuModelT) {
        g_menu_insert_submenu(menu_ptr, gint(position), label, submenu.menu_model_ptr)
    
    }

    /// Convenience function for prepending a normal menu item to the start
    /// of `menu`.  Combine `g_menu_item_new()` and `g_menu_insert_item()` for a more
    /// flexible alternative.
    @inlinable func prepend(label: UnsafePointer<gchar>? = nil, detailedAction: UnsafePointer<gchar>? = nil) {
        g_menu_prepend(menu_ptr, label, detailedAction)
    
    }

    /// Prepends `item` to the start of `menu`.
    /// 
    /// See `g_menu_insert_item()` for more information.
    @inlinable func prepend<MenuItemT: MenuItemProtocol>(item: MenuItemT) {
        g_menu_prepend_item(menu_ptr, item.menu_item_ptr)
    
    }

    /// Convenience function for prepending a section menu item to the start
    /// of `menu`.  Combine `g_menu_item_new_section()` and `g_menu_insert_item()` for
    /// a more flexible alternative.
    @inlinable func prependSection<MenuModelT: MenuModelProtocol>(label: UnsafePointer<gchar>? = nil, section: MenuModelT) {
        g_menu_prepend_section(menu_ptr, label, section.menu_model_ptr)
    
    }

    /// Convenience function for prepending a submenu menu item to the start
    /// of `menu`.  Combine `g_menu_item_new_submenu()` and `g_menu_insert_item()` for
    /// a more flexible alternative.
    @inlinable func prependSubmenu<MenuModelT: MenuModelProtocol>(label: UnsafePointer<gchar>? = nil, submenu: MenuModelT) {
        g_menu_prepend_submenu(menu_ptr, label, submenu.menu_model_ptr)
    
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
    @inlinable func remove(position: Int) {
        g_menu_remove(menu_ptr, gint(position))
    
    }

    /// Removes all items in the menu.
    @inlinable func removeAll() {
        g_menu_remove_all(menu_ptr)
    
    }


}



// MARK: - MenuAttributeIter Class

/// `GMenuAttributeIter` is an opaque structure type.  You must access it
/// using the functions below.
///
/// The `MenuAttributeIterProtocol` protocol exposes the methods and properties of an underlying `GMenuAttributeIter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuAttributeIter`.
/// Alternatively, use `MenuAttributeIterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MenuAttributeIterProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GMenuAttributeIter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GMenuAttributeIter` instance.
    var menu_attribute_iter_ptr: UnsafeMutablePointer<GMenuAttributeIter>! { get }

    /// Required Initialiser for types conforming to `MenuAttributeIterProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GMenuAttributeIter` is an opaque structure type.  You must access it
/// using the functions below.
///
/// The `MenuAttributeIterRef` type acts as a lightweight Swift reference to an underlying `GMenuAttributeIter` instance.
/// It exposes methods that can operate on this data type through `MenuAttributeIterProtocol` conformance.
/// Use `MenuAttributeIterRef` only as an `unowned` reference to an existing `GMenuAttributeIter` instance.
///
public struct MenuAttributeIterRef: MenuAttributeIterProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GMenuAttributeIter` instance.
    /// For type-safe access, use the generated, typed pointer `menu_attribute_iter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MenuAttributeIterRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GMenuAttributeIter>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GMenuAttributeIter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GMenuAttributeIter>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GMenuAttributeIter>?) {
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

    /// Reference intialiser for a related type that implements `MenuAttributeIterProtocol`
    @inlinable init<T: MenuAttributeIterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: MenuAttributeIterProtocol>(_ other: T) -> MenuAttributeIterRef { MenuAttributeIterRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// `GMenuAttributeIter` is an opaque structure type.  You must access it
/// using the functions below.
///
/// The `MenuAttributeIter` type acts as a reference-counted owner of an underlying `GMenuAttributeIter` instance.
/// It provides the methods that can operate on this data type through `MenuAttributeIterProtocol` conformance.
/// Use `MenuAttributeIter` as a strong reference or owner of a `GMenuAttributeIter` instance.
///
open class MenuAttributeIter: GLibObject.Object, MenuAttributeIterProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuAttributeIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GMenuAttributeIter>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuAttributeIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GMenuAttributeIter>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuAttributeIter` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuAttributeIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuAttributeIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GMenuAttributeIter>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuAttributeIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GMenuAttributeIter>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GMenuAttributeIter`.
    /// i.e., ownership is transferred to the `MenuAttributeIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GMenuAttributeIter>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MenuAttributeIterProtocol`
    /// Will retain `GMenuAttributeIter`.
    /// - Parameter other: an instance of a related type that implements `MenuAttributeIterProtocol`
    @inlinable public init<T: MenuAttributeIterProtocol>(menuAttributeIter other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no MenuAttributeIter properties

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

// MARK: MenuAttributeIter has no signals
// MARK: MenuAttributeIter Class: MenuAttributeIterProtocol extension (methods and fields)
public extension MenuAttributeIterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMenuAttributeIter` instance.
    @inlinable var menu_attribute_iter_ptr: UnsafeMutablePointer<GMenuAttributeIter>! { return ptr?.assumingMemoryBound(to: GMenuAttributeIter.self) }

    /// Gets the name of the attribute at the current iterator position, as
    /// a string.
    /// 
    /// The iterator is not advanced.
    @inlinable func getName() -> String! {
        let rv = g_menu_attribute_iter_get_name(menu_attribute_iter_ptr).map({ String(cString: $0) })
        return rv
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
    @inlinable func getNext(outName: UnsafeMutablePointer<UnsafePointer<gchar>?>! = nil, value: UnsafeMutablePointer<UnsafeMutablePointer<GVariant>?>! = nil) -> Bool {
        let rv = ((g_menu_attribute_iter_get_next(menu_attribute_iter_ptr, outName, value)) != 0)
        return rv
    }

    /// Gets the value of the attribute at the current iterator position.
    /// 
    /// The iterator is not advanced.
    @inlinable func getValue() -> GLib.VariantRef! {
        let rv = GLib.VariantRef(g_menu_attribute_iter_get_value(menu_attribute_iter_ptr))
        return rv
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
    @inlinable func next() -> Bool {
        let rv = ((g_menu_attribute_iter_next(menu_attribute_iter_ptr)) != 0)
        return rv
    }
    /// Gets the name of the attribute at the current iterator position, as
    /// a string.
    /// 
    /// The iterator is not advanced.
    @inlinable var name: String! {
        /// Gets the name of the attribute at the current iterator position, as
        /// a string.
        /// 
        /// The iterator is not advanced.
        get {
            let rv = g_menu_attribute_iter_get_name(menu_attribute_iter_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the value of the attribute at the current iterator position.
    /// 
    /// The iterator is not advanced.
    @inlinable var value: GLib.VariantRef! {
        /// Gets the value of the attribute at the current iterator position.
        /// 
        /// The iterator is not advanced.
        get {
            let rv = GLib.VariantRef(g_menu_attribute_iter_get_value(menu_attribute_iter_ptr))
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = menu_attribute_iter_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - MenuItem Class

/// `GMenuItem` is an opaque structure type.  You must access it using the
/// functions below.
///
/// The `MenuItemProtocol` protocol exposes the methods and properties of an underlying `GMenuItem` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuItem`.
/// Alternatively, use `MenuItemRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MenuItemProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GMenuItem` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GMenuItem` instance.
    var menu_item_ptr: UnsafeMutablePointer<GMenuItem>! { get }

    /// Required Initialiser for types conforming to `MenuItemProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GMenuItem` is an opaque structure type.  You must access it using the
/// functions below.
///
/// The `MenuItemRef` type acts as a lightweight Swift reference to an underlying `GMenuItem` instance.
/// It exposes methods that can operate on this data type through `MenuItemProtocol` conformance.
/// Use `MenuItemRef` only as an `unowned` reference to an existing `GMenuItem` instance.
///
public struct MenuItemRef: MenuItemProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GMenuItem` instance.
    /// For type-safe access, use the generated, typed pointer `menu_item_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MenuItemRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GMenuItem>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GMenuItem>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GMenuItem>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GMenuItem>?) {
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

    /// Reference intialiser for a related type that implements `MenuItemProtocol`
    @inlinable init<T: MenuItemProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: MenuItemProtocol>(_ other: T) -> MenuItemRef { MenuItemRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    @inlinable init( label: UnsafePointer<gchar>? = nil, detailedAction: UnsafePointer<gchar>? = nil) {
        let rv = g_menu_item_new(label, detailedAction)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GMenuItem` as an exact copy of an existing menu item in a
    /// `GMenuModel`.
    /// 
    /// `item_index` must be valid (ie: be sure to call
    /// `g_menu_model_get_n_items()` first).
    @inlinable init<MenuModelT: MenuModelProtocol>(model: MenuModelT, itemIndex: Int) {
        let rv = g_menu_item_new_from_model(model.menu_model_ptr, gint(itemIndex))
        ptr = UnsafeMutableRawPointer(rv)
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
    @inlinable init<MenuModelT: MenuModelProtocol>(section label: UnsafePointer<gchar>? = nil, section: MenuModelT) {
        let rv = g_menu_item_new_section(label, section.menu_model_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GMenuItem` representing a submenu.
    /// 
    /// This is a convenience API around `g_menu_item_new()` and
    /// `g_menu_item_set_submenu()`.
    @inlinable init<MenuModelT: MenuModelProtocol>(submenu label: UnsafePointer<gchar>? = nil, submenu: MenuModelT) {
        let rv = g_menu_item_new_submenu(label, submenu.menu_model_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a `GMenuItem` as an exact copy of an existing menu item in a
    /// `GMenuModel`.
    /// 
    /// `item_index` must be valid (ie: be sure to call
    /// `g_menu_model_get_n_items()` first).
    @inlinable static func newFrom<MenuModelT: MenuModelProtocol>(model: MenuModelT, itemIndex: Int) -> MenuItemRef! {
        guard let rv = MenuItemRef(gconstpointer: gconstpointer(g_menu_item_new_from_model(model.menu_model_ptr, gint(itemIndex)))) else { return nil }
        return rv
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
    @inlinable static func new<MenuModelT: MenuModelProtocol>(section label: UnsafePointer<gchar>? = nil, section: MenuModelT) -> MenuItemRef! {
        guard let rv = MenuItemRef(gconstpointer: gconstpointer(g_menu_item_new_section(label, section.menu_model_ptr))) else { return nil }
        return rv
    }

    /// Creates a new `GMenuItem` representing a submenu.
    /// 
    /// This is a convenience API around `g_menu_item_new()` and
    /// `g_menu_item_set_submenu()`.
    @inlinable static func new<MenuModelT: MenuModelProtocol>(submenu label: UnsafePointer<gchar>? = nil, submenu: MenuModelT) -> MenuItemRef! {
        guard let rv = MenuItemRef(gconstpointer: gconstpointer(g_menu_item_new_submenu(label, submenu.menu_model_ptr))) else { return nil }
        return rv
    }
}

/// `GMenuItem` is an opaque structure type.  You must access it using the
/// functions below.
///
/// The `MenuItem` type acts as a reference-counted owner of an underlying `GMenuItem` instance.
/// It provides the methods that can operate on this data type through `MenuItemProtocol` conformance.
/// Use `MenuItem` as a strong reference or owner of a `GMenuItem` instance.
///
open class MenuItem: GLibObject.Object, MenuItemProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GMenuItem>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GMenuItem>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuItem` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GMenuItem>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GMenuItem>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GMenuItem`.
    /// i.e., ownership is transferred to the `MenuItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GMenuItem>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MenuItemProtocol`
    /// Will retain `GMenuItem`.
    /// - Parameter other: an instance of a related type that implements `MenuItemProtocol`
    @inlinable public init<T: MenuItemProtocol>(menuItem other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
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
    @inlinable public init( label: UnsafePointer<gchar>? = nil, detailedAction: UnsafePointer<gchar>? = nil) {
        let rv = g_menu_item_new(label, detailedAction)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a `GMenuItem` as an exact copy of an existing menu item in a
    /// `GMenuModel`.
    /// 
    /// `item_index` must be valid (ie: be sure to call
    /// `g_menu_model_get_n_items()` first).
    @inlinable public init<MenuModelT: MenuModelProtocol>(model: MenuModelT, itemIndex: Int) {
        let rv = g_menu_item_new_from_model(model.menu_model_ptr, gint(itemIndex))
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
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
    @inlinable public init<MenuModelT: MenuModelProtocol>(section label: UnsafePointer<gchar>? = nil, section: MenuModelT) {
        let rv = g_menu_item_new_section(label, section.menu_model_ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GMenuItem` representing a submenu.
    /// 
    /// This is a convenience API around `g_menu_item_new()` and
    /// `g_menu_item_set_submenu()`.
    @inlinable public init<MenuModelT: MenuModelProtocol>(submenu label: UnsafePointer<gchar>? = nil, submenu: MenuModelT) {
        let rv = g_menu_item_new_submenu(label, submenu.menu_model_ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a `GMenuItem` as an exact copy of an existing menu item in a
    /// `GMenuModel`.
    /// 
    /// `item_index` must be valid (ie: be sure to call
    /// `g_menu_model_get_n_items()` first).
    @inlinable public static func newFrom<MenuModelT: MenuModelProtocol>(model: MenuModelT, itemIndex: Int) -> MenuItem! {
        guard let rv = MenuItem(gconstpointer: gconstpointer(g_menu_item_new_from_model(model.menu_model_ptr, gint(itemIndex)))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
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
    @inlinable public static func new<MenuModelT: MenuModelProtocol>(section label: UnsafePointer<gchar>? = nil, section: MenuModelT) -> MenuItem! {
        guard let rv = MenuItem(gconstpointer: gconstpointer(g_menu_item_new_section(label, section.menu_model_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a new `GMenuItem` representing a submenu.
    /// 
    /// This is a convenience API around `g_menu_item_new()` and
    /// `g_menu_item_set_submenu()`.
    @inlinable public static func new<MenuModelT: MenuModelProtocol>(submenu label: UnsafePointer<gchar>? = nil, submenu: MenuModelT) -> MenuItem! {
        guard let rv = MenuItem(gconstpointer: gconstpointer(g_menu_item_new_submenu(label, submenu.menu_model_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

// MARK: no MenuItem properties

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

// MARK: MenuItem has no signals
// MARK: MenuItem Class: MenuItemProtocol extension (methods and fields)
public extension MenuItemProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMenuItem` instance.
    @inlinable var menu_item_ptr: UnsafeMutablePointer<GMenuItem>! { return ptr?.assumingMemoryBound(to: GMenuItem.self) }


    // *** getAttribute() is not available because it has a varargs (...) parameter!


    /// Queries the named `attribute` on `menu_item`.
    /// 
    /// If `expected_type` is specified and the attribute does not have this
    /// type, `nil` is returned.  `nil` is also returned if the attribute
    /// simply does not exist.
    @inlinable func getAttributeValue(attribute: UnsafePointer<gchar>!, expectedType: GLib.VariantTypeRef? = nil) -> GLib.VariantRef! {
        let rv = GLib.VariantRef(g_menu_item_get_attribute_value(menu_item_ptr, attribute, expectedType?.variant_type_ptr))
        return rv
    }
    /// Queries the named `attribute` on `menu_item`.
    /// 
    /// If `expected_type` is specified and the attribute does not have this
    /// type, `nil` is returned.  `nil` is also returned if the attribute
    /// simply does not exist.
    @inlinable func getAttributeValue<VariantTypeT: GLib.VariantTypeProtocol>(attribute: UnsafePointer<gchar>!, expectedType: VariantTypeT?) -> GLib.VariantRef! {
        let rv = GLib.VariantRef(g_menu_item_get_attribute_value(menu_item_ptr, attribute, expectedType?.variant_type_ptr))
        return rv
    }

    /// Queries the named `link` on `menu_item`.
    @inlinable func get(link: UnsafePointer<gchar>!) -> MenuModelRef! {
        let rv = MenuModelRef(gconstpointer: gconstpointer(g_menu_item_get_link(menu_item_ptr, link)))
        return rv
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
    @inlinable func setActionAndTargetValue(action: UnsafePointer<gchar>? = nil, targetValue: GLib.VariantRef? = nil) {
        g_menu_item_set_action_and_target_value(menu_item_ptr, action, targetValue?.variant_ptr)
    
    }
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
    @inlinable func setActionAndTargetValue<VariantT: GLib.VariantProtocol>(action: UnsafePointer<gchar>? = nil, targetValue: VariantT?) {
        g_menu_item_set_action_and_target_value(menu_item_ptr, action, targetValue?.variant_ptr)
    
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
    @inlinable func setAttributeValue(attribute: UnsafePointer<gchar>!, value: GLib.VariantRef? = nil) {
        g_menu_item_set_attribute_value(menu_item_ptr, attribute, value?.variant_ptr)
    
    }
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
    @inlinable func setAttributeValue<VariantT: GLib.VariantProtocol>(attribute: UnsafePointer<gchar>!, value: VariantT?) {
        g_menu_item_set_attribute_value(menu_item_ptr, attribute, value?.variant_ptr)
    
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
    @inlinable func set(detailedAction: UnsafePointer<gchar>!) {
        g_menu_item_set_detailed_action(menu_item_ptr, detailedAction)
    
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
    @inlinable func set<IconT: IconProtocol>(icon: IconT) {
        g_menu_item_set_icon(menu_item_ptr, icon.icon_ptr)
    
    }

    /// Sets or unsets the "label" attribute of `menu_item`.
    /// 
    /// If `label` is non-`nil` it is used as the label for the menu item.  If
    /// it is `nil` then the label attribute is unset.
    @inlinable func set(label: UnsafePointer<gchar>? = nil) {
        g_menu_item_set_label(menu_item_ptr, label)
    
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
    @inlinable func set(link: UnsafePointer<gchar>!, model: MenuModelRef? = nil) {
        g_menu_item_set_link(menu_item_ptr, link, model?.menu_model_ptr)
    
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
    @inlinable func set<MenuModelT: MenuModelProtocol>(link: UnsafePointer<gchar>!, model: MenuModelT?) {
        g_menu_item_set_link(menu_item_ptr, link, model?.menu_model_ptr)
    
    }

    /// Sets or unsets the "section" link of `menu_item` to `section`.
    /// 
    /// The effect of having one menu appear as a section of another is
    /// exactly as it sounds: the items from `section` become a direct part of
    /// the menu that `menu_item` is added to.  See `g_menu_item_new_section()`
    /// for more information about what it means for a menu item to be a
    /// section.
    @inlinable func set(section: MenuModelRef? = nil) {
        g_menu_item_set_section(menu_item_ptr, section?.menu_model_ptr)
    
    }
    /// Sets or unsets the "section" link of `menu_item` to `section`.
    /// 
    /// The effect of having one menu appear as a section of another is
    /// exactly as it sounds: the items from `section` become a direct part of
    /// the menu that `menu_item` is added to.  See `g_menu_item_new_section()`
    /// for more information about what it means for a menu item to be a
    /// section.
    @inlinable func set<MenuModelT: MenuModelProtocol>(section: MenuModelT?) {
        g_menu_item_set_section(menu_item_ptr, section?.menu_model_ptr)
    
    }

    /// Sets or unsets the "submenu" link of `menu_item` to `submenu`.
    /// 
    /// If `submenu` is non-`nil`, it is linked to.  If it is `nil` then the
    /// link is unset.
    /// 
    /// The effect of having one menu appear as a submenu of another is
    /// exactly as it sounds.
    @inlinable func set(submenu: MenuModelRef? = nil) {
        g_menu_item_set_submenu(menu_item_ptr, submenu?.menu_model_ptr)
    
    }
    /// Sets or unsets the "submenu" link of `menu_item` to `submenu`.
    /// 
    /// If `submenu` is non-`nil`, it is linked to.  If it is `nil` then the
    /// link is unset.
    /// 
    /// The effect of having one menu appear as a submenu of another is
    /// exactly as it sounds.
    @inlinable func set<MenuModelT: MenuModelProtocol>(submenu: MenuModelT?) {
        g_menu_item_set_submenu(menu_item_ptr, submenu?.menu_model_ptr)
    
    }


}



// MARK: - MenuLinkIter Class

/// `GMenuLinkIter` is an opaque structure type.  You must access it using
/// the functions below.
///
/// The `MenuLinkIterProtocol` protocol exposes the methods and properties of an underlying `GMenuLinkIter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuLinkIter`.
/// Alternatively, use `MenuLinkIterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MenuLinkIterProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GMenuLinkIter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GMenuLinkIter` instance.
    var menu_link_iter_ptr: UnsafeMutablePointer<GMenuLinkIter>! { get }

    /// Required Initialiser for types conforming to `MenuLinkIterProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GMenuLinkIter` is an opaque structure type.  You must access it using
/// the functions below.
///
/// The `MenuLinkIterRef` type acts as a lightweight Swift reference to an underlying `GMenuLinkIter` instance.
/// It exposes methods that can operate on this data type through `MenuLinkIterProtocol` conformance.
/// Use `MenuLinkIterRef` only as an `unowned` reference to an existing `GMenuLinkIter` instance.
///
public struct MenuLinkIterRef: MenuLinkIterProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GMenuLinkIter` instance.
    /// For type-safe access, use the generated, typed pointer `menu_link_iter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MenuLinkIterRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GMenuLinkIter>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GMenuLinkIter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GMenuLinkIter>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GMenuLinkIter>?) {
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

    /// Reference intialiser for a related type that implements `MenuLinkIterProtocol`
    @inlinable init<T: MenuLinkIterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: MenuLinkIterProtocol>(_ other: T) -> MenuLinkIterRef { MenuLinkIterRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// `GMenuLinkIter` is an opaque structure type.  You must access it using
/// the functions below.
///
/// The `MenuLinkIter` type acts as a reference-counted owner of an underlying `GMenuLinkIter` instance.
/// It provides the methods that can operate on this data type through `MenuLinkIterProtocol` conformance.
/// Use `MenuLinkIter` as a strong reference or owner of a `GMenuLinkIter` instance.
///
open class MenuLinkIter: GLibObject.Object, MenuLinkIterProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuLinkIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GMenuLinkIter>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuLinkIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GMenuLinkIter>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuLinkIter` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuLinkIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuLinkIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GMenuLinkIter>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuLinkIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GMenuLinkIter>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GMenuLinkIter`.
    /// i.e., ownership is transferred to the `MenuLinkIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GMenuLinkIter>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MenuLinkIterProtocol`
    /// Will retain `GMenuLinkIter`.
    /// - Parameter other: an instance of a related type that implements `MenuLinkIterProtocol`
    @inlinable public init<T: MenuLinkIterProtocol>(menuLinkIter other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no MenuLinkIter properties

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

// MARK: MenuLinkIter has no signals
// MARK: MenuLinkIter Class: MenuLinkIterProtocol extension (methods and fields)
public extension MenuLinkIterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMenuLinkIter` instance.
    @inlinable var menu_link_iter_ptr: UnsafeMutablePointer<GMenuLinkIter>! { return ptr?.assumingMemoryBound(to: GMenuLinkIter.self) }

    /// Gets the name of the link at the current iterator position.
    /// 
    /// The iterator is not advanced.
    @inlinable func getName() -> String! {
        let rv = g_menu_link_iter_get_name(menu_link_iter_ptr).map({ String(cString: $0) })
        return rv
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
    @inlinable func getNext(outLink: UnsafeMutablePointer<UnsafePointer<gchar>?>! = nil, value: UnsafeMutablePointer<UnsafeMutablePointer<GMenuModel>?>! = nil) -> Bool {
        let rv = ((g_menu_link_iter_get_next(menu_link_iter_ptr, outLink, value)) != 0)
        return rv
    }

    /// Gets the linked `GMenuModel` at the current iterator position.
    /// 
    /// The iterator is not advanced.
    @inlinable func getValue() -> MenuModelRef! {
        let rv = MenuModelRef(gconstpointer: gconstpointer(g_menu_link_iter_get_value(menu_link_iter_ptr)))
        return rv
    }

    /// Attempts to advance the iterator to the next (possibly first)
    /// link.
    /// 
    /// `true` is returned on success, or `false` if there are no more links.
    /// 
    /// You must call this function when you first acquire the iterator to
    /// advance it to the first link (and determine if the first link exists
    /// at all).
    @inlinable func next() -> Bool {
        let rv = ((g_menu_link_iter_next(menu_link_iter_ptr)) != 0)
        return rv
    }
    /// Gets the name of the link at the current iterator position.
    /// 
    /// The iterator is not advanced.
    @inlinable var name: String! {
        /// Gets the name of the link at the current iterator position.
        /// 
        /// The iterator is not advanced.
        get {
            let rv = g_menu_link_iter_get_name(menu_link_iter_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the linked `GMenuModel` at the current iterator position.
    /// 
    /// The iterator is not advanced.
    @inlinable var value: MenuModelRef! {
        /// Gets the linked `GMenuModel` at the current iterator position.
        /// 
        /// The iterator is not advanced.
        get {
            let rv = MenuModelRef(gconstpointer: gconstpointer(g_menu_link_iter_get_value(menu_link_iter_ptr)))
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = menu_link_iter_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - MenuModel Class

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
///
/// The `MenuModelProtocol` protocol exposes the methods and properties of an underlying `GMenuModel` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuModel`.
/// Alternatively, use `MenuModelRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MenuModelProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GMenuModel` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GMenuModel` instance.
    var menu_model_ptr: UnsafeMutablePointer<GMenuModel>! { get }

    /// Required Initialiser for types conforming to `MenuModelProtocol`
    init(raw: UnsafeMutableRawPointer)
}

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
///
/// The `MenuModelRef` type acts as a lightweight Swift reference to an underlying `GMenuModel` instance.
/// It exposes methods that can operate on this data type through `MenuModelProtocol` conformance.
/// Use `MenuModelRef` only as an `unowned` reference to an existing `GMenuModel` instance.
///
public struct MenuModelRef: MenuModelProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GMenuModel` instance.
    /// For type-safe access, use the generated, typed pointer `menu_model_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MenuModelRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GMenuModel>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GMenuModel>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GMenuModel>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GMenuModel>?) {
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

    /// Reference intialiser for a related type that implements `MenuModelProtocol`
    @inlinable init<T: MenuModelProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: MenuModelProtocol>(_ other: T) -> MenuModelRef { MenuModelRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

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
///
/// The `MenuModel` type acts as a reference-counted owner of an underlying `GMenuModel` instance.
/// It provides the methods that can operate on this data type through `MenuModelProtocol` conformance.
/// Use `MenuModel` as a strong reference or owner of a `GMenuModel` instance.
///
open class MenuModel: GLibObject.Object, MenuModelProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GMenuModel>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GMenuModel>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuModel` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GMenuModel>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GMenuModel>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GMenuModel`.
    /// i.e., ownership is transferred to the `MenuModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GMenuModel>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MenuModelProtocol`
    /// Will retain `GMenuModel`.
    /// - Parameter other: an instance of a related type that implements `MenuModelProtocol`
    @inlinable public init<T: MenuModelProtocol>(menuModel other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no MenuModel properties

public enum MenuModelSignalName: String, SignalNameProtocol {
    /// Emitted when a change has occurred to the menu.
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

// MARK: MenuModel signals
public extension MenuModelProtocol {
    /// Connect a Swift signal handler to the given, typed `MenuModelSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: MenuModelSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `MenuModelSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: MenuModelSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted when a change has occurred to the menu.
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
    /// - Note: This represents the underlying `items-changed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter position: the position of the change
    /// - Parameter removed: the number of items removed
    /// - Parameter added: the number of items added
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `itemsChanged` signal is emitted
    @discardableResult @inlinable func onItemsChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuModelRef, _ position: Int, _ removed: Int, _ added: Int) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder4<MenuModelRef, Int, Int, Int, Void>
        let cCallback: @convention(c) (gpointer, gint, gint, gint, gpointer) -> Void = { unownedSelf, arg1, arg2, arg3, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuModelRef(raw: unownedSelf), Int(arg1), Int(arg2), Int(arg3))
            return output
        }
        return connect(
            signal: .itemsChanged,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `items-changed` signal for using the `connect(signal:)` methods
    static var itemsChangedSignal: MenuModelSignalName { .itemsChanged }
    
    
}

// MARK: MenuModel Class: MenuModelProtocol extension (methods and fields)
public extension MenuModelProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMenuModel` instance.
    @inlinable var menu_model_ptr: UnsafeMutablePointer<GMenuModel>! { return ptr?.assumingMemoryBound(to: GMenuModel.self) }


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
    @inlinable func getItemAttributeValue(itemIndex: Int, attribute: UnsafePointer<gchar>!, expectedType: GLib.VariantTypeRef? = nil) -> GLib.VariantRef! {
        let rv = GLib.VariantRef(g_menu_model_get_item_attribute_value(menu_model_ptr, gint(itemIndex), attribute, expectedType?.variant_type_ptr))
        return rv
    }
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
    @inlinable func getItemAttributeValue<VariantTypeT: GLib.VariantTypeProtocol>(itemIndex: Int, attribute: UnsafePointer<gchar>!, expectedType: VariantTypeT?) -> GLib.VariantRef! {
        let rv = GLib.VariantRef(g_menu_model_get_item_attribute_value(menu_model_ptr, gint(itemIndex), attribute, expectedType?.variant_type_ptr))
        return rv
    }

    /// Queries the item at position `item_index` in `model` for the link
    /// specified by `link`.
    /// 
    /// If the link exists, the linked `GMenuModel` is returned.  If the link
    /// does not exist, `nil` is returned.
    @inlinable func getItemLink(itemIndex: Int, link: UnsafePointer<gchar>!) -> MenuModelRef! {
        guard let rv = MenuModelRef(gconstpointer: gconstpointer(g_menu_model_get_item_link(menu_model_ptr, gint(itemIndex), link))) else { return nil }
        return rv
    }

    /// Query the number of items in `model`.
    @inlinable func getNItems() -> Int {
        let rv = Int(g_menu_model_get_n_items(menu_model_ptr))
        return rv
    }

    /// Requests emission of the `GMenuModel::items-changed` signal on `model`.
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
    @inlinable func itemsChanged(position: Int, removed: Int, added: Int) {
        g_menu_model_items_changed(menu_model_ptr, gint(position), gint(removed), gint(added))
    
    }

    /// Creates a `GMenuAttributeIter` to iterate over the attributes of
    /// the item at position `item_index` in `model`.
    /// 
    /// You must free the iterator with `g_object_unref()` when you are done.
    @inlinable func iterateItemAttributes(itemIndex: Int) -> MenuAttributeIterRef! {
        let rv = MenuAttributeIterRef(gconstpointer: gconstpointer(g_menu_model_iterate_item_attributes(menu_model_ptr, gint(itemIndex))))
        return rv
    }

    /// Creates a `GMenuLinkIter` to iterate over the links of the item at
    /// position `item_index` in `model`.
    /// 
    /// You must free the iterator with `g_object_unref()` when you are done.
    @inlinable func iterateItemLinks(itemIndex: Int) -> MenuLinkIterRef! {
        let rv = MenuLinkIterRef(gconstpointer: gconstpointer(g_menu_model_iterate_item_links(menu_model_ptr, gint(itemIndex))))
        return rv
    }
    /// Queries if `model` is mutable.
    /// 
    /// An immutable `GMenuModel` will never emit the `GMenuModel::items-changed`
    /// signal. Consumers of the model may make optimisations accordingly.
    @inlinable var isMutable: Bool {
        /// Queries if `model` is mutable.
        /// 
        /// An immutable `GMenuModel` will never emit the `GMenuModel::items-changed`
        /// signal. Consumers of the model may make optimisations accordingly.
        get {
            let rv = ((g_menu_model_is_mutable(menu_model_ptr)) != 0)
            return rv
        }
    }

    /// Query the number of items in `model`.
    @inlinable var nItems: Int {
        /// Query the number of items in `model`.
        get {
            let rv = Int(g_menu_model_get_n_items(menu_model_ptr))
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = menu_model_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - MountOperation Class

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
///
/// The `MountOperationProtocol` protocol exposes the methods and properties of an underlying `GMountOperation` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MountOperation`.
/// Alternatively, use `MountOperationRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol MountOperationProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GMountOperation` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GMountOperation` instance.
    var mount_operation_ptr: UnsafeMutablePointer<GMountOperation>! { get }

    /// Required Initialiser for types conforming to `MountOperationProtocol`
    init(raw: UnsafeMutableRawPointer)
}

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
///
/// The `MountOperationRef` type acts as a lightweight Swift reference to an underlying `GMountOperation` instance.
/// It exposes methods that can operate on this data type through `MountOperationProtocol` conformance.
/// Use `MountOperationRef` only as an `unowned` reference to an existing `GMountOperation` instance.
///
public struct MountOperationRef: MountOperationProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GMountOperation` instance.
    /// For type-safe access, use the generated, typed pointer `mount_operation_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MountOperationRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GMountOperation>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GMountOperation>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GMountOperation>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GMountOperation>?) {
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

    /// Reference intialiser for a related type that implements `MountOperationProtocol`
    @inlinable init<T: MountOperationProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: MountOperationProtocol>(_ other: T) -> MountOperationRef { MountOperationRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new mount operation.
    @inlinable init() {
        let rv = g_mount_operation_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

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
///
/// The `MountOperation` type acts as a reference-counted owner of an underlying `GMountOperation` instance.
/// It provides the methods that can operate on this data type through `MountOperationProtocol` conformance.
/// Use `MountOperation` as a strong reference or owner of a `GMountOperation` instance.
///
open class MountOperation: GLibObject.Object, MountOperationProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MountOperation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GMountOperation>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MountOperation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GMountOperation>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MountOperation` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MountOperation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MountOperation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GMountOperation>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MountOperation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GMountOperation>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GMountOperation`.
    /// i.e., ownership is transferred to the `MountOperation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GMountOperation>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MountOperationProtocol`
    /// Will retain `GMountOperation`.
    /// - Parameter other: an instance of a related type that implements `MountOperationProtocol`
    @inlinable public init<T: MountOperationProtocol>(mountOperation other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new mount operation.
    @inlinable public init() {
        let rv = g_mount_operation_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum MountOperationPropertyName: String, PropertyNameProtocol {
    /// Whether to use an anonymous user when authenticating.
    case anonymous = "anonymous"
    /// The index of the user's choice when a question is asked during the
    /// mount operation. See the `GMountOperation::ask-question` signal.
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: MountOperationPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a MountOperation property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: MountOperationPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a MountOperation property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: MountOperationPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
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
    /// mount operation. See the `GMountOperation::ask-question` signal.
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

// MARK: MountOperation signals
public extension MountOperationProtocol {
    /// Connect a Swift signal handler to the given, typed `MountOperationSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: MountOperationSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `MountOperationSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: MountOperationSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted when asking the user a question and gives a list of
    /// choices for the user to choose from.
    /// 
    /// If the message contains a line break, the first line should be
    /// presented as a heading. For example, it may be used as the
    /// primary text in a `GtkMessageDialog`.
    /// - Note: This represents the underlying `ask-question` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter message: string containing a message to display to the user.
    /// - Parameter choices: an array of strings for each possible choice.
    /// - Parameter handler: The signal handler to call
    /// - Warning: a `onAskQuestion` wrapper for this signal could not be generated because it contains unimplemented features: { (3)  Void argument is not yet supported, (7)  array argument or return type is not allowed }
    /// - Note: Instead, you can connect `askQuestionSignal` using the `connect(signal:)` methods
    static var askQuestionSignal: MountOperationSignalName { .askQuestion }
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
    /// - Note: This represents the underlying `show-processes` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter message: string containing a message to display to the user.
    /// - Parameter processes: an array of `GPid` for processes   blocking the operation.
    /// - Parameter choices: an array of strings for each possible choice.
    /// - Parameter handler: The signal handler to call
    /// - Warning: a `onShowProcesses` wrapper for this signal could not be generated because it contains unimplemented features: { (3)  Void argument is not yet supported, (7)  array argument or return type is not allowed }
    /// - Note: Instead, you can connect `showProcessesSignal` using the `connect(signal:)` methods
    static var showProcessesSignal: MountOperationSignalName { .showProcesses }
    /// Emitted by the backend when e.g. a device becomes unavailable
    /// while a mount operation is in progress.
    /// 
    /// Implementations of GMountOperation should handle this signal
    /// by dismissing open password dialogs.
    /// - Note: This represents the underlying `aborted` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `aborted` signal is emitted
    @discardableResult @inlinable func onAborted(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MountOperationRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<MountOperationRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MountOperationRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .aborted,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `aborted` signal for using the `connect(signal:)` methods
    static var abortedSignal: MountOperationSignalName { .aborted }
    
    /// Emitted when a mount operation asks the user for a password.
    /// 
    /// If the message contains a line break, the first line should be
    /// presented as a heading. For example, it may be used as the
    /// primary text in a `GtkMessageDialog`.
    /// - Note: This represents the underlying `ask-password` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter message: string containing a message to display to the user.
    /// - Parameter defaultUser: string containing the default user name.
    /// - Parameter defaultDomain: string containing the default domain.
    /// - Parameter flags: a set of `GAskPasswordFlags`.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `askPassword` signal is emitted
    @discardableResult @inlinable func onAskPassword(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MountOperationRef, _ message: String, _ defaultUser: String, _ defaultDomain: String, _ flags: AskPasswordFlags) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder5<MountOperationRef, String, String, String, AskPasswordFlags, Void>
        let cCallback: @convention(c) (gpointer, UnsafeMutablePointer<gchar>?, UnsafeMutablePointer<gchar>?, UnsafeMutablePointer<gchar>?, UInt32, gpointer) -> Void = { unownedSelf, arg1, arg2, arg3, arg4, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MountOperationRef(raw: unownedSelf), arg1.map({ String(cString: $0) })!, arg2.map({ String(cString: $0) })!, arg3.map({ String(cString: $0) })!, AskPasswordFlags(arg4))
            return output
        }
        return connect(
            signal: .askPassword,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `ask-password` signal for using the `connect(signal:)` methods
    static var askPasswordSignal: MountOperationSignalName { .askPassword }
    
    /// Emitted when the user has replied to the mount operation.
    /// - Note: This represents the underlying `reply` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter result: a `GMountOperationResult` indicating how the request was handled
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `reply` signal is emitted
    @discardableResult @inlinable func onReply(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MountOperationRef, _ result: MountOperationResult) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MountOperationRef, MountOperationResult, Void>
        let cCallback: @convention(c) (gpointer, UInt32, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MountOperationRef(raw: unownedSelf), MountOperationResult(arg1))
            return output
        }
        return connect(
            signal: .reply,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `reply` signal for using the `connect(signal:)` methods
    static var replySignal: MountOperationSignalName { .reply }
    
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
    /// - Note: This represents the underlying `show-unmount-progress` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter message: string containing a message to display to the user
    /// - Parameter timeLeft: the estimated time left before the operation completes,     in microseconds, or -1
    /// - Parameter bytesLeft: the amount of bytes to be written before the operation     completes (or -1 if such amount is not known), or zero if the operation     is completed
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `showUnmountProgress` signal is emitted
    @discardableResult @inlinable func onShowUnmountProgress(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MountOperationRef, _ message: String, _ timeLeft: gint64, _ bytesLeft: gint64) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder4<MountOperationRef, String, gint64, gint64, Void>
        let cCallback: @convention(c) (gpointer, UnsafeMutablePointer<gchar>?, gint64, gint64, gpointer) -> Void = { unownedSelf, arg1, arg2, arg3, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MountOperationRef(raw: unownedSelf), arg1.map({ String(cString: $0) })!, arg2, arg3)
            return output
        }
        return connect(
            signal: .showUnmountProgress,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `show-unmount-progress` signal for using the `connect(signal:)` methods
    static var showUnmountProgressSignal: MountOperationSignalName { .showUnmountProgress }
    
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
    /// - Note: This represents the underlying `notify::anonymous` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyAnonymous` signal is emitted
    @discardableResult @inlinable func onNotifyAnonymous(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MountOperationRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MountOperationRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MountOperationRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyAnonymous,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::anonymous` signal for using the `connect(signal:)` methods
    static var notifyAnonymousSignal: MountOperationSignalName { .notifyAnonymous }
    
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
    /// - Note: This represents the underlying `notify::choice` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyChoice` signal is emitted
    @discardableResult @inlinable func onNotifyChoice(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MountOperationRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MountOperationRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MountOperationRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyChoice,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::choice` signal for using the `connect(signal:)` methods
    static var notifyChoiceSignal: MountOperationSignalName { .notifyChoice }
    
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
    /// - Note: This represents the underlying `notify::domain` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyDomain` signal is emitted
    @discardableResult @inlinable func onNotifyDomain(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MountOperationRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MountOperationRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MountOperationRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyDomain,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::domain` signal for using the `connect(signal:)` methods
    static var notifyDomainSignal: MountOperationSignalName { .notifyDomain }
    
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
    /// - Note: This represents the underlying `notify::is-tcrypt-hidden-volume` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyIsTcryptHiddenVolume` signal is emitted
    @discardableResult @inlinable func onNotifyIsTcryptHiddenVolume(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MountOperationRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MountOperationRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MountOperationRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyIsTcryptHiddenVolume,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::is-tcrypt-hidden-volume` signal for using the `connect(signal:)` methods
    static var notifyIsTcryptHiddenVolumeSignal: MountOperationSignalName { .notifyIsTcryptHiddenVolume }
    
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
    /// - Note: This represents the underlying `notify::is-tcrypt-system-volume` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyIsTcryptSystemVolume` signal is emitted
    @discardableResult @inlinable func onNotifyIsTcryptSystemVolume(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MountOperationRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MountOperationRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MountOperationRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyIsTcryptSystemVolume,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::is-tcrypt-system-volume` signal for using the `connect(signal:)` methods
    static var notifyIsTcryptSystemVolumeSignal: MountOperationSignalName { .notifyIsTcryptSystemVolume }
    
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
    /// - Note: This represents the underlying `notify::password` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyPassword` signal is emitted
    @discardableResult @inlinable func onNotifyPassword(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MountOperationRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MountOperationRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MountOperationRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyPassword,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::password` signal for using the `connect(signal:)` methods
    static var notifyPasswordSignal: MountOperationSignalName { .notifyPassword }
    
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
    /// - Note: This represents the underlying `notify::password-save` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyPasswordSave` signal is emitted
    @discardableResult @inlinable func onNotifyPasswordSave(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MountOperationRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MountOperationRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MountOperationRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyPasswordSave,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::password-save` signal for using the `connect(signal:)` methods
    static var notifyPasswordSaveSignal: MountOperationSignalName { .notifyPasswordSave }
    
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
    /// - Note: This represents the underlying `notify::pim` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyPim` signal is emitted
    @discardableResult @inlinable func onNotifyPim(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MountOperationRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MountOperationRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MountOperationRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyPim,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::pim` signal for using the `connect(signal:)` methods
    static var notifyPimSignal: MountOperationSignalName { .notifyPim }
    
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
    /// - Note: This represents the underlying `notify::username` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyUsername` signal is emitted
    @discardableResult @inlinable func onNotifyUsername(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MountOperationRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MountOperationRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MountOperationRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyUsername,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::username` signal for using the `connect(signal:)` methods
    static var notifyUsernameSignal: MountOperationSignalName { .notifyUsername }
    
}

// MARK: MountOperation Class: MountOperationProtocol extension (methods and fields)
public extension MountOperationProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMountOperation` instance.
    @inlinable var mount_operation_ptr: UnsafeMutablePointer<GMountOperation>! { return ptr?.assumingMemoryBound(to: GMountOperation.self) }

    /// Check to see whether the mount operation is being used
    /// for an anonymous user.
    @inlinable func getAnonymous() -> Bool {
        let rv = ((g_mount_operation_get_anonymous(mount_operation_ptr)) != 0)
        return rv
    }

    /// Gets a choice from the mount operation.
    @inlinable func getChoice() -> Int {
        let rv = Int(g_mount_operation_get_choice(mount_operation_ptr))
        return rv
    }

    /// Gets the domain of the mount operation.
    @inlinable func getDomain() -> String! {
        let rv = g_mount_operation_get_domain(mount_operation_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Check to see whether the mount operation is being used
    /// for a TCRYPT hidden volume.
    @inlinable func getIsTcryptHiddenVolume() -> Bool {
        let rv = ((g_mount_operation_get_is_tcrypt_hidden_volume(mount_operation_ptr)) != 0)
        return rv
    }

    /// Check to see whether the mount operation is being used
    /// for a TCRYPT system volume.
    @inlinable func getIsTcryptSystemVolume() -> Bool {
        let rv = ((g_mount_operation_get_is_tcrypt_system_volume(mount_operation_ptr)) != 0)
        return rv
    }

    /// Gets a password from the mount operation.
    @inlinable func getPassword() -> String! {
        let rv = g_mount_operation_get_password(mount_operation_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the state of saving passwords for the mount operation.
    @inlinable func getPasswordSave() -> GPasswordSave {
        let rv = g_mount_operation_get_password_save(mount_operation_ptr)
        return rv
    }

    /// Gets a PIM from the mount operation.
    @inlinable func getPim() -> Int {
        let rv = Int(g_mount_operation_get_pim(mount_operation_ptr))
        return rv
    }

    /// Get the user name from the mount operation.
    @inlinable func getUsername() -> String! {
        let rv = g_mount_operation_get_username(mount_operation_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Emits the `GMountOperation::reply` signal.
    @inlinable func reply(result: GMountOperationResult) {
        g_mount_operation_reply(mount_operation_ptr, result)
    
    }

    /// Sets the mount operation to use an anonymous user if `anonymous` is `true`.
    @inlinable func set(anonymous: Bool) {
        g_mount_operation_set_anonymous(mount_operation_ptr, gboolean((anonymous) ? 1 : 0))
    
    }

    /// Sets a default choice for the mount operation.
    @inlinable func set(choice: Int) {
        g_mount_operation_set_choice(mount_operation_ptr, gint(choice))
    
    }

    /// Sets the mount operation's domain.
    @inlinable func set(domain: UnsafePointer<CChar>? = nil) {
        g_mount_operation_set_domain(mount_operation_ptr, domain)
    
    }

    /// Sets the mount operation to use a hidden volume if `hidden_volume` is `true`.
    @inlinable func setIsTcrypt(hiddenVolume: Bool) {
        g_mount_operation_set_is_tcrypt_hidden_volume(mount_operation_ptr, gboolean((hiddenVolume) ? 1 : 0))
    
    }

    /// Sets the mount operation to use a system volume if `system_volume` is `true`.
    @inlinable func setIsTcrypt(systemVolume: Bool) {
        g_mount_operation_set_is_tcrypt_system_volume(mount_operation_ptr, gboolean((systemVolume) ? 1 : 0))
    
    }

    /// Sets the mount operation's password to `password`.
    @inlinable func set(password: UnsafePointer<CChar>? = nil) {
        g_mount_operation_set_password(mount_operation_ptr, password)
    
    }

    /// Sets the state of saving passwords for the mount operation.
    @inlinable func setPassword(save: GPasswordSave) {
        g_mount_operation_set_password_save(mount_operation_ptr, save)
    
    }

    /// Sets the mount operation's PIM to `pim`.
    @inlinable func set(pim: Int) {
        g_mount_operation_set_pim(mount_operation_ptr, guint(pim))
    
    }

    /// Sets the user name within `op` to `username`.
    @inlinable func set(username: UnsafePointer<CChar>? = nil) {
        g_mount_operation_set_username(mount_operation_ptr, username)
    
    }
    /// Whether to use an anonymous user when authenticating.
    @inlinable var anonymous: Bool {
        /// Check to see whether the mount operation is being used
        /// for an anonymous user.
        get {
            let rv = ((g_mount_operation_get_anonymous(mount_operation_ptr)) != 0)
            return rv
        }
        /// Sets the mount operation to use an anonymous user if `anonymous` is `true`.
        nonmutating set {
            g_mount_operation_set_anonymous(mount_operation_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// The index of the user's choice when a question is asked during the
    /// mount operation. See the `GMountOperation::ask-question` signal.
    @inlinable var choice: Int {
        /// Gets a choice from the mount operation.
        get {
            let rv = Int(g_mount_operation_get_choice(mount_operation_ptr))
            return rv
        }
        /// Sets a default choice for the mount operation.
        nonmutating set {
            g_mount_operation_set_choice(mount_operation_ptr, gint(newValue))
        }
    }

    /// The domain to use for the mount operation.
    @inlinable var domain: String! {
        /// Gets the domain of the mount operation.
        get {
            let rv = g_mount_operation_get_domain(mount_operation_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the mount operation's domain.
        nonmutating set {
            g_mount_operation_set_domain(mount_operation_ptr, newValue)
        }
    }

    /// Check to see whether the mount operation is being used
    /// for a TCRYPT hidden volume.
    @inlinable var isTcryptHiddenVolume: Bool {
        /// Check to see whether the mount operation is being used
        /// for a TCRYPT hidden volume.
        get {
            let rv = ((g_mount_operation_get_is_tcrypt_hidden_volume(mount_operation_ptr)) != 0)
            return rv
        }
        /// Sets the mount operation to use a hidden volume if `hidden_volume` is `true`.
        nonmutating set {
            g_mount_operation_set_is_tcrypt_hidden_volume(mount_operation_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Check to see whether the mount operation is being used
    /// for a TCRYPT system volume.
    @inlinable var isTcryptSystemVolume: Bool {
        /// Check to see whether the mount operation is being used
        /// for a TCRYPT system volume.
        get {
            let rv = ((g_mount_operation_get_is_tcrypt_system_volume(mount_operation_ptr)) != 0)
            return rv
        }
        /// Sets the mount operation to use a system volume if `system_volume` is `true`.
        nonmutating set {
            g_mount_operation_set_is_tcrypt_system_volume(mount_operation_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// The password that is used for authentication when carrying out
    /// the mount operation.
    @inlinable var password: String! {
        /// Gets a password from the mount operation.
        get {
            let rv = g_mount_operation_get_password(mount_operation_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the mount operation's password to `password`.
        nonmutating set {
            g_mount_operation_set_password(mount_operation_ptr, newValue)
        }
    }

    /// Gets the state of saving passwords for the mount operation.
    @inlinable var passwordSave: GPasswordSave {
        /// Gets the state of saving passwords for the mount operation.
        get {
            let rv = g_mount_operation_get_password_save(mount_operation_ptr)
            return rv
        }
        /// Sets the state of saving passwords for the mount operation.
        nonmutating set {
            g_mount_operation_set_password_save(mount_operation_ptr, newValue)
        }
    }

    /// The VeraCrypt PIM value, when unlocking a VeraCrypt volume. See
    /// [the VeraCrypt documentation](https://www.veracrypt.fr/en/Personal`20Iterations``20Multiplier``20``(PIM)`.html).
    @inlinable var pim: Int {
        /// Gets a PIM from the mount operation.
        get {
            let rv = Int(g_mount_operation_get_pim(mount_operation_ptr))
            return rv
        }
        /// Sets the mount operation's PIM to `pim`.
        nonmutating set {
            g_mount_operation_set_pim(mount_operation_ptr, guint(newValue))
        }
    }

    /// The user name that is used for authentication when carrying out
    /// the mount operation.
    @inlinable var username: String! {
        /// Get the user name from the mount operation.
        get {
            let rv = g_mount_operation_get_username(mount_operation_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the user name within `op` to `username`.
        nonmutating set {
            g_mount_operation_set_username(mount_operation_ptr, newValue)
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = mount_operation_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - NativeSocketAddress Class

/// A socket address of some unknown native type.
///
/// The `NativeSocketAddressProtocol` protocol exposes the methods and properties of an underlying `GNativeSocketAddress` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NativeSocketAddress`.
/// Alternatively, use `NativeSocketAddressRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol NativeSocketAddressProtocol: SocketAddressProtocol {
        /// Untyped pointer to the underlying `GNativeSocketAddress` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GNativeSocketAddress` instance.
    var native_socket_address_ptr: UnsafeMutablePointer<GNativeSocketAddress>! { get }

    /// Required Initialiser for types conforming to `NativeSocketAddressProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A socket address of some unknown native type.
///
/// The `NativeSocketAddressRef` type acts as a lightweight Swift reference to an underlying `GNativeSocketAddress` instance.
/// It exposes methods that can operate on this data type through `NativeSocketAddressProtocol` conformance.
/// Use `NativeSocketAddressRef` only as an `unowned` reference to an existing `GNativeSocketAddress` instance.
///
public struct NativeSocketAddressRef: NativeSocketAddressProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GNativeSocketAddress` instance.
    /// For type-safe access, use the generated, typed pointer `native_socket_address_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension NativeSocketAddressRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GNativeSocketAddress>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GNativeSocketAddress>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GNativeSocketAddress>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GNativeSocketAddress>?) {
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

    /// Reference intialiser for a related type that implements `NativeSocketAddressProtocol`
    @inlinable init<T: NativeSocketAddressProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: NativeSocketAddressProtocol>(_ other: T) -> NativeSocketAddressRef { NativeSocketAddressRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GNativeSocketAddress` for `native` and `len`.
    @inlinable init( native: gpointer! = nil, len: Int) {
        let rv = g_native_socket_address_new(native, gsize(len))
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// A socket address of some unknown native type.
///
/// The `NativeSocketAddress` type acts as a reference-counted owner of an underlying `GNativeSocketAddress` instance.
/// It provides the methods that can operate on this data type through `NativeSocketAddressProtocol` conformance.
/// Use `NativeSocketAddress` as a strong reference or owner of a `GNativeSocketAddress` instance.
///
open class NativeSocketAddress: SocketAddress, NativeSocketAddressProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NativeSocketAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GNativeSocketAddress>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NativeSocketAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GNativeSocketAddress>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NativeSocketAddress` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NativeSocketAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NativeSocketAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GNativeSocketAddress>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NativeSocketAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GNativeSocketAddress>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GNativeSocketAddress`.
    /// i.e., ownership is transferred to the `NativeSocketAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GNativeSocketAddress>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `NativeSocketAddressProtocol`
    /// Will retain `GNativeSocketAddress`.
    /// - Parameter other: an instance of a related type that implements `NativeSocketAddressProtocol`
    @inlinable public init<T: NativeSocketAddressProtocol>(nativeSocketAddress other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GNativeSocketAddress` for `native` and `len`.
    @inlinable public override init( native: gpointer! = nil, len: Int) {
        let rv = g_native_socket_address_new(native, gsize(len))
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: NativeSocketAddressPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a NativeSocketAddress property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: NativeSocketAddressPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a NativeSocketAddress property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: NativeSocketAddressPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
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
    case notifyFamily = "notify::family"
}

// MARK: NativeSocketAddress has no signals
// MARK: NativeSocketAddress Class: NativeSocketAddressProtocol extension (methods and fields)
public extension NativeSocketAddressProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GNativeSocketAddress` instance.
    @inlinable var native_socket_address_ptr: UnsafeMutablePointer<GNativeSocketAddress>! { return ptr?.assumingMemoryBound(to: GNativeSocketAddress.self) }


    @inlinable var parentInstance: GSocketAddress {
        get {
            let rv = native_socket_address_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



