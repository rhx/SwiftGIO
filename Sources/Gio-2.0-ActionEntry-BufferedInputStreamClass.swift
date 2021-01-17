import CGLib
import GLib
import GLibObject

// MARK: - ActionEntry Record

/// The `ActionEntryProtocol` protocol exposes the methods and properties of an underlying `GActionEntry` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ActionEntry`.
/// Alternatively, use `ActionEntryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// This struct defines a single action.  It is for use with
/// `g_action_map_add_action_entries()`.
/// 
/// The order of the items in the structure are intended to reflect
/// frequency of use.  It is permissible to use an incomplete initialiser
/// in order to leave some of the later values as `nil`.  All values
/// after `name` are optional.  Additional optional fields may be added in
/// the future.
/// 
/// See `g_action_map_add_action_entries()` for an example.
public protocol ActionEntryProtocol {
        /// Untyped pointer to the underlying `GActionEntry` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GActionEntry` instance.
    var _ptr: UnsafeMutablePointer<GActionEntry>! { get }

}

/// The `ActionEntryRef` type acts as a lightweight Swift reference to an underlying `GActionEntry` instance.
/// It exposes methods that can operate on this data type through `ActionEntryProtocol` conformance.
/// Use `ActionEntryRef` only as an `unowned` reference to an existing `GActionEntry` instance.
///
/// This struct defines a single action.  It is for use with
/// `g_action_map_add_action_entries()`.
/// 
/// The order of the items in the structure are intended to reflect
/// frequency of use.  It is permissible to use an incomplete initialiser
/// in order to leave some of the later values as `nil`.  All values
/// after `name` are optional.  Additional optional fields may be added in
/// the future.
/// 
/// See `g_action_map_add_action_entries()` for an example.
public struct ActionEntryRef: ActionEntryProtocol {
        /// Untyped pointer to the underlying `GActionEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ActionEntryRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GActionEntry>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GActionEntry>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GActionEntry>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GActionEntry>?) {
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

    /// Reference intialiser for a related type that implements `ActionEntryProtocol`
    @inlinable init<T: ActionEntryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ActionEntry` type acts as an owner of an underlying `GActionEntry` instance.
/// It provides the methods that can operate on this data type through `ActionEntryProtocol` conformance.
/// Use `ActionEntry` as a strong reference or owner of a `GActionEntry` instance.
///
/// This struct defines a single action.  It is for use with
/// `g_action_map_add_action_entries()`.
/// 
/// The order of the items in the structure are intended to reflect
/// frequency of use.  It is permissible to use an incomplete initialiser
/// in order to leave some of the later values as `nil`.  All values
/// after `name` are optional.  Additional optional fields may be added in
/// the future.
/// 
/// See `g_action_map_add_action_entries()` for an example.
open class ActionEntry: ActionEntryProtocol {
        /// Untyped pointer to the underlying `GActionEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GActionEntry>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GActionEntry>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionEntry` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GActionEntry>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GActionEntry>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GActionEntry` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ActionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GActionEntry>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GActionEntry, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `ActionEntryProtocol`
    /// `GActionEntry` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ActionEntryProtocol`
    @inlinable public init<T: ActionEntryProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GActionEntry, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GActionEntry`.
    deinit {
        // no reference counting for GActionEntry, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GActionEntry, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GActionEntry, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GActionEntry, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GActionEntry, cannot ref(_ptr)
    }



}

// MARK: no ActionEntry properties

// MARK: no ActionEntry signals

// MARK: ActionEntry has no signals
// MARK: ActionEntry Record: ActionEntryProtocol extension (methods and fields)
public extension ActionEntryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GActionEntry` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GActionEntry>! { return ptr?.assumingMemoryBound(to: GActionEntry.self) }


    /// the name of the action
    @inlinable var name: UnsafePointer<gchar>! {
        /// the name of the action
        get {
            let rv = _ptr.pointee.name
            return rv
        }
        /// the name of the action
         set {
            _ptr.pointee.name = newValue
        }
    }

    // var activate is unavailable because activate is void

    /// the type of the parameter that must be passed to the
    ///                  activate function for this action, given as a single
    ///                  GVariant type string (or `nil` for no parameter)
    @inlinable var parameterType: UnsafePointer<gchar>! {
        /// the type of the parameter that must be passed to the
        ///                  activate function for this action, given as a single
        ///                  GVariant type string (or `nil` for no parameter)
        get {
            let rv = _ptr.pointee.parameter_type
            return rv
        }
        /// the type of the parameter that must be passed to the
        ///                  activate function for this action, given as a single
        ///                  GVariant type string (or `nil` for no parameter)
         set {
            _ptr.pointee.parameter_type = newValue
        }
    }

    /// the initial state for this action, given in
    ///         [GVariant text format](#gvariant-text).  The state is parsed
    ///         with no extra type information, so type tags must be added to
    ///         the string if they are necessary.  Stateless actions should
    ///         give `nil` here.
    @inlinable var state: UnsafePointer<gchar>! {
        /// the initial state for this action, given in
        ///         [GVariant text format](#gvariant-text).  The state is parsed
        ///         with no extra type information, so type tags must be added to
        ///         the string if they are necessary.  Stateless actions should
        ///         give `nil` here.
        get {
            let rv = _ptr.pointee.state
            return rv
        }
        /// the initial state for this action, given in
        ///         [GVariant text format](#gvariant-text).  The state is parsed
        ///         with no extra type information, so type tags must be added to
        ///         the string if they are necessary.  Stateless actions should
        ///         give `nil` here.
         set {
            _ptr.pointee.state = newValue
        }
    }

    // var changeState is unavailable because change_state is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for ActionGroup
public extension ActionGroupInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `ActionGroup`
    static var metatypeReference: GType { g_action_group_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GActionGroupInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GActionGroupInterface.self) }
    
    static var metatype: GActionGroupInterface? { metatypePointer?.pointee } 
    
    static var wrapper: ActionGroupInterfaceRef? { ActionGroupInterfaceRef(metatypePointer) }
    
    
}

// MARK: - ActionGroupInterface Record

/// The `ActionGroupInterfaceProtocol` protocol exposes the methods and properties of an underlying `GActionGroupInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ActionGroupInterface`.
/// Alternatively, use `ActionGroupInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The virtual function table for `GActionGroup`.
public protocol ActionGroupInterfaceProtocol {
        /// Untyped pointer to the underlying `GActionGroupInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GActionGroupInterface` instance.
    var _ptr: UnsafeMutablePointer<GActionGroupInterface>! { get }

}

/// The `ActionGroupInterfaceRef` type acts as a lightweight Swift reference to an underlying `GActionGroupInterface` instance.
/// It exposes methods that can operate on this data type through `ActionGroupInterfaceProtocol` conformance.
/// Use `ActionGroupInterfaceRef` only as an `unowned` reference to an existing `GActionGroupInterface` instance.
///
/// The virtual function table for `GActionGroup`.
public struct ActionGroupInterfaceRef: ActionGroupInterfaceProtocol {
        /// Untyped pointer to the underlying `GActionGroupInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ActionGroupInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GActionGroupInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GActionGroupInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GActionGroupInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GActionGroupInterface>?) {
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

    /// Reference intialiser for a related type that implements `ActionGroupInterfaceProtocol`
    @inlinable init<T: ActionGroupInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ActionGroupInterface Record: ActionGroupInterfaceProtocol extension (methods and fields)
public extension ActionGroupInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GActionGroupInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GActionGroupInterface>! { return ptr?.assumingMemoryBound(to: GActionGroupInterface.self) }


    @inlinable var gIface: GTypeInterface {
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var hasAction is unavailable because has_action is void

    // var listActions is unavailable because list_actions is void

    // var getActionEnabled is unavailable because get_action_enabled is void

    // var getActionParameterType is unavailable because get_action_parameter_type is void

    // var getActionStateType is unavailable because get_action_state_type is void

    // var getActionStateHint is unavailable because get_action_state_hint is void

    // var getActionState is unavailable because get_action_state is void

    // var changeActionState is unavailable because change_action_state is void

    // var activateAction is unavailable because activate_action is void

    // var actionAdded is unavailable because action_added is void

    // var actionRemoved is unavailable because action_removed is void

    // var actionEnabledChanged is unavailable because action_enabled_changed is void

    // var actionStateChanged is unavailable because action_state_changed is void

    // var queryAction is unavailable because query_action is void

}



/// Metatype/GType declaration for Action
public extension ActionInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `Action`
    static var metatypeReference: GType { g_action_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GActionInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GActionInterface.self) }
    
    static var metatype: GActionInterface? { metatypePointer?.pointee } 
    
    static var wrapper: ActionInterfaceRef? { ActionInterfaceRef(metatypePointer) }
    
    
}

// MARK: - ActionInterface Record

/// The `ActionInterfaceProtocol` protocol exposes the methods and properties of an underlying `GActionInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ActionInterface`.
/// Alternatively, use `ActionInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The virtual function table for `GAction`.
public protocol ActionInterfaceProtocol {
        /// Untyped pointer to the underlying `GActionInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GActionInterface` instance.
    var _ptr: UnsafeMutablePointer<GActionInterface>! { get }

}

/// The `ActionInterfaceRef` type acts as a lightweight Swift reference to an underlying `GActionInterface` instance.
/// It exposes methods that can operate on this data type through `ActionInterfaceProtocol` conformance.
/// Use `ActionInterfaceRef` only as an `unowned` reference to an existing `GActionInterface` instance.
///
/// The virtual function table for `GAction`.
public struct ActionInterfaceRef: ActionInterfaceProtocol {
        /// Untyped pointer to the underlying `GActionInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ActionInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GActionInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GActionInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GActionInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GActionInterface>?) {
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

    /// Reference intialiser for a related type that implements `ActionInterfaceProtocol`
    @inlinable init<T: ActionInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ActionInterface Record: ActionInterfaceProtocol extension (methods and fields)
public extension ActionInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GActionInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GActionInterface>! { return ptr?.assumingMemoryBound(to: GActionInterface.self) }


    @inlinable var gIface: GTypeInterface {
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var getName is unavailable because get_name is void

    // var getParameterType is unavailable because get_parameter_type is void

    // var getStateType is unavailable because get_state_type is void

    // var getStateHint is unavailable because get_state_hint is void

    // var getEnabled is unavailable because get_enabled is void

    // var getState is unavailable because get_state is void

    // var changeState is unavailable because change_state is void

    // var activate is unavailable because activate is void

}



/// Metatype/GType declaration for ActionMap
public extension ActionMapInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `ActionMap`
    static var metatypeReference: GType { g_action_map_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GActionMapInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GActionMapInterface.self) }
    
    static var metatype: GActionMapInterface? { metatypePointer?.pointee } 
    
    static var wrapper: ActionMapInterfaceRef? { ActionMapInterfaceRef(metatypePointer) }
    
    
}

// MARK: - ActionMapInterface Record

/// The `ActionMapInterfaceProtocol` protocol exposes the methods and properties of an underlying `GActionMapInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ActionMapInterface`.
/// Alternatively, use `ActionMapInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The virtual function table for `GActionMap`.
public protocol ActionMapInterfaceProtocol {
        /// Untyped pointer to the underlying `GActionMapInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GActionMapInterface` instance.
    var _ptr: UnsafeMutablePointer<GActionMapInterface>! { get }

}

/// The `ActionMapInterfaceRef` type acts as a lightweight Swift reference to an underlying `GActionMapInterface` instance.
/// It exposes methods that can operate on this data type through `ActionMapInterfaceProtocol` conformance.
/// Use `ActionMapInterfaceRef` only as an `unowned` reference to an existing `GActionMapInterface` instance.
///
/// The virtual function table for `GActionMap`.
public struct ActionMapInterfaceRef: ActionMapInterfaceProtocol {
        /// Untyped pointer to the underlying `GActionMapInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ActionMapInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GActionMapInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GActionMapInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GActionMapInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GActionMapInterface>?) {
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

    /// Reference intialiser for a related type that implements `ActionMapInterfaceProtocol`
    @inlinable init<T: ActionMapInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ActionMapInterface Record: ActionMapInterfaceProtocol extension (methods and fields)
public extension ActionMapInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GActionMapInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GActionMapInterface>! { return ptr?.assumingMemoryBound(to: GActionMapInterface.self) }


    @inlinable var gIface: GTypeInterface {
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var lookupAction is unavailable because lookup_action is void

    // var addAction is unavailable because add_action is void

    // var removeAction is unavailable because remove_action is void

}



/// Metatype/GType declaration for AppInfo
public extension AppInfoIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `AppInfo`
    static var metatypeReference: GType { g_app_info_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GAppInfoIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GAppInfoIface.self) }
    
    static var metatype: GAppInfoIface? { metatypePointer?.pointee } 
    
    static var wrapper: AppInfoIfaceRef? { AppInfoIfaceRef(metatypePointer) }
    
    
}

// MARK: - AppInfoIface Record

/// The `AppInfoIfaceProtocol` protocol exposes the methods and properties of an underlying `GAppInfoIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AppInfoIface`.
/// Alternatively, use `AppInfoIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Application Information interface, for operating system portability.
public protocol AppInfoIfaceProtocol {
        /// Untyped pointer to the underlying `GAppInfoIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GAppInfoIface` instance.
    var _ptr: UnsafeMutablePointer<GAppInfoIface>! { get }

}

/// The `AppInfoIfaceRef` type acts as a lightweight Swift reference to an underlying `GAppInfoIface` instance.
/// It exposes methods that can operate on this data type through `AppInfoIfaceProtocol` conformance.
/// Use `AppInfoIfaceRef` only as an `unowned` reference to an existing `GAppInfoIface` instance.
///
/// Application Information interface, for operating system portability.
public struct AppInfoIfaceRef: AppInfoIfaceProtocol {
        /// Untyped pointer to the underlying `GAppInfoIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AppInfoIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GAppInfoIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GAppInfoIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GAppInfoIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GAppInfoIface>?) {
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

    /// Reference intialiser for a related type that implements `AppInfoIfaceProtocol`
    @inlinable init<T: AppInfoIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: AppInfoIface Record: AppInfoIfaceProtocol extension (methods and fields)
public extension AppInfoIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GAppInfoIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GAppInfoIface>! { return ptr?.assumingMemoryBound(to: GAppInfoIface.self) }


    /// The parent interface.
    @inlinable var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var dup is unavailable because dup is void

    // var equal is unavailable because equal is void

    // var getID is unavailable because get_id is void

    // var getName is unavailable because get_name is void

    // var getDescription is unavailable because get_description is void

    // var getExecutable is unavailable because get_executable is void

    // var getIcon is unavailable because get_icon is void

    // var launch is unavailable because launch is void

    // var supportsURIs is unavailable because supports_uris is void

    // var supportsFiles is unavailable because supports_files is void

    // var launchURIs is unavailable because launch_uris is void

    // var shouldShow is unavailable because should_show is void

    // var setAsDefaultForType is unavailable because set_as_default_for_type is void

    // var setAsDefaultForExtension is unavailable because set_as_default_for_extension is void

    // var addSupportsType is unavailable because add_supports_type is void

    // var canRemoveSupportsType is unavailable because can_remove_supports_type is void

    // var removeSupportsType is unavailable because remove_supports_type is void

    // var canDelete is unavailable because can_delete is void

    // var doDelete is unavailable because do_delete is void

    // var getCommandline is unavailable because get_commandline is void

    // var getDisplayName is unavailable because get_display_name is void

    // var setAsLastUsedForType is unavailable because set_as_last_used_for_type is void

    // var getSupportedTypes is unavailable because get_supported_types is void

    // var launchURIsAsync is unavailable because launch_uris_async is void

    // var launchURIsFinish is unavailable because launch_uris_finish is void

}



/// Metatype/GType declaration for AppLaunchContext
public extension AppLaunchContextClassRef {
    
    /// This getter returns the GLib type identifier registered for `AppLaunchContext`
    static var metatypeReference: GType { g_app_launch_context_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GAppLaunchContextClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GAppLaunchContextClass.self) }
    
    static var metatype: GAppLaunchContextClass? { metatypePointer?.pointee } 
    
    static var wrapper: AppLaunchContextClassRef? { AppLaunchContextClassRef(metatypePointer) }
    
    
}

// MARK: - AppLaunchContextClass Record

/// The `AppLaunchContextClassProtocol` protocol exposes the methods and properties of an underlying `GAppLaunchContextClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AppLaunchContextClass`.
/// Alternatively, use `AppLaunchContextClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AppLaunchContextClassProtocol {
        /// Untyped pointer to the underlying `GAppLaunchContextClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GAppLaunchContextClass` instance.
    var _ptr: UnsafeMutablePointer<GAppLaunchContextClass>! { get }

}

/// The `AppLaunchContextClassRef` type acts as a lightweight Swift reference to an underlying `GAppLaunchContextClass` instance.
/// It exposes methods that can operate on this data type through `AppLaunchContextClassProtocol` conformance.
/// Use `AppLaunchContextClassRef` only as an `unowned` reference to an existing `GAppLaunchContextClass` instance.
///

public struct AppLaunchContextClassRef: AppLaunchContextClassProtocol {
        /// Untyped pointer to the underlying `GAppLaunchContextClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AppLaunchContextClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GAppLaunchContextClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GAppLaunchContextClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GAppLaunchContextClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GAppLaunchContextClass>?) {
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

    /// Reference intialiser for a related type that implements `AppLaunchContextClassProtocol`
    @inlinable init<T: AppLaunchContextClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: AppLaunchContextClass Record: AppLaunchContextClassProtocol extension (methods and fields)
public extension AppLaunchContextClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GAppLaunchContextClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GAppLaunchContextClass>! { return ptr?.assumingMemoryBound(to: GAppLaunchContextClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var getDisplay is unavailable because get_display is void

    // var getStartupNotifyID is unavailable because get_startup_notify_id is void

    // var launchFailed is unavailable because launch_failed is void

    // var launched is unavailable because launched is void

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

    // var GReserved4 is unavailable because _g_reserved4 is void

}



/// Metatype/GType declaration for Application
public extension ApplicationClassRef {
    
    /// This getter returns the GLib type identifier registered for `Application`
    static var metatypeReference: GType { g_application_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GApplicationClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GApplicationClass.self) }
    
    static var metatype: GApplicationClass? { metatypePointer?.pointee } 
    
    static var wrapper: ApplicationClassRef? { ApplicationClassRef(metatypePointer) }
    
    
}

// MARK: - ApplicationClass Record

/// The `ApplicationClassProtocol` protocol exposes the methods and properties of an underlying `GApplicationClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ApplicationClass`.
/// Alternatively, use `ApplicationClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Virtual function table for `GApplication`.
public protocol ApplicationClassProtocol {
        /// Untyped pointer to the underlying `GApplicationClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GApplicationClass` instance.
    var _ptr: UnsafeMutablePointer<GApplicationClass>! { get }

}

/// The `ApplicationClassRef` type acts as a lightweight Swift reference to an underlying `GApplicationClass` instance.
/// It exposes methods that can operate on this data type through `ApplicationClassProtocol` conformance.
/// Use `ApplicationClassRef` only as an `unowned` reference to an existing `GApplicationClass` instance.
///
/// Virtual function table for `GApplication`.
public struct ApplicationClassRef: ApplicationClassProtocol {
        /// Untyped pointer to the underlying `GApplicationClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ApplicationClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GApplicationClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GApplicationClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GApplicationClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GApplicationClass>?) {
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

    /// Reference intialiser for a related type that implements `ApplicationClassProtocol`
    @inlinable init<T: ApplicationClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ApplicationClass Record: ApplicationClassProtocol extension (methods and fields)
public extension ApplicationClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GApplicationClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GApplicationClass>! { return ptr?.assumingMemoryBound(to: GApplicationClass.self) }


    // var parentClass is unavailable because parent_class is private

    // var startup is unavailable because startup is void

    // var activate is unavailable because activate is void

    // var open is unavailable because open is void

    // var commandLine is unavailable because command_line is void

    // var localCommandLine is unavailable because local_command_line is void

    // var beforeEmit is unavailable because before_emit is void

    // var afterEmit is unavailable because after_emit is void

    // var addPlatformData is unavailable because add_platform_data is void

    // var quitMainloop is unavailable because quit_mainloop is void

    // var runMainloop is unavailable because run_mainloop is void

    // var shutdown is unavailable because shutdown is void

    // var dbusRegister is unavailable because dbus_register is void

    // var dbusUnregister is unavailable because dbus_unregister is void

    // var handleLocalOptions is unavailable because handle_local_options is void

    // var nameLost is unavailable because name_lost is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for ApplicationCommandLine
public extension ApplicationCommandLineClassRef {
    
    /// This getter returns the GLib type identifier registered for `ApplicationCommandLine`
    static var metatypeReference: GType { g_application_command_line_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GApplicationCommandLineClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GApplicationCommandLineClass.self) }
    
    static var metatype: GApplicationCommandLineClass? { metatypePointer?.pointee } 
    
    static var wrapper: ApplicationCommandLineClassRef? { ApplicationCommandLineClassRef(metatypePointer) }
    
    
}

// MARK: - ApplicationCommandLineClass Record

/// The `ApplicationCommandLineClassProtocol` protocol exposes the methods and properties of an underlying `GApplicationCommandLineClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ApplicationCommandLineClass`.
/// Alternatively, use `ApplicationCommandLineClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GApplicationCommandLineClass`-struct
/// contains private data only.
public protocol ApplicationCommandLineClassProtocol {
        /// Untyped pointer to the underlying `GApplicationCommandLineClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GApplicationCommandLineClass` instance.
    var _ptr: UnsafeMutablePointer<GApplicationCommandLineClass>! { get }

}

/// The `ApplicationCommandLineClassRef` type acts as a lightweight Swift reference to an underlying `GApplicationCommandLineClass` instance.
/// It exposes methods that can operate on this data type through `ApplicationCommandLineClassProtocol` conformance.
/// Use `ApplicationCommandLineClassRef` only as an `unowned` reference to an existing `GApplicationCommandLineClass` instance.
///
/// The `GApplicationCommandLineClass`-struct
/// contains private data only.
public struct ApplicationCommandLineClassRef: ApplicationCommandLineClassProtocol {
        /// Untyped pointer to the underlying `GApplicationCommandLineClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ApplicationCommandLineClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GApplicationCommandLineClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GApplicationCommandLineClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GApplicationCommandLineClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GApplicationCommandLineClass>?) {
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

    /// Reference intialiser for a related type that implements `ApplicationCommandLineClassProtocol`
    @inlinable init<T: ApplicationCommandLineClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLineClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLineClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLineClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLineClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLineClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ApplicationCommandLineClass Record: ApplicationCommandLineClassProtocol extension (methods and fields)
public extension ApplicationCommandLineClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GApplicationCommandLineClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GApplicationCommandLineClass>! { return ptr?.assumingMemoryBound(to: GApplicationCommandLineClass.self) }


    // var parentClass is unavailable because parent_class is private

    // var printLiteral is unavailable because print_literal is void

    // var printerrLiteral is unavailable because printerr_literal is void

    // var getStdin is unavailable because get_stdin is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for AsyncInitable
public extension AsyncInitableIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `AsyncInitable`
    static var metatypeReference: GType { g_async_initable_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GAsyncInitableIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GAsyncInitableIface.self) }
    
    static var metatype: GAsyncInitableIface? { metatypePointer?.pointee } 
    
    static var wrapper: AsyncInitableIfaceRef? { AsyncInitableIfaceRef(metatypePointer) }
    
    
}

// MARK: - AsyncInitableIface Record

/// The `AsyncInitableIfaceProtocol` protocol exposes the methods and properties of an underlying `GAsyncInitableIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AsyncInitableIface`.
/// Alternatively, use `AsyncInitableIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Provides an interface for asynchronous initializing object such that
/// initialization may fail.
public protocol AsyncInitableIfaceProtocol {
        /// Untyped pointer to the underlying `GAsyncInitableIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GAsyncInitableIface` instance.
    var _ptr: UnsafeMutablePointer<GAsyncInitableIface>! { get }

}

/// The `AsyncInitableIfaceRef` type acts as a lightweight Swift reference to an underlying `GAsyncInitableIface` instance.
/// It exposes methods that can operate on this data type through `AsyncInitableIfaceProtocol` conformance.
/// Use `AsyncInitableIfaceRef` only as an `unowned` reference to an existing `GAsyncInitableIface` instance.
///
/// Provides an interface for asynchronous initializing object such that
/// initialization may fail.
public struct AsyncInitableIfaceRef: AsyncInitableIfaceProtocol {
        /// Untyped pointer to the underlying `GAsyncInitableIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AsyncInitableIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GAsyncInitableIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GAsyncInitableIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GAsyncInitableIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GAsyncInitableIface>?) {
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

    /// Reference intialiser for a related type that implements `AsyncInitableIfaceProtocol`
    @inlinable init<T: AsyncInitableIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: AsyncInitableIface Record: AsyncInitableIfaceProtocol extension (methods and fields)
public extension AsyncInitableIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GAsyncInitableIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GAsyncInitableIface>! { return ptr?.assumingMemoryBound(to: GAsyncInitableIface.self) }


    /// The parent interface.
    @inlinable var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var initAsync is unavailable because init_async is void

    // var initFinish is unavailable because init_finish is void

}



/// Metatype/GType declaration for AsyncResult
public extension AsyncResultIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `AsyncResult`
    static var metatypeReference: GType { g_async_result_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GAsyncResultIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GAsyncResultIface.self) }
    
    static var metatype: GAsyncResultIface? { metatypePointer?.pointee } 
    
    static var wrapper: AsyncResultIfaceRef? { AsyncResultIfaceRef(metatypePointer) }
    
    
}

// MARK: - AsyncResultIface Record

/// The `AsyncResultIfaceProtocol` protocol exposes the methods and properties of an underlying `GAsyncResultIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AsyncResultIface`.
/// Alternatively, use `AsyncResultIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Interface definition for `GAsyncResult`.
public protocol AsyncResultIfaceProtocol {
        /// Untyped pointer to the underlying `GAsyncResultIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GAsyncResultIface` instance.
    var _ptr: UnsafeMutablePointer<GAsyncResultIface>! { get }

}

/// The `AsyncResultIfaceRef` type acts as a lightweight Swift reference to an underlying `GAsyncResultIface` instance.
/// It exposes methods that can operate on this data type through `AsyncResultIfaceProtocol` conformance.
/// Use `AsyncResultIfaceRef` only as an `unowned` reference to an existing `GAsyncResultIface` instance.
///
/// Interface definition for `GAsyncResult`.
public struct AsyncResultIfaceRef: AsyncResultIfaceProtocol {
        /// Untyped pointer to the underlying `GAsyncResultIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AsyncResultIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GAsyncResultIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GAsyncResultIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GAsyncResultIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GAsyncResultIface>?) {
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

    /// Reference intialiser for a related type that implements `AsyncResultIfaceProtocol`
    @inlinable init<T: AsyncResultIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: AsyncResultIface Record: AsyncResultIfaceProtocol extension (methods and fields)
public extension AsyncResultIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GAsyncResultIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GAsyncResultIface>! { return ptr?.assumingMemoryBound(to: GAsyncResultIface.self) }


    /// The parent interface.
    @inlinable var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var getUserData is unavailable because get_user_data is void

    // var getSourceObject is unavailable because get_source_object is void

    // var isTagged is unavailable because is_tagged is void

}



/// Metatype/GType declaration for BufferedInputStream
public extension BufferedInputStreamClassRef {
    
    /// This getter returns the GLib type identifier registered for `BufferedInputStream`
    static var metatypeReference: GType { g_buffered_input_stream_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GBufferedInputStreamClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GBufferedInputStreamClass.self) }
    
    static var metatype: GBufferedInputStreamClass? { metatypePointer?.pointee } 
    
    static var wrapper: BufferedInputStreamClassRef? { BufferedInputStreamClassRef(metatypePointer) }
    
    
}

// MARK: - BufferedInputStreamClass Record

/// The `BufferedInputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GBufferedInputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BufferedInputStreamClass`.
/// Alternatively, use `BufferedInputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol BufferedInputStreamClassProtocol {
        /// Untyped pointer to the underlying `GBufferedInputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GBufferedInputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GBufferedInputStreamClass>! { get }

}

/// The `BufferedInputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GBufferedInputStreamClass` instance.
/// It exposes methods that can operate on this data type through `BufferedInputStreamClassProtocol` conformance.
/// Use `BufferedInputStreamClassRef` only as an `unowned` reference to an existing `GBufferedInputStreamClass` instance.
///

public struct BufferedInputStreamClassRef: BufferedInputStreamClassProtocol {
        /// Untyped pointer to the underlying `GBufferedInputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BufferedInputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GBufferedInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GBufferedInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GBufferedInputStreamClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GBufferedInputStreamClass>?) {
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

    /// Reference intialiser for a related type that implements `BufferedInputStreamClassProtocol`
    @inlinable init<T: BufferedInputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: BufferedInputStreamClass Record: BufferedInputStreamClassProtocol extension (methods and fields)
public extension BufferedInputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GBufferedInputStreamClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GBufferedInputStreamClass>! { return ptr?.assumingMemoryBound(to: GBufferedInputStreamClass.self) }


    @inlinable var parentClass: GFilterInputStreamClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var fill is unavailable because fill is void

    // var fillAsync is unavailable because fill_async is void

    // var fillFinish is unavailable because fill_finish is void

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

    // var GReserved4 is unavailable because _g_reserved4 is void

    // var GReserved5 is unavailable because _g_reserved5 is void

}



