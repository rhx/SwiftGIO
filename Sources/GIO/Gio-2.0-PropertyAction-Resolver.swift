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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GPropertyAction` instance.
    var property_action_ptr: UnsafeMutablePointer<GPropertyAction>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension PropertyActionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GPropertyAction>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GPropertyAction>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GPropertyAction>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GPropertyAction>?) {
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

    /// Reference intialiser for a related type that implements `PropertyActionProtocol`
    @inlinable init<T: PropertyActionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyActionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyActionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyActionProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyActionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyActionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    @inlinable init<ObjectT: ObjectProtocol>( name: UnsafePointer<gchar>!, object: ObjectT, propertyName property_name: UnsafePointer<gchar>!) {
        let rv = g_property_action_new(name, object.object_ptr, property_name)
        ptr = UnsafeMutableRawPointer(rv)
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
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PropertyAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GPropertyAction>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PropertyAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GPropertyAction>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PropertyAction` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PropertyAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PropertyAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GPropertyAction>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `PropertyAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GPropertyAction>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GPropertyAction`.
    /// i.e., ownership is transferred to the `PropertyAction` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GPropertyAction>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `PropertyActionProtocol`
    /// Will retain `GPropertyAction`.
    /// - Parameter other: an instance of a related type that implements `PropertyActionProtocol`
    @inlinable public init<T: PropertyActionProtocol>(propertyAction other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyActionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyActionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyActionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyActionProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyActionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyActionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyActionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PropertyActionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a `GAction` corresponding to the value of property
    /// `property_name` on `object`.
    /// 
    /// The property must be existent and readable and writable (and not
    /// construct-only).
    /// 
    /// This function takes a reference on `object` and doesn't release it
    /// until the action is destroyed.
    @inlinable public init<ObjectT: ObjectProtocol>( name: UnsafePointer<gchar>!, object: ObjectT, propertyName property_name: UnsafePointer<gchar>!) {
        let rv = g_property_action_new(name, object.object_ptr, property_name)
        super.init(gpointer: (rv))
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: PropertyActionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a PropertyAction property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: PropertyActionPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a PropertyAction property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: PropertyActionPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
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
    @inlinable @discardableResult func connect(signal kind: PropertyActionSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: PropertyAction Class: PropertyActionProtocol extension (methods and fields)
public extension PropertyActionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GPropertyAction` instance.
    @inlinable var property_action_ptr: UnsafeMutablePointer<GPropertyAction>! { return ptr?.assumingMemoryBound(to: GPropertyAction.self) }



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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GProxyAddress` instance.
    var proxy_address_ptr: UnsafeMutablePointer<GProxyAddress>! { get }

}

/// The `ProxyAddressRef` type acts as a lightweight Swift reference to an underlying `GProxyAddress` instance.
/// It exposes methods that can operate on this data type through `ProxyAddressProtocol` conformance.
/// Use `ProxyAddressRef` only as an `unowned` reference to an existing `GProxyAddress` instance.
///
/// Support for proxied `GInetSocketAddress`.
public struct ProxyAddressRef: ProxyAddressProtocol {
        /// Untyped pointer to the underlying `GProxyAddress` instance.
    /// For type-safe access, use the generated, typed pointer `proxy_address_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ProxyAddressRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GProxyAddress>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GProxyAddress>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GProxyAddress>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GProxyAddress>?) {
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

    /// Reference intialiser for a related type that implements `ProxyAddressProtocol`
    @inlinable init<T: ProxyAddressProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GProxyAddress` for `inetaddr` with `protocol` that should
    /// tunnel through `dest_hostname` and `dest_port`.
    /// 
    /// (Note that this method doesn't set the `GProxyAddress:uri` or
    /// `GProxyAddress:destination`-protocol fields; use `g_object_new()`
    /// directly if you want to set those.)
    @inlinable init<InetAddressT: InetAddressProtocol>( inetaddr: InetAddressT, port: guint16, `protocol`: UnsafePointer<gchar>!, destHostname dest_hostname: UnsafePointer<gchar>!, destPort dest_port: guint16, username: UnsafePointer<gchar>? = nil, password: UnsafePointer<gchar>? = nil) {
        let rv = g_proxy_address_new(inetaddr.inet_address_ptr, port, `protocol`, dest_hostname, dest_port, username, password)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `ProxyAddress` type acts as a reference-counted owner of an underlying `GProxyAddress` instance.
/// It provides the methods that can operate on this data type through `ProxyAddressProtocol` conformance.
/// Use `ProxyAddress` as a strong reference or owner of a `GProxyAddress` instance.
///
/// Support for proxied `GInetSocketAddress`.
open class ProxyAddress: InetSocketAddress, ProxyAddressProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ProxyAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GProxyAddress>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ProxyAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GProxyAddress>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ProxyAddress` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ProxyAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ProxyAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GProxyAddress>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ProxyAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GProxyAddress>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GProxyAddress`.
    /// i.e., ownership is transferred to the `ProxyAddress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GProxyAddress>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ProxyAddressProtocol`
    /// Will retain `GProxyAddress`.
    /// - Parameter other: an instance of a related type that implements `ProxyAddressProtocol`
    @inlinable public init<T: ProxyAddressProtocol>(proxyAddress other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GProxyAddress` for `inetaddr` with `protocol` that should
    /// tunnel through `dest_hostname` and `dest_port`.
    /// 
    /// (Note that this method doesn't set the `GProxyAddress:uri` or
    /// `GProxyAddress:destination`-protocol fields; use `g_object_new()`
    /// directly if you want to set those.)
    @inlinable public init<InetAddressT: InetAddressProtocol>( inetaddr: InetAddressT, port: guint16, `protocol`: UnsafePointer<gchar>!, destHostname dest_hostname: UnsafePointer<gchar>!, destPort dest_port: guint16, username: UnsafePointer<gchar>? = nil, password: UnsafePointer<gchar>? = nil) {
        let rv = g_proxy_address_new(inetaddr.inet_address_ptr, port, `protocol`, dest_hostname, dest_port, username, password)
        super.init(gpointer: (rv))
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: ProxyAddressPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a ProxyAddress property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ProxyAddressPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a ProxyAddress property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ProxyAddressPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
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
    @inlinable @discardableResult func connect(signal kind: ProxyAddressSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: ProxyAddress Class: ProxyAddressProtocol extension (methods and fields)
public extension ProxyAddressProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GProxyAddress` instance.
    @inlinable var proxy_address_ptr: UnsafeMutablePointer<GProxyAddress>! { return ptr?.assumingMemoryBound(to: GProxyAddress.self) }

    /// Gets `proxy`'s destination hostname; that is, the name of the host
    /// that will be connected to via the proxy, not the name of the proxy
    /// itself.
    @inlinable func getDestinationHostname() -> String! {
        let rv = g_proxy_address_get_destination_hostname(proxy_address_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets `proxy`'s destination port; that is, the port on the
    /// destination host that will be connected to via the proxy, not the
    /// port number of the proxy itself.
    @inlinable func getDestinationPort() -> guint16 {
        let rv = g_proxy_address_get_destination_port(proxy_address_ptr)
        return rv
    }

    /// Gets the protocol that is being spoken to the destination
    /// server; eg, "http" or "ftp".
    @inlinable func getDestinationProtocol() -> String! {
        let rv = g_proxy_address_get_destination_protocol(proxy_address_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets `proxy`'s password.
    @inlinable func getPassword() -> String! {
        let rv = g_proxy_address_get_password(proxy_address_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets `proxy`'s protocol. eg, "socks" or "http"
    @inlinable func getProtocol() -> String! {
        let rv = g_proxy_address_get_protocol(proxy_address_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the proxy URI that `proxy` was constructed from.
    @inlinable func getURI() -> String! {
        let rv = g_proxy_address_get_uri(proxy_address_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets `proxy`'s username.
    @inlinable func getUsername() -> String! {
        let rv = g_proxy_address_get_username(proxy_address_ptr).map({ String(cString: $0) })
        return rv
    }
    /// Gets `proxy`'s destination hostname; that is, the name of the host
    /// that will be connected to via the proxy, not the name of the proxy
    /// itself.
    @inlinable var destinationHostname: String! {
        /// Gets `proxy`'s destination hostname; that is, the name of the host
        /// that will be connected to via the proxy, not the name of the proxy
        /// itself.
        get {
            let rv = g_proxy_address_get_destination_hostname(proxy_address_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets `proxy`'s destination port; that is, the port on the
    /// destination host that will be connected to via the proxy, not the
    /// port number of the proxy itself.
    @inlinable var destinationPort: guint16 {
        /// Gets `proxy`'s destination port; that is, the port on the
        /// destination host that will be connected to via the proxy, not the
        /// port number of the proxy itself.
        get {
            let rv = g_proxy_address_get_destination_port(proxy_address_ptr)
            return rv
        }
    }

    /// Gets the protocol that is being spoken to the destination
    /// server; eg, "http" or "ftp".
    @inlinable var destinationProtocol: String! {
        /// Gets the protocol that is being spoken to the destination
        /// server; eg, "http" or "ftp".
        get {
            let rv = g_proxy_address_get_destination_protocol(proxy_address_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    @inlinable var password: String! {
        /// Gets `proxy`'s password.
        get {
            let rv = g_proxy_address_get_password(proxy_address_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    @inlinable var `protocol`: String! {
        /// Gets `proxy`'s protocol. eg, "socks" or "http"
        get {
            let rv = g_proxy_address_get_protocol(proxy_address_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// The URI string that the proxy was constructed from (or `nil`
    /// if the creator didn't specify this).
    @inlinable var uri: String! {
        /// Gets the proxy URI that `proxy` was constructed from.
        get {
            let rv = g_proxy_address_get_uri(proxy_address_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    @inlinable var username: String! {
        /// Gets `proxy`'s username.
        get {
            let rv = g_proxy_address_get_username(proxy_address_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    @inlinable var parentInstance: GInetSocketAddress {
        get {
            let rv = proxy_address_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GProxyAddressEnumerator` instance.
    var proxy_address_enumerator_ptr: UnsafeMutablePointer<GProxyAddressEnumerator>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension ProxyAddressEnumeratorRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GProxyAddressEnumerator>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GProxyAddressEnumerator>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GProxyAddressEnumerator>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GProxyAddressEnumerator>?) {
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

    /// Reference intialiser for a related type that implements `ProxyAddressEnumeratorProtocol`
    @inlinable init<T: ProxyAddressEnumeratorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ProxyAddressEnumerator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GProxyAddressEnumerator>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ProxyAddressEnumerator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GProxyAddressEnumerator>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ProxyAddressEnumerator` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ProxyAddressEnumerator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ProxyAddressEnumerator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GProxyAddressEnumerator>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ProxyAddressEnumerator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GProxyAddressEnumerator>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GProxyAddressEnumerator`.
    /// i.e., ownership is transferred to the `ProxyAddressEnumerator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GProxyAddressEnumerator>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ProxyAddressEnumeratorProtocol`
    /// Will retain `GProxyAddressEnumerator`.
    /// - Parameter other: an instance of a related type that implements `ProxyAddressEnumeratorProtocol`
    @inlinable public init<T: ProxyAddressEnumeratorProtocol>(proxyAddressEnumerator other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ProxyAddressEnumeratorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: ProxyAddressEnumeratorPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a ProxyAddressEnumerator property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ProxyAddressEnumeratorPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a ProxyAddressEnumerator property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ProxyAddressEnumeratorPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
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
    @inlinable @discardableResult func connect(signal kind: ProxyAddressEnumeratorSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: ProxyAddressEnumerator Class: ProxyAddressEnumeratorProtocol extension (methods and fields)
public extension ProxyAddressEnumeratorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GProxyAddressEnumerator` instance.
    @inlinable var proxy_address_enumerator_ptr: UnsafeMutablePointer<GProxyAddressEnumerator>! { return ptr?.assumingMemoryBound(to: GProxyAddressEnumerator.self) }


    // var parentInstance is unavailable because parent_instance is private

    // var priv is unavailable because priv is private

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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GResolver` instance.
    var resolver_ptr: UnsafeMutablePointer<GResolver>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension ResolverRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GResolver>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GResolver>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GResolver>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GResolver>?) {
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

    /// Reference intialiser for a related type that implements `ResolverProtocol`
    @inlinable init<T: ResolverProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResolverProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResolverProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResolverProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResolverProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResolverProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Gets the default `GResolver`. You should unref it when you are done
    /// with it. `GResolver` may use its reference count as a hint about how
    /// many threads it should allocate for concurrent DNS resolutions.
    @inlinable static func getDefault() -> ResolverRef! {
        guard let rv = ResolverRef(gconstpointer: gconstpointer(g_resolver_get_default())) else { return nil }
        return rv
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
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Resolver` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GResolver>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Resolver` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GResolver>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Resolver` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Resolver` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Resolver` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GResolver>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Resolver` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GResolver>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GResolver`.
    /// i.e., ownership is transferred to the `Resolver` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GResolver>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ResolverProtocol`
    /// Will retain `GResolver`.
    /// - Parameter other: an instance of a related type that implements `ResolverProtocol`
    @inlinable public init<T: ResolverProtocol>(resolver other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResolverProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResolverProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResolverProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResolverProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResolverProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResolverProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResolverProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResolverProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    /// Gets the default `GResolver`. You should unref it when you are done
    /// with it. `GResolver` may use its reference count as a hint about how
    /// many threads it should allocate for concurrent DNS resolutions.
    @inlinable public static func getDefault() -> Resolver! {
        guard let rv = Resolver(gconstpointer: gconstpointer(g_resolver_get_default())) else { return nil }
        return rv
    }

}

// MARK: no Resolver properties

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
    @inlinable @discardableResult func connect(signal kind: ResolverSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: Resolver Class: ResolverProtocol extension (methods and fields)
public extension ResolverProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GResolver` instance.
    @inlinable var resolver_ptr: UnsafeMutablePointer<GResolver>! { return ptr?.assumingMemoryBound(to: GResolver.self) }

    /// Synchronously reverse-resolves `address` to determine its
    /// associated hostname.
    /// 
    /// If the DNS resolution fails, `error` (if non-`nil`) will be set to
    /// a value from `GResolverError`.
    /// 
    /// If `cancellable` is non-`nil`, it can be used to cancel the
    /// operation, in which case `error` (if non-`nil`) will be set to
    /// `G_IO_ERROR_CANCELLED`.
    @inlinable func lookupBy<CancellableT: CancellableProtocol, InetAddressT: InetAddressProtocol>(address: InetAddressT, cancellable: CancellableT? = nil) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_resolver_lookup_by_address(resolver_ptr, address.inet_address_ptr, cancellable?.cancellable_ptr, &error).map({ String(cString: $0) })
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Begins asynchronously reverse-resolving `address` to determine its
    /// associated hostname, and eventually calls `callback`, which must
    /// call `g_resolver_lookup_by_address_finish()` to get the final result.
    @inlinable func lookupByAddressAsync<CancellableT: CancellableProtocol, InetAddressT: InetAddressProtocol>(address: InetAddressT, cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
        g_resolver_lookup_by_address_async(resolver_ptr, address.inet_address_ptr, cancellable?.cancellable_ptr, callback, user_data)
    
    }

    /// Retrieves the result of a previous call to
    /// `g_resolver_lookup_by_address_async()`.
    /// 
    /// If the DNS resolution failed, `error` (if non-`nil`) will be set to
    /// a value from `GResolverError`. If the operation was cancelled,
    /// `error` will be set to `G_IO_ERROR_CANCELLED`.
    @inlinable func lookupByAddressFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_resolver_lookup_by_address_finish(resolver_ptr, result.async_result_ptr, &error).map({ String(cString: $0) })
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func lookupByName<CancellableT: CancellableProtocol>(hostname: UnsafePointer<gchar>!, cancellable: CancellableT? = nil) throws -> ListRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = ListRef(gconstpointer: gconstpointer(g_resolver_lookup_by_name(resolver_ptr, hostname, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Begins asynchronously resolving `hostname` to determine its
    /// associated IP `address(es)`, and eventually calls `callback`, which
    /// must call `g_resolver_lookup_by_name_finish()` to get the result.
    /// See `g_resolver_lookup_by_name()` for more details.
    @inlinable func lookupByNameAsync<CancellableT: CancellableProtocol>(hostname: UnsafePointer<gchar>!, cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
        g_resolver_lookup_by_name_async(resolver_ptr, hostname, cancellable?.cancellable_ptr, callback, user_data)
    
    }

    /// Retrieves the result of a call to
    /// `g_resolver_lookup_by_name_async()`.
    /// 
    /// If the DNS resolution failed, `error` (if non-`nil`) will be set to
    /// a value from `GResolverError`. If the operation was cancelled,
    /// `error` will be set to `G_IO_ERROR_CANCELLED`.
    @inlinable func lookupByNameFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> ListRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = ListRef(gconstpointer: gconstpointer(g_resolver_lookup_by_name_finish(resolver_ptr, result.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// This differs from `g_resolver_lookup_by_name()` in that you can modify
    /// the lookup behavior with `flags`. For example this can be used to limit
    /// results with `G_RESOLVER_NAME_LOOKUP_FLAGS_IPV4_ONLY`.
    @inlinable func lookupByNameWithFlags<CancellableT: CancellableProtocol>(hostname: UnsafePointer<gchar>!, flags: ResolverNameLookupFlags, cancellable: CancellableT? = nil) throws -> ListRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = ListRef(gconstpointer: gconstpointer(g_resolver_lookup_by_name_with_flags(resolver_ptr, hostname, flags.value, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Begins asynchronously resolving `hostname` to determine its
    /// associated IP `address(es)`, and eventually calls `callback`, which
    /// must call `g_resolver_lookup_by_name_with_flags_finish()` to get the result.
    /// See `g_resolver_lookup_by_name()` for more details.
    @inlinable func lookupByNameWithFlagsAsync<CancellableT: CancellableProtocol>(hostname: UnsafePointer<gchar>!, flags: ResolverNameLookupFlags, cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
        g_resolver_lookup_by_name_with_flags_async(resolver_ptr, hostname, flags.value, cancellable?.cancellable_ptr, callback, user_data)
    
    }

    /// Retrieves the result of a call to
    /// `g_resolver_lookup_by_name_with_flags_async()`.
    /// 
    /// If the DNS resolution failed, `error` (if non-`nil`) will be set to
    /// a value from `GResolverError`. If the operation was cancelled,
    /// `error` will be set to `G_IO_ERROR_CANCELLED`.
    @inlinable func lookupByNameWithFlagsFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> ListRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = ListRef(gconstpointer: gconstpointer(g_resolver_lookup_by_name_with_flags_finish(resolver_ptr, result.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func lookupRecords<CancellableT: CancellableProtocol>(rrname: UnsafePointer<gchar>!, recordType record_type: GResolverRecordType, cancellable: CancellableT? = nil) throws -> ListRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = ListRef(gconstpointer: gconstpointer(g_resolver_lookup_records(resolver_ptr, rrname, record_type, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Begins asynchronously performing a DNS lookup for the given
    /// `rrname`, and eventually calls `callback`, which must call
    /// `g_resolver_lookup_records_finish()` to get the final result. See
    /// `g_resolver_lookup_records()` for more details.
    @inlinable func lookupRecordsAsync<CancellableT: CancellableProtocol>(rrname: UnsafePointer<gchar>!, recordType record_type: GResolverRecordType, cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
        g_resolver_lookup_records_async(resolver_ptr, rrname, record_type, cancellable?.cancellable_ptr, callback, user_data)
    
    }

    /// Retrieves the result of a previous call to
    /// `g_resolver_lookup_records_async()`. Returns a non-empty list of records as
    /// `GVariant` tuples. See `GResolverRecordType` for information on what the
    /// records contain.
    /// 
    /// If the DNS resolution failed, `error` (if non-`nil`) will be set to
    /// a value from `GResolverError`. If the operation was cancelled,
    /// `error` will be set to `G_IO_ERROR_CANCELLED`.
    @inlinable func lookupRecordsFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> ListRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = ListRef(gconstpointer: gconstpointer(g_resolver_lookup_records_finish(resolver_ptr, result.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func lookup<CancellableT: CancellableProtocol>(service: UnsafePointer<gchar>!, `protocol`: UnsafePointer<gchar>!, domain: UnsafePointer<gchar>!, cancellable: CancellableT? = nil) throws -> ListRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = ListRef(gconstpointer: gconstpointer(g_resolver_lookup_service(resolver_ptr, service, `protocol`, domain, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Begins asynchronously performing a DNS SRV lookup for the given
    /// `service` and `protocol` in the given `domain`, and eventually calls
    /// `callback`, which must call `g_resolver_lookup_service_finish()` to
    /// get the final result. See `g_resolver_lookup_service()` for more
    /// details.
    @inlinable func lookupServiceAsync<CancellableT: CancellableProtocol>(service: UnsafePointer<gchar>!, `protocol`: UnsafePointer<gchar>!, domain: UnsafePointer<gchar>!, cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
        g_resolver_lookup_service_async(resolver_ptr, service, `protocol`, domain, cancellable?.cancellable_ptr, callback, user_data)
    
    }

    /// Retrieves the result of a previous call to
    /// `g_resolver_lookup_service_async()`.
    /// 
    /// If the DNS resolution failed, `error` (if non-`nil`) will be set to
    /// a value from `GResolverError`. If the operation was cancelled,
    /// `error` will be set to `G_IO_ERROR_CANCELLED`.
    @inlinable func lookupServiceFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> ListRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = ListRef(gconstpointer: gconstpointer(g_resolver_lookup_service_finish(resolver_ptr, result.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
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
    @inlinable func setDefault() {
        g_resolver_set_default(resolver_ptr)
    
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = resolver_ptr.pointee.parent_instance
            return rv
        }
    }

    @inlinable var priv: ResolverPrivateRef! {
        get {
            let rv = ResolverPrivateRef(gconstpointer: gconstpointer(resolver_ptr.pointee.priv))
            return rv
        }
    }

}



