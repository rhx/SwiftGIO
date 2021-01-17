import CGLib
import GLib
import GLibObject

// MARK: - Action Interface

/// The `ActionProtocol` protocol exposes the methods and properties of an underlying `GAction` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Action`.
/// Alternatively, use `ActionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GAction` represents a single named action.
/// 
/// The main interface to an action is that it can be activated with
/// `g_action_activate()`.  This results in the 'activate' signal being
/// emitted.  An activation has a `GVariant` parameter (which may be
/// `nil`).  The correct type for the parameter is determined by a static
/// parameter type (which is given at construction time).
/// 
/// An action may optionally have a state, in which case the state may be
/// set with `g_action_change_state()`.  This call takes a `GVariant`.  The
/// correct type for the state is determined by a static state type
/// (which is given at construction time).
/// 
/// The state may have a hint associated with it, specifying its valid
/// range.
/// 
/// `GAction` is merely the interface to the concept of an action, as
/// described above.  Various implementations of actions exist, including
/// `GSimpleAction`.
/// 
/// In all cases, the implementing class is responsible for storing the
/// name of the action, the parameter type, the enabled state, the
/// optional state type and the state and emitting the appropriate
/// signals when these change.  The implementor is responsible for filtering
/// calls to `g_action_activate()` and `g_action_change_state()` for type
/// safety and for the state being enabled.
/// 
/// Probably the only useful thing to do with a `GAction` is to put it
/// inside of a `GSimpleActionGroup`.
public protocol ActionProtocol {
        /// Untyped pointer to the underlying `GAction` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GAction` instance.
    var action_ptr: UnsafeMutablePointer<GAction>! { get }

}

/// The `ActionRef` type acts as a lightweight Swift reference to an underlying `GAction` instance.
/// It exposes methods that can operate on this data type through `ActionProtocol` conformance.
/// Use `ActionRef` only as an `unowned` reference to an existing `GAction` instance.
///
/// `GAction` represents a single named action.
/// 
/// The main interface to an action is that it can be activated with
/// `g_action_activate()`.  This results in the 'activate' signal being
/// emitted.  An activation has a `GVariant` parameter (which may be
/// `nil`).  The correct type for the parameter is determined by a static
/// parameter type (which is given at construction time).
/// 
/// An action may optionally have a state, in which case the state may be
/// set with `g_action_change_state()`.  This call takes a `GVariant`.  The
/// correct type for the state is determined by a static state type
/// (which is given at construction time).
/// 
/// The state may have a hint associated with it, specifying its valid
/// range.
/// 
/// `GAction` is merely the interface to the concept of an action, as
/// described above.  Various implementations of actions exist, including
/// `GSimpleAction`.
/// 
/// In all cases, the implementing class is responsible for storing the
/// name of the action, the parameter type, the enabled state, the
/// optional state type and the state and emitting the appropriate
/// signals when these change.  The implementor is responsible for filtering
/// calls to `g_action_activate()` and `g_action_change_state()` for type
/// safety and for the state being enabled.
/// 
/// Probably the only useful thing to do with a `GAction` is to put it
/// inside of a `GSimpleActionGroup`.
public struct ActionRef: ActionProtocol {
        /// Untyped pointer to the underlying `GAction` instance.
    /// For type-safe access, use the generated, typed pointer `action_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ActionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GAction>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GAction>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GAction>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GAction>?) {
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

    /// Reference intialiser for a related type that implements `ActionProtocol`
    @inlinable init<T: ActionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Action` type acts as an owner of an underlying `GAction` instance.
/// It provides the methods that can operate on this data type through `ActionProtocol` conformance.
/// Use `Action` as a strong reference or owner of a `GAction` instance.
///
/// `GAction` represents a single named action.
/// 
/// The main interface to an action is that it can be activated with
/// `g_action_activate()`.  This results in the 'activate' signal being
/// emitted.  An activation has a `GVariant` parameter (which may be
/// `nil`).  The correct type for the parameter is determined by a static
/// parameter type (which is given at construction time).
/// 
/// An action may optionally have a state, in which case the state may be
/// set with `g_action_change_state()`.  This call takes a `GVariant`.  The
/// correct type for the state is determined by a static state type
/// (which is given at construction time).
/// 
/// The state may have a hint associated with it, specifying its valid
/// range.
/// 
/// `GAction` is merely the interface to the concept of an action, as
/// described above.  Various implementations of actions exist, including
/// `GSimpleAction`.
/// 
/// In all cases, the implementing class is responsible for storing the
/// name of the action, the parameter type, the enabled state, the
/// optional state type and the state and emitting the appropriate
/// signals when these change.  The implementor is responsible for filtering
/// calls to `g_action_activate()` and `g_action_change_state()` for type
/// safety and for the state being enabled.
/// 
/// Probably the only useful thing to do with a `GAction` is to put it
/// inside of a `GSimpleActionGroup`.
open class Action: ActionProtocol {
        /// Untyped pointer to the underlying `GAction` instance.
    /// For type-safe access, use the generated, typed pointer `action_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Action` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GAction>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Action` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GAction>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Action` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Action` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Action` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GAction>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Action` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GAction>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GAction` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Action` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GAction>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GAction, cannot ref(action_ptr)
    }

    /// Reference intialiser for a related type that implements `ActionProtocol`
    /// `GAction` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ActionProtocol`
    @inlinable public init<T: ActionProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GAction, cannot ref(action_ptr)
    }

    /// Do-nothing destructor for `GAction`.
    deinit {
        // no reference counting for GAction, cannot unref(action_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GAction, cannot ref(action_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GAction, cannot ref(action_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GAction, cannot ref(action_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GAction, cannot ref(action_ptr)
    }



}

public enum ActionPropertyName: String, PropertyNameProtocol {
    /// If `action` is currently enabled.
    /// 
    /// If the action is disabled then calls to `g_action_activate()` and
    /// `g_action_change_state()` have no effect.
    case enabled = "enabled"
    /// The name of the action.  This is mostly meaningful for identifying
    /// the action once it has been added to a `GActionGroup`. It is immutable.
    case name = "name"
    /// The type of the parameter that must be given when activating the
    /// action. This is immutable, and may be `nil` if no parameter is needed when
    /// activating the action.
    case parameterType = "parameter-type"
    /// The state of the action, or `nil` if the action is stateless.
    case state = "state"
    /// The `GVariantType` of the state that the action has, or `nil` if the
    /// action is stateless. This is immutable.
    case stateType = "state-type"
}

public extension ActionProtocol {
    /// Bind a `ActionPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ActionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Action property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ActionPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Action property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ActionPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum ActionSignalName: String, SignalNameProtocol {

    /// If `action` is currently enabled.
    /// 
    /// If the action is disabled then calls to `g_action_activate()` and
    /// `g_action_change_state()` have no effect.
    case notifyEnabled = "notify::enabled"
    /// The name of the action.  This is mostly meaningful for identifying
    /// the action once it has been added to a `GActionGroup`. It is immutable.
    case notifyName = "notify::name"
    /// The type of the parameter that must be given when activating the
    /// action. This is immutable, and may be `nil` if no parameter is needed when
    /// activating the action.
    case notifyParameterType = "notify::parameter-type"
    /// The state of the action, or `nil` if the action is stateless.
    case notifyState = "notify::state"
    /// The `GVariantType` of the state that the action has, or `nil` if the
    /// action is stateless. This is immutable.
    case notifyStateType = "notify::state-type"
}

// MARK: Action has no signals
// MARK: Action Interface: ActionProtocol extension (methods and fields)
public extension ActionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GAction` instance.
    @inlinable var action_ptr: UnsafeMutablePointer<GAction>! { return ptr?.assumingMemoryBound(to: GAction.self) }

    /// Activates the action.
    /// 
    /// `parameter` must be the correct type of parameter for the action (ie:
    /// the parameter type given at construction time).  If the parameter
    /// type was `nil` then `parameter` must also be `nil`.
    /// 
    /// If the `parameter` GVariant is floating, it is consumed.
    @inlinable func activate(parameter: GLib.VariantRef? = nil) {
        g_action_activate(action_ptr, parameter?.variant_ptr)
    
    }
    /// Activates the action.
    /// 
    /// `parameter` must be the correct type of parameter for the action (ie:
    /// the parameter type given at construction time).  If the parameter
    /// type was `nil` then `parameter` must also be `nil`.
    /// 
    /// If the `parameter` GVariant is floating, it is consumed.
    @inlinable func activate<VariantT: GLib.VariantProtocol>(parameter: VariantT?) {
        g_action_activate(action_ptr, parameter?.variant_ptr)
    
    }

    /// Request for the state of `action` to be changed to `value`.
    /// 
    /// The action must be stateful and `value` must be of the correct type.
    /// See `g_action_get_state_type()`.
    /// 
    /// This call merely requests a change.  The action may refuse to change
    /// its state or may change its state to something other than `value`.
    /// See `g_action_get_state_hint()`.
    /// 
    /// If the `value` GVariant is floating, it is consumed.
    @inlinable func changeState<VariantT: GLib.VariantProtocol>(value: VariantT) {
        g_action_change_state(action_ptr, value.variant_ptr)
    
    }

    /// Checks if `action` is currently enabled.
    /// 
    /// An action must be enabled in order to be activated or in order to
    /// have its state changed from outside callers.
    @inlinable func getEnabled() -> Bool {
        let rv = ((g_action_get_enabled(action_ptr)) != 0)
        return rv
    }

    /// Queries the name of `action`.
    @inlinable func getName() -> String! {
        let rv = g_action_get_name(action_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Queries the type of the parameter that must be given when activating
    /// `action`.
    /// 
    /// When activating the action using `g_action_activate()`, the `GVariant`
    /// given to that function must be of the type returned by this function.
    /// 
    /// In the case that this function returns `nil`, you must not give any
    /// `GVariant`, but `nil` instead.
    @inlinable func getParameterType() -> GLib.VariantTypeRef! {
        let rv = GLib.VariantTypeRef(g_action_get_parameter_type(action_ptr))
        return rv
    }

    /// Queries the current state of `action`.
    /// 
    /// If the action is not stateful then `nil` will be returned.  If the
    /// action is stateful then the type of the return value is the type
    /// given by `g_action_get_state_type()`.
    /// 
    /// The return value (if non-`nil`) should be freed with
    /// `g_variant_unref()` when it is no longer required.
    @inlinable func getState() -> GLib.VariantRef! {
        let rv = GLib.VariantRef(g_action_get_state(action_ptr))
        return rv
    }

    /// Requests a hint about the valid range of values for the state of
    /// `action`.
    /// 
    /// If `nil` is returned it either means that the action is not stateful
    /// or that there is no hint about the valid range of values for the
    /// state of the action.
    /// 
    /// If a `GVariant` array is returned then each item in the array is a
    /// possible value for the state.  If a `GVariant` pair (ie: two-tuple) is
    /// returned then the tuple specifies the inclusive lower and upper bound
    /// of valid values for the state.
    /// 
    /// In any case, the information is merely a hint.  It may be possible to
    /// have a state value outside of the hinted range and setting a value
    /// within the range may fail.
    /// 
    /// The return value (if non-`nil`) should be freed with
    /// `g_variant_unref()` when it is no longer required.
    @inlinable func getStateHint() -> GLib.VariantRef! {
        let rv = GLib.VariantRef(g_action_get_state_hint(action_ptr))
        return rv
    }

    /// Queries the type of the state of `action`.
    /// 
    /// If the action is stateful (e.g. created with
    /// `g_simple_action_new_stateful()`) then this function returns the
    /// `GVariantType` of the state.  This is the type of the initial value
    /// given as the state. All calls to `g_action_change_state()` must give a
    /// `GVariant` of this type and `g_action_get_state()` will return a
    /// `GVariant` of the same type.
    /// 
    /// If the action is not stateful (e.g. created with `g_simple_action_new()`)
    /// then this function will return `nil`. In that case, `g_action_get_state()`
    /// will return `nil` and you must not call `g_action_change_state()`.
    @inlinable func getStateType() -> GLib.VariantTypeRef! {
        let rv = GLib.VariantTypeRef(g_action_get_state_type(action_ptr))
        return rv
    }
    /// If `action` is currently enabled.
    /// 
    /// If the action is disabled then calls to `g_action_activate()` and
    /// `g_action_change_state()` have no effect.
    @inlinable var enabled: Bool {
        /// Checks if `action` is currently enabled.
        /// 
        /// An action must be enabled in order to be activated or in order to
        /// have its state changed from outside callers.
        get {
            let rv = ((g_action_get_enabled(action_ptr)) != 0)
            return rv
        }
    }

    /// The name of the action.  This is mostly meaningful for identifying
    /// the action once it has been added to a `GActionGroup`. It is immutable.
    @inlinable var name: String! {
        /// Queries the name of `action`.
        get {
            let rv = g_action_get_name(action_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Queries the type of the parameter that must be given when activating
    /// `action`.
    /// 
    /// When activating the action using `g_action_activate()`, the `GVariant`
    /// given to that function must be of the type returned by this function.
    /// 
    /// In the case that this function returns `nil`, you must not give any
    /// `GVariant`, but `nil` instead.
    @inlinable var parameterType: GLib.VariantTypeRef! {
        /// Queries the type of the parameter that must be given when activating
        /// `action`.
        /// 
        /// When activating the action using `g_action_activate()`, the `GVariant`
        /// given to that function must be of the type returned by this function.
        /// 
        /// In the case that this function returns `nil`, you must not give any
        /// `GVariant`, but `nil` instead.
        get {
            let rv = GLib.VariantTypeRef(g_action_get_parameter_type(action_ptr))
            return rv
        }
    }

    /// The state of the action, or `nil` if the action is stateless.
    @inlinable var state: GLib.VariantRef! {
        /// Queries the current state of `action`.
        /// 
        /// If the action is not stateful then `nil` will be returned.  If the
        /// action is stateful then the type of the return value is the type
        /// given by `g_action_get_state_type()`.
        /// 
        /// The return value (if non-`nil`) should be freed with
        /// `g_variant_unref()` when it is no longer required.
        get {
            let rv = GLib.VariantRef(g_action_get_state(action_ptr))
            return rv
        }
    }

    /// Requests a hint about the valid range of values for the state of
    /// `action`.
    /// 
    /// If `nil` is returned it either means that the action is not stateful
    /// or that there is no hint about the valid range of values for the
    /// state of the action.
    /// 
    /// If a `GVariant` array is returned then each item in the array is a
    /// possible value for the state.  If a `GVariant` pair (ie: two-tuple) is
    /// returned then the tuple specifies the inclusive lower and upper bound
    /// of valid values for the state.
    /// 
    /// In any case, the information is merely a hint.  It may be possible to
    /// have a state value outside of the hinted range and setting a value
    /// within the range may fail.
    /// 
    /// The return value (if non-`nil`) should be freed with
    /// `g_variant_unref()` when it is no longer required.
    @inlinable var stateHint: GLib.VariantRef! {
        /// Requests a hint about the valid range of values for the state of
        /// `action`.
        /// 
        /// If `nil` is returned it either means that the action is not stateful
        /// or that there is no hint about the valid range of values for the
        /// state of the action.
        /// 
        /// If a `GVariant` array is returned then each item in the array is a
        /// possible value for the state.  If a `GVariant` pair (ie: two-tuple) is
        /// returned then the tuple specifies the inclusive lower and upper bound
        /// of valid values for the state.
        /// 
        /// In any case, the information is merely a hint.  It may be possible to
        /// have a state value outside of the hinted range and setting a value
        /// within the range may fail.
        /// 
        /// The return value (if non-`nil`) should be freed with
        /// `g_variant_unref()` when it is no longer required.
        get {
            let rv = GLib.VariantRef(g_action_get_state_hint(action_ptr))
            return rv
        }
    }

    /// Queries the type of the state of `action`.
    /// 
    /// If the action is stateful (e.g. created with
    /// `g_simple_action_new_stateful()`) then this function returns the
    /// `GVariantType` of the state.  This is the type of the initial value
    /// given as the state. All calls to `g_action_change_state()` must give a
    /// `GVariant` of this type and `g_action_get_state()` will return a
    /// `GVariant` of the same type.
    /// 
    /// If the action is not stateful (e.g. created with `g_simple_action_new()`)
    /// then this function will return `nil`. In that case, `g_action_get_state()`
    /// will return `nil` and you must not call `g_action_change_state()`.
    @inlinable var stateType: GLib.VariantTypeRef! {
        /// Queries the type of the state of `action`.
        /// 
        /// If the action is stateful (e.g. created with
        /// `g_simple_action_new_stateful()`) then this function returns the
        /// `GVariantType` of the state.  This is the type of the initial value
        /// given as the state. All calls to `g_action_change_state()` must give a
        /// `GVariant` of this type and `g_action_get_state()` will return a
        /// `GVariant` of the same type.
        /// 
        /// If the action is not stateful (e.g. created with `g_simple_action_new()`)
        /// then this function will return `nil`. In that case, `g_action_get_state()`
        /// will return `nil` and you must not call `g_action_change_state()`.
        get {
            let rv = GLib.VariantTypeRef(g_action_get_state_type(action_ptr))
            return rv
        }
    }


}



// MARK: - ActionGroup Interface

/// The `ActionGroupProtocol` protocol exposes the methods and properties of an underlying `GActionGroup` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ActionGroup`.
/// Alternatively, use `ActionGroupRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GActionGroup` represents a group of actions. Actions can be used to
/// expose functionality in a structured way, either from one part of a
/// program to another, or to the outside world. Action groups are often
/// used together with a `GMenuModel` that provides additional
/// representation data for displaying the actions to the user, e.g. in
/// a menu.
/// 
/// The main way to interact with the actions in a GActionGroup is to
/// activate them with `g_action_group_activate_action()`. Activating an
/// action may require a `GVariant` parameter. The required type of the
/// parameter can be inquired with `g_action_group_get_action_parameter_type()`.
/// Actions may be disabled, see `g_action_group_get_action_enabled()`.
/// Activating a disabled action has no effect.
/// 
/// Actions may optionally have a state in the form of a `GVariant`. The
/// current state of an action can be inquired with
/// `g_action_group_get_action_state()`. Activating a stateful action may
/// change its state, but it is also possible to set the state by calling
/// `g_action_group_change_action_state()`.
/// 
/// As typical example, consider a text editing application which has an
/// option to change the current font to 'bold'. A good way to represent
/// this would be a stateful action, with a boolean state. Activating the
/// action would toggle the state.
/// 
/// Each action in the group has a unique name (which is a string).  All
/// method calls, except `g_action_group_list_actions()` take the name of
/// an action as an argument.
/// 
/// The `GActionGroup` API is meant to be the 'public' API to the action
/// group.  The calls here are exactly the interaction that 'external
/// forces' (eg: UI, incoming D-Bus messages, etc.) are supposed to have
/// with actions.  'Internal' APIs (ie: ones meant only to be accessed by
/// the action group implementation) are found on subclasses.  This is
/// why you will find - for example - `g_action_group_get_action_enabled()`
/// but not an equivalent `set()` call.
/// 
/// Signals are emitted on the action group in response to state changes
/// on individual actions.
/// 
/// Implementations of `GActionGroup` should provide implementations for
/// the virtual functions `g_action_group_list_actions()` and
/// `g_action_group_query_action()`.  The other virtual functions should
/// not be implemented - their "wrappers" are actually implemented with
/// calls to `g_action_group_query_action()`.
public protocol ActionGroupProtocol {
        /// Untyped pointer to the underlying `GActionGroup` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GActionGroup` instance.
    var action_group_ptr: UnsafeMutablePointer<GActionGroup>! { get }

}

/// The `ActionGroupRef` type acts as a lightweight Swift reference to an underlying `GActionGroup` instance.
/// It exposes methods that can operate on this data type through `ActionGroupProtocol` conformance.
/// Use `ActionGroupRef` only as an `unowned` reference to an existing `GActionGroup` instance.
///
/// `GActionGroup` represents a group of actions. Actions can be used to
/// expose functionality in a structured way, either from one part of a
/// program to another, or to the outside world. Action groups are often
/// used together with a `GMenuModel` that provides additional
/// representation data for displaying the actions to the user, e.g. in
/// a menu.
/// 
/// The main way to interact with the actions in a GActionGroup is to
/// activate them with `g_action_group_activate_action()`. Activating an
/// action may require a `GVariant` parameter. The required type of the
/// parameter can be inquired with `g_action_group_get_action_parameter_type()`.
/// Actions may be disabled, see `g_action_group_get_action_enabled()`.
/// Activating a disabled action has no effect.
/// 
/// Actions may optionally have a state in the form of a `GVariant`. The
/// current state of an action can be inquired with
/// `g_action_group_get_action_state()`. Activating a stateful action may
/// change its state, but it is also possible to set the state by calling
/// `g_action_group_change_action_state()`.
/// 
/// As typical example, consider a text editing application which has an
/// option to change the current font to 'bold'. A good way to represent
/// this would be a stateful action, with a boolean state. Activating the
/// action would toggle the state.
/// 
/// Each action in the group has a unique name (which is a string).  All
/// method calls, except `g_action_group_list_actions()` take the name of
/// an action as an argument.
/// 
/// The `GActionGroup` API is meant to be the 'public' API to the action
/// group.  The calls here are exactly the interaction that 'external
/// forces' (eg: UI, incoming D-Bus messages, etc.) are supposed to have
/// with actions.  'Internal' APIs (ie: ones meant only to be accessed by
/// the action group implementation) are found on subclasses.  This is
/// why you will find - for example - `g_action_group_get_action_enabled()`
/// but not an equivalent `set()` call.
/// 
/// Signals are emitted on the action group in response to state changes
/// on individual actions.
/// 
/// Implementations of `GActionGroup` should provide implementations for
/// the virtual functions `g_action_group_list_actions()` and
/// `g_action_group_query_action()`.  The other virtual functions should
/// not be implemented - their "wrappers" are actually implemented with
/// calls to `g_action_group_query_action()`.
public struct ActionGroupRef: ActionGroupProtocol {
        /// Untyped pointer to the underlying `GActionGroup` instance.
    /// For type-safe access, use the generated, typed pointer `action_group_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ActionGroupRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GActionGroup>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GActionGroup>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GActionGroup>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GActionGroup>?) {
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

    /// Reference intialiser for a related type that implements `ActionGroupProtocol`
    @inlinable init<T: ActionGroupProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ActionGroup` type acts as an owner of an underlying `GActionGroup` instance.
/// It provides the methods that can operate on this data type through `ActionGroupProtocol` conformance.
/// Use `ActionGroup` as a strong reference or owner of a `GActionGroup` instance.
///
/// `GActionGroup` represents a group of actions. Actions can be used to
/// expose functionality in a structured way, either from one part of a
/// program to another, or to the outside world. Action groups are often
/// used together with a `GMenuModel` that provides additional
/// representation data for displaying the actions to the user, e.g. in
/// a menu.
/// 
/// The main way to interact with the actions in a GActionGroup is to
/// activate them with `g_action_group_activate_action()`. Activating an
/// action may require a `GVariant` parameter. The required type of the
/// parameter can be inquired with `g_action_group_get_action_parameter_type()`.
/// Actions may be disabled, see `g_action_group_get_action_enabled()`.
/// Activating a disabled action has no effect.
/// 
/// Actions may optionally have a state in the form of a `GVariant`. The
/// current state of an action can be inquired with
/// `g_action_group_get_action_state()`. Activating a stateful action may
/// change its state, but it is also possible to set the state by calling
/// `g_action_group_change_action_state()`.
/// 
/// As typical example, consider a text editing application which has an
/// option to change the current font to 'bold'. A good way to represent
/// this would be a stateful action, with a boolean state. Activating the
/// action would toggle the state.
/// 
/// Each action in the group has a unique name (which is a string).  All
/// method calls, except `g_action_group_list_actions()` take the name of
/// an action as an argument.
/// 
/// The `GActionGroup` API is meant to be the 'public' API to the action
/// group.  The calls here are exactly the interaction that 'external
/// forces' (eg: UI, incoming D-Bus messages, etc.) are supposed to have
/// with actions.  'Internal' APIs (ie: ones meant only to be accessed by
/// the action group implementation) are found on subclasses.  This is
/// why you will find - for example - `g_action_group_get_action_enabled()`
/// but not an equivalent `set()` call.
/// 
/// Signals are emitted on the action group in response to state changes
/// on individual actions.
/// 
/// Implementations of `GActionGroup` should provide implementations for
/// the virtual functions `g_action_group_list_actions()` and
/// `g_action_group_query_action()`.  The other virtual functions should
/// not be implemented - their "wrappers" are actually implemented with
/// calls to `g_action_group_query_action()`.
open class ActionGroup: ActionGroupProtocol {
        /// Untyped pointer to the underlying `GActionGroup` instance.
    /// For type-safe access, use the generated, typed pointer `action_group_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GActionGroup>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GActionGroup>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionGroup` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GActionGroup>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GActionGroup>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GActionGroup` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GActionGroup>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GActionGroup, cannot ref(action_group_ptr)
    }

    /// Reference intialiser for a related type that implements `ActionGroupProtocol`
    /// `GActionGroup` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ActionGroupProtocol`
    @inlinable public init<T: ActionGroupProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GActionGroup, cannot ref(action_group_ptr)
    }

    /// Do-nothing destructor for `GActionGroup`.
    deinit {
        // no reference counting for GActionGroup, cannot unref(action_group_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GActionGroup, cannot ref(action_group_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GActionGroup, cannot ref(action_group_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GActionGroup, cannot ref(action_group_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GActionGroup, cannot ref(action_group_ptr)
    }



}

// MARK: no ActionGroup properties

public enum ActionGroupSignalName: String, SignalNameProtocol {
    /// Signals that a new action was just added to the group.
    /// This signal is emitted after the action has been added
    /// and is now visible.
    case actionAdded = "action-added"
    /// Signals that the enabled status of the named action has changed.
    case actionEnabledChanged = "action-enabled-changed"
    /// Signals that an action is just about to be removed from the group.
    /// This signal is emitted before the action is removed, so the action
    /// is still visible and can be queried from the signal handler.
    case actionRemoved = "action-removed"
    /// Signals that the state of the named action has changed.
    case actionStateChanged = "action-state-changed"

}

// MARK: ActionGroup signals
public extension ActionGroupProtocol {
    /// Connect a Swift signal handler to the given, typed `ActionGroupSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: ActionGroupSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        GLibObject.ObjectRef(raw: ptr).connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `ActionGroupSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: ActionGroupSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        GLibObject.ObjectRef(raw: ptr).connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Signals that a new action was just added to the group.
    /// This signal is emitted after the action has been added
    /// and is now visible.
    /// - Note: This represents the underlying `action-added` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter actionName: the name of the action in `action_group`
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `actionAdded` signal is emitted
    @discardableResult @inlinable func onActionAdded(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ActionGroupRef, _ actionName: String) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ActionGroupRef, String, Void>
        let cCallback: @convention(c) (gpointer, UnsafeMutablePointer<gchar>?, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ActionGroupRef(raw: unownedSelf), arg1.map({ String(cString: $0) })!)
            return output
        }
        return connect(
            signal: .actionAdded,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `action-added` signal for using the `connect(signal:)` methods
    static var actionAddedSignal: ActionGroupSignalName { .actionAdded }
    
    /// Signals that the enabled status of the named action has changed.
    /// - Note: This represents the underlying `action-enabled-changed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter actionName: the name of the action in `action_group`
    /// - Parameter enabled: whether the action is enabled or not
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `actionEnabledChanged` signal is emitted
    @discardableResult @inlinable func onActionEnabledChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ActionGroupRef, _ actionName: String, _ enabled: Bool) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<ActionGroupRef, String, Bool, Void>
        let cCallback: @convention(c) (gpointer, UnsafeMutablePointer<gchar>?, gboolean, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ActionGroupRef(raw: unownedSelf), arg1.map({ String(cString: $0) })!, ((arg2) != 0))
            return output
        }
        return connect(
            signal: .actionEnabledChanged,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `action-enabled-changed` signal for using the `connect(signal:)` methods
    static var actionEnabledChangedSignal: ActionGroupSignalName { .actionEnabledChanged }
    
    /// Signals that an action is just about to be removed from the group.
    /// This signal is emitted before the action is removed, so the action
    /// is still visible and can be queried from the signal handler.
    /// - Note: This represents the underlying `action-removed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter actionName: the name of the action in `action_group`
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `actionRemoved` signal is emitted
    @discardableResult @inlinable func onActionRemoved(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ActionGroupRef, _ actionName: String) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ActionGroupRef, String, Void>
        let cCallback: @convention(c) (gpointer, UnsafeMutablePointer<gchar>?, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ActionGroupRef(raw: unownedSelf), arg1.map({ String(cString: $0) })!)
            return output
        }
        return connect(
            signal: .actionRemoved,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `action-removed` signal for using the `connect(signal:)` methods
    static var actionRemovedSignal: ActionGroupSignalName { .actionRemoved }
    
    /// Signals that the state of the named action has changed.
    /// - Note: This represents the underlying `action-state-changed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter actionName: the name of the action in `action_group`
    /// - Parameter value: the new value of the state
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `actionStateChanged` signal is emitted
    @discardableResult @inlinable func onActionStateChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ActionGroupRef, _ actionName: String, _ value: GLib.VariantRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<ActionGroupRef, String, GLib.VariantRef, Void>
        let cCallback: @convention(c) (gpointer, UnsafeMutablePointer<gchar>?, gpointer, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ActionGroupRef(raw: unownedSelf), arg1.map({ String(cString: $0) })!, GLib.VariantRef(raw: arg2))
            return output
        }
        return connect(
            signal: .actionStateChanged,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `action-state-changed` signal for using the `connect(signal:)` methods
    static var actionStateChangedSignal: ActionGroupSignalName { .actionStateChanged }
    
    
}

// MARK: ActionGroup Interface: ActionGroupProtocol extension (methods and fields)
public extension ActionGroupProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GActionGroup` instance.
    @inlinable var action_group_ptr: UnsafeMutablePointer<GActionGroup>! { return ptr?.assumingMemoryBound(to: GActionGroup.self) }

    /// Emits the `GActionGroup::action`-added signal on `action_group`.
    /// 
    /// This function should only be called by `GActionGroup` implementations.
    @inlinable func actionAdded(actionName: UnsafePointer<gchar>!) {
        g_action_group_action_added(action_group_ptr, actionName)
    
    }

    /// Emits the `GActionGroup::action`-enabled-changed signal on `action_group`.
    /// 
    /// This function should only be called by `GActionGroup` implementations.
    @inlinable func actionEnabledChanged(actionName: UnsafePointer<gchar>!, enabled: Bool) {
        g_action_group_action_enabled_changed(action_group_ptr, actionName, gboolean((enabled) ? 1 : 0))
    
    }

    /// Emits the `GActionGroup::action`-removed signal on `action_group`.
    /// 
    /// This function should only be called by `GActionGroup` implementations.
    @inlinable func actionRemoved(actionName: UnsafePointer<gchar>!) {
        g_action_group_action_removed(action_group_ptr, actionName)
    
    }

    /// Emits the `GActionGroup::action`-state-changed signal on `action_group`.
    /// 
    /// This function should only be called by `GActionGroup` implementations.
    @inlinable func actionStateChanged<VariantT: GLib.VariantProtocol>(actionName: UnsafePointer<gchar>!, state: VariantT) {
        g_action_group_action_state_changed(action_group_ptr, actionName, state.variant_ptr)
    
    }

    /// Activate the named action within `action_group`.
    /// 
    /// If the action is expecting a parameter, then the correct type of
    /// parameter must be given as `parameter`.  If the action is expecting no
    /// parameters then `parameter` must be `nil`.  See
    /// `g_action_group_get_action_parameter_type()`.
    @inlinable func activateAction(actionName: UnsafePointer<gchar>!, parameter: GLib.VariantRef? = nil) {
        g_action_group_activate_action(action_group_ptr, actionName, parameter?.variant_ptr)
    
    }
    /// Activate the named action within `action_group`.
    /// 
    /// If the action is expecting a parameter, then the correct type of
    /// parameter must be given as `parameter`.  If the action is expecting no
    /// parameters then `parameter` must be `nil`.  See
    /// `g_action_group_get_action_parameter_type()`.
    @inlinable func activateAction<VariantT: GLib.VariantProtocol>(actionName: UnsafePointer<gchar>!, parameter: VariantT?) {
        g_action_group_activate_action(action_group_ptr, actionName, parameter?.variant_ptr)
    
    }

    /// Request for the state of the named action within `action_group` to be
    /// changed to `value`.
    /// 
    /// The action must be stateful and `value` must be of the correct type.
    /// See `g_action_group_get_action_state_type()`.
    /// 
    /// This call merely requests a change.  The action may refuse to change
    /// its state or may change its state to something other than `value`.
    /// See `g_action_group_get_action_state_hint()`.
    /// 
    /// If the `value` GVariant is floating, it is consumed.
    @inlinable func changeActionState<VariantT: GLib.VariantProtocol>(actionName: UnsafePointer<gchar>!, value: VariantT) {
        g_action_group_change_action_state(action_group_ptr, actionName, value.variant_ptr)
    
    }

    /// Checks if the named action within `action_group` is currently enabled.
    /// 
    /// An action must be enabled in order to be activated or in order to
    /// have its state changed from outside callers.
    @inlinable func getActionEnabled(actionName: UnsafePointer<gchar>!) -> Bool {
        let rv = ((g_action_group_get_action_enabled(action_group_ptr, actionName)) != 0)
        return rv
    }

    /// Queries the type of the parameter that must be given when activating
    /// the named action within `action_group`.
    /// 
    /// When activating the action using `g_action_group_activate_action()`,
    /// the `GVariant` given to that function must be of the type returned
    /// by this function.
    /// 
    /// In the case that this function returns `nil`, you must not give any
    /// `GVariant`, but `nil` instead.
    /// 
    /// The parameter type of a particular action will never change but it is
    /// possible for an action to be removed and for a new action to be added
    /// with the same name but a different parameter type.
    @inlinable func getActionParameterType(actionName: UnsafePointer<gchar>!) -> GLib.VariantTypeRef! {
        let rv = GLib.VariantTypeRef(g_action_group_get_action_parameter_type(action_group_ptr, actionName))
        return rv
    }

    /// Queries the current state of the named action within `action_group`.
    /// 
    /// If the action is not stateful then `nil` will be returned.  If the
    /// action is stateful then the type of the return value is the type
    /// given by `g_action_group_get_action_state_type()`.
    /// 
    /// The return value (if non-`nil`) should be freed with
    /// `g_variant_unref()` when it is no longer required.
    @inlinable func getActionState(actionName: UnsafePointer<gchar>!) -> GLib.VariantRef! {
        let rv = GLib.VariantRef(g_action_group_get_action_state(action_group_ptr, actionName))
        return rv
    }

    /// Requests a hint about the valid range of values for the state of the
    /// named action within `action_group`.
    /// 
    /// If `nil` is returned it either means that the action is not stateful
    /// or that there is no hint about the valid range of values for the
    /// state of the action.
    /// 
    /// If a `GVariant` array is returned then each item in the array is a
    /// possible value for the state.  If a `GVariant` pair (ie: two-tuple) is
    /// returned then the tuple specifies the inclusive lower and upper bound
    /// of valid values for the state.
    /// 
    /// In any case, the information is merely a hint.  It may be possible to
    /// have a state value outside of the hinted range and setting a value
    /// within the range may fail.
    /// 
    /// The return value (if non-`nil`) should be freed with
    /// `g_variant_unref()` when it is no longer required.
    @inlinable func getActionStateHint(actionName: UnsafePointer<gchar>!) -> GLib.VariantRef! {
        let rv = GLib.VariantRef(g_action_group_get_action_state_hint(action_group_ptr, actionName))
        return rv
    }

    /// Queries the type of the state of the named action within
    /// `action_group`.
    /// 
    /// If the action is stateful then this function returns the
    /// `GVariantType` of the state.  All calls to
    /// `g_action_group_change_action_state()` must give a `GVariant` of this
    /// type and `g_action_group_get_action_state()` will return a `GVariant`
    /// of the same type.
    /// 
    /// If the action is not stateful then this function will return `nil`.
    /// In that case, `g_action_group_get_action_state()` will return `nil`
    /// and you must not call `g_action_group_change_action_state()`.
    /// 
    /// The state type of a particular action will never change but it is
    /// possible for an action to be removed and for a new action to be added
    /// with the same name but a different state type.
    @inlinable func getActionStateType(actionName: UnsafePointer<gchar>!) -> GLib.VariantTypeRef! {
        let rv = GLib.VariantTypeRef(g_action_group_get_action_state_type(action_group_ptr, actionName))
        return rv
    }

    /// Checks if the named action exists within `action_group`.
    @inlinable func hasAction(actionName: UnsafePointer<gchar>!) -> Bool {
        let rv = ((g_action_group_has_action(action_group_ptr, actionName)) != 0)
        return rv
    }

    /// Lists the actions contained within `action_group`.
    /// 
    /// The caller is responsible for freeing the list with `g_strfreev()` when
    /// it is no longer required.
    @inlinable func listActions() -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        let rv = g_action_group_list_actions(action_group_ptr)
        return rv
    }

    /// Queries all aspects of the named action within an `action_group`.
    /// 
    /// This function acquires the information available from
    /// `g_action_group_has_action()`, `g_action_group_get_action_enabled()`,
    /// `g_action_group_get_action_parameter_type()`,
    /// `g_action_group_get_action_state_type()`,
    /// `g_action_group_get_action_state_hint()` and
    /// `g_action_group_get_action_state()` with a single function call.
    /// 
    /// This provides two main benefits.
    /// 
    /// The first is the improvement in efficiency that comes with not having
    /// to perform repeated lookups of the action in order to discover
    /// different things about it.  The second is that implementing
    /// `GActionGroup` can now be done by only overriding this one virtual
    /// function.
    /// 
    /// The interface provides a default implementation of this function that
    /// calls the individual functions, as required, to fetch the
    /// information.  The interface also provides default implementations of
    /// those functions that call this function.  All implementations,
    /// therefore, must override either this function or all of the others.
    /// 
    /// If the action exists, `true` is returned and any of the requested
    /// fields (as indicated by having a non-`nil` reference passed in) are
    /// filled.  If the action doesn't exist, `false` is returned and the
    /// fields may or may not have been modified.
    @inlinable func queryAction(actionName: UnsafePointer<gchar>!, enabled: UnsafeMutablePointer<gboolean>!, parameterType: UnsafeMutablePointer<UnsafePointer<GVariantType>?>! = nil, stateType: UnsafeMutablePointer<UnsafePointer<GVariantType>?>! = nil, stateHint: UnsafeMutablePointer<UnsafeMutablePointer<GVariant>?>! = nil, state: UnsafeMutablePointer<UnsafeMutablePointer<GVariant>?>! = nil) -> Bool {
        let rv = ((g_action_group_query_action(action_group_ptr, actionName, enabled, parameterType, stateType, stateHint, state)) != 0)
        return rv
    }


}



// MARK: - ActionMap Interface

/// The `ActionMapProtocol` protocol exposes the methods and properties of an underlying `GActionMap` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ActionMap`.
/// Alternatively, use `ActionMapRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The GActionMap interface is implemented by `GActionGroup`
/// implementations that operate by containing a number of
/// named `GAction` instances, such as `GSimpleActionGroup`.
/// 
/// One useful application of this interface is to map the
/// names of actions from various action groups to unique,
/// prefixed names (e.g. by prepending "app." or "win.").
/// This is the motivation for the 'Map' part of the interface
/// name.
public protocol ActionMapProtocol {
        /// Untyped pointer to the underlying `GActionMap` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GActionMap` instance.
    var action_map_ptr: UnsafeMutablePointer<GActionMap>! { get }

}

/// The `ActionMapRef` type acts as a lightweight Swift reference to an underlying `GActionMap` instance.
/// It exposes methods that can operate on this data type through `ActionMapProtocol` conformance.
/// Use `ActionMapRef` only as an `unowned` reference to an existing `GActionMap` instance.
///
/// The GActionMap interface is implemented by `GActionGroup`
/// implementations that operate by containing a number of
/// named `GAction` instances, such as `GSimpleActionGroup`.
/// 
/// One useful application of this interface is to map the
/// names of actions from various action groups to unique,
/// prefixed names (e.g. by prepending "app." or "win.").
/// This is the motivation for the 'Map' part of the interface
/// name.
public struct ActionMapRef: ActionMapProtocol {
        /// Untyped pointer to the underlying `GActionMap` instance.
    /// For type-safe access, use the generated, typed pointer `action_map_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ActionMapRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GActionMap>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GActionMap>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GActionMap>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GActionMap>?) {
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

    /// Reference intialiser for a related type that implements `ActionMapProtocol`
    @inlinable init<T: ActionMapProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ActionMap` type acts as an owner of an underlying `GActionMap` instance.
/// It provides the methods that can operate on this data type through `ActionMapProtocol` conformance.
/// Use `ActionMap` as a strong reference or owner of a `GActionMap` instance.
///
/// The GActionMap interface is implemented by `GActionGroup`
/// implementations that operate by containing a number of
/// named `GAction` instances, such as `GSimpleActionGroup`.
/// 
/// One useful application of this interface is to map the
/// names of actions from various action groups to unique,
/// prefixed names (e.g. by prepending "app." or "win.").
/// This is the motivation for the 'Map' part of the interface
/// name.
open class ActionMap: ActionMapProtocol {
        /// Untyped pointer to the underlying `GActionMap` instance.
    /// For type-safe access, use the generated, typed pointer `action_map_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionMap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GActionMap>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionMap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GActionMap>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionMap` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionMap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionMap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GActionMap>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionMap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GActionMap>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GActionMap` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ActionMap` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GActionMap>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GActionMap, cannot ref(action_map_ptr)
    }

    /// Reference intialiser for a related type that implements `ActionMapProtocol`
    /// `GActionMap` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ActionMapProtocol`
    @inlinable public init<T: ActionMapProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GActionMap, cannot ref(action_map_ptr)
    }

    /// Do-nothing destructor for `GActionMap`.
    deinit {
        // no reference counting for GActionMap, cannot unref(action_map_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GActionMap, cannot ref(action_map_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GActionMap, cannot ref(action_map_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GActionMap, cannot ref(action_map_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GActionMap, cannot ref(action_map_ptr)
    }



}

// MARK: no ActionMap properties

// MARK: no ActionMap signals

// MARK: ActionMap has no signals
// MARK: ActionMap Interface: ActionMapProtocol extension (methods and fields)
public extension ActionMapProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GActionMap` instance.
    @inlinable var action_map_ptr: UnsafeMutablePointer<GActionMap>! { return ptr?.assumingMemoryBound(to: GActionMap.self) }

    /// Adds an action to the `action_map`.
    /// 
    /// If the action map already contains an action with the same name
    /// as `action` then the old action is dropped from the action map.
    /// 
    /// The action map takes its own reference on `action`.
    @inlinable func add<ActionT: ActionProtocol>(action: ActionT) {
        g_action_map_add_action(action_map_ptr, action.action_ptr)
    
    }

    /// A convenience function for creating multiple `GSimpleAction` instances
    /// and adding them to a `GActionMap`.
    /// 
    /// Each action is constructed as per one `GActionEntry`.
    /// 
    /// (C Language Example):
    /// ```C
    /// static void
    /// activate_quit (GSimpleAction *simple,
    ///                GVariant      *parameter,
    ///                gpointer       user_data)
    /// {
    ///   exit (0);
    /// }
    /// 
    /// static void
    /// activate_print_string (GSimpleAction *simple,
    ///                        GVariant      *parameter,
    ///                        gpointer       user_data)
    /// {
    ///   g_print ("%s\n", g_variant_get_string (parameter, NULL));
    /// }
    /// 
    /// static GActionGroup *
    /// create_action_group (void)
    /// {
    ///   const GActionEntry entries[] = {
    ///     { "quit",         activate_quit              },
    ///     { "print-string", activate_print_string, "s" }
    ///   };
    ///   GSimpleActionGroup *group;
    /// 
    ///   group = g_simple_action_group_new ();
    ///   g_action_map_add_action_entries (G_ACTION_MAP (group), entries, G_N_ELEMENTS (entries), NULL);
    /// 
    ///   return G_ACTION_GROUP (group);
    /// }
    /// ```
    /// 
    @inlinable func addAction(entries: UnsafePointer<GActionEntry>!, nEntries: Int, userData: gpointer! = nil) {
        g_action_map_add_action_entries(action_map_ptr, entries, gint(nEntries), userData)
    
    }

    /// Looks up the action with the name `action_name` in `action_map`.
    /// 
    /// If no such action exists, returns `nil`.
    @inlinable func lookupAction(actionName: UnsafePointer<gchar>!) -> ActionRef! {
        let rv = ActionRef(gconstpointer: gconstpointer(g_action_map_lookup_action(action_map_ptr, actionName)))
        return rv
    }

    /// Removes the named action from the action map.
    /// 
    /// If no action of this name is in the map then nothing happens.
    @inlinable func removeAction(actionName: UnsafePointer<gchar>!) {
        g_action_map_remove_action(action_map_ptr, actionName)
    
    }


}



// MARK: - AppInfo Interface

/// The `AppInfoProtocol` protocol exposes the methods and properties of an underlying `GAppInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AppInfo`.
/// Alternatively, use `AppInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GAppInfo` and `GAppLaunchContext` are used for describing and launching
/// applications installed on the system.
/// 
/// As of GLib 2.20, URIs will always be converted to POSIX paths
/// (using `g_file_get_path()`) when using `g_app_info_launch()` even if
/// the application requested an URI and not a POSIX path. For example
/// for a desktop-file based application with Exec key `totem
/// `U`` and a single URI, `sftp://foo/file.avi`, then
/// `/home/user/.gvfs/sftp on foo/file.avi` will be passed. This will
/// only work if a set of suitable GIO extensions (such as gvfs 2.26
/// compiled with FUSE support), is available and operational; if this
/// is not the case, the URI will be passed unmodified to the application.
/// Some URIs, such as `mailto:`, of course cannot be mapped to a POSIX
/// path (in gvfs there's no FUSE mount for it); such URIs will be
/// passed unmodified to the application.
/// 
/// Specifically for gvfs 2.26 and later, the POSIX URI will be mapped
/// back to the GIO URI in the `GFile` constructors (since gvfs
/// implements the `GVfs` extension point). As such, if the application
/// needs to examine the URI, it needs to use `g_file_get_uri()` or
/// similar on `GFile`. In other words, an application cannot assume
/// that the URI passed to e.g. `g_file_new_for_commandline_arg()` is
/// equal to the result of `g_file_get_uri()`. The following snippet
/// illustrates this:
/// 
/// ```
/// GFile *f;
/// char *uri;
/// 
/// file = g_file_new_for_commandline_arg (uri_from_commandline);
/// 
/// uri = g_file_get_uri (file);
/// strcmp (uri, uri_from_commandline) == 0;
/// g_free (uri);
/// 
/// if (g_file_has_uri_scheme (file, "cdda"))
///   {
///     // do something special with uri
///   }
/// g_object_unref (file);
/// ```
/// 
/// This code will work when both `cdda://sr0/Track 1.wav` and
/// `/home/user/.gvfs/cdda on sr0/Track 1.wav` is passed to the
/// application. It should be noted that it's generally not safe
/// for applications to rely on the format of a particular URIs.
/// Different launcher applications (e.g. file managers) may have
/// different ideas of what a given URI means.
public protocol AppInfoProtocol {
        /// Untyped pointer to the underlying `GAppInfo` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GAppInfo` instance.
    var app_info_ptr: UnsafeMutablePointer<GAppInfo>! { get }

}

/// The `AppInfoRef` type acts as a lightweight Swift reference to an underlying `GAppInfo` instance.
/// It exposes methods that can operate on this data type through `AppInfoProtocol` conformance.
/// Use `AppInfoRef` only as an `unowned` reference to an existing `GAppInfo` instance.
///
/// `GAppInfo` and `GAppLaunchContext` are used for describing and launching
/// applications installed on the system.
/// 
/// As of GLib 2.20, URIs will always be converted to POSIX paths
/// (using `g_file_get_path()`) when using `g_app_info_launch()` even if
/// the application requested an URI and not a POSIX path. For example
/// for a desktop-file based application with Exec key `totem
/// `U`` and a single URI, `sftp://foo/file.avi`, then
/// `/home/user/.gvfs/sftp on foo/file.avi` will be passed. This will
/// only work if a set of suitable GIO extensions (such as gvfs 2.26
/// compiled with FUSE support), is available and operational; if this
/// is not the case, the URI will be passed unmodified to the application.
/// Some URIs, such as `mailto:`, of course cannot be mapped to a POSIX
/// path (in gvfs there's no FUSE mount for it); such URIs will be
/// passed unmodified to the application.
/// 
/// Specifically for gvfs 2.26 and later, the POSIX URI will be mapped
/// back to the GIO URI in the `GFile` constructors (since gvfs
/// implements the `GVfs` extension point). As such, if the application
/// needs to examine the URI, it needs to use `g_file_get_uri()` or
/// similar on `GFile`. In other words, an application cannot assume
/// that the URI passed to e.g. `g_file_new_for_commandline_arg()` is
/// equal to the result of `g_file_get_uri()`. The following snippet
/// illustrates this:
/// 
/// ```
/// GFile *f;
/// char *uri;
/// 
/// file = g_file_new_for_commandline_arg (uri_from_commandline);
/// 
/// uri = g_file_get_uri (file);
/// strcmp (uri, uri_from_commandline) == 0;
/// g_free (uri);
/// 
/// if (g_file_has_uri_scheme (file, "cdda"))
///   {
///     // do something special with uri
///   }
/// g_object_unref (file);
/// ```
/// 
/// This code will work when both `cdda://sr0/Track 1.wav` and
/// `/home/user/.gvfs/cdda on sr0/Track 1.wav` is passed to the
/// application. It should be noted that it's generally not safe
/// for applications to rely on the format of a particular URIs.
/// Different launcher applications (e.g. file managers) may have
/// different ideas of what a given URI means.
public struct AppInfoRef: AppInfoProtocol {
        /// Untyped pointer to the underlying `GAppInfo` instance.
    /// For type-safe access, use the generated, typed pointer `app_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AppInfoRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GAppInfo>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GAppInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GAppInfo>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GAppInfo>?) {
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

    /// Reference intialiser for a related type that implements `AppInfoProtocol`
    @inlinable init<T: AppInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GAppInfo` from the given information.
    /// 
    /// Note that for `commandline`, the quoting rules of the Exec key of the
    /// [freedesktop.org Desktop Entry Specification](http://freedesktop.org/Standards/desktop-entry-spec)
    /// are applied. For example, if the `commandline` contains
    /// percent-encoded URIs, the percent-character must be doubled in order to prevent it from
    /// being swallowed by Exec key unquoting. See the specification for exact quoting rules.
    @inlinable static func createFrom(commandline: UnsafePointer<CChar>!, applicationName: UnsafePointer<CChar>? = nil, flags: AppInfoCreateFlags) throws -> AppInfoRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = AppInfoRef(gconstpointer: gconstpointer(g_app_info_create_from_commandline(commandline, applicationName, flags.value, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Gets the default `GAppInfo` for a given content type.
    @inlinable static func getDefaultFor(type contentType: UnsafePointer<CChar>!, mustSupportURIs: Bool) -> AppInfoRef! {
        guard let rv = AppInfoRef(gconstpointer: gconstpointer(g_app_info_get_default_for_type(contentType, gboolean((mustSupportURIs) ? 1 : 0)))) else { return nil }
        return rv
    }

    /// Gets the default application for handling URIs with
    /// the given URI scheme. A URI scheme is the initial part
    /// of the URI, up to but not including the ':', e.g. "http",
    /// "ftp" or "sip".
    @inlinable static func getDefaultFor(uriScheme uriScheme: UnsafePointer<CChar>!) -> AppInfoRef! {
        guard let rv = AppInfoRef(gconstpointer: gconstpointer(g_app_info_get_default_for_uri_scheme(uriScheme))) else { return nil }
        return rv
    }
}

/// The `AppInfo` type acts as an owner of an underlying `GAppInfo` instance.
/// It provides the methods that can operate on this data type through `AppInfoProtocol` conformance.
/// Use `AppInfo` as a strong reference or owner of a `GAppInfo` instance.
///
/// `GAppInfo` and `GAppLaunchContext` are used for describing and launching
/// applications installed on the system.
/// 
/// As of GLib 2.20, URIs will always be converted to POSIX paths
/// (using `g_file_get_path()`) when using `g_app_info_launch()` even if
/// the application requested an URI and not a POSIX path. For example
/// for a desktop-file based application with Exec key `totem
/// `U`` and a single URI, `sftp://foo/file.avi`, then
/// `/home/user/.gvfs/sftp on foo/file.avi` will be passed. This will
/// only work if a set of suitable GIO extensions (such as gvfs 2.26
/// compiled with FUSE support), is available and operational; if this
/// is not the case, the URI will be passed unmodified to the application.
/// Some URIs, such as `mailto:`, of course cannot be mapped to a POSIX
/// path (in gvfs there's no FUSE mount for it); such URIs will be
/// passed unmodified to the application.
/// 
/// Specifically for gvfs 2.26 and later, the POSIX URI will be mapped
/// back to the GIO URI in the `GFile` constructors (since gvfs
/// implements the `GVfs` extension point). As such, if the application
/// needs to examine the URI, it needs to use `g_file_get_uri()` or
/// similar on `GFile`. In other words, an application cannot assume
/// that the URI passed to e.g. `g_file_new_for_commandline_arg()` is
/// equal to the result of `g_file_get_uri()`. The following snippet
/// illustrates this:
/// 
/// ```
/// GFile *f;
/// char *uri;
/// 
/// file = g_file_new_for_commandline_arg (uri_from_commandline);
/// 
/// uri = g_file_get_uri (file);
/// strcmp (uri, uri_from_commandline) == 0;
/// g_free (uri);
/// 
/// if (g_file_has_uri_scheme (file, "cdda"))
///   {
///     // do something special with uri
///   }
/// g_object_unref (file);
/// ```
/// 
/// This code will work when both `cdda://sr0/Track 1.wav` and
/// `/home/user/.gvfs/cdda on sr0/Track 1.wav` is passed to the
/// application. It should be noted that it's generally not safe
/// for applications to rely on the format of a particular URIs.
/// Different launcher applications (e.g. file managers) may have
/// different ideas of what a given URI means.
open class AppInfo: AppInfoProtocol {
        /// Untyped pointer to the underlying `GAppInfo` instance.
    /// For type-safe access, use the generated, typed pointer `app_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GAppInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GAppInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppInfo` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GAppInfo>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GAppInfo>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GAppInfo` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `AppInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GAppInfo>) {
        ptr = UnsafeMutableRawPointer(op)
        g_object_ref(ptr)
    }

    /// Reference intialiser for a related type that implements `AppInfoProtocol`
    /// `GAppInfo` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AppInfoProtocol`
    @inlinable public init<T: AppInfoProtocol>(_ other: T) {
        ptr = other.ptr
        g_object_ref(ptr)
    }

    /// Do-nothing destructor for `GAppInfo`.
    deinit {
        g_object_unref(ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_object_ref(ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_object_ref(ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_object_ref(ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_object_ref(ptr)
    }


    /// Creates a new `GAppInfo` from the given information.
    /// 
    /// Note that for `commandline`, the quoting rules of the Exec key of the
    /// [freedesktop.org Desktop Entry Specification](http://freedesktop.org/Standards/desktop-entry-spec)
    /// are applied. For example, if the `commandline` contains
    /// percent-encoded URIs, the percent-character must be doubled in order to prevent it from
    /// being swallowed by Exec key unquoting. See the specification for exact quoting rules.
    @inlinable public static func createFrom(commandline: UnsafePointer<CChar>!, applicationName: UnsafePointer<CChar>? = nil, flags: AppInfoCreateFlags) throws -> AppInfo! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = AppInfo(gconstpointer: gconstpointer(g_app_info_create_from_commandline(commandline, applicationName, flags.value, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Gets the default `GAppInfo` for a given content type.
    @inlinable public static func getDefaultFor(type contentType: UnsafePointer<CChar>!, mustSupportURIs: Bool) -> AppInfo! {
        guard let rv = AppInfo(gconstpointer: gconstpointer(g_app_info_get_default_for_type(contentType, gboolean((mustSupportURIs) ? 1 : 0)))) else { return nil }
        return rv
    }

    /// Gets the default application for handling URIs with
    /// the given URI scheme. A URI scheme is the initial part
    /// of the URI, up to but not including the ':', e.g. "http",
    /// "ftp" or "sip".
    @inlinable public static func getDefaultFor(uriScheme uriScheme: UnsafePointer<CChar>!) -> AppInfo! {
        guard let rv = AppInfo(gconstpointer: gconstpointer(g_app_info_get_default_for_uri_scheme(uriScheme))) else { return nil }
        return rv
    }

}

// MARK: no AppInfo properties

// MARK: no AppInfo signals

// MARK: AppInfo has no signals
// MARK: AppInfo Interface: AppInfoProtocol extension (methods and fields)
public extension AppInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GAppInfo` instance.
    @inlinable var app_info_ptr: UnsafeMutablePointer<GAppInfo>! { return ptr?.assumingMemoryBound(to: GAppInfo.self) }

    /// Adds a content type to the application information to indicate the
    /// application is capable of opening files with the given content type.
    @inlinable func addSupportsType(contentType: UnsafePointer<CChar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_app_info_add_supports_type(app_info_ptr, contentType, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Obtains the information whether the `GAppInfo` can be deleted.
    /// See `g_app_info_delete()`.
    @inlinable func canDelete() -> Bool {
        let rv = ((g_app_info_can_delete(app_info_ptr)) != 0)
        return rv
    }

    /// Checks if a supported content type can be removed from an application.
    @inlinable func canRemoveSupportsType() -> Bool {
        let rv = ((g_app_info_can_remove_supports_type(app_info_ptr)) != 0)
        return rv
    }

    /// Tries to delete a `GAppInfo`.
    /// 
    /// On some platforms, there may be a difference between user-defined
    /// `GAppInfos` which can be deleted, and system-wide ones which cannot.
    /// See `g_app_info_can_delete()`.
    @inlinable func delete() -> Bool {
        let rv = ((g_app_info_delete(app_info_ptr)) != 0)
        return rv
    }

    /// Creates a duplicate of a `GAppInfo`.
    @inlinable func dup() -> AppInfoRef! {
        guard let rv = AppInfoRef(gconstpointer: gconstpointer(g_app_info_dup(app_info_ptr))) else { return nil }
        return rv
    }

    /// Checks if two `GAppInfos` are equal.
    /// 
    /// Note that the check <emphasis>may not</emphasis> compare each individual
    /// field, and only does an identity check. In case detecting changes in the
    /// contents is needed, program code must additionally compare relevant fields.
    @inlinable func equal<AppInfoT: AppInfoProtocol>(appinfo2: AppInfoT) -> Bool {
        let rv = ((g_app_info_equal(app_info_ptr, appinfo2.app_info_ptr)) != 0)
        return rv
    }

    /// Gets the commandline with which the application will be
    /// started.
    @inlinable func getCommandline() -> String! {
        let rv = g_app_info_get_commandline(app_info_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets a human-readable description of an installed application.
    @inlinable func getDescription() -> String! {
        let rv = g_app_info_get_description(app_info_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the display name of the application. The display name is often more
    /// descriptive to the user than the name itself.
    @inlinable func getDisplayName() -> String! {
        let rv = g_app_info_get_display_name(app_info_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the executable's name for the installed application.
    @inlinable func getExecutable() -> String! {
        let rv = g_app_info_get_executable(app_info_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the icon for the application.
    @inlinable func getIcon() -> IconRef! {
        let rv = IconRef(gconstpointer: gconstpointer(g_app_info_get_icon(app_info_ptr)))
        return rv
    }

    /// Gets the ID of an application. An id is a string that
    /// identifies the application. The exact format of the id is
    /// platform dependent. For instance, on Unix this is the
    /// desktop file id from the xdg menu specification.
    /// 
    /// Note that the returned ID may be `nil`, depending on how
    /// the `appinfo` has been constructed.
    @inlinable func getID() -> String! {
        let rv = g_app_info_get_id(app_info_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the installed name of the application.
    @inlinable func getName() -> String! {
        let rv = g_app_info_get_name(app_info_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Retrieves the list of content types that `app_info` claims to support.
    /// If this information is not provided by the environment, this function
    /// will return `nil`.
    /// This function does not take in consideration associations added with
    /// `g_app_info_add_supports_type()`, but only those exported directly by
    /// the application.
    @inlinable func getSupportedTypes() -> UnsafeMutablePointer<UnsafePointer<CChar>?>! {
        let rv = g_app_info_get_supported_types(app_info_ptr)
        return rv
    }

    /// Launches the application. Passes `files` to the launched application
    /// as arguments, using the optional `context` to get information
    /// about the details of the launcher (like what screen it is on).
    /// On error, `error` will be set accordingly.
    /// 
    /// To launch the application without arguments pass a `nil` `files` list.
    /// 
    /// Note that even if the launch is successful the application launched
    /// can fail to start if it runs into problems during startup. There is
    /// no way to detect this.
    /// 
    /// Some URIs can be changed when passed through a GFile (for instance
    /// unsupported URIs with strange formats like mailto:), so if you have
    /// a textual URI you want to pass in as argument, consider using
    /// `g_app_info_launch_uris()` instead.
    /// 
    /// The launched application inherits the environment of the launching
    /// process, but it can be modified with `g_app_launch_context_setenv()`
    /// and `g_app_launch_context_unsetenv()`.
    /// 
    /// On UNIX, this function sets the `GIO_LAUNCHED_DESKTOP_FILE`
    /// environment variable with the path of the launched desktop file and
    /// `GIO_LAUNCHED_DESKTOP_FILE_PID` to the process id of the launched
    /// process. This can be used to ignore `GIO_LAUNCHED_DESKTOP_FILE`,
    /// should it be inherited by further processes. The `DISPLAY` and
    /// `DESKTOP_STARTUP_ID` environment variables are also set, based
    /// on information provided in `context`.
    @inlinable func launch(files: GLib.ListRef? = nil, context: AppLaunchContextRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_app_info_launch(app_info_ptr, files?._ptr, context?.app_launch_context_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Launches the application. Passes `files` to the launched application
    /// as arguments, using the optional `context` to get information
    /// about the details of the launcher (like what screen it is on).
    /// On error, `error` will be set accordingly.
    /// 
    /// To launch the application without arguments pass a `nil` `files` list.
    /// 
    /// Note that even if the launch is successful the application launched
    /// can fail to start if it runs into problems during startup. There is
    /// no way to detect this.
    /// 
    /// Some URIs can be changed when passed through a GFile (for instance
    /// unsupported URIs with strange formats like mailto:), so if you have
    /// a textual URI you want to pass in as argument, consider using
    /// `g_app_info_launch_uris()` instead.
    /// 
    /// The launched application inherits the environment of the launching
    /// process, but it can be modified with `g_app_launch_context_setenv()`
    /// and `g_app_launch_context_unsetenv()`.
    /// 
    /// On UNIX, this function sets the `GIO_LAUNCHED_DESKTOP_FILE`
    /// environment variable with the path of the launched desktop file and
    /// `GIO_LAUNCHED_DESKTOP_FILE_PID` to the process id of the launched
    /// process. This can be used to ignore `GIO_LAUNCHED_DESKTOP_FILE`,
    /// should it be inherited by further processes. The `DISPLAY` and
    /// `DESKTOP_STARTUP_ID` environment variables are also set, based
    /// on information provided in `context`.
    @inlinable func launch<AppLaunchContextT: AppLaunchContextProtocol, ListT: GLib.ListProtocol>(files: ListT?, context: AppLaunchContextT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_app_info_launch(app_info_ptr, files?._ptr, context?.app_launch_context_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Launches the application. This passes the `uris` to the launched application
    /// as arguments, using the optional `context` to get information
    /// about the details of the launcher (like what screen it is on).
    /// On error, `error` will be set accordingly.
    /// 
    /// To launch the application without arguments pass a `nil` `uris` list.
    /// 
    /// Note that even if the launch is successful the application launched
    /// can fail to start if it runs into problems during startup. There is
    /// no way to detect this.
    @inlinable func launch(uris: GLib.ListRef? = nil, context: AppLaunchContextRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_app_info_launch_uris(app_info_ptr, uris?._ptr, context?.app_launch_context_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Launches the application. This passes the `uris` to the launched application
    /// as arguments, using the optional `context` to get information
    /// about the details of the launcher (like what screen it is on).
    /// On error, `error` will be set accordingly.
    /// 
    /// To launch the application without arguments pass a `nil` `uris` list.
    /// 
    /// Note that even if the launch is successful the application launched
    /// can fail to start if it runs into problems during startup. There is
    /// no way to detect this.
    @inlinable func launch<AppLaunchContextT: AppLaunchContextProtocol, ListT: GLib.ListProtocol>(uris: ListT?, context: AppLaunchContextT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_app_info_launch_uris(app_info_ptr, uris?._ptr, context?.app_launch_context_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Async version of `g_app_info_launch_uris()`.
    /// 
    /// The `callback` is invoked immediately after the application launch, but it
    /// waits for activation in case of D-Bus–activated applications and also provides
    /// extended error information for sandboxed applications, see notes for
    /// `g_app_info_launch_default_for_uri_async()`.
    @inlinable func launchURIsAsync(uris: GLib.ListRef? = nil, context: AppLaunchContextRef? = nil, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_app_info_launch_uris_async(app_info_ptr, uris?._ptr, context?.app_launch_context_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Async version of `g_app_info_launch_uris()`.
    /// 
    /// The `callback` is invoked immediately after the application launch, but it
    /// waits for activation in case of D-Bus–activated applications and also provides
    /// extended error information for sandboxed applications, see notes for
    /// `g_app_info_launch_default_for_uri_async()`.
    @inlinable func launchURIsAsync<AppLaunchContextT: AppLaunchContextProtocol, CancellableT: CancellableProtocol, ListT: GLib.ListProtocol>(uris: ListT?, context: AppLaunchContextT?, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_app_info_launch_uris_async(app_info_ptr, uris?._ptr, context?.app_launch_context_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes a `g_app_info_launch_uris_async()` operation.
    @inlinable func launchURIsFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_app_info_launch_uris_finish(app_info_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Removes a supported type from an application, if possible.
    @inlinable func removeSupportsType(contentType: UnsafePointer<CChar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_app_info_remove_supports_type(app_info_ptr, contentType, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Sets the application as the default handler for the given file extension.
    @inlinable func setAsDefaultForExtension(`extension`: UnsafePointer<CChar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_app_info_set_as_default_for_extension(app_info_ptr, `extension`, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Sets the application as the default handler for a given type.
    @inlinable func setAsDefaultForType(contentType: UnsafePointer<CChar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_app_info_set_as_default_for_type(app_info_ptr, contentType, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Sets the application as the last used application for a given type.
    /// This will make the application appear as first in the list returned
    /// by `g_app_info_get_recommended_for_type()`, regardless of the default
    /// application for that content type.
    @inlinable func setAsLastUsedForType(contentType: UnsafePointer<CChar>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_app_info_set_as_last_used_for_type(app_info_ptr, contentType, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Checks if the application info should be shown in menus that
    /// list available applications.
    @inlinable func shouldShow() -> Bool {
        let rv = ((g_app_info_should_show(app_info_ptr)) != 0)
        return rv
    }

    /// Checks if the application accepts files as arguments.
    @inlinable func supportsFiles() -> Bool {
        let rv = ((g_app_info_supports_files(app_info_ptr)) != 0)
        return rv
    }

    /// Checks if the application supports reading files and directories from URIs.
    @inlinable func supportsURIs() -> Bool {
        let rv = ((g_app_info_supports_uris(app_info_ptr)) != 0)
        return rv
    }
    /// Gets the commandline with which the application will be
    /// started.
    @inlinable var commandline: String! {
        /// Gets the commandline with which the application will be
        /// started.
        get {
            let rv = g_app_info_get_commandline(app_info_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets a human-readable description of an installed application.
    @inlinable var description: String! {
        /// Gets a human-readable description of an installed application.
        get {
            let rv = g_app_info_get_description(app_info_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the display name of the application. The display name is often more
    /// descriptive to the user than the name itself.
    @inlinable var displayName: String! {
        /// Gets the display name of the application. The display name is often more
        /// descriptive to the user than the name itself.
        get {
            let rv = g_app_info_get_display_name(app_info_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the executable's name for the installed application.
    @inlinable var executable: String! {
        /// Gets the executable's name for the installed application.
        get {
            let rv = g_app_info_get_executable(app_info_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the icon for the application.
    @inlinable var icon: IconRef! {
        /// Gets the icon for the application.
        get {
            let rv = IconRef(gconstpointer: gconstpointer(g_app_info_get_icon(app_info_ptr)))
            return rv
        }
    }

    /// Gets the ID of an application. An id is a string that
    /// identifies the application. The exact format of the id is
    /// platform dependent. For instance, on Unix this is the
    /// desktop file id from the xdg menu specification.
    /// 
    /// Note that the returned ID may be `nil`, depending on how
    /// the `appinfo` has been constructed.
    @inlinable var id: String! {
        /// Gets the ID of an application. An id is a string that
        /// identifies the application. The exact format of the id is
        /// platform dependent. For instance, on Unix this is the
        /// desktop file id from the xdg menu specification.
        /// 
        /// Note that the returned ID may be `nil`, depending on how
        /// the `appinfo` has been constructed.
        get {
            let rv = g_app_info_get_id(app_info_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the installed name of the application.
    @inlinable var name: String! {
        /// Gets the installed name of the application.
        get {
            let rv = g_app_info_get_name(app_info_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Retrieves the list of content types that `app_info` claims to support.
    /// If this information is not provided by the environment, this function
    /// will return `nil`.
    /// This function does not take in consideration associations added with
    /// `g_app_info_add_supports_type()`, but only those exported directly by
    /// the application.
    @inlinable var supportedTypes: UnsafeMutablePointer<UnsafePointer<CChar>?>! {
        /// Retrieves the list of content types that `app_info` claims to support.
        /// If this information is not provided by the environment, this function
        /// will return `nil`.
        /// This function does not take in consideration associations added with
        /// `g_app_info_add_supports_type()`, but only those exported directly by
        /// the application.
        get {
            let rv = g_app_info_get_supported_types(app_info_ptr)
            return rv
        }
    }


}



// MARK: - AsyncInitable Interface

/// The `AsyncInitableProtocol` protocol exposes the methods and properties of an underlying `GAsyncInitable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AsyncInitable`.
/// Alternatively, use `AsyncInitableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// This is the asynchronous version of `GInitable`; it behaves the same
/// in all ways except that initialization is asynchronous. For more details
/// see the descriptions on `GInitable`.
/// 
/// A class may implement both the `GInitable` and `GAsyncInitable` interfaces.
/// 
/// Users of objects implementing this are not intended to use the interface
/// method directly; instead it will be used automatically in various ways.
/// For C applications you generally just call `g_async_initable_new_async()`
/// directly, or indirectly via a `foo_thing_new_async()` wrapper. This will call
/// `g_async_initable_init_async()` under the cover, calling back with `nil` and
/// a set `GError` on failure.
/// 
/// A typical implementation might look something like this:
/// 
/// (C Language Example):
/// ```C
/// enum {
///    NOT_INITIALIZED,
///    INITIALIZING,
///    INITIALIZED
/// };
/// 
/// static void
/// _foo_ready_cb (Foo *self)
/// {
///   GList *l;
/// 
///   self->priv->state = INITIALIZED;
/// 
///   for (l = self->priv->init_results; l != NULL; l = l->next)
///     {
///       GTask *task = l->data;
/// 
///       if (self->priv->success)
///         g_task_return_boolean (task, TRUE);
///       else
///         g_task_return_new_error (task, ...);
///       g_object_unref (task);
///     }
/// 
///   g_list_free (self->priv->init_results);
///   self->priv->init_results = NULL;
/// }
/// 
/// static void
/// foo_init_async (GAsyncInitable       *initable,
///                 int                   io_priority,
///                 GCancellable         *cancellable,
///                 GAsyncReadyCallback   callback,
///                 gpointer              user_data)
/// {
///   Foo *self = FOO (initable);
///   GTask *task;
/// 
///   task = g_task_new (initable, cancellable, callback, user_data);
///   g_task_set_name (task, G_STRFUNC);
/// 
///   switch (self->priv->state)
///     {
///       case NOT_INITIALIZED:
///         _foo_get_ready (self);
///         self->priv->init_results = g_list_append (self->priv->init_results,
///                                                   task);
///         self->priv->state = INITIALIZING;
///         break;
///       case INITIALIZING:
///         self->priv->init_results = g_list_append (self->priv->init_results,
///                                                   task);
///         break;
///       case INITIALIZED:
///         if (!self->priv->success)
///           g_task_return_new_error (task, ...);
///         else
///           g_task_return_boolean (task, TRUE);
///         g_object_unref (task);
///         break;
///     }
/// }
/// 
/// static gboolean
/// foo_init_finish (GAsyncInitable       *initable,
///                  GAsyncResult         *result,
///                  GError              **error)
/// {
///   g_return_val_if_fail (g_task_is_valid (result, initable), FALSE);
/// 
///   return g_task_propagate_boolean (G_TASK (result), error);
/// }
/// 
/// static void
/// foo_async_initable_iface_init (gpointer g_iface,
///                                gpointer data)
/// {
///   GAsyncInitableIface *iface = g_iface;
/// 
///   iface->init_async = foo_init_async;
///   iface->init_finish = foo_init_finish;
/// }
/// ```
/// 
public protocol AsyncInitableProtocol {
        /// Untyped pointer to the underlying `GAsyncInitable` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GAsyncInitable` instance.
    var async_initable_ptr: UnsafeMutablePointer<GAsyncInitable>! { get }

}

/// The `AsyncInitableRef` type acts as a lightweight Swift reference to an underlying `GAsyncInitable` instance.
/// It exposes methods that can operate on this data type through `AsyncInitableProtocol` conformance.
/// Use `AsyncInitableRef` only as an `unowned` reference to an existing `GAsyncInitable` instance.
///
/// This is the asynchronous version of `GInitable`; it behaves the same
/// in all ways except that initialization is asynchronous. For more details
/// see the descriptions on `GInitable`.
/// 
/// A class may implement both the `GInitable` and `GAsyncInitable` interfaces.
/// 
/// Users of objects implementing this are not intended to use the interface
/// method directly; instead it will be used automatically in various ways.
/// For C applications you generally just call `g_async_initable_new_async()`
/// directly, or indirectly via a `foo_thing_new_async()` wrapper. This will call
/// `g_async_initable_init_async()` under the cover, calling back with `nil` and
/// a set `GError` on failure.
/// 
/// A typical implementation might look something like this:
/// 
/// (C Language Example):
/// ```C
/// enum {
///    NOT_INITIALIZED,
///    INITIALIZING,
///    INITIALIZED
/// };
/// 
/// static void
/// _foo_ready_cb (Foo *self)
/// {
///   GList *l;
/// 
///   self->priv->state = INITIALIZED;
/// 
///   for (l = self->priv->init_results; l != NULL; l = l->next)
///     {
///       GTask *task = l->data;
/// 
///       if (self->priv->success)
///         g_task_return_boolean (task, TRUE);
///       else
///         g_task_return_new_error (task, ...);
///       g_object_unref (task);
///     }
/// 
///   g_list_free (self->priv->init_results);
///   self->priv->init_results = NULL;
/// }
/// 
/// static void
/// foo_init_async (GAsyncInitable       *initable,
///                 int                   io_priority,
///                 GCancellable         *cancellable,
///                 GAsyncReadyCallback   callback,
///                 gpointer              user_data)
/// {
///   Foo *self = FOO (initable);
///   GTask *task;
/// 
///   task = g_task_new (initable, cancellable, callback, user_data);
///   g_task_set_name (task, G_STRFUNC);
/// 
///   switch (self->priv->state)
///     {
///       case NOT_INITIALIZED:
///         _foo_get_ready (self);
///         self->priv->init_results = g_list_append (self->priv->init_results,
///                                                   task);
///         self->priv->state = INITIALIZING;
///         break;
///       case INITIALIZING:
///         self->priv->init_results = g_list_append (self->priv->init_results,
///                                                   task);
///         break;
///       case INITIALIZED:
///         if (!self->priv->success)
///           g_task_return_new_error (task, ...);
///         else
///           g_task_return_boolean (task, TRUE);
///         g_object_unref (task);
///         break;
///     }
/// }
/// 
/// static gboolean
/// foo_init_finish (GAsyncInitable       *initable,
///                  GAsyncResult         *result,
///                  GError              **error)
/// {
///   g_return_val_if_fail (g_task_is_valid (result, initable), FALSE);
/// 
///   return g_task_propagate_boolean (G_TASK (result), error);
/// }
/// 
/// static void
/// foo_async_initable_iface_init (gpointer g_iface,
///                                gpointer data)
/// {
///   GAsyncInitableIface *iface = g_iface;
/// 
///   iface->init_async = foo_init_async;
///   iface->init_finish = foo_init_finish;
/// }
/// ```
/// 
public struct AsyncInitableRef: AsyncInitableProtocol {
        /// Untyped pointer to the underlying `GAsyncInitable` instance.
    /// For type-safe access, use the generated, typed pointer `async_initable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AsyncInitableRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GAsyncInitable>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GAsyncInitable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GAsyncInitable>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GAsyncInitable>?) {
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

    /// Reference intialiser for a related type that implements `AsyncInitableProtocol`
    @inlinable init<T: AsyncInitableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AsyncInitable` type acts as an owner of an underlying `GAsyncInitable` instance.
/// It provides the methods that can operate on this data type through `AsyncInitableProtocol` conformance.
/// Use `AsyncInitable` as a strong reference or owner of a `GAsyncInitable` instance.
///
/// This is the asynchronous version of `GInitable`; it behaves the same
/// in all ways except that initialization is asynchronous. For more details
/// see the descriptions on `GInitable`.
/// 
/// A class may implement both the `GInitable` and `GAsyncInitable` interfaces.
/// 
/// Users of objects implementing this are not intended to use the interface
/// method directly; instead it will be used automatically in various ways.
/// For C applications you generally just call `g_async_initable_new_async()`
/// directly, or indirectly via a `foo_thing_new_async()` wrapper. This will call
/// `g_async_initable_init_async()` under the cover, calling back with `nil` and
/// a set `GError` on failure.
/// 
/// A typical implementation might look something like this:
/// 
/// (C Language Example):
/// ```C
/// enum {
///    NOT_INITIALIZED,
///    INITIALIZING,
///    INITIALIZED
/// };
/// 
/// static void
/// _foo_ready_cb (Foo *self)
/// {
///   GList *l;
/// 
///   self->priv->state = INITIALIZED;
/// 
///   for (l = self->priv->init_results; l != NULL; l = l->next)
///     {
///       GTask *task = l->data;
/// 
///       if (self->priv->success)
///         g_task_return_boolean (task, TRUE);
///       else
///         g_task_return_new_error (task, ...);
///       g_object_unref (task);
///     }
/// 
///   g_list_free (self->priv->init_results);
///   self->priv->init_results = NULL;
/// }
/// 
/// static void
/// foo_init_async (GAsyncInitable       *initable,
///                 int                   io_priority,
///                 GCancellable         *cancellable,
///                 GAsyncReadyCallback   callback,
///                 gpointer              user_data)
/// {
///   Foo *self = FOO (initable);
///   GTask *task;
/// 
///   task = g_task_new (initable, cancellable, callback, user_data);
///   g_task_set_name (task, G_STRFUNC);
/// 
///   switch (self->priv->state)
///     {
///       case NOT_INITIALIZED:
///         _foo_get_ready (self);
///         self->priv->init_results = g_list_append (self->priv->init_results,
///                                                   task);
///         self->priv->state = INITIALIZING;
///         break;
///       case INITIALIZING:
///         self->priv->init_results = g_list_append (self->priv->init_results,
///                                                   task);
///         break;
///       case INITIALIZED:
///         if (!self->priv->success)
///           g_task_return_new_error (task, ...);
///         else
///           g_task_return_boolean (task, TRUE);
///         g_object_unref (task);
///         break;
///     }
/// }
/// 
/// static gboolean
/// foo_init_finish (GAsyncInitable       *initable,
///                  GAsyncResult         *result,
///                  GError              **error)
/// {
///   g_return_val_if_fail (g_task_is_valid (result, initable), FALSE);
/// 
///   return g_task_propagate_boolean (G_TASK (result), error);
/// }
/// 
/// static void
/// foo_async_initable_iface_init (gpointer g_iface,
///                                gpointer data)
/// {
///   GAsyncInitableIface *iface = g_iface;
/// 
///   iface->init_async = foo_init_async;
///   iface->init_finish = foo_init_finish;
/// }
/// ```
/// 
open class AsyncInitable: AsyncInitableProtocol {
        /// Untyped pointer to the underlying `GAsyncInitable` instance.
    /// For type-safe access, use the generated, typed pointer `async_initable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AsyncInitable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GAsyncInitable>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AsyncInitable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GAsyncInitable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AsyncInitable` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AsyncInitable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AsyncInitable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GAsyncInitable>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AsyncInitable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GAsyncInitable>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GAsyncInitable` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `AsyncInitable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GAsyncInitable>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GAsyncInitable, cannot ref(async_initable_ptr)
    }

    /// Reference intialiser for a related type that implements `AsyncInitableProtocol`
    /// `GAsyncInitable` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AsyncInitableProtocol`
    @inlinable public init<T: AsyncInitableProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GAsyncInitable, cannot ref(async_initable_ptr)
    }

    /// Do-nothing destructor for `GAsyncInitable`.
    deinit {
        // no reference counting for GAsyncInitable, cannot unref(async_initable_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GAsyncInitable, cannot ref(async_initable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GAsyncInitable, cannot ref(async_initable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GAsyncInitable, cannot ref(async_initable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GAsyncInitable, cannot ref(async_initable_ptr)
    }



}

// MARK: no AsyncInitable properties

// MARK: no AsyncInitable signals

// MARK: AsyncInitable has no signals
// MARK: AsyncInitable Interface: AsyncInitableProtocol extension (methods and fields)
public extension AsyncInitableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GAsyncInitable` instance.
    @inlinable var async_initable_ptr: UnsafeMutablePointer<GAsyncInitable>! { return ptr?.assumingMemoryBound(to: GAsyncInitable.self) }

    /// Starts asynchronous initialization of the object implementing the
    /// interface. This must be done before any real use of the object after
    /// initial construction. If the object also implements `GInitable` you can
    /// optionally call `g_initable_init()` instead.
    /// 
    /// This method is intended for language bindings. If writing in C,
    /// `g_async_initable_new_async()` should typically be used instead.
    /// 
    /// When the initialization is finished, `callback` will be called. You can
    /// then call `g_async_initable_init_finish()` to get the result of the
    /// initialization.
    /// 
    /// Implementations may also support cancellation. If `cancellable` is not
    /// `nil`, then initialization can be cancelled by triggering the cancellable
    /// object from another thread. If the operation was cancelled, the error
    /// `G_IO_ERROR_CANCELLED` will be returned. If `cancellable` is not `nil`, and
    /// the object doesn't support cancellable initialization, the error
    /// `G_IO_ERROR_NOT_SUPPORTED` will be returned.
    /// 
    /// As with `GInitable`, if the object is not initialized, or initialization
    /// returns with an error, then all operations on the object except
    /// `g_object_ref()` and `g_object_unref()` are considered to be invalid, and
    /// have undefined behaviour. They will often fail with `g_critical()` or
    /// `g_warning()`, but this must not be relied on.
    /// 
    /// Callers should not assume that a class which implements `GAsyncInitable` can
    /// be initialized multiple times; for more information, see `g_initable_init()`.
    /// If a class explicitly supports being initialized multiple times,
    /// implementation requires yielding all subsequent calls to `init_async()` on the
    /// results of the first call.
    /// 
    /// For classes that also support the `GInitable` interface, the default
    /// implementation of this method will run the `g_initable_init()` function
    /// in a thread, so if you want to support asynchronous initialization via
    /// threads, just implement the `GAsyncInitable` interface without overriding
    /// any interface methods.
    @inlinable func initAsync(ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_async_initable_init_async(async_initable_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Starts asynchronous initialization of the object implementing the
    /// interface. This must be done before any real use of the object after
    /// initial construction. If the object also implements `GInitable` you can
    /// optionally call `g_initable_init()` instead.
    /// 
    /// This method is intended for language bindings. If writing in C,
    /// `g_async_initable_new_async()` should typically be used instead.
    /// 
    /// When the initialization is finished, `callback` will be called. You can
    /// then call `g_async_initable_init_finish()` to get the result of the
    /// initialization.
    /// 
    /// Implementations may also support cancellation. If `cancellable` is not
    /// `nil`, then initialization can be cancelled by triggering the cancellable
    /// object from another thread. If the operation was cancelled, the error
    /// `G_IO_ERROR_CANCELLED` will be returned. If `cancellable` is not `nil`, and
    /// the object doesn't support cancellable initialization, the error
    /// `G_IO_ERROR_NOT_SUPPORTED` will be returned.
    /// 
    /// As with `GInitable`, if the object is not initialized, or initialization
    /// returns with an error, then all operations on the object except
    /// `g_object_ref()` and `g_object_unref()` are considered to be invalid, and
    /// have undefined behaviour. They will often fail with `g_critical()` or
    /// `g_warning()`, but this must not be relied on.
    /// 
    /// Callers should not assume that a class which implements `GAsyncInitable` can
    /// be initialized multiple times; for more information, see `g_initable_init()`.
    /// If a class explicitly supports being initialized multiple times,
    /// implementation requires yielding all subsequent calls to `init_async()` on the
    /// results of the first call.
    /// 
    /// For classes that also support the `GInitable` interface, the default
    /// implementation of this method will run the `g_initable_init()` function
    /// in a thread, so if you want to support asynchronous initialization via
    /// threads, just implement the `GAsyncInitable` interface without overriding
    /// any interface methods.
    @inlinable func initAsync<CancellableT: CancellableProtocol>(ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_async_initable_init_async(async_initable_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes asynchronous initialization and returns the result.
    /// See `g_async_initable_init_async()`.
    @inlinable func initFinish<AsyncResultT: AsyncResultProtocol>(res: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_async_initable_init_finish(async_initable_ptr, res.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Finishes the async construction for the various g_async_initable_new
    /// calls, returning the created object or `nil` on error.
    @inlinable func newFinish<AsyncResultT: AsyncResultProtocol>(res: AsyncResultT) throws -> GLibObject.ObjectRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = GLibObject.ObjectRef(g_async_initable_new_finish(async_initable_ptr, res.async_result_ptr, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }


}



// MARK: - AsyncResult Interface

/// The `AsyncResultProtocol` protocol exposes the methods and properties of an underlying `GAsyncResult` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AsyncResult`.
/// Alternatively, use `AsyncResultRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Provides a base class for implementing asynchronous function results.
/// 
/// Asynchronous operations are broken up into two separate operations
/// which are chained together by a `GAsyncReadyCallback`. To begin
/// an asynchronous operation, provide a `GAsyncReadyCallback` to the
/// asynchronous function. This callback will be triggered when the
/// operation has completed, and must be run in a later iteration of
/// the [thread-default main context](#g-main-context-push-thread-default)
/// from where the operation was initiated. It will be passed a
/// `GAsyncResult` instance filled with the details of the operation's
/// success or failure, the object the asynchronous function was
/// started for and any error codes returned. The asynchronous callback
/// function is then expected to call the corresponding `"_finish()`"
/// function, passing the object the function was called for, the
/// `GAsyncResult` instance, and (optionally) an `error` to grab any
/// error conditions that may have occurred.
/// 
/// The `"_finish()`" function for an operation takes the generic result
/// (of type `GAsyncResult`) and returns the specific result that the
/// operation in question yields (e.g. a `GFileEnumerator` for a
/// "enumerate children" operation). If the result or error status of the
/// operation is not needed, there is no need to call the `"_finish()`"
/// function; GIO will take care of cleaning up the result and error
/// information after the `GAsyncReadyCallback` returns. You can pass
/// `nil` for the `GAsyncReadyCallback` if you don't need to take any
/// action at all after the operation completes. Applications may also
/// take a reference to the `GAsyncResult` and call `"_finish()`" later;
/// however, the `"_finish()`" function may be called at most once.
/// 
/// Example of a typical asynchronous operation flow:
/// (C Language Example):
/// ```C
/// void _theoretical_frobnitz_async (Theoretical         *t,
///                                   GCancellable        *c,
///                                   GAsyncReadyCallback  cb,
///                                   gpointer             u);
/// 
/// gboolean _theoretical_frobnitz_finish (Theoretical   *t,
///                                        GAsyncResult  *res,
///                                        GError       **e);
/// 
/// static void
/// frobnitz_result_func (GObject      *source_object,
/// 		 GAsyncResult *res,
/// 		 gpointer      user_data)
/// {
///   gboolean success = FALSE;
/// 
///   success = _theoretical_frobnitz_finish (source_object, res, NULL);
/// 
///   if (success)
///     g_printf ("Hurray!\n");
///   else
///     g_printf ("Uh oh!\n");
/// 
///   ...
/// 
/// }
/// 
/// int main (int argc, void *argv[])
/// {
///    ...
/// 
///    _theoretical_frobnitz_async (theoretical_data,
///                                 NULL,
///                                 frobnitz_result_func,
///                                 NULL);
/// 
///    ...
/// }
/// ```
/// 
/// The callback for an asynchronous operation is called only once, and is
/// always called, even in the case of a cancelled operation. On cancellation
/// the result is a `G_IO_ERROR_CANCELLED` error.
/// 
/// ## I/O Priority # <a name="io-priority"></a>
/// 
/// Many I/O-related asynchronous operations have a priority parameter,
/// which is used in certain cases to determine the order in which
/// operations are executed. They are not used to determine system-wide
/// I/O scheduling. Priorities are integers, with lower numbers indicating
/// higher priority. It is recommended to choose priorities between
/// `G_PRIORITY_LOW` and `G_PRIORITY_HIGH`, with `G_PRIORITY_DEFAULT`
/// as a default.
public protocol AsyncResultProtocol {
        /// Untyped pointer to the underlying `GAsyncResult` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GAsyncResult` instance.
    var async_result_ptr: UnsafeMutablePointer<GAsyncResult>! { get }

}

/// The `AsyncResultRef` type acts as a lightweight Swift reference to an underlying `GAsyncResult` instance.
/// It exposes methods that can operate on this data type through `AsyncResultProtocol` conformance.
/// Use `AsyncResultRef` only as an `unowned` reference to an existing `GAsyncResult` instance.
///
/// Provides a base class for implementing asynchronous function results.
/// 
/// Asynchronous operations are broken up into two separate operations
/// which are chained together by a `GAsyncReadyCallback`. To begin
/// an asynchronous operation, provide a `GAsyncReadyCallback` to the
/// asynchronous function. This callback will be triggered when the
/// operation has completed, and must be run in a later iteration of
/// the [thread-default main context](#g-main-context-push-thread-default)
/// from where the operation was initiated. It will be passed a
/// `GAsyncResult` instance filled with the details of the operation's
/// success or failure, the object the asynchronous function was
/// started for and any error codes returned. The asynchronous callback
/// function is then expected to call the corresponding `"_finish()`"
/// function, passing the object the function was called for, the
/// `GAsyncResult` instance, and (optionally) an `error` to grab any
/// error conditions that may have occurred.
/// 
/// The `"_finish()`" function for an operation takes the generic result
/// (of type `GAsyncResult`) and returns the specific result that the
/// operation in question yields (e.g. a `GFileEnumerator` for a
/// "enumerate children" operation). If the result or error status of the
/// operation is not needed, there is no need to call the `"_finish()`"
/// function; GIO will take care of cleaning up the result and error
/// information after the `GAsyncReadyCallback` returns. You can pass
/// `nil` for the `GAsyncReadyCallback` if you don't need to take any
/// action at all after the operation completes. Applications may also
/// take a reference to the `GAsyncResult` and call `"_finish()`" later;
/// however, the `"_finish()`" function may be called at most once.
/// 
/// Example of a typical asynchronous operation flow:
/// (C Language Example):
/// ```C
/// void _theoretical_frobnitz_async (Theoretical         *t,
///                                   GCancellable        *c,
///                                   GAsyncReadyCallback  cb,
///                                   gpointer             u);
/// 
/// gboolean _theoretical_frobnitz_finish (Theoretical   *t,
///                                        GAsyncResult  *res,
///                                        GError       **e);
/// 
/// static void
/// frobnitz_result_func (GObject      *source_object,
/// 		 GAsyncResult *res,
/// 		 gpointer      user_data)
/// {
///   gboolean success = FALSE;
/// 
///   success = _theoretical_frobnitz_finish (source_object, res, NULL);
/// 
///   if (success)
///     g_printf ("Hurray!\n");
///   else
///     g_printf ("Uh oh!\n");
/// 
///   ...
/// 
/// }
/// 
/// int main (int argc, void *argv[])
/// {
///    ...
/// 
///    _theoretical_frobnitz_async (theoretical_data,
///                                 NULL,
///                                 frobnitz_result_func,
///                                 NULL);
/// 
///    ...
/// }
/// ```
/// 
/// The callback for an asynchronous operation is called only once, and is
/// always called, even in the case of a cancelled operation. On cancellation
/// the result is a `G_IO_ERROR_CANCELLED` error.
/// 
/// ## I/O Priority # <a name="io-priority"></a>
/// 
/// Many I/O-related asynchronous operations have a priority parameter,
/// which is used in certain cases to determine the order in which
/// operations are executed. They are not used to determine system-wide
/// I/O scheduling. Priorities are integers, with lower numbers indicating
/// higher priority. It is recommended to choose priorities between
/// `G_PRIORITY_LOW` and `G_PRIORITY_HIGH`, with `G_PRIORITY_DEFAULT`
/// as a default.
public struct AsyncResultRef: AsyncResultProtocol {
        /// Untyped pointer to the underlying `GAsyncResult` instance.
    /// For type-safe access, use the generated, typed pointer `async_result_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AsyncResultRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GAsyncResult>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GAsyncResult>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GAsyncResult>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GAsyncResult>?) {
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

    /// Reference intialiser for a related type that implements `AsyncResultProtocol`
    @inlinable init<T: AsyncResultProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AsyncResult` type acts as an owner of an underlying `GAsyncResult` instance.
/// It provides the methods that can operate on this data type through `AsyncResultProtocol` conformance.
/// Use `AsyncResult` as a strong reference or owner of a `GAsyncResult` instance.
///
/// Provides a base class for implementing asynchronous function results.
/// 
/// Asynchronous operations are broken up into two separate operations
/// which are chained together by a `GAsyncReadyCallback`. To begin
/// an asynchronous operation, provide a `GAsyncReadyCallback` to the
/// asynchronous function. This callback will be triggered when the
/// operation has completed, and must be run in a later iteration of
/// the [thread-default main context](#g-main-context-push-thread-default)
/// from where the operation was initiated. It will be passed a
/// `GAsyncResult` instance filled with the details of the operation's
/// success or failure, the object the asynchronous function was
/// started for and any error codes returned. The asynchronous callback
/// function is then expected to call the corresponding `"_finish()`"
/// function, passing the object the function was called for, the
/// `GAsyncResult` instance, and (optionally) an `error` to grab any
/// error conditions that may have occurred.
/// 
/// The `"_finish()`" function for an operation takes the generic result
/// (of type `GAsyncResult`) and returns the specific result that the
/// operation in question yields (e.g. a `GFileEnumerator` for a
/// "enumerate children" operation). If the result or error status of the
/// operation is not needed, there is no need to call the `"_finish()`"
/// function; GIO will take care of cleaning up the result and error
/// information after the `GAsyncReadyCallback` returns. You can pass
/// `nil` for the `GAsyncReadyCallback` if you don't need to take any
/// action at all after the operation completes. Applications may also
/// take a reference to the `GAsyncResult` and call `"_finish()`" later;
/// however, the `"_finish()`" function may be called at most once.
/// 
/// Example of a typical asynchronous operation flow:
/// (C Language Example):
/// ```C
/// void _theoretical_frobnitz_async (Theoretical         *t,
///                                   GCancellable        *c,
///                                   GAsyncReadyCallback  cb,
///                                   gpointer             u);
/// 
/// gboolean _theoretical_frobnitz_finish (Theoretical   *t,
///                                        GAsyncResult  *res,
///                                        GError       **e);
/// 
/// static void
/// frobnitz_result_func (GObject      *source_object,
/// 		 GAsyncResult *res,
/// 		 gpointer      user_data)
/// {
///   gboolean success = FALSE;
/// 
///   success = _theoretical_frobnitz_finish (source_object, res, NULL);
/// 
///   if (success)
///     g_printf ("Hurray!\n");
///   else
///     g_printf ("Uh oh!\n");
/// 
///   ...
/// 
/// }
/// 
/// int main (int argc, void *argv[])
/// {
///    ...
/// 
///    _theoretical_frobnitz_async (theoretical_data,
///                                 NULL,
///                                 frobnitz_result_func,
///                                 NULL);
/// 
///    ...
/// }
/// ```
/// 
/// The callback for an asynchronous operation is called only once, and is
/// always called, even in the case of a cancelled operation. On cancellation
/// the result is a `G_IO_ERROR_CANCELLED` error.
/// 
/// ## I/O Priority # <a name="io-priority"></a>
/// 
/// Many I/O-related asynchronous operations have a priority parameter,
/// which is used in certain cases to determine the order in which
/// operations are executed. They are not used to determine system-wide
/// I/O scheduling. Priorities are integers, with lower numbers indicating
/// higher priority. It is recommended to choose priorities between
/// `G_PRIORITY_LOW` and `G_PRIORITY_HIGH`, with `G_PRIORITY_DEFAULT`
/// as a default.
open class AsyncResult: AsyncResultProtocol {
        /// Untyped pointer to the underlying `GAsyncResult` instance.
    /// For type-safe access, use the generated, typed pointer `async_result_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AsyncResult` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GAsyncResult>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AsyncResult` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GAsyncResult>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AsyncResult` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AsyncResult` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AsyncResult` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GAsyncResult>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AsyncResult` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GAsyncResult>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GAsyncResult` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `AsyncResult` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GAsyncResult>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GAsyncResult, cannot ref(async_result_ptr)
    }

    /// Reference intialiser for a related type that implements `AsyncResultProtocol`
    /// `GAsyncResult` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AsyncResultProtocol`
    @inlinable public init<T: AsyncResultProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GAsyncResult, cannot ref(async_result_ptr)
    }

    /// Do-nothing destructor for `GAsyncResult`.
    deinit {
        // no reference counting for GAsyncResult, cannot unref(async_result_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GAsyncResult, cannot ref(async_result_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GAsyncResult, cannot ref(async_result_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GAsyncResult, cannot ref(async_result_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GAsyncResult, cannot ref(async_result_ptr)
    }



}

// MARK: no AsyncResult properties

// MARK: no AsyncResult signals

// MARK: AsyncResult has no signals
// MARK: AsyncResult Interface: AsyncResultProtocol extension (methods and fields)
public extension AsyncResultProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GAsyncResult` instance.
    @inlinable var async_result_ptr: UnsafeMutablePointer<GAsyncResult>! { return ptr?.assumingMemoryBound(to: GAsyncResult.self) }

    /// Gets the source object from a `GAsyncResult`.
    @inlinable func getSourceObject() -> GLibObject.ObjectRef! {
        let rv = GLibObject.ObjectRef(g_async_result_get_source_object(async_result_ptr))
        return rv
    }

    /// Gets the user data from a `GAsyncResult`.
    @inlinable func getUserData() -> gpointer! {
        let rv = g_async_result_get_user_data(async_result_ptr)
        return rv
    }

    /// Checks if `res` has the given `source_tag` (generally a function
    /// pointer indicating the function `res` was created by).
    @inlinable func isTagged(sourceTag: gpointer! = nil) -> Bool {
        let rv = ((g_async_result_is_tagged(async_result_ptr, sourceTag)) != 0)
        return rv
    }

    /// If `res` is a `GSimpleAsyncResult`, this is equivalent to
    /// `g_simple_async_result_propagate_error()`. Otherwise it returns
    /// `false`.
    /// 
    /// This can be used for legacy error handling in async `*_finish()`
    /// wrapper functions that traditionally handled `GSimpleAsyncResult`
    /// error returns themselves rather than calling into the virtual method.
    /// This should not be used in new code; `GAsyncResult` errors that are
    /// set by virtual methods should also be extracted by virtual methods,
    /// to enable subclasses to chain up correctly.
    @inlinable func legacyPropagateError() throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_async_result_legacy_propagate_error(async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Finishes an asynchronous launch-default-for-uri operation.
    @inlinable func appInfoLaunchDefaultForURIFinish() throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_app_info_launch_default_for_uri_finish(async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Finishes an operation started with `g_bus_get()`.
    /// 
    /// The returned object is a singleton, that is, shared with other
    /// callers of `g_bus_get()` and `g_bus_get_sync()` for `bus_type`. In the
    /// event that you need a private message bus connection, use
    /// `g_dbus_address_get_for_bus_sync()` and
    /// `g_dbus_connection_new_for_address()`.
    /// 
    /// Note that the returned `GDBusConnection` object will (usually) have
    /// the `GDBusConnection:exit`-on-close property set to `true`.
    @inlinable func busGetFinish() throws -> DBusConnectionRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = DBusConnectionRef(gconstpointer: gconstpointer(g_bus_get_finish(async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Finishes an operation started with `g_dbus_address_get_stream()`.
    @inlinable func dbusAddressGetStreamFinish(outGuid: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! = nil) throws -> IOStreamRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = IOStreamRef(gconstpointer: gconstpointer(g_dbus_address_get_stream_finish(async_result_ptr, outGuid, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Gets the source object from a `GAsyncResult`.
    @inlinable var sourceObject: GLibObject.ObjectRef! {
        /// Gets the source object from a `GAsyncResult`.
        get {
            let rv = GLibObject.ObjectRef(g_async_result_get_source_object(async_result_ptr))
            return rv
        }
    }

    /// Gets the user data from a `GAsyncResult`.
    @inlinable var userData: gpointer! {
        /// Gets the user data from a `GAsyncResult`.
        get {
            let rv = g_async_result_get_user_data(async_result_ptr)
            return rv
        }
    }


}



// MARK: - Converter Interface

/// The `ConverterProtocol` protocol exposes the methods and properties of an underlying `GConverter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Converter`.
/// Alternatively, use `ConverterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GConverter` is implemented by objects that convert
/// binary data in various ways. The conversion can be
/// stateful and may fail at any place.
/// 
/// Some example conversions are: character set conversion,
/// compression, decompression and regular expression
/// replace.
public protocol ConverterProtocol {
        /// Untyped pointer to the underlying `GConverter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GConverter` instance.
    var converter_ptr: UnsafeMutablePointer<GConverter>! { get }

}

/// The `ConverterRef` type acts as a lightweight Swift reference to an underlying `GConverter` instance.
/// It exposes methods that can operate on this data type through `ConverterProtocol` conformance.
/// Use `ConverterRef` only as an `unowned` reference to an existing `GConverter` instance.
///
/// `GConverter` is implemented by objects that convert
/// binary data in various ways. The conversion can be
/// stateful and may fail at any place.
/// 
/// Some example conversions are: character set conversion,
/// compression, decompression and regular expression
/// replace.
public struct ConverterRef: ConverterProtocol {
        /// Untyped pointer to the underlying `GConverter` instance.
    /// For type-safe access, use the generated, typed pointer `converter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ConverterRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GConverter>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GConverter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GConverter>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GConverter>?) {
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

    /// Reference intialiser for a related type that implements `ConverterProtocol`
    @inlinable init<T: ConverterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Converter` type acts as an owner of an underlying `GConverter` instance.
/// It provides the methods that can operate on this data type through `ConverterProtocol` conformance.
/// Use `Converter` as a strong reference or owner of a `GConverter` instance.
///
/// `GConverter` is implemented by objects that convert
/// binary data in various ways. The conversion can be
/// stateful and may fail at any place.
/// 
/// Some example conversions are: character set conversion,
/// compression, decompression and regular expression
/// replace.
open class Converter: ConverterProtocol {
        /// Untyped pointer to the underlying `GConverter` instance.
    /// For type-safe access, use the generated, typed pointer `converter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Converter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GConverter>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Converter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GConverter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Converter` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Converter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Converter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GConverter>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Converter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GConverter>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GConverter` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Converter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GConverter>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GConverter, cannot ref(converter_ptr)
    }

    /// Reference intialiser for a related type that implements `ConverterProtocol`
    /// `GConverter` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ConverterProtocol`
    @inlinable public init<T: ConverterProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GConverter, cannot ref(converter_ptr)
    }

    /// Do-nothing destructor for `GConverter`.
    deinit {
        // no reference counting for GConverter, cannot unref(converter_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GConverter, cannot ref(converter_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GConverter, cannot ref(converter_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GConverter, cannot ref(converter_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GConverter, cannot ref(converter_ptr)
    }



}

// MARK: no Converter properties

// MARK: no Converter signals

// MARK: Converter has no signals
// MARK: Converter Interface: ConverterProtocol extension (methods and fields)
public extension ConverterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GConverter` instance.
    @inlinable var converter_ptr: UnsafeMutablePointer<GConverter>! { return ptr?.assumingMemoryBound(to: GConverter.self) }

    /// This is the main operation used when converting data. It is to be called
    /// multiple times in a loop, and each time it will do some work, i.e.
    /// producing some output (in `outbuf`) or consuming some input (from `inbuf`) or
    /// both. If its not possible to do any work an error is returned.
    /// 
    /// Note that a single call may not consume all input (or any input at all).
    /// Also a call may produce output even if given no input, due to state stored
    /// in the converter producing output.
    /// 
    /// If any data was either produced or consumed, and then an error happens, then
    /// only the successful conversion is reported and the error is returned on the
    /// next call.
    /// 
    /// A full conversion loop involves calling this method repeatedly, each time
    /// giving it new input and space output space. When there is no more input
    /// data after the data in `inbuf`, the flag `G_CONVERTER_INPUT_AT_END` must be set.
    /// The loop will be (unless some error happens) returning `G_CONVERTER_CONVERTED`
    /// each time until all data is consumed and all output is produced, then
    /// `G_CONVERTER_FINISHED` is returned instead. Note, that `G_CONVERTER_FINISHED`
    /// may be returned even if `G_CONVERTER_INPUT_AT_END` is not set, for instance
    /// in a decompression converter where the end of data is detectable from the
    /// data (and there might even be other data after the end of the compressed data).
    /// 
    /// When some data has successfully been converted `bytes_read` and is set to
    /// the number of bytes read from `inbuf`, and `bytes_written` is set to indicate
    /// how many bytes was written to `outbuf`. If there are more data to output
    /// or consume (i.e. unless the `G_CONVERTER_INPUT_AT_END` is specified) then
    /// `G_CONVERTER_CONVERTED` is returned, and if no more data is to be output
    /// then `G_CONVERTER_FINISHED` is returned.
    /// 
    /// On error `G_CONVERTER_ERROR` is returned and `error` is set accordingly.
    /// Some errors need special handling:
    /// 
    /// `G_IO_ERROR_NO_SPACE` is returned if there is not enough space
    /// to write the resulting converted data, the application should
    /// call the function again with a larger `outbuf` to continue.
    /// 
    /// `G_IO_ERROR_PARTIAL_INPUT` is returned if there is not enough
    /// input to fully determine what the conversion should produce,
    /// and the `G_CONVERTER_INPUT_AT_END` flag is not set. This happens for
    /// example with an incomplete multibyte sequence when converting text,
    /// or when a regexp matches up to the end of the input (and may match
    /// further input). It may also happen when `inbuf_size` is zero and
    /// there is no more data to produce.
    /// 
    /// When this happens the application should read more input and then
    /// call the function again. If further input shows that there is no
    /// more data call the function again with the same data but with
    /// the `G_CONVERTER_INPUT_AT_END` flag set. This may cause the conversion
    /// to finish as e.g. in the regexp match case (or, to fail again with
    /// `G_IO_ERROR_PARTIAL_INPUT` in e.g. a charset conversion where the
    /// input is actually partial).
    /// 
    /// After `g_converter_convert()` has returned `G_CONVERTER_FINISHED` the
    /// converter object is in an invalid state where its not allowed
    /// to call `g_converter_convert()` anymore. At this time you can only
    /// free the object or call `g_converter_reset()` to reset it to the
    /// initial state.
    /// 
    /// If the flag `G_CONVERTER_FLUSH` is set then conversion is modified
    /// to try to write out all internal state to the output. The application
    /// has to call the function multiple times with the flag set, and when
    /// the available input has been consumed and all internal state has
    /// been produced then `G_CONVERTER_FLUSHED` (or `G_CONVERTER_FINISHED` if
    /// really at the end) is returned instead of `G_CONVERTER_CONVERTED`.
    /// This is somewhat similar to what happens at the end of the input stream,
    /// but done in the middle of the data.
    /// 
    /// This has different meanings for different conversions. For instance
    /// in a compression converter it would mean that we flush all the
    /// compression state into output such that if you uncompress the
    /// compressed data you get back all the input data. Doing this may
    /// make the final file larger due to padding though. Another example
    /// is a regexp conversion, where if you at the end of the flushed data
    /// have a match, but there is also a potential longer match. In the
    /// non-flushed case we would ask for more input, but when flushing we
    /// treat this as the end of input and do the match.
    /// 
    /// Flushing is not always possible (like if a charset converter flushes
    /// at a partial multibyte sequence). Converters are supposed to try
    /// to produce as much output as possible and then return an error
    /// (typically `G_IO_ERROR_PARTIAL_INPUT`).
    @inlinable func convert(inbuf: UnsafeMutableRawPointer!, inbufSize: Int, outbuf: UnsafeMutableRawPointer!, outbufSize: Int, flags: ConverterFlags, bytesRead: UnsafeMutablePointer<gsize>!, bytesWritten: UnsafeMutablePointer<gsize>!) throws -> GConverterResult {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_converter_convert(converter_ptr, inbuf, gsize(inbufSize), outbuf, gsize(outbufSize), flags.value, bytesRead, bytesWritten, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Resets all internal state in the converter, making it behave
    /// as if it was just created. If the converter has any internal
    /// state that would produce output then that output is lost.
    @inlinable func reset() {
        g_converter_reset(converter_ptr)
    
    }


}



