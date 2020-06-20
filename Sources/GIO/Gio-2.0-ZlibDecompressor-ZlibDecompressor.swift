import CGLib
import GLib
import GLibObject

// MARK: - ZlibDecompressor Class

/// The `ZlibDecompressorProtocol` protocol exposes the methods and properties of an underlying `GZlibDecompressor` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ZlibDecompressor`.
/// Alternatively, use `ZlibDecompressorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Zlib decompression
public protocol ZlibDecompressorProtocol: ObjectProtocol, ConverterProtocol {
        /// Untyped pointer to the underlying `GZlibDecompressor` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GZlibDecompressor` instance.
    var zlib_decompressor_ptr: UnsafeMutablePointer<GZlibDecompressor> { get }
}

/// The `ZlibDecompressorRef` type acts as a lightweight Swift reference to an underlying `GZlibDecompressor` instance.
/// It exposes methods that can operate on this data type through `ZlibDecompressorProtocol` conformance.
/// Use `ZlibDecompressorRef` only as an `unowned` reference to an existing `GZlibDecompressor` instance.
///
/// Zlib decompression
public struct ZlibDecompressorRef: ZlibDecompressorProtocol {
        /// Untyped pointer to the underlying `GZlibDecompressor` instance.
    /// For type-safe access, use the generated, typed pointer `zlib_decompressor_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ZlibDecompressorRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GZlibDecompressor>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ZlibDecompressorProtocol`
    init<T: ZlibDecompressorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibDecompressorProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibDecompressorProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibDecompressorProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibDecompressorProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibDecompressorProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GZlibDecompressor`.
    init( format: ZlibCompressorFormat) {
        let rv: UnsafeMutablePointer<GZlibDecompressor>! = cast(g_zlib_decompressor_new(format))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
}

/// The `ZlibDecompressor` type acts as a reference-counted owner of an underlying `GZlibDecompressor` instance.
/// It provides the methods that can operate on this data type through `ZlibDecompressorProtocol` conformance.
/// Use `ZlibDecompressor` as a strong reference or owner of a `GZlibDecompressor` instance.
///
/// Zlib decompression
open class ZlibDecompressor: Object, ZlibDecompressorProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ZlibDecompressor` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GZlibDecompressor>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GZlibDecompressor`.
    /// i.e., ownership is transferred to the `ZlibDecompressor` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GZlibDecompressor>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `ZlibDecompressorProtocol`
    /// Will retain `GZlibDecompressor`.
    /// - Parameter other: an instance of a related type that implements `ZlibDecompressorProtocol`
    public init<T: ZlibDecompressorProtocol>(zlibDecompressor other: T) {
        super.init(retaining: cast(other.zlib_decompressor_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibDecompressorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibDecompressorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibDecompressorProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibDecompressorProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibDecompressorProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibDecompressorProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibDecompressorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ZlibDecompressorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GZlibDecompressor`.
    public init( format: ZlibCompressorFormat) {
        let rv: UnsafeMutablePointer<GZlibDecompressor>! = cast(g_zlib_decompressor_new(format))
        super.init(cast(rv))
    }


}

public enum ZlibDecompressorPropertyName: String, PropertyNameProtocol {
    /// A `GFileInfo` containing the information found in the GZIP header
    /// of the data stream processed, or `nil` if the header was not yet
    /// fully processed, is not present at all, or the compressor's
    /// `GZlibDecompressor:format` property is not `G_ZLIB_COMPRESSOR_FORMAT_GZIP`.
    case fileInfo = "file-info"
    case format = "format"
}

public extension ZlibDecompressorProtocol {
    /// Bind a `ZlibDecompressorPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: ZlibDecompressorPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(zlib_decompressor_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

    /// Get the value of a ZlibDecompressor property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func get(property: ZlibDecompressorPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a ZlibDecompressor property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func set(property: ZlibDecompressorPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum ZlibDecompressorSignalName: String, SignalNameProtocol {
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
    /// A `GFileInfo` containing the information found in the GZIP header
    /// of the data stream processed, or `nil` if the header was not yet
    /// fully processed, is not present at all, or the compressor's
    /// `GZlibDecompressor:format` property is not `G_ZLIB_COMPRESSOR_FORMAT_GZIP`.
    case notifyFileInfo = "notify::file-info"
    case notifyFormat = "notify::format"
}

public extension ZlibDecompressorProtocol {
    /// Connect a `ZlibDecompressorSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: ZlibDecompressorSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(zlib_decompressor_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: ZlibDecompressor Class: ZlibDecompressorProtocol extension (methods and fields)
public extension ZlibDecompressorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GZlibDecompressor` instance.
    var zlib_decompressor_ptr: UnsafeMutablePointer<GZlibDecompressor> { return ptr.assumingMemoryBound(to: GZlibDecompressor.self) }

    /// Retrieves the `GFileInfo` constructed from the GZIP header data
    /// of compressed data processed by `compressor`, or `nil` if `decompressor`'s
    /// `GZlibDecompressor:format` property is not `G_ZLIB_COMPRESSOR_FORMAT_GZIP`,
    /// or the header data was not fully processed yet, or it not present in the
    /// data stream at all.
    func getFileInfo() -> UnsafeMutablePointer<GFileInfo>! {
        let rv: UnsafeMutablePointer<GFileInfo>! = cast(g_zlib_decompressor_get_file_info(cast(zlib_decompressor_ptr)))
        return cast(rv)
    }
    /// Retrieves the `GFileInfo` constructed from the GZIP header data
    /// of compressed data processed by `compressor`, or `nil` if `decompressor`'s
    /// `GZlibDecompressor:format` property is not `G_ZLIB_COMPRESSOR_FORMAT_GZIP`,
    /// or the header data was not fully processed yet, or it not present in the
    /// data stream at all.
    var fileInfo: UnsafeMutablePointer<GFileInfo>! {
        /// Retrieves the `GFileInfo` constructed from the GZIP header data
        /// of compressed data processed by `compressor`, or `nil` if `decompressor`'s
        /// `GZlibDecompressor:format` property is not `G_ZLIB_COMPRESSOR_FORMAT_GZIP`,
        /// or the header data was not fully processed yet, or it not present in the
        /// data stream at all.
        get {
            let rv: UnsafeMutablePointer<GFileInfo>! = cast(g_zlib_decompressor_get_file_info(cast(zlib_decompressor_ptr)))
            return cast(rv)
        }
    }


}



