import CGLib
import GLib
import GLibObject

// MARK: - CharsetConverter Class

/// The `CharsetConverterProtocol` protocol exposes the methods and properties of an underlying `GCharsetConverter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CharsetConverter`.
/// Alternatively, use `CharsetConverterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GCharsetConverter` is an implementation of `GConverter` based on
/// GIConv.
public protocol CharsetConverterProtocol: ObjectProtocol, ConverterProtocol, InitableProtocol {
        /// Untyped pointer to the underlying `GCharsetConverter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GCharsetConverter` instance.
    var charset_converter_ptr: UnsafeMutablePointer<GCharsetConverter>! { get }

}

/// The `CharsetConverterRef` type acts as a lightweight Swift reference to an underlying `GCharsetConverter` instance.
/// It exposes methods that can operate on this data type through `CharsetConverterProtocol` conformance.
/// Use `CharsetConverterRef` only as an `unowned` reference to an existing `GCharsetConverter` instance.
///
/// `GCharsetConverter` is an implementation of `GConverter` based on
/// GIConv.
public struct CharsetConverterRef: CharsetConverterProtocol {
        /// Untyped pointer to the underlying `GCharsetConverter` instance.
    /// For type-safe access, use the generated, typed pointer `charset_converter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CharsetConverterRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GCharsetConverter>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GCharsetConverter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GCharsetConverter>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GCharsetConverter>?) {
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

    /// Reference intialiser for a related type that implements `CharsetConverterProtocol`
    @inlinable init<T: CharsetConverterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GCharsetConverter`.
    @inlinable init( to_charset: UnsafePointer<gchar>!, fromCharset from_charset: UnsafePointer<gchar>!) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_charset_converter_new(to_charset, from_charset, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `CharsetConverter` type acts as a reference-counted owner of an underlying `GCharsetConverter` instance.
/// It provides the methods that can operate on this data type through `CharsetConverterProtocol` conformance.
/// Use `CharsetConverter` as a strong reference or owner of a `GCharsetConverter` instance.
///
/// `GCharsetConverter` is an implementation of `GConverter` based on
/// GIConv.
open class CharsetConverter: Object, CharsetConverterProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CharsetConverter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GCharsetConverter>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CharsetConverter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GCharsetConverter>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CharsetConverter` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CharsetConverter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CharsetConverter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GCharsetConverter>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CharsetConverter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GCharsetConverter>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GCharsetConverter`.
    /// i.e., ownership is transferred to the `CharsetConverter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GCharsetConverter>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `CharsetConverterProtocol`
    /// Will retain `GCharsetConverter`.
    /// - Parameter other: an instance of a related type that implements `CharsetConverterProtocol`
    @inlinable public init<T: CharsetConverterProtocol>(charsetConverter other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GCharsetConverter`.
    @inlinable public init( to_charset: UnsafePointer<gchar>!, fromCharset from_charset: UnsafePointer<gchar>!) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_charset_converter_new(to_charset, from_charset, &error)
        if let error = error { throw GLibError(error) }
        super.init(gpointer: (rv))
    }


}

public enum CharsetConverterPropertyName: String, PropertyNameProtocol {
    case fromCharset = "from-charset"
    case toCharset = "to-charset"
    case useFallback = "use-fallback"
}

public extension CharsetConverterProtocol {
    /// Bind a `CharsetConverterPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: CharsetConverterPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a CharsetConverter property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: CharsetConverterPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a CharsetConverter property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: CharsetConverterPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum CharsetConverterSignalName: String, SignalNameProtocol {
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
    case notifyFromCharset = "notify::from-charset"
    case notifyToCharset = "notify::to-charset"
    case notifyUseFallback = "notify::use-fallback"
}

public extension CharsetConverterProtocol {
    /// Connect a `CharsetConverterSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: CharsetConverterSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: CharsetConverter Class: CharsetConverterProtocol extension (methods and fields)
public extension CharsetConverterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GCharsetConverter` instance.
    @inlinable var charset_converter_ptr: UnsafeMutablePointer<GCharsetConverter>! { return ptr?.assumingMemoryBound(to: GCharsetConverter.self) }

    /// Gets the number of fallbacks that `converter` has applied so far.
    @inlinable func getNumFallbacks() -> Int {
        let rv = Int(g_charset_converter_get_num_fallbacks(charset_converter_ptr))
        return rv
    }

    /// Gets the `GCharsetConverter:use`-fallback property.
    @inlinable func getUseFallback() -> Bool {
        let rv = ((g_charset_converter_get_use_fallback(charset_converter_ptr)) != 0)
        return rv
    }

    /// Sets the `GCharsetConverter:use`-fallback property.
    @inlinable func set(useFallback use_fallback: Bool) {
        g_charset_converter_set_use_fallback(charset_converter_ptr, gboolean((use_fallback) ? 1 : 0))
    
    }
    /// Gets the number of fallbacks that `converter` has applied so far.
    @inlinable var numFallbacks: Int {
        /// Gets the number of fallbacks that `converter` has applied so far.
        get {
            let rv = Int(g_charset_converter_get_num_fallbacks(charset_converter_ptr))
            return rv
        }
    }

    /// Gets the `GCharsetConverter:use`-fallback property.
    @inlinable var useFallback: Bool {
        /// Gets the `GCharsetConverter:use`-fallback property.
        get {
            let rv = ((g_charset_converter_get_use_fallback(charset_converter_ptr)) != 0)
            return rv
        }
        /// Sets the `GCharsetConverter:use`-fallback property.
        nonmutating set {
            g_charset_converter_set_use_fallback(charset_converter_ptr, gboolean((newValue) ? 1 : 0))
        }
    }


}



// MARK: - ConverterInputStream Class

/// The `ConverterInputStreamProtocol` protocol exposes the methods and properties of an underlying `GConverterInputStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ConverterInputStream`.
/// Alternatively, use `ConverterInputStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Converter input stream implements `GInputStream` and allows
/// conversion of data of various types during reading.
/// 
/// As of GLib 2.34, `GConverterInputStream` implements
/// `GPollableInputStream`.
public protocol ConverterInputStreamProtocol: FilterInputStreamProtocol, PollableInputStreamProtocol {
        /// Untyped pointer to the underlying `GConverterInputStream` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GConverterInputStream` instance.
    var converter_input_stream_ptr: UnsafeMutablePointer<GConverterInputStream>! { get }

}

/// The `ConverterInputStreamRef` type acts as a lightweight Swift reference to an underlying `GConverterInputStream` instance.
/// It exposes methods that can operate on this data type through `ConverterInputStreamProtocol` conformance.
/// Use `ConverterInputStreamRef` only as an `unowned` reference to an existing `GConverterInputStream` instance.
///
/// Converter input stream implements `GInputStream` and allows
/// conversion of data of various types during reading.
/// 
/// As of GLib 2.34, `GConverterInputStream` implements
/// `GPollableInputStream`.
public struct ConverterInputStreamRef: ConverterInputStreamProtocol {
        /// Untyped pointer to the underlying `GConverterInputStream` instance.
    /// For type-safe access, use the generated, typed pointer `converter_input_stream_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ConverterInputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GConverterInputStream>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GConverterInputStream>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GConverterInputStream>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GConverterInputStream>?) {
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

    /// Reference intialiser for a related type that implements `ConverterInputStreamProtocol`
    @inlinable init<T: ConverterInputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new converter input stream for the `base_stream`.
    @inlinable init<ConverterT: ConverterProtocol, InputStreamT: InputStreamProtocol>( base_stream: InputStreamT, converter: ConverterT) {
        let rv = g_converter_input_stream_new(base_stream.input_stream_ptr, converter.converter_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `ConverterInputStream` type acts as a reference-counted owner of an underlying `GConverterInputStream` instance.
/// It provides the methods that can operate on this data type through `ConverterInputStreamProtocol` conformance.
/// Use `ConverterInputStream` as a strong reference or owner of a `GConverterInputStream` instance.
///
/// Converter input stream implements `GInputStream` and allows
/// conversion of data of various types during reading.
/// 
/// As of GLib 2.34, `GConverterInputStream` implements
/// `GPollableInputStream`.
open class ConverterInputStream: FilterInputStream, ConverterInputStreamProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GConverterInputStream>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GConverterInputStream>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterInputStream` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GConverterInputStream>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GConverterInputStream>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GConverterInputStream`.
    /// i.e., ownership is transferred to the `ConverterInputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GConverterInputStream>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ConverterInputStreamProtocol`
    /// Will retain `GConverterInputStream`.
    /// - Parameter other: an instance of a related type that implements `ConverterInputStreamProtocol`
    @inlinable public init<T: ConverterInputStreamProtocol>(converterInputStream other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new converter input stream for the `base_stream`.
    @inlinable public init<ConverterT: ConverterProtocol, InputStreamT: InputStreamProtocol>( base_stream: InputStreamT, converter: ConverterT) {
        let rv = g_converter_input_stream_new(base_stream.input_stream_ptr, converter.converter_ptr)
        super.init(gpointer: (rv))
    }


}

public enum ConverterInputStreamPropertyName: String, PropertyNameProtocol {
    case baseStream = "base-stream"
    case closeBaseStream = "close-base-stream"
    case converter = "converter"
}

public extension ConverterInputStreamProtocol {
    /// Bind a `ConverterInputStreamPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: ConverterInputStreamPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a ConverterInputStream property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ConverterInputStreamPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a ConverterInputStream property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ConverterInputStreamPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum ConverterInputStreamSignalName: String, SignalNameProtocol {
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
    case notifyConverter = "notify::converter"
}

public extension ConverterInputStreamProtocol {
    /// Connect a `ConverterInputStreamSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: ConverterInputStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: ConverterInputStream Class: ConverterInputStreamProtocol extension (methods and fields)
public extension ConverterInputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GConverterInputStream` instance.
    @inlinable var converter_input_stream_ptr: UnsafeMutablePointer<GConverterInputStream>! { return ptr?.assumingMemoryBound(to: GConverterInputStream.self) }

    /// Gets the `GConverter` that is used by `converter_stream`.
    @inlinable func getConverter() -> ConverterRef! {
        let rv = ConverterRef(gconstpointer: gconstpointer(g_converter_input_stream_get_converter(converter_input_stream_ptr)))
        return rv
    }
    @inlinable var converter: ConverterRef! {
        /// Gets the `GConverter` that is used by `converter_stream`.
        get {
            let rv = ConverterRef(gconstpointer: gconstpointer(g_converter_input_stream_get_converter(converter_input_stream_ptr)))
            return rv
        }
    }

    @inlinable var parentInstance: GFilterInputStream {
        get {
            let rv = converter_input_stream_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - ConverterOutputStream Class

/// The `ConverterOutputStreamProtocol` protocol exposes the methods and properties of an underlying `GConverterOutputStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ConverterOutputStream`.
/// Alternatively, use `ConverterOutputStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Converter output stream implements `GOutputStream` and allows
/// conversion of data of various types during reading.
/// 
/// As of GLib 2.34, `GConverterOutputStream` implements
/// `GPollableOutputStream`.
public protocol ConverterOutputStreamProtocol: FilterOutputStreamProtocol, PollableOutputStreamProtocol {
        /// Untyped pointer to the underlying `GConverterOutputStream` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GConverterOutputStream` instance.
    var converter_output_stream_ptr: UnsafeMutablePointer<GConverterOutputStream>! { get }

}

/// The `ConverterOutputStreamRef` type acts as a lightweight Swift reference to an underlying `GConverterOutputStream` instance.
/// It exposes methods that can operate on this data type through `ConverterOutputStreamProtocol` conformance.
/// Use `ConverterOutputStreamRef` only as an `unowned` reference to an existing `GConverterOutputStream` instance.
///
/// Converter output stream implements `GOutputStream` and allows
/// conversion of data of various types during reading.
/// 
/// As of GLib 2.34, `GConverterOutputStream` implements
/// `GPollableOutputStream`.
public struct ConverterOutputStreamRef: ConverterOutputStreamProtocol {
        /// Untyped pointer to the underlying `GConverterOutputStream` instance.
    /// For type-safe access, use the generated, typed pointer `converter_output_stream_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ConverterOutputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GConverterOutputStream>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GConverterOutputStream>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GConverterOutputStream>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GConverterOutputStream>?) {
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

    /// Reference intialiser for a related type that implements `ConverterOutputStreamProtocol`
    @inlinable init<T: ConverterOutputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new converter output stream for the `base_stream`.
    @inlinable init<ConverterT: ConverterProtocol, OutputStreamT: OutputStreamProtocol>( base_stream: OutputStreamT, converter: ConverterT) {
        let rv = g_converter_output_stream_new(base_stream.output_stream_ptr, converter.converter_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `ConverterOutputStream` type acts as a reference-counted owner of an underlying `GConverterOutputStream` instance.
/// It provides the methods that can operate on this data type through `ConverterOutputStreamProtocol` conformance.
/// Use `ConverterOutputStream` as a strong reference or owner of a `GConverterOutputStream` instance.
///
/// Converter output stream implements `GOutputStream` and allows
/// conversion of data of various types during reading.
/// 
/// As of GLib 2.34, `GConverterOutputStream` implements
/// `GPollableOutputStream`.
open class ConverterOutputStream: FilterOutputStream, ConverterOutputStreamProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GConverterOutputStream>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GConverterOutputStream>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterOutputStream` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GConverterOutputStream>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GConverterOutputStream>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GConverterOutputStream`.
    /// i.e., ownership is transferred to the `ConverterOutputStream` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GConverterOutputStream>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ConverterOutputStreamProtocol`
    /// Will retain `GConverterOutputStream`.
    /// - Parameter other: an instance of a related type that implements `ConverterOutputStreamProtocol`
    @inlinable public init<T: ConverterOutputStreamProtocol>(converterOutputStream other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new converter output stream for the `base_stream`.
    @inlinable public init<ConverterT: ConverterProtocol, OutputStreamT: OutputStreamProtocol>( base_stream: OutputStreamT, converter: ConverterT) {
        let rv = g_converter_output_stream_new(base_stream.output_stream_ptr, converter.converter_ptr)
        super.init(gpointer: (rv))
    }


}

public enum ConverterOutputStreamPropertyName: String, PropertyNameProtocol {
    case baseStream = "base-stream"
    case closeBaseStream = "close-base-stream"
    case converter = "converter"
}

public extension ConverterOutputStreamProtocol {
    /// Bind a `ConverterOutputStreamPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: ConverterOutputStreamPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a ConverterOutputStream property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ConverterOutputStreamPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a ConverterOutputStream property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ConverterOutputStreamPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum ConverterOutputStreamSignalName: String, SignalNameProtocol {
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
    case notifyConverter = "notify::converter"
}

public extension ConverterOutputStreamProtocol {
    /// Connect a `ConverterOutputStreamSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: ConverterOutputStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: ConverterOutputStream Class: ConverterOutputStreamProtocol extension (methods and fields)
public extension ConverterOutputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GConverterOutputStream` instance.
    @inlinable var converter_output_stream_ptr: UnsafeMutablePointer<GConverterOutputStream>! { return ptr?.assumingMemoryBound(to: GConverterOutputStream.self) }

    /// Gets the `GConverter` that is used by `converter_stream`.
    @inlinable func getConverter() -> ConverterRef! {
        let rv = ConverterRef(gconstpointer: gconstpointer(g_converter_output_stream_get_converter(converter_output_stream_ptr)))
        return rv
    }
    @inlinable var converter: ConverterRef! {
        /// Gets the `GConverter` that is used by `converter_stream`.
        get {
            let rv = ConverterRef(gconstpointer: gconstpointer(g_converter_output_stream_get_converter(converter_output_stream_ptr)))
            return rv
        }
    }

    @inlinable var parentInstance: GFilterOutputStream {
        get {
            let rv = converter_output_stream_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - Credentials Class

/// The `CredentialsProtocol` protocol exposes the methods and properties of an underlying `GCredentials` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Credentials`.
/// Alternatively, use `CredentialsRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GCredentials` type is a reference-counted wrapper for native
/// credentials. This information is typically used for identifying,
/// authenticating and authorizing other processes.
/// 
/// Some operating systems supports looking up the credentials of the
/// remote peer of a communication endpoint - see e.g.
/// `g_socket_get_credentials()`.
/// 
/// Some operating systems supports securely sending and receiving
/// credentials over a Unix Domain Socket, see
/// `GUnixCredentialsMessage`, `g_unix_connection_send_credentials()` and
/// `g_unix_connection_receive_credentials()` for details.
/// 
/// On Linux, the native credential type is a struct ucred - see the
/// `unix(7)` man page for details. This corresponds to
/// `G_CREDENTIALS_TYPE_LINUX_UCRED`.
/// 
/// On FreeBSD, Debian GNU/kFreeBSD, and GNU/Hurd, the native
/// credential type is a struct cmsgcred. This corresponds
/// to `G_CREDENTIALS_TYPE_FREEBSD_CMSGCRED`.
/// 
/// On NetBSD, the native credential type is a struct unpcbid.
/// This corresponds to `G_CREDENTIALS_TYPE_NETBSD_UNPCBID`.
/// 
/// On OpenBSD, the native credential type is a struct sockpeercred.
/// This corresponds to `G_CREDENTIALS_TYPE_OPENBSD_SOCKPEERCRED`.
/// 
/// On Solaris (including OpenSolaris and its derivatives), the native
/// credential type is a ucred_t. This corresponds to
/// `G_CREDENTIALS_TYPE_SOLARIS_UCRED`.
public protocol CredentialsProtocol: ObjectProtocol {
        /// Untyped pointer to the underlying `GCredentials` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GCredentials` instance.
    var credentials_ptr: UnsafeMutablePointer<GCredentials>! { get }

}

/// The `CredentialsRef` type acts as a lightweight Swift reference to an underlying `GCredentials` instance.
/// It exposes methods that can operate on this data type through `CredentialsProtocol` conformance.
/// Use `CredentialsRef` only as an `unowned` reference to an existing `GCredentials` instance.
///
/// The `GCredentials` type is a reference-counted wrapper for native
/// credentials. This information is typically used for identifying,
/// authenticating and authorizing other processes.
/// 
/// Some operating systems supports looking up the credentials of the
/// remote peer of a communication endpoint - see e.g.
/// `g_socket_get_credentials()`.
/// 
/// Some operating systems supports securely sending and receiving
/// credentials over a Unix Domain Socket, see
/// `GUnixCredentialsMessage`, `g_unix_connection_send_credentials()` and
/// `g_unix_connection_receive_credentials()` for details.
/// 
/// On Linux, the native credential type is a struct ucred - see the
/// `unix(7)` man page for details. This corresponds to
/// `G_CREDENTIALS_TYPE_LINUX_UCRED`.
/// 
/// On FreeBSD, Debian GNU/kFreeBSD, and GNU/Hurd, the native
/// credential type is a struct cmsgcred. This corresponds
/// to `G_CREDENTIALS_TYPE_FREEBSD_CMSGCRED`.
/// 
/// On NetBSD, the native credential type is a struct unpcbid.
/// This corresponds to `G_CREDENTIALS_TYPE_NETBSD_UNPCBID`.
/// 
/// On OpenBSD, the native credential type is a struct sockpeercred.
/// This corresponds to `G_CREDENTIALS_TYPE_OPENBSD_SOCKPEERCRED`.
/// 
/// On Solaris (including OpenSolaris and its derivatives), the native
/// credential type is a ucred_t. This corresponds to
/// `G_CREDENTIALS_TYPE_SOLARIS_UCRED`.
public struct CredentialsRef: CredentialsProtocol {
        /// Untyped pointer to the underlying `GCredentials` instance.
    /// For type-safe access, use the generated, typed pointer `credentials_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CredentialsRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GCredentials>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GCredentials>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GCredentials>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GCredentials>?) {
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

    /// Reference intialiser for a related type that implements `CredentialsProtocol`
    @inlinable init<T: CredentialsProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GCredentials` object with credentials matching the
    /// the current process.
    @inlinable init() {
        let rv = g_credentials_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `Credentials` type acts as a reference-counted owner of an underlying `GCredentials` instance.
/// It provides the methods that can operate on this data type through `CredentialsProtocol` conformance.
/// Use `Credentials` as a strong reference or owner of a `GCredentials` instance.
///
/// The `GCredentials` type is a reference-counted wrapper for native
/// credentials. This information is typically used for identifying,
/// authenticating and authorizing other processes.
/// 
/// Some operating systems supports looking up the credentials of the
/// remote peer of a communication endpoint - see e.g.
/// `g_socket_get_credentials()`.
/// 
/// Some operating systems supports securely sending and receiving
/// credentials over a Unix Domain Socket, see
/// `GUnixCredentialsMessage`, `g_unix_connection_send_credentials()` and
/// `g_unix_connection_receive_credentials()` for details.
/// 
/// On Linux, the native credential type is a struct ucred - see the
/// `unix(7)` man page for details. This corresponds to
/// `G_CREDENTIALS_TYPE_LINUX_UCRED`.
/// 
/// On FreeBSD, Debian GNU/kFreeBSD, and GNU/Hurd, the native
/// credential type is a struct cmsgcred. This corresponds
/// to `G_CREDENTIALS_TYPE_FREEBSD_CMSGCRED`.
/// 
/// On NetBSD, the native credential type is a struct unpcbid.
/// This corresponds to `G_CREDENTIALS_TYPE_NETBSD_UNPCBID`.
/// 
/// On OpenBSD, the native credential type is a struct sockpeercred.
/// This corresponds to `G_CREDENTIALS_TYPE_OPENBSD_SOCKPEERCRED`.
/// 
/// On Solaris (including OpenSolaris and its derivatives), the native
/// credential type is a ucred_t. This corresponds to
/// `G_CREDENTIALS_TYPE_SOLARIS_UCRED`.
open class Credentials: Object, CredentialsProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Credentials` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GCredentials>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Credentials` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GCredentials>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Credentials` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Credentials` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Credentials` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GCredentials>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Credentials` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GCredentials>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GCredentials`.
    /// i.e., ownership is transferred to the `Credentials` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GCredentials>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `CredentialsProtocol`
    /// Will retain `GCredentials`.
    /// - Parameter other: an instance of a related type that implements `CredentialsProtocol`
    @inlinable public init<T: CredentialsProtocol>(credentials other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GCredentials` object with credentials matching the
    /// the current process.
    @inlinable public init() {
        let rv = g_credentials_new()
        super.init(gpointer: (rv))
    }


}

// MARK: no Credentials properties

public enum CredentialsSignalName: String, SignalNameProtocol {
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

public extension CredentialsProtocol {
    /// Connect a `CredentialsSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: CredentialsSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: Credentials Class: CredentialsProtocol extension (methods and fields)
public extension CredentialsProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GCredentials` instance.
    @inlinable var credentials_ptr: UnsafeMutablePointer<GCredentials>! { return ptr?.assumingMemoryBound(to: GCredentials.self) }

    /// Gets a pointer to native credentials of type `native_type` from
    /// `credentials`.
    /// 
    /// It is a programming error (which will cause a warning to be
    /// logged) to use this method if there is no `GCredentials` support for
    /// the OS or if `native_type` isn't supported by the OS.
    @inlinable func getNative(nativeType native_type: GCredentialsType) -> gpointer! {
        let rv = g_credentials_get_native(credentials_ptr, native_type)
        return rv
    }

    /// Tries to get the UNIX process identifier from `credentials`. This
    /// method is only available on UNIX platforms.
    /// 
    /// This operation can fail if `GCredentials` is not supported on the
    /// OS or if the native credentials type does not contain information
    /// about the UNIX process ID.
    @inlinable func getUnixPid() throws -> pid_t {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_credentials_get_unix_pid(credentials_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Tries to get the UNIX user identifier from `credentials`. This
    /// method is only available on UNIX platforms.
    /// 
    /// This operation can fail if `GCredentials` is not supported on the
    /// OS or if the native credentials type does not contain information
    /// about the UNIX user.
    @inlinable func getUnixUser() throws -> uid_t {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_credentials_get_unix_user(credentials_ptr, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Checks if `credentials` and `other_credentials` is the same user.
    /// 
    /// This operation can fail if `GCredentials` is not supported on the
    /// the OS.
    @inlinable func isSameUser<CredentialsT: CredentialsProtocol>(otherCredentials other_credentials: CredentialsT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_credentials_is_same_user(credentials_ptr, other_credentials.credentials_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Copies the native credentials of type `native_type` from `native`
    /// into `credentials`.
    /// 
    /// It is a programming error (which will cause a warning to be
    /// logged) to use this method if there is no `GCredentials` support for
    /// the OS or if `native_type` isn't supported by the OS.
    @inlinable func setNative(nativeType native_type: GCredentialsType, native: gpointer!) {
        g_credentials_set_native(credentials_ptr, native_type, native)
    
    }

    /// Tries to set the UNIX user identifier on `credentials`. This method
    /// is only available on UNIX platforms.
    /// 
    /// This operation can fail if `GCredentials` is not supported on the
    /// OS or if the native credentials type does not contain information
    /// about the UNIX user. It can also fail if the OS does not allow the
    /// use of "spoofed" credentials.
    @inlinable func setUnixUser(uid: uid_t) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_credentials_set_unix_user(credentials_ptr, uid, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Creates a human-readable textual representation of `credentials`
    /// that can be used in logging and debug messages. The format of the
    /// returned string may change in future GLib release.
    @inlinable func toString() -> String! {
        let rv = g_credentials_to_string(credentials_ptr).map({ String(cString: $0) })
        return rv
    }
    /// Tries to get the UNIX process identifier from `credentials`. This
    /// method is only available on UNIX platforms.
    /// 
    /// This operation can fail if `GCredentials` is not supported on the
    /// OS or if the native credentials type does not contain information
    /// about the UNIX process ID.
    @inlinable var unixPid: pid_t {
        /// Tries to get the UNIX process identifier from `credentials`. This
        /// method is only available on UNIX platforms.
        /// 
        /// This operation can fail if `GCredentials` is not supported on the
        /// OS or if the native credentials type does not contain information
        /// about the UNIX process ID.
        get {
            var error: UnsafeMutablePointer<GError>?
        let rv = g_credentials_get_unix_pid(credentials_ptr, &error)
        g_log(messagePtr: error?.pointee.message, level: .error)
            return rv
        }
    }

    /// Tries to get the UNIX user identifier from `credentials`. This
    /// method is only available on UNIX platforms.
    /// 
    /// This operation can fail if `GCredentials` is not supported on the
    /// OS or if the native credentials type does not contain information
    /// about the UNIX user.
    @inlinable var unixUser: uid_t {
        /// Tries to get the UNIX user identifier from `credentials`. This
        /// method is only available on UNIX platforms.
        /// 
        /// This operation can fail if `GCredentials` is not supported on the
        /// OS or if the native credentials type does not contain information
        /// about the UNIX user.
        get {
            var error: UnsafeMutablePointer<GError>?
        let rv = g_credentials_get_unix_user(credentials_ptr, &error)
        g_log(messagePtr: error?.pointee.message, level: .error)
            return rv
        }
        /// Tries to set the UNIX user identifier on `credentials`. This method
        /// is only available on UNIX platforms.
        /// 
        /// This operation can fail if `GCredentials` is not supported on the
        /// OS or if the native credentials type does not contain information
        /// about the UNIX user. It can also fail if the OS does not allow the
        /// use of "spoofed" credentials.
        nonmutating set {
            var error: UnsafeMutablePointer<GError>?
            _ = g_credentials_set_unix_user(credentials_ptr, newValue, &error)
            g_log(messagePtr: error?.pointee.message, level: .error)
        }
    }


}



// MARK: - DBusActionGroup Class

/// The `DBusActionGroupProtocol` protocol exposes the methods and properties of an underlying `GDBusActionGroup` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusActionGroup`.
/// Alternatively, use `DBusActionGroupRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GDBusActionGroup` is an implementation of the `GActionGroup`
/// interface that can be used as a proxy for an action group
/// that is exported over D-Bus with `g_dbus_connection_export_action_group()`.
public protocol DBusActionGroupProtocol: ObjectProtocol, ActionGroupProtocol, RemoteActionGroupProtocol {
        /// Untyped pointer to the underlying `GDBusActionGroup` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusActionGroup` instance.
    var dbus_action_group_ptr: UnsafeMutablePointer<GDBusActionGroup>! { get }

}

/// The `DBusActionGroupRef` type acts as a lightweight Swift reference to an underlying `GDBusActionGroup` instance.
/// It exposes methods that can operate on this data type through `DBusActionGroupProtocol` conformance.
/// Use `DBusActionGroupRef` only as an `unowned` reference to an existing `GDBusActionGroup` instance.
///
/// `GDBusActionGroup` is an implementation of the `GActionGroup`
/// interface that can be used as a proxy for an action group
/// that is exported over D-Bus with `g_dbus_connection_export_action_group()`.
public struct DBusActionGroupRef: DBusActionGroupProtocol {
        /// Untyped pointer to the underlying `GDBusActionGroup` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_action_group_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusActionGroupRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusActionGroup>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusActionGroup>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusActionGroup>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusActionGroup>?) {
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

    /// Reference intialiser for a related type that implements `DBusActionGroupProtocol`
    @inlinable init<T: DBusActionGroupProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusActionGroupProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusActionGroupProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusActionGroupProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusActionGroupProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusActionGroupProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Obtains a `GDBusActionGroup` for the action group which is exported at
    /// the given `bus_name` and `object_path`.
    /// 
    /// The thread default main context is taken at the time of this call.
    /// All signals on the menu model (and any linked models) are reported
    /// with respect to this context.  All calls on the returned menu model
    /// (and linked models) must also originate from this same context, with
    /// the thread default main context unchanged.
    /// 
    /// This call is non-blocking.  The returned action group may or may not
    /// already be filled in.  The correct thing to do is connect the signals
    /// for the action group to monitor for changes and then to call
    /// `g_action_group_list_actions()` to get the initial list.
    @inlinable static func dbusActionGroupGet<DBusConnectionT: DBusConnectionProtocol>(connection: DBusConnectionT, busName bus_name: UnsafePointer<gchar>? = nil, objectPath object_path: UnsafePointer<gchar>!) -> DBusActionGroupRef! {
        guard let rv = DBusActionGroupRef(gconstpointer: gconstpointer(g_dbus_action_group_get(connection.dbus_connection_ptr, bus_name, object_path))) else { return nil }
        return rv
    }
}

/// The `DBusActionGroup` type acts as a reference-counted owner of an underlying `GDBusActionGroup` instance.
/// It provides the methods that can operate on this data type through `DBusActionGroupProtocol` conformance.
/// Use `DBusActionGroup` as a strong reference or owner of a `GDBusActionGroup` instance.
///
/// `GDBusActionGroup` is an implementation of the `GActionGroup`
/// interface that can be used as a proxy for an action group
/// that is exported over D-Bus with `g_dbus_connection_export_action_group()`.
open class DBusActionGroup: Object, DBusActionGroupProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDBusActionGroup>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDBusActionGroup>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusActionGroup` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDBusActionGroup>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDBusActionGroup>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GDBusActionGroup`.
    /// i.e., ownership is transferred to the `DBusActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDBusActionGroup>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DBusActionGroupProtocol`
    /// Will retain `GDBusActionGroup`.
    /// - Parameter other: an instance of a related type that implements `DBusActionGroupProtocol`
    @inlinable public init<T: DBusActionGroupProtocol>(dBusActionGroup other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusActionGroupProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusActionGroupProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusActionGroupProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusActionGroupProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusActionGroupProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusActionGroupProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusActionGroupProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusActionGroupProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    /// Obtains a `GDBusActionGroup` for the action group which is exported at
    /// the given `bus_name` and `object_path`.
    /// 
    /// The thread default main context is taken at the time of this call.
    /// All signals on the menu model (and any linked models) are reported
    /// with respect to this context.  All calls on the returned menu model
    /// (and linked models) must also originate from this same context, with
    /// the thread default main context unchanged.
    /// 
    /// This call is non-blocking.  The returned action group may or may not
    /// already be filled in.  The correct thing to do is connect the signals
    /// for the action group to monitor for changes and then to call
    /// `g_action_group_list_actions()` to get the initial list.
    @inlinable public static func dbusActionGroupGet<DBusConnectionT: DBusConnectionProtocol>(connection: DBusConnectionT, busName bus_name: UnsafePointer<gchar>? = nil, objectPath object_path: UnsafePointer<gchar>!) -> DBusActionGroup! {
        guard let rv = DBusActionGroup(gconstpointer: gconstpointer(g_dbus_action_group_get(connection.dbus_connection_ptr, bus_name, object_path))) else { return nil }
        return rv
    }

}

// MARK: no DBusActionGroup properties

public enum DBusActionGroupSignalName: String, SignalNameProtocol {
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

public extension DBusActionGroupProtocol {
    /// Connect a `DBusActionGroupSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: DBusActionGroupSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: DBusActionGroup Class: DBusActionGroupProtocol extension (methods and fields)
public extension DBusActionGroupProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusActionGroup` instance.
    @inlinable var dbus_action_group_ptr: UnsafeMutablePointer<GDBusActionGroup>! { return ptr?.assumingMemoryBound(to: GDBusActionGroup.self) }



}



