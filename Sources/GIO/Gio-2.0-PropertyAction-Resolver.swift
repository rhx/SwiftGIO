import CGLib
import GLib
import GLibObject

// MARK: - PropertyAction Class

/// The `PropertyActionProtocol` protocol exposes the methods and properties of an underlying `GPropertyAction` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `PropertyAction`.
/// Alternatively, use `PropertyActionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GPropertyAction` is a way to get a `GAction` with a state value
/// reflecting and controlling the value of a `GObject` property.
/// 
/// The state of the action will correspond to the value of the property.
/// Changing it will change the property (assuming the requested value
/// matches the requirements as specified in the `GParamSpec`).
/// 
/// Only the most common types are presently supported.  Booleans are
/// mapped to booleans, strings to strings, signed/unsigned integers to
/// int32/uint32 and floats and doubles to doubles.
/// 
/// If the property is an enum then the state will be string-typed and
/// conversion will automatically be performed between the enum value and
/// "nick" string as per the `GEnumValue` table.
/// 
/// Flags types are not currently supported.
/// 
/// Properties of object types, boxed types and pointer types are not
/// supported and probably never will be.
/// 
/// Properties of `GVariant` types are not currently supported.
/// 
/// If the property is boolean-valued then the action will have a NULL
/// parameter type, and activating the action (with no parameter) will
/// toggle the value of the property.
/// 
/// In all other cases, the parameter type will correspond to the type of
/// the property.
/// 
/// The general idea here is to reduce the number of locations where a
/// particular piece of state is kept (and therefore has to be synchronised
/// between). `GPropertyAction` does not have a separate state that is kept
/// in sync with the property value -- its state is the property value.
/// 
/// For example, it might be useful to create a `GAction` corresponding to
/// the "visible-child-name" property of a `GtkStack` so that the current
/// page can be switched from a menu.  The active radio indication in the
/// menu is then directly determined from the active page of the
/// `GtkStack`.
/// 
/// An anti-example would be binding the "active-id" property on a
/// `GtkComboBox`.  This is because the state of the combobox itself is
/// probably uninteresting and is actually being used to control
/// something else.
/// 
/// Another anti-example would be to bind to the "visible-child-name"
/// property of a `GtkStack` if this value is actually stored in
/// `GSettings`.  In that case, the real source of the value is
/// `GSettings`.  If you want a `GAction` to control a setting stored in
/// `GSettings`, see `g_settings_create_action()` instead, and possibly
/// combine its use with `g_settings_bind()`.
public protocol PropertyActionProtocol: ObjectProtocol, ActionProtocol {
    /// Untyped pointer to the underlying `GPropertyAction` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GPropertyAction` instance.
    var property_action_ptr: UnsafeMutablePointer<GPropertyAction> { get }
}

/// The `PropertyActionRef` type acts as a lightweight Swift reference to an underlying `GPropertyAction` instance.
/// It exposes methods that can operate on this data type through `PropertyActionProtocol` conformance.
/// Use `PropertyActionRef` only as an `unowned` reference to an existing `GPropertyAction` instance.
///
/// A `GPropertyAction` is a way to get a `GAction` with a state value
/// reflecting and controlling the value of a `GObject` property.
/// 
/// The state of the action will correspond to the value of the property.
/// Changing it will change the property (assuming the requested value
/// matches the requirements as specified in the `GParamSpec`).
/// 
/// Only the most common types are presently supported.  Booleans are
/// mapped to booleans, strings to strings, signed/unsigned integers to
/// int32/uint32 and floats and doubles to doubles.
/// 
/// If the property is an enum then the state will be string-typed and
/// conversion will automatically be performed between the enum value and
/// "nick" string as per the `GEnumValue` table.
/// 
/// Flags types are not currently supported.
/// 
/// Properties of object types, boxed types and pointer types are not
/// supported and probably never will be.
/// 
/// Properties of `GVariant` types are not currently supported.
/// 
/// If the property is boolean-valued then the action will have a NULL
/// parameter type, and activating the action (with no parameter) will
/// toggle the value of the property.
/// 
/// In all other cases, the parameter type will correspond to the type of
/// the property.
/// 
/// The general idea here is to reduce the number of locations where a
/// particular piece of state is kept (and therefore has to be synchronised
/// between). `GPropertyAction` does not have a separate state that is kept
/// in sync with the property value -- its state is the property value.
/// 
/// For example, it might be useful to create a `GAction` corresponding to
/// the "visible-child-name" property of a `GtkStack` so that the current
/// page can be switched from a menu.  The active radio indication in the
/// menu is then directly determined from the active page of the
/// `GtkStack`.
/// 
/// An anti-example would be binding the "active-id" property on a
/// `GtkComboBox`.  This is because the state of the combobox itself is
/// probably uninteresting and is actually being used to control
/// something else.
/// 
/// Another anti-example would be to bind to the "visible-child-name"
/// property of a `GtkStack` if this value is actually stored in
/// `GSettings`.  In that case, the real source of the value is
/// `GSettings`.  If you want a `GAction` to control a setting stored in
/// `GSettings`, see `g_settings_create_action()` instead, and possibly
/// combine its use with `g_settings_bind()`.
public struct PropertyActionRef: PropertyActionProtocol {
    /// Untyped pointer to the underlying `GPropertyAction` instance.
    /// For type-safe access, use the generated, typed pointer `property_action_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension PropertyActionRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GPropertyAction>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `PropertyActionProtocol`
    init<T: PropertyActionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyActionProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyActionProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyActionProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyActionProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyActionProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a `GAction` corresponding to the value of property
    /// `property_name` on `object`.
    /// 
    /// The property must be existent and readable and writable (and not
    /// construct-only).
    /// 
    /// This function takes a reference on `object` and doesn't release it
    /// until the action is destroyed.
    init( name: UnsafePointer<gchar>, object: ObjectProtocol, propertyName property_name: UnsafePointer<gchar>) {
        let rv = g_property_action_new(name, cast(object.ptr), property_name)
        self.init(cast(rv))
    }
}

/// The `PropertyAction` type acts as a reference-counted owner of an underlying `GPropertyAction` instance.
/// It provides the methods that can operate on this data type through `PropertyActionProtocol` conformance.
/// Use `PropertyAction` as a strong reference or owner of a `GPropertyAction` instance.
///
/// A `GPropertyAction` is a way to get a `GAction` with a state value
/// reflecting and controlling the value of a `GObject` property.
/// 
/// The state of the action will correspond to the value of the property.
/// Changing it will change the property (assuming the requested value
/// matches the requirements as specified in the `GParamSpec`).
/// 
/// Only the most common types are presently supported.  Booleans are
/// mapped to booleans, strings to strings, signed/unsigned integers to
/// int32/uint32 and floats and doubles to doubles.
/// 
/// If the property is an enum then the state will be string-typed and
/// conversion will automatically be performed between the enum value and
/// "nick" string as per the `GEnumValue` table.
/// 
/// Flags types are not currently supported.
/// 
/// Properties of object types, boxed types and pointer types are not
/// supported and probably never will be.
/// 
/// Properties of `GVariant` types are not currently supported.
/// 
/// If the property is boolean-valued then the action will have a NULL
/// parameter type, and activating the action (with no parameter) will
/// toggle the value of the property.
/// 
/// In all other cases, the parameter type will correspond to the type of
/// the property.
/// 
/// The general idea here is to reduce the number of locations where a
/// particular piece of state is kept (and therefore has to be synchronised
/// between). `GPropertyAction` does not have a separate state that is kept
/// in sync with the property value -- its state is the property value.
/// 
/// For example, it might be useful to create a `GAction` corresponding to
/// the "visible-child-name" property of a `GtkStack` so that the current
/// page can be switched from a menu.  The active radio indication in the
/// menu is then directly determined from the active page of the
/// `GtkStack`.
/// 
/// An anti-example would be binding the "active-id" property on a
/// `GtkComboBox`.  This is because the state of the combobox itself is
/// probably uninteresting and is actually being used to control
/// something else.
/// 
/// Another anti-example would be to bind to the "visible-child-name"
/// property of a `GtkStack` if this value is actually stored in
/// `GSettings`.  In that case, the real source of the value is
/// `GSettings`.  If you want a `GAction` to control a setting stored in
/// `GSettings`, see `g_settings_create_action()` instead, and possibly
/// combine its use with `g_settings_bind()`.
open class PropertyAction: Object, PropertyActionProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `PropertyAction` instance.
    public init(_ op: UnsafeMutablePointer<GPropertyAction>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `PropertyActionProtocol`
    /// Will retain `GPropertyAction`.
    public convenience init<T: PropertyActionProtocol>(_ other: T) {
        self.init(cast(other.property_action_ptr))
        g_object_ref(cast(property_action_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyActionProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GPropertyAction.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyActionProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GPropertyAction.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyActionProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GPropertyAction.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyActionProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GPropertyAction>(opaquePointer))
    }

    /// Creates a `GAction` corresponding to the value of property
    /// `property_name` on `object`.
    /// 
    /// The property must be existent and readable and writable (and not
    /// construct-only).
    /// 
    /// This function takes a reference on `object` and doesn't release it
    /// until the action is destroyed.
    public convenience init( name: UnsafePointer<gchar>, object: ObjectProtocol, propertyName property_name: UnsafePointer<gchar>) {
        let rv = g_property_action_new(name, cast(object.ptr), property_name)
        self.init(cast(rv))
    }


}

public enum PropertyActionPropertyName: String, PropertyNameProtocol {
    /// If `action` is currently enabled.
    /// 
    /// If the action is disabled then calls to `g_action_activate()` and
    /// `g_action_change_state()` have no effect.
    case enabled = "enabled"
    /// If `true`, the state of the action will be the negation of the
    /// property value, provided the property is boolean.
    case invertBoolean = "invert-boolean"
    /// The name of the action.  This is mostly meaningful for identifying
    /// the action once it has been added to a `GActionMap`.
    case name = "name"
    /// The object to wrap a property on.
    /// 
    /// The object must be a non-`nil` `GObject` with properties.
    case object = "object"
    /// The type of the parameter that must be given when activating the
    /// action.
    case parameterType = "parameter-type"
    /// The name of the property to wrap on the object.
    /// 
    /// The property must exist on the passed-in object and it must be
    /// readable and writable (and not construct-only).
    case propertyName = "property-name"
    /// The state of the action, or `nil` if the action is stateless.
    case state = "state"
    /// The `GVariantType` of the state that the action has, or `nil` if the
    /// action is stateless.
    case stateType = "state-type"
}

public extension PropertyActionProtocol {
    /// Bind a `PropertyActionPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: PropertyActionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(property_action_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum PropertyActionSignalName: String, SignalNameProtocol {
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
    /// If `action` is currently enabled.
    /// 
    /// If the action is disabled then calls to `g_action_activate()` and
    /// `g_action_change_state()` have no effect.
    case notifyEnabled = "notify::enabled"
    /// If `true`, the state of the action will be the negation of the
    /// property value, provided the property is boolean.
    case notifyInvertBoolean = "notify::invert-boolean"
    /// The name of the action.  This is mostly meaningful for identifying
    /// the action once it has been added to a `GActionMap`.
    case notifyName = "notify::name"
    /// The object to wrap a property on.
    /// 
    /// The object must be a non-`nil` `GObject` with properties.
    case notifyObject = "notify::object"
    /// The type of the parameter that must be given when activating the
    /// action.
    case notifyParameterType = "notify::parameter-type"
    /// The name of the property to wrap on the object.
    /// 
    /// The property must exist on the passed-in object and it must be
    /// readable and writable (and not construct-only).
    case notifyPropertyName = "notify::property-name"
    /// The state of the action, or `nil` if the action is stateless.
    case notifyState = "notify::state"
    /// The `GVariantType` of the state that the action has, or `nil` if the
    /// action is stateless.
    case notifyStateType = "notify::state-type"
}

public extension PropertyActionProtocol {
    /// Connect a `PropertyActionSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: PropertyActionSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(property_action_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension PropertyActionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GPropertyAction` instance.
    var property_action_ptr: UnsafeMutablePointer<GPropertyAction> { return ptr.assumingMemoryBound(to: GPropertyAction.self) }

}



// MARK: - ProxyAddress Class

/// The `ProxyAddressProtocol` protocol exposes the methods and properties of an underlying `GProxyAddress` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ProxyAddress`.
/// Alternatively, use `ProxyAddressRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Support for proxied `GInetSocketAddress`.
public protocol ProxyAddressProtocol: InetSocketAddressProtocol {
    /// Untyped pointer to the underlying `GProxyAddress` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GProxyAddress` instance.
    var proxy_address_ptr: UnsafeMutablePointer<GProxyAddress> { get }
}

/// The `ProxyAddressRef` type acts as a lightweight Swift reference to an underlying `GProxyAddress` instance.
/// It exposes methods that can operate on this data type through `ProxyAddressProtocol` conformance.
/// Use `ProxyAddressRef` only as an `unowned` reference to an existing `GProxyAddress` instance.
///
/// Support for proxied `GInetSocketAddress`.
public struct ProxyAddressRef: ProxyAddressProtocol {
    /// Untyped pointer to the underlying `GProxyAddress` instance.
    /// For type-safe access, use the generated, typed pointer `proxy_address_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ProxyAddressRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GProxyAddress>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ProxyAddressProtocol`
    init<T: ProxyAddressProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GProxyAddress` for `inetaddr` with `protocol` that should
    /// tunnel through `dest_hostname` and `dest_port`.
    /// 
    /// (Note that this method doesn't set the `GProxyAddress:uri` or
    /// `GProxyAddress:destination`-protocol fields; use `g_object_new()`
    /// directly if you want to set those.)
    init( inetaddr: InetAddressProtocol, port: UInt16, protocol_: UnsafePointer<gchar>, destHostname dest_hostname: UnsafePointer<gchar>, destPort dest_port: UInt16, username: UnsafePointer<gchar>, password: UnsafePointer<gchar>) {
        let rv = g_proxy_address_new(cast(inetaddr.ptr), guint16(port), protocol_, dest_hostname, guint16(dest_port), username, password)
        self.init(cast(rv))
    }
}

/// The `ProxyAddress` type acts as a reference-counted owner of an underlying `GProxyAddress` instance.
/// It provides the methods that can operate on this data type through `ProxyAddressProtocol` conformance.
/// Use `ProxyAddress` as a strong reference or owner of a `GProxyAddress` instance.
///
/// Support for proxied `GInetSocketAddress`.
open class ProxyAddress: InetSocketAddress, ProxyAddressProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ProxyAddress` instance.
    public init(_ op: UnsafeMutablePointer<GProxyAddress>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ProxyAddressProtocol`
    /// Will retain `GProxyAddress`.
    public convenience init<T: ProxyAddressProtocol>(_ other: T) {
        self.init(cast(other.proxy_address_ptr))
        g_object_ref(cast(proxy_address_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GProxyAddress.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GProxyAddress.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GProxyAddress.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GProxyAddress>(opaquePointer))
    }

    /// Creates a new `GProxyAddress` for `inetaddr` with `protocol` that should
    /// tunnel through `dest_hostname` and `dest_port`.
    /// 
    /// (Note that this method doesn't set the `GProxyAddress:uri` or
    /// `GProxyAddress:destination`-protocol fields; use `g_object_new()`
    /// directly if you want to set those.)
    public convenience init( inetaddr: InetAddressProtocol, port: UInt16, protocol_: UnsafePointer<gchar>, destHostname dest_hostname: UnsafePointer<gchar>, destPort dest_port: UInt16, username: UnsafePointer<gchar>, password: UnsafePointer<gchar>) {
        let rv = g_proxy_address_new(cast(inetaddr.ptr), guint16(port), protocol_, dest_hostname, guint16(dest_port), username, password)
        self.init(cast(rv))
    }


}

public enum ProxyAddressPropertyName: String, PropertyNameProtocol {
    case address = "address"
    case destinationHostname = "destination-hostname"
    case destinationPort = "destination-port"
    /// The protocol being spoke to the destination host, or `nil` if
    /// the `GProxyAddress` doesn't know.
    case destinationProtocol = "destination-protocol"
    case family = "family"
    /// The `sin6_flowinfo` field, for IPv6 addresses.
    case flowinfo = "flowinfo"
    case password = "password"
    case port = "port"
    case protocol_ = "protocol"
    case scopeID = "scope-id"
    /// The URI string that the proxy was constructed from (or `nil`
    /// if the creator didn't specify this).
    case uri = "uri"
    case username = "username"
}

public extension ProxyAddressProtocol {
    /// Bind a `ProxyAddressPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: ProxyAddressPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(proxy_address_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum ProxyAddressSignalName: String, SignalNameProtocol {
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
    case notifyAddress = "notify::address"
    case notifyDestinationHostname = "notify::destination-hostname"
    case notifyDestinationPort = "notify::destination-port"
    /// The protocol being spoke to the destination host, or `nil` if
    /// the `GProxyAddress` doesn't know.
    case notifyDestinationProtocol = "notify::destination-protocol"
    case notifyFamily = "notify::family"
    /// The `sin6_flowinfo` field, for IPv6 addresses.
    case notifyFlowinfo = "notify::flowinfo"
    case notifyPassword = "notify::password"
    case notifyPort = "notify::port"
    case notifyProtocol_ = "notify::protocol"
    case notifyScopeID = "notify::scope-id"
    /// The URI string that the proxy was constructed from (or `nil`
    /// if the creator didn't specify this).
    case notifyURI = "notify::uri"
    case notifyUsername = "notify::username"
}

public extension ProxyAddressProtocol {
    /// Connect a `ProxyAddressSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: ProxyAddressSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(proxy_address_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension ProxyAddressProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GProxyAddress` instance.
    var proxy_address_ptr: UnsafeMutablePointer<GProxyAddress> { return ptr.assumingMemoryBound(to: GProxyAddress.self) }

    /// Gets `proxy`'s destination hostname; that is, the name of the host
    /// that will be connected to via the proxy, not the name of the proxy
    /// itself.
    func getDestinationHostname() -> String! {
        let rv = g_proxy_address_get_destination_hostname(cast(proxy_address_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets `proxy`'s destination port; that is, the port on the
    /// destination host that will be connected to via the proxy, not the
    /// port number of the proxy itself.
    func getDestinationPort() -> UInt16 {
        let rv = g_proxy_address_get_destination_port(cast(proxy_address_ptr))
        return UInt16(rv)
    }

    /// Gets the protocol that is being spoken to the destination
    /// server; eg, "http" or "ftp".
    func getDestinationProtocol() -> String! {
        let rv = g_proxy_address_get_destination_protocol(cast(proxy_address_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets `proxy`'s password.
    func getPassword() -> String! {
        let rv = g_proxy_address_get_password(cast(proxy_address_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets `proxy`'s protocol. eg, "socks" or "http"
    func getProtocol() -> String! {
        let rv = g_proxy_address_get_protocol(cast(proxy_address_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the proxy URI that `proxy` was constructed from.
    func getURI() -> String! {
        let rv = g_proxy_address_get_uri(cast(proxy_address_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets `proxy`'s username.
    func getUsername() -> String! {
        let rv = g_proxy_address_get_username(cast(proxy_address_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }
    /// Gets `proxy`'s destination hostname; that is, the name of the host
    /// that will be connected to via the proxy, not the name of the proxy
    /// itself.
    var destinationHostname: String! {
        /// Gets `proxy`'s destination hostname; that is, the name of the host
        /// that will be connected to via the proxy, not the name of the proxy
        /// itself.
        get {
            let rv = g_proxy_address_get_destination_hostname(cast(proxy_address_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets `proxy`'s destination port; that is, the port on the
    /// destination host that will be connected to via the proxy, not the
    /// port number of the proxy itself.
    var destinationPort: UInt16 {
        /// Gets `proxy`'s destination port; that is, the port on the
        /// destination host that will be connected to via the proxy, not the
        /// port number of the proxy itself.
        get {
            let rv = g_proxy_address_get_destination_port(cast(proxy_address_ptr))
            return UInt16(rv)
        }
    }

    /// Gets the protocol that is being spoken to the destination
    /// server; eg, "http" or "ftp".
    var destinationProtocol: String! {
        /// Gets the protocol that is being spoken to the destination
        /// server; eg, "http" or "ftp".
        get {
            let rv = g_proxy_address_get_destination_protocol(cast(proxy_address_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    var password: String! {
        /// Gets `proxy`'s password.
        get {
            let rv = g_proxy_address_get_password(cast(proxy_address_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    var protocol_: String! {
        /// Gets `proxy`'s protocol. eg, "socks" or "http"
        get {
            let rv = g_proxy_address_get_protocol(cast(proxy_address_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// The URI string that the proxy was constructed from (or `nil`
    /// if the creator didn't specify this).
    var uri: String! {
        /// Gets the proxy URI that `proxy` was constructed from.
        get {
            let rv = g_proxy_address_get_uri(cast(proxy_address_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    var username: String! {
        /// Gets `proxy`'s username.
        get {
            let rv = g_proxy_address_get_username(cast(proxy_address_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }
}



// MARK: - ProxyAddressEnumerator Class

/// The `ProxyAddressEnumeratorProtocol` protocol exposes the methods and properties of an underlying `GProxyAddressEnumerator` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ProxyAddressEnumerator`.
/// Alternatively, use `ProxyAddressEnumeratorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GProxyAddressEnumerator` is a wrapper around `GSocketAddressEnumerator` which
/// takes the `GSocketAddress` instances returned by the `GSocketAddressEnumerator`
/// and wraps them in `GProxyAddress` instances, using the given
/// `GProxyAddressEnumerator:proxy`-resolver.
/// 
/// This enumerator will be returned (for example, by
/// `g_socket_connectable_enumerate()`) as appropriate when a proxy is configured;
/// there should be no need to manually wrap a `GSocketAddressEnumerator` instance
/// with one.
public protocol ProxyAddressEnumeratorProtocol: SocketAddressEnumeratorProtocol {
    /// Untyped pointer to the underlying `GProxyAddressEnumerator` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GProxyAddressEnumerator` instance.
    var proxy_address_enumerator_ptr: UnsafeMutablePointer<GProxyAddressEnumerator> { get }
}

/// The `ProxyAddressEnumeratorRef` type acts as a lightweight Swift reference to an underlying `GProxyAddressEnumerator` instance.
/// It exposes methods that can operate on this data type through `ProxyAddressEnumeratorProtocol` conformance.
/// Use `ProxyAddressEnumeratorRef` only as an `unowned` reference to an existing `GProxyAddressEnumerator` instance.
///
/// `GProxyAddressEnumerator` is a wrapper around `GSocketAddressEnumerator` which
/// takes the `GSocketAddress` instances returned by the `GSocketAddressEnumerator`
/// and wraps them in `GProxyAddress` instances, using the given
/// `GProxyAddressEnumerator:proxy`-resolver.
/// 
/// This enumerator will be returned (for example, by
/// `g_socket_connectable_enumerate()`) as appropriate when a proxy is configured;
/// there should be no need to manually wrap a `GSocketAddressEnumerator` instance
/// with one.
public struct ProxyAddressEnumeratorRef: ProxyAddressEnumeratorProtocol {
    /// Untyped pointer to the underlying `GProxyAddressEnumerator` instance.
    /// For type-safe access, use the generated, typed pointer `proxy_address_enumerator_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ProxyAddressEnumeratorRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GProxyAddressEnumerator>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ProxyAddressEnumeratorProtocol`
    init<T: ProxyAddressEnumeratorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ProxyAddressEnumerator` type acts as a reference-counted owner of an underlying `GProxyAddressEnumerator` instance.
/// It provides the methods that can operate on this data type through `ProxyAddressEnumeratorProtocol` conformance.
/// Use `ProxyAddressEnumerator` as a strong reference or owner of a `GProxyAddressEnumerator` instance.
///
/// `GProxyAddressEnumerator` is a wrapper around `GSocketAddressEnumerator` which
/// takes the `GSocketAddress` instances returned by the `GSocketAddressEnumerator`
/// and wraps them in `GProxyAddress` instances, using the given
/// `GProxyAddressEnumerator:proxy`-resolver.
/// 
/// This enumerator will be returned (for example, by
/// `g_socket_connectable_enumerate()`) as appropriate when a proxy is configured;
/// there should be no need to manually wrap a `GSocketAddressEnumerator` instance
/// with one.
open class ProxyAddressEnumerator: SocketAddressEnumerator, ProxyAddressEnumeratorProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ProxyAddressEnumerator` instance.
    public init(_ op: UnsafeMutablePointer<GProxyAddressEnumerator>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ProxyAddressEnumeratorProtocol`
    /// Will retain `GProxyAddressEnumerator`.
    public convenience init<T: ProxyAddressEnumeratorProtocol>(_ other: T) {
        self.init(cast(other.proxy_address_enumerator_ptr))
        g_object_ref(cast(proxy_address_enumerator_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GProxyAddressEnumerator.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GProxyAddressEnumerator.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GProxyAddressEnumerator.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GProxyAddressEnumerator>(opaquePointer))
    }



}

public enum ProxyAddressEnumeratorPropertyName: String, PropertyNameProtocol {
    case connectable = "connectable"
    /// The default port to use if `GProxyAddressEnumerator:uri` does not
    /// specify one.
    case defaultPort = "default-port"
    /// The proxy resolver to use.
    case proxyResolver = "proxy-resolver"
    case uri = "uri"
}

public extension ProxyAddressEnumeratorProtocol {
    /// Bind a `ProxyAddressEnumeratorPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: ProxyAddressEnumeratorPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(proxy_address_enumerator_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum ProxyAddressEnumeratorSignalName: String, SignalNameProtocol {
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
    case notifyConnectable = "notify::connectable"
    /// The default port to use if `GProxyAddressEnumerator:uri` does not
    /// specify one.
    case notifyDefaultPort = "notify::default-port"
    /// The proxy resolver to use.
    case notifyProxyResolver = "notify::proxy-resolver"
    case notifyURI = "notify::uri"
}

public extension ProxyAddressEnumeratorProtocol {
    /// Connect a `ProxyAddressEnumeratorSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: ProxyAddressEnumeratorSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(proxy_address_enumerator_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension ProxyAddressEnumeratorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GProxyAddressEnumerator` instance.
    var proxy_address_enumerator_ptr: UnsafeMutablePointer<GProxyAddressEnumerator> { return ptr.assumingMemoryBound(to: GProxyAddressEnumerator.self) }

}



// MARK: - Resolver Class

/// The `ResolverProtocol` protocol exposes the methods and properties of an underlying `GResolver` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Resolver`.
/// Alternatively, use `ResolverRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GResolver` provides cancellable synchronous and asynchronous DNS
/// resolution, for hostnames (`g_resolver_lookup_by_address()`,
/// `g_resolver_lookup_by_name()` and their async variants) and SRV
/// (service) records (`g_resolver_lookup_service()`).
/// 
/// `GNetworkAddress` and `GNetworkService` provide wrappers around
/// `GResolver` functionality that also implement `GSocketConnectable`,
/// making it easy to connect to a remote host/service.
public protocol ResolverProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `GResolver` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GResolver` instance.
    var resolver_ptr: UnsafeMutablePointer<GResolver> { get }
}

/// The `ResolverRef` type acts as a lightweight Swift reference to an underlying `GResolver` instance.
/// It exposes methods that can operate on this data type through `ResolverProtocol` conformance.
/// Use `ResolverRef` only as an `unowned` reference to an existing `GResolver` instance.
///
/// `GResolver` provides cancellable synchronous and asynchronous DNS
/// resolution, for hostnames (`g_resolver_lookup_by_address()`,
/// `g_resolver_lookup_by_name()` and their async variants) and SRV
/// (service) records (`g_resolver_lookup_service()`).
/// 
/// `GNetworkAddress` and `GNetworkService` provide wrappers around
/// `GResolver` functionality that also implement `GSocketConnectable`,
/// making it easy to connect to a remote host/service.
public struct ResolverRef: ResolverProtocol {
    /// Untyped pointer to the underlying `GResolver` instance.
    /// For type-safe access, use the generated, typed pointer `resolver_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ResolverRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GResolver>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ResolverProtocol`
    init<T: ResolverProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResolverProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResolverProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResolverProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResolverProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResolverProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Gets the default `GResolver`. You should unref it when you are done
    /// with it. `GResolver` may use its reference count as a hint about how
    /// many threads it should allocate for concurrent DNS resolutions.
    static func getDefault() -> ResolverRef! {
        let rv = g_resolver_get_default()
        return rv.map { ResolverRef(cast($0)) }
    }
}

/// The `Resolver` type acts as a reference-counted owner of an underlying `GResolver` instance.
/// It provides the methods that can operate on this data type through `ResolverProtocol` conformance.
/// Use `Resolver` as a strong reference or owner of a `GResolver` instance.
///
/// `GResolver` provides cancellable synchronous and asynchronous DNS
/// resolution, for hostnames (`g_resolver_lookup_by_address()`,
/// `g_resolver_lookup_by_name()` and their async variants) and SRV
/// (service) records (`g_resolver_lookup_service()`).
/// 
/// `GNetworkAddress` and `GNetworkService` provide wrappers around
/// `GResolver` functionality that also implement `GSocketConnectable`,
/// making it easy to connect to a remote host/service.
open class Resolver: Object, ResolverProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Resolver` instance.
    public init(_ op: UnsafeMutablePointer<GResolver>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ResolverProtocol`
    /// Will retain `GResolver`.
    public convenience init<T: ResolverProtocol>(_ other: T) {
        self.init(cast(other.resolver_ptr))
        g_object_ref(cast(resolver_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResolverProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GResolver.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResolverProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GResolver.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResolverProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GResolver.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResolverProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GResolver>(opaquePointer))
    }


    /// Gets the default `GResolver`. You should unref it when you are done
    /// with it. `GResolver` may use its reference count as a hint about how
    /// many threads it should allocate for concurrent DNS resolutions.
    public static func getDefault() -> Resolver! {
        let rv = g_resolver_get_default()
        return rv.map { Resolver(cast($0)) }
    }

}

// MARK: - no Resolver properties

public enum ResolverSignalName: String, SignalNameProtocol {
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
    /// Emitted when the resolver notices that the system resolver
    /// configuration has changed.
    case reload = "reload"

}

public extension ResolverProtocol {
    /// Connect a `ResolverSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: ResolverSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(resolver_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension ResolverProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GResolver` instance.
    var resolver_ptr: UnsafeMutablePointer<GResolver> { return ptr.assumingMemoryBound(to: GResolver.self) }

    /// Synchronously reverse-resolves `address` to determine its
    /// associated hostname.
    /// 
    /// If the DNS resolution fails, `error` (if non-`nil`) will be set to
    /// a value from `GResolverError`.
    /// 
    /// If `cancellable` is non-`nil`, it can be used to cancel the
    /// operation, in which case `error` (if non-`nil`) will be set to
    /// `G_IO_ERROR_CANCELLED`.
    func lookupBy(address: InetAddressProtocol, cancellable: CancellableProtocol) throws -> String! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_resolver_lookup_by_address(cast(resolver_ptr), cast(address.ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Begins asynchronously reverse-resolving `address` to determine its
    /// associated hostname, and eventually calls `callback`, which must
    /// call `g_resolver_lookup_by_address_finish()` to get the final result.
    func lookupByAddressAsync(address: InetAddressProtocol, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_resolver_lookup_by_address_async(cast(resolver_ptr), cast(address.ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Retrieves the result of a previous call to
    /// `g_resolver_lookup_by_address_async()`.
    /// 
    /// If the DNS resolution failed, `error` (if non-`nil`) will be set to
    /// a value from `GResolverError`. If the operation was cancelled,
    /// `error` will be set to `G_IO_ERROR_CANCELLED`.
    func lookupByAddressFinish(result: AsyncResultProtocol) throws -> String! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_resolver_lookup_by_address_finish(cast(resolver_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Synchronously resolves `hostname` to determine its associated IP
    /// `address(es)`. `hostname` may be an ASCII-only or UTF-8 hostname, or
    /// the textual form of an IP address (in which case this just becomes
    /// a wrapper around `g_inet_address_new_from_string()`).
    /// 
    /// On success, `g_resolver_lookup_by_name()` will return a non-empty `GList` of
    /// `GInetAddress`, sorted in order of preference and guaranteed to not
    /// contain duplicates. That is, if using the result to connect to
    /// `hostname`, you should attempt to connect to the first address
    /// first, then the second if the first fails, etc. If you are using
    /// the result to listen on a socket, it is appropriate to add each
    /// result using e.g. `g_socket_listener_add_address()`.
    /// 
    /// If the DNS resolution fails, `error` (if non-`nil`) will be set to a
    /// value from `GResolverError` and `nil` will be returned.
    /// 
    /// If `cancellable` is non-`nil`, it can be used to cancel the
    /// operation, in which case `error` (if non-`nil`) will be set to
    /// `G_IO_ERROR_CANCELLED`.
    /// 
    /// If you are planning to connect to a socket on the resolved IP
    /// address, it may be easier to create a `GNetworkAddress` and use its
    /// `GSocketConnectable` interface.
    func lookupByName(hostname: UnsafePointer<gchar>, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GList>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_resolver_lookup_by_name(cast(resolver_ptr), hostname, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Begins asynchronously resolving `hostname` to determine its
    /// associated IP `address(es)`, and eventually calls `callback`, which
    /// must call `g_resolver_lookup_by_name_finish()` to get the result.
    /// See `g_resolver_lookup_by_name()` for more details.
    func lookupByNameAsync(hostname: UnsafePointer<gchar>, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_resolver_lookup_by_name_async(cast(resolver_ptr), hostname, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Retrieves the result of a call to
    /// `g_resolver_lookup_by_name_async()`.
    /// 
    /// If the DNS resolution failed, `error` (if non-`nil`) will be set to
    /// a value from `GResolverError`. If the operation was cancelled,
    /// `error` will be set to `G_IO_ERROR_CANCELLED`.
    func lookupByNameFinish(result: AsyncResultProtocol) throws -> UnsafeMutablePointer<GList>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_resolver_lookup_by_name_finish(cast(resolver_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// This differs from `g_resolver_lookup_by_name()` in that you can modify
    /// the lookup behavior with `flags`. For example this can be used to limit
    /// results with `G_RESOLVER_NAME_LOOKUP_FLAGS_IPV4_ONLY`.
    func lookupByNameWithFlags(hostname: UnsafePointer<gchar>, flags: ResolverNameLookupFlags, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GList>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_resolver_lookup_by_name_with_flags(cast(resolver_ptr), hostname, flags, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Begins asynchronously resolving `hostname` to determine its
    /// associated IP `address(es)`, and eventually calls `callback`, which
    /// must call `g_resolver_lookup_by_name_with_flags_finish()` to get the result.
    /// See `g_resolver_lookup_by_name()` for more details.
    func lookupByNameWithFlagsAsync(hostname: UnsafePointer<gchar>, flags: ResolverNameLookupFlags, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_resolver_lookup_by_name_with_flags_async(cast(resolver_ptr), hostname, flags, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Retrieves the result of a call to
    /// `g_resolver_lookup_by_name_with_flags_async()`.
    /// 
    /// If the DNS resolution failed, `error` (if non-`nil`) will be set to
    /// a value from `GResolverError`. If the operation was cancelled,
    /// `error` will be set to `G_IO_ERROR_CANCELLED`.
    func lookupByNameWithFlagsFinish(result: AsyncResultProtocol) throws -> UnsafeMutablePointer<GList>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_resolver_lookup_by_name_with_flags_finish(cast(resolver_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Synchronously performs a DNS record lookup for the given `rrname` and returns
    /// a list of records as `GVariant` tuples. See `GResolverRecordType` for
    /// information on what the records contain for each `record_type`.
    /// 
    /// If the DNS resolution fails, `error` (if non-`nil`) will be set to
    /// a value from `GResolverError` and `nil` will be returned.
    /// 
    /// If `cancellable` is non-`nil`, it can be used to cancel the
    /// operation, in which case `error` (if non-`nil`) will be set to
    /// `G_IO_ERROR_CANCELLED`.
    func lookupRecords(rrname: UnsafePointer<gchar>, recordType record_type: ResolverRecordType, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GList>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_resolver_lookup_records(cast(resolver_ptr), rrname, record_type, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Begins asynchronously performing a DNS lookup for the given
    /// `rrname`, and eventually calls `callback`, which must call
    /// `g_resolver_lookup_records_finish()` to get the final result. See
    /// `g_resolver_lookup_records()` for more details.
    func lookupRecordsAsync(rrname: UnsafePointer<gchar>, recordType record_type: ResolverRecordType, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_resolver_lookup_records_async(cast(resolver_ptr), rrname, record_type, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Retrieves the result of a previous call to
    /// `g_resolver_lookup_records_async()`. Returns a non-empty list of records as
    /// `GVariant` tuples. See `GResolverRecordType` for information on what the
    /// records contain.
    /// 
    /// If the DNS resolution failed, `error` (if non-`nil`) will be set to
    /// a value from `GResolverError`. If the operation was cancelled,
    /// `error` will be set to `G_IO_ERROR_CANCELLED`.
    func lookupRecordsFinish(result: AsyncResultProtocol) throws -> UnsafeMutablePointer<GList>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_resolver_lookup_records_finish(cast(resolver_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Synchronously performs a DNS SRV lookup for the given `service` and
    /// `protocol` in the given `domain` and returns an array of `GSrvTarget`.
    /// `domain` may be an ASCII-only or UTF-8 hostname. Note also that the
    /// `service` and `protocol` arguments do not include the leading underscore
    /// that appears in the actual DNS entry.
    /// 
    /// On success, `g_resolver_lookup_service()` will return a non-empty `GList` of
    /// `GSrvTarget`, sorted in order of preference. (That is, you should
    /// attempt to connect to the first target first, then the second if
    /// the first fails, etc.)
    /// 
    /// If the DNS resolution fails, `error` (if non-`nil`) will be set to
    /// a value from `GResolverError` and `nil` will be returned.
    /// 
    /// If `cancellable` is non-`nil`, it can be used to cancel the
    /// operation, in which case `error` (if non-`nil`) will be set to
    /// `G_IO_ERROR_CANCELLED`.
    /// 
    /// If you are planning to connect to the service, it is usually easier
    /// to create a `GNetworkService` and use its `GSocketConnectable`
    /// interface.
    func lookup(service: UnsafePointer<gchar>, protocol_: UnsafePointer<gchar>, domain: UnsafePointer<gchar>, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GList>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_resolver_lookup_service(cast(resolver_ptr), service, protocol_, domain, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Begins asynchronously performing a DNS SRV lookup for the given
    /// `service` and `protocol` in the given `domain`, and eventually calls
    /// `callback`, which must call `g_resolver_lookup_service_finish()` to
    /// get the final result. See `g_resolver_lookup_service()` for more
    /// details.
    func lookupServiceAsync(service: UnsafePointer<gchar>, protocol_: UnsafePointer<gchar>, domain: UnsafePointer<gchar>, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_resolver_lookup_service_async(cast(resolver_ptr), service, protocol_, domain, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Retrieves the result of a previous call to
    /// `g_resolver_lookup_service_async()`.
    /// 
    /// If the DNS resolution failed, `error` (if non-`nil`) will be set to
    /// a value from `GResolverError`. If the operation was cancelled,
    /// `error` will be set to `G_IO_ERROR_CANCELLED`.
    func lookupServiceFinish(result: AsyncResultProtocol) throws -> UnsafeMutablePointer<GList>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_resolver_lookup_service_finish(cast(resolver_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Sets `resolver` to be the application's default resolver (reffing
    /// `resolver`, and unreffing the previous default resolver, if any).
    /// Future calls to `g_resolver_get_default()` will return this resolver.
    /// 
    /// This can be used if an application wants to perform any sort of DNS
    /// caching or "pinning"; it can implement its own `GResolver` that
    /// calls the original default resolver for DNS operations, and
    /// implements its own cache policies on top of that, and then set
    /// itself as the default resolver for all later code to use.
    func setDefault() {
        g_resolver_set_default(cast(resolver_ptr))
    
    }
}



