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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GCharsetConverter` instance.
    var charset_converter_ptr: UnsafeMutablePointer<GCharsetConverter> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension CharsetConverterRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GCharsetConverter>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CharsetConverterProtocol`
    init<T: CharsetConverterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GCharsetConverter`.
    init( to_charset: UnsafePointer<gchar>, fromCharset from_charset: UnsafePointer<gchar>) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_charset_converter_new(to_charset, from_charset, &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
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
    /// Ownership is transferred to the `CharsetConverter` instance.
    public init(_ op: UnsafeMutablePointer<GCharsetConverter>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `CharsetConverterProtocol`
    /// Will retain `GCharsetConverter`.
    public convenience init<T: CharsetConverterProtocol>(_ other: T) {
        self.init(cast(other.charset_converter_ptr))
        g_object_ref(cast(charset_converter_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GCharsetConverter.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GCharsetConverter.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GCharsetConverter.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GCharsetConverter>(opaquePointer))
    }

    /// Creates a new `GCharsetConverter`.
    public convenience init( to_charset: UnsafePointer<gchar>, fromCharset from_charset: UnsafePointer<gchar>) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_charset_converter_new(to_charset, from_charset, &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: CharsetConverterPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(charset_converter_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum CharsetConverterSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
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
    @discardableResult func connect(signal kind: CharsetConverterSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(charset_converter_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension CharsetConverterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GCharsetConverter` instance.
    var charset_converter_ptr: UnsafeMutablePointer<GCharsetConverter> { return ptr.assumingMemoryBound(to: GCharsetConverter.self) }

    /// Gets the number of fallbacks that `converter` has applied so far.
    func getNumFallbacks() -> CUnsignedInt {
        let rv = g_charset_converter_get_num_fallbacks(cast(charset_converter_ptr))
        return CUnsignedInt(rv)
    }

    /// Gets the `GCharsetConverter`:use-fallback property.
    func getUseFallback() -> Bool {
        let rv = g_charset_converter_get_use_fallback(cast(charset_converter_ptr))
        return Bool(rv != 0)
    }

    /// Sets the `GCharsetConverter`:use-fallback property.
    func set(useFallback use_fallback: Bool) {
        g_charset_converter_set_use_fallback(cast(charset_converter_ptr), gboolean(use_fallback ? 1 : 0))
    
    }
    /// Gets the number of fallbacks that `converter` has applied so far.
    var numFallbacks: CUnsignedInt {
        /// Gets the number of fallbacks that `converter` has applied so far.
        get {
            let rv = g_charset_converter_get_num_fallbacks(cast(charset_converter_ptr))
            return CUnsignedInt(rv)
        }
    }

    /// Gets the `GCharsetConverter`:use-fallback property.
    var useFallback: Bool {
        /// Gets the `GCharsetConverter`:use-fallback property.
        get {
            let rv = g_charset_converter_get_use_fallback(cast(charset_converter_ptr))
            return Bool(rv != 0)
        }
        /// Sets the `GCharsetConverter`:use-fallback property.
        nonmutating set {
            g_charset_converter_set_use_fallback(cast(charset_converter_ptr), gboolean(newValue ? 1 : 0))
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GConverterInputStream` instance.
    var converter_input_stream_ptr: UnsafeMutablePointer<GConverterInputStream> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension ConverterInputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GConverterInputStream>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ConverterInputStreamProtocol`
    init<T: ConverterInputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new converter input stream for the `base_stream`.
    init( base_stream: InputStreamProtocol, converter: ConverterProtocol) {
        let rv = g_converter_input_stream_new(cast(base_stream.ptr), cast(converter.ptr))
        self.init(cast(rv))
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
    /// Ownership is transferred to the `ConverterInputStream` instance.
    public init(_ op: UnsafeMutablePointer<GConverterInputStream>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ConverterInputStreamProtocol`
    /// Will retain `GConverterInputStream`.
    public convenience init<T: ConverterInputStreamProtocol>(_ other: T) {
        self.init(cast(other.converter_input_stream_ptr))
        g_object_ref(cast(converter_input_stream_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GConverterInputStream.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GConverterInputStream.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GConverterInputStream.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GConverterInputStream>(opaquePointer))
    }

    /// Creates a new converter input stream for the `base_stream`.
    public convenience init( base_stream: InputStreamProtocol, converter: ConverterProtocol) {
        let rv = g_converter_input_stream_new(cast(base_stream.ptr), cast(converter.ptr))
        self.init(cast(rv))
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: ConverterInputStreamPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(converter_input_stream_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum ConverterInputStreamSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
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
    @discardableResult func connect(signal kind: ConverterInputStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(converter_input_stream_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension ConverterInputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GConverterInputStream` instance.
    var converter_input_stream_ptr: UnsafeMutablePointer<GConverterInputStream> { return ptr.assumingMemoryBound(to: GConverterInputStream.self) }

    /// Gets the `GConverter` that is used by `converter_stream`.
    func getConverter() -> UnsafeMutablePointer<GConverter>! {
        let rv = g_converter_input_stream_get_converter(cast(converter_input_stream_ptr))
        return cast(rv)
    }
    var converter: UnsafeMutablePointer<GConverter>! {
        /// Gets the `GConverter` that is used by `converter_stream`.
        get {
            let rv = g_converter_input_stream_get_converter(cast(converter_input_stream_ptr))
            return cast(rv)
        }
    }
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GConverterOutputStream` instance.
    var converter_output_stream_ptr: UnsafeMutablePointer<GConverterOutputStream> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension ConverterOutputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GConverterOutputStream>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ConverterOutputStreamProtocol`
    init<T: ConverterOutputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new converter output stream for the `base_stream`.
    init( base_stream: OutputStreamProtocol, converter: ConverterProtocol) {
        let rv = g_converter_output_stream_new(cast(base_stream.ptr), cast(converter.ptr))
        self.init(cast(rv))
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
    /// Ownership is transferred to the `ConverterOutputStream` instance.
    public init(_ op: UnsafeMutablePointer<GConverterOutputStream>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ConverterOutputStreamProtocol`
    /// Will retain `GConverterOutputStream`.
    public convenience init<T: ConverterOutputStreamProtocol>(_ other: T) {
        self.init(cast(other.converter_output_stream_ptr))
        g_object_ref(cast(converter_output_stream_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GConverterOutputStream.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GConverterOutputStream.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GConverterOutputStream.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GConverterOutputStream>(opaquePointer))
    }

    /// Creates a new converter output stream for the `base_stream`.
    public convenience init( base_stream: OutputStreamProtocol, converter: ConverterProtocol) {
        let rv = g_converter_output_stream_new(cast(base_stream.ptr), cast(converter.ptr))
        self.init(cast(rv))
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: ConverterOutputStreamPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(converter_output_stream_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum ConverterOutputStreamSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
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
    @discardableResult func connect(signal kind: ConverterOutputStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(converter_output_stream_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension ConverterOutputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GConverterOutputStream` instance.
    var converter_output_stream_ptr: UnsafeMutablePointer<GConverterOutputStream> { return ptr.assumingMemoryBound(to: GConverterOutputStream.self) }

    /// Gets the `GConverter` that is used by `converter_stream`.
    func getConverter() -> UnsafeMutablePointer<GConverter>! {
        let rv = g_converter_output_stream_get_converter(cast(converter_output_stream_ptr))
        return cast(rv)
    }
    var converter: UnsafeMutablePointer<GConverter>! {
        /// Gets the `GConverter` that is used by `converter_stream`.
        get {
            let rv = g_converter_output_stream_get_converter(cast(converter_output_stream_ptr))
            return cast(rv)
        }
    }
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
/// g_socket_get_credentials().
/// 
/// Some operating systems supports securely sending and receiving
/// credentials over a Unix Domain Socket, see
/// `GUnixCredentialsMessage`, g_unix_connection_send_credentials() and
/// g_unix_connection_receive_credentials() for details.
/// 
/// On Linux, the native credential type is a struct ucred - see the
/// unix(7) man page for details. This corresponds to
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GCredentials` instance.
    var credentials_ptr: UnsafeMutablePointer<GCredentials> { get }
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
/// g_socket_get_credentials().
/// 
/// Some operating systems supports securely sending and receiving
/// credentials over a Unix Domain Socket, see
/// `GUnixCredentialsMessage`, g_unix_connection_send_credentials() and
/// g_unix_connection_receive_credentials() for details.
/// 
/// On Linux, the native credential type is a struct ucred - see the
/// unix(7) man page for details. This corresponds to
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
    public let ptr: UnsafeMutableRawPointer
}

public extension CredentialsRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GCredentials>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CredentialsProtocol`
    init<T: CredentialsProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GCredentials` object with credentials matching the
    /// the current process.
    init() {
        let rv = g_credentials_new()
        self.init(cast(rv))
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
/// g_socket_get_credentials().
/// 
/// Some operating systems supports securely sending and receiving
/// credentials over a Unix Domain Socket, see
/// `GUnixCredentialsMessage`, g_unix_connection_send_credentials() and
/// g_unix_connection_receive_credentials() for details.
/// 
/// On Linux, the native credential type is a struct ucred - see the
/// unix(7) man page for details. This corresponds to
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
    /// Ownership is transferred to the `Credentials` instance.
    public init(_ op: UnsafeMutablePointer<GCredentials>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `CredentialsProtocol`
    /// Will retain `GCredentials`.
    public convenience init<T: CredentialsProtocol>(_ other: T) {
        self.init(cast(other.credentials_ptr))
        g_object_ref(cast(credentials_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GCredentials.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GCredentials.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GCredentials.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GCredentials>(opaquePointer))
    }

    /// Creates a new `GCredentials` object with credentials matching the
    /// the current process.
    public convenience init() {
        let rv = g_credentials_new()
        self.init(cast(rv))
    }


}

// MARK: - no Credentials properties

public enum CredentialsSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"

}

public extension CredentialsProtocol {
    /// Connect a `CredentialsSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: CredentialsSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(credentials_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension CredentialsProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GCredentials` instance.
    var credentials_ptr: UnsafeMutablePointer<GCredentials> { return ptr.assumingMemoryBound(to: GCredentials.self) }

    /// Gets a pointer to native credentials of type `native_type` from
    /// `credentials`.
    /// 
    /// It is a programming error (which will cause an warning to be
    /// logged) to use this method if there is no `GCredentials` support for
    /// the OS or if `native_type` isn't supported by the OS.
    func getNative(nativeType native_type: CredentialsType) -> UnsafeMutableRawPointer! {
        let rv = g_credentials_get_native(cast(credentials_ptr), native_type)
        return cast(rv)
    }

    /// Tries to get the UNIX process identifier from `credentials`. This
    /// method is only available on UNIX platforms.
    /// 
    /// This operation can fail if `GCredentials` is not supported on the
    /// OS or if the native credentials type does not contain information
    /// about the UNIX process ID.
    func getUnixPid() throws -> pid_t {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_credentials_get_unix_pid(cast(credentials_ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }

    /// Tries to get the UNIX user identifier from `credentials`. This
    /// method is only available on UNIX platforms.
    /// 
    /// This operation can fail if `GCredentials` is not supported on the
    /// OS or if the native credentials type does not contain information
    /// about the UNIX user.
    func getUnixUser() throws -> uid_t {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_credentials_get_unix_user(cast(credentials_ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }

    /// Checks if `credentials` and `other_credentials` is the same user.
    /// 
    /// This operation can fail if `GCredentials` is not supported on the
    /// the OS.
    func isSameUser(otherCredentials other_credentials: CredentialsProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_credentials_is_same_user(cast(credentials_ptr), cast(other_credentials.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Copies the native credentials of type `native_type` from `native`
    /// into `credentials`.
    /// 
    /// It is a programming error (which will cause an warning to be
    /// logged) to use this method if there is no `GCredentials` support for
    /// the OS or if `native_type` isn't supported by the OS.
    func setNative(nativeType native_type: CredentialsType, native: UnsafeMutableRawPointer) {
        g_credentials_set_native(cast(credentials_ptr), native_type, cast(native))
    
    }

    /// Tries to set the UNIX user identifier on `credentials`. This method
    /// is only available on UNIX platforms.
    /// 
    /// This operation can fail if `GCredentials` is not supported on the
    /// OS or if the native credentials type does not contain information
    /// about the UNIX user. It can also fail if the OS does not allow the
    /// use of "spoofed" credentials.
    func setUnixUser(uid: CUnsignedInt) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_credentials_set_unix_user(cast(credentials_ptr), uid, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Creates a human-readable textual representation of `credentials`
    /// that can be used in logging and debug messages. The format of the
    /// returned string may change in future GLib release.
    func toString() -> String! {
        let rv = g_credentials_to_string(cast(credentials_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
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
/// that is exported over D-Bus with g_dbus_connection_export_action_group().
public protocol DBusActionGroupProtocol: ObjectProtocol, ActionGroupProtocol, RemoteActionGroupProtocol {
    /// Untyped pointer to the underlying `GDBusActionGroup` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusActionGroup` instance.
    var dbus_action_group_ptr: UnsafeMutablePointer<GDBusActionGroup> { get }
}

/// The `DBusActionGroupRef` type acts as a lightweight Swift reference to an underlying `GDBusActionGroup` instance.
/// It exposes methods that can operate on this data type through `DBusActionGroupProtocol` conformance.
/// Use `DBusActionGroupRef` only as an `unowned` reference to an existing `GDBusActionGroup` instance.
///
/// `GDBusActionGroup` is an implementation of the `GActionGroup`
/// interface that can be used as a proxy for an action group
/// that is exported over D-Bus with g_dbus_connection_export_action_group().
public struct DBusActionGroupRef: DBusActionGroupProtocol {
    /// Untyped pointer to the underlying `GDBusActionGroup` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_action_group_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusActionGroupRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusActionGroup>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusActionGroupProtocol`
    init<T: DBusActionGroupProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusActionGroupProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusActionGroupProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusActionGroupProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusActionGroupProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusActionGroupProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    /// g_action_group_list_actions() to get the initial list.
    static func dbusActionGroupGet(connection: DBusConnectionProtocol, busName bus_name: UnsafePointer<gchar>, objectPath object_path: UnsafePointer<gchar>) -> DBusActionGroupRef! {
        let rv = g_dbus_action_group_get(cast(connection.ptr), bus_name, object_path)
        return rv.map { DBusActionGroupRef(cast($0)) }
    }
}

/// The `DBusActionGroup` type acts as a reference-counted owner of an underlying `GDBusActionGroup` instance.
/// It provides the methods that can operate on this data type through `DBusActionGroupProtocol` conformance.
/// Use `DBusActionGroup` as a strong reference or owner of a `GDBusActionGroup` instance.
///
/// `GDBusActionGroup` is an implementation of the `GActionGroup`
/// interface that can be used as a proxy for an action group
/// that is exported over D-Bus with g_dbus_connection_export_action_group().
open class DBusActionGroup: Object, DBusActionGroupProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DBusActionGroup` instance.
    public init(_ op: UnsafeMutablePointer<GDBusActionGroup>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `DBusActionGroupProtocol`
    /// Will retain `GDBusActionGroup`.
    public convenience init<T: DBusActionGroupProtocol>(_ other: T) {
        self.init(cast(other.dbus_action_group_ptr))
        g_object_ref(cast(dbus_action_group_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusActionGroupProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusActionGroup.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusActionGroupProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusActionGroup.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusActionGroupProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusActionGroup.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusActionGroupProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusActionGroup>(opaquePointer))
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
    /// g_action_group_list_actions() to get the initial list.
    public static func dbusActionGroupGet(connection: DBusConnectionProtocol, busName bus_name: UnsafePointer<gchar>, objectPath object_path: UnsafePointer<gchar>) -> DBusActionGroup! {
        let rv = g_dbus_action_group_get(cast(connection.ptr), bus_name, object_path)
        return rv.map { DBusActionGroup(cast($0)) }
    }

}

// MARK: - no DBusActionGroup properties

public enum DBusActionGroupSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through g_object_set_property(), g_object_set(), et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to g_object_set_property() results
    /// in ::notify being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call g_object_notify() or g_object_notify_by_pspec(),
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// g_signal_connect() call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"

}

public extension DBusActionGroupProtocol {
    /// Connect a `DBusActionGroupSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: DBusActionGroupSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(dbus_action_group_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension DBusActionGroupProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusActionGroup` instance.
    var dbus_action_group_ptr: UnsafeMutablePointer<GDBusActionGroup> { return ptr.assumingMemoryBound(to: GDBusActionGroup.self) }

}



