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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GActionEntry` instance.
    var _ptr: UnsafeMutablePointer<GActionEntry> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension ActionEntryRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GActionEntry>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ActionEntryProtocol`
    init<T: ActionEntryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GActionEntry>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GActionEntry` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ActionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GActionEntry>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GActionEntry, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `ActionEntryProtocol`
    /// `GActionEntry` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ActionEntryProtocol`
    public init<T: ActionEntryProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GActionEntry, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GActionEntry`.
    deinit {
        // no reference counting for GActionEntry, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GActionEntry, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GActionEntry, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GActionEntry, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GActionEntry, cannot ref(cast(_ptr))
    }



}

// MARK: - no ActionEntry properties

// MARK: - no signals


public extension ActionEntryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GActionEntry` instance.
    var _ptr: UnsafeMutablePointer<GActionEntry> { return ptr.assumingMemoryBound(to: GActionEntry.self) }

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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GActionGroupInterface` instance.
    var _ptr: UnsafeMutablePointer<GActionGroupInterface> { get }
}

/// The `ActionGroupInterfaceRef` type acts as a lightweight Swift reference to an underlying `GActionGroupInterface` instance.
/// It exposes methods that can operate on this data type through `ActionGroupInterfaceProtocol` conformance.
/// Use `ActionGroupInterfaceRef` only as an `unowned` reference to an existing `GActionGroupInterface` instance.
///
/// The virtual function table for `GActionGroup`.
public struct ActionGroupInterfaceRef: ActionGroupInterfaceProtocol {
    /// Untyped pointer to the underlying `GActionGroupInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ActionGroupInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GActionGroupInterface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ActionGroupInterfaceProtocol`
    init<T: ActionGroupInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupInterfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupInterfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupInterfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupInterfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupInterfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ActionGroupInterface` type acts as an owner of an underlying `GActionGroupInterface` instance.
/// It provides the methods that can operate on this data type through `ActionGroupInterfaceProtocol` conformance.
/// Use `ActionGroupInterface` as a strong reference or owner of a `GActionGroupInterface` instance.
///
/// The virtual function table for `GActionGroup`.
open class ActionGroupInterface: ActionGroupInterfaceProtocol {
    /// Untyped pointer to the underlying `GActionGroupInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionGroupInterface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GActionGroupInterface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GActionGroupInterface` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ActionGroupInterface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GActionGroupInterface>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GActionGroupInterface, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `ActionGroupInterfaceProtocol`
    /// `GActionGroupInterface` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ActionGroupInterfaceProtocol`
    public init<T: ActionGroupInterfaceProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GActionGroupInterface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GActionGroupInterface`.
    deinit {
        // no reference counting for GActionGroupInterface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GActionGroupInterface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupInterfaceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupInterfaceProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GActionGroupInterface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupInterfaceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupInterfaceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GActionGroupInterface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionGroupInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GActionGroupInterface, cannot ref(cast(_ptr))
    }



}

// MARK: - no ActionGroupInterface properties

// MARK: - no signals


public extension ActionGroupInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GActionGroupInterface` instance.
    var _ptr: UnsafeMutablePointer<GActionGroupInterface> { return ptr.assumingMemoryBound(to: GActionGroupInterface.self) }

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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GActionInterface` instance.
    var _ptr: UnsafeMutablePointer<GActionInterface> { get }
}

/// The `ActionInterfaceRef` type acts as a lightweight Swift reference to an underlying `GActionInterface` instance.
/// It exposes methods that can operate on this data type through `ActionInterfaceProtocol` conformance.
/// Use `ActionInterfaceRef` only as an `unowned` reference to an existing `GActionInterface` instance.
///
/// The virtual function table for `GAction`.
public struct ActionInterfaceRef: ActionInterfaceProtocol {
    /// Untyped pointer to the underlying `GActionInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ActionInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GActionInterface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ActionInterfaceProtocol`
    init<T: ActionInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionInterfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionInterfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionInterfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionInterfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionInterfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ActionInterface` type acts as an owner of an underlying `GActionInterface` instance.
/// It provides the methods that can operate on this data type through `ActionInterfaceProtocol` conformance.
/// Use `ActionInterface` as a strong reference or owner of a `GActionInterface` instance.
///
/// The virtual function table for `GAction`.
open class ActionInterface: ActionInterfaceProtocol {
    /// Untyped pointer to the underlying `GActionInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionInterface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GActionInterface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GActionInterface` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ActionInterface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GActionInterface>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GActionInterface, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `ActionInterfaceProtocol`
    /// `GActionInterface` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ActionInterfaceProtocol`
    public init<T: ActionInterfaceProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GActionInterface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GActionInterface`.
    deinit {
        // no reference counting for GActionInterface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GActionInterface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionInterfaceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionInterfaceProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GActionInterface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionInterfaceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionInterfaceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GActionInterface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GActionInterface, cannot ref(cast(_ptr))
    }



}

// MARK: - no ActionInterface properties

// MARK: - no signals


public extension ActionInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GActionInterface` instance.
    var _ptr: UnsafeMutablePointer<GActionInterface> { return ptr.assumingMemoryBound(to: GActionInterface.self) }

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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GActionMapInterface` instance.
    var _ptr: UnsafeMutablePointer<GActionMapInterface> { get }
}

/// The `ActionMapInterfaceRef` type acts as a lightweight Swift reference to an underlying `GActionMapInterface` instance.
/// It exposes methods that can operate on this data type through `ActionMapInterfaceProtocol` conformance.
/// Use `ActionMapInterfaceRef` only as an `unowned` reference to an existing `GActionMapInterface` instance.
///
/// The virtual function table for `GActionMap`.
public struct ActionMapInterfaceRef: ActionMapInterfaceProtocol {
    /// Untyped pointer to the underlying `GActionMapInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ActionMapInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GActionMapInterface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ActionMapInterfaceProtocol`
    init<T: ActionMapInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapInterfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapInterfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapInterfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapInterfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapInterfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ActionMapInterface` type acts as an owner of an underlying `GActionMapInterface` instance.
/// It provides the methods that can operate on this data type through `ActionMapInterfaceProtocol` conformance.
/// Use `ActionMapInterface` as a strong reference or owner of a `GActionMapInterface` instance.
///
/// The virtual function table for `GActionMap`.
open class ActionMapInterface: ActionMapInterfaceProtocol {
    /// Untyped pointer to the underlying `GActionMapInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ActionMapInterface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GActionMapInterface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GActionMapInterface` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ActionMapInterface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GActionMapInterface>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GActionMapInterface, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `ActionMapInterfaceProtocol`
    /// `GActionMapInterface` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ActionMapInterfaceProtocol`
    public init<T: ActionMapInterfaceProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GActionMapInterface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GActionMapInterface`.
    deinit {
        // no reference counting for GActionMapInterface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GActionMapInterface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapInterfaceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapInterfaceProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GActionMapInterface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapInterfaceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapInterfaceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GActionMapInterface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionMapInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GActionMapInterface, cannot ref(cast(_ptr))
    }



}

// MARK: - no ActionMapInterface properties

// MARK: - no signals


public extension ActionMapInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GActionMapInterface` instance.
    var _ptr: UnsafeMutablePointer<GActionMapInterface> { return ptr.assumingMemoryBound(to: GActionMapInterface.self) }

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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GAppInfoIface` instance.
    var _ptr: UnsafeMutablePointer<GAppInfoIface> { get }
}

/// The `AppInfoIfaceRef` type acts as a lightweight Swift reference to an underlying `GAppInfoIface` instance.
/// It exposes methods that can operate on this data type through `AppInfoIfaceProtocol` conformance.
/// Use `AppInfoIfaceRef` only as an `unowned` reference to an existing `GAppInfoIface` instance.
///
/// Application Information interface, for operating system portability.
public struct AppInfoIfaceRef: AppInfoIfaceProtocol {
    /// Untyped pointer to the underlying `GAppInfoIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AppInfoIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GAppInfoIface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AppInfoIfaceProtocol`
    init<T: AppInfoIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoIfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoIfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoIfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoIfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoIfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AppInfoIface` type acts as an owner of an underlying `GAppInfoIface` instance.
/// It provides the methods that can operate on this data type through `AppInfoIfaceProtocol` conformance.
/// Use `AppInfoIface` as a strong reference or owner of a `GAppInfoIface` instance.
///
/// Application Information interface, for operating system portability.
open class AppInfoIface: AppInfoIfaceProtocol {
    /// Untyped pointer to the underlying `GAppInfoIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppInfoIface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GAppInfoIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GAppInfoIface` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `AppInfoIface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GAppInfoIface>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GAppInfoIface, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `AppInfoIfaceProtocol`
    /// `GAppInfoIface` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AppInfoIfaceProtocol`
    public init<T: AppInfoIfaceProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GAppInfoIface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GAppInfoIface`.
    deinit {
        // no reference counting for GAppInfoIface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoIfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoIfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GAppInfoIface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoIfaceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoIfaceProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GAppInfoIface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoIfaceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoIfaceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GAppInfoIface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoIfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoIfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GAppInfoIface, cannot ref(cast(_ptr))
    }



}

// MARK: - no AppInfoIface properties

// MARK: - no signals


public extension AppInfoIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GAppInfoIface` instance.
    var _ptr: UnsafeMutablePointer<GAppInfoIface> { return ptr.assumingMemoryBound(to: GAppInfoIface.self) }

}



// MARK: - AppLaunchContextClass Record

/// The `AppLaunchContextClassProtocol` protocol exposes the methods and properties of an underlying `GAppLaunchContextClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AppLaunchContextClass`.
/// Alternatively, use `AppLaunchContextClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AppLaunchContextClassProtocol {
    /// Untyped pointer to the underlying `GAppLaunchContextClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GAppLaunchContextClass` instance.
    var _ptr: UnsafeMutablePointer<GAppLaunchContextClass> { get }
}

/// The `AppLaunchContextClassRef` type acts as a lightweight Swift reference to an underlying `GAppLaunchContextClass` instance.
/// It exposes methods that can operate on this data type through `AppLaunchContextClassProtocol` conformance.
/// Use `AppLaunchContextClassRef` only as an `unowned` reference to an existing `GAppLaunchContextClass` instance.
///

public struct AppLaunchContextClassRef: AppLaunchContextClassProtocol {
    /// Untyped pointer to the underlying `GAppLaunchContextClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AppLaunchContextClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GAppLaunchContextClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AppLaunchContextClassProtocol`
    init<T: AppLaunchContextClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AppLaunchContextClass` type acts as an owner of an underlying `GAppLaunchContextClass` instance.
/// It provides the methods that can operate on this data type through `AppLaunchContextClassProtocol` conformance.
/// Use `AppLaunchContextClass` as a strong reference or owner of a `GAppLaunchContextClass` instance.
///

open class AppLaunchContextClass: AppLaunchContextClassProtocol {
    /// Untyped pointer to the underlying `GAppLaunchContextClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppLaunchContextClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GAppLaunchContextClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GAppLaunchContextClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `AppLaunchContextClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GAppLaunchContextClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GAppLaunchContextClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `AppLaunchContextClassProtocol`
    /// `GAppLaunchContextClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AppLaunchContextClassProtocol`
    public init<T: AppLaunchContextClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GAppLaunchContextClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GAppLaunchContextClass`.
    deinit {
        // no reference counting for GAppLaunchContextClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GAppLaunchContextClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GAppLaunchContextClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GAppLaunchContextClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GAppLaunchContextClass, cannot ref(cast(_ptr))
    }



}

// MARK: - no AppLaunchContextClass properties

// MARK: - no signals


public extension AppLaunchContextClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GAppLaunchContextClass` instance.
    var _ptr: UnsafeMutablePointer<GAppLaunchContextClass> { return ptr.assumingMemoryBound(to: GAppLaunchContextClass.self) }

}



// MARK: - AppLaunchContextPrivate Record

/// The `AppLaunchContextPrivateProtocol` protocol exposes the methods and properties of an underlying `GAppLaunchContextPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AppLaunchContextPrivate`.
/// Alternatively, use `AppLaunchContextPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol AppLaunchContextPrivateProtocol {
    /// Untyped pointer to the underlying `GAppLaunchContextPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GAppLaunchContextPrivate` instance.
    var _ptr: UnsafeMutablePointer<GAppLaunchContextPrivate> { get }
}

/// The `AppLaunchContextPrivateRef` type acts as a lightweight Swift reference to an underlying `GAppLaunchContextPrivate` instance.
/// It exposes methods that can operate on this data type through `AppLaunchContextPrivateProtocol` conformance.
/// Use `AppLaunchContextPrivateRef` only as an `unowned` reference to an existing `GAppLaunchContextPrivate` instance.
///

public struct AppLaunchContextPrivateRef: AppLaunchContextPrivateProtocol {
    /// Untyped pointer to the underlying `GAppLaunchContextPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AppLaunchContextPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GAppLaunchContextPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AppLaunchContextPrivateProtocol`
    init<T: AppLaunchContextPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AppLaunchContextPrivate` type acts as an owner of an underlying `GAppLaunchContextPrivate` instance.
/// It provides the methods that can operate on this data type through `AppLaunchContextPrivateProtocol` conformance.
/// Use `AppLaunchContextPrivate` as a strong reference or owner of a `GAppLaunchContextPrivate` instance.
///

open class AppLaunchContextPrivate: AppLaunchContextPrivateProtocol {
    /// Untyped pointer to the underlying `GAppLaunchContextPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppLaunchContextPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GAppLaunchContextPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GAppLaunchContextPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `AppLaunchContextPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GAppLaunchContextPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GAppLaunchContextPrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `AppLaunchContextPrivateProtocol`
    /// `GAppLaunchContextPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AppLaunchContextPrivateProtocol`
    public init<T: AppLaunchContextPrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GAppLaunchContextPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GAppLaunchContextPrivate`.
    deinit {
        // no reference counting for GAppLaunchContextPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GAppLaunchContextPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextPrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GAppLaunchContextPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GAppLaunchContextPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GAppLaunchContextPrivate, cannot ref(cast(_ptr))
    }



}

// MARK: - no AppLaunchContextPrivate properties

// MARK: - no signals


public extension AppLaunchContextPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GAppLaunchContextPrivate` instance.
    var _ptr: UnsafeMutablePointer<GAppLaunchContextPrivate> { return ptr.assumingMemoryBound(to: GAppLaunchContextPrivate.self) }

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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GApplicationClass` instance.
    var _ptr: UnsafeMutablePointer<GApplicationClass> { get }
}

/// The `ApplicationClassRef` type acts as a lightweight Swift reference to an underlying `GApplicationClass` instance.
/// It exposes methods that can operate on this data type through `ApplicationClassProtocol` conformance.
/// Use `ApplicationClassRef` only as an `unowned` reference to an existing `GApplicationClass` instance.
///
/// Virtual function table for `GApplication`.
public struct ApplicationClassRef: ApplicationClassProtocol {
    /// Untyped pointer to the underlying `GApplicationClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ApplicationClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GApplicationClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ApplicationClassProtocol`
    init<T: ApplicationClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ApplicationClass` type acts as an owner of an underlying `GApplicationClass` instance.
/// It provides the methods that can operate on this data type through `ApplicationClassProtocol` conformance.
/// Use `ApplicationClass` as a strong reference or owner of a `GApplicationClass` instance.
///
/// Virtual function table for `GApplication`.
open class ApplicationClass: ApplicationClassProtocol {
    /// Untyped pointer to the underlying `GApplicationClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ApplicationClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GApplicationClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GApplicationClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ApplicationClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GApplicationClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GApplicationClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `ApplicationClassProtocol`
    /// `GApplicationClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ApplicationClassProtocol`
    public init<T: ApplicationClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GApplicationClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GApplicationClass`.
    deinit {
        // no reference counting for GApplicationClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GApplicationClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GApplicationClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GApplicationClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GApplicationClass, cannot ref(cast(_ptr))
    }



}

// MARK: - no ApplicationClass properties

// MARK: - no signals


public extension ApplicationClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GApplicationClass` instance.
    var _ptr: UnsafeMutablePointer<GApplicationClass> { return ptr.assumingMemoryBound(to: GApplicationClass.self) }

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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GApplicationCommandLineClass` instance.
    var _ptr: UnsafeMutablePointer<GApplicationCommandLineClass> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension ApplicationCommandLineClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GApplicationCommandLineClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ApplicationCommandLineClassProtocol`
    init<T: ApplicationCommandLineClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLineClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLineClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLineClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLineClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLineClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ApplicationCommandLineClass` type acts as an owner of an underlying `GApplicationCommandLineClass` instance.
/// It provides the methods that can operate on this data type through `ApplicationCommandLineClassProtocol` conformance.
/// Use `ApplicationCommandLineClass` as a strong reference or owner of a `GApplicationCommandLineClass` instance.
///
/// The `GApplicationCommandLineClass`-struct
/// contains private data only.
open class ApplicationCommandLineClass: ApplicationCommandLineClassProtocol {
    /// Untyped pointer to the underlying `GApplicationCommandLineClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ApplicationCommandLineClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GApplicationCommandLineClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GApplicationCommandLineClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ApplicationCommandLineClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GApplicationCommandLineClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GApplicationCommandLineClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `ApplicationCommandLineClassProtocol`
    /// `GApplicationCommandLineClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ApplicationCommandLineClassProtocol`
    public init<T: ApplicationCommandLineClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GApplicationCommandLineClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GApplicationCommandLineClass`.
    deinit {
        // no reference counting for GApplicationCommandLineClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLineClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLineClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GApplicationCommandLineClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLineClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLineClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GApplicationCommandLineClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLineClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLineClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GApplicationCommandLineClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLineClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLineClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GApplicationCommandLineClass, cannot ref(cast(_ptr))
    }



}

// MARK: - no ApplicationCommandLineClass properties

// MARK: - no signals


public extension ApplicationCommandLineClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GApplicationCommandLineClass` instance.
    var _ptr: UnsafeMutablePointer<GApplicationCommandLineClass> { return ptr.assumingMemoryBound(to: GApplicationCommandLineClass.self) }

}



// MARK: - ApplicationCommandLinePrivate Record

/// The `ApplicationCommandLinePrivateProtocol` protocol exposes the methods and properties of an underlying `GApplicationCommandLinePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ApplicationCommandLinePrivate`.
/// Alternatively, use `ApplicationCommandLinePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ApplicationCommandLinePrivateProtocol {
    /// Untyped pointer to the underlying `GApplicationCommandLinePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GApplicationCommandLinePrivate` instance.
    var _ptr: UnsafeMutablePointer<GApplicationCommandLinePrivate> { get }
}

/// The `ApplicationCommandLinePrivateRef` type acts as a lightweight Swift reference to an underlying `GApplicationCommandLinePrivate` instance.
/// It exposes methods that can operate on this data type through `ApplicationCommandLinePrivateProtocol` conformance.
/// Use `ApplicationCommandLinePrivateRef` only as an `unowned` reference to an existing `GApplicationCommandLinePrivate` instance.
///

public struct ApplicationCommandLinePrivateRef: ApplicationCommandLinePrivateProtocol {
    /// Untyped pointer to the underlying `GApplicationCommandLinePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ApplicationCommandLinePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GApplicationCommandLinePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ApplicationCommandLinePrivateProtocol`
    init<T: ApplicationCommandLinePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLinePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLinePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLinePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLinePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLinePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ApplicationCommandLinePrivate` type acts as an owner of an underlying `GApplicationCommandLinePrivate` instance.
/// It provides the methods that can operate on this data type through `ApplicationCommandLinePrivateProtocol` conformance.
/// Use `ApplicationCommandLinePrivate` as a strong reference or owner of a `GApplicationCommandLinePrivate` instance.
///

open class ApplicationCommandLinePrivate: ApplicationCommandLinePrivateProtocol {
    /// Untyped pointer to the underlying `GApplicationCommandLinePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ApplicationCommandLinePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GApplicationCommandLinePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GApplicationCommandLinePrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ApplicationCommandLinePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GApplicationCommandLinePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GApplicationCommandLinePrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `ApplicationCommandLinePrivateProtocol`
    /// `GApplicationCommandLinePrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ApplicationCommandLinePrivateProtocol`
    public init<T: ApplicationCommandLinePrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GApplicationCommandLinePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GApplicationCommandLinePrivate`.
    deinit {
        // no reference counting for GApplicationCommandLinePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLinePrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLinePrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GApplicationCommandLinePrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLinePrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLinePrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GApplicationCommandLinePrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLinePrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLinePrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GApplicationCommandLinePrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLinePrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLinePrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GApplicationCommandLinePrivate, cannot ref(cast(_ptr))
    }



}

// MARK: - no ApplicationCommandLinePrivate properties

// MARK: - no signals


public extension ApplicationCommandLinePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GApplicationCommandLinePrivate` instance.
    var _ptr: UnsafeMutablePointer<GApplicationCommandLinePrivate> { return ptr.assumingMemoryBound(to: GApplicationCommandLinePrivate.self) }

}



// MARK: - ApplicationPrivate Record

/// The `ApplicationPrivateProtocol` protocol exposes the methods and properties of an underlying `GApplicationPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ApplicationPrivate`.
/// Alternatively, use `ApplicationPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ApplicationPrivateProtocol {
    /// Untyped pointer to the underlying `GApplicationPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GApplicationPrivate` instance.
    var _ptr: UnsafeMutablePointer<GApplicationPrivate> { get }
}

/// The `ApplicationPrivateRef` type acts as a lightweight Swift reference to an underlying `GApplicationPrivate` instance.
/// It exposes methods that can operate on this data type through `ApplicationPrivateProtocol` conformance.
/// Use `ApplicationPrivateRef` only as an `unowned` reference to an existing `GApplicationPrivate` instance.
///

public struct ApplicationPrivateRef: ApplicationPrivateProtocol {
    /// Untyped pointer to the underlying `GApplicationPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ApplicationPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GApplicationPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ApplicationPrivateProtocol`
    init<T: ApplicationPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ApplicationPrivate` type acts as an owner of an underlying `GApplicationPrivate` instance.
/// It provides the methods that can operate on this data type through `ApplicationPrivateProtocol` conformance.
/// Use `ApplicationPrivate` as a strong reference or owner of a `GApplicationPrivate` instance.
///

open class ApplicationPrivate: ApplicationPrivateProtocol {
    /// Untyped pointer to the underlying `GApplicationPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ApplicationPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GApplicationPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GApplicationPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ApplicationPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GApplicationPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GApplicationPrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `ApplicationPrivateProtocol`
    /// `GApplicationPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ApplicationPrivateProtocol`
    public init<T: ApplicationPrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GApplicationPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GApplicationPrivate`.
    deinit {
        // no reference counting for GApplicationPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GApplicationPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationPrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GApplicationPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GApplicationPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GApplicationPrivate, cannot ref(cast(_ptr))
    }



}

// MARK: - no ApplicationPrivate properties

// MARK: - no signals


public extension ApplicationPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GApplicationPrivate` instance.
    var _ptr: UnsafeMutablePointer<GApplicationPrivate> { return ptr.assumingMemoryBound(to: GApplicationPrivate.self) }

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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GAsyncInitableIface` instance.
    var _ptr: UnsafeMutablePointer<GAsyncInitableIface> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension AsyncInitableIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GAsyncInitableIface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AsyncInitableIfaceProtocol`
    init<T: AsyncInitableIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableIfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableIfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableIfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableIfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableIfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AsyncInitableIface` type acts as an owner of an underlying `GAsyncInitableIface` instance.
/// It provides the methods that can operate on this data type through `AsyncInitableIfaceProtocol` conformance.
/// Use `AsyncInitableIface` as a strong reference or owner of a `GAsyncInitableIface` instance.
///
/// Provides an interface for asynchronous initializing object such that
/// initialization may fail.
open class AsyncInitableIface: AsyncInitableIfaceProtocol {
    /// Untyped pointer to the underlying `GAsyncInitableIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AsyncInitableIface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GAsyncInitableIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GAsyncInitableIface` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `AsyncInitableIface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GAsyncInitableIface>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GAsyncInitableIface, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `AsyncInitableIfaceProtocol`
    /// `GAsyncInitableIface` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AsyncInitableIfaceProtocol`
    public init<T: AsyncInitableIfaceProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GAsyncInitableIface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GAsyncInitableIface`.
    deinit {
        // no reference counting for GAsyncInitableIface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableIfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableIfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GAsyncInitableIface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableIfaceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableIfaceProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GAsyncInitableIface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableIfaceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableIfaceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GAsyncInitableIface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableIfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncInitableIfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GAsyncInitableIface, cannot ref(cast(_ptr))
    }



}

// MARK: - no AsyncInitableIface properties

// MARK: - no signals


public extension AsyncInitableIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GAsyncInitableIface` instance.
    var _ptr: UnsafeMutablePointer<GAsyncInitableIface> { return ptr.assumingMemoryBound(to: GAsyncInitableIface.self) }

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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GAsyncResultIface` instance.
    var _ptr: UnsafeMutablePointer<GAsyncResultIface> { get }
}

/// The `AsyncResultIfaceRef` type acts as a lightweight Swift reference to an underlying `GAsyncResultIface` instance.
/// It exposes methods that can operate on this data type through `AsyncResultIfaceProtocol` conformance.
/// Use `AsyncResultIfaceRef` only as an `unowned` reference to an existing `GAsyncResultIface` instance.
///
/// Interface definition for `GAsyncResult`.
public struct AsyncResultIfaceRef: AsyncResultIfaceProtocol {
    /// Untyped pointer to the underlying `GAsyncResultIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AsyncResultIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GAsyncResultIface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AsyncResultIfaceProtocol`
    init<T: AsyncResultIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultIfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultIfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultIfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultIfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultIfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `AsyncResultIface` type acts as an owner of an underlying `GAsyncResultIface` instance.
/// It provides the methods that can operate on this data type through `AsyncResultIfaceProtocol` conformance.
/// Use `AsyncResultIface` as a strong reference or owner of a `GAsyncResultIface` instance.
///
/// Interface definition for `GAsyncResult`.
open class AsyncResultIface: AsyncResultIfaceProtocol {
    /// Untyped pointer to the underlying `GAsyncResultIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AsyncResultIface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GAsyncResultIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GAsyncResultIface` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `AsyncResultIface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GAsyncResultIface>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GAsyncResultIface, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `AsyncResultIfaceProtocol`
    /// `GAsyncResultIface` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AsyncResultIfaceProtocol`
    public init<T: AsyncResultIfaceProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GAsyncResultIface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GAsyncResultIface`.
    deinit {
        // no reference counting for GAsyncResultIface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultIfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultIfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GAsyncResultIface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultIfaceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultIfaceProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GAsyncResultIface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultIfaceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultIfaceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GAsyncResultIface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultIfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AsyncResultIfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GAsyncResultIface, cannot ref(cast(_ptr))
    }



}

// MARK: - no AsyncResultIface properties

// MARK: - no signals


public extension AsyncResultIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GAsyncResultIface` instance.
    var _ptr: UnsafeMutablePointer<GAsyncResultIface> { return ptr.assumingMemoryBound(to: GAsyncResultIface.self) }

}



// MARK: - BufferedInputStreamClass Record

/// The `BufferedInputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GBufferedInputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BufferedInputStreamClass`.
/// Alternatively, use `BufferedInputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol BufferedInputStreamClassProtocol {
    /// Untyped pointer to the underlying `GBufferedInputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GBufferedInputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GBufferedInputStreamClass> { get }
}

/// The `BufferedInputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GBufferedInputStreamClass` instance.
/// It exposes methods that can operate on this data type through `BufferedInputStreamClassProtocol` conformance.
/// Use `BufferedInputStreamClassRef` only as an `unowned` reference to an existing `GBufferedInputStreamClass` instance.
///

public struct BufferedInputStreamClassRef: BufferedInputStreamClassProtocol {
    /// Untyped pointer to the underlying `GBufferedInputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension BufferedInputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GBufferedInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `BufferedInputStreamClassProtocol`
    init<T: BufferedInputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `BufferedInputStreamClass` type acts as an owner of an underlying `GBufferedInputStreamClass` instance.
/// It provides the methods that can operate on this data type through `BufferedInputStreamClassProtocol` conformance.
/// Use `BufferedInputStreamClass` as a strong reference or owner of a `GBufferedInputStreamClass` instance.
///

open class BufferedInputStreamClass: BufferedInputStreamClassProtocol {
    /// Untyped pointer to the underlying `GBufferedInputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BufferedInputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GBufferedInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GBufferedInputStreamClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `BufferedInputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GBufferedInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GBufferedInputStreamClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `BufferedInputStreamClassProtocol`
    /// `GBufferedInputStreamClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `BufferedInputStreamClassProtocol`
    public init<T: BufferedInputStreamClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GBufferedInputStreamClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GBufferedInputStreamClass`.
    deinit {
        // no reference counting for GBufferedInputStreamClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GBufferedInputStreamClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GBufferedInputStreamClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GBufferedInputStreamClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GBufferedInputStreamClass, cannot ref(cast(_ptr))
    }



}

// MARK: - no BufferedInputStreamClass properties

// MARK: - no signals


public extension BufferedInputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GBufferedInputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GBufferedInputStreamClass> { return ptr.assumingMemoryBound(to: GBufferedInputStreamClass.self) }

}



