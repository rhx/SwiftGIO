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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GAction` instance.
    var action_ptr: UnsafeMutablePointer<GAction> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension ActionRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GAction>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ActionProtocol`
    init<T: ActionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Action` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GAction>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GAction` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Action` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GAction>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GAction, cannot ref(cast(action_ptr))
    }

    /// Reference intialiser for a related type that implements `ActionProtocol`
    /// `GAction` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ActionProtocol`
    public init<T: ActionProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.action_ptr)
        // no reference counting for GAction, cannot ref(cast(action_ptr))
    }

    /// Do-nothing destructor for`GAction`.
    deinit {
        // no reference counting for GAction, cannot unref(cast(action_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GAction, cannot ref(cast(action_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GAction, cannot ref(cast(action_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GAction, cannot ref(cast(action_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GAction, cannot ref(cast(action_ptr))
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: ActionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(action_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public extension ActionProtocol {
    /// Connect a `ActionSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: ActionSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(action_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension ActionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GAction` instance.
    var action_ptr: UnsafeMutablePointer<GAction> { return ptr.assumingMemoryBound(to: GAction.self) }

    /// Activates the action.
    /// 
    /// `parameter` must be the correct type of parameter for the action (ie:
    /// the parameter type given at construction time).  If the parameter
    /// type was `nil` then `parameter` must also be `nil`.
    /// 
    /// If the `parameter` GVariant is floating, it is consumed.
    func activate(parameter: VariantProtocol) {
        g_action_activate(cast(action_ptr), cast(parameter.ptr))
    
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
    func changeState(value: VariantProtocol) {
        g_action_change_state(cast(action_ptr), cast(value.ptr))
    
    }

    /// Checks if `action` is currently enabled.
    /// 
    /// An action must be enabled in order to be activated or in order to
    /// have its state changed from outside callers.
    func getEnabled() -> Bool {
        let rv = g_action_get_enabled(cast(action_ptr))
        return Bool(rv != 0)
    }

    /// Queries the name of `action`.
    func getName() -> String! {
        let rv = g_action_get_name(cast(action_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Queries the type of the parameter that must be given when activating
    /// `action`.
    /// 
    /// When activating the action using `g_action_activate()`, the `GVariant`
    /// given to that function must be of the type returned by this function.
    /// 
    /// In the case that this function returns `nil`, you must not give any
    /// `GVariant`, but `nil` instead.
    func getParameterType() -> UnsafePointer<GVariantType>! {
        let rv = g_action_get_parameter_type(cast(action_ptr))
        return cast(rv)
    }

    /// Queries the current state of `action`.
    /// 
    /// If the action is not stateful then `nil` will be returned.  If the
    /// action is stateful then the type of the return value is the type
    /// given by `g_action_get_state_type()`.
    /// 
    /// The return value (if non-`nil`) should be freed with
    /// `g_variant_unref()` when it is no longer required.
    func getState() -> UnsafeMutablePointer<GVariant>! {
        let rv = g_action_get_state(cast(action_ptr))
        return cast(rv)
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
    func getStateHint() -> UnsafeMutablePointer<GVariant>! {
        let rv = g_action_get_state_hint(cast(action_ptr))
        return cast(rv)
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
    func getStateType() -> UnsafePointer<GVariantType>! {
        let rv = g_action_get_state_type(cast(action_ptr))
        return cast(rv)
    }
    /// If `action` is currently enabled.
    /// 
    /// If the action is disabled then calls to `g_action_activate()` and
    /// `g_action_change_state()` have no effect.
    var enabled: Bool {
        /// Checks if `action` is currently enabled.
        /// 
        /// An action must be enabled in order to be activated or in order to
        /// have its state changed from outside callers.
        get {
            let rv = g_action_get_enabled(cast(action_ptr))
            return Bool(rv != 0)
        }
    }

    /// The name of the action.  This is mostly meaningful for identifying
    /// the action once it has been added to a `GActionGroup`. It is immutable.
    var name: String! {
        /// Queries the name of `action`.
        get {
            let rv = g_action_get_name(cast(action_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
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
    var parameterType: UnsafePointer<GVariantType>! {
        /// Queries the type of the parameter that must be given when activating
        /// `action`.
        /// 
        /// When activating the action using `g_action_activate()`, the `GVariant`
        /// given to that function must be of the type returned by this function.
        /// 
        /// In the case that this function returns `nil`, you must not give any
        /// `GVariant`, but `nil` instead.
        get {
            let rv = g_action_get_parameter_type(cast(action_ptr))
            return cast(rv)
        }
    }

    /// The state of the action, or `nil` if the action is stateless.
    var state: UnsafeMutablePointer<GVariant>! {
        /// Queries the current state of `action`.
        /// 
        /// If the action is not stateful then `nil` will be returned.  If the
        /// action is stateful then the type of the return value is the type
        /// given by `g_action_get_state_type()`.
        /// 
        /// The return value (if non-`nil`) should be freed with
        /// `g_variant_unref()` when it is no longer required.
        get {
            let rv = g_action_get_state(cast(action_ptr))
            return cast(rv)
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
    var stateHint: UnsafeMutablePointer<GVariant>! {
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
            let rv = g_action_get_state_hint(cast(action_ptr))
            return cast(rv)
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
    var stateType: UnsafePointer<GVariantType>! {
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
            let rv = g_action_get_state_type(cast(action_ptr))
            return cast(rv)
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GActionGroup` instance.
    var action_group_ptr: UnsafeMutablePointer<GActionGroup> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension ActionGroupRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GActionGroup>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ActionGroupProtocol`
    init<T: ActionGroupProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GActionGroup>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GActionGroup` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ActionGroup` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GActionGroup>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GActionGroup, cannot ref(cast(action_group_ptr))
    }

    /// Reference intialiser for a related type that implements `ActionGroupProtocol`
    /// `GActionGroup` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ActionGroupProtocol`
    public init<T: ActionGroupProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.action_group_ptr)
        // no reference counting for GActionGroup, cannot ref(cast(action_group_ptr))
    }

    /// Do-nothing destructor for`GActionGroup`.
    deinit {
        // no reference counting for GActionGroup, cannot unref(cast(action_group_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GActionGroup, cannot ref(cast(action_group_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GActionGroup, cannot ref(cast(action_group_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GActionGroup, cannot ref(cast(action_group_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GActionGroup, cannot ref(cast(action_group_ptr))
    }



}

// MARK: - no ActionGroup properties

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

public extension ActionGroupProtocol {
    /// Connect a `ActionGroupSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: ActionGroupSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(action_group_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension ActionGroupProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GActionGroup` instance.
    var action_group_ptr: UnsafeMutablePointer<GActionGroup> { return ptr.assumingMemoryBound(to: GActionGroup.self) }

    /// Emits the `GActionGroup::action`-added signal on `action_group`.
    /// 
    /// This function should only be called by `GActionGroup` implementations.
    func actionAdded(actionName action_name: UnsafePointer<gchar>) {
        g_action_group_action_added(cast(action_group_ptr), action_name)
    
    }

    /// Emits the `GActionGroup::action`-enabled-changed signal on `action_group`.
    /// 
    /// This function should only be called by `GActionGroup` implementations.
    func actionEnabledChanged(actionName action_name: UnsafePointer<gchar>, enabled: Bool) {
        g_action_group_action_enabled_changed(cast(action_group_ptr), action_name, gboolean(enabled ? 1 : 0))
    
    }

    /// Emits the `GActionGroup::action`-removed signal on `action_group`.
    /// 
    /// This function should only be called by `GActionGroup` implementations.
    func actionRemoved(actionName action_name: UnsafePointer<gchar>) {
        g_action_group_action_removed(cast(action_group_ptr), action_name)
    
    }

    /// Emits the `GActionGroup::action`-state-changed signal on `action_group`.
    /// 
    /// This function should only be called by `GActionGroup` implementations.
    func actionStateChanged(actionName action_name: UnsafePointer<gchar>, state: VariantProtocol) {
        g_action_group_action_state_changed(cast(action_group_ptr), action_name, cast(state.ptr))
    
    }

    /// Activate the named action within `action_group`.
    /// 
    /// If the action is expecting a parameter, then the correct type of
    /// parameter must be given as `parameter`.  If the action is expecting no
    /// parameters then `parameter` must be `nil`.  See
    /// `g_action_group_get_action_parameter_type()`.
    func activateAction(actionName action_name: UnsafePointer<gchar>, parameter: VariantProtocol) {
        g_action_group_activate_action(cast(action_group_ptr), action_name, cast(parameter.ptr))
    
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
    func changeActionState(actionName action_name: UnsafePointer<gchar>, value: VariantProtocol) {
        g_action_group_change_action_state(cast(action_group_ptr), action_name, cast(value.ptr))
    
    }

    /// Checks if the named action within `action_group` is currently enabled.
    /// 
    /// An action must be enabled in order to be activated or in order to
    /// have its state changed from outside callers.
    func getActionEnabled(actionName action_name: UnsafePointer<gchar>) -> Bool {
        let rv = g_action_group_get_action_enabled(cast(action_group_ptr), action_name)
        return Bool(rv != 0)
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
    func getActionParameterType(actionName action_name: UnsafePointer<gchar>) -> UnsafePointer<GVariantType>! {
        let rv = g_action_group_get_action_parameter_type(cast(action_group_ptr), action_name)
        return cast(rv)
    }

    /// Queries the current state of the named action within `action_group`.
    /// 
    /// If the action is not stateful then `nil` will be returned.  If the
    /// action is stateful then the type of the return value is the type
    /// given by `g_action_group_get_action_state_type()`.
    /// 
    /// The return value (if non-`nil`) should be freed with
    /// `g_variant_unref()` when it is no longer required.
    func getActionState(actionName action_name: UnsafePointer<gchar>) -> UnsafeMutablePointer<GVariant>! {
        let rv = g_action_group_get_action_state(cast(action_group_ptr), action_name)
        return cast(rv)
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
    func getActionStateHint(actionName action_name: UnsafePointer<gchar>) -> UnsafeMutablePointer<GVariant>! {
        let rv = g_action_group_get_action_state_hint(cast(action_group_ptr), action_name)
        return cast(rv)
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
    func getActionStateType(actionName action_name: UnsafePointer<gchar>) -> UnsafePointer<GVariantType>! {
        let rv = g_action_group_get_action_state_type(cast(action_group_ptr), action_name)
        return cast(rv)
    }

    /// Checks if the named action exists within `action_group`.
    func hasAction(actionName action_name: UnsafePointer<gchar>) -> Bool {
        let rv = g_action_group_has_action(cast(action_group_ptr), action_name)
        return Bool(rv != 0)
    }

    /// Lists the actions contained within `action_group`.
    /// 
    /// The caller is responsible for freeing the list with `g_strfreev()` when
    /// it is no longer required.
    func listActions() -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        let rv = g_action_group_list_actions(cast(action_group_ptr))
        return cast(rv)
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
    func queryAction(actionName action_name: UnsafePointer<gchar>, enabled: UnsafeMutablePointer<Bool>, parameterType parameter_type: VariantTypeProtocol, stateType state_type: VariantTypeProtocol, stateHint state_hint: VariantProtocol, state: VariantProtocol) -> Bool {
        let rv = g_action_group_query_action(cast(action_group_ptr), action_name, cast(enabled), cast(parameter_type.ptr), cast(state_type.ptr), cast(state_hint.ptr), cast(state.ptr))
        return Bool(rv != 0)
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GActionMap` instance.
    var action_map_ptr: UnsafeMutablePointer<GActionMap> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension ActionMapRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GActionMap>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ActionMapProtocol`
    init<T: ActionMapProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionMap` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GActionMap>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GActionMap` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ActionMap` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GActionMap>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GActionMap, cannot ref(cast(action_map_ptr))
    }

    /// Reference intialiser for a related type that implements `ActionMapProtocol`
    /// `GActionMap` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ActionMapProtocol`
    public init<T: ActionMapProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.action_map_ptr)
        // no reference counting for GActionMap, cannot ref(cast(action_map_ptr))
    }

    /// Do-nothing destructor for`GActionMap`.
    deinit {
        // no reference counting for GActionMap, cannot unref(cast(action_map_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GActionMap, cannot ref(cast(action_map_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GActionMap, cannot ref(cast(action_map_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GActionMap, cannot ref(cast(action_map_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GActionMap, cannot ref(cast(action_map_ptr))
    }



}

// MARK: - no ActionMap properties

// MARK: - no signals


public extension ActionMapProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GActionMap` instance.
    var action_map_ptr: UnsafeMutablePointer<GActionMap> { return ptr.assumingMemoryBound(to: GActionMap.self) }

    /// Adds an action to the `action_map`.
    /// 
    /// If the action map already contains an action with the same name
    /// as `action` then the old action is dropped from the action map.
    /// 
    /// The action map takes its own reference on `action`.
    func add(action: ActionProtocol) {
        g_action_map_add_action(cast(action_map_ptr), cast(action.ptr))
    
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
    func addAction(entries: UnsafePointer<GActionEntry>, nEntries n_entries: CInt, userData user_data: UnsafeMutableRawPointer) {
        g_action_map_add_action_entries(cast(action_map_ptr), cast(entries), gint(n_entries), cast(user_data))
    
    }

    /// Looks up the action with the name `action_name` in `action_map`.
    /// 
    /// If no such action exists, returns `nil`.
    func lookupAction(actionName action_name: UnsafePointer<gchar>) -> UnsafeMutablePointer<GAction>! {
        let rv = g_action_map_lookup_action(cast(action_map_ptr), action_name)
        return cast(rv)
    }

    /// Removes the named action from the action map.
    /// 
    /// If no action of this name is in the map then nothing happens.
    func removeAction(actionName action_name: UnsafePointer<gchar>) {
        g_action_map_remove_action(cast(action_map_ptr), action_name)
    
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GAppInfo` instance.
    var app_info_ptr: UnsafeMutablePointer<GAppInfo> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension AppInfoRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GAppInfo>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AppInfoProtocol`
    init<T: AppInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GAppInfo` from the given information.
    /// 
    /// Note that for `commandline`, the quoting rules of the Exec key of the
    /// [freedesktop.org Desktop Entry Specification](http://freedesktop.org/Standards/desktop-entry-spec)
    /// are applied. For example, if the `commandline` contains
    /// percent-encoded URIs, the percent-character must be doubled in order to prevent it from
    /// being swallowed by Exec key unquoting. See the specification for exact quoting rules.
    static func createFrom(commandline: UnsafePointer<CChar>, applicationName application_name: UnsafePointer<CChar>, flags: AppInfoCreateFlags) throws -> AppInfoRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_app_info_create_from_commandline(commandline, application_name, flags, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { AppInfoRef(cast($0)) }
    }

    /// Gets the default `GAppInfo` for a given content type.
    static func getDefaultFor(type content_type: UnsafePointer<CChar>, mustSupportURIs must_support_uris: Bool) -> AppInfoRef! {
        let rv = g_app_info_get_default_for_type(content_type, gboolean(must_support_uris ? 1 : 0))
        return rv.map { AppInfoRef(cast($0)) }
    }

    /// Gets the default application for handling URIs with
    /// the given URI scheme. A URI scheme is the initial part
    /// of the URI, up to but not including the ':', e.g. "http",
    /// "ftp" or "sip".
    static func getDefaultFor(uriScheme uri_scheme: UnsafePointer<CChar>) -> AppInfoRef! {
        let rv = g_app_info_get_default_for_uri_scheme(uri_scheme)
        return rv.map { AppInfoRef(cast($0)) }
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppInfo` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GAppInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GAppInfo` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `AppInfo` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GAppInfo>) {
        ptr = UnsafeMutableRawPointer(op)
	g_object_ref(cast(ptr))
    }

    /// Reference intialiser for a related type that implements `AppInfoProtocol`
    /// `GAppInfo` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AppInfoProtocol`
    public init<T: AppInfoProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.app_info_ptr)
	g_object_ref(cast(ptr))
    }

    /// Do-nothing destructor for`GAppInfo`.
    deinit {
	g_object_unref(cast(ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
	g_object_ref(cast(ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
	g_object_ref(cast(ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
	g_object_ref(cast(ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
	g_object_ref(cast(ptr))
    }


    /// Creates a new `GAppInfo` from the given information.
    /// 
    /// Note that for `commandline`, the quoting rules of the Exec key of the
    /// [freedesktop.org Desktop Entry Specification](http://freedesktop.org/Standards/desktop-entry-spec)
    /// are applied. For example, if the `commandline` contains
    /// percent-encoded URIs, the percent-character must be doubled in order to prevent it from
    /// being swallowed by Exec key unquoting. See the specification for exact quoting rules.
    public static func createFrom(commandline: UnsafePointer<CChar>, applicationName application_name: UnsafePointer<CChar>, flags: AppInfoCreateFlags) throws -> AppInfo! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_app_info_create_from_commandline(commandline, application_name, flags, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { AppInfo(cast($0)) }
    }

    /// Gets the default `GAppInfo` for a given content type.
    public static func getDefaultFor(type content_type: UnsafePointer<CChar>, mustSupportURIs must_support_uris: Bool) -> AppInfo! {
        let rv = g_app_info_get_default_for_type(content_type, gboolean(must_support_uris ? 1 : 0))
        return rv.map { AppInfo(cast($0)) }
    }

    /// Gets the default application for handling URIs with
    /// the given URI scheme. A URI scheme is the initial part
    /// of the URI, up to but not including the ':', e.g. "http",
    /// "ftp" or "sip".
    public static func getDefaultFor(uriScheme uri_scheme: UnsafePointer<CChar>) -> AppInfo! {
        let rv = g_app_info_get_default_for_uri_scheme(uri_scheme)
        return rv.map { AppInfo(cast($0)) }
    }

}

// MARK: - no AppInfo properties

// MARK: - no signals


public extension AppInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GAppInfo` instance.
    var app_info_ptr: UnsafeMutablePointer<GAppInfo> { return ptr.assumingMemoryBound(to: GAppInfo.self) }

    /// Adds a content type to the application information to indicate the
    /// application is capable of opening files with the given content type.
    func addSupportsType(contentType content_type: UnsafePointer<CChar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_app_info_add_supports_type(cast(app_info_ptr), content_type, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Obtains the information whether the `GAppInfo` can be deleted.
    /// See `g_app_info_delete()`.
    func canDelete() -> Bool {
        let rv = g_app_info_can_delete(cast(app_info_ptr))
        return Bool(rv != 0)
    }

    /// Checks if a supported content type can be removed from an application.
    func canRemoveSupportsType() -> Bool {
        let rv = g_app_info_can_remove_supports_type(cast(app_info_ptr))
        return Bool(rv != 0)
    }

    /// Tries to delete a `GAppInfo`.
    /// 
    /// On some platforms, there may be a difference between user-defined
    /// `GAppInfos` which can be deleted, and system-wide ones which cannot.
    /// See `g_app_info_can_delete()`.
    func delete() -> Bool {
        let rv = g_app_info_delete(cast(app_info_ptr))
        return Bool(rv != 0)
    }

    /// Creates a duplicate of a `GAppInfo`.
    func dup() -> UnsafeMutablePointer<GAppInfo>! {
        let rv = g_app_info_dup(cast(app_info_ptr))
        return cast(rv)
    }

    /// Checks if two `GAppInfos` are equal.
    /// 
    /// Note that the check <emphasis>may not</emphasis> compare each individual
    /// field, and only does an identity check. In case detecting changes in the
    /// contents is needed, program code must additionally compare relevant fields.
    func equal(appinfo2: AppInfoProtocol) -> Bool {
        let rv = g_app_info_equal(cast(app_info_ptr), cast(appinfo2.ptr))
        return Bool(rv != 0)
    }

    /// Gets the commandline with which the application will be
    /// started.
    func getCommandline() -> String! {
        let rv = g_app_info_get_commandline(cast(app_info_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets a human-readable description of an installed application.
    func getDescription() -> String! {
        let rv = g_app_info_get_description(cast(app_info_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the display name of the application. The display name is often more
    /// descriptive to the user than the name itself.
    func getDisplayName() -> String! {
        let rv = g_app_info_get_display_name(cast(app_info_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the executable's name for the installed application.
    func getExecutable() -> String! {
        let rv = g_app_info_get_executable(cast(app_info_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the icon for the application.
    func getIcon() -> UnsafeMutablePointer<GIcon>! {
        let rv = g_app_info_get_icon(cast(app_info_ptr))
        return cast(rv)
    }

    /// Gets the ID of an application. An id is a string that
    /// identifies the application. The exact format of the id is
    /// platform dependent. For instance, on Unix this is the
    /// desktop file id from the xdg menu specification.
    /// 
    /// Note that the returned ID may be `nil`, depending on how
    /// the `appinfo` has been constructed.
    func getID() -> String! {
        let rv = g_app_info_get_id(cast(app_info_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the installed name of the application.
    func getName() -> String! {
        let rv = g_app_info_get_name(cast(app_info_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Retrieves the list of content types that `app_info` claims to support.
    /// If this information is not provided by the environment, this function
    /// will return `nil`.
    /// This function does not take in consideration associations added with
    /// `g_app_info_add_supports_type()`, but only those exported directly by
    /// the application.
    func getSupportedTypes() -> UnsafePointer<UnsafePointer<CChar>>! {
        let rv = g_app_info_get_supported_types(cast(app_info_ptr))
        return cast(rv)
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
    func launch(files: ListProtocol, context: AppLaunchContextProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_app_info_launch(cast(app_info_ptr), cast(files.ptr), cast(context.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
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
    func launch(uris: ListProtocol, context: AppLaunchContextProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_app_info_launch_uris(cast(app_info_ptr), cast(uris.ptr), cast(context.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Async version of `g_app_info_launch_uris()`.
    /// 
    /// The `callback` is invoked immediately after the application launch, but it
    /// waits for activation in case of D-Bus–activated applications and also provides
    /// extended error information for sandboxed applications, see notes for
    /// `g_app_info_launch_default_for_uri_async()`.
    func launchURIsAsync(uris: ListProtocol, context: AppLaunchContextProtocol, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_app_info_launch_uris_async(cast(app_info_ptr), cast(uris.ptr), cast(context.ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes a `g_app_info_launch_uris_async()` operation.
    func launchURIsFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_app_info_launch_uris_finish(cast(app_info_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Removes a supported type from an application, if possible.
    func removeSupportsType(contentType content_type: UnsafePointer<CChar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_app_info_remove_supports_type(cast(app_info_ptr), content_type, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Sets the application as the default handler for the given file extension.
    func setAsDefaultForExtension(extension_: UnsafePointer<CChar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_app_info_set_as_default_for_extension(cast(app_info_ptr), extension_, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Sets the application as the default handler for a given type.
    func setAsDefaultForType(contentType content_type: UnsafePointer<CChar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_app_info_set_as_default_for_type(cast(app_info_ptr), content_type, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Sets the application as the last used application for a given type.
    /// This will make the application appear as first in the list returned
    /// by `g_app_info_get_recommended_for_type()`, regardless of the default
    /// application for that content type.
    func setAsLastUsedForType(contentType content_type: UnsafePointer<CChar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_app_info_set_as_last_used_for_type(cast(app_info_ptr), content_type, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Checks if the application info should be shown in menus that
    /// list available applications.
    func shouldShow() -> Bool {
        let rv = g_app_info_should_show(cast(app_info_ptr))
        return Bool(rv != 0)
    }

    /// Checks if the application accepts files as arguments.
    func supportsFiles() -> Bool {
        let rv = g_app_info_supports_files(cast(app_info_ptr))
        return Bool(rv != 0)
    }

    /// Checks if the application supports reading files and directories from URIs.
    func supportsURIs() -> Bool {
        let rv = g_app_info_supports_uris(cast(app_info_ptr))
        return Bool(rv != 0)
    }
    /// Gets the commandline with which the application will be
    /// started.
    var commandline: String! {
        /// Gets the commandline with which the application will be
        /// started.
        get {
            let rv = g_app_info_get_commandline(cast(app_info_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets a human-readable description of an installed application.
    var description: String! {
        /// Gets a human-readable description of an installed application.
        get {
            let rv = g_app_info_get_description(cast(app_info_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the display name of the application. The display name is often more
    /// descriptive to the user than the name itself.
    var displayName: String! {
        /// Gets the display name of the application. The display name is often more
        /// descriptive to the user than the name itself.
        get {
            let rv = g_app_info_get_display_name(cast(app_info_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the executable's name for the installed application.
    var executable: String! {
        /// Gets the executable's name for the installed application.
        get {
            let rv = g_app_info_get_executable(cast(app_info_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the icon for the application.
    var icon: UnsafeMutablePointer<GIcon>! {
        /// Gets the icon for the application.
        get {
            let rv = g_app_info_get_icon(cast(app_info_ptr))
            return cast(rv)
        }
    }

    /// Gets the ID of an application. An id is a string that
    /// identifies the application. The exact format of the id is
    /// platform dependent. For instance, on Unix this is the
    /// desktop file id from the xdg menu specification.
    /// 
    /// Note that the returned ID may be `nil`, depending on how
    /// the `appinfo` has been constructed.
    var id: String! {
        /// Gets the ID of an application. An id is a string that
        /// identifies the application. The exact format of the id is
        /// platform dependent. For instance, on Unix this is the
        /// desktop file id from the xdg menu specification.
        /// 
        /// Note that the returned ID may be `nil`, depending on how
        /// the `appinfo` has been constructed.
        get {
            let rv = g_app_info_get_id(cast(app_info_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the installed name of the application.
    var name: String! {
        /// Gets the installed name of the application.
        get {
            let rv = g_app_info_get_name(cast(app_info_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Retrieves the list of content types that `app_info` claims to support.
    /// If this information is not provided by the environment, this function
    /// will return `nil`.
    /// This function does not take in consideration associations added with
    /// `g_app_info_add_supports_type()`, but only those exported directly by
    /// the application.
    var supportedTypes: UnsafePointer<UnsafePointer<CChar>>! {
        /// Retrieves the list of content types that `app_info` claims to support.
        /// If this information is not provided by the environment, this function
        /// will return `nil`.
        /// This function does not take in consideration associations added with
        /// `g_app_info_add_supports_type()`, but only those exported directly by
        /// the application.
        get {
            let rv = g_app_info_get_supported_types(cast(app_info_ptr))
            return cast(rv)
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GAsyncInitable` instance.
    var async_initable_ptr: UnsafeMutablePointer<GAsyncInitable> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension AsyncInitableRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GAsyncInitable>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AsyncInitableProtocol`
    init<T: AsyncInitableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AsyncInitable` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GAsyncInitable>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GAsyncInitable` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `AsyncInitable` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GAsyncInitable>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GAsyncInitable, cannot ref(cast(async_initable_ptr))
    }

    /// Reference intialiser for a related type that implements `AsyncInitableProtocol`
    /// `GAsyncInitable` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AsyncInitableProtocol`
    public init<T: AsyncInitableProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.async_initable_ptr)
        // no reference counting for GAsyncInitable, cannot ref(cast(async_initable_ptr))
    }

    /// Do-nothing destructor for`GAsyncInitable`.
    deinit {
        // no reference counting for GAsyncInitable, cannot unref(cast(async_initable_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GAsyncInitable, cannot ref(cast(async_initable_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GAsyncInitable, cannot ref(cast(async_initable_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GAsyncInitable, cannot ref(cast(async_initable_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GAsyncInitable, cannot ref(cast(async_initable_ptr))
    }



}

// MARK: - no AsyncInitable properties

// MARK: - no signals


public extension AsyncInitableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GAsyncInitable` instance.
    var async_initable_ptr: UnsafeMutablePointer<GAsyncInitable> { return ptr.assumingMemoryBound(to: GAsyncInitable.self) }

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
    func initAsync(ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_async_initable_init_async(cast(async_initable_ptr), io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes asynchronous initialization and returns the result.
    /// See `g_async_initable_init_async()`.
    func initFinish(res: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_async_initable_init_finish(cast(async_initable_ptr), cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Finishes the async construction for the various g_async_initable_new
    /// calls, returning the created object or `nil` on error.
    func newFinish(res: AsyncResultProtocol) throws -> UnsafeMutablePointer<GObject>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_async_initable_new_finish(cast(async_initable_ptr), cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GAsyncResult` instance.
    var async_result_ptr: UnsafeMutablePointer<GAsyncResult> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension AsyncResultRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GAsyncResult>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AsyncResultProtocol`
    init<T: AsyncResultProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AsyncResult` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GAsyncResult>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GAsyncResult` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `AsyncResult` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GAsyncResult>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GAsyncResult, cannot ref(cast(async_result_ptr))
    }

    /// Reference intialiser for a related type that implements `AsyncResultProtocol`
    /// `GAsyncResult` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AsyncResultProtocol`
    public init<T: AsyncResultProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.async_result_ptr)
        // no reference counting for GAsyncResult, cannot ref(cast(async_result_ptr))
    }

    /// Do-nothing destructor for`GAsyncResult`.
    deinit {
        // no reference counting for GAsyncResult, cannot unref(cast(async_result_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GAsyncResult, cannot ref(cast(async_result_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GAsyncResult, cannot ref(cast(async_result_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GAsyncResult, cannot ref(cast(async_result_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GAsyncResult, cannot ref(cast(async_result_ptr))
    }



}

// MARK: - no AsyncResult properties

// MARK: - no signals


public extension AsyncResultProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GAsyncResult` instance.
    var async_result_ptr: UnsafeMutablePointer<GAsyncResult> { return ptr.assumingMemoryBound(to: GAsyncResult.self) }

    /// Gets the source object from a `GAsyncResult`.
    func getSourceObject() -> UnsafeMutablePointer<GObject>! {
        let rv = g_async_result_get_source_object(cast(async_result_ptr))
        return cast(rv)
    }

    /// Gets the user data from a `GAsyncResult`.
    func getUserData() -> UnsafeMutableRawPointer! {
        let rv = g_async_result_get_user_data(cast(async_result_ptr))
        return cast(rv)
    }

    /// Checks if `res` has the given `source_tag` (generally a function
    /// pointer indicating the function `res` was created by).
    func isTagged(sourceTag source_tag: UnsafeMutableRawPointer) -> Bool {
        let rv = g_async_result_is_tagged(cast(async_result_ptr), cast(source_tag))
        return Bool(rv != 0)
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
    func legacyPropagateError() throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_async_result_legacy_propagate_error(cast(async_result_ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Finishes an asynchronous launch-default-for-uri operation.
    func appInfoLaunchDefaultForURIFinish() throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_app_info_launch_default_for_uri_finish(cast(async_result_ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
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
    func busGetFinish() throws -> UnsafeMutablePointer<GDBusConnection>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_bus_get_finish(cast(async_result_ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Finishes an operation started with `g_dbus_address_get_stream()`.
    func dbusAddressGetStreamFinish(outGuid out_guid: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>) throws -> UnsafeMutablePointer<GIOStream>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_address_get_stream_finish(cast(async_result_ptr), cast(out_guid), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }
    /// Gets the source object from a `GAsyncResult`.
    var sourceObject: UnsafeMutablePointer<GObject>! {
        /// Gets the source object from a `GAsyncResult`.
        get {
            let rv = g_async_result_get_source_object(cast(async_result_ptr))
            return cast(rv)
        }
    }

    /// Gets the user data from a `GAsyncResult`.
    var userData: UnsafeMutableRawPointer! {
        /// Gets the user data from a `GAsyncResult`.
        get {
            let rv = g_async_result_get_user_data(cast(async_result_ptr))
            return cast(rv)
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GConverter` instance.
    var converter_ptr: UnsafeMutablePointer<GConverter> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension ConverterRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GConverter>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ConverterProtocol`
    init<T: ConverterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Converter` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GConverter>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GConverter` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Converter` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GConverter>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GConverter, cannot ref(cast(converter_ptr))
    }

    /// Reference intialiser for a related type that implements `ConverterProtocol`
    /// `GConverter` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ConverterProtocol`
    public init<T: ConverterProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.converter_ptr)
        // no reference counting for GConverter, cannot ref(cast(converter_ptr))
    }

    /// Do-nothing destructor for`GConverter`.
    deinit {
        // no reference counting for GConverter, cannot unref(cast(converter_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GConverter, cannot ref(cast(converter_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GConverter, cannot ref(cast(converter_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GConverter, cannot ref(cast(converter_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GConverter, cannot ref(cast(converter_ptr))
    }



}

// MARK: - no Converter properties

// MARK: - no signals


public extension ConverterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GConverter` instance.
    var converter_ptr: UnsafeMutablePointer<GConverter> { return ptr.assumingMemoryBound(to: GConverter.self) }

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
    func convert(inbuf: UnsafeMutableRawPointer, inbufSize inbuf_size: Int, outbuf: UnsafeMutableRawPointer, outbufSize outbuf_size: Int, flags: ConverterFlags, bytesRead bytes_read: UnsafeMutablePointer<Int>, bytesWritten bytes_written: UnsafeMutablePointer<Int>) throws -> GConverterResult {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_converter_convert(cast(converter_ptr), cast(inbuf), gsize(inbuf_size), cast(outbuf), gsize(outbuf_size), flags, cast(bytes_read), cast(bytes_written), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }

    /// Resets all internal state in the converter, making it behave
    /// as if it was just created. If the converter has any internal
    /// state that would produce output then that output is lost.
    func reset() {
        g_converter_reset(cast(converter_ptr))
    
    }
}



