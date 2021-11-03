import CGLib
import GLib
import GLibObject

// MARK: - DBusInterface Interface

/// The `GDBusInterface` type is the base type for D-Bus interfaces both
/// on the service side (see `GDBusInterfaceSkeleton`) and client side
/// (see `GDBusProxy`).
///
/// The `DBusInterfaceProtocol` protocol exposes the methods and properties of an underlying `GDBusInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusInterface`.
/// Alternatively, use `DBusInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DBusInterfaceProtocol {
        /// Untyped pointer to the underlying `GDBusInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusInterface` instance.
    var dbus_interface_ptr: UnsafeMutablePointer<GDBusInterface>! { get }

    /// Required Initialiser for types conforming to `DBusInterfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GDBusInterface` type is the base type for D-Bus interfaces both
/// on the service side (see `GDBusInterfaceSkeleton`) and client side
/// (see `GDBusProxy`).
///
/// The `DBusInterfaceRef` type acts as a lightweight Swift reference to an underlying `GDBusInterface` instance.
/// It exposes methods that can operate on this data type through `DBusInterfaceProtocol` conformance.
/// Use `DBusInterfaceRef` only as an `unowned` reference to an existing `GDBusInterface` instance.
///
public struct DBusInterfaceRef: DBusInterfaceProtocol {
        /// Untyped pointer to the underlying `GDBusInterface` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_interface_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusInterface>?) {
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

    /// Reference intialiser for a related type that implements `DBusInterfaceProtocol`
    @inlinable init<T: DBusInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GDBusInterface` type is the base type for D-Bus interfaces both
/// on the service side (see `GDBusInterfaceSkeleton`) and client side
/// (see `GDBusProxy`).
///
/// The `DBusInterface` type acts as an owner of an underlying `GDBusInterface` instance.
/// It provides the methods that can operate on this data type through `DBusInterfaceProtocol` conformance.
/// Use `DBusInterface` as a strong reference or owner of a `GDBusInterface` instance.
///
open class DBusInterface: DBusInterfaceProtocol {
        /// Untyped pointer to the underlying `GDBusInterface` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_interface_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDBusInterface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDBusInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusInterface` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDBusInterface>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDBusInterface>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GDBusInterface` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `DBusInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDBusInterface>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GDBusInterface, cannot ref(dbus_interface_ptr)
    }

    /// Reference intialiser for a related type that implements `DBusInterfaceProtocol`
    /// `GDBusInterface` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `DBusInterfaceProtocol`
    @inlinable public init<T: DBusInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GDBusInterface, cannot ref(dbus_interface_ptr)
    }

    /// Do-nothing destructor for `GDBusInterface`.
    deinit {
        // no reference counting for GDBusInterface, cannot unref(dbus_interface_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GDBusInterface, cannot ref(dbus_interface_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GDBusInterface, cannot ref(dbus_interface_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GDBusInterface, cannot ref(dbus_interface_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GDBusInterface, cannot ref(dbus_interface_ptr)
    }



}

// MARK: no DBusInterface properties

// MARK: no DBusInterface signals

// MARK: DBusInterface has no signals
// MARK: DBusInterface Interface: DBusInterfaceProtocol extension (methods and fields)
public extension DBusInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusInterface` instance.
    @inlinable var dbus_interface_ptr: UnsafeMutablePointer<GDBusInterface>! { return ptr?.assumingMemoryBound(to: GDBusInterface.self) }

    /// Gets the `GDBusObject` that `interface_` belongs to, if any.
    @inlinable func dupObject() -> DBusObjectRef! {
        let rv = DBusObjectRef(gconstpointer: gconstpointer(g_dbus_interface_dup_object(dbus_interface_ptr)))
        return rv
    }

    /// Gets D-Bus introspection information for the D-Bus interface
    /// implemented by `interface_`.
    @inlinable func getInfo() -> DBusInterfaceInfoRef! {
        let rv = DBusInterfaceInfoRef(gconstpointer: gconstpointer(g_dbus_interface_get_info(dbus_interface_ptr)))
        return rv
    }

    /// Gets the `GDBusObject` that `interface_` belongs to, if any.
    /// 
    /// It is not safe to use the returned object if `interface_` or
    /// the returned object is being used from other threads. See
    /// `g_dbus_interface_dup_object()` for a thread-safe alternative.
    @inlinable func getObject() -> DBusObjectRef! {
        let rv = DBusObjectRef(gconstpointer: gconstpointer(g_dbus_interface_get_object(dbus_interface_ptr)))
        return rv
    }

    /// Sets the `GDBusObject` for `interface_` to `object`.
    /// 
    /// Note that `interface_` will hold a weak reference to `object`.
    @inlinable func set(object: DBusObjectRef? = nil) {
        g_dbus_interface_set_object(dbus_interface_ptr, object?.dbus_object_ptr)
    
    }
    /// Sets the `GDBusObject` for `interface_` to `object`.
    /// 
    /// Note that `interface_` will hold a weak reference to `object`.
    @inlinable func set<DBusObjectT: DBusObjectProtocol>(object: DBusObjectT?) {
        g_dbus_interface_set_object(dbus_interface_ptr, object?.dbus_object_ptr)
    
    }
    /// Gets D-Bus introspection information for the D-Bus interface
    /// implemented by `interface_`.
    @inlinable var info: DBusInterfaceInfoRef! {
        /// Gets D-Bus introspection information for the D-Bus interface
        /// implemented by `interface_`.
        get {
            let rv = DBusInterfaceInfoRef(gconstpointer: gconstpointer(g_dbus_interface_get_info(dbus_interface_ptr)))
            return rv
        }
    }

    /// Gets the `GDBusObject` that `interface_` belongs to, if any.
    /// 
    /// It is not safe to use the returned object if `interface_` or
    /// the returned object is being used from other threads. See
    /// `g_dbus_interface_dup_object()` for a thread-safe alternative.
    @inlinable var object: DBusObjectRef! {
        /// Gets the `GDBusObject` that `interface_` belongs to, if any.
        /// 
        /// It is not safe to use the returned object if `interface_` or
        /// the returned object is being used from other threads. See
        /// `g_dbus_interface_dup_object()` for a thread-safe alternative.
        get {
            let rv = DBusObjectRef(gconstpointer: gconstpointer(g_dbus_interface_get_object(dbus_interface_ptr)))
            return rv
        }
        /// Sets the `GDBusObject` for `interface_` to `object`.
        /// 
        /// Note that `interface_` will hold a weak reference to `object`.
        nonmutating set {
            g_dbus_interface_set_object(dbus_interface_ptr, UnsafeMutablePointer<GDBusObject>(newValue?.dbus_object_ptr))
        }
    }


}



// MARK: - DBusObject Interface

/// The `GDBusObject` type is the base type for D-Bus objects on both
/// the service side (see `GDBusObjectSkeleton`) and the client side
/// (see `GDBusObjectProxy`). It is essentially just a container of
/// interfaces.
///
/// The `DBusObjectProtocol` protocol exposes the methods and properties of an underlying `GDBusObject` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusObject`.
/// Alternatively, use `DBusObjectRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DBusObjectProtocol {
        /// Untyped pointer to the underlying `GDBusObject` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusObject` instance.
    var dbus_object_ptr: UnsafeMutablePointer<GDBusObject>! { get }

    /// Required Initialiser for types conforming to `DBusObjectProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GDBusObject` type is the base type for D-Bus objects on both
/// the service side (see `GDBusObjectSkeleton`) and the client side
/// (see `GDBusObjectProxy`). It is essentially just a container of
/// interfaces.
///
/// The `DBusObjectRef` type acts as a lightweight Swift reference to an underlying `GDBusObject` instance.
/// It exposes methods that can operate on this data type through `DBusObjectProtocol` conformance.
/// Use `DBusObjectRef` only as an `unowned` reference to an existing `GDBusObject` instance.
///
public struct DBusObjectRef: DBusObjectProtocol {
        /// Untyped pointer to the underlying `GDBusObject` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_object_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusObjectRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusObject>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusObject>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusObject>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusObject>?) {
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

    /// Reference intialiser for a related type that implements `DBusObjectProtocol`
    @inlinable init<T: DBusObjectProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GDBusObject` type is the base type for D-Bus objects on both
/// the service side (see `GDBusObjectSkeleton`) and the client side
/// (see `GDBusObjectProxy`). It is essentially just a container of
/// interfaces.
///
/// The `DBusObject` type acts as an owner of an underlying `GDBusObject` instance.
/// It provides the methods that can operate on this data type through `DBusObjectProtocol` conformance.
/// Use `DBusObject` as a strong reference or owner of a `GDBusObject` instance.
///
open class DBusObject: DBusObjectProtocol {
        /// Untyped pointer to the underlying `GDBusObject` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_object_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObject` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDBusObject>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObject` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDBusObject>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObject` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObject` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObject` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDBusObject>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObject` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDBusObject>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GDBusObject` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `DBusObject` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDBusObject>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GDBusObject, cannot ref(dbus_object_ptr)
    }

    /// Reference intialiser for a related type that implements `DBusObjectProtocol`
    /// `GDBusObject` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `DBusObjectProtocol`
    @inlinable public init<T: DBusObjectProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GDBusObject, cannot ref(dbus_object_ptr)
    }

    /// Do-nothing destructor for `GDBusObject`.
    deinit {
        // no reference counting for GDBusObject, cannot unref(dbus_object_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GDBusObject, cannot ref(dbus_object_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GDBusObject, cannot ref(dbus_object_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GDBusObject, cannot ref(dbus_object_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GDBusObject, cannot ref(dbus_object_ptr)
    }



}

// MARK: no DBusObject properties

public enum DBusObjectSignalName: String, SignalNameProtocol {
    /// Emitted when `interface` is added to `object`.
    case interfaceAdded = "interface-added"
    /// Emitted when `interface` is removed from `object`.
    case interfaceRemoved = "interface-removed"

}

// MARK: DBusObject signals
public extension DBusObjectProtocol {
    /// Connect a Swift signal handler to the given, typed `DBusObjectSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: DBusObjectSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        GLibObject.ObjectRef(raw: ptr).connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `DBusObjectSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: DBusObjectSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        GLibObject.ObjectRef(raw: ptr).connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted when `interface` is added to `object`.
    /// - Note: This represents the underlying `interface-added` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter interface: The `GDBusInterface` that was added.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `interfaceAdded` signal is emitted
    @discardableResult @inlinable func onInterfaceAdded(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DBusObjectRef, _ interface: DBusInterfaceRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DBusObjectRef, DBusInterfaceRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DBusObjectRef(raw: unownedSelf), DBusInterfaceRef(raw: arg1))
            return output
        }
        return connect(
            signal: .interfaceAdded,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `interface-added` signal for using the `connect(signal:)` methods
    static var interfaceAddedSignal: DBusObjectSignalName { .interfaceAdded }
    
    /// Emitted when `interface` is removed from `object`.
    /// - Note: This represents the underlying `interface-removed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter interface: The `GDBusInterface` that was removed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `interfaceRemoved` signal is emitted
    @discardableResult @inlinable func onInterfaceRemoved(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DBusObjectRef, _ interface: DBusInterfaceRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DBusObjectRef, DBusInterfaceRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DBusObjectRef(raw: unownedSelf), DBusInterfaceRef(raw: arg1))
            return output
        }
        return connect(
            signal: .interfaceRemoved,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `interface-removed` signal for using the `connect(signal:)` methods
    static var interfaceRemovedSignal: DBusObjectSignalName { .interfaceRemoved }
    
    
}

// MARK: DBusObject Interface: DBusObjectProtocol extension (methods and fields)
public extension DBusObjectProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusObject` instance.
    @inlinable var dbus_object_ptr: UnsafeMutablePointer<GDBusObject>! { return ptr?.assumingMemoryBound(to: GDBusObject.self) }

    /// Gets the D-Bus interface with name `interface_name` associated with
    /// `object`, if any.
    @inlinable func getInterface(interfaceName: UnsafePointer<gchar>!) -> DBusInterfaceRef! {
        let rv = DBusInterfaceRef(gconstpointer: gconstpointer(g_dbus_object_get_interface(dbus_object_ptr, interfaceName)))
        return rv
    }

    /// Gets the D-Bus interfaces associated with `object`.
    @inlinable func getInterfaces() -> GLib.ListRef! {
        let rv = GLib.ListRef(g_dbus_object_get_interfaces(dbus_object_ptr))
        return rv
    }

    /// Gets the object path for `object`.
    @inlinable func getObjectPath() -> String! {
        let rv = g_dbus_object_get_object_path(dbus_object_ptr).map({ String(cString: $0) })
        return rv
    }
    /// Gets the D-Bus interfaces associated with `object`.
    @inlinable var interfaces: GLib.ListRef! {
        /// Gets the D-Bus interfaces associated with `object`.
        get {
            let rv = GLib.ListRef(g_dbus_object_get_interfaces(dbus_object_ptr))
            return rv
        }
    }

    /// Gets the object path for `object`.
    @inlinable var objectPath: String! {
        /// Gets the object path for `object`.
        get {
            let rv = g_dbus_object_get_object_path(dbus_object_ptr).map({ String(cString: $0) })
            return rv
        }
    }


}



// MARK: - DBusObjectManager Interface

/// The `GDBusObjectManager` type is the base type for service- and
/// client-side implementations of the standardized
/// [org.freedesktop.DBus.ObjectManager](http://dbus.freedesktop.org/doc/dbus-specification.html`standard-interfaces-objectmanager`)
/// interface.
/// 
/// See `GDBusObjectManagerClient` for the client-side implementation
/// and `GDBusObjectManagerServer` for the service-side implementation.
///
/// The `DBusObjectManagerProtocol` protocol exposes the methods and properties of an underlying `GDBusObjectManager` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusObjectManager`.
/// Alternatively, use `DBusObjectManagerRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DBusObjectManagerProtocol {
        /// Untyped pointer to the underlying `GDBusObjectManager` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusObjectManager` instance.
    var dbus_object_manager_ptr: UnsafeMutablePointer<GDBusObjectManager>! { get }

    /// Required Initialiser for types conforming to `DBusObjectManagerProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GDBusObjectManager` type is the base type for service- and
/// client-side implementations of the standardized
/// [org.freedesktop.DBus.ObjectManager](http://dbus.freedesktop.org/doc/dbus-specification.html`standard-interfaces-objectmanager`)
/// interface.
/// 
/// See `GDBusObjectManagerClient` for the client-side implementation
/// and `GDBusObjectManagerServer` for the service-side implementation.
///
/// The `DBusObjectManagerRef` type acts as a lightweight Swift reference to an underlying `GDBusObjectManager` instance.
/// It exposes methods that can operate on this data type through `DBusObjectManagerProtocol` conformance.
/// Use `DBusObjectManagerRef` only as an `unowned` reference to an existing `GDBusObjectManager` instance.
///
public struct DBusObjectManagerRef: DBusObjectManagerProtocol {
        /// Untyped pointer to the underlying `GDBusObjectManager` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_object_manager_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusObjectManagerRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusObjectManager>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusObjectManager>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusObjectManager>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusObjectManager>?) {
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

    /// Reference intialiser for a related type that implements `DBusObjectManagerProtocol`
    @inlinable init<T: DBusObjectManagerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GDBusObjectManager` type is the base type for service- and
/// client-side implementations of the standardized
/// [org.freedesktop.DBus.ObjectManager](http://dbus.freedesktop.org/doc/dbus-specification.html`standard-interfaces-objectmanager`)
/// interface.
/// 
/// See `GDBusObjectManagerClient` for the client-side implementation
/// and `GDBusObjectManagerServer` for the service-side implementation.
///
/// The `DBusObjectManager` type acts as an owner of an underlying `GDBusObjectManager` instance.
/// It provides the methods that can operate on this data type through `DBusObjectManagerProtocol` conformance.
/// Use `DBusObjectManager` as a strong reference or owner of a `GDBusObjectManager` instance.
///
open class DBusObjectManager: DBusObjectManagerProtocol {
        /// Untyped pointer to the underlying `GDBusObjectManager` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_object_manager_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObjectManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDBusObjectManager>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObjectManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDBusObjectManager>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObjectManager` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObjectManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObjectManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDBusObjectManager>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusObjectManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDBusObjectManager>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GDBusObjectManager` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `DBusObjectManager` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDBusObjectManager>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GDBusObjectManager, cannot ref(dbus_object_manager_ptr)
    }

    /// Reference intialiser for a related type that implements `DBusObjectManagerProtocol`
    /// `GDBusObjectManager` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `DBusObjectManagerProtocol`
    @inlinable public init<T: DBusObjectManagerProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GDBusObjectManager, cannot ref(dbus_object_manager_ptr)
    }

    /// Do-nothing destructor for `GDBusObjectManager`.
    deinit {
        // no reference counting for GDBusObjectManager, cannot unref(dbus_object_manager_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GDBusObjectManager, cannot ref(dbus_object_manager_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GDBusObjectManager, cannot ref(dbus_object_manager_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GDBusObjectManager, cannot ref(dbus_object_manager_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GDBusObjectManager, cannot ref(dbus_object_manager_ptr)
    }



}

// MARK: no DBusObjectManager properties

public enum DBusObjectManagerSignalName: String, SignalNameProtocol {
    /// Emitted when `interface` is added to `object`.
    /// 
    /// This signal exists purely as a convenience to avoid having to
    /// connect signals to all objects managed by `manager`.
    case interfaceAdded = "interface-added"
    /// Emitted when `interface` has been removed from `object`.
    /// 
    /// This signal exists purely as a convenience to avoid having to
    /// connect signals to all objects managed by `manager`.
    case interfaceRemoved = "interface-removed"
    /// Emitted when `object` is added to `manager`.
    case objectAdded = "object-added"
    /// Emitted when `object` is removed from `manager`.
    case objectRemoved = "object-removed"

}

// MARK: DBusObjectManager signals
public extension DBusObjectManagerProtocol {
    /// Connect a Swift signal handler to the given, typed `DBusObjectManagerSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: DBusObjectManagerSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        GLibObject.ObjectRef(raw: ptr).connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `DBusObjectManagerSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: DBusObjectManagerSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        GLibObject.ObjectRef(raw: ptr).connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted when `interface` is added to `object`.
    /// 
    /// This signal exists purely as a convenience to avoid having to
    /// connect signals to all objects managed by `manager`.
    /// - Note: This represents the underlying `interface-added` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter object: The `GDBusObject` on which an interface was added.
    /// - Parameter interface: The `GDBusInterface` that was added.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `interfaceAdded` signal is emitted
    @discardableResult @inlinable func onInterfaceAdded(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DBusObjectManagerRef, _ object: DBusObjectRef, _ interface: DBusInterfaceRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<DBusObjectManagerRef, DBusObjectRef, DBusInterfaceRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DBusObjectManagerRef(raw: unownedSelf), DBusObjectRef(raw: arg1), DBusInterfaceRef(raw: arg2))
            return output
        }
        return connect(
            signal: .interfaceAdded,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `interface-added` signal for using the `connect(signal:)` methods
    static var interfaceAddedSignal: DBusObjectManagerSignalName { .interfaceAdded }
    
    /// Emitted when `interface` has been removed from `object`.
    /// 
    /// This signal exists purely as a convenience to avoid having to
    /// connect signals to all objects managed by `manager`.
    /// - Note: This represents the underlying `interface-removed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter object: The `GDBusObject` on which an interface was removed.
    /// - Parameter interface: The `GDBusInterface` that was removed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `interfaceRemoved` signal is emitted
    @discardableResult @inlinable func onInterfaceRemoved(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DBusObjectManagerRef, _ object: DBusObjectRef, _ interface: DBusInterfaceRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<DBusObjectManagerRef, DBusObjectRef, DBusInterfaceRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DBusObjectManagerRef(raw: unownedSelf), DBusObjectRef(raw: arg1), DBusInterfaceRef(raw: arg2))
            return output
        }
        return connect(
            signal: .interfaceRemoved,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `interface-removed` signal for using the `connect(signal:)` methods
    static var interfaceRemovedSignal: DBusObjectManagerSignalName { .interfaceRemoved }
    
    /// Emitted when `object` is added to `manager`.
    /// - Note: This represents the underlying `object-added` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter object: The `GDBusObject` that was added.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `objectAdded` signal is emitted
    @discardableResult @inlinable func onObjectAdded(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DBusObjectManagerRef, _ object: DBusObjectRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DBusObjectManagerRef, DBusObjectRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DBusObjectManagerRef(raw: unownedSelf), DBusObjectRef(raw: arg1))
            return output
        }
        return connect(
            signal: .objectAdded,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `object-added` signal for using the `connect(signal:)` methods
    static var objectAddedSignal: DBusObjectManagerSignalName { .objectAdded }
    
    /// Emitted when `object` is removed from `manager`.
    /// - Note: This represents the underlying `object-removed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter object: The `GDBusObject` that was removed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `objectRemoved` signal is emitted
    @discardableResult @inlinable func onObjectRemoved(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DBusObjectManagerRef, _ object: DBusObjectRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DBusObjectManagerRef, DBusObjectRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DBusObjectManagerRef(raw: unownedSelf), DBusObjectRef(raw: arg1))
            return output
        }
        return connect(
            signal: .objectRemoved,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `object-removed` signal for using the `connect(signal:)` methods
    static var objectRemovedSignal: DBusObjectManagerSignalName { .objectRemoved }
    
    
}

// MARK: DBusObjectManager Interface: DBusObjectManagerProtocol extension (methods and fields)
public extension DBusObjectManagerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusObjectManager` instance.
    @inlinable var dbus_object_manager_ptr: UnsafeMutablePointer<GDBusObjectManager>! { return ptr?.assumingMemoryBound(to: GDBusObjectManager.self) }

    /// Gets the interface proxy for `interface_name` at `object_path`, if
    /// any.
    @inlinable func getInterface(objectPath: UnsafePointer<gchar>!, interfaceName: UnsafePointer<gchar>!) -> DBusInterfaceRef! {
        let rv = DBusInterfaceRef(gconstpointer: gconstpointer(g_dbus_object_manager_get_interface(dbus_object_manager_ptr, objectPath, interfaceName)))
        return rv
    }

    /// Gets the `GDBusObjectProxy` at `object_path`, if any.
    @inlinable func getObject(objectPath: UnsafePointer<gchar>!) -> DBusObjectRef! {
        let rv = DBusObjectRef(gconstpointer: gconstpointer(g_dbus_object_manager_get_object(dbus_object_manager_ptr, objectPath)))
        return rv
    }

    /// Gets the object path that `manager` is for.
    @inlinable func getObjectPath() -> String! {
        let rv = g_dbus_object_manager_get_object_path(dbus_object_manager_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets all `GDBusObject` objects known to `manager`.
    @inlinable func getObjects() -> GLib.ListRef! {
        let rv = GLib.ListRef(g_dbus_object_manager_get_objects(dbus_object_manager_ptr))
        return rv
    }
    /// Gets the object path that `manager` is for.
    @inlinable var objectPath: String! {
        /// Gets the object path that `manager` is for.
        get {
            let rv = g_dbus_object_manager_get_object_path(dbus_object_manager_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets all `GDBusObject` objects known to `manager`.
    @inlinable var objects: GLib.ListRef! {
        /// Gets all `GDBusObject` objects known to `manager`.
        get {
            let rv = GLib.ListRef(g_dbus_object_manager_get_objects(dbus_object_manager_ptr))
            return rv
        }
    }


}



// MARK: - DatagramBased Interface

/// A `GDatagramBased` is a networking interface for representing datagram-based
/// communications. It is a more or less direct mapping of the core parts of the
/// BSD socket API in a portable GObject interface. It is implemented by
/// `GSocket`, which wraps the UNIX socket API on UNIX and winsock2 on Windows.
/// 
/// `GDatagramBased` is entirely platform independent, and is intended to be used
/// alongside higher-level networking APIs such as `GIOStream`.
/// 
/// It uses vectored scatter/gather I/O by default, allowing for many messages
/// to be sent or received in a single call. Where possible, implementations of
/// the interface should take advantage of vectored I/O to minimise processing
/// or system calls. For example, `GSocket` uses `recvmmsg()` and `sendmmsg()` where
/// possible. Callers should take advantage of scatter/gather I/O (the use of
/// multiple buffers per message) to avoid unnecessary copying of data to
/// assemble or disassemble a message.
/// 
/// Each `GDatagramBased` operation has a timeout parameter which may be negative
/// for blocking behaviour, zero for non-blocking behaviour, or positive for
/// timeout behaviour. A blocking operation blocks until finished or there is an
/// error. A non-blocking operation will return immediately with a
/// `G_IO_ERROR_WOULD_BLOCK` error if it cannot make progress. A timeout operation
/// will block until the operation is complete or the timeout expires; if the
/// timeout expires it will return what progress it made, or
/// `G_IO_ERROR_TIMED_OUT` if no progress was made. To know when a call would
/// successfully run you can call `g_datagram_based_condition_check()` or
/// `g_datagram_based_condition_wait()`. You can also use
/// `g_datagram_based_create_source()` and attach it to a `GMainContext` to get
/// callbacks when I/O is possible.
/// 
/// When running a non-blocking operation applications should always be able to
/// handle getting a `G_IO_ERROR_WOULD_BLOCK` error even when some other function
/// said that I/O was possible. This can easily happen in case of a race
/// condition in the application, but it can also happen for other reasons. For
/// instance, on Windows a socket is always seen as writable until a write
/// returns `G_IO_ERROR_WOULD_BLOCK`.
/// 
/// As with `GSocket`, `GDatagramBaseds` can be either connection oriented (for
/// example, SCTP) or connectionless (for example, UDP). `GDatagramBaseds` must be
/// datagram-based, not stream-based. The interface does not cover connection
/// establishment — use methods on the underlying type to establish a connection
/// before sending and receiving data through the `GDatagramBased` API. For
/// connectionless socket types the target/source address is specified or
/// received in each I/O operation.
/// 
/// Like most other APIs in GLib, `GDatagramBased` is not inherently thread safe.
/// To use a `GDatagramBased` concurrently from multiple threads, you must
/// implement your own locking.
///
/// The `DatagramBasedProtocol` protocol exposes the methods and properties of an underlying `GDatagramBased` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DatagramBased`.
/// Alternatively, use `DatagramBasedRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DatagramBasedProtocol {
        /// Untyped pointer to the underlying `GDatagramBased` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDatagramBased` instance.
    var datagram_based_ptr: UnsafeMutablePointer<GDatagramBased>! { get }

    /// Required Initialiser for types conforming to `DatagramBasedProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GDatagramBased` is a networking interface for representing datagram-based
/// communications. It is a more or less direct mapping of the core parts of the
/// BSD socket API in a portable GObject interface. It is implemented by
/// `GSocket`, which wraps the UNIX socket API on UNIX and winsock2 on Windows.
/// 
/// `GDatagramBased` is entirely platform independent, and is intended to be used
/// alongside higher-level networking APIs such as `GIOStream`.
/// 
/// It uses vectored scatter/gather I/O by default, allowing for many messages
/// to be sent or received in a single call. Where possible, implementations of
/// the interface should take advantage of vectored I/O to minimise processing
/// or system calls. For example, `GSocket` uses `recvmmsg()` and `sendmmsg()` where
/// possible. Callers should take advantage of scatter/gather I/O (the use of
/// multiple buffers per message) to avoid unnecessary copying of data to
/// assemble or disassemble a message.
/// 
/// Each `GDatagramBased` operation has a timeout parameter which may be negative
/// for blocking behaviour, zero for non-blocking behaviour, or positive for
/// timeout behaviour. A blocking operation blocks until finished or there is an
/// error. A non-blocking operation will return immediately with a
/// `G_IO_ERROR_WOULD_BLOCK` error if it cannot make progress. A timeout operation
/// will block until the operation is complete or the timeout expires; if the
/// timeout expires it will return what progress it made, or
/// `G_IO_ERROR_TIMED_OUT` if no progress was made. To know when a call would
/// successfully run you can call `g_datagram_based_condition_check()` or
/// `g_datagram_based_condition_wait()`. You can also use
/// `g_datagram_based_create_source()` and attach it to a `GMainContext` to get
/// callbacks when I/O is possible.
/// 
/// When running a non-blocking operation applications should always be able to
/// handle getting a `G_IO_ERROR_WOULD_BLOCK` error even when some other function
/// said that I/O was possible. This can easily happen in case of a race
/// condition in the application, but it can also happen for other reasons. For
/// instance, on Windows a socket is always seen as writable until a write
/// returns `G_IO_ERROR_WOULD_BLOCK`.
/// 
/// As with `GSocket`, `GDatagramBaseds` can be either connection oriented (for
/// example, SCTP) or connectionless (for example, UDP). `GDatagramBaseds` must be
/// datagram-based, not stream-based. The interface does not cover connection
/// establishment — use methods on the underlying type to establish a connection
/// before sending and receiving data through the `GDatagramBased` API. For
/// connectionless socket types the target/source address is specified or
/// received in each I/O operation.
/// 
/// Like most other APIs in GLib, `GDatagramBased` is not inherently thread safe.
/// To use a `GDatagramBased` concurrently from multiple threads, you must
/// implement your own locking.
///
/// The `DatagramBasedRef` type acts as a lightweight Swift reference to an underlying `GDatagramBased` instance.
/// It exposes methods that can operate on this data type through `DatagramBasedProtocol` conformance.
/// Use `DatagramBasedRef` only as an `unowned` reference to an existing `GDatagramBased` instance.
///
public struct DatagramBasedRef: DatagramBasedProtocol {
        /// Untyped pointer to the underlying `GDatagramBased` instance.
    /// For type-safe access, use the generated, typed pointer `datagram_based_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DatagramBasedRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDatagramBased>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDatagramBased>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDatagramBased>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDatagramBased>?) {
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

    /// Reference intialiser for a related type that implements `DatagramBasedProtocol`
    @inlinable init<T: DatagramBasedProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GDatagramBased` is a networking interface for representing datagram-based
/// communications. It is a more or less direct mapping of the core parts of the
/// BSD socket API in a portable GObject interface. It is implemented by
/// `GSocket`, which wraps the UNIX socket API on UNIX and winsock2 on Windows.
/// 
/// `GDatagramBased` is entirely platform independent, and is intended to be used
/// alongside higher-level networking APIs such as `GIOStream`.
/// 
/// It uses vectored scatter/gather I/O by default, allowing for many messages
/// to be sent or received in a single call. Where possible, implementations of
/// the interface should take advantage of vectored I/O to minimise processing
/// or system calls. For example, `GSocket` uses `recvmmsg()` and `sendmmsg()` where
/// possible. Callers should take advantage of scatter/gather I/O (the use of
/// multiple buffers per message) to avoid unnecessary copying of data to
/// assemble or disassemble a message.
/// 
/// Each `GDatagramBased` operation has a timeout parameter which may be negative
/// for blocking behaviour, zero for non-blocking behaviour, or positive for
/// timeout behaviour. A blocking operation blocks until finished or there is an
/// error. A non-blocking operation will return immediately with a
/// `G_IO_ERROR_WOULD_BLOCK` error if it cannot make progress. A timeout operation
/// will block until the operation is complete or the timeout expires; if the
/// timeout expires it will return what progress it made, or
/// `G_IO_ERROR_TIMED_OUT` if no progress was made. To know when a call would
/// successfully run you can call `g_datagram_based_condition_check()` or
/// `g_datagram_based_condition_wait()`. You can also use
/// `g_datagram_based_create_source()` and attach it to a `GMainContext` to get
/// callbacks when I/O is possible.
/// 
/// When running a non-blocking operation applications should always be able to
/// handle getting a `G_IO_ERROR_WOULD_BLOCK` error even when some other function
/// said that I/O was possible. This can easily happen in case of a race
/// condition in the application, but it can also happen for other reasons. For
/// instance, on Windows a socket is always seen as writable until a write
/// returns `G_IO_ERROR_WOULD_BLOCK`.
/// 
/// As with `GSocket`, `GDatagramBaseds` can be either connection oriented (for
/// example, SCTP) or connectionless (for example, UDP). `GDatagramBaseds` must be
/// datagram-based, not stream-based. The interface does not cover connection
/// establishment — use methods on the underlying type to establish a connection
/// before sending and receiving data through the `GDatagramBased` API. For
/// connectionless socket types the target/source address is specified or
/// received in each I/O operation.
/// 
/// Like most other APIs in GLib, `GDatagramBased` is not inherently thread safe.
/// To use a `GDatagramBased` concurrently from multiple threads, you must
/// implement your own locking.
///
/// The `DatagramBased` type acts as an owner of an underlying `GDatagramBased` instance.
/// It provides the methods that can operate on this data type through `DatagramBasedProtocol` conformance.
/// Use `DatagramBased` as a strong reference or owner of a `GDatagramBased` instance.
///
open class DatagramBased: DatagramBasedProtocol {
        /// Untyped pointer to the underlying `GDatagramBased` instance.
    /// For type-safe access, use the generated, typed pointer `datagram_based_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DatagramBased` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDatagramBased>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DatagramBased` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDatagramBased>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DatagramBased` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DatagramBased` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DatagramBased` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDatagramBased>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DatagramBased` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDatagramBased>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GDatagramBased` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `DatagramBased` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDatagramBased>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GDatagramBased, cannot ref(datagram_based_ptr)
    }

    /// Reference intialiser for a related type that implements `DatagramBasedProtocol`
    /// `GDatagramBased` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `DatagramBasedProtocol`
    @inlinable public init<T: DatagramBasedProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GDatagramBased, cannot ref(datagram_based_ptr)
    }

    /// Do-nothing destructor for `GDatagramBased`.
    deinit {
        // no reference counting for GDatagramBased, cannot unref(datagram_based_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GDatagramBased, cannot ref(datagram_based_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GDatagramBased, cannot ref(datagram_based_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GDatagramBased, cannot ref(datagram_based_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GDatagramBased, cannot ref(datagram_based_ptr)
    }



}

// MARK: no DatagramBased properties

// MARK: no DatagramBased signals

// MARK: DatagramBased has no signals
// MARK: DatagramBased Interface: DatagramBasedProtocol extension (methods and fields)
public extension DatagramBasedProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDatagramBased` instance.
    @inlinable var datagram_based_ptr: UnsafeMutablePointer<GDatagramBased>! { return ptr?.assumingMemoryBound(to: GDatagramBased.self) }

    /// Checks on the readiness of `datagram_based` to perform operations. The
    /// operations specified in `condition` are checked for and masked against the
    /// currently-satisfied conditions on `datagram_based`. The result is returned.
    /// 
    /// `G_IO_IN` will be set in the return value if data is available to read with
    /// `g_datagram_based_receive_messages()`, or if the connection is closed remotely
    /// (EOS); and if the datagram_based has not been closed locally using some
    /// implementation-specific method (such as `g_socket_close()` or
    /// `g_socket_shutdown()` with `shutdown_read` set, if it’s a `GSocket`).
    /// 
    /// If the connection is shut down or closed (by calling `g_socket_close()` or
    /// `g_socket_shutdown()` with `shutdown_read` set, if it’s a `GSocket`, for
    /// example), all calls to this function will return `G_IO_ERROR_CLOSED`.
    /// 
    /// `G_IO_OUT` will be set if it is expected that at least one byte can be sent
    /// using `g_datagram_based_send_messages()` without blocking. It will not be set
    /// if the datagram_based has been closed locally.
    /// 
    /// `G_IO_HUP` will be set if the connection has been closed locally.
    /// 
    /// `G_IO_ERR` will be set if there was an asynchronous error in transmitting data
    /// previously enqueued using `g_datagram_based_send_messages()`.
    /// 
    /// Note that on Windows, it is possible for an operation to return
    /// `G_IO_ERROR_WOULD_BLOCK` even immediately after
    /// `g_datagram_based_condition_check()` has claimed that the `GDatagramBased` is
    /// ready for writing. Rather than calling `g_datagram_based_condition_check()` and
    /// then writing to the `GDatagramBased` if it succeeds, it is generally better to
    /// simply try writing right away, and try again later if the initial attempt
    /// returns `G_IO_ERROR_WOULD_BLOCK`.
    /// 
    /// It is meaningless to specify `G_IO_ERR` or `G_IO_HUP` in `condition`; these
    /// conditions will always be set in the output if they are true. Apart from
    /// these flags, the output is guaranteed to be masked by `condition`.
    /// 
    /// This call never blocks.
    @inlinable func conditionCheck(condition: GLib.IOCondition) -> GLib.IOCondition {
        let rv = GLib.IOCondition(g_datagram_based_condition_check(datagram_based_ptr, condition.value))
        return rv
    }

    /// Waits for up to `timeout` microseconds for condition to become true on
    /// `datagram_based`. If the condition is met, `true` is returned.
    /// 
    /// If `cancellable` is cancelled before the condition is met, or if `timeout` is
    /// reached before the condition is met, then `false` is returned and `error` is
    /// set appropriately (`G_IO_ERROR_CANCELLED` or `G_IO_ERROR_TIMED_OUT`).
    @inlinable func conditionWait(condition: GLib.IOCondition, timeout: gint64, cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_datagram_based_condition_wait(datagram_based_ptr, condition.value, timeout, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Waits for up to `timeout` microseconds for condition to become true on
    /// `datagram_based`. If the condition is met, `true` is returned.
    /// 
    /// If `cancellable` is cancelled before the condition is met, or if `timeout` is
    /// reached before the condition is met, then `false` is returned and `error` is
    /// set appropriately (`G_IO_ERROR_CANCELLED` or `G_IO_ERROR_TIMED_OUT`).
    @inlinable func conditionWait<CancellableT: CancellableProtocol>(condition: GLib.IOCondition, timeout: gint64, cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_datagram_based_condition_wait(datagram_based_ptr, condition.value, timeout, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Creates a `GSource` that can be attached to a `GMainContext` to monitor for
    /// the availability of the specified `condition` on the `GDatagramBased`. The
    /// `GSource` keeps a reference to the `datagram_based`.
    /// 
    /// The callback on the source is of the `GDatagramBasedSourceFunc` type.
    /// 
    /// It is meaningless to specify `G_IO_ERR` or `G_IO_HUP` in `condition`; these
    /// conditions will always be reported in the callback if they are true.
    /// 
    /// If non-`nil`, `cancellable` can be used to cancel the source, which will
    /// cause the source to trigger, reporting the current condition (which is
    /// likely 0 unless cancellation happened at the same time as a condition
    /// change). You can check for this in the callback using
    /// `g_cancellable_is_cancelled()`.
    @inlinable func createSource(condition: GLib.IOCondition, cancellable: CancellableRef? = nil) -> GLib.SourceRef! {
        let rv = GLib.SourceRef(g_datagram_based_create_source(datagram_based_ptr, condition.value, cancellable?.cancellable_ptr))
        return rv
    }
    /// Creates a `GSource` that can be attached to a `GMainContext` to monitor for
    /// the availability of the specified `condition` on the `GDatagramBased`. The
    /// `GSource` keeps a reference to the `datagram_based`.
    /// 
    /// The callback on the source is of the `GDatagramBasedSourceFunc` type.
    /// 
    /// It is meaningless to specify `G_IO_ERR` or `G_IO_HUP` in `condition`; these
    /// conditions will always be reported in the callback if they are true.
    /// 
    /// If non-`nil`, `cancellable` can be used to cancel the source, which will
    /// cause the source to trigger, reporting the current condition (which is
    /// likely 0 unless cancellation happened at the same time as a condition
    /// change). You can check for this in the callback using
    /// `g_cancellable_is_cancelled()`.
    @inlinable func createSource<CancellableT: CancellableProtocol>(condition: GLib.IOCondition, cancellable: CancellableT?) -> GLib.SourceRef! {
        let rv = GLib.SourceRef(g_datagram_based_create_source(datagram_based_ptr, condition.value, cancellable?.cancellable_ptr))
        return rv
    }

    /// Receive one or more data messages from `datagram_based` in one go.
    /// 
    /// `messages` must point to an array of `GInputMessage` structs and
    /// `num_messages` must be the length of this array. Each `GInputMessage`
    /// contains a pointer to an array of `GInputVector` structs describing the
    /// buffers that the data received in each message will be written to.
    /// 
    /// `flags` modify how all messages are received. The commonly available
    /// arguments for this are available in the `GSocketMsgFlags` enum, but the
    /// values there are the same as the system values, and the flags
    /// are passed in as-is, so you can pass in system-specific flags too. These
    /// flags affect the overall receive operation. Flags affecting individual
    /// messages are returned in `GInputMessage.flags`.
    /// 
    /// The other members of `GInputMessage` are treated as described in its
    /// documentation.
    /// 
    /// If `timeout` is negative the call will block until `num_messages` have been
    /// received, the connection is closed remotely (EOS), `cancellable` is cancelled,
    /// or an error occurs.
    /// 
    /// If `timeout` is 0 the call will return up to `num_messages` without blocking,
    /// or `G_IO_ERROR_WOULD_BLOCK` if no messages are queued in the operating system
    /// to be received.
    /// 
    /// If `timeout` is positive the call will block on the same conditions as if
    /// `timeout` were negative. If the timeout is reached
    /// before any messages are received, `G_IO_ERROR_TIMED_OUT` is returned,
    /// otherwise it will return the number of messages received before timing out.
    /// (Note: This is effectively the behaviour of `MSG_WAITFORONE` with
    /// `recvmmsg()`.)
    /// 
    /// To be notified when messages are available, wait for the `G_IO_IN` condition.
    /// Note though that you may still receive `G_IO_ERROR_WOULD_BLOCK` from
    /// `g_datagram_based_receive_messages()` even if you were previously notified of a
    /// `G_IO_IN` condition.
    /// 
    /// If the remote peer closes the connection, any messages queued in the
    /// underlying receive buffer will be returned, and subsequent calls to
    /// `g_datagram_based_receive_messages()` will return 0 (with no error set).
    /// 
    /// If the connection is shut down or closed (by calling `g_socket_close()` or
    /// `g_socket_shutdown()` with `shutdown_read` set, if it’s a `GSocket`, for
    /// example), all calls to this function will return `G_IO_ERROR_CLOSED`.
    /// 
    /// On error -1 is returned and `error` is set accordingly. An error will only
    /// be returned if zero messages could be received; otherwise the number of
    /// messages successfully received before the error will be returned. If
    /// `cancellable` is cancelled, `G_IO_ERROR_CANCELLED` is returned as with any
    /// other error.
    @inlinable func receive(messages: UnsafeMutablePointer<GInputMessage>!, numMessages: Int, flags: Int, timeout: gint64, cancellable: CancellableRef? = nil) throws -> Int {
        var error: UnsafeMutablePointer<GError>?
        let rv = Int(g_datagram_based_receive_messages(datagram_based_ptr, messages, guint(numMessages), gint(flags), timeout, cancellable?.cancellable_ptr, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Receive one or more data messages from `datagram_based` in one go.
    /// 
    /// `messages` must point to an array of `GInputMessage` structs and
    /// `num_messages` must be the length of this array. Each `GInputMessage`
    /// contains a pointer to an array of `GInputVector` structs describing the
    /// buffers that the data received in each message will be written to.
    /// 
    /// `flags` modify how all messages are received. The commonly available
    /// arguments for this are available in the `GSocketMsgFlags` enum, but the
    /// values there are the same as the system values, and the flags
    /// are passed in as-is, so you can pass in system-specific flags too. These
    /// flags affect the overall receive operation. Flags affecting individual
    /// messages are returned in `GInputMessage.flags`.
    /// 
    /// The other members of `GInputMessage` are treated as described in its
    /// documentation.
    /// 
    /// If `timeout` is negative the call will block until `num_messages` have been
    /// received, the connection is closed remotely (EOS), `cancellable` is cancelled,
    /// or an error occurs.
    /// 
    /// If `timeout` is 0 the call will return up to `num_messages` without blocking,
    /// or `G_IO_ERROR_WOULD_BLOCK` if no messages are queued in the operating system
    /// to be received.
    /// 
    /// If `timeout` is positive the call will block on the same conditions as if
    /// `timeout` were negative. If the timeout is reached
    /// before any messages are received, `G_IO_ERROR_TIMED_OUT` is returned,
    /// otherwise it will return the number of messages received before timing out.
    /// (Note: This is effectively the behaviour of `MSG_WAITFORONE` with
    /// `recvmmsg()`.)
    /// 
    /// To be notified when messages are available, wait for the `G_IO_IN` condition.
    /// Note though that you may still receive `G_IO_ERROR_WOULD_BLOCK` from
    /// `g_datagram_based_receive_messages()` even if you were previously notified of a
    /// `G_IO_IN` condition.
    /// 
    /// If the remote peer closes the connection, any messages queued in the
    /// underlying receive buffer will be returned, and subsequent calls to
    /// `g_datagram_based_receive_messages()` will return 0 (with no error set).
    /// 
    /// If the connection is shut down or closed (by calling `g_socket_close()` or
    /// `g_socket_shutdown()` with `shutdown_read` set, if it’s a `GSocket`, for
    /// example), all calls to this function will return `G_IO_ERROR_CLOSED`.
    /// 
    /// On error -1 is returned and `error` is set accordingly. An error will only
    /// be returned if zero messages could be received; otherwise the number of
    /// messages successfully received before the error will be returned. If
    /// `cancellable` is cancelled, `G_IO_ERROR_CANCELLED` is returned as with any
    /// other error.
    @inlinable func receive<CancellableT: CancellableProtocol>(messages: UnsafeMutablePointer<GInputMessage>!, numMessages: Int, flags: Int, timeout: gint64, cancellable: CancellableT?) throws -> Int {
        var error: UnsafeMutablePointer<GError>?
        let rv = Int(g_datagram_based_receive_messages(datagram_based_ptr, messages, guint(numMessages), gint(flags), timeout, cancellable?.cancellable_ptr, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Send one or more data messages from `datagram_based` in one go.
    /// 
    /// `messages` must point to an array of `GOutputMessage` structs and
    /// `num_messages` must be the length of this array. Each `GOutputMessage`
    /// contains an address to send the data to, and a pointer to an array of
    /// `GOutputVector` structs to describe the buffers that the data to be sent
    /// for each message will be gathered from.
    /// 
    /// `flags` modify how the message is sent. The commonly available arguments
    /// for this are available in the `GSocketMsgFlags` enum, but the
    /// values there are the same as the system values, and the flags
    /// are passed in as-is, so you can pass in system-specific flags too.
    /// 
    /// The other members of `GOutputMessage` are treated as described in its
    /// documentation.
    /// 
    /// If `timeout` is negative the call will block until `num_messages` have been
    /// sent, `cancellable` is cancelled, or an error occurs.
    /// 
    /// If `timeout` is 0 the call will send up to `num_messages` without blocking,
    /// or will return `G_IO_ERROR_WOULD_BLOCK` if there is no space to send messages.
    /// 
    /// If `timeout` is positive the call will block on the same conditions as if
    /// `timeout` were negative. If the timeout is reached before any messages are
    /// sent, `G_IO_ERROR_TIMED_OUT` is returned, otherwise it will return the number
    /// of messages sent before timing out.
    /// 
    /// To be notified when messages can be sent, wait for the `G_IO_OUT` condition.
    /// Note though that you may still receive `G_IO_ERROR_WOULD_BLOCK` from
    /// `g_datagram_based_send_messages()` even if you were previously notified of a
    /// `G_IO_OUT` condition. (On Windows in particular, this is very common due to
    /// the way the underlying APIs work.)
    /// 
    /// If the connection is shut down or closed (by calling `g_socket_close()` or
    /// `g_socket_shutdown()` with `shutdown_write` set, if it’s a `GSocket`, for
    /// example), all calls to this function will return `G_IO_ERROR_CLOSED`.
    /// 
    /// On error -1 is returned and `error` is set accordingly. An error will only
    /// be returned if zero messages could be sent; otherwise the number of messages
    /// successfully sent before the error will be returned. If `cancellable` is
    /// cancelled, `G_IO_ERROR_CANCELLED` is returned as with any other error.
    @inlinable func send(messages: UnsafeMutablePointer<GOutputMessage>!, numMessages: Int, flags: Int, timeout: gint64, cancellable: CancellableRef? = nil) throws -> Int {
        var error: UnsafeMutablePointer<GError>?
        let rv = Int(g_datagram_based_send_messages(datagram_based_ptr, messages, guint(numMessages), gint(flags), timeout, cancellable?.cancellable_ptr, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Send one or more data messages from `datagram_based` in one go.
    /// 
    /// `messages` must point to an array of `GOutputMessage` structs and
    /// `num_messages` must be the length of this array. Each `GOutputMessage`
    /// contains an address to send the data to, and a pointer to an array of
    /// `GOutputVector` structs to describe the buffers that the data to be sent
    /// for each message will be gathered from.
    /// 
    /// `flags` modify how the message is sent. The commonly available arguments
    /// for this are available in the `GSocketMsgFlags` enum, but the
    /// values there are the same as the system values, and the flags
    /// are passed in as-is, so you can pass in system-specific flags too.
    /// 
    /// The other members of `GOutputMessage` are treated as described in its
    /// documentation.
    /// 
    /// If `timeout` is negative the call will block until `num_messages` have been
    /// sent, `cancellable` is cancelled, or an error occurs.
    /// 
    /// If `timeout` is 0 the call will send up to `num_messages` without blocking,
    /// or will return `G_IO_ERROR_WOULD_BLOCK` if there is no space to send messages.
    /// 
    /// If `timeout` is positive the call will block on the same conditions as if
    /// `timeout` were negative. If the timeout is reached before any messages are
    /// sent, `G_IO_ERROR_TIMED_OUT` is returned, otherwise it will return the number
    /// of messages sent before timing out.
    /// 
    /// To be notified when messages can be sent, wait for the `G_IO_OUT` condition.
    /// Note though that you may still receive `G_IO_ERROR_WOULD_BLOCK` from
    /// `g_datagram_based_send_messages()` even if you were previously notified of a
    /// `G_IO_OUT` condition. (On Windows in particular, this is very common due to
    /// the way the underlying APIs work.)
    /// 
    /// If the connection is shut down or closed (by calling `g_socket_close()` or
    /// `g_socket_shutdown()` with `shutdown_write` set, if it’s a `GSocket`, for
    /// example), all calls to this function will return `G_IO_ERROR_CLOSED`.
    /// 
    /// On error -1 is returned and `error` is set accordingly. An error will only
    /// be returned if zero messages could be sent; otherwise the number of messages
    /// successfully sent before the error will be returned. If `cancellable` is
    /// cancelled, `G_IO_ERROR_CANCELLED` is returned as with any other error.
    @inlinable func send<CancellableT: CancellableProtocol>(messages: UnsafeMutablePointer<GOutputMessage>!, numMessages: Int, flags: Int, timeout: gint64, cancellable: CancellableT?) throws -> Int {
        var error: UnsafeMutablePointer<GError>?
        let rv = Int(g_datagram_based_send_messages(datagram_based_ptr, messages, guint(numMessages), gint(flags), timeout, cancellable?.cancellable_ptr, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Creates a new `GDtlsClientConnection` wrapping `base_socket` which is
    /// assumed to communicate with the server identified by `server_identity`.
    @inlinable func dtlsClientConnectionNew(serverIdentity: SocketConnectableRef? = nil) throws -> DtlsClientConnectionRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = DtlsClientConnectionRef(gconstpointer: gconstpointer(g_dtls_client_connection_new(datagram_based_ptr, serverIdentity?.socket_connectable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Creates a new `GDtlsClientConnection` wrapping `base_socket` which is
    /// assumed to communicate with the server identified by `server_identity`.
    @inlinable func dtlsClientConnectionNew<SocketConnectableT: SocketConnectableProtocol>(serverIdentity: SocketConnectableT?) throws -> DtlsClientConnectionRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = DtlsClientConnectionRef(gconstpointer: gconstpointer(g_dtls_client_connection_new(datagram_based_ptr, serverIdentity?.socket_connectable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Creates a new `GDtlsServerConnection` wrapping `base_socket`.
    @inlinable func dtlsServerConnectionNew(certificate: TLSCertificateRef? = nil) throws -> DtlsServerConnectionRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = DtlsServerConnectionRef(gconstpointer: gconstpointer(g_dtls_server_connection_new(datagram_based_ptr, certificate?.tls_certificate_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Creates a new `GDtlsServerConnection` wrapping `base_socket`.
    @inlinable func dtlsServerConnectionNew<TLSCertificateT: TLSCertificateProtocol>(certificate: TLSCertificateT?) throws -> DtlsServerConnectionRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = DtlsServerConnectionRef(gconstpointer: gconstpointer(g_dtls_server_connection_new(datagram_based_ptr, certificate?.tls_certificate_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }


}



// MARK: - Drive Interface

/// `GDrive` - this represent a piece of hardware connected to the machine.
/// It's generally only created for removable hardware or hardware with
/// removable media.
/// 
/// `GDrive` is a container class for `GVolume` objects that stem from
/// the same piece of media. As such, `GDrive` abstracts a drive with
/// (or without) removable media and provides operations for querying
/// whether media is available, determining whether media change is
/// automatically detected and ejecting the media.
/// 
/// If the `GDrive` reports that media isn't automatically detected, one
/// can poll for media; typically one should not do this periodically
/// as a poll for media operation is potentially expensive and may
/// spin up the drive creating noise.
/// 
/// `GDrive` supports starting and stopping drives with authentication
/// support for the former. This can be used to support a diverse set
/// of use cases including connecting/disconnecting iSCSI devices,
/// powering down external disk enclosures and starting/stopping
/// multi-disk devices such as RAID devices. Note that the actual
/// semantics and side-effects of starting/stopping a `GDrive` may vary
/// according to implementation. To choose the correct verbs in e.g. a
/// file manager, use `g_drive_get_start_stop_type()`.
/// 
/// For porting from GnomeVFS note that there is no equivalent of
/// `GDrive` in that API.
///
/// The `DriveProtocol` protocol exposes the methods and properties of an underlying `GDrive` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Drive`.
/// Alternatively, use `DriveRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DriveProtocol {
        /// Untyped pointer to the underlying `GDrive` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDrive` instance.
    var drive_ptr: UnsafeMutablePointer<GDrive>! { get }

    /// Required Initialiser for types conforming to `DriveProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GDrive` - this represent a piece of hardware connected to the machine.
/// It's generally only created for removable hardware or hardware with
/// removable media.
/// 
/// `GDrive` is a container class for `GVolume` objects that stem from
/// the same piece of media. As such, `GDrive` abstracts a drive with
/// (or without) removable media and provides operations for querying
/// whether media is available, determining whether media change is
/// automatically detected and ejecting the media.
/// 
/// If the `GDrive` reports that media isn't automatically detected, one
/// can poll for media; typically one should not do this periodically
/// as a poll for media operation is potentially expensive and may
/// spin up the drive creating noise.
/// 
/// `GDrive` supports starting and stopping drives with authentication
/// support for the former. This can be used to support a diverse set
/// of use cases including connecting/disconnecting iSCSI devices,
/// powering down external disk enclosures and starting/stopping
/// multi-disk devices such as RAID devices. Note that the actual
/// semantics and side-effects of starting/stopping a `GDrive` may vary
/// according to implementation. To choose the correct verbs in e.g. a
/// file manager, use `g_drive_get_start_stop_type()`.
/// 
/// For porting from GnomeVFS note that there is no equivalent of
/// `GDrive` in that API.
///
/// The `DriveRef` type acts as a lightweight Swift reference to an underlying `GDrive` instance.
/// It exposes methods that can operate on this data type through `DriveProtocol` conformance.
/// Use `DriveRef` only as an `unowned` reference to an existing `GDrive` instance.
///
public struct DriveRef: DriveProtocol {
        /// Untyped pointer to the underlying `GDrive` instance.
    /// For type-safe access, use the generated, typed pointer `drive_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DriveRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDrive>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDrive>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDrive>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDrive>?) {
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

    /// Reference intialiser for a related type that implements `DriveProtocol`
    @inlinable init<T: DriveProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// `GDrive` - this represent a piece of hardware connected to the machine.
/// It's generally only created for removable hardware or hardware with
/// removable media.
/// 
/// `GDrive` is a container class for `GVolume` objects that stem from
/// the same piece of media. As such, `GDrive` abstracts a drive with
/// (or without) removable media and provides operations for querying
/// whether media is available, determining whether media change is
/// automatically detected and ejecting the media.
/// 
/// If the `GDrive` reports that media isn't automatically detected, one
/// can poll for media; typically one should not do this periodically
/// as a poll for media operation is potentially expensive and may
/// spin up the drive creating noise.
/// 
/// `GDrive` supports starting and stopping drives with authentication
/// support for the former. This can be used to support a diverse set
/// of use cases including connecting/disconnecting iSCSI devices,
/// powering down external disk enclosures and starting/stopping
/// multi-disk devices such as RAID devices. Note that the actual
/// semantics and side-effects of starting/stopping a `GDrive` may vary
/// according to implementation. To choose the correct verbs in e.g. a
/// file manager, use `g_drive_get_start_stop_type()`.
/// 
/// For porting from GnomeVFS note that there is no equivalent of
/// `GDrive` in that API.
///
/// The `Drive` type acts as an owner of an underlying `GDrive` instance.
/// It provides the methods that can operate on this data type through `DriveProtocol` conformance.
/// Use `Drive` as a strong reference or owner of a `GDrive` instance.
///
open class Drive: DriveProtocol {
        /// Untyped pointer to the underlying `GDrive` instance.
    /// For type-safe access, use the generated, typed pointer `drive_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Drive` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDrive>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Drive` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDrive>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Drive` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Drive` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Drive` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDrive>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Drive` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDrive>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GDrive` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Drive` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDrive>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GDrive, cannot ref(drive_ptr)
    }

    /// Reference intialiser for a related type that implements `DriveProtocol`
    /// `GDrive` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `DriveProtocol`
    @inlinable public init<T: DriveProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GDrive, cannot ref(drive_ptr)
    }

    /// Do-nothing destructor for `GDrive`.
    deinit {
        // no reference counting for GDrive, cannot unref(drive_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GDrive, cannot ref(drive_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GDrive, cannot ref(drive_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GDrive, cannot ref(drive_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GDrive, cannot ref(drive_ptr)
    }



}

// MARK: no Drive properties

public enum DriveSignalName: String, SignalNameProtocol {
    /// Emitted when the drive's state has changed.
    case changed = "changed"
    /// This signal is emitted when the `GDrive` have been
    /// disconnected. If the recipient is holding references to the
    /// object they should release them so the object can be
    /// finalized.
    case disconnected = "disconnected"
    /// Emitted when the physical eject button (if any) of a drive has
    /// been pressed.
    case ejectButton = "eject-button"
    /// Emitted when the physical stop button (if any) of a drive has
    /// been pressed.
    case stopButton = "stop-button"

}

// MARK: Drive signals
public extension DriveProtocol {
    /// Connect a Swift signal handler to the given, typed `DriveSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: DriveSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        GLibObject.ObjectRef(raw: ptr).connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `DriveSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: DriveSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        GLibObject.ObjectRef(raw: ptr).connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted when the drive's state has changed.
    /// - Note: This represents the underlying `changed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `changed` signal is emitted
    @discardableResult @inlinable func onChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DriveRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<DriveRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DriveRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .changed,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `changed` signal for using the `connect(signal:)` methods
    static var changedSignal: DriveSignalName { .changed }
    
    /// This signal is emitted when the `GDrive` have been
    /// disconnected. If the recipient is holding references to the
    /// object they should release them so the object can be
    /// finalized.
    /// - Note: This represents the underlying `disconnected` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `disconnected` signal is emitted
    @discardableResult @inlinable func onDisconnected(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DriveRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<DriveRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DriveRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .disconnected,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `disconnected` signal for using the `connect(signal:)` methods
    static var disconnectedSignal: DriveSignalName { .disconnected }
    
    /// Emitted when the physical eject button (if any) of a drive has
    /// been pressed.
    /// - Note: This represents the underlying `eject-button` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `ejectButton` signal is emitted
    @discardableResult @inlinable func onEjectButton(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DriveRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<DriveRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DriveRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .ejectButton,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `eject-button` signal for using the `connect(signal:)` methods
    static var ejectButtonSignal: DriveSignalName { .ejectButton }
    
    /// Emitted when the physical stop button (if any) of a drive has
    /// been pressed.
    /// - Note: This represents the underlying `stop-button` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `stopButton` signal is emitted
    @discardableResult @inlinable func onStopButton(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DriveRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<DriveRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DriveRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .stopButton,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `stop-button` signal for using the `connect(signal:)` methods
    static var stopButtonSignal: DriveSignalName { .stopButton }
    
    
}

// MARK: Drive Interface: DriveProtocol extension (methods and fields)
public extension DriveProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDrive` instance.
    @inlinable var drive_ptr: UnsafeMutablePointer<GDrive>! { return ptr?.assumingMemoryBound(to: GDrive.self) }

    /// Checks if a drive can be ejected.
    @inlinable func canEject() -> Bool {
        let rv = ((g_drive_can_eject(drive_ptr)) != 0)
        return rv
    }

    /// Checks if a drive can be polled for media changes.
    @inlinable func canPollForMedia() -> Bool {
        let rv = ((g_drive_can_poll_for_media(drive_ptr)) != 0)
        return rv
    }

    /// Checks if a drive can be started.
    @inlinable func canStart() -> Bool {
        let rv = ((g_drive_can_start(drive_ptr)) != 0)
        return rv
    }

    /// Checks if a drive can be started degraded.
    @inlinable func canStartDegraded() -> Bool {
        let rv = ((g_drive_can_start_degraded(drive_ptr)) != 0)
        return rv
    }

    /// Checks if a drive can be stopped.
    @inlinable func canStop() -> Bool {
        let rv = ((g_drive_can_stop(drive_ptr)) != 0)
        return rv
    }

    /// Asynchronously ejects a drive.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_drive_eject_finish()` to obtain the
    /// result of the operation.
    ///
    /// **eject is deprecated:**
    /// Use g_drive_eject_with_operation() instead.
    @available(*, deprecated) @inlinable func eject(flags: MountUnmountFlags, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_drive_eject(drive_ptr, flags.value, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously ejects a drive.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_drive_eject_finish()` to obtain the
    /// result of the operation.
    ///
    /// **eject is deprecated:**
    /// Use g_drive_eject_with_operation() instead.
    @available(*, deprecated) @inlinable func eject<CancellableT: CancellableProtocol>(flags: MountUnmountFlags, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_drive_eject(drive_ptr, flags.value, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes ejecting a drive.
    ///
    /// **eject_finish is deprecated:**
    /// Use g_drive_eject_with_operation_finish() instead.
    @available(*, deprecated) @inlinable func ejectFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_drive_eject_finish(drive_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Ejects a drive. This is an asynchronous operation, and is
    /// finished by calling `g_drive_eject_with_operation_finish()` with the `drive`
    /// and `GAsyncResult` data returned in the `callback`.
    @inlinable func ejectWithOperation(flags: MountUnmountFlags, mountOperation: MountOperationRef? = nil, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_drive_eject_with_operation(drive_ptr, flags.value, mountOperation?.mount_operation_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Ejects a drive. This is an asynchronous operation, and is
    /// finished by calling `g_drive_eject_with_operation_finish()` with the `drive`
    /// and `GAsyncResult` data returned in the `callback`.
    @inlinable func ejectWithOperation<CancellableT: CancellableProtocol, MountOperationT: MountOperationProtocol>(flags: MountUnmountFlags, mountOperation: MountOperationT?, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_drive_eject_with_operation(drive_ptr, flags.value, mountOperation?.mount_operation_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes ejecting a drive. If any errors occurred during the operation,
    /// `error` will be set to contain the errors and `false` will be returned.
    @inlinable func ejectWithOperationFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_drive_eject_with_operation_finish(drive_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Gets the kinds of identifiers that `drive` has.
    /// Use `g_drive_get_identifier()` to obtain the identifiers
    /// themselves.
    @inlinable func enumerateIdentifiers() -> UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>! {
        let rv = g_drive_enumerate_identifiers(drive_ptr)
        return rv
    }

    /// Gets the icon for `drive`.
    @inlinable func getIcon() -> IconRef! {
        let rv = IconRef(gconstpointer: gconstpointer(g_drive_get_icon(drive_ptr)))
        return rv
    }

    /// Gets the identifier of the given kind for `drive`. The only
    /// identifier currently available is
    /// `G_DRIVE_IDENTIFIER_KIND_UNIX_DEVICE`.
    @inlinable func getIdentifier(kind: UnsafePointer<CChar>!) -> String! {
        let rv = g_drive_get_identifier(drive_ptr, kind).map({ String(cString: $0) })
        return rv
    }

    /// Gets the name of `drive`.
    @inlinable func getName() -> String! {
        let rv = g_drive_get_name(drive_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the sort key for `drive`, if any.
    @inlinable func getSortKey() -> String! {
        let rv = g_drive_get_sort_key(drive_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets a hint about how a drive can be started/stopped.
    @inlinable func getStartStopType() -> GDriveStartStopType {
        let rv = g_drive_get_start_stop_type(drive_ptr)
        return rv
    }

    /// Gets the icon for `drive`.
    @inlinable func getSymbolicIcon() -> IconRef! {
        let rv = IconRef(gconstpointer: gconstpointer(g_drive_get_symbolic_icon(drive_ptr)))
        return rv
    }

    /// Get a list of mountable volumes for `drive`.
    /// 
    /// The returned list should be freed with `g_list_free()`, after
    /// its elements have been unreffed with `g_object_unref()`.
    @inlinable func getVolumes() -> GLib.ListRef! {
        let rv = GLib.ListRef(g_drive_get_volumes(drive_ptr))
        return rv
    }

    /// Checks if the `drive` has media. Note that the OS may not be polling
    /// the drive for media changes; see `g_drive_is_media_check_automatic()`
    /// for more details.
    @inlinable func hasMedia() -> Bool {
        let rv = ((g_drive_has_media(drive_ptr)) != 0)
        return rv
    }

    /// Check if `drive` has any mountable volumes.
    @inlinable func hasVolumes() -> Bool {
        let rv = ((g_drive_has_volumes(drive_ptr)) != 0)
        return rv
    }

    /// Asynchronously polls `drive` to see if media has been inserted or removed.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_drive_poll_for_media_finish()` to obtain the
    /// result of the operation.
    @inlinable func pollForMedia(cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_drive_poll_for_media(drive_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously polls `drive` to see if media has been inserted or removed.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_drive_poll_for_media_finish()` to obtain the
    /// result of the operation.
    @inlinable func pollForMedia<CancellableT: CancellableProtocol>(cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_drive_poll_for_media(drive_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an operation started with `g_drive_poll_for_media()` on a drive.
    @inlinable func pollForMediaFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_drive_poll_for_media_finish(drive_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously starts a drive.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_drive_start_finish()` to obtain the
    /// result of the operation.
    @inlinable func start(flags: DriveStartFlags, mountOperation: MountOperationRef? = nil, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_drive_start(drive_ptr, flags.value, mountOperation?.mount_operation_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously starts a drive.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_drive_start_finish()` to obtain the
    /// result of the operation.
    @inlinable func start<CancellableT: CancellableProtocol, MountOperationT: MountOperationProtocol>(flags: DriveStartFlags, mountOperation: MountOperationT?, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_drive_start(drive_ptr, flags.value, mountOperation?.mount_operation_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes starting a drive.
    @inlinable func startFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_drive_start_finish(drive_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously stops a drive.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_drive_stop_finish()` to obtain the
    /// result of the operation.
    @inlinable func stop(flags: MountUnmountFlags, mountOperation: MountOperationRef? = nil, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_drive_stop(drive_ptr, flags.value, mountOperation?.mount_operation_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously stops a drive.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_drive_stop_finish()` to obtain the
    /// result of the operation.
    @inlinable func stop<CancellableT: CancellableProtocol, MountOperationT: MountOperationProtocol>(flags: MountUnmountFlags, mountOperation: MountOperationT?, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_drive_stop(drive_ptr, flags.value, mountOperation?.mount_operation_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes stopping a drive.
    @inlinable func stopFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_drive_stop_finish(drive_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Gets the icon for `drive`.
    @inlinable var icon: IconRef! {
        /// Gets the icon for `drive`.
        get {
            let rv = IconRef(gconstpointer: gconstpointer(g_drive_get_icon(drive_ptr)))
            return rv
        }
    }

    /// Checks if `drive` is capable of automatically detecting media changes.
    @inlinable var isMediaCheckAutomatic: Bool {
        /// Checks if `drive` is capable of automatically detecting media changes.
        get {
            let rv = ((g_drive_is_media_check_automatic(drive_ptr)) != 0)
            return rv
        }
    }

    /// Checks if the `drive` supports removable media.
    @inlinable var isMediaRemovable: Bool {
        /// Checks if the `drive` supports removable media.
        get {
            let rv = ((g_drive_is_media_removable(drive_ptr)) != 0)
            return rv
        }
    }

    /// Checks if the `GDrive` and/or its media is considered removable by the user.
    /// See `g_drive_is_media_removable()`.
    @inlinable var isRemovable: Bool {
        /// Checks if the `GDrive` and/or its media is considered removable by the user.
        /// See `g_drive_is_media_removable()`.
        get {
            let rv = ((g_drive_is_removable(drive_ptr)) != 0)
            return rv
        }
    }

    /// Gets the name of `drive`.
    @inlinable var name: String! {
        /// Gets the name of `drive`.
        get {
            let rv = g_drive_get_name(drive_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the sort key for `drive`, if any.
    @inlinable var sortKey: String! {
        /// Gets the sort key for `drive`, if any.
        get {
            let rv = g_drive_get_sort_key(drive_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets a hint about how a drive can be started/stopped.
    @inlinable var startStopType: GDriveStartStopType {
        /// Gets a hint about how a drive can be started/stopped.
        get {
            let rv = g_drive_get_start_stop_type(drive_ptr)
            return rv
        }
    }

    /// Gets the icon for `drive`.
    @inlinable var symbolicIcon: IconRef! {
        /// Gets the icon for `drive`.
        get {
            let rv = IconRef(gconstpointer: gconstpointer(g_drive_get_symbolic_icon(drive_ptr)))
            return rv
        }
    }

    /// Get a list of mountable volumes for `drive`.
    /// 
    /// The returned list should be freed with `g_list_free()`, after
    /// its elements have been unreffed with `g_object_unref()`.
    @inlinable var volumes: GLib.ListRef! {
        /// Get a list of mountable volumes for `drive`.
        /// 
        /// The returned list should be freed with `g_list_free()`, after
        /// its elements have been unreffed with `g_object_unref()`.
        get {
            let rv = GLib.ListRef(g_drive_get_volumes(drive_ptr))
            return rv
        }
    }


}



// MARK: - DtlsClientConnection Interface

/// `GDtlsClientConnection` is the client-side subclass of
/// `GDtlsConnection`, representing a client-side DTLS connection.
///
/// The `DtlsClientConnectionProtocol` protocol exposes the methods and properties of an underlying `GDtlsClientConnection` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DtlsClientConnection`.
/// Alternatively, use `DtlsClientConnectionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DtlsClientConnectionProtocol: DatagramBasedProtocol {
        /// Untyped pointer to the underlying `GDtlsClientConnection` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDtlsClientConnection` instance.
    var dtls_client_connection_ptr: UnsafeMutablePointer<GDtlsClientConnection>! { get }

    /// Required Initialiser for types conforming to `DtlsClientConnectionProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GDtlsClientConnection` is the client-side subclass of
/// `GDtlsConnection`, representing a client-side DTLS connection.
///
/// The `DtlsClientConnectionRef` type acts as a lightweight Swift reference to an underlying `GDtlsClientConnection` instance.
/// It exposes methods that can operate on this data type through `DtlsClientConnectionProtocol` conformance.
/// Use `DtlsClientConnectionRef` only as an `unowned` reference to an existing `GDtlsClientConnection` instance.
///
public struct DtlsClientConnectionRef: DtlsClientConnectionProtocol {
        /// Untyped pointer to the underlying `GDtlsClientConnection` instance.
    /// For type-safe access, use the generated, typed pointer `dtls_client_connection_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DtlsClientConnectionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDtlsClientConnection>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDtlsClientConnection>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDtlsClientConnection>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDtlsClientConnection>?) {
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

    /// Reference intialiser for a related type that implements `DtlsClientConnectionProtocol`
    @inlinable init<T: DtlsClientConnectionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// `GDtlsClientConnection` is the client-side subclass of
/// `GDtlsConnection`, representing a client-side DTLS connection.
///
/// The `DtlsClientConnection` type acts as an owner of an underlying `GDtlsClientConnection` instance.
/// It provides the methods that can operate on this data type through `DtlsClientConnectionProtocol` conformance.
/// Use `DtlsClientConnection` as a strong reference or owner of a `GDtlsClientConnection` instance.
///
open class DtlsClientConnection: DatagramBased, DtlsClientConnectionProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DtlsClientConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDtlsClientConnection>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DtlsClientConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDtlsClientConnection>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DtlsClientConnection` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DtlsClientConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DtlsClientConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDtlsClientConnection>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DtlsClientConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDtlsClientConnection>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GDtlsClientConnection` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `DtlsClientConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDtlsClientConnection>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DtlsClientConnectionProtocol`
    /// `GDtlsClientConnection` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `DtlsClientConnectionProtocol`
    @inlinable public init<T: DtlsClientConnectionProtocol>(dtlsClientConnection other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum DtlsClientConnectionPropertyName: String, PropertyNameProtocol {
    /// A list of the distinguished names of the Certificate Authorities
    /// that the server will accept client certificates signed by. If the
    /// server requests a client certificate during the handshake, then
    /// this property will be set after the handshake completes.
    /// 
    /// Each item in the list is a `GByteArray` which contains the complete
    /// subject DN of the certificate authority.
    case acceptedCas = "accepted-cas"
    /// A `GSocketConnectable` describing the identity of the server that
    /// is expected on the other end of the connection.
    /// 
    /// If the `G_TLS_CERTIFICATE_BAD_IDENTITY` flag is set in
    /// `GDtlsClientConnection:validation-flags`, this object will be used
    /// to determine the expected identify of the remote end of the
    /// connection; if `GDtlsClientConnection:server-identity` is not set,
    /// or does not match the identity presented by the server, then the
    /// `G_TLS_CERTIFICATE_BAD_IDENTITY` validation will fail.
    /// 
    /// In addition to its use in verifying the server certificate,
    /// this is also used to give a hint to the server about what
    /// certificate we expect, which is useful for servers that serve
    /// virtual hosts.
    case serverIdentity = "server-identity"
    /// What steps to perform when validating a certificate received from
    /// a server. Server certificates that fail to validate in any of the
    /// ways indicated here will be rejected unless the application
    /// overrides the default via `GDtlsConnection::accept-certificate`.
    case validationFlags = "validation-flags"
}

public extension DtlsClientConnectionProtocol {
    /// Bind a `DtlsClientConnectionPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: DtlsClientConnectionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a DtlsClientConnection property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DtlsClientConnectionPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a DtlsClientConnection property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DtlsClientConnectionPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DtlsClientConnectionSignalName: String, SignalNameProtocol {

    /// A list of the distinguished names of the Certificate Authorities
    /// that the server will accept client certificates signed by. If the
    /// server requests a client certificate during the handshake, then
    /// this property will be set after the handshake completes.
    /// 
    /// Each item in the list is a `GByteArray` which contains the complete
    /// subject DN of the certificate authority.
    case notifyAcceptedCas = "notify::accepted-cas"
    /// A `GSocketConnectable` describing the identity of the server that
    /// is expected on the other end of the connection.
    /// 
    /// If the `G_TLS_CERTIFICATE_BAD_IDENTITY` flag is set in
    /// `GDtlsClientConnection:validation-flags`, this object will be used
    /// to determine the expected identify of the remote end of the
    /// connection; if `GDtlsClientConnection:server-identity` is not set,
    /// or does not match the identity presented by the server, then the
    /// `G_TLS_CERTIFICATE_BAD_IDENTITY` validation will fail.
    /// 
    /// In addition to its use in verifying the server certificate,
    /// this is also used to give a hint to the server about what
    /// certificate we expect, which is useful for servers that serve
    /// virtual hosts.
    case notifyServerIdentity = "notify::server-identity"
    /// What steps to perform when validating a certificate received from
    /// a server. Server certificates that fail to validate in any of the
    /// ways indicated here will be rejected unless the application
    /// overrides the default via `GDtlsConnection::accept-certificate`.
    case notifyValidationFlags = "notify::validation-flags"
}

// MARK: DtlsClientConnection has no signals
// MARK: DtlsClientConnection Interface: DtlsClientConnectionProtocol extension (methods and fields)
public extension DtlsClientConnectionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDtlsClientConnection` instance.
    @inlinable var dtls_client_connection_ptr: UnsafeMutablePointer<GDtlsClientConnection>! { return ptr?.assumingMemoryBound(to: GDtlsClientConnection.self) }

    /// Gets the list of distinguished names of the Certificate Authorities
    /// that the server will accept certificates from. This will be set
    /// during the TLS handshake if the server requests a certificate.
    /// Otherwise, it will be `nil`.
    /// 
    /// Each item in the list is a `GByteArray` which contains the complete
    /// subject DN of the certificate authority.
    @inlinable func getAcceptedCas() -> GLib.ListRef! {
        let rv = GLib.ListRef(g_dtls_client_connection_get_accepted_cas(dtls_client_connection_ptr))
        return rv
    }

    /// Gets `conn`'s expected server identity
    @inlinable func getServerIdentity() -> SocketConnectableRef! {
        let rv = SocketConnectableRef(gconstpointer: gconstpointer(g_dtls_client_connection_get_server_identity(dtls_client_connection_ptr)))
        return rv
    }

    /// Gets `conn`'s validation flags
    @inlinable func getValidationFlags() -> TLSCertificateFlags {
        let rv = TLSCertificateFlags(g_dtls_client_connection_get_validation_flags(dtls_client_connection_ptr))
        return rv
    }

    /// Sets `conn`'s expected server identity, which is used both to tell
    /// servers on virtual hosts which certificate to present, and also
    /// to let `conn` know what name to look for in the certificate when
    /// performing `G_TLS_CERTIFICATE_BAD_IDENTITY` validation, if enabled.
    @inlinable func setServer<SocketConnectableT: SocketConnectableProtocol>(identity: SocketConnectableT) {
        g_dtls_client_connection_set_server_identity(dtls_client_connection_ptr, identity.socket_connectable_ptr)
    
    }

    /// Sets `conn`'s validation flags, to override the default set of
    /// checks performed when validating a server certificate. By default,
    /// `G_TLS_CERTIFICATE_VALIDATE_ALL` is used.
    @inlinable func setValidation(flags: TLSCertificateFlags) {
        g_dtls_client_connection_set_validation_flags(dtls_client_connection_ptr, flags.value)
    
    }
    /// Gets the list of distinguished names of the Certificate Authorities
    /// that the server will accept certificates from. This will be set
    /// during the TLS handshake if the server requests a certificate.
    /// Otherwise, it will be `nil`.
    /// 
    /// Each item in the list is a `GByteArray` which contains the complete
    /// subject DN of the certificate authority.
    @inlinable var acceptedCas: GLib.ListRef! {
        /// Gets the list of distinguished names of the Certificate Authorities
        /// that the server will accept certificates from. This will be set
        /// during the TLS handshake if the server requests a certificate.
        /// Otherwise, it will be `nil`.
        /// 
        /// Each item in the list is a `GByteArray` which contains the complete
        /// subject DN of the certificate authority.
        get {
            let rv = GLib.ListRef(g_dtls_client_connection_get_accepted_cas(dtls_client_connection_ptr))
            return rv
        }
    }

    /// Gets `conn`'s expected server identity
    @inlinable var serverIdentity: SocketConnectableRef! {
        /// Gets `conn`'s expected server identity
        get {
            let rv = SocketConnectableRef(gconstpointer: gconstpointer(g_dtls_client_connection_get_server_identity(dtls_client_connection_ptr)))
            return rv
        }
        /// Sets `conn`'s expected server identity, which is used both to tell
        /// servers on virtual hosts which certificate to present, and also
        /// to let `conn` know what name to look for in the certificate when
        /// performing `G_TLS_CERTIFICATE_BAD_IDENTITY` validation, if enabled.
        nonmutating set {
            g_dtls_client_connection_set_server_identity(dtls_client_connection_ptr, UnsafeMutablePointer<GSocketConnectable>(newValue?.socket_connectable_ptr))
        }
    }

    /// Gets `conn`'s validation flags
    @inlinable var validationFlags: TLSCertificateFlags {
        /// Gets `conn`'s validation flags
        get {
            let rv = TLSCertificateFlags(g_dtls_client_connection_get_validation_flags(dtls_client_connection_ptr))
            return rv
        }
        /// Sets `conn`'s validation flags, to override the default set of
        /// checks performed when validating a server certificate. By default,
        /// `G_TLS_CERTIFICATE_VALIDATE_ALL` is used.
        nonmutating set {
            g_dtls_client_connection_set_validation_flags(dtls_client_connection_ptr, newValue.value)
        }
    }


}



// MARK: - DtlsConnection Interface

/// `GDtlsConnection` is the base DTLS connection class type, which wraps
/// a `GDatagramBased` and provides DTLS encryption on top of it. Its
/// subclasses, `GDtlsClientConnection` and `GDtlsServerConnection`,
/// implement client-side and server-side DTLS, respectively.
/// 
/// For TLS support, see `GTlsConnection`.
/// 
/// As DTLS is datagram based, `GDtlsConnection` implements `GDatagramBased`,
/// presenting a datagram-socket-like API for the encrypted connection. This
/// operates over a base datagram connection, which is also a `GDatagramBased`
/// (`GDtlsConnection:base-socket`).
/// 
/// To close a DTLS connection, use `g_dtls_connection_close()`.
/// 
/// Neither `GDtlsServerConnection` or `GDtlsClientConnection` set the peer address
/// on their base `GDatagramBased` if it is a `GSocket` — it is up to the caller to
/// do that if they wish. If they do not, and `g_socket_close()` is called on the
/// base socket, the `GDtlsConnection` will not raise a `G_IO_ERROR_NOT_CONNECTED`
/// error on further I/O.
///
/// The `DtlsConnectionProtocol` protocol exposes the methods and properties of an underlying `GDtlsConnection` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DtlsConnection`.
/// Alternatively, use `DtlsConnectionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DtlsConnectionProtocol: DatagramBasedProtocol {
        /// Untyped pointer to the underlying `GDtlsConnection` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDtlsConnection` instance.
    var dtls_connection_ptr: UnsafeMutablePointer<GDtlsConnection>! { get }

    /// Required Initialiser for types conforming to `DtlsConnectionProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GDtlsConnection` is the base DTLS connection class type, which wraps
/// a `GDatagramBased` and provides DTLS encryption on top of it. Its
/// subclasses, `GDtlsClientConnection` and `GDtlsServerConnection`,
/// implement client-side and server-side DTLS, respectively.
/// 
/// For TLS support, see `GTlsConnection`.
/// 
/// As DTLS is datagram based, `GDtlsConnection` implements `GDatagramBased`,
/// presenting a datagram-socket-like API for the encrypted connection. This
/// operates over a base datagram connection, which is also a `GDatagramBased`
/// (`GDtlsConnection:base-socket`).
/// 
/// To close a DTLS connection, use `g_dtls_connection_close()`.
/// 
/// Neither `GDtlsServerConnection` or `GDtlsClientConnection` set the peer address
/// on their base `GDatagramBased` if it is a `GSocket` — it is up to the caller to
/// do that if they wish. If they do not, and `g_socket_close()` is called on the
/// base socket, the `GDtlsConnection` will not raise a `G_IO_ERROR_NOT_CONNECTED`
/// error on further I/O.
///
/// The `DtlsConnectionRef` type acts as a lightweight Swift reference to an underlying `GDtlsConnection` instance.
/// It exposes methods that can operate on this data type through `DtlsConnectionProtocol` conformance.
/// Use `DtlsConnectionRef` only as an `unowned` reference to an existing `GDtlsConnection` instance.
///
public struct DtlsConnectionRef: DtlsConnectionProtocol {
        /// Untyped pointer to the underlying `GDtlsConnection` instance.
    /// For type-safe access, use the generated, typed pointer `dtls_connection_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DtlsConnectionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDtlsConnection>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDtlsConnection>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDtlsConnection>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDtlsConnection>?) {
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

    /// Reference intialiser for a related type that implements `DtlsConnectionProtocol`
    @inlinable init<T: DtlsConnectionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// `GDtlsConnection` is the base DTLS connection class type, which wraps
/// a `GDatagramBased` and provides DTLS encryption on top of it. Its
/// subclasses, `GDtlsClientConnection` and `GDtlsServerConnection`,
/// implement client-side and server-side DTLS, respectively.
/// 
/// For TLS support, see `GTlsConnection`.
/// 
/// As DTLS is datagram based, `GDtlsConnection` implements `GDatagramBased`,
/// presenting a datagram-socket-like API for the encrypted connection. This
/// operates over a base datagram connection, which is also a `GDatagramBased`
/// (`GDtlsConnection:base-socket`).
/// 
/// To close a DTLS connection, use `g_dtls_connection_close()`.
/// 
/// Neither `GDtlsServerConnection` or `GDtlsClientConnection` set the peer address
/// on their base `GDatagramBased` if it is a `GSocket` — it is up to the caller to
/// do that if they wish. If they do not, and `g_socket_close()` is called on the
/// base socket, the `GDtlsConnection` will not raise a `G_IO_ERROR_NOT_CONNECTED`
/// error on further I/O.
///
/// The `DtlsConnection` type acts as an owner of an underlying `GDtlsConnection` instance.
/// It provides the methods that can operate on this data type through `DtlsConnectionProtocol` conformance.
/// Use `DtlsConnection` as a strong reference or owner of a `GDtlsConnection` instance.
///
open class DtlsConnection: DatagramBased, DtlsConnectionProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DtlsConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDtlsConnection>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DtlsConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDtlsConnection>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DtlsConnection` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DtlsConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DtlsConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDtlsConnection>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DtlsConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDtlsConnection>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GDtlsConnection` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `DtlsConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDtlsConnection>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DtlsConnectionProtocol`
    /// `GDtlsConnection` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `DtlsConnectionProtocol`
    @inlinable public init<T: DtlsConnectionProtocol>(dtlsConnection other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum DtlsConnectionPropertyName: String, PropertyNameProtocol {
    /// The list of application-layer protocols that the connection
    /// advertises that it is willing to speak. See
    /// `g_dtls_connection_set_advertised_protocols()`.
    case advertisedProtocols = "advertised-protocols"
    /// The `GDatagramBased` that the connection wraps. Note that this may be any
    /// implementation of `GDatagramBased`, not just a `GSocket`.
    case baseSocket = "base-socket"
    /// The connection's certificate; see
    /// `g_dtls_connection_set_certificate()`.
    case certificate = "certificate"
    /// The name of the DTLS ciphersuite in use. See `g_dtls_connection_get_ciphersuite_name()`.
    case ciphersuiteName = "ciphersuite-name"
    /// The certificate database to use when verifying this TLS connection.
    /// If no certificate database is set, then the default database will be
    /// used. See `g_tls_backend_get_default_database()`.
    case database = "database"
    /// A `GTlsInteraction` object to be used when the connection or certificate
    /// database need to interact with the user. This will be used to prompt the
    /// user for passwords where necessary.
    case interaction = "interaction"
    /// The application-layer protocol negotiated during the TLS
    /// handshake. See `g_dtls_connection_get_negotiated_protocol()`.
    case negotiatedProtocol = "negotiated-protocol"
    /// The connection's peer's certificate, after the TLS handshake has
    /// completed or failed. Note in particular that this is not yet set
    /// during the emission of `GDtlsConnection::accept-certificate`.
    /// 
    /// (You can watch for a `GObject::notify` signal on this property to
    /// detect when a handshake has occurred.)
    case peerCertificate = "peer-certificate"
    /// The errors noticed while verifying
    /// `GDtlsConnection:peer-certificate`. Normally this should be 0, but
    /// it may not be if `GDtlsClientConnection:validation-flags` is not
    /// `G_TLS_CERTIFICATE_VALIDATE_ALL`, or if
    /// `GDtlsConnection::accept-certificate` overrode the default
    /// behavior.
    case peerCertificateErrors = "peer-certificate-errors"
    /// The DTLS protocol version in use. See `g_dtls_connection_get_protocol_version()`.
    case protocolVersion = "protocol-version"
    /// The rehandshaking mode. See
    /// `g_dtls_connection_set_rehandshake_mode()`.
    ///
    /// **rehandshake-mode is deprecated:**
    /// The rehandshake mode is ignored.
    case rehandshakeMode = "rehandshake-mode"
    /// Whether or not proper TLS close notification is required.
    /// See `g_dtls_connection_set_require_close_notify()`.
    case requireCloseNotify = "require-close-notify"
}

public extension DtlsConnectionProtocol {
    /// Bind a `DtlsConnectionPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: DtlsConnectionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a DtlsConnection property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DtlsConnectionPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a DtlsConnection property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DtlsConnectionPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DtlsConnectionSignalName: String, SignalNameProtocol {
    /// Emitted during the TLS handshake after the peer certificate has
    /// been received. You can examine `peer_cert`'s certification path by
    /// calling `g_tls_certificate_get_issuer()` on it.
    /// 
    /// For a client-side connection, `peer_cert` is the server's
    /// certificate, and the signal will only be emitted if the
    /// certificate was not acceptable according to `conn`'s
    /// `GDtlsClientConnection:validation_flags`. If you would like the
    /// certificate to be accepted despite `errors`, return `true` from the
    /// signal handler. Otherwise, if no handler accepts the certificate,
    /// the handshake will fail with `G_TLS_ERROR_BAD_CERTIFICATE`.
    /// 
    /// For a server-side connection, `peer_cert` is the certificate
    /// presented by the client, if this was requested via the server's
    /// `GDtlsServerConnection:authentication_mode`. On the server side,
    /// the signal is always emitted when the client presents a
    /// certificate, and the certificate will only be accepted if a
    /// handler returns `true`.
    /// 
    /// Note that if this signal is emitted as part of asynchronous I/O
    /// in the main thread, then you should not attempt to interact with
    /// the user before returning from the signal handler. If you want to
    /// let the user decide whether or not to accept the certificate, you
    /// would have to return `false` from the signal handler on the first
    /// attempt, and then after the connection attempt returns a
    /// `G_TLS_ERROR_BAD_CERTIFICATE`, you can interact with the user, and
    /// if the user decides to accept the certificate, remember that fact,
    /// create a new connection, and return `true` from the signal handler
    /// the next time.
    /// 
    /// If you are doing I/O in another thread, you do not
    /// need to worry about this, and can simply block in the signal
    /// handler until the UI thread returns an answer.
    case acceptCertificate = "accept-certificate"
    /// The list of application-layer protocols that the connection
    /// advertises that it is willing to speak. See
    /// `g_dtls_connection_set_advertised_protocols()`.
    case notifyAdvertisedProtocols = "notify::advertised-protocols"
    /// The `GDatagramBased` that the connection wraps. Note that this may be any
    /// implementation of `GDatagramBased`, not just a `GSocket`.
    case notifyBaseSocket = "notify::base-socket"
    /// The connection's certificate; see
    /// `g_dtls_connection_set_certificate()`.
    case notifyCertificate = "notify::certificate"
    /// The name of the DTLS ciphersuite in use. See `g_dtls_connection_get_ciphersuite_name()`.
    case notifyCiphersuiteName = "notify::ciphersuite-name"
    /// The certificate database to use when verifying this TLS connection.
    /// If no certificate database is set, then the default database will be
    /// used. See `g_tls_backend_get_default_database()`.
    case notifyDatabase = "notify::database"
    /// A `GTlsInteraction` object to be used when the connection or certificate
    /// database need to interact with the user. This will be used to prompt the
    /// user for passwords where necessary.
    case notifyInteraction = "notify::interaction"
    /// The application-layer protocol negotiated during the TLS
    /// handshake. See `g_dtls_connection_get_negotiated_protocol()`.
    case notifyNegotiatedProtocol = "notify::negotiated-protocol"
    /// The connection's peer's certificate, after the TLS handshake has
    /// completed or failed. Note in particular that this is not yet set
    /// during the emission of `GDtlsConnection::accept-certificate`.
    /// 
    /// (You can watch for a `GObject::notify` signal on this property to
    /// detect when a handshake has occurred.)
    case notifyPeerCertificate = "notify::peer-certificate"
    /// The errors noticed while verifying
    /// `GDtlsConnection:peer-certificate`. Normally this should be 0, but
    /// it may not be if `GDtlsClientConnection:validation-flags` is not
    /// `G_TLS_CERTIFICATE_VALIDATE_ALL`, or if
    /// `GDtlsConnection::accept-certificate` overrode the default
    /// behavior.
    case notifyPeerCertificateErrors = "notify::peer-certificate-errors"
    /// The DTLS protocol version in use. See `g_dtls_connection_get_protocol_version()`.
    case notifyProtocolVersion = "notify::protocol-version"
    /// The rehandshaking mode. See
    /// `g_dtls_connection_set_rehandshake_mode()`.
    ///
    /// **rehandshake-mode is deprecated:**
    /// The rehandshake mode is ignored.
    case notifyRehandshakeMode = "notify::rehandshake-mode"
    /// Whether or not proper TLS close notification is required.
    /// See `g_dtls_connection_set_require_close_notify()`.
    case notifyRequireCloseNotify = "notify::require-close-notify"
}

// MARK: DtlsConnection signals
public extension DtlsConnectionProtocol {
    /// Connect a Swift signal handler to the given, typed `DtlsConnectionSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: DtlsConnectionSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        GLibObject.ObjectRef(raw: ptr).connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `DtlsConnectionSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: DtlsConnectionSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        GLibObject.ObjectRef(raw: ptr).connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted during the TLS handshake after the peer certificate has
    /// been received. You can examine `peer_cert`'s certification path by
    /// calling `g_tls_certificate_get_issuer()` on it.
    /// 
    /// For a client-side connection, `peer_cert` is the server's
    /// certificate, and the signal will only be emitted if the
    /// certificate was not acceptable according to `conn`'s
    /// `GDtlsClientConnection:validation_flags`. If you would like the
    /// certificate to be accepted despite `errors`, return `true` from the
    /// signal handler. Otherwise, if no handler accepts the certificate,
    /// the handshake will fail with `G_TLS_ERROR_BAD_CERTIFICATE`.
    /// 
    /// For a server-side connection, `peer_cert` is the certificate
    /// presented by the client, if this was requested via the server's
    /// `GDtlsServerConnection:authentication_mode`. On the server side,
    /// the signal is always emitted when the client presents a
    /// certificate, and the certificate will only be accepted if a
    /// handler returns `true`.
    /// 
    /// Note that if this signal is emitted as part of asynchronous I/O
    /// in the main thread, then you should not attempt to interact with
    /// the user before returning from the signal handler. If you want to
    /// let the user decide whether or not to accept the certificate, you
    /// would have to return `false` from the signal handler on the first
    /// attempt, and then after the connection attempt returns a
    /// `G_TLS_ERROR_BAD_CERTIFICATE`, you can interact with the user, and
    /// if the user decides to accept the certificate, remember that fact,
    /// create a new connection, and return `true` from the signal handler
    /// the next time.
    /// 
    /// If you are doing I/O in another thread, you do not
    /// need to worry about this, and can simply block in the signal
    /// handler until the UI thread returns an answer.
    /// - Note: This represents the underlying `accept-certificate` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter peerCert: the peer's `GTlsCertificate`
    /// - Parameter errors: the problems with `peer_cert`.
    /// - Parameter handler: `true` to accept `peer_cert` (which will also immediately end the signal emission). `false` to allow the signal emission to continue, which will cause the handshake to fail if no one else overrides it.
    /// Run the given callback whenever the `acceptCertificate` signal is emitted
    @discardableResult @inlinable func onAcceptCertificate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DtlsConnectionRef, _ peerCert: TLSCertificateRef, _ errors: TLSCertificateFlags) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<DtlsConnectionRef, TLSCertificateRef, TLSCertificateFlags, Bool>
        let cCallback: @convention(c) (gpointer, gpointer, UInt32, gpointer) -> gboolean = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(DtlsConnectionRef(raw: unownedSelf), TLSCertificateRef(raw: arg1), TLSCertificateFlags(arg2))
            return gboolean((output) ? 1 : 0)
        }
        return connect(
            signal: .acceptCertificate,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `accept-certificate` signal for using the `connect(signal:)` methods
    static var acceptCertificateSignal: DtlsConnectionSignalName { .acceptCertificate }
    
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
    /// - Note: This represents the underlying `notify::advertised-protocols` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyAdvertisedProtocols` signal is emitted
    @discardableResult @inlinable func onNotifyAdvertisedProtocols(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DtlsConnectionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DtlsConnectionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DtlsConnectionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyAdvertisedProtocols,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::advertised-protocols` signal for using the `connect(signal:)` methods
    static var notifyAdvertisedProtocolsSignal: DtlsConnectionSignalName { .notifyAdvertisedProtocols }
    
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
    /// - Note: This represents the underlying `notify::base-socket` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyBaseSocket` signal is emitted
    @discardableResult @inlinable func onNotifyBaseSocket(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DtlsConnectionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DtlsConnectionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DtlsConnectionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyBaseSocket,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::base-socket` signal for using the `connect(signal:)` methods
    static var notifyBaseSocketSignal: DtlsConnectionSignalName { .notifyBaseSocket }
    
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
    /// - Note: This represents the underlying `notify::certificate` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyCertificate` signal is emitted
    @discardableResult @inlinable func onNotifyCertificate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DtlsConnectionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DtlsConnectionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DtlsConnectionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyCertificate,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::certificate` signal for using the `connect(signal:)` methods
    static var notifyCertificateSignal: DtlsConnectionSignalName { .notifyCertificate }
    
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
    /// - Note: This represents the underlying `notify::ciphersuite-name` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyCiphersuiteName` signal is emitted
    @discardableResult @inlinable func onNotifyCiphersuiteName(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DtlsConnectionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DtlsConnectionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DtlsConnectionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyCiphersuiteName,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::ciphersuite-name` signal for using the `connect(signal:)` methods
    static var notifyCiphersuiteNameSignal: DtlsConnectionSignalName { .notifyCiphersuiteName }
    
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
    /// - Note: This represents the underlying `notify::database` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyDatabase` signal is emitted
    @discardableResult @inlinable func onNotifyDatabase(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DtlsConnectionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DtlsConnectionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DtlsConnectionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyDatabase,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::database` signal for using the `connect(signal:)` methods
    static var notifyDatabaseSignal: DtlsConnectionSignalName { .notifyDatabase }
    
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
    /// - Note: This represents the underlying `notify::interaction` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyInteraction` signal is emitted
    @discardableResult @inlinable func onNotifyInteraction(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DtlsConnectionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DtlsConnectionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DtlsConnectionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyInteraction,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::interaction` signal for using the `connect(signal:)` methods
    static var notifyInteractionSignal: DtlsConnectionSignalName { .notifyInteraction }
    
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
    /// - Note: This represents the underlying `notify::negotiated-protocol` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyNegotiatedProtocol` signal is emitted
    @discardableResult @inlinable func onNotifyNegotiatedProtocol(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DtlsConnectionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DtlsConnectionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DtlsConnectionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyNegotiatedProtocol,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::negotiated-protocol` signal for using the `connect(signal:)` methods
    static var notifyNegotiatedProtocolSignal: DtlsConnectionSignalName { .notifyNegotiatedProtocol }
    
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
    /// - Note: This represents the underlying `notify::peer-certificate` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyPeerCertificate` signal is emitted
    @discardableResult @inlinable func onNotifyPeerCertificate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DtlsConnectionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DtlsConnectionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DtlsConnectionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyPeerCertificate,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::peer-certificate` signal for using the `connect(signal:)` methods
    static var notifyPeerCertificateSignal: DtlsConnectionSignalName { .notifyPeerCertificate }
    
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
    /// - Note: This represents the underlying `notify::peer-certificate-errors` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyPeerCertificateErrors` signal is emitted
    @discardableResult @inlinable func onNotifyPeerCertificateErrors(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DtlsConnectionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DtlsConnectionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DtlsConnectionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyPeerCertificateErrors,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::peer-certificate-errors` signal for using the `connect(signal:)` methods
    static var notifyPeerCertificateErrorsSignal: DtlsConnectionSignalName { .notifyPeerCertificateErrors }
    
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
    /// - Note: This represents the underlying `notify::protocol-version` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyProtocolVersion` signal is emitted
    @discardableResult @inlinable func onNotifyProtocolVersion(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DtlsConnectionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DtlsConnectionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DtlsConnectionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyProtocolVersion,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::protocol-version` signal for using the `connect(signal:)` methods
    static var notifyProtocolVersionSignal: DtlsConnectionSignalName { .notifyProtocolVersion }
    
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
    /// - Note: This represents the underlying `notify::rehandshake-mode` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyRehandshakeMode` signal is emitted
    @discardableResult @inlinable func onNotifyRehandshakeMode(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DtlsConnectionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DtlsConnectionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DtlsConnectionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyRehandshakeMode,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::rehandshake-mode` signal for using the `connect(signal:)` methods
    static var notifyRehandshakeModeSignal: DtlsConnectionSignalName { .notifyRehandshakeMode }
    
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
    /// - Note: This represents the underlying `notify::require-close-notify` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyRequireCloseNotify` signal is emitted
    @discardableResult @inlinable func onNotifyRequireCloseNotify(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: DtlsConnectionRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<DtlsConnectionRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(DtlsConnectionRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyRequireCloseNotify,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::require-close-notify` signal for using the `connect(signal:)` methods
    static var notifyRequireCloseNotifySignal: DtlsConnectionSignalName { .notifyRequireCloseNotify }
    
}

// MARK: DtlsConnection Interface: DtlsConnectionProtocol extension (methods and fields)
public extension DtlsConnectionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDtlsConnection` instance.
    @inlinable var dtls_connection_ptr: UnsafeMutablePointer<GDtlsConnection>! { return ptr?.assumingMemoryBound(to: GDtlsConnection.self) }

    /// Close the DTLS connection. This is equivalent to calling
    /// `g_dtls_connection_shutdown()` to shut down both sides of the connection.
    /// 
    /// Closing a `GDtlsConnection` waits for all buffered but untransmitted data to
    /// be sent before it completes. It then sends a `close_notify` DTLS alert to the
    /// peer and may wait for a `close_notify` to be received from the peer. It does
    /// not close the underlying `GDtlsConnection:base-socket`; that must be closed
    /// separately.
    /// 
    /// Once `conn` is closed, all other operations will return `G_IO_ERROR_CLOSED`.
    /// Closing a `GDtlsConnection` multiple times will not return an error.
    /// 
    /// `GDtlsConnections` will be automatically closed when the last reference is
    /// dropped, but you might want to call this function to make sure resources are
    /// released as early as possible.
    /// 
    /// If `cancellable` is cancelled, the `GDtlsConnection` may be left
    /// partially-closed and any pending untransmitted data may be lost. Call
    /// `g_dtls_connection_close()` again to complete closing the `GDtlsConnection`.
    @inlinable func close(cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_dtls_connection_close(dtls_connection_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Close the DTLS connection. This is equivalent to calling
    /// `g_dtls_connection_shutdown()` to shut down both sides of the connection.
    /// 
    /// Closing a `GDtlsConnection` waits for all buffered but untransmitted data to
    /// be sent before it completes. It then sends a `close_notify` DTLS alert to the
    /// peer and may wait for a `close_notify` to be received from the peer. It does
    /// not close the underlying `GDtlsConnection:base-socket`; that must be closed
    /// separately.
    /// 
    /// Once `conn` is closed, all other operations will return `G_IO_ERROR_CLOSED`.
    /// Closing a `GDtlsConnection` multiple times will not return an error.
    /// 
    /// `GDtlsConnections` will be automatically closed when the last reference is
    /// dropped, but you might want to call this function to make sure resources are
    /// released as early as possible.
    /// 
    /// If `cancellable` is cancelled, the `GDtlsConnection` may be left
    /// partially-closed and any pending untransmitted data may be lost. Call
    /// `g_dtls_connection_close()` again to complete closing the `GDtlsConnection`.
    @inlinable func close<CancellableT: CancellableProtocol>(cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_dtls_connection_close(dtls_connection_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously close the DTLS connection. See `g_dtls_connection_close()` for
    /// more information.
    @inlinable func closeAsync(ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_dtls_connection_close_async(dtls_connection_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously close the DTLS connection. See `g_dtls_connection_close()` for
    /// more information.
    @inlinable func closeAsync<CancellableT: CancellableProtocol>(ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_dtls_connection_close_async(dtls_connection_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finish an asynchronous TLS close operation. See `g_dtls_connection_close()`
    /// for more information.
    @inlinable func closeFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_dtls_connection_close_finish(dtls_connection_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Used by `GDtlsConnection` implementations to emit the
    /// `GDtlsConnection::accept-certificate` signal.
    @inlinable func emitAcceptCertificate<TLSCertificateT: TLSCertificateProtocol>(peerCert: TLSCertificateT, errors: TLSCertificateFlags) -> Bool {
        let rv = ((g_dtls_connection_emit_accept_certificate(dtls_connection_ptr, peerCert.tls_certificate_ptr, errors.value)) != 0)
        return rv
    }

    /// Gets `conn`'s certificate, as set by
    /// `g_dtls_connection_set_certificate()`.
    @inlinable func getCertificate() -> TLSCertificateRef! {
        let rv = TLSCertificateRef(gconstpointer: gconstpointer(g_dtls_connection_get_certificate(dtls_connection_ptr)))
        return rv
    }

    /// Query the TLS backend for TLS channel binding data of `type` for `conn`.
    /// 
    /// This call retrieves TLS channel binding data as specified in RFC
    /// [5056](https://tools.ietf.org/html/rfc5056), RFC
    /// [5929](https://tools.ietf.org/html/rfc5929), and related RFCs.  The
    /// binding data is returned in `data`.  The `data` is resized by the callee
    /// using `GByteArray` buffer management and will be freed when the `data`
    /// is destroyed by `g_byte_array_unref()`. If `data` is `nil`, it will only
    /// check whether TLS backend is able to fetch the data (e.g. whether `type`
    /// is supported by the TLS backend). It does not guarantee that the data
    /// will be available though.  That could happen if TLS connection does not
    /// support `type` or the binding data is not available yet due to additional
    /// negotiation or input required.
    @inlinable func getChannelBindingData(type: GTlsChannelBindingType, data: GLib.ByteArrayRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_dtls_connection_get_channel_binding_data(dtls_connection_ptr, type, data?.byte_array_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Query the TLS backend for TLS channel binding data of `type` for `conn`.
    /// 
    /// This call retrieves TLS channel binding data as specified in RFC
    /// [5056](https://tools.ietf.org/html/rfc5056), RFC
    /// [5929](https://tools.ietf.org/html/rfc5929), and related RFCs.  The
    /// binding data is returned in `data`.  The `data` is resized by the callee
    /// using `GByteArray` buffer management and will be freed when the `data`
    /// is destroyed by `g_byte_array_unref()`. If `data` is `nil`, it will only
    /// check whether TLS backend is able to fetch the data (e.g. whether `type`
    /// is supported by the TLS backend). It does not guarantee that the data
    /// will be available though.  That could happen if TLS connection does not
    /// support `type` or the binding data is not available yet due to additional
    /// negotiation or input required.
    @inlinable func getChannelBindingData<ByteArrayT: GLib.ByteArrayProtocol>(type: GTlsChannelBindingType, data: ByteArrayT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_dtls_connection_get_channel_binding_data(dtls_connection_ptr, type, data?.byte_array_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Returns the name of the current DTLS ciphersuite, or `nil` if the
    /// connection has not handshaked or has been closed. Beware that the TLS
    /// backend may use any of multiple different naming conventions, because
    /// OpenSSL and GnuTLS have their own ciphersuite naming conventions that
    /// are different from each other and different from the standard, IANA-
    /// registered ciphersuite names. The ciphersuite name is intended to be
    /// displayed to the user for informative purposes only, and parsing it
    /// is not recommended.
    @inlinable func getCiphersuiteName() -> String! {
        let rv = g_dtls_connection_get_ciphersuite_name(dtls_connection_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the certificate database that `conn` uses to verify
    /// peer certificates. See `g_dtls_connection_set_database()`.
    @inlinable func getDatabase() -> TLSDatabaseRef! {
        let rv = TLSDatabaseRef(gconstpointer: gconstpointer(g_dtls_connection_get_database(dtls_connection_ptr)))
        return rv
    }

    /// Get the object that will be used to interact with the user. It will be used
    /// for things like prompting the user for passwords. If `nil` is returned, then
    /// no user interaction will occur for this connection.
    @inlinable func getInteraction() -> TLSInteractionRef! {
        let rv = TLSInteractionRef(gconstpointer: gconstpointer(g_dtls_connection_get_interaction(dtls_connection_ptr)))
        return rv
    }

    /// Gets the name of the application-layer protocol negotiated during
    /// the handshake.
    /// 
    /// If the peer did not use the ALPN extension, or did not advertise a
    /// protocol that matched one of `conn`'s protocols, or the TLS backend
    /// does not support ALPN, then this will be `nil`. See
    /// `g_dtls_connection_set_advertised_protocols()`.
    @inlinable func getNegotiatedProtocol() -> String! {
        let rv = g_dtls_connection_get_negotiated_protocol(dtls_connection_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets `conn`'s peer's certificate after the handshake has completed
    /// or failed. (It is not set during the emission of
    /// `GDtlsConnection::accept-certificate`.)
    @inlinable func getPeerCertificate() -> TLSCertificateRef! {
        let rv = TLSCertificateRef(gconstpointer: gconstpointer(g_dtls_connection_get_peer_certificate(dtls_connection_ptr)))
        return rv
    }

    /// Gets the errors associated with validating `conn`'s peer's
    /// certificate, after the handshake has completed or failed. (It is
    /// not set during the emission of `GDtlsConnection::accept-certificate`.)
    @inlinable func getPeerCertificateErrors() -> TLSCertificateFlags {
        let rv = TLSCertificateFlags(g_dtls_connection_get_peer_certificate_errors(dtls_connection_ptr))
        return rv
    }

    /// Returns the current DTLS protocol version, which may be
    /// `G_TLS_PROTOCOL_VERSION_UNKNOWN` if the connection has not handshaked, or
    /// has been closed, or if the TLS backend has implemented a protocol version
    /// that is not a recognized `GTlsProtocolVersion`.
    @inlinable func getProtocolVersion() -> GTlsProtocolVersion {
        let rv = g_dtls_connection_get_protocol_version(dtls_connection_ptr)
        return rv
    }

    /// Gets `conn` rehandshaking mode. See
    /// `g_dtls_connection_set_rehandshake_mode()` for details.
    ///
    /// **get_rehandshake_mode is deprecated:**
    /// Changing the rehandshake mode is no longer
    ///   required for compatibility. Also, rehandshaking has been removed
    ///   from the TLS protocol in TLS 1.3.
    @available(*, deprecated) @inlinable func getRehandshakeMode() -> GTlsRehandshakeMode {
        let rv = g_dtls_connection_get_rehandshake_mode(dtls_connection_ptr)
        return rv
    }

    /// Tests whether or not `conn` expects a proper TLS close notification
    /// when the connection is closed. See
    /// `g_dtls_connection_set_require_close_notify()` for details.
    @inlinable func getRequireCloseNotify() -> Bool {
        let rv = ((g_dtls_connection_get_require_close_notify(dtls_connection_ptr)) != 0)
        return rv
    }

    /// Attempts a TLS handshake on `conn`.
    /// 
    /// On the client side, it is never necessary to call this method;
    /// although the connection needs to perform a handshake after
    /// connecting, `GDtlsConnection` will handle this for you automatically
    /// when you try to send or receive data on the connection. You can call
    /// `g_dtls_connection_handshake()` manually if you want to know whether
    /// the initial handshake succeeded or failed (as opposed to just
    /// immediately trying to use `conn` to read or write, in which case,
    /// if it fails, it may not be possible to tell if it failed before
    /// or after completing the handshake), but beware that servers may reject
    /// client authentication after the handshake has completed, so a
    /// successful handshake does not indicate the connection will be usable.
    /// 
    /// Likewise, on the server side, although a handshake is necessary at
    /// the beginning of the communication, you do not need to call this
    /// function explicitly unless you want clearer error reporting.
    /// 
    /// Previously, calling `g_dtls_connection_handshake()` after the initial
    /// handshake would trigger a rehandshake; however, this usage was
    /// deprecated in GLib 2.60 because rehandshaking was removed from the
    /// TLS protocol in TLS 1.3. Since GLib 2.64, calling this function after
    /// the initial handshake will no longer do anything.
    /// 
    /// `GDtlsConnection::accept_certificate` may be emitted during the
    /// handshake.
    @inlinable func handshake(cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_dtls_connection_handshake(dtls_connection_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Attempts a TLS handshake on `conn`.
    /// 
    /// On the client side, it is never necessary to call this method;
    /// although the connection needs to perform a handshake after
    /// connecting, `GDtlsConnection` will handle this for you automatically
    /// when you try to send or receive data on the connection. You can call
    /// `g_dtls_connection_handshake()` manually if you want to know whether
    /// the initial handshake succeeded or failed (as opposed to just
    /// immediately trying to use `conn` to read or write, in which case,
    /// if it fails, it may not be possible to tell if it failed before
    /// or after completing the handshake), but beware that servers may reject
    /// client authentication after the handshake has completed, so a
    /// successful handshake does not indicate the connection will be usable.
    /// 
    /// Likewise, on the server side, although a handshake is necessary at
    /// the beginning of the communication, you do not need to call this
    /// function explicitly unless you want clearer error reporting.
    /// 
    /// Previously, calling `g_dtls_connection_handshake()` after the initial
    /// handshake would trigger a rehandshake; however, this usage was
    /// deprecated in GLib 2.60 because rehandshaking was removed from the
    /// TLS protocol in TLS 1.3. Since GLib 2.64, calling this function after
    /// the initial handshake will no longer do anything.
    /// 
    /// `GDtlsConnection::accept_certificate` may be emitted during the
    /// handshake.
    @inlinable func handshake<CancellableT: CancellableProtocol>(cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_dtls_connection_handshake(dtls_connection_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously performs a TLS handshake on `conn`. See
    /// `g_dtls_connection_handshake()` for more information.
    @inlinable func handshakeAsync(ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_dtls_connection_handshake_async(dtls_connection_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously performs a TLS handshake on `conn`. See
    /// `g_dtls_connection_handshake()` for more information.
    @inlinable func handshakeAsync<CancellableT: CancellableProtocol>(ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_dtls_connection_handshake_async(dtls_connection_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finish an asynchronous TLS handshake operation. See
    /// `g_dtls_connection_handshake()` for more information.
    @inlinable func handshakeFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_dtls_connection_handshake_finish(dtls_connection_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Sets the list of application-layer protocols to advertise that the
    /// caller is willing to speak on this connection. The
    /// Application-Layer Protocol Negotiation (ALPN) extension will be
    /// used to negotiate a compatible protocol with the peer; use
    /// `g_dtls_connection_get_negotiated_protocol()` to find the negotiated
    /// protocol after the handshake.  Specifying `nil` for the the value
    /// of `protocols` will disable ALPN negotiation.
    /// 
    /// See [IANA TLS ALPN Protocol IDs](https://www.iana.org/assignments/tls-extensiontype-values/tls-extensiontype-values.xhtml`alpn-protocol-ids`)
    /// for a list of registered protocol IDs.
    @inlinable func setAdvertised(protocols: UnsafePointer<UnsafePointer<gchar>?>! = nil) {
        g_dtls_connection_set_advertised_protocols(dtls_connection_ptr, protocols)
    
    }

    /// This sets the certificate that `conn` will present to its peer
    /// during the TLS handshake. For a `GDtlsServerConnection`, it is
    /// mandatory to set this, and that will normally be done at construct
    /// time.
    /// 
    /// For a `GDtlsClientConnection`, this is optional. If a handshake fails
    /// with `G_TLS_ERROR_CERTIFICATE_REQUIRED`, that means that the server
    /// requires a certificate, and if you try connecting again, you should
    /// call this method first. You can call
    /// `g_dtls_client_connection_get_accepted_cas()` on the failed connection
    /// to get a list of Certificate Authorities that the server will
    /// accept certificates from.
    /// 
    /// (It is also possible that a server will allow the connection with
    /// or without a certificate; in that case, if you don't provide a
    /// certificate, you can tell that the server requested one by the fact
    /// that `g_dtls_client_connection_get_accepted_cas()` will return
    /// non-`nil`.)
    @inlinable func set<TLSCertificateT: TLSCertificateProtocol>(certificate: TLSCertificateT) {
        g_dtls_connection_set_certificate(dtls_connection_ptr, certificate.tls_certificate_ptr)
    
    }

    /// Sets the certificate database that is used to verify peer certificates.
    /// This is set to the default database by default. See
    /// `g_tls_backend_get_default_database()`. If set to `nil`, then
    /// peer certificate validation will always set the
    /// `G_TLS_CERTIFICATE_UNKNOWN_CA` error (meaning
    /// `GDtlsConnection::accept-certificate` will always be emitted on
    /// client-side connections, unless that bit is not set in
    /// `GDtlsClientConnection:validation-flags`).
    @inlinable func set(database: TLSDatabaseRef? = nil) {
        g_dtls_connection_set_database(dtls_connection_ptr, database?.tls_database_ptr)
    
    }
    /// Sets the certificate database that is used to verify peer certificates.
    /// This is set to the default database by default. See
    /// `g_tls_backend_get_default_database()`. If set to `nil`, then
    /// peer certificate validation will always set the
    /// `G_TLS_CERTIFICATE_UNKNOWN_CA` error (meaning
    /// `GDtlsConnection::accept-certificate` will always be emitted on
    /// client-side connections, unless that bit is not set in
    /// `GDtlsClientConnection:validation-flags`).
    @inlinable func set<TLSDatabaseT: TLSDatabaseProtocol>(database: TLSDatabaseT?) {
        g_dtls_connection_set_database(dtls_connection_ptr, database?.tls_database_ptr)
    
    }

    /// Set the object that will be used to interact with the user. It will be used
    /// for things like prompting the user for passwords.
    /// 
    /// The `interaction` argument will normally be a derived subclass of
    /// `GTlsInteraction`. `nil` can also be provided if no user interaction
    /// should occur for this connection.
    @inlinable func set(interaction: TLSInteractionRef? = nil) {
        g_dtls_connection_set_interaction(dtls_connection_ptr, interaction?.tls_interaction_ptr)
    
    }
    /// Set the object that will be used to interact with the user. It will be used
    /// for things like prompting the user for passwords.
    /// 
    /// The `interaction` argument will normally be a derived subclass of
    /// `GTlsInteraction`. `nil` can also be provided if no user interaction
    /// should occur for this connection.
    @inlinable func set<TLSInteractionT: TLSInteractionProtocol>(interaction: TLSInteractionT?) {
        g_dtls_connection_set_interaction(dtls_connection_ptr, interaction?.tls_interaction_ptr)
    
    }

    /// Since GLib 2.64, changing the rehandshake mode is no longer supported
    /// and will have no effect. With TLS 1.3, rehandshaking has been removed from
    /// the TLS protocol, replaced by separate post-handshake authentication and
    /// rekey operations.
    ///
    /// **set_rehandshake_mode is deprecated:**
    /// Changing the rehandshake mode is no longer
    ///   required for compatibility. Also, rehandshaking has been removed
    ///   from the TLS protocol in TLS 1.3.
    @available(*, deprecated) @inlinable func setRehandshake(mode: GTlsRehandshakeMode) {
        g_dtls_connection_set_rehandshake_mode(dtls_connection_ptr, mode)
    
    }

    /// Sets whether or not `conn` expects a proper TLS close notification
    /// before the connection is closed. If this is `true` (the default),
    /// then `conn` will expect to receive a TLS close notification from its
    /// peer before the connection is closed, and will return a
    /// `G_TLS_ERROR_EOF` error if the connection is closed without proper
    /// notification (since this may indicate a network error, or
    /// man-in-the-middle attack).
    /// 
    /// In some protocols, the application will know whether or not the
    /// connection was closed cleanly based on application-level data
    /// (because the application-level data includes a length field, or is
    /// somehow self-delimiting); in this case, the close notify is
    /// redundant and may be omitted. You
    /// can use `g_dtls_connection_set_require_close_notify()` to tell `conn`
    /// to allow an "unannounced" connection close, in which case the close
    /// will show up as a 0-length read, as in a non-TLS
    /// `GDatagramBased`, and it is up to the application to check that
    /// the data has been fully received.
    /// 
    /// Note that this only affects the behavior when the peer closes the
    /// connection; when the application calls `g_dtls_connection_close_async()` on
    /// `conn` itself, this will send a close notification regardless of the
    /// setting of this property. If you explicitly want to do an unclean
    /// close, you can close `conn`'s `GDtlsConnection:base-socket` rather
    /// than closing `conn` itself.
    @inlinable func set(requireCloseNotify: Bool) {
        g_dtls_connection_set_require_close_notify(dtls_connection_ptr, gboolean((requireCloseNotify) ? 1 : 0))
    
    }

    /// Shut down part or all of a DTLS connection.
    /// 
    /// If `shutdown_read` is `true` then the receiving side of the connection is shut
    /// down, and further reading is disallowed. Subsequent calls to
    /// `g_datagram_based_receive_messages()` will return `G_IO_ERROR_CLOSED`.
    /// 
    /// If `shutdown_write` is `true` then the sending side of the connection is shut
    /// down, and further writing is disallowed. Subsequent calls to
    /// `g_datagram_based_send_messages()` will return `G_IO_ERROR_CLOSED`.
    /// 
    /// It is allowed for both `shutdown_read` and `shutdown_write` to be TRUE — this
    /// is equivalent to calling `g_dtls_connection_close()`.
    /// 
    /// If `cancellable` is cancelled, the `GDtlsConnection` may be left
    /// partially-closed and any pending untransmitted data may be lost. Call
    /// `g_dtls_connection_shutdown()` again to complete closing the `GDtlsConnection`.
    @inlinable func shutdown(shutdownRead: Bool, shutdownWrite: Bool, cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_dtls_connection_shutdown(dtls_connection_ptr, gboolean((shutdownRead) ? 1 : 0), gboolean((shutdownWrite) ? 1 : 0), cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Shut down part or all of a DTLS connection.
    /// 
    /// If `shutdown_read` is `true` then the receiving side of the connection is shut
    /// down, and further reading is disallowed. Subsequent calls to
    /// `g_datagram_based_receive_messages()` will return `G_IO_ERROR_CLOSED`.
    /// 
    /// If `shutdown_write` is `true` then the sending side of the connection is shut
    /// down, and further writing is disallowed. Subsequent calls to
    /// `g_datagram_based_send_messages()` will return `G_IO_ERROR_CLOSED`.
    /// 
    /// It is allowed for both `shutdown_read` and `shutdown_write` to be TRUE — this
    /// is equivalent to calling `g_dtls_connection_close()`.
    /// 
    /// If `cancellable` is cancelled, the `GDtlsConnection` may be left
    /// partially-closed and any pending untransmitted data may be lost. Call
    /// `g_dtls_connection_shutdown()` again to complete closing the `GDtlsConnection`.
    @inlinable func shutdown<CancellableT: CancellableProtocol>(shutdownRead: Bool, shutdownWrite: Bool, cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_dtls_connection_shutdown(dtls_connection_ptr, gboolean((shutdownRead) ? 1 : 0), gboolean((shutdownWrite) ? 1 : 0), cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously shut down part or all of the DTLS connection. See
    /// `g_dtls_connection_shutdown()` for more information.
    @inlinable func shutdownAsync(shutdownRead: Bool, shutdownWrite: Bool, ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_dtls_connection_shutdown_async(dtls_connection_ptr, gboolean((shutdownRead) ? 1 : 0), gboolean((shutdownWrite) ? 1 : 0), gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously shut down part or all of the DTLS connection. See
    /// `g_dtls_connection_shutdown()` for more information.
    @inlinable func shutdownAsync<CancellableT: CancellableProtocol>(shutdownRead: Bool, shutdownWrite: Bool, ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_dtls_connection_shutdown_async(dtls_connection_ptr, gboolean((shutdownRead) ? 1 : 0), gboolean((shutdownWrite) ? 1 : 0), gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finish an asynchronous TLS shutdown operation. See
    /// `g_dtls_connection_shutdown()` for more information.
    @inlinable func shutdownFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_dtls_connection_shutdown_finish(dtls_connection_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// The connection's certificate; see
    /// `g_dtls_connection_set_certificate()`.
    @inlinable var certificate: TLSCertificateRef! {
        /// Gets `conn`'s certificate, as set by
        /// `g_dtls_connection_set_certificate()`.
        get {
            let rv = TLSCertificateRef(gconstpointer: gconstpointer(g_dtls_connection_get_certificate(dtls_connection_ptr)))
            return rv
        }
        /// This sets the certificate that `conn` will present to its peer
        /// during the TLS handshake. For a `GDtlsServerConnection`, it is
        /// mandatory to set this, and that will normally be done at construct
        /// time.
        /// 
        /// For a `GDtlsClientConnection`, this is optional. If a handshake fails
        /// with `G_TLS_ERROR_CERTIFICATE_REQUIRED`, that means that the server
        /// requires a certificate, and if you try connecting again, you should
        /// call this method first. You can call
        /// `g_dtls_client_connection_get_accepted_cas()` on the failed connection
        /// to get a list of Certificate Authorities that the server will
        /// accept certificates from.
        /// 
        /// (It is also possible that a server will allow the connection with
        /// or without a certificate; in that case, if you don't provide a
        /// certificate, you can tell that the server requested one by the fact
        /// that `g_dtls_client_connection_get_accepted_cas()` will return
        /// non-`nil`.)
        nonmutating set {
            g_dtls_connection_set_certificate(dtls_connection_ptr, UnsafeMutablePointer<GTlsCertificate>(newValue?.tls_certificate_ptr))
        }
    }

    /// Returns the name of the current DTLS ciphersuite, or `nil` if the
    /// connection has not handshaked or has been closed. Beware that the TLS
    /// backend may use any of multiple different naming conventions, because
    /// OpenSSL and GnuTLS have their own ciphersuite naming conventions that
    /// are different from each other and different from the standard, IANA-
    /// registered ciphersuite names. The ciphersuite name is intended to be
    /// displayed to the user for informative purposes only, and parsing it
    /// is not recommended.
    @inlinable var ciphersuiteName: String! {
        /// Returns the name of the current DTLS ciphersuite, or `nil` if the
        /// connection has not handshaked or has been closed. Beware that the TLS
        /// backend may use any of multiple different naming conventions, because
        /// OpenSSL and GnuTLS have their own ciphersuite naming conventions that
        /// are different from each other and different from the standard, IANA-
        /// registered ciphersuite names. The ciphersuite name is intended to be
        /// displayed to the user for informative purposes only, and parsing it
        /// is not recommended.
        get {
            let rv = g_dtls_connection_get_ciphersuite_name(dtls_connection_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// The certificate database to use when verifying this TLS connection.
    /// If no certificate database is set, then the default database will be
    /// used. See `g_tls_backend_get_default_database()`.
    @inlinable var database: TLSDatabaseRef! {
        /// Gets the certificate database that `conn` uses to verify
        /// peer certificates. See `g_dtls_connection_set_database()`.
        get {
            let rv = TLSDatabaseRef(gconstpointer: gconstpointer(g_dtls_connection_get_database(dtls_connection_ptr)))
            return rv
        }
        /// Sets the certificate database that is used to verify peer certificates.
        /// This is set to the default database by default. See
        /// `g_tls_backend_get_default_database()`. If set to `nil`, then
        /// peer certificate validation will always set the
        /// `G_TLS_CERTIFICATE_UNKNOWN_CA` error (meaning
        /// `GDtlsConnection::accept-certificate` will always be emitted on
        /// client-side connections, unless that bit is not set in
        /// `GDtlsClientConnection:validation-flags`).
        nonmutating set {
            g_dtls_connection_set_database(dtls_connection_ptr, UnsafeMutablePointer<GTlsDatabase>(newValue?.tls_database_ptr))
        }
    }

    /// A `GTlsInteraction` object to be used when the connection or certificate
    /// database need to interact with the user. This will be used to prompt the
    /// user for passwords where necessary.
    @inlinable var interaction: TLSInteractionRef! {
        /// Get the object that will be used to interact with the user. It will be used
        /// for things like prompting the user for passwords. If `nil` is returned, then
        /// no user interaction will occur for this connection.
        get {
            let rv = TLSInteractionRef(gconstpointer: gconstpointer(g_dtls_connection_get_interaction(dtls_connection_ptr)))
            return rv
        }
        /// Set the object that will be used to interact with the user. It will be used
        /// for things like prompting the user for passwords.
        /// 
        /// The `interaction` argument will normally be a derived subclass of
        /// `GTlsInteraction`. `nil` can also be provided if no user interaction
        /// should occur for this connection.
        nonmutating set {
            g_dtls_connection_set_interaction(dtls_connection_ptr, UnsafeMutablePointer<GTlsInteraction>(newValue?.tls_interaction_ptr))
        }
    }

    /// Gets the name of the application-layer protocol negotiated during
    /// the handshake.
    /// 
    /// If the peer did not use the ALPN extension, or did not advertise a
    /// protocol that matched one of `conn`'s protocols, or the TLS backend
    /// does not support ALPN, then this will be `nil`. See
    /// `g_dtls_connection_set_advertised_protocols()`.
    @inlinable var negotiatedProtocol: String! {
        /// Gets the name of the application-layer protocol negotiated during
        /// the handshake.
        /// 
        /// If the peer did not use the ALPN extension, or did not advertise a
        /// protocol that matched one of `conn`'s protocols, or the TLS backend
        /// does not support ALPN, then this will be `nil`. See
        /// `g_dtls_connection_set_advertised_protocols()`.
        get {
            let rv = g_dtls_connection_get_negotiated_protocol(dtls_connection_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets `conn`'s peer's certificate after the handshake has completed
    /// or failed. (It is not set during the emission of
    /// `GDtlsConnection::accept-certificate`.)
    @inlinable var peerCertificate: TLSCertificateRef! {
        /// Gets `conn`'s peer's certificate after the handshake has completed
        /// or failed. (It is not set during the emission of
        /// `GDtlsConnection::accept-certificate`.)
        get {
            let rv = TLSCertificateRef(gconstpointer: gconstpointer(g_dtls_connection_get_peer_certificate(dtls_connection_ptr)))
            return rv
        }
    }

    /// Gets the errors associated with validating `conn`'s peer's
    /// certificate, after the handshake has completed or failed. (It is
    /// not set during the emission of `GDtlsConnection::accept-certificate`.)
    @inlinable var peerCertificateErrors: TLSCertificateFlags {
        /// Gets the errors associated with validating `conn`'s peer's
        /// certificate, after the handshake has completed or failed. (It is
        /// not set during the emission of `GDtlsConnection::accept-certificate`.)
        get {
            let rv = TLSCertificateFlags(g_dtls_connection_get_peer_certificate_errors(dtls_connection_ptr))
            return rv
        }
    }

    /// Returns the current DTLS protocol version, which may be
    /// `G_TLS_PROTOCOL_VERSION_UNKNOWN` if the connection has not handshaked, or
    /// has been closed, or if the TLS backend has implemented a protocol version
    /// that is not a recognized `GTlsProtocolVersion`.
    @inlinable var protocolVersion: GTlsProtocolVersion {
        /// Returns the current DTLS protocol version, which may be
        /// `G_TLS_PROTOCOL_VERSION_UNKNOWN` if the connection has not handshaked, or
        /// has been closed, or if the TLS backend has implemented a protocol version
        /// that is not a recognized `GTlsProtocolVersion`.
        get {
            let rv = g_dtls_connection_get_protocol_version(dtls_connection_ptr)
            return rv
        }
    }

    /// Gets `conn` rehandshaking mode. See
    /// `g_dtls_connection_set_rehandshake_mode()` for details.
    ///
    /// **get_rehandshake_mode is deprecated:**
    /// Changing the rehandshake mode is no longer
    ///   required for compatibility. Also, rehandshaking has been removed
    ///   from the TLS protocol in TLS 1.3.
    @inlinable var rehandshakeMode: GTlsRehandshakeMode {
        /// Gets `conn` rehandshaking mode. See
        /// `g_dtls_connection_set_rehandshake_mode()` for details.
        ///
        /// **get_rehandshake_mode is deprecated:**
        /// Changing the rehandshake mode is no longer
        ///   required for compatibility. Also, rehandshaking has been removed
        ///   from the TLS protocol in TLS 1.3.
        @available(*, deprecated) get {
            let rv = g_dtls_connection_get_rehandshake_mode(dtls_connection_ptr)
            return rv
        }
        /// Since GLib 2.64, changing the rehandshake mode is no longer supported
        /// and will have no effect. With TLS 1.3, rehandshaking has been removed from
        /// the TLS protocol, replaced by separate post-handshake authentication and
        /// rekey operations.
        ///
        /// **set_rehandshake_mode is deprecated:**
        /// Changing the rehandshake mode is no longer
        ///   required for compatibility. Also, rehandshaking has been removed
        ///   from the TLS protocol in TLS 1.3.
        @available(*, deprecated) nonmutating set {
            g_dtls_connection_set_rehandshake_mode(dtls_connection_ptr, newValue)
        }
    }

    /// Tests whether or not `conn` expects a proper TLS close notification
    /// when the connection is closed. See
    /// `g_dtls_connection_set_require_close_notify()` for details.
    @inlinable var requireCloseNotify: Bool {
        /// Tests whether or not `conn` expects a proper TLS close notification
        /// when the connection is closed. See
        /// `g_dtls_connection_set_require_close_notify()` for details.
        get {
            let rv = ((g_dtls_connection_get_require_close_notify(dtls_connection_ptr)) != 0)
            return rv
        }
        /// Sets whether or not `conn` expects a proper TLS close notification
        /// before the connection is closed. If this is `true` (the default),
        /// then `conn` will expect to receive a TLS close notification from its
        /// peer before the connection is closed, and will return a
        /// `G_TLS_ERROR_EOF` error if the connection is closed without proper
        /// notification (since this may indicate a network error, or
        /// man-in-the-middle attack).
        /// 
        /// In some protocols, the application will know whether or not the
        /// connection was closed cleanly based on application-level data
        /// (because the application-level data includes a length field, or is
        /// somehow self-delimiting); in this case, the close notify is
        /// redundant and may be omitted. You
        /// can use `g_dtls_connection_set_require_close_notify()` to tell `conn`
        /// to allow an "unannounced" connection close, in which case the close
        /// will show up as a 0-length read, as in a non-TLS
        /// `GDatagramBased`, and it is up to the application to check that
        /// the data has been fully received.
        /// 
        /// Note that this only affects the behavior when the peer closes the
        /// connection; when the application calls `g_dtls_connection_close_async()` on
        /// `conn` itself, this will send a close notification regardless of the
        /// setting of this property. If you explicitly want to do an unclean
        /// close, you can close `conn`'s `GDtlsConnection:base-socket` rather
        /// than closing `conn` itself.
        nonmutating set {
            g_dtls_connection_set_require_close_notify(dtls_connection_ptr, gboolean((newValue) ? 1 : 0))
        }
    }


}



// MARK: - DtlsServerConnection Interface

/// `GDtlsServerConnection` is the server-side subclass of `GDtlsConnection`,
/// representing a server-side DTLS connection.
///
/// The `DtlsServerConnectionProtocol` protocol exposes the methods and properties of an underlying `GDtlsServerConnection` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DtlsServerConnection`.
/// Alternatively, use `DtlsServerConnectionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DtlsServerConnectionProtocol: DatagramBasedProtocol {
        /// Untyped pointer to the underlying `GDtlsServerConnection` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDtlsServerConnection` instance.
    var dtls_server_connection_ptr: UnsafeMutablePointer<GDtlsServerConnection>! { get }

    /// Required Initialiser for types conforming to `DtlsServerConnectionProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GDtlsServerConnection` is the server-side subclass of `GDtlsConnection`,
/// representing a server-side DTLS connection.
///
/// The `DtlsServerConnectionRef` type acts as a lightweight Swift reference to an underlying `GDtlsServerConnection` instance.
/// It exposes methods that can operate on this data type through `DtlsServerConnectionProtocol` conformance.
/// Use `DtlsServerConnectionRef` only as an `unowned` reference to an existing `GDtlsServerConnection` instance.
///
public struct DtlsServerConnectionRef: DtlsServerConnectionProtocol {
        /// Untyped pointer to the underlying `GDtlsServerConnection` instance.
    /// For type-safe access, use the generated, typed pointer `dtls_server_connection_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DtlsServerConnectionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDtlsServerConnection>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDtlsServerConnection>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDtlsServerConnection>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDtlsServerConnection>?) {
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

    /// Reference intialiser for a related type that implements `DtlsServerConnectionProtocol`
    @inlinable init<T: DtlsServerConnectionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// `GDtlsServerConnection` is the server-side subclass of `GDtlsConnection`,
/// representing a server-side DTLS connection.
///
/// The `DtlsServerConnection` type acts as an owner of an underlying `GDtlsServerConnection` instance.
/// It provides the methods that can operate on this data type through `DtlsServerConnectionProtocol` conformance.
/// Use `DtlsServerConnection` as a strong reference or owner of a `GDtlsServerConnection` instance.
///
open class DtlsServerConnection: DatagramBased, DtlsServerConnectionProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DtlsServerConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDtlsServerConnection>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DtlsServerConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDtlsServerConnection>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DtlsServerConnection` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DtlsServerConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DtlsServerConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDtlsServerConnection>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DtlsServerConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDtlsServerConnection>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GDtlsServerConnection` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `DtlsServerConnection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDtlsServerConnection>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `DtlsServerConnectionProtocol`
    /// `GDtlsServerConnection` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `DtlsServerConnectionProtocol`
    @inlinable public init<T: DtlsServerConnectionProtocol>(dtlsServerConnection other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum DtlsServerConnectionPropertyName: String, PropertyNameProtocol {
    /// The `GTlsAuthenticationMode` for the server. This can be changed
    /// before calling `g_dtls_connection_handshake()` if you want to
    /// rehandshake with a different mode from the initial handshake.
    case authenticationMode = "authentication-mode"
}

public extension DtlsServerConnectionProtocol {
    /// Bind a `DtlsServerConnectionPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: DtlsServerConnectionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a DtlsServerConnection property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: DtlsServerConnectionPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a DtlsServerConnection property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: DtlsServerConnectionPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum DtlsServerConnectionSignalName: String, SignalNameProtocol {

    /// The `GTlsAuthenticationMode` for the server. This can be changed
    /// before calling `g_dtls_connection_handshake()` if you want to
    /// rehandshake with a different mode from the initial handshake.
    case notifyAuthenticationMode = "notify::authentication-mode"
}

// MARK: DtlsServerConnection has no signals
// MARK: DtlsServerConnection Interface: DtlsServerConnectionProtocol extension (methods and fields)
public extension DtlsServerConnectionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDtlsServerConnection` instance.
    @inlinable var dtls_server_connection_ptr: UnsafeMutablePointer<GDtlsServerConnection>! { return ptr?.assumingMemoryBound(to: GDtlsServerConnection.self) }



}



// MARK: - File Interface

/// `GFile` is a high level abstraction for manipulating files on a
/// virtual file system. `GFiles` are lightweight, immutable objects
/// that do no I/O upon creation. It is necessary to understand that
/// `GFile` objects do not represent files, merely an identifier for a
/// file. All file content I/O is implemented as streaming operations
/// (see `GInputStream` and `GOutputStream`).
/// 
/// To construct a `GFile`, you can use:
/// - `g_file_new_for_path()` if you have a path.
/// - `g_file_new_for_uri()` if you have a URI.
/// - `g_file_new_for_commandline_arg()` for a command line argument.
/// - `g_file_new_tmp()` to create a temporary file from a template.
/// - `g_file_parse_name()` from a UTF-8 string gotten from `g_file_get_parse_name()`.
/// - `g_file_new_build_filename()` to create a file from path elements.
/// 
/// One way to think of a `GFile` is as an abstraction of a pathname. For
/// normal files the system pathname is what is stored internally, but as
/// `GFiles` are extensible it could also be something else that corresponds
/// to a pathname in a userspace implementation of a filesystem.
/// 
/// `GFiles` make up hierarchies of directories and files that correspond to
/// the files on a filesystem. You can move through the file system with
/// `GFile` using `g_file_get_parent()` to get an identifier for the parent
/// directory, `g_file_get_child()` to get a child within a directory,
/// `g_file_resolve_relative_path()` to resolve a relative path between two
/// `GFiles`. There can be multiple hierarchies, so you may not end up at
/// the same root if you repeatedly call `g_file_get_parent()` on two different
/// files.
/// 
/// All `GFiles` have a basename (get with `g_file_get_basename()`). These names
/// are byte strings that are used to identify the file on the filesystem
/// (relative to its parent directory) and there is no guarantees that they
/// have any particular charset encoding or even make any sense at all. If
/// you want to use filenames in a user interface you should use the display
/// name that you can get by requesting the
/// `G_FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME` attribute with `g_file_query_info()`.
/// This is guaranteed to be in UTF-8 and can be used in a user interface.
/// But always store the real basename or the `GFile` to use to actually
/// access the file, because there is no way to go from a display name to
/// the actual name.
/// 
/// Using `GFile` as an identifier has the same weaknesses as using a path
/// in that there may be multiple aliases for the same file. For instance,
/// hard or soft links may cause two different `GFiles` to refer to the same
/// file. Other possible causes for aliases are: case insensitive filesystems,
/// short and long names on FAT/NTFS, or bind mounts in Linux. If you want to
/// check if two `GFiles` point to the same file you can query for the
/// `G_FILE_ATTRIBUTE_ID_FILE` attribute. Note that `GFile` does some trivial
/// canonicalization of pathnames passed in, so that trivial differences in
/// the path string used at creation (duplicated slashes, slash at end of
/// path, "." or ".." path segments, etc) does not create different `GFiles`.
/// 
/// Many `GFile` operations have both synchronous and asynchronous versions
/// to suit your application. Asynchronous versions of synchronous functions
/// simply have `_async()` appended to their function names. The asynchronous
/// I/O functions call a `GAsyncReadyCallback` which is then used to finalize
/// the operation, producing a GAsyncResult which is then passed to the
/// function's matching `_finish()` operation.
/// 
/// It is highly recommended to use asynchronous calls when running within a
/// shared main loop, such as in the main thread of an application. This avoids
/// I/O operations blocking other sources on the main loop from being dispatched.
/// Synchronous I/O operations should be performed from worker threads. See the
/// [introduction to asynchronous programming section](#async-programming) for
/// more.
/// 
/// Some `GFile` operations almost always take a noticeable amount of time, and
/// so do not have synchronous analogs. Notable cases include:
/// - `g_file_mount_mountable()` to mount a mountable file.
/// - `g_file_unmount_mountable_with_operation()` to unmount a mountable file.
/// - `g_file_eject_mountable_with_operation()` to eject a mountable file.
/// 
/// ## Entity Tags # <a name="gfile-etag"></a>
/// 
/// One notable feature of `GFiles` are entity tags, or "etags" for
/// short. Entity tags are somewhat like a more abstract version of the
/// traditional mtime, and can be used to quickly determine if the file
/// has been modified from the version on the file system. See the
/// HTTP 1.1
/// [specification](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html)
/// for HTTP Etag headers, which are a very similar concept.
///
/// The `FileProtocol` protocol exposes the methods and properties of an underlying `GFile` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `File`.
/// Alternatively, use `FileRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FileProtocol {
        /// Untyped pointer to the underlying `GFile` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFile` instance.
    var file_ptr: UnsafeMutablePointer<GFile>! { get }

    /// Required Initialiser for types conforming to `FileProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GFile` is a high level abstraction for manipulating files on a
/// virtual file system. `GFiles` are lightweight, immutable objects
/// that do no I/O upon creation. It is necessary to understand that
/// `GFile` objects do not represent files, merely an identifier for a
/// file. All file content I/O is implemented as streaming operations
/// (see `GInputStream` and `GOutputStream`).
/// 
/// To construct a `GFile`, you can use:
/// - `g_file_new_for_path()` if you have a path.
/// - `g_file_new_for_uri()` if you have a URI.
/// - `g_file_new_for_commandline_arg()` for a command line argument.
/// - `g_file_new_tmp()` to create a temporary file from a template.
/// - `g_file_parse_name()` from a UTF-8 string gotten from `g_file_get_parse_name()`.
/// - `g_file_new_build_filename()` to create a file from path elements.
/// 
/// One way to think of a `GFile` is as an abstraction of a pathname. For
/// normal files the system pathname is what is stored internally, but as
/// `GFiles` are extensible it could also be something else that corresponds
/// to a pathname in a userspace implementation of a filesystem.
/// 
/// `GFiles` make up hierarchies of directories and files that correspond to
/// the files on a filesystem. You can move through the file system with
/// `GFile` using `g_file_get_parent()` to get an identifier for the parent
/// directory, `g_file_get_child()` to get a child within a directory,
/// `g_file_resolve_relative_path()` to resolve a relative path between two
/// `GFiles`. There can be multiple hierarchies, so you may not end up at
/// the same root if you repeatedly call `g_file_get_parent()` on two different
/// files.
/// 
/// All `GFiles` have a basename (get with `g_file_get_basename()`). These names
/// are byte strings that are used to identify the file on the filesystem
/// (relative to its parent directory) and there is no guarantees that they
/// have any particular charset encoding or even make any sense at all. If
/// you want to use filenames in a user interface you should use the display
/// name that you can get by requesting the
/// `G_FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME` attribute with `g_file_query_info()`.
/// This is guaranteed to be in UTF-8 and can be used in a user interface.
/// But always store the real basename or the `GFile` to use to actually
/// access the file, because there is no way to go from a display name to
/// the actual name.
/// 
/// Using `GFile` as an identifier has the same weaknesses as using a path
/// in that there may be multiple aliases for the same file. For instance,
/// hard or soft links may cause two different `GFiles` to refer to the same
/// file. Other possible causes for aliases are: case insensitive filesystems,
/// short and long names on FAT/NTFS, or bind mounts in Linux. If you want to
/// check if two `GFiles` point to the same file you can query for the
/// `G_FILE_ATTRIBUTE_ID_FILE` attribute. Note that `GFile` does some trivial
/// canonicalization of pathnames passed in, so that trivial differences in
/// the path string used at creation (duplicated slashes, slash at end of
/// path, "." or ".." path segments, etc) does not create different `GFiles`.
/// 
/// Many `GFile` operations have both synchronous and asynchronous versions
/// to suit your application. Asynchronous versions of synchronous functions
/// simply have `_async()` appended to their function names. The asynchronous
/// I/O functions call a `GAsyncReadyCallback` which is then used to finalize
/// the operation, producing a GAsyncResult which is then passed to the
/// function's matching `_finish()` operation.
/// 
/// It is highly recommended to use asynchronous calls when running within a
/// shared main loop, such as in the main thread of an application. This avoids
/// I/O operations blocking other sources on the main loop from being dispatched.
/// Synchronous I/O operations should be performed from worker threads. See the
/// [introduction to asynchronous programming section](#async-programming) for
/// more.
/// 
/// Some `GFile` operations almost always take a noticeable amount of time, and
/// so do not have synchronous analogs. Notable cases include:
/// - `g_file_mount_mountable()` to mount a mountable file.
/// - `g_file_unmount_mountable_with_operation()` to unmount a mountable file.
/// - `g_file_eject_mountable_with_operation()` to eject a mountable file.
/// 
/// ## Entity Tags # <a name="gfile-etag"></a>
/// 
/// One notable feature of `GFiles` are entity tags, or "etags" for
/// short. Entity tags are somewhat like a more abstract version of the
/// traditional mtime, and can be used to quickly determine if the file
/// has been modified from the version on the file system. See the
/// HTTP 1.1
/// [specification](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html)
/// for HTTP Etag headers, which are a very similar concept.
///
/// The `FileRef` type acts as a lightweight Swift reference to an underlying `GFile` instance.
/// It exposes methods that can operate on this data type through `FileProtocol` conformance.
/// Use `FileRef` only as an `unowned` reference to an existing `GFile` instance.
///
public struct FileRef: FileProtocol {
        /// Untyped pointer to the underlying `GFile` instance.
    /// For type-safe access, use the generated, typed pointer `file_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FileRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GFile>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GFile>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GFile>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GFile>?) {
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

    /// Reference intialiser for a related type that implements `FileProtocol`
    @inlinable init<T: FileProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    
    // *** newBuildFilename() is not available because it has a varargs (...) parameter!


    /// Creates a `GFile` with the given argument from the command line.
    /// The value of `arg` can be either a URI, an absolute path or a
    /// relative path resolved relative to the current working directory.
    /// This operation never fails, but the returned object might not
    /// support any I/O operation if `arg` points to a malformed path.
    /// 
    /// Note that on Windows, this function expects its argument to be in
    /// UTF-8 -- not the system code page.  This means that you
    /// should not use this function with string from argv as it is passed
    /// to `main()`.  `g_win32_get_command_line()` will return a UTF-8 version of
    /// the commandline.  `GApplication` also uses UTF-8 but
    /// `g_application_command_line_create_file_for_arg()` may be more useful
    /// for you there.  It is also always possible to use this function with
    /// `GOptionContext` arguments of type `G_OPTION_ARG_FILENAME`.
    @inlinable static func newForCommandline(commandlineArg arg: UnsafePointer<CChar>!) -> FileRef! {
        guard let rv = FileRef(gconstpointer: gconstpointer(g_file_new_for_commandline_arg(arg))) else { return nil }
        return rv
    }

    /// Creates a `GFile` with the given argument from the command line.
    /// 
    /// This function is similar to `g_file_new_for_commandline_arg()` except
    /// that it allows for passing the current working directory as an
    /// argument instead of using the current working directory of the
    /// process.
    /// 
    /// This is useful if the commandline argument was given in a context
    /// other than the invocation of the current process.
    /// 
    /// See also `g_application_command_line_create_file_for_arg()`.
    @inlinable static func newFor(commandlineArgAndCwd arg: UnsafePointer<gchar>!, cwd: UnsafePointer<gchar>!) -> FileRef! {
        guard let rv = FileRef(gconstpointer: gconstpointer(g_file_new_for_commandline_arg_and_cwd(arg, cwd))) else { return nil }
        return rv
    }

    /// Constructs a `GFile` for a given path. This operation never
    /// fails, but the returned object might not support any I/O
    /// operation if `path` is malformed.
    @inlinable static func newFor(path: UnsafePointer<CChar>!) -> FileRef! {
        guard let rv = FileRef(gconstpointer: gconstpointer(g_file_new_for_path(path))) else { return nil }
        return rv
    }

    /// Constructs a `GFile` for a given URI. This operation never
    /// fails, but the returned object might not support any I/O
    /// operation if `uri` is malformed or if the uri type is
    /// not supported.
    @inlinable static func newFor(uri: UnsafePointer<CChar>!) -> FileRef! {
        guard let rv = FileRef(gconstpointer: gconstpointer(g_file_new_for_uri(uri))) else { return nil }
        return rv
    }

    /// Opens a file in the preferred directory for temporary files (as
    /// returned by `g_get_tmp_dir()`) and returns a `GFile` and
    /// `GFileIOStream` pointing to it.
    /// 
    /// `tmpl` should be a string in the GLib file name encoding
    /// containing a sequence of six 'X' characters, and containing no
    /// directory components. If it is `nil`, a default template is used.
    /// 
    /// Unlike the other `GFile` constructors, this will return `nil` if
    /// a temporary file could not be created.
    @inlinable static func new(tmp tmpl: UnsafePointer<CChar>? = nil, iostream: UnsafeMutablePointer<UnsafeMutablePointer<GFileIOStream>?>!) throws -> FileRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = FileRef(gconstpointer: gconstpointer(g_file_new_tmp(tmpl, iostream, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Constructs a `GFile` with the given `parse_name` (i.e. something
    /// given by `g_file_get_parse_name()`). This operation never fails,
    /// but the returned object might not support any I/O operation if
    /// the `parse_name` cannot be parsed.
    @inlinable static func parseName(parseName: UnsafePointer<CChar>!) -> FileRef! {
        guard let rv = FileRef(gconstpointer: gconstpointer(g_file_parse_name(parseName))) else { return nil }
        return rv
    }
}

/// `GFile` is a high level abstraction for manipulating files on a
/// virtual file system. `GFiles` are lightweight, immutable objects
/// that do no I/O upon creation. It is necessary to understand that
/// `GFile` objects do not represent files, merely an identifier for a
/// file. All file content I/O is implemented as streaming operations
/// (see `GInputStream` and `GOutputStream`).
/// 
/// To construct a `GFile`, you can use:
/// - `g_file_new_for_path()` if you have a path.
/// - `g_file_new_for_uri()` if you have a URI.
/// - `g_file_new_for_commandline_arg()` for a command line argument.
/// - `g_file_new_tmp()` to create a temporary file from a template.
/// - `g_file_parse_name()` from a UTF-8 string gotten from `g_file_get_parse_name()`.
/// - `g_file_new_build_filename()` to create a file from path elements.
/// 
/// One way to think of a `GFile` is as an abstraction of a pathname. For
/// normal files the system pathname is what is stored internally, but as
/// `GFiles` are extensible it could also be something else that corresponds
/// to a pathname in a userspace implementation of a filesystem.
/// 
/// `GFiles` make up hierarchies of directories and files that correspond to
/// the files on a filesystem. You can move through the file system with
/// `GFile` using `g_file_get_parent()` to get an identifier for the parent
/// directory, `g_file_get_child()` to get a child within a directory,
/// `g_file_resolve_relative_path()` to resolve a relative path between two
/// `GFiles`. There can be multiple hierarchies, so you may not end up at
/// the same root if you repeatedly call `g_file_get_parent()` on two different
/// files.
/// 
/// All `GFiles` have a basename (get with `g_file_get_basename()`). These names
/// are byte strings that are used to identify the file on the filesystem
/// (relative to its parent directory) and there is no guarantees that they
/// have any particular charset encoding or even make any sense at all. If
/// you want to use filenames in a user interface you should use the display
/// name that you can get by requesting the
/// `G_FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME` attribute with `g_file_query_info()`.
/// This is guaranteed to be in UTF-8 and can be used in a user interface.
/// But always store the real basename or the `GFile` to use to actually
/// access the file, because there is no way to go from a display name to
/// the actual name.
/// 
/// Using `GFile` as an identifier has the same weaknesses as using a path
/// in that there may be multiple aliases for the same file. For instance,
/// hard or soft links may cause two different `GFiles` to refer to the same
/// file. Other possible causes for aliases are: case insensitive filesystems,
/// short and long names on FAT/NTFS, or bind mounts in Linux. If you want to
/// check if two `GFiles` point to the same file you can query for the
/// `G_FILE_ATTRIBUTE_ID_FILE` attribute. Note that `GFile` does some trivial
/// canonicalization of pathnames passed in, so that trivial differences in
/// the path string used at creation (duplicated slashes, slash at end of
/// path, "." or ".." path segments, etc) does not create different `GFiles`.
/// 
/// Many `GFile` operations have both synchronous and asynchronous versions
/// to suit your application. Asynchronous versions of synchronous functions
/// simply have `_async()` appended to their function names. The asynchronous
/// I/O functions call a `GAsyncReadyCallback` which is then used to finalize
/// the operation, producing a GAsyncResult which is then passed to the
/// function's matching `_finish()` operation.
/// 
/// It is highly recommended to use asynchronous calls when running within a
/// shared main loop, such as in the main thread of an application. This avoids
/// I/O operations blocking other sources on the main loop from being dispatched.
/// Synchronous I/O operations should be performed from worker threads. See the
/// [introduction to asynchronous programming section](#async-programming) for
/// more.
/// 
/// Some `GFile` operations almost always take a noticeable amount of time, and
/// so do not have synchronous analogs. Notable cases include:
/// - `g_file_mount_mountable()` to mount a mountable file.
/// - `g_file_unmount_mountable_with_operation()` to unmount a mountable file.
/// - `g_file_eject_mountable_with_operation()` to eject a mountable file.
/// 
/// ## Entity Tags # <a name="gfile-etag"></a>
/// 
/// One notable feature of `GFiles` are entity tags, or "etags" for
/// short. Entity tags are somewhat like a more abstract version of the
/// traditional mtime, and can be used to quickly determine if the file
/// has been modified from the version on the file system. See the
/// HTTP 1.1
/// [specification](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html)
/// for HTTP Etag headers, which are a very similar concept.
///
/// The `File` type acts as an owner of an underlying `GFile` instance.
/// It provides the methods that can operate on this data type through `FileProtocol` conformance.
/// Use `File` as a strong reference or owner of a `GFile` instance.
///
open class File: FileProtocol {
        /// Untyped pointer to the underlying `GFile` instance.
    /// For type-safe access, use the generated, typed pointer `file_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `File` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GFile>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `File` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GFile>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `File` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `File` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `File` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GFile>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `File` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GFile>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GFile` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `File` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GFile>) {
        ptr = UnsafeMutableRawPointer(op)
        g_object_ref(ptr)
    }

    /// Reference intialiser for a related type that implements `FileProtocol`
    /// `GFile` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FileProtocol`
    @inlinable public init<T: FileProtocol>(_ other: T) {
        ptr = other.ptr
        g_object_ref(ptr)
    }

    /// Do-nothing destructor for `GFile`.
    deinit {
        g_object_unref(ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_object_ref(ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_object_ref(ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_object_ref(ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_object_ref(ptr)
    }



    // *** newBuildFilename() is not available because it has a varargs (...) parameter!


    /// Creates a `GFile` with the given argument from the command line.
    /// The value of `arg` can be either a URI, an absolute path or a
    /// relative path resolved relative to the current working directory.
    /// This operation never fails, but the returned object might not
    /// support any I/O operation if `arg` points to a malformed path.
    /// 
    /// Note that on Windows, this function expects its argument to be in
    /// UTF-8 -- not the system code page.  This means that you
    /// should not use this function with string from argv as it is passed
    /// to `main()`.  `g_win32_get_command_line()` will return a UTF-8 version of
    /// the commandline.  `GApplication` also uses UTF-8 but
    /// `g_application_command_line_create_file_for_arg()` may be more useful
    /// for you there.  It is also always possible to use this function with
    /// `GOptionContext` arguments of type `G_OPTION_ARG_FILENAME`.
    @inlinable public static func newForCommandline(commandlineArg arg: UnsafePointer<CChar>!) -> File! {
        guard let rv = File(gconstpointer: gconstpointer(g_file_new_for_commandline_arg(arg))) else { return nil }
        return rv
    }

    /// Creates a `GFile` with the given argument from the command line.
    /// 
    /// This function is similar to `g_file_new_for_commandline_arg()` except
    /// that it allows for passing the current working directory as an
    /// argument instead of using the current working directory of the
    /// process.
    /// 
    /// This is useful if the commandline argument was given in a context
    /// other than the invocation of the current process.
    /// 
    /// See also `g_application_command_line_create_file_for_arg()`.
    @inlinable public static func newFor(commandlineArgAndCwd arg: UnsafePointer<gchar>!, cwd: UnsafePointer<gchar>!) -> File! {
        guard let rv = File(gconstpointer: gconstpointer(g_file_new_for_commandline_arg_and_cwd(arg, cwd))) else { return nil }
        return rv
    }

    /// Constructs a `GFile` for a given path. This operation never
    /// fails, but the returned object might not support any I/O
    /// operation if `path` is malformed.
    @inlinable public static func newFor(path: UnsafePointer<CChar>!) -> File! {
        guard let rv = File(gconstpointer: gconstpointer(g_file_new_for_path(path))) else { return nil }
        return rv
    }

    /// Constructs a `GFile` for a given URI. This operation never
    /// fails, but the returned object might not support any I/O
    /// operation if `uri` is malformed or if the uri type is
    /// not supported.
    @inlinable public static func newFor(uri: UnsafePointer<CChar>!) -> File! {
        guard let rv = File(gconstpointer: gconstpointer(g_file_new_for_uri(uri))) else { return nil }
        return rv
    }

    /// Opens a file in the preferred directory for temporary files (as
    /// returned by `g_get_tmp_dir()`) and returns a `GFile` and
    /// `GFileIOStream` pointing to it.
    /// 
    /// `tmpl` should be a string in the GLib file name encoding
    /// containing a sequence of six 'X' characters, and containing no
    /// directory components. If it is `nil`, a default template is used.
    /// 
    /// Unlike the other `GFile` constructors, this will return `nil` if
    /// a temporary file could not be created.
    @inlinable public static func new(tmp tmpl: UnsafePointer<CChar>? = nil, iostream: UnsafeMutablePointer<UnsafeMutablePointer<GFileIOStream>?>!) throws -> File! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = File(gconstpointer: gconstpointer(g_file_new_tmp(tmpl, iostream, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Constructs a `GFile` with the given `parse_name` (i.e. something
    /// given by `g_file_get_parse_name()`). This operation never fails,
    /// but the returned object might not support any I/O operation if
    /// the `parse_name` cannot be parsed.
    @inlinable public static func parseName(parseName: UnsafePointer<CChar>!) -> File! {
        guard let rv = File(gconstpointer: gconstpointer(g_file_parse_name(parseName))) else { return nil }
        return rv
    }

}

// MARK: no File properties

// MARK: no File signals

// MARK: File has no signals
// MARK: File Interface: FileProtocol extension (methods and fields)
public extension FileProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFile` instance.
    @inlinable var file_ptr: UnsafeMutablePointer<GFile>! { return ptr?.assumingMemoryBound(to: GFile.self) }

    /// Gets an output stream for appending data to the file.
    /// If the file doesn't already exist it is created.
    /// 
    /// By default files created are generally readable by everyone,
    /// but if you pass `G_FILE_CREATE_PRIVATE` in `flags` the file
    /// will be made readable only to the current user, to the level that
    /// is supported on the target filesystem.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled
    /// by triggering the cancellable object from another thread. If the
    /// operation was cancelled, the error `G_IO_ERROR_CANCELLED` will be
    /// returned.
    /// 
    /// Some file systems don't allow all file names, and may return an
    /// `G_IO_ERROR_INVALID_FILENAME` error. If the file is a directory the
    /// `G_IO_ERROR_IS_DIRECTORY` error will be returned. Other errors are
    /// possible too, and depend on what kind of filesystem the file is on.
    @inlinable func appendTo(flags: FileCreateFlags, cancellable: CancellableRef? = nil) throws -> FileOutputStreamRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileOutputStreamRef(gconstpointer: gconstpointer(g_file_append_to(file_ptr, flags.value, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Gets an output stream for appending data to the file.
    /// If the file doesn't already exist it is created.
    /// 
    /// By default files created are generally readable by everyone,
    /// but if you pass `G_FILE_CREATE_PRIVATE` in `flags` the file
    /// will be made readable only to the current user, to the level that
    /// is supported on the target filesystem.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled
    /// by triggering the cancellable object from another thread. If the
    /// operation was cancelled, the error `G_IO_ERROR_CANCELLED` will be
    /// returned.
    /// 
    /// Some file systems don't allow all file names, and may return an
    /// `G_IO_ERROR_INVALID_FILENAME` error. If the file is a directory the
    /// `G_IO_ERROR_IS_DIRECTORY` error will be returned. Other errors are
    /// possible too, and depend on what kind of filesystem the file is on.
    @inlinable func appendTo<CancellableT: CancellableProtocol>(flags: FileCreateFlags, cancellable: CancellableT?) throws -> FileOutputStreamRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileOutputStreamRef(gconstpointer: gconstpointer(g_file_append_to(file_ptr, flags.value, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously opens `file` for appending.
    /// 
    /// For more details, see `g_file_append_to()` which is
    /// the synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_append_to_finish()` to get the result
    /// of the operation.
    @inlinable func appendToAsync(flags: FileCreateFlags, ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_append_to_async(file_ptr, flags.value, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously opens `file` for appending.
    /// 
    /// For more details, see `g_file_append_to()` which is
    /// the synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_append_to_finish()` to get the result
    /// of the operation.
    @inlinable func appendToAsync<CancellableT: CancellableProtocol>(flags: FileCreateFlags, ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_append_to_async(file_ptr, flags.value, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an asynchronous file append operation started with
    /// `g_file_append_to_async()`.
    @inlinable func appendToFinish<AsyncResultT: AsyncResultProtocol>(res: AsyncResultT) throws -> FileOutputStreamRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileOutputStreamRef(gconstpointer: gconstpointer(g_file_append_to_finish(file_ptr, res.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Prepares the file attribute query string for copying to `file`.
    /// 
    /// This function prepares an attribute query string to be
    /// passed to `g_file_query_info()` to get a list of attributes
    /// normally copied with the file (see `g_file_copy_attributes()`
    /// for the detailed description). This function is used by the
    /// implementation of `g_file_copy_attributes()` and is useful
    /// when one needs to query and set the attributes in two
    /// stages (e.g., for recursive move of a directory).
    @inlinable func buildAttributeListForCopy(flags: FileCopyFlags, cancellable: CancellableRef? = nil) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_file_build_attribute_list_for_copy(file_ptr, flags.value, cancellable?.cancellable_ptr, &error).map({ String(cString: $0) })
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Prepares the file attribute query string for copying to `file`.
    /// 
    /// This function prepares an attribute query string to be
    /// passed to `g_file_query_info()` to get a list of attributes
    /// normally copied with the file (see `g_file_copy_attributes()`
    /// for the detailed description). This function is used by the
    /// implementation of `g_file_copy_attributes()` and is useful
    /// when one needs to query and set the attributes in two
    /// stages (e.g., for recursive move of a directory).
    @inlinable func buildAttributeListForCopy<CancellableT: CancellableProtocol>(flags: FileCopyFlags, cancellable: CancellableT?) throws -> String! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_file_build_attribute_list_for_copy(file_ptr, flags.value, cancellable?.cancellable_ptr, &error).map({ String(cString: $0) })
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Copies the file `source` to the location specified by `destination`.
    /// Can not handle recursive copies of directories.
    /// 
    /// If the flag `G_FILE_COPY_OVERWRITE` is specified an already
    /// existing `destination` file is overwritten.
    /// 
    /// If the flag `G_FILE_COPY_NOFOLLOW_SYMLINKS` is specified then symlinks
    /// will be copied as symlinks, otherwise the target of the
    /// `source` symlink will be copied.
    /// 
    /// If the flag `G_FILE_COPY_ALL_METADATA` is specified then all the metadata
    /// that is possible to copy is copied, not just the default subset (which,
    /// for instance, does not include the owner, see `GFileInfo`).
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    /// 
    /// If `progress_callback` is not `nil`, then the operation can be monitored
    /// by setting this to a `GFileProgressCallback` function.
    /// `progress_callback_data` will be passed to this function. It is guaranteed
    /// that this callback will be called after all data has been transferred with
    /// the total number of bytes copied during the operation.
    /// 
    /// If the `source` file does not exist, then the `G_IO_ERROR_NOT_FOUND` error
    /// is returned, independent on the status of the `destination`.
    /// 
    /// If `G_FILE_COPY_OVERWRITE` is not specified and the target exists, then
    /// the error `G_IO_ERROR_EXISTS` is returned.
    /// 
    /// If trying to overwrite a file over a directory, the `G_IO_ERROR_IS_DIRECTORY`
    /// error is returned. If trying to overwrite a directory with a directory the
    /// `G_IO_ERROR_WOULD_MERGE` error is returned.
    /// 
    /// If the source is a directory and the target does not exist, or
    /// `G_FILE_COPY_OVERWRITE` is specified and the target is a file, then the
    /// `G_IO_ERROR_WOULD_RECURSE` error is returned.
    /// 
    /// If you are interested in copying the `GFile` object itself (not the on-disk
    /// file), see `g_file_dup()`.
    @inlinable func copy<FileT: FileProtocol>(destination: FileT, flags: FileCopyFlags, cancellable: CancellableRef? = nil, progressCallback: GFileProgressCallback? = nil, progressCallbackData: gpointer! = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_copy(file_ptr, destination.file_ptr, flags.value, cancellable?.cancellable_ptr, progressCallback, progressCallbackData, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Copies the file `source` to the location specified by `destination`.
    /// Can not handle recursive copies of directories.
    /// 
    /// If the flag `G_FILE_COPY_OVERWRITE` is specified an already
    /// existing `destination` file is overwritten.
    /// 
    /// If the flag `G_FILE_COPY_NOFOLLOW_SYMLINKS` is specified then symlinks
    /// will be copied as symlinks, otherwise the target of the
    /// `source` symlink will be copied.
    /// 
    /// If the flag `G_FILE_COPY_ALL_METADATA` is specified then all the metadata
    /// that is possible to copy is copied, not just the default subset (which,
    /// for instance, does not include the owner, see `GFileInfo`).
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    /// 
    /// If `progress_callback` is not `nil`, then the operation can be monitored
    /// by setting this to a `GFileProgressCallback` function.
    /// `progress_callback_data` will be passed to this function. It is guaranteed
    /// that this callback will be called after all data has been transferred with
    /// the total number of bytes copied during the operation.
    /// 
    /// If the `source` file does not exist, then the `G_IO_ERROR_NOT_FOUND` error
    /// is returned, independent on the status of the `destination`.
    /// 
    /// If `G_FILE_COPY_OVERWRITE` is not specified and the target exists, then
    /// the error `G_IO_ERROR_EXISTS` is returned.
    /// 
    /// If trying to overwrite a file over a directory, the `G_IO_ERROR_IS_DIRECTORY`
    /// error is returned. If trying to overwrite a directory with a directory the
    /// `G_IO_ERROR_WOULD_MERGE` error is returned.
    /// 
    /// If the source is a directory and the target does not exist, or
    /// `G_FILE_COPY_OVERWRITE` is specified and the target is a file, then the
    /// `G_IO_ERROR_WOULD_RECURSE` error is returned.
    /// 
    /// If you are interested in copying the `GFile` object itself (not the on-disk
    /// file), see `g_file_dup()`.
    @inlinable func copy<CancellableT: CancellableProtocol, FileT: FileProtocol>(destination: FileT, flags: FileCopyFlags, cancellable: CancellableT?, progressCallback: GFileProgressCallback? = nil, progressCallbackData: gpointer! = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_copy(file_ptr, destination.file_ptr, flags.value, cancellable?.cancellable_ptr, progressCallback, progressCallbackData, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Copies the file `source` to the location specified by `destination`
    /// asynchronously. For details of the behaviour, see `g_file_copy()`.
    /// 
    /// If `progress_callback` is not `nil`, then that function that will be called
    /// just like in `g_file_copy()`. The callback will run in the default main context
    /// of the thread calling `g_file_copy_async()` — the same context as `callback` is
    /// run in.
    /// 
    /// When the operation is finished, `callback` will be called. You can then call
    /// `g_file_copy_finish()` to get the result of the operation.
    @inlinable func copyAsync<FileT: FileProtocol>(destination: FileT, flags: FileCopyFlags, ioPriority: Int, cancellable: CancellableRef? = nil, progressCallback: GFileProgressCallback? = nil, progressCallbackData: gpointer! = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_copy_async(file_ptr, destination.file_ptr, flags.value, gint(ioPriority), cancellable?.cancellable_ptr, progressCallback, progressCallbackData, callback, userData)
    
    }
    /// Copies the file `source` to the location specified by `destination`
    /// asynchronously. For details of the behaviour, see `g_file_copy()`.
    /// 
    /// If `progress_callback` is not `nil`, then that function that will be called
    /// just like in `g_file_copy()`. The callback will run in the default main context
    /// of the thread calling `g_file_copy_async()` — the same context as `callback` is
    /// run in.
    /// 
    /// When the operation is finished, `callback` will be called. You can then call
    /// `g_file_copy_finish()` to get the result of the operation.
    @inlinable func copyAsync<CancellableT: CancellableProtocol, FileT: FileProtocol>(destination: FileT, flags: FileCopyFlags, ioPriority: Int, cancellable: CancellableT?, progressCallback: GFileProgressCallback? = nil, progressCallbackData: gpointer! = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_copy_async(file_ptr, destination.file_ptr, flags.value, gint(ioPriority), cancellable?.cancellable_ptr, progressCallback, progressCallbackData, callback, userData)
    
    }

    /// Copies the file attributes from `source` to `destination`.
    /// 
    /// Normally only a subset of the file attributes are copied,
    /// those that are copies in a normal file copy operation
    /// (which for instance does not include e.g. owner). However
    /// if `G_FILE_COPY_ALL_METADATA` is specified in `flags`, then
    /// all the metadata that is possible to copy is copied. This
    /// is useful when implementing move by copy + delete source.
    @inlinable func copyAttributes<FileT: FileProtocol>(destination: FileT, flags: FileCopyFlags, cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_copy_attributes(file_ptr, destination.file_ptr, flags.value, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Copies the file attributes from `source` to `destination`.
    /// 
    /// Normally only a subset of the file attributes are copied,
    /// those that are copies in a normal file copy operation
    /// (which for instance does not include e.g. owner). However
    /// if `G_FILE_COPY_ALL_METADATA` is specified in `flags`, then
    /// all the metadata that is possible to copy is copied. This
    /// is useful when implementing move by copy + delete source.
    @inlinable func copyAttributes<CancellableT: CancellableProtocol, FileT: FileProtocol>(destination: FileT, flags: FileCopyFlags, cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_copy_attributes(file_ptr, destination.file_ptr, flags.value, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Finishes copying the file started with `g_file_copy_async()`.
    @inlinable func copyFinish<AsyncResultT: AsyncResultProtocol>(res: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_copy_finish(file_ptr, res.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Creates a new file and returns an output stream for writing to it.
    /// The file must not already exist.
    /// 
    /// By default files created are generally readable by everyone,
    /// but if you pass `G_FILE_CREATE_PRIVATE` in `flags` the file
    /// will be made readable only to the current user, to the level
    /// that is supported on the target filesystem.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled
    /// by triggering the cancellable object from another thread. If the
    /// operation was cancelled, the error `G_IO_ERROR_CANCELLED` will be
    /// returned.
    /// 
    /// If a file or directory with this name already exists the
    /// `G_IO_ERROR_EXISTS` error will be returned. Some file systems don't
    /// allow all file names, and may return an `G_IO_ERROR_INVALID_FILENAME`
    /// error, and if the name is to long `G_IO_ERROR_FILENAME_TOO_LONG` will
    /// be returned. Other errors are possible too, and depend on what kind
    /// of filesystem the file is on.
    @inlinable func create(flags: FileCreateFlags, cancellable: CancellableRef? = nil) throws -> FileOutputStreamRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileOutputStreamRef(gconstpointer: gconstpointer(g_file_create(file_ptr, flags.value, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Creates a new file and returns an output stream for writing to it.
    /// The file must not already exist.
    /// 
    /// By default files created are generally readable by everyone,
    /// but if you pass `G_FILE_CREATE_PRIVATE` in `flags` the file
    /// will be made readable only to the current user, to the level
    /// that is supported on the target filesystem.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled
    /// by triggering the cancellable object from another thread. If the
    /// operation was cancelled, the error `G_IO_ERROR_CANCELLED` will be
    /// returned.
    /// 
    /// If a file or directory with this name already exists the
    /// `G_IO_ERROR_EXISTS` error will be returned. Some file systems don't
    /// allow all file names, and may return an `G_IO_ERROR_INVALID_FILENAME`
    /// error, and if the name is to long `G_IO_ERROR_FILENAME_TOO_LONG` will
    /// be returned. Other errors are possible too, and depend on what kind
    /// of filesystem the file is on.
    @inlinable func create<CancellableT: CancellableProtocol>(flags: FileCreateFlags, cancellable: CancellableT?) throws -> FileOutputStreamRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileOutputStreamRef(gconstpointer: gconstpointer(g_file_create(file_ptr, flags.value, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously creates a new file and returns an output stream
    /// for writing to it. The file must not already exist.
    /// 
    /// For more details, see `g_file_create()` which is
    /// the synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_create_finish()` to get the result
    /// of the operation.
    @inlinable func createAsync(flags: FileCreateFlags, ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_create_async(file_ptr, flags.value, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously creates a new file and returns an output stream
    /// for writing to it. The file must not already exist.
    /// 
    /// For more details, see `g_file_create()` which is
    /// the synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_create_finish()` to get the result
    /// of the operation.
    @inlinable func createAsync<CancellableT: CancellableProtocol>(flags: FileCreateFlags, ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_create_async(file_ptr, flags.value, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an asynchronous file create operation started with
    /// `g_file_create_async()`.
    @inlinable func createFinish<AsyncResultT: AsyncResultProtocol>(res: AsyncResultT) throws -> FileOutputStreamRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileOutputStreamRef(gconstpointer: gconstpointer(g_file_create_finish(file_ptr, res.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Creates a new file and returns a stream for reading and
    /// writing to it. The file must not already exist.
    /// 
    /// By default files created are generally readable by everyone,
    /// but if you pass `G_FILE_CREATE_PRIVATE` in `flags` the file
    /// will be made readable only to the current user, to the level
    /// that is supported on the target filesystem.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled
    /// by triggering the cancellable object from another thread. If the
    /// operation was cancelled, the error `G_IO_ERROR_CANCELLED` will be
    /// returned.
    /// 
    /// If a file or directory with this name already exists, the
    /// `G_IO_ERROR_EXISTS` error will be returned. Some file systems don't
    /// allow all file names, and may return an `G_IO_ERROR_INVALID_FILENAME`
    /// error, and if the name is too long, `G_IO_ERROR_FILENAME_TOO_LONG`
    /// will be returned. Other errors are possible too, and depend on what
    /// kind of filesystem the file is on.
    /// 
    /// Note that in many non-local file cases read and write streams are
    /// not supported, so make sure you really need to do read and write
    /// streaming, rather than just opening for reading or writing.
    @inlinable func createReadwrite(flags: FileCreateFlags, cancellable: CancellableRef? = nil) throws -> FileIOStreamRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileIOStreamRef(gconstpointer: gconstpointer(g_file_create_readwrite(file_ptr, flags.value, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Creates a new file and returns a stream for reading and
    /// writing to it. The file must not already exist.
    /// 
    /// By default files created are generally readable by everyone,
    /// but if you pass `G_FILE_CREATE_PRIVATE` in `flags` the file
    /// will be made readable only to the current user, to the level
    /// that is supported on the target filesystem.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled
    /// by triggering the cancellable object from another thread. If the
    /// operation was cancelled, the error `G_IO_ERROR_CANCELLED` will be
    /// returned.
    /// 
    /// If a file or directory with this name already exists, the
    /// `G_IO_ERROR_EXISTS` error will be returned. Some file systems don't
    /// allow all file names, and may return an `G_IO_ERROR_INVALID_FILENAME`
    /// error, and if the name is too long, `G_IO_ERROR_FILENAME_TOO_LONG`
    /// will be returned. Other errors are possible too, and depend on what
    /// kind of filesystem the file is on.
    /// 
    /// Note that in many non-local file cases read and write streams are
    /// not supported, so make sure you really need to do read and write
    /// streaming, rather than just opening for reading or writing.
    @inlinable func createReadwrite<CancellableT: CancellableProtocol>(flags: FileCreateFlags, cancellable: CancellableT?) throws -> FileIOStreamRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileIOStreamRef(gconstpointer: gconstpointer(g_file_create_readwrite(file_ptr, flags.value, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously creates a new file and returns a stream
    /// for reading and writing to it. The file must not already exist.
    /// 
    /// For more details, see `g_file_create_readwrite()` which is
    /// the synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_create_readwrite_finish()` to get
    /// the result of the operation.
    @inlinable func createReadwriteAsync(flags: FileCreateFlags, ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_create_readwrite_async(file_ptr, flags.value, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously creates a new file and returns a stream
    /// for reading and writing to it. The file must not already exist.
    /// 
    /// For more details, see `g_file_create_readwrite()` which is
    /// the synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_create_readwrite_finish()` to get
    /// the result of the operation.
    @inlinable func createReadwriteAsync<CancellableT: CancellableProtocol>(flags: FileCreateFlags, ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_create_readwrite_async(file_ptr, flags.value, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an asynchronous file create operation started with
    /// `g_file_create_readwrite_async()`.
    @inlinable func createReadwriteFinish<AsyncResultT: AsyncResultProtocol>(res: AsyncResultT) throws -> FileIOStreamRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileIOStreamRef(gconstpointer: gconstpointer(g_file_create_readwrite_finish(file_ptr, res.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Deletes a file. If the `file` is a directory, it will only be
    /// deleted if it is empty. This has the same semantics as `g_unlink()`.
    /// 
    /// If `file` doesn’t exist, `G_IO_ERROR_NOT_FOUND` will be returned. This allows
    /// for deletion to be implemented avoiding
    /// [time-of-check to time-of-use races](https://en.wikipedia.org/wiki/Time-of-check_to_time-of-use):
    /// ```
    /// g_autoptr(GError) local_error = NULL;
    /// if (!g_file_delete (my_file, my_cancellable, &local_error) &&
    ///     !g_error_matches (local_error, G_IO_ERROR, G_IO_ERROR_NOT_FOUND))
    ///   {
    ///     // deletion failed for some reason other than the file not existing:
    ///     // so report the error
    ///     g_warning ("Failed to delete %s: %s",
    ///                g_file_peek_path (my_file), local_error->message);
    ///   }
    /// ```
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func delete(cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_delete(file_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Deletes a file. If the `file` is a directory, it will only be
    /// deleted if it is empty. This has the same semantics as `g_unlink()`.
    /// 
    /// If `file` doesn’t exist, `G_IO_ERROR_NOT_FOUND` will be returned. This allows
    /// for deletion to be implemented avoiding
    /// [time-of-check to time-of-use races](https://en.wikipedia.org/wiki/Time-of-check_to_time-of-use):
    /// ```
    /// g_autoptr(GError) local_error = NULL;
    /// if (!g_file_delete (my_file, my_cancellable, &local_error) &&
    ///     !g_error_matches (local_error, G_IO_ERROR, G_IO_ERROR_NOT_FOUND))
    ///   {
    ///     // deletion failed for some reason other than the file not existing:
    ///     // so report the error
    ///     g_warning ("Failed to delete %s: %s",
    ///                g_file_peek_path (my_file), local_error->message);
    ///   }
    /// ```
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func delete<CancellableT: CancellableProtocol>(cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_delete(file_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously delete a file. If the `file` is a directory, it will
    /// only be deleted if it is empty.  This has the same semantics as
    /// `g_unlink()`.
    @inlinable func deleteAsync(ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_delete_async(file_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously delete a file. If the `file` is a directory, it will
    /// only be deleted if it is empty.  This has the same semantics as
    /// `g_unlink()`.
    @inlinable func deleteAsync<CancellableT: CancellableProtocol>(ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_delete_async(file_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes deleting a file started with `g_file_delete_async()`.
    @inlinable func deleteFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_delete_finish(file_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Duplicates a `GFile` handle. This operation does not duplicate
    /// the actual file or directory represented by the `GFile`; see
    /// `g_file_copy()` if attempting to copy a file.
    /// 
    /// `g_file_dup()` is useful when a second handle is needed to the same underlying
    /// file, for use in a separate thread (`GFile` is not thread-safe). For use
    /// within the same thread, use `g_object_ref()` to increment the existing object’s
    /// reference count.
    /// 
    /// This call does no blocking I/O.
    @inlinable func dup() -> FileRef! {
        guard let rv = FileRef(gconstpointer: gconstpointer(g_file_dup(file_ptr))) else { return nil }
        return rv
    }

    /// Starts an asynchronous eject on a mountable.
    /// When this operation has completed, `callback` will be called with
    /// `user_user` data, and the operation can be finalized with
    /// `g_file_eject_mountable_finish()`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    ///
    /// **eject_mountable is deprecated:**
    /// Use g_file_eject_mountable_with_operation() instead.
    @available(*, deprecated) @inlinable func ejectMountable(flags: MountUnmountFlags, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_eject_mountable(file_ptr, flags.value, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Starts an asynchronous eject on a mountable.
    /// When this operation has completed, `callback` will be called with
    /// `user_user` data, and the operation can be finalized with
    /// `g_file_eject_mountable_finish()`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    ///
    /// **eject_mountable is deprecated:**
    /// Use g_file_eject_mountable_with_operation() instead.
    @available(*, deprecated) @inlinable func ejectMountable<CancellableT: CancellableProtocol>(flags: MountUnmountFlags, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_eject_mountable(file_ptr, flags.value, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an asynchronous eject operation started by
    /// `g_file_eject_mountable()`.
    ///
    /// **eject_mountable_finish is deprecated:**
    /// Use g_file_eject_mountable_with_operation_finish()
    ///     instead.
    @available(*, deprecated) @inlinable func ejectMountableFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_eject_mountable_finish(file_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Starts an asynchronous eject on a mountable.
    /// When this operation has completed, `callback` will be called with
    /// `user_user` data, and the operation can be finalized with
    /// `g_file_eject_mountable_with_operation_finish()`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func ejectMountableWithOperation(flags: MountUnmountFlags, mountOperation: MountOperationRef? = nil, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_eject_mountable_with_operation(file_ptr, flags.value, mountOperation?.mount_operation_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Starts an asynchronous eject on a mountable.
    /// When this operation has completed, `callback` will be called with
    /// `user_user` data, and the operation can be finalized with
    /// `g_file_eject_mountable_with_operation_finish()`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func ejectMountableWithOperation<CancellableT: CancellableProtocol, MountOperationT: MountOperationProtocol>(flags: MountUnmountFlags, mountOperation: MountOperationT?, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_eject_mountable_with_operation(file_ptr, flags.value, mountOperation?.mount_operation_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an asynchronous eject operation started by
    /// `g_file_eject_mountable_with_operation()`.
    @inlinable func ejectMountableWithOperationFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_eject_mountable_with_operation_finish(file_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Gets the requested information about the files in a directory.
    /// The result is a `GFileEnumerator` object that will give out
    /// `GFileInfo` objects for all the files in the directory.
    /// 
    /// The `attributes` value is a string that specifies the file
    /// attributes that should be gathered. It is not an error if
    /// it's not possible to read a particular requested attribute
    /// from a file - it just won't be set. `attributes` should
    /// be a comma-separated list of attributes or attribute wildcards.
    /// The wildcard "*" means all attributes, and a wildcard like
    /// "standard``*" means all attributes in the standard namespace.
    /// An example attribute query be "standard``*,owner`user`".
    /// The standard attributes are available as defines, like
    /// `G_FILE_ATTRIBUTE_STANDARD_NAME`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled
    /// by triggering the cancellable object from another thread. If the
    /// operation was cancelled, the error `G_IO_ERROR_CANCELLED` will be
    /// returned.
    /// 
    /// If the file does not exist, the `G_IO_ERROR_NOT_FOUND` error will
    /// be returned. If the file is not a directory, the `G_IO_ERROR_NOT_DIRECTORY`
    /// error will be returned. Other errors are possible too.
    @inlinable func enumerateChildren(attributes: UnsafePointer<CChar>!, flags: FileQueryInfoFlags, cancellable: CancellableRef? = nil) throws -> FileEnumeratorRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileEnumeratorRef(gconstpointer: gconstpointer(g_file_enumerate_children(file_ptr, attributes, flags.value, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Gets the requested information about the files in a directory.
    /// The result is a `GFileEnumerator` object that will give out
    /// `GFileInfo` objects for all the files in the directory.
    /// 
    /// The `attributes` value is a string that specifies the file
    /// attributes that should be gathered. It is not an error if
    /// it's not possible to read a particular requested attribute
    /// from a file - it just won't be set. `attributes` should
    /// be a comma-separated list of attributes or attribute wildcards.
    /// The wildcard "*" means all attributes, and a wildcard like
    /// "standard``*" means all attributes in the standard namespace.
    /// An example attribute query be "standard``*,owner`user`".
    /// The standard attributes are available as defines, like
    /// `G_FILE_ATTRIBUTE_STANDARD_NAME`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled
    /// by triggering the cancellable object from another thread. If the
    /// operation was cancelled, the error `G_IO_ERROR_CANCELLED` will be
    /// returned.
    /// 
    /// If the file does not exist, the `G_IO_ERROR_NOT_FOUND` error will
    /// be returned. If the file is not a directory, the `G_IO_ERROR_NOT_DIRECTORY`
    /// error will be returned. Other errors are possible too.
    @inlinable func enumerateChildren<CancellableT: CancellableProtocol>(attributes: UnsafePointer<CChar>!, flags: FileQueryInfoFlags, cancellable: CancellableT?) throws -> FileEnumeratorRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileEnumeratorRef(gconstpointer: gconstpointer(g_file_enumerate_children(file_ptr, attributes, flags.value, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously gets the requested information about the files
    /// in a directory. The result is a `GFileEnumerator` object that will
    /// give out `GFileInfo` objects for all the files in the directory.
    /// 
    /// For more details, see `g_file_enumerate_children()` which is
    /// the synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called. You can
    /// then call `g_file_enumerate_children_finish()` to get the result of
    /// the operation.
    @inlinable func enumerateChildrenAsync(attributes: UnsafePointer<CChar>!, flags: FileQueryInfoFlags, ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_enumerate_children_async(file_ptr, attributes, flags.value, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously gets the requested information about the files
    /// in a directory. The result is a `GFileEnumerator` object that will
    /// give out `GFileInfo` objects for all the files in the directory.
    /// 
    /// For more details, see `g_file_enumerate_children()` which is
    /// the synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called. You can
    /// then call `g_file_enumerate_children_finish()` to get the result of
    /// the operation.
    @inlinable func enumerateChildrenAsync<CancellableT: CancellableProtocol>(attributes: UnsafePointer<CChar>!, flags: FileQueryInfoFlags, ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_enumerate_children_async(file_ptr, attributes, flags.value, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an async enumerate children operation.
    /// See `g_file_enumerate_children_async()`.
    @inlinable func enumerateChildrenFinish<AsyncResultT: AsyncResultProtocol>(res: AsyncResultT) throws -> FileEnumeratorRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileEnumeratorRef(gconstpointer: gconstpointer(g_file_enumerate_children_finish(file_ptr, res.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Checks if the two given `GFiles` refer to the same file.
    /// 
    /// Note that two `GFiles` that differ can still refer to the same
    /// file on the filesystem due to various forms of filename
    /// aliasing.
    /// 
    /// This call does no blocking I/O.
    @inlinable func equal<FileT: FileProtocol>(file2: FileT) -> Bool {
        let rv = ((g_file_equal(file_ptr, file2.file_ptr)) != 0)
        return rv
    }

    /// Gets a `GMount` for the `GFile`.
    /// 
    /// `GMount` is returned only for user interesting locations, see
    /// `GVolumeMonitor`. If the `GFileIface` for `file` does not have a `mount`,
    /// `error` will be set to `G_IO_ERROR_NOT_FOUND` and `nil` `will` be returned.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func findEnclosingMount(cancellable: CancellableRef? = nil) throws -> MountRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = MountRef(gconstpointer: gconstpointer(g_file_find_enclosing_mount(file_ptr, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Gets a `GMount` for the `GFile`.
    /// 
    /// `GMount` is returned only for user interesting locations, see
    /// `GVolumeMonitor`. If the `GFileIface` for `file` does not have a `mount`,
    /// `error` will be set to `G_IO_ERROR_NOT_FOUND` and `nil` `will` be returned.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func findEnclosingMount<CancellableT: CancellableProtocol>(cancellable: CancellableT?) throws -> MountRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = MountRef(gconstpointer: gconstpointer(g_file_find_enclosing_mount(file_ptr, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously gets the mount for the file.
    /// 
    /// For more details, see `g_file_find_enclosing_mount()` which is
    /// the synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_find_enclosing_mount_finish()` to
    /// get the result of the operation.
    @inlinable func findEnclosingMountAsync(ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_find_enclosing_mount_async(file_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously gets the mount for the file.
    /// 
    /// For more details, see `g_file_find_enclosing_mount()` which is
    /// the synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_find_enclosing_mount_finish()` to
    /// get the result of the operation.
    @inlinable func findEnclosingMountAsync<CancellableT: CancellableProtocol>(ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_find_enclosing_mount_async(file_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an asynchronous find mount request.
    /// See `g_file_find_enclosing_mount_async()`.
    @inlinable func findEnclosingMountFinish<AsyncResultT: AsyncResultProtocol>(res: AsyncResultT) throws -> MountRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = MountRef(gconstpointer: gconstpointer(g_file_find_enclosing_mount_finish(file_ptr, res.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Gets the base name (the last component of the path) for a given `GFile`.
    /// 
    /// If called for the top level of a system (such as the filesystem root
    /// or a uri like sftp://host/) it will return a single directory separator
    /// (and on Windows, possibly a drive letter).
    /// 
    /// The base name is a byte string (not UTF-8). It has no defined encoding
    /// or rules other than it may not contain zero bytes.  If you want to use
    /// filenames in a user interface you should use the display name that you
    /// can get by requesting the `G_FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME`
    /// attribute with `g_file_query_info()`.
    /// 
    /// This call does no blocking I/O.
    @inlinable func getBasename() -> String! {
        let rv = g_file_get_basename(file_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets a child of `file` with basename equal to `name`.
    /// 
    /// Note that the file with that specific name might not exist, but
    /// you can still have a `GFile` that points to it. You can use this
    /// for instance to create that file.
    /// 
    /// This call does no blocking I/O.
    @inlinable func getChild(name: UnsafePointer<CChar>!) -> FileRef! {
        guard let rv = FileRef(gconstpointer: gconstpointer(g_file_get_child(file_ptr, name))) else { return nil }
        return rv
    }

    /// Gets the child of `file` for a given `display_name` (i.e. a UTF-8
    /// version of the name). If this function fails, it returns `nil`
    /// and `error` will be set. This is very useful when constructing a
    /// `GFile` for a new file and the user entered the filename in the
    /// user interface, for instance when you select a directory and
    /// type a filename in the file selector.
    /// 
    /// This call does no blocking I/O.
    @inlinable func getChildFor(displayName: UnsafePointer<CChar>!) throws -> FileRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = FileRef(gconstpointer: gconstpointer(g_file_get_child_for_display_name(file_ptr, displayName, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Gets the parent directory for the `file`.
    /// If the `file` represents the root directory of the
    /// file system, then `nil` will be returned.
    /// 
    /// This call does no blocking I/O.
    @inlinable func getParent() -> FileRef! {
        guard let rv = FileRef(gconstpointer: gconstpointer(g_file_get_parent(file_ptr))) else { return nil }
        return rv
    }

    /// Gets the parse name of the `file`.
    /// A parse name is a UTF-8 string that describes the
    /// file such that one can get the `GFile` back using
    /// `g_file_parse_name()`.
    /// 
    /// This is generally used to show the `GFile` as a nice
    /// full-pathname kind of string in a user interface,
    /// like in a location entry.
    /// 
    /// For local files with names that can safely be converted
    /// to UTF-8 the pathname is used, otherwise the IRI is used
    /// (a form of URI that allows UTF-8 characters unescaped).
    /// 
    /// This call does no blocking I/O.
    @inlinable func getParseName() -> String! {
        let rv = g_file_get_parse_name(file_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the local pathname for `GFile`, if one exists. If non-`nil`, this is
    /// guaranteed to be an absolute, canonical path. It might contain symlinks.
    /// 
    /// This call does no blocking I/O.
    @inlinable func getPath() -> String! {
        let rv = g_file_get_path(file_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the path for `descendant` relative to `parent`.
    /// 
    /// This call does no blocking I/O.
    @inlinable func getRelativePath<FileT: FileProtocol>(descendant: FileT) -> String! {
        let rv = g_file_get_relative_path(file_ptr, descendant.file_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the URI for the `file`.
    /// 
    /// This call does no blocking I/O.
    @inlinable func getURI() -> String! {
        let rv = g_file_get_uri(file_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the URI scheme for a `GFile`.
    /// RFC 3986 decodes the scheme as:
    /// ```
    /// URI = scheme ":" hier-part [ "?" query ] [ "#" fragment ]
    /// ```
    /// Common schemes include "file", "http", "ftp", etc.
    /// 
    /// The scheme can be different from the one used to construct the `GFile`,
    /// in that it might be replaced with one that is logically equivalent to the `GFile`.
    /// 
    /// This call does no blocking I/O.
    @inlinable func getURIScheme() -> String! {
        let rv = g_file_get_uri_scheme(file_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Checks if `file` has a parent, and optionally, if it is `parent`.
    /// 
    /// If `parent` is `nil` then this function returns `true` if `file` has any
    /// parent at all.  If `parent` is non-`nil` then `true` is only returned
    /// if `file` is an immediate child of `parent`.
    @inlinable func has(parent: FileRef? = nil) -> Bool {
        let rv = ((g_file_has_parent(file_ptr, parent?.file_ptr)) != 0)
        return rv
    }
    /// Checks if `file` has a parent, and optionally, if it is `parent`.
    /// 
    /// If `parent` is `nil` then this function returns `true` if `file` has any
    /// parent at all.  If `parent` is non-`nil` then `true` is only returned
    /// if `file` is an immediate child of `parent`.
    @inlinable func has<FileT: FileProtocol>(parent: FileT?) -> Bool {
        let rv = ((g_file_has_parent(file_ptr, parent?.file_ptr)) != 0)
        return rv
    }

    /// Checks whether `file` has the prefix specified by `prefix`.
    /// 
    /// In other words, if the names of initial elements of `file`'s
    /// pathname match `prefix`. Only full pathname elements are matched,
    /// so a path like /foo is not considered a prefix of /foobar, only
    /// of /foo/bar.
    /// 
    /// A `GFile` is not a prefix of itself. If you want to check for
    /// equality, use `g_file_equal()`.
    /// 
    /// This call does no I/O, as it works purely on names. As such it can
    /// sometimes return `false` even if `file` is inside a `prefix` (from a
    /// filesystem point of view), because the prefix of `file` is an alias
    /// of `prefix`.
    @inlinable func hasPrefix<FileT: FileProtocol>(`prefix`: FileT) -> Bool {
        let rv = ((g_file_has_prefix(file_ptr, `prefix`.file_ptr)) != 0)
        return rv
    }

    /// Checks to see if a `GFile` has a given URI scheme.
    /// 
    /// This call does no blocking I/O.
    @inlinable func has(uriScheme: UnsafePointer<CChar>!) -> Bool {
        let rv = ((g_file_has_uri_scheme(file_ptr, uriScheme)) != 0)
        return rv
    }

    /// Creates a hash value for a `GFile`.
    /// 
    /// This call does no blocking I/O.
    @inlinable func hash() -> Int {
        let rv = Int(g_file_hash(file_ptr))
        return rv
    }

    /// Loads the contents of `file` and returns it as `GBytes`.
    /// 
    /// If `file` is a resource:// based URI, the resulting bytes will reference the
    /// embedded resource instead of a copy. Otherwise, this is equivalent to calling
    /// `g_file_load_contents()` and `g_bytes_new_take()`.
    /// 
    /// For resources, `etag_out` will be set to `nil`.
    /// 
    /// The data contained in the resulting `GBytes` is always zero-terminated, but
    /// this is not included in the `GBytes` length. The resulting `GBytes` should be
    /// freed with `g_bytes_unref()` when no longer in use.
    @inlinable func loadBytes(cancellable: CancellableRef? = nil, etagOut: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>? = nil) throws -> GLib.BytesRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = GLib.BytesRef(g_file_load_bytes(file_ptr, cancellable?.cancellable_ptr, etagOut, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Loads the contents of `file` and returns it as `GBytes`.
    /// 
    /// If `file` is a resource:// based URI, the resulting bytes will reference the
    /// embedded resource instead of a copy. Otherwise, this is equivalent to calling
    /// `g_file_load_contents()` and `g_bytes_new_take()`.
    /// 
    /// For resources, `etag_out` will be set to `nil`.
    /// 
    /// The data contained in the resulting `GBytes` is always zero-terminated, but
    /// this is not included in the `GBytes` length. The resulting `GBytes` should be
    /// freed with `g_bytes_unref()` when no longer in use.
    @inlinable func loadBytes<CancellableT: CancellableProtocol>(cancellable: CancellableT?, etagOut: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>? = nil) throws -> GLib.BytesRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = GLib.BytesRef(g_file_load_bytes(file_ptr, cancellable?.cancellable_ptr, etagOut, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously loads the contents of `file` as `GBytes`.
    /// 
    /// If `file` is a resource:// based URI, the resulting bytes will reference the
    /// embedded resource instead of a copy. Otherwise, this is equivalent to calling
    /// `g_file_load_contents_async()` and `g_bytes_new_take()`.
    /// 
    /// `callback` should call `g_file_load_bytes_finish()` to get the result of this
    /// asynchronous operation.
    /// 
    /// See `g_file_load_bytes()` for more information.
    @inlinable func loadBytesAsync(cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_load_bytes_async(file_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously loads the contents of `file` as `GBytes`.
    /// 
    /// If `file` is a resource:// based URI, the resulting bytes will reference the
    /// embedded resource instead of a copy. Otherwise, this is equivalent to calling
    /// `g_file_load_contents_async()` and `g_bytes_new_take()`.
    /// 
    /// `callback` should call `g_file_load_bytes_finish()` to get the result of this
    /// asynchronous operation.
    /// 
    /// See `g_file_load_bytes()` for more information.
    @inlinable func loadBytesAsync<CancellableT: CancellableProtocol>(cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_load_bytes_async(file_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Completes an asynchronous request to `g_file_load_bytes_async()`.
    /// 
    /// For resources, `etag_out` will be set to `nil`.
    /// 
    /// The data contained in the resulting `GBytes` is always zero-terminated, but
    /// this is not included in the `GBytes` length. The resulting `GBytes` should be
    /// freed with `g_bytes_unref()` when no longer in use.
    /// 
    /// See `g_file_load_bytes()` for more information.
    @inlinable func loadBytesFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT, etagOut: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>? = nil) throws -> GLib.BytesRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = GLib.BytesRef(g_file_load_bytes_finish(file_ptr, result.async_result_ptr, etagOut, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Loads the content of the file into memory. The data is always
    /// zero-terminated, but this is not included in the resultant `length`.
    /// The returned `contents` should be freed with `g_free()` when no longer
    /// needed.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func loadContents(cancellable: CancellableRef? = nil, contents: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!, length: UnsafeMutablePointer<gsize>! = nil, etagOut: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_load_contents(file_ptr, cancellable?.cancellable_ptr, contents, length, etagOut, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Loads the content of the file into memory. The data is always
    /// zero-terminated, but this is not included in the resultant `length`.
    /// The returned `contents` should be freed with `g_free()` when no longer
    /// needed.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func loadContents<CancellableT: CancellableProtocol>(cancellable: CancellableT?, contents: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!, length: UnsafeMutablePointer<gsize>! = nil, etagOut: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_load_contents(file_ptr, cancellable?.cancellable_ptr, contents, length, etagOut, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Starts an asynchronous load of the `file`'s contents.
    /// 
    /// For more details, see `g_file_load_contents()` which is
    /// the synchronous version of this call.
    /// 
    /// When the load operation has completed, `callback` will be called
    /// with `user` data. To finish the operation, call
    /// `g_file_load_contents_finish()` with the `GAsyncResult` returned by
    /// the `callback`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func loadContentsAsync(cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_load_contents_async(file_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Starts an asynchronous load of the `file`'s contents.
    /// 
    /// For more details, see `g_file_load_contents()` which is
    /// the synchronous version of this call.
    /// 
    /// When the load operation has completed, `callback` will be called
    /// with `user` data. To finish the operation, call
    /// `g_file_load_contents_finish()` with the `GAsyncResult` returned by
    /// the `callback`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func loadContentsAsync<CancellableT: CancellableProtocol>(cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_load_contents_async(file_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an asynchronous load of the `file`'s contents.
    /// The contents are placed in `contents`, and `length` is set to the
    /// size of the `contents` string. The `contents` should be freed with
    /// `g_free()` when no longer needed. If `etag_out` is present, it will be
    /// set to the new entity tag for the `file`.
    @inlinable func loadContentsFinish<AsyncResultT: AsyncResultProtocol>(res: AsyncResultT, contents: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!, length: UnsafeMutablePointer<gsize>! = nil, etagOut: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_load_contents_finish(file_ptr, res.async_result_ptr, contents, length, etagOut, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Reads the partial contents of a file. A `GFileReadMoreCallback` should
    /// be used to stop reading from the file when appropriate, else this
    /// function will behave exactly as `g_file_load_contents_async()`. This
    /// operation can be finished by `g_file_load_partial_contents_finish()`.
    /// 
    /// Users of this function should be aware that `user_data` is passed to
    /// both the `read_more_callback` and the `callback`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func loadPartialContentsAsync(cancellable: CancellableRef? = nil, readMoreCallback: GFileReadMoreCallback?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_load_partial_contents_async(file_ptr, cancellable?.cancellable_ptr, readMoreCallback, callback, userData)
    
    }
    /// Reads the partial contents of a file. A `GFileReadMoreCallback` should
    /// be used to stop reading from the file when appropriate, else this
    /// function will behave exactly as `g_file_load_contents_async()`. This
    /// operation can be finished by `g_file_load_partial_contents_finish()`.
    /// 
    /// Users of this function should be aware that `user_data` is passed to
    /// both the `read_more_callback` and the `callback`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func loadPartialContentsAsync<CancellableT: CancellableProtocol>(cancellable: CancellableT?, readMoreCallback: GFileReadMoreCallback?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_load_partial_contents_async(file_ptr, cancellable?.cancellable_ptr, readMoreCallback, callback, userData)
    
    }

    /// Finishes an asynchronous partial load operation that was started
    /// with `g_file_load_partial_contents_async()`. The data is always
    /// zero-terminated, but this is not included in the resultant `length`.
    /// The returned `contents` should be freed with `g_free()` when no longer
    /// needed.
    @inlinable func loadPartialContentsFinish<AsyncResultT: AsyncResultProtocol>(res: AsyncResultT, contents: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!, length: UnsafeMutablePointer<gsize>! = nil, etagOut: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_load_partial_contents_finish(file_ptr, res.async_result_ptr, contents, length, etagOut, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Creates a directory. Note that this will only create a child directory
    /// of the immediate parent directory of the path or URI given by the `GFile`.
    /// To recursively create directories, see `g_file_make_directory_with_parents()`.
    /// This function will fail if the parent directory does not exist, setting
    /// `error` to `G_IO_ERROR_NOT_FOUND`. If the file system doesn't support
    /// creating directories, this function will fail, setting `error` to
    /// `G_IO_ERROR_NOT_SUPPORTED`.
    /// 
    /// For a local `GFile` the newly created directory will have the default
    /// (current) ownership and permissions of the current process.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func makeDirectory(cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_make_directory(file_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Creates a directory. Note that this will only create a child directory
    /// of the immediate parent directory of the path or URI given by the `GFile`.
    /// To recursively create directories, see `g_file_make_directory_with_parents()`.
    /// This function will fail if the parent directory does not exist, setting
    /// `error` to `G_IO_ERROR_NOT_FOUND`. If the file system doesn't support
    /// creating directories, this function will fail, setting `error` to
    /// `G_IO_ERROR_NOT_SUPPORTED`.
    /// 
    /// For a local `GFile` the newly created directory will have the default
    /// (current) ownership and permissions of the current process.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func makeDirectory<CancellableT: CancellableProtocol>(cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_make_directory(file_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously creates a directory.
    @inlinable func makeDirectoryAsync(ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_make_directory_async(file_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously creates a directory.
    @inlinable func makeDirectoryAsync<CancellableT: CancellableProtocol>(ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_make_directory_async(file_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an asynchronous directory creation, started with
    /// `g_file_make_directory_async()`.
    @inlinable func makeDirectoryFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_make_directory_finish(file_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Creates a directory and any parent directories that may not
    /// exist similar to 'mkdir -p'. If the file system does not support
    /// creating directories, this function will fail, setting `error` to
    /// `G_IO_ERROR_NOT_SUPPORTED`. If the directory itself already exists,
    /// this function will fail setting `error` to `G_IO_ERROR_EXISTS`, unlike
    /// the similar `g_mkdir_with_parents()`.
    /// 
    /// For a local `GFile` the newly created directories will have the default
    /// (current) ownership and permissions of the current process.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func makeDirectoryWithParents(cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_make_directory_with_parents(file_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Creates a directory and any parent directories that may not
    /// exist similar to 'mkdir -p'. If the file system does not support
    /// creating directories, this function will fail, setting `error` to
    /// `G_IO_ERROR_NOT_SUPPORTED`. If the directory itself already exists,
    /// this function will fail setting `error` to `G_IO_ERROR_EXISTS`, unlike
    /// the similar `g_mkdir_with_parents()`.
    /// 
    /// For a local `GFile` the newly created directories will have the default
    /// (current) ownership and permissions of the current process.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func makeDirectoryWithParents<CancellableT: CancellableProtocol>(cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_make_directory_with_parents(file_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Creates a symbolic link named `file` which contains the string
    /// `symlink_value`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func makeSymbolicLink(symlinkValue: UnsafePointer<CChar>!, cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_make_symbolic_link(file_ptr, symlinkValue, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Creates a symbolic link named `file` which contains the string
    /// `symlink_value`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func makeSymbolicLink<CancellableT: CancellableProtocol>(symlinkValue: UnsafePointer<CChar>!, cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_make_symbolic_link(file_ptr, symlinkValue, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Recursively measures the disk usage of `file`.
    /// 
    /// This is essentially an analog of the 'du' command, but it also
    /// reports the number of directories and non-directory files encountered
    /// (including things like symbolic links).
    /// 
    /// By default, errors are only reported against the toplevel file
    /// itself.  Errors found while recursing are silently ignored, unless
    /// `G_FILE_MEASURE_REPORT_ANY_ERROR` is given in `flags`.
    /// 
    /// The returned size, `disk_usage`, is in bytes and should be formatted
    /// with `g_format_size()` in order to get something reasonable for showing
    /// in a user interface.
    /// 
    /// `progress_callback` and `progress_data` can be given to request
    /// periodic progress updates while scanning.  See the documentation for
    /// `GFileMeasureProgressCallback` for information about when and how the
    /// callback will be invoked.
    @inlinable func measureDiskUsage(flags: FileMeasureFlags, cancellable: CancellableRef? = nil, progressCallback: GFileMeasureProgressCallback? = nil, progressData: gpointer! = nil, diskUsage: UnsafeMutablePointer<guint64>! = nil, numDirs: UnsafeMutablePointer<guint64>! = nil, numFiles: UnsafeMutablePointer<guint64>! = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_measure_disk_usage(file_ptr, flags.value, cancellable?.cancellable_ptr, progressCallback, progressData, diskUsage, numDirs, numFiles, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Recursively measures the disk usage of `file`.
    /// 
    /// This is essentially an analog of the 'du' command, but it also
    /// reports the number of directories and non-directory files encountered
    /// (including things like symbolic links).
    /// 
    /// By default, errors are only reported against the toplevel file
    /// itself.  Errors found while recursing are silently ignored, unless
    /// `G_FILE_MEASURE_REPORT_ANY_ERROR` is given in `flags`.
    /// 
    /// The returned size, `disk_usage`, is in bytes and should be formatted
    /// with `g_format_size()` in order to get something reasonable for showing
    /// in a user interface.
    /// 
    /// `progress_callback` and `progress_data` can be given to request
    /// periodic progress updates while scanning.  See the documentation for
    /// `GFileMeasureProgressCallback` for information about when and how the
    /// callback will be invoked.
    @inlinable func measureDiskUsage<CancellableT: CancellableProtocol>(flags: FileMeasureFlags, cancellable: CancellableT?, progressCallback: GFileMeasureProgressCallback? = nil, progressData: gpointer! = nil, diskUsage: UnsafeMutablePointer<guint64>! = nil, numDirs: UnsafeMutablePointer<guint64>! = nil, numFiles: UnsafeMutablePointer<guint64>! = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_measure_disk_usage(file_ptr, flags.value, cancellable?.cancellable_ptr, progressCallback, progressData, diskUsage, numDirs, numFiles, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Recursively measures the disk usage of `file`.
    /// 
    /// This is the asynchronous version of `g_file_measure_disk_usage()`.  See
    /// there for more information.
    @inlinable func measureDiskUsageAsync(flags: FileMeasureFlags, ioPriority: Int, cancellable: CancellableRef? = nil, progressCallback: GFileMeasureProgressCallback? = nil, progressData: gpointer! = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_measure_disk_usage_async(file_ptr, flags.value, gint(ioPriority), cancellable?.cancellable_ptr, progressCallback, progressData, callback, userData)
    
    }
    /// Recursively measures the disk usage of `file`.
    /// 
    /// This is the asynchronous version of `g_file_measure_disk_usage()`.  See
    /// there for more information.
    @inlinable func measureDiskUsageAsync<CancellableT: CancellableProtocol>(flags: FileMeasureFlags, ioPriority: Int, cancellable: CancellableT?, progressCallback: GFileMeasureProgressCallback? = nil, progressData: gpointer! = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_measure_disk_usage_async(file_ptr, flags.value, gint(ioPriority), cancellable?.cancellable_ptr, progressCallback, progressData, callback, userData)
    
    }

    /// Collects the results from an earlier call to
    /// `g_file_measure_disk_usage_async()`.  See `g_file_measure_disk_usage()` for
    /// more information.
    @inlinable func measureDiskUsageFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT, diskUsage: UnsafeMutablePointer<guint64>! = nil, numDirs: UnsafeMutablePointer<guint64>! = nil, numFiles: UnsafeMutablePointer<guint64>! = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_measure_disk_usage_finish(file_ptr, result.async_result_ptr, diskUsage, numDirs, numFiles, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Obtains a file or directory monitor for the given file,
    /// depending on the type of the file.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func monitor(flags: FileMonitorFlags, cancellable: CancellableRef? = nil) throws -> FileMonitorRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileMonitorRef(gconstpointer: gconstpointer(g_file_monitor(file_ptr, flags.value, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Obtains a file or directory monitor for the given file,
    /// depending on the type of the file.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func monitor<CancellableT: CancellableProtocol>(flags: FileMonitorFlags, cancellable: CancellableT?) throws -> FileMonitorRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileMonitorRef(gconstpointer: gconstpointer(g_file_monitor(file_ptr, flags.value, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Obtains a directory monitor for the given file.
    /// This may fail if directory monitoring is not supported.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    /// 
    /// It does not make sense for `flags` to contain
    /// `G_FILE_MONITOR_WATCH_HARD_LINKS`, since hard links can not be made to
    /// directories.  It is not possible to monitor all the files in a
    /// directory for changes made via hard links; if you want to do this then
    /// you must register individual watches with `g_file_monitor()`.
    @inlinable func monitorDirectory(flags: FileMonitorFlags, cancellable: CancellableRef? = nil) throws -> FileMonitorRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileMonitorRef(gconstpointer: gconstpointer(g_file_monitor_directory(file_ptr, flags.value, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Obtains a directory monitor for the given file.
    /// This may fail if directory monitoring is not supported.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    /// 
    /// It does not make sense for `flags` to contain
    /// `G_FILE_MONITOR_WATCH_HARD_LINKS`, since hard links can not be made to
    /// directories.  It is not possible to monitor all the files in a
    /// directory for changes made via hard links; if you want to do this then
    /// you must register individual watches with `g_file_monitor()`.
    @inlinable func monitorDirectory<CancellableT: CancellableProtocol>(flags: FileMonitorFlags, cancellable: CancellableT?) throws -> FileMonitorRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileMonitorRef(gconstpointer: gconstpointer(g_file_monitor_directory(file_ptr, flags.value, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Obtains a file monitor for the given file. If no file notification
    /// mechanism exists, then regular polling of the file is used.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    /// 
    /// If `flags` contains `G_FILE_MONITOR_WATCH_HARD_LINKS` then the monitor
    /// will also attempt to report changes made to the file via another
    /// filename (ie, a hard link). Without this flag, you can only rely on
    /// changes made through the filename contained in `file` to be
    /// reported. Using this flag may result in an increase in resource
    /// usage, and may not have any effect depending on the `GFileMonitor`
    /// backend and/or filesystem type.
    @inlinable func monitorFile(flags: FileMonitorFlags, cancellable: CancellableRef? = nil) throws -> FileMonitorRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileMonitorRef(gconstpointer: gconstpointer(g_file_monitor_file(file_ptr, flags.value, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Obtains a file monitor for the given file. If no file notification
    /// mechanism exists, then regular polling of the file is used.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    /// 
    /// If `flags` contains `G_FILE_MONITOR_WATCH_HARD_LINKS` then the monitor
    /// will also attempt to report changes made to the file via another
    /// filename (ie, a hard link). Without this flag, you can only rely on
    /// changes made through the filename contained in `file` to be
    /// reported. Using this flag may result in an increase in resource
    /// usage, and may not have any effect depending on the `GFileMonitor`
    /// backend and/or filesystem type.
    @inlinable func monitorFile<CancellableT: CancellableProtocol>(flags: FileMonitorFlags, cancellable: CancellableT?) throws -> FileMonitorRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileMonitorRef(gconstpointer: gconstpointer(g_file_monitor_file(file_ptr, flags.value, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Starts a `mount_operation`, mounting the volume that contains
    /// the file `location`.
    /// 
    /// When this operation has completed, `callback` will be called with
    /// `user_user` data, and the operation can be finalized with
    /// `g_file_mount_enclosing_volume_finish()`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func mountEnclosingVolume(flags: MountMountFlags, mountOperation: MountOperationRef? = nil, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_mount_enclosing_volume(file_ptr, flags.value, mountOperation?.mount_operation_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Starts a `mount_operation`, mounting the volume that contains
    /// the file `location`.
    /// 
    /// When this operation has completed, `callback` will be called with
    /// `user_user` data, and the operation can be finalized with
    /// `g_file_mount_enclosing_volume_finish()`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func mountEnclosingVolume<CancellableT: CancellableProtocol, MountOperationT: MountOperationProtocol>(flags: MountMountFlags, mountOperation: MountOperationT?, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_mount_enclosing_volume(file_ptr, flags.value, mountOperation?.mount_operation_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes a mount operation started by `g_file_mount_enclosing_volume()`.
    @inlinable func mountEnclosingVolumeFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_mount_enclosing_volume_finish(file_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Mounts a file of type G_FILE_TYPE_MOUNTABLE.
    /// Using `mount_operation`, you can request callbacks when, for instance,
    /// passwords are needed during authentication.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_mount_mountable_finish()` to get
    /// the result of the operation.
    @inlinable func mountMountable(flags: MountMountFlags, mountOperation: MountOperationRef? = nil, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_mount_mountable(file_ptr, flags.value, mountOperation?.mount_operation_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Mounts a file of type G_FILE_TYPE_MOUNTABLE.
    /// Using `mount_operation`, you can request callbacks when, for instance,
    /// passwords are needed during authentication.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_mount_mountable_finish()` to get
    /// the result of the operation.
    @inlinable func mountMountable<CancellableT: CancellableProtocol, MountOperationT: MountOperationProtocol>(flags: MountMountFlags, mountOperation: MountOperationT?, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_mount_mountable(file_ptr, flags.value, mountOperation?.mount_operation_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes a mount operation. See `g_file_mount_mountable()` for details.
    /// 
    /// Finish an asynchronous mount operation that was started
    /// with `g_file_mount_mountable()`.
    @inlinable func mountMountableFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> FileRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = FileRef(gconstpointer: gconstpointer(g_file_mount_mountable_finish(file_ptr, result.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Tries to move the file or directory `source` to the location specified
    /// by `destination`. If native move operations are supported then this is
    /// used, otherwise a copy + delete fallback is used. The native
    /// implementation may support moving directories (for instance on moves
    /// inside the same filesystem), but the fallback code does not.
    /// 
    /// If the flag `G_FILE_COPY_OVERWRITE` is specified an already
    /// existing `destination` file is overwritten.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    /// 
    /// If `progress_callback` is not `nil`, then the operation can be monitored
    /// by setting this to a `GFileProgressCallback` function.
    /// `progress_callback_data` will be passed to this function. It is
    /// guaranteed that this callback will be called after all data has been
    /// transferred with the total number of bytes copied during the operation.
    /// 
    /// If the `source` file does not exist, then the `G_IO_ERROR_NOT_FOUND`
    /// error is returned, independent on the status of the `destination`.
    /// 
    /// If `G_FILE_COPY_OVERWRITE` is not specified and the target exists,
    /// then the error `G_IO_ERROR_EXISTS` is returned.
    /// 
    /// If trying to overwrite a file over a directory, the `G_IO_ERROR_IS_DIRECTORY`
    /// error is returned. If trying to overwrite a directory with a directory the
    /// `G_IO_ERROR_WOULD_MERGE` error is returned.
    /// 
    /// If the source is a directory and the target does not exist, or
    /// `G_FILE_COPY_OVERWRITE` is specified and the target is a file, then
    /// the `G_IO_ERROR_WOULD_RECURSE` error may be returned (if the native
    /// move operation isn't available).
    @inlinable func move<FileT: FileProtocol>(destination: FileT, flags: FileCopyFlags, cancellable: CancellableRef? = nil, progressCallback: GFileProgressCallback? = nil, progressCallbackData: gpointer! = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_move(file_ptr, destination.file_ptr, flags.value, cancellable?.cancellable_ptr, progressCallback, progressCallbackData, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Tries to move the file or directory `source` to the location specified
    /// by `destination`. If native move operations are supported then this is
    /// used, otherwise a copy + delete fallback is used. The native
    /// implementation may support moving directories (for instance on moves
    /// inside the same filesystem), but the fallback code does not.
    /// 
    /// If the flag `G_FILE_COPY_OVERWRITE` is specified an already
    /// existing `destination` file is overwritten.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    /// 
    /// If `progress_callback` is not `nil`, then the operation can be monitored
    /// by setting this to a `GFileProgressCallback` function.
    /// `progress_callback_data` will be passed to this function. It is
    /// guaranteed that this callback will be called after all data has been
    /// transferred with the total number of bytes copied during the operation.
    /// 
    /// If the `source` file does not exist, then the `G_IO_ERROR_NOT_FOUND`
    /// error is returned, independent on the status of the `destination`.
    /// 
    /// If `G_FILE_COPY_OVERWRITE` is not specified and the target exists,
    /// then the error `G_IO_ERROR_EXISTS` is returned.
    /// 
    /// If trying to overwrite a file over a directory, the `G_IO_ERROR_IS_DIRECTORY`
    /// error is returned. If trying to overwrite a directory with a directory the
    /// `G_IO_ERROR_WOULD_MERGE` error is returned.
    /// 
    /// If the source is a directory and the target does not exist, or
    /// `G_FILE_COPY_OVERWRITE` is specified and the target is a file, then
    /// the `G_IO_ERROR_WOULD_RECURSE` error may be returned (if the native
    /// move operation isn't available).
    @inlinable func move<CancellableT: CancellableProtocol, FileT: FileProtocol>(destination: FileT, flags: FileCopyFlags, cancellable: CancellableT?, progressCallback: GFileProgressCallback? = nil, progressCallbackData: gpointer! = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_move(file_ptr, destination.file_ptr, flags.value, cancellable?.cancellable_ptr, progressCallback, progressCallbackData, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Opens an existing file for reading and writing. The result is
    /// a `GFileIOStream` that can be used to read and write the contents
    /// of the file.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled
    /// by triggering the cancellable object from another thread. If the
    /// operation was cancelled, the error `G_IO_ERROR_CANCELLED` will be
    /// returned.
    /// 
    /// If the file does not exist, the `G_IO_ERROR_NOT_FOUND` error will
    /// be returned. If the file is a directory, the `G_IO_ERROR_IS_DIRECTORY`
    /// error will be returned. Other errors are possible too, and depend on
    /// what kind of filesystem the file is on. Note that in many non-local
    /// file cases read and write streams are not supported, so make sure you
    /// really need to do read and write streaming, rather than just opening
    /// for reading or writing.
    @inlinable func openReadwrite(cancellable: CancellableRef? = nil) throws -> FileIOStreamRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileIOStreamRef(gconstpointer: gconstpointer(g_file_open_readwrite(file_ptr, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Opens an existing file for reading and writing. The result is
    /// a `GFileIOStream` that can be used to read and write the contents
    /// of the file.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled
    /// by triggering the cancellable object from another thread. If the
    /// operation was cancelled, the error `G_IO_ERROR_CANCELLED` will be
    /// returned.
    /// 
    /// If the file does not exist, the `G_IO_ERROR_NOT_FOUND` error will
    /// be returned. If the file is a directory, the `G_IO_ERROR_IS_DIRECTORY`
    /// error will be returned. Other errors are possible too, and depend on
    /// what kind of filesystem the file is on. Note that in many non-local
    /// file cases read and write streams are not supported, so make sure you
    /// really need to do read and write streaming, rather than just opening
    /// for reading or writing.
    @inlinable func openReadwrite<CancellableT: CancellableProtocol>(cancellable: CancellableT?) throws -> FileIOStreamRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileIOStreamRef(gconstpointer: gconstpointer(g_file_open_readwrite(file_ptr, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously opens `file` for reading and writing.
    /// 
    /// For more details, see `g_file_open_readwrite()` which is
    /// the synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_open_readwrite_finish()` to get
    /// the result of the operation.
    @inlinable func openReadwriteAsync(ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_open_readwrite_async(file_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously opens `file` for reading and writing.
    /// 
    /// For more details, see `g_file_open_readwrite()` which is
    /// the synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_open_readwrite_finish()` to get
    /// the result of the operation.
    @inlinable func openReadwriteAsync<CancellableT: CancellableProtocol>(ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_open_readwrite_async(file_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an asynchronous file read operation started with
    /// `g_file_open_readwrite_async()`.
    @inlinable func openReadwriteFinish<AsyncResultT: AsyncResultProtocol>(res: AsyncResultT) throws -> FileIOStreamRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileIOStreamRef(gconstpointer: gconstpointer(g_file_open_readwrite_finish(file_ptr, res.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Exactly like `g_file_get_path()`, but caches the result via
    /// `g_object_set_qdata_full()`.  This is useful for example in C
    /// applications which mix `g_file_*` APIs with native ones.  It
    /// also avoids an extra duplicated string when possible, so will be
    /// generally more efficient.
    /// 
    /// This call does no blocking I/O.
    @inlinable func peekPath() -> String! {
        let rv = g_file_peek_path(file_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Polls a file of type `G_FILE_TYPE_MOUNTABLE`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_mount_mountable_finish()` to get
    /// the result of the operation.
    @inlinable func pollMountable(cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_poll_mountable(file_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Polls a file of type `G_FILE_TYPE_MOUNTABLE`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_mount_mountable_finish()` to get
    /// the result of the operation.
    @inlinable func pollMountable<CancellableT: CancellableProtocol>(cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_poll_mountable(file_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes a poll operation. See `g_file_poll_mountable()` for details.
    /// 
    /// Finish an asynchronous poll operation that was polled
    /// with `g_file_poll_mountable()`.
    @inlinable func pollMountableFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_poll_mountable_finish(file_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Returns the `GAppInfo` that is registered as the default
    /// application to handle the file specified by `file`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func queryDefaultHandler(cancellable: CancellableRef? = nil) throws -> AppInfoRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = AppInfoRef(gconstpointer: gconstpointer(g_file_query_default_handler(file_ptr, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Returns the `GAppInfo` that is registered as the default
    /// application to handle the file specified by `file`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func queryDefaultHandler<CancellableT: CancellableProtocol>(cancellable: CancellableT?) throws -> AppInfoRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = AppInfoRef(gconstpointer: gconstpointer(g_file_query_default_handler(file_ptr, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Async version of `g_file_query_default_handler()`.
    @inlinable func queryDefaultHandlerAsync(ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_query_default_handler_async(file_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Async version of `g_file_query_default_handler()`.
    @inlinable func queryDefaultHandlerAsync<CancellableT: CancellableProtocol>(ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_query_default_handler_async(file_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes a `g_file_query_default_handler_async()` operation.
    @inlinable func queryDefaultHandlerFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> AppInfoRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = AppInfoRef(gconstpointer: gconstpointer(g_file_query_default_handler_finish(file_ptr, result.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Utility function to check if a particular file exists. This is
    /// implemented using `g_file_query_info()` and as such does blocking I/O.
    /// 
    /// Note that in many cases it is [racy to first check for file existence](https://en.wikipedia.org/wiki/Time_of_check_to_time_of_use)
    /// and then execute something based on the outcome of that, because the
    /// file might have been created or removed in between the operations. The
    /// general approach to handling that is to not check, but just do the
    /// operation and handle the errors as they come.
    /// 
    /// As an example of race-free checking, take the case of reading a file,
    /// and if it doesn't exist, creating it. There are two racy versions: read
    /// it, and on error create it; and: check if it exists, if not create it.
    /// These can both result in two processes creating the file (with perhaps
    /// a partially written file as the result). The correct approach is to
    /// always try to create the file with `g_file_create()` which will either
    /// atomically create the file or fail with a `G_IO_ERROR_EXISTS` error.
    /// 
    /// However, in many cases an existence check is useful in a user interface,
    /// for instance to make a menu item sensitive/insensitive, so that you don't
    /// have to fool users that something is possible and then just show an error
    /// dialog. If you do this, you should make sure to also handle the errors
    /// that can happen due to races when you execute the operation.
    @inlinable func queryExists(cancellable: CancellableRef? = nil) -> Bool {
        let rv = ((g_file_query_exists(file_ptr, cancellable?.cancellable_ptr)) != 0)
        return rv
    }
    /// Utility function to check if a particular file exists. This is
    /// implemented using `g_file_query_info()` and as such does blocking I/O.
    /// 
    /// Note that in many cases it is [racy to first check for file existence](https://en.wikipedia.org/wiki/Time_of_check_to_time_of_use)
    /// and then execute something based on the outcome of that, because the
    /// file might have been created or removed in between the operations. The
    /// general approach to handling that is to not check, but just do the
    /// operation and handle the errors as they come.
    /// 
    /// As an example of race-free checking, take the case of reading a file,
    /// and if it doesn't exist, creating it. There are two racy versions: read
    /// it, and on error create it; and: check if it exists, if not create it.
    /// These can both result in two processes creating the file (with perhaps
    /// a partially written file as the result). The correct approach is to
    /// always try to create the file with `g_file_create()` which will either
    /// atomically create the file or fail with a `G_IO_ERROR_EXISTS` error.
    /// 
    /// However, in many cases an existence check is useful in a user interface,
    /// for instance to make a menu item sensitive/insensitive, so that you don't
    /// have to fool users that something is possible and then just show an error
    /// dialog. If you do this, you should make sure to also handle the errors
    /// that can happen due to races when you execute the operation.
    @inlinable func queryExists<CancellableT: CancellableProtocol>(cancellable: CancellableT?) -> Bool {
        let rv = ((g_file_query_exists(file_ptr, cancellable?.cancellable_ptr)) != 0)
        return rv
    }

    /// Utility function to inspect the `GFileType` of a file. This is
    /// implemented using `g_file_query_info()` and as such does blocking I/O.
    /// 
    /// The primary use case of this method is to check if a file is
    /// a regular file, directory, or symlink.
    @inlinable func queryFileType(flags: FileQueryInfoFlags, cancellable: CancellableRef? = nil) -> GFileType {
        let rv = g_file_query_file_type(file_ptr, flags.value, cancellable?.cancellable_ptr)
        return rv
    }
    /// Utility function to inspect the `GFileType` of a file. This is
    /// implemented using `g_file_query_info()` and as such does blocking I/O.
    /// 
    /// The primary use case of this method is to check if a file is
    /// a regular file, directory, or symlink.
    @inlinable func queryFileType<CancellableT: CancellableProtocol>(flags: FileQueryInfoFlags, cancellable: CancellableT?) -> GFileType {
        let rv = g_file_query_file_type(file_ptr, flags.value, cancellable?.cancellable_ptr)
        return rv
    }

    /// Similar to `g_file_query_info()`, but obtains information
    /// about the filesystem the `file` is on, rather than the file itself.
    /// For instance the amount of space available and the type of
    /// the filesystem.
    /// 
    /// The `attributes` value is a string that specifies the attributes
    /// that should be gathered. It is not an error if it's not possible
    /// to read a particular requested attribute from a file - it just
    /// won't be set. `attributes` should be a comma-separated list of
    /// attributes or attribute wildcards. The wildcard "*" means all
    /// attributes, and a wildcard like "filesystem``*" means all attributes
    /// in the filesystem namespace. The standard namespace for filesystem
    /// attributes is "filesystem". Common attributes of interest are
    /// `G_FILE_ATTRIBUTE_FILESYSTEM_SIZE` (the total size of the filesystem
    /// in bytes), `G_FILE_ATTRIBUTE_FILESYSTEM_FREE` (number of bytes available),
    /// and `G_FILE_ATTRIBUTE_FILESYSTEM_TYPE` (type of the filesystem).
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled
    /// by triggering the cancellable object from another thread. If the
    /// operation was cancelled, the error `G_IO_ERROR_CANCELLED` will be
    /// returned.
    /// 
    /// If the file does not exist, the `G_IO_ERROR_NOT_FOUND` error will
    /// be returned. Other errors are possible too, and depend on what
    /// kind of filesystem the file is on.
    @inlinable func queryFilesystemInfo(attributes: UnsafePointer<CChar>!, cancellable: CancellableRef? = nil) throws -> FileInfoRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileInfoRef(gconstpointer: gconstpointer(g_file_query_filesystem_info(file_ptr, attributes, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Similar to `g_file_query_info()`, but obtains information
    /// about the filesystem the `file` is on, rather than the file itself.
    /// For instance the amount of space available and the type of
    /// the filesystem.
    /// 
    /// The `attributes` value is a string that specifies the attributes
    /// that should be gathered. It is not an error if it's not possible
    /// to read a particular requested attribute from a file - it just
    /// won't be set. `attributes` should be a comma-separated list of
    /// attributes or attribute wildcards. The wildcard "*" means all
    /// attributes, and a wildcard like "filesystem``*" means all attributes
    /// in the filesystem namespace. The standard namespace for filesystem
    /// attributes is "filesystem". Common attributes of interest are
    /// `G_FILE_ATTRIBUTE_FILESYSTEM_SIZE` (the total size of the filesystem
    /// in bytes), `G_FILE_ATTRIBUTE_FILESYSTEM_FREE` (number of bytes available),
    /// and `G_FILE_ATTRIBUTE_FILESYSTEM_TYPE` (type of the filesystem).
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled
    /// by triggering the cancellable object from another thread. If the
    /// operation was cancelled, the error `G_IO_ERROR_CANCELLED` will be
    /// returned.
    /// 
    /// If the file does not exist, the `G_IO_ERROR_NOT_FOUND` error will
    /// be returned. Other errors are possible too, and depend on what
    /// kind of filesystem the file is on.
    @inlinable func queryFilesystemInfo<CancellableT: CancellableProtocol>(attributes: UnsafePointer<CChar>!, cancellable: CancellableT?) throws -> FileInfoRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileInfoRef(gconstpointer: gconstpointer(g_file_query_filesystem_info(file_ptr, attributes, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously gets the requested information about the filesystem
    /// that the specified `file` is on. The result is a `GFileInfo` object
    /// that contains key-value attributes (such as type or size for the
    /// file).
    /// 
    /// For more details, see `g_file_query_filesystem_info()` which is the
    /// synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called. You can
    /// then call `g_file_query_info_finish()` to get the result of the
    /// operation.
    @inlinable func queryFilesystemInfoAsync(attributes: UnsafePointer<CChar>!, ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_query_filesystem_info_async(file_ptr, attributes, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously gets the requested information about the filesystem
    /// that the specified `file` is on. The result is a `GFileInfo` object
    /// that contains key-value attributes (such as type or size for the
    /// file).
    /// 
    /// For more details, see `g_file_query_filesystem_info()` which is the
    /// synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called. You can
    /// then call `g_file_query_info_finish()` to get the result of the
    /// operation.
    @inlinable func queryFilesystemInfoAsync<CancellableT: CancellableProtocol>(attributes: UnsafePointer<CChar>!, ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_query_filesystem_info_async(file_ptr, attributes, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an asynchronous filesystem info query.
    /// See `g_file_query_filesystem_info_async()`.
    @inlinable func queryFilesystemInfoFinish<AsyncResultT: AsyncResultProtocol>(res: AsyncResultT) throws -> FileInfoRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileInfoRef(gconstpointer: gconstpointer(g_file_query_filesystem_info_finish(file_ptr, res.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Gets the requested information about specified `file`.
    /// The result is a `GFileInfo` object that contains key-value
    /// attributes (such as the type or size of the file).
    /// 
    /// The `attributes` value is a string that specifies the file
    /// attributes that should be gathered. It is not an error if
    /// it's not possible to read a particular requested attribute
    /// from a file - it just won't be set. `attributes` should be a
    /// comma-separated list of attributes or attribute wildcards.
    /// The wildcard "*" means all attributes, and a wildcard like
    /// "standard``*" means all attributes in the standard namespace.
    /// An example attribute query be "standard``*,owner`user`".
    /// The standard attributes are available as defines, like
    /// `G_FILE_ATTRIBUTE_STANDARD_NAME`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled
    /// by triggering the cancellable object from another thread. If the
    /// operation was cancelled, the error `G_IO_ERROR_CANCELLED` will be
    /// returned.
    /// 
    /// For symlinks, normally the information about the target of the
    /// symlink is returned, rather than information about the symlink
    /// itself. However if you pass `G_FILE_QUERY_INFO_NOFOLLOW_SYMLINKS`
    /// in `flags` the information about the symlink itself will be returned.
    /// Also, for symlinks that point to non-existing files the information
    /// about the symlink itself will be returned.
    /// 
    /// If the file does not exist, the `G_IO_ERROR_NOT_FOUND` error will be
    /// returned. Other errors are possible too, and depend on what kind of
    /// filesystem the file is on.
    @inlinable func queryInfo(attributes: UnsafePointer<CChar>!, flags: FileQueryInfoFlags, cancellable: CancellableRef? = nil) throws -> FileInfoRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileInfoRef(gconstpointer: gconstpointer(g_file_query_info(file_ptr, attributes, flags.value, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Gets the requested information about specified `file`.
    /// The result is a `GFileInfo` object that contains key-value
    /// attributes (such as the type or size of the file).
    /// 
    /// The `attributes` value is a string that specifies the file
    /// attributes that should be gathered. It is not an error if
    /// it's not possible to read a particular requested attribute
    /// from a file - it just won't be set. `attributes` should be a
    /// comma-separated list of attributes or attribute wildcards.
    /// The wildcard "*" means all attributes, and a wildcard like
    /// "standard``*" means all attributes in the standard namespace.
    /// An example attribute query be "standard``*,owner`user`".
    /// The standard attributes are available as defines, like
    /// `G_FILE_ATTRIBUTE_STANDARD_NAME`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled
    /// by triggering the cancellable object from another thread. If the
    /// operation was cancelled, the error `G_IO_ERROR_CANCELLED` will be
    /// returned.
    /// 
    /// For symlinks, normally the information about the target of the
    /// symlink is returned, rather than information about the symlink
    /// itself. However if you pass `G_FILE_QUERY_INFO_NOFOLLOW_SYMLINKS`
    /// in `flags` the information about the symlink itself will be returned.
    /// Also, for symlinks that point to non-existing files the information
    /// about the symlink itself will be returned.
    /// 
    /// If the file does not exist, the `G_IO_ERROR_NOT_FOUND` error will be
    /// returned. Other errors are possible too, and depend on what kind of
    /// filesystem the file is on.
    @inlinable func queryInfo<CancellableT: CancellableProtocol>(attributes: UnsafePointer<CChar>!, flags: FileQueryInfoFlags, cancellable: CancellableT?) throws -> FileInfoRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileInfoRef(gconstpointer: gconstpointer(g_file_query_info(file_ptr, attributes, flags.value, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously gets the requested information about specified `file`.
    /// The result is a `GFileInfo` object that contains key-value attributes
    /// (such as type or size for the file).
    /// 
    /// For more details, see `g_file_query_info()` which is the synchronous
    /// version of this call.
    /// 
    /// When the operation is finished, `callback` will be called. You can
    /// then call `g_file_query_info_finish()` to get the result of the operation.
    @inlinable func queryInfoAsync(attributes: UnsafePointer<CChar>!, flags: FileQueryInfoFlags, ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_query_info_async(file_ptr, attributes, flags.value, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously gets the requested information about specified `file`.
    /// The result is a `GFileInfo` object that contains key-value attributes
    /// (such as type or size for the file).
    /// 
    /// For more details, see `g_file_query_info()` which is the synchronous
    /// version of this call.
    /// 
    /// When the operation is finished, `callback` will be called. You can
    /// then call `g_file_query_info_finish()` to get the result of the operation.
    @inlinable func queryInfoAsync<CancellableT: CancellableProtocol>(attributes: UnsafePointer<CChar>!, flags: FileQueryInfoFlags, ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_query_info_async(file_ptr, attributes, flags.value, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an asynchronous file info query.
    /// See `g_file_query_info_async()`.
    @inlinable func queryInfoFinish<AsyncResultT: AsyncResultProtocol>(res: AsyncResultT) throws -> FileInfoRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileInfoRef(gconstpointer: gconstpointer(g_file_query_info_finish(file_ptr, res.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Obtain the list of settable attributes for the file.
    /// 
    /// Returns the type and full attribute name of all the attributes
    /// that can be set on this file. This doesn't mean setting it will
    /// always succeed though, you might get an access failure, or some
    /// specific file may not support a specific attribute.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func querySettableAttributes(cancellable: CancellableRef? = nil) throws -> FileAttributeInfoListRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileAttributeInfoListRef(gconstpointer: gconstpointer(g_file_query_settable_attributes(file_ptr, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Obtain the list of settable attributes for the file.
    /// 
    /// Returns the type and full attribute name of all the attributes
    /// that can be set on this file. This doesn't mean setting it will
    /// always succeed though, you might get an access failure, or some
    /// specific file may not support a specific attribute.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func querySettableAttributes<CancellableT: CancellableProtocol>(cancellable: CancellableT?) throws -> FileAttributeInfoListRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileAttributeInfoListRef(gconstpointer: gconstpointer(g_file_query_settable_attributes(file_ptr, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Obtain the list of attribute namespaces where new attributes
    /// can be created by a user. An example of this is extended
    /// attributes (in the "xattr" namespace).
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func queryWritableNamespaces(cancellable: CancellableRef? = nil) throws -> FileAttributeInfoListRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileAttributeInfoListRef(gconstpointer: gconstpointer(g_file_query_writable_namespaces(file_ptr, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Obtain the list of attribute namespaces where new attributes
    /// can be created by a user. An example of this is extended
    /// attributes (in the "xattr" namespace).
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func queryWritableNamespaces<CancellableT: CancellableProtocol>(cancellable: CancellableT?) throws -> FileAttributeInfoListRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileAttributeInfoListRef(gconstpointer: gconstpointer(g_file_query_writable_namespaces(file_ptr, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Opens a file for reading. The result is a `GFileInputStream` that
    /// can be used to read the contents of the file.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    /// 
    /// If the file does not exist, the `G_IO_ERROR_NOT_FOUND` error will be
    /// returned. If the file is a directory, the `G_IO_ERROR_IS_DIRECTORY`
    /// error will be returned. Other errors are possible too, and depend
    /// on what kind of filesystem the file is on.
    @inlinable func read(cancellable: CancellableRef? = nil) throws -> FileInputStreamRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileInputStreamRef(gconstpointer: gconstpointer(g_file_read(file_ptr, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Opens a file for reading. The result is a `GFileInputStream` that
    /// can be used to read the contents of the file.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    /// 
    /// If the file does not exist, the `G_IO_ERROR_NOT_FOUND` error will be
    /// returned. If the file is a directory, the `G_IO_ERROR_IS_DIRECTORY`
    /// error will be returned. Other errors are possible too, and depend
    /// on what kind of filesystem the file is on.
    @inlinable func read<CancellableT: CancellableProtocol>(cancellable: CancellableT?) throws -> FileInputStreamRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileInputStreamRef(gconstpointer: gconstpointer(g_file_read(file_ptr, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously opens `file` for reading.
    /// 
    /// For more details, see `g_file_read()` which is
    /// the synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_read_finish()` to get the result
    /// of the operation.
    @inlinable func readAsync(ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_read_async(file_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously opens `file` for reading.
    /// 
    /// For more details, see `g_file_read()` which is
    /// the synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_read_finish()` to get the result
    /// of the operation.
    @inlinable func readAsync<CancellableT: CancellableProtocol>(ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_read_async(file_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an asynchronous file read operation started with
    /// `g_file_read_async()`.
    @inlinable func readFinish<AsyncResultT: AsyncResultProtocol>(res: AsyncResultT) throws -> FileInputStreamRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileInputStreamRef(gconstpointer: gconstpointer(g_file_read_finish(file_ptr, res.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Returns an output stream for overwriting the file, possibly
    /// creating a backup copy of the file first. If the file doesn't exist,
    /// it will be created.
    /// 
    /// This will try to replace the file in the safest way possible so
    /// that any errors during the writing will not affect an already
    /// existing copy of the file. For instance, for local files it
    /// may write to a temporary file and then atomically rename over
    /// the destination when the stream is closed.
    /// 
    /// By default files created are generally readable by everyone,
    /// but if you pass `G_FILE_CREATE_PRIVATE` in `flags` the file
    /// will be made readable only to the current user, to the level that
    /// is supported on the target filesystem.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled
    /// by triggering the cancellable object from another thread. If the
    /// operation was cancelled, the error `G_IO_ERROR_CANCELLED` will be
    /// returned.
    /// 
    /// If you pass in a non-`nil` `etag` value and `file` already exists, then
    /// this value is compared to the current entity tag of the file, and if
    /// they differ an `G_IO_ERROR_WRONG_ETAG` error is returned. This
    /// generally means that the file has been changed since you last read
    /// it. You can get the new etag from `g_file_output_stream_get_etag()`
    /// after you've finished writing and closed the `GFileOutputStream`. When
    /// you load a new file you can use `g_file_input_stream_query_info()` to
    /// get the etag of the file.
    /// 
    /// If `make_backup` is `true`, this function will attempt to make a
    /// backup of the current file before overwriting it. If this fails
    /// a `G_IO_ERROR_CANT_CREATE_BACKUP` error will be returned. If you
    /// want to replace anyway, try again with `make_backup` set to `false`.
    /// 
    /// If the file is a directory the `G_IO_ERROR_IS_DIRECTORY` error will
    /// be returned, and if the file is some other form of non-regular file
    /// then a `G_IO_ERROR_NOT_REGULAR_FILE` error will be returned. Some
    /// file systems don't allow all file names, and may return an
    /// `G_IO_ERROR_INVALID_FILENAME` error, and if the name is to long
    /// `G_IO_ERROR_FILENAME_TOO_LONG` will be returned. Other errors are
    /// possible too, and depend on what kind of filesystem the file is on.
    @inlinable func replace(etag: UnsafePointer<CChar>? = nil, makeBackup: Bool, flags: FileCreateFlags, cancellable: CancellableRef? = nil) throws -> FileOutputStreamRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileOutputStreamRef(gconstpointer: gconstpointer(g_file_replace(file_ptr, etag, gboolean((makeBackup) ? 1 : 0), flags.value, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Returns an output stream for overwriting the file, possibly
    /// creating a backup copy of the file first. If the file doesn't exist,
    /// it will be created.
    /// 
    /// This will try to replace the file in the safest way possible so
    /// that any errors during the writing will not affect an already
    /// existing copy of the file. For instance, for local files it
    /// may write to a temporary file and then atomically rename over
    /// the destination when the stream is closed.
    /// 
    /// By default files created are generally readable by everyone,
    /// but if you pass `G_FILE_CREATE_PRIVATE` in `flags` the file
    /// will be made readable only to the current user, to the level that
    /// is supported on the target filesystem.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled
    /// by triggering the cancellable object from another thread. If the
    /// operation was cancelled, the error `G_IO_ERROR_CANCELLED` will be
    /// returned.
    /// 
    /// If you pass in a non-`nil` `etag` value and `file` already exists, then
    /// this value is compared to the current entity tag of the file, and if
    /// they differ an `G_IO_ERROR_WRONG_ETAG` error is returned. This
    /// generally means that the file has been changed since you last read
    /// it. You can get the new etag from `g_file_output_stream_get_etag()`
    /// after you've finished writing and closed the `GFileOutputStream`. When
    /// you load a new file you can use `g_file_input_stream_query_info()` to
    /// get the etag of the file.
    /// 
    /// If `make_backup` is `true`, this function will attempt to make a
    /// backup of the current file before overwriting it. If this fails
    /// a `G_IO_ERROR_CANT_CREATE_BACKUP` error will be returned. If you
    /// want to replace anyway, try again with `make_backup` set to `false`.
    /// 
    /// If the file is a directory the `G_IO_ERROR_IS_DIRECTORY` error will
    /// be returned, and if the file is some other form of non-regular file
    /// then a `G_IO_ERROR_NOT_REGULAR_FILE` error will be returned. Some
    /// file systems don't allow all file names, and may return an
    /// `G_IO_ERROR_INVALID_FILENAME` error, and if the name is to long
    /// `G_IO_ERROR_FILENAME_TOO_LONG` will be returned. Other errors are
    /// possible too, and depend on what kind of filesystem the file is on.
    @inlinable func replace<CancellableT: CancellableProtocol>(etag: UnsafePointer<CChar>? = nil, makeBackup: Bool, flags: FileCreateFlags, cancellable: CancellableT?) throws -> FileOutputStreamRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileOutputStreamRef(gconstpointer: gconstpointer(g_file_replace(file_ptr, etag, gboolean((makeBackup) ? 1 : 0), flags.value, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously overwrites the file, replacing the contents,
    /// possibly creating a backup copy of the file first.
    /// 
    /// For more details, see `g_file_replace()` which is
    /// the synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_replace_finish()` to get the result
    /// of the operation.
    @inlinable func replaceAsync(etag: UnsafePointer<CChar>? = nil, makeBackup: Bool, flags: FileCreateFlags, ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_replace_async(file_ptr, etag, gboolean((makeBackup) ? 1 : 0), flags.value, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously overwrites the file, replacing the contents,
    /// possibly creating a backup copy of the file first.
    /// 
    /// For more details, see `g_file_replace()` which is
    /// the synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_replace_finish()` to get the result
    /// of the operation.
    @inlinable func replaceAsync<CancellableT: CancellableProtocol>(etag: UnsafePointer<CChar>? = nil, makeBackup: Bool, flags: FileCreateFlags, ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_replace_async(file_ptr, etag, gboolean((makeBackup) ? 1 : 0), flags.value, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Replaces the contents of `file` with `contents` of `length` bytes.
    /// 
    /// If `etag` is specified (not `nil`), any existing file must have that etag,
    /// or the error `G_IO_ERROR_WRONG_ETAG` will be returned.
    /// 
    /// If `make_backup` is `true`, this function will attempt to make a backup
    /// of `file`. Internally, it uses `g_file_replace()`, so will try to replace the
    /// file contents in the safest way possible. For example, atomic renames are
    /// used when replacing local files’ contents.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    /// 
    /// The returned `new_etag` can be used to verify that the file hasn't
    /// changed the next time it is saved over.
    @inlinable func replace(contents: UnsafePointer<CChar>!, length: Int, etag: UnsafePointer<CChar>? = nil, makeBackup: Bool, flags: FileCreateFlags, newEtag: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>? = nil, cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_replace_contents(file_ptr, contents, gsize(length), etag, gboolean((makeBackup) ? 1 : 0), flags.value, newEtag, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Replaces the contents of `file` with `contents` of `length` bytes.
    /// 
    /// If `etag` is specified (not `nil`), any existing file must have that etag,
    /// or the error `G_IO_ERROR_WRONG_ETAG` will be returned.
    /// 
    /// If `make_backup` is `true`, this function will attempt to make a backup
    /// of `file`. Internally, it uses `g_file_replace()`, so will try to replace the
    /// file contents in the safest way possible. For example, atomic renames are
    /// used when replacing local files’ contents.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    /// 
    /// The returned `new_etag` can be used to verify that the file hasn't
    /// changed the next time it is saved over.
    @inlinable func replace<CancellableT: CancellableProtocol>(contents: UnsafePointer<CChar>!, length: Int, etag: UnsafePointer<CChar>? = nil, makeBackup: Bool, flags: FileCreateFlags, newEtag: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>? = nil, cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_replace_contents(file_ptr, contents, gsize(length), etag, gboolean((makeBackup) ? 1 : 0), flags.value, newEtag, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Starts an asynchronous replacement of `file` with the given
    /// `contents` of `length` bytes. `etag` will replace the document's
    /// current entity tag.
    /// 
    /// When this operation has completed, `callback` will be called with
    /// `user_user` data, and the operation can be finalized with
    /// `g_file_replace_contents_finish()`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    /// 
    /// If `make_backup` is `true`, this function will attempt to
    /// make a backup of `file`.
    /// 
    /// Note that no copy of `contents` will be made, so it must stay valid
    /// until `callback` is called. See `g_file_replace_contents_bytes_async()`
    /// for a `GBytes` version that will automatically hold a reference to the
    /// contents (without copying) for the duration of the call.
    @inlinable func replaceContentsAsync(contents: UnsafePointer<CChar>!, length: Int, etag: UnsafePointer<CChar>? = nil, makeBackup: Bool, flags: FileCreateFlags, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_replace_contents_async(file_ptr, contents, gsize(length), etag, gboolean((makeBackup) ? 1 : 0), flags.value, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Starts an asynchronous replacement of `file` with the given
    /// `contents` of `length` bytes. `etag` will replace the document's
    /// current entity tag.
    /// 
    /// When this operation has completed, `callback` will be called with
    /// `user_user` data, and the operation can be finalized with
    /// `g_file_replace_contents_finish()`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    /// 
    /// If `make_backup` is `true`, this function will attempt to
    /// make a backup of `file`.
    /// 
    /// Note that no copy of `contents` will be made, so it must stay valid
    /// until `callback` is called. See `g_file_replace_contents_bytes_async()`
    /// for a `GBytes` version that will automatically hold a reference to the
    /// contents (without copying) for the duration of the call.
    @inlinable func replaceContentsAsync<CancellableT: CancellableProtocol>(contents: UnsafePointer<CChar>!, length: Int, etag: UnsafePointer<CChar>? = nil, makeBackup: Bool, flags: FileCreateFlags, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_replace_contents_async(file_ptr, contents, gsize(length), etag, gboolean((makeBackup) ? 1 : 0), flags.value, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Same as `g_file_replace_contents_async()` but takes a `GBytes` input instead.
    /// This function will keep a ref on `contents` until the operation is done.
    /// Unlike `g_file_replace_contents_async()` this allows forgetting about the
    /// content without waiting for the callback.
    /// 
    /// When this operation has completed, `callback` will be called with
    /// `user_user` data, and the operation can be finalized with
    /// `g_file_replace_contents_finish()`.
    @inlinable func replaceContentsBytesAsync<BytesT: GLib.BytesProtocol>(contents: BytesT, etag: UnsafePointer<CChar>? = nil, makeBackup: Bool, flags: FileCreateFlags, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_replace_contents_bytes_async(file_ptr, contents.bytes_ptr, etag, gboolean((makeBackup) ? 1 : 0), flags.value, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Same as `g_file_replace_contents_async()` but takes a `GBytes` input instead.
    /// This function will keep a ref on `contents` until the operation is done.
    /// Unlike `g_file_replace_contents_async()` this allows forgetting about the
    /// content without waiting for the callback.
    /// 
    /// When this operation has completed, `callback` will be called with
    /// `user_user` data, and the operation can be finalized with
    /// `g_file_replace_contents_finish()`.
    @inlinable func replaceContentsBytesAsync<BytesT: GLib.BytesProtocol, CancellableT: CancellableProtocol>(contents: BytesT, etag: UnsafePointer<CChar>? = nil, makeBackup: Bool, flags: FileCreateFlags, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_replace_contents_bytes_async(file_ptr, contents.bytes_ptr, etag, gboolean((makeBackup) ? 1 : 0), flags.value, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an asynchronous replace of the given `file`. See
    /// `g_file_replace_contents_async()`. Sets `new_etag` to the new entity
    /// tag for the document, if present.
    @inlinable func replaceContentsFinish<AsyncResultT: AsyncResultProtocol>(res: AsyncResultT, newEtag: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_replace_contents_finish(file_ptr, res.async_result_ptr, newEtag, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Finishes an asynchronous file replace operation started with
    /// `g_file_replace_async()`.
    @inlinable func replaceFinish<AsyncResultT: AsyncResultProtocol>(res: AsyncResultT) throws -> FileOutputStreamRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileOutputStreamRef(gconstpointer: gconstpointer(g_file_replace_finish(file_ptr, res.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Returns an output stream for overwriting the file in readwrite mode,
    /// possibly creating a backup copy of the file first. If the file doesn't
    /// exist, it will be created.
    /// 
    /// For details about the behaviour, see `g_file_replace()` which does the
    /// same thing but returns an output stream only.
    /// 
    /// Note that in many non-local file cases read and write streams are not
    /// supported, so make sure you really need to do read and write streaming,
    /// rather than just opening for reading or writing.
    @inlinable func replaceReadwrite(etag: UnsafePointer<CChar>? = nil, makeBackup: Bool, flags: FileCreateFlags, cancellable: CancellableRef? = nil) throws -> FileIOStreamRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileIOStreamRef(gconstpointer: gconstpointer(g_file_replace_readwrite(file_ptr, etag, gboolean((makeBackup) ? 1 : 0), flags.value, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Returns an output stream for overwriting the file in readwrite mode,
    /// possibly creating a backup copy of the file first. If the file doesn't
    /// exist, it will be created.
    /// 
    /// For details about the behaviour, see `g_file_replace()` which does the
    /// same thing but returns an output stream only.
    /// 
    /// Note that in many non-local file cases read and write streams are not
    /// supported, so make sure you really need to do read and write streaming,
    /// rather than just opening for reading or writing.
    @inlinable func replaceReadwrite<CancellableT: CancellableProtocol>(etag: UnsafePointer<CChar>? = nil, makeBackup: Bool, flags: FileCreateFlags, cancellable: CancellableT?) throws -> FileIOStreamRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileIOStreamRef(gconstpointer: gconstpointer(g_file_replace_readwrite(file_ptr, etag, gboolean((makeBackup) ? 1 : 0), flags.value, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously overwrites the file in read-write mode,
    /// replacing the contents, possibly creating a backup copy
    /// of the file first.
    /// 
    /// For more details, see `g_file_replace_readwrite()` which is
    /// the synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_replace_readwrite_finish()` to get
    /// the result of the operation.
    @inlinable func replaceReadwriteAsync(etag: UnsafePointer<CChar>? = nil, makeBackup: Bool, flags: FileCreateFlags, ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_replace_readwrite_async(file_ptr, etag, gboolean((makeBackup) ? 1 : 0), flags.value, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously overwrites the file in read-write mode,
    /// replacing the contents, possibly creating a backup copy
    /// of the file first.
    /// 
    /// For more details, see `g_file_replace_readwrite()` which is
    /// the synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_replace_readwrite_finish()` to get
    /// the result of the operation.
    @inlinable func replaceReadwriteAsync<CancellableT: CancellableProtocol>(etag: UnsafePointer<CChar>? = nil, makeBackup: Bool, flags: FileCreateFlags, ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_replace_readwrite_async(file_ptr, etag, gboolean((makeBackup) ? 1 : 0), flags.value, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an asynchronous file replace operation started with
    /// `g_file_replace_readwrite_async()`.
    @inlinable func replaceReadwriteFinish<AsyncResultT: AsyncResultProtocol>(res: AsyncResultT) throws -> FileIOStreamRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileIOStreamRef(gconstpointer: gconstpointer(g_file_replace_readwrite_finish(file_ptr, res.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Resolves a relative path for `file` to an absolute path.
    /// 
    /// This call does no blocking I/O.
    @inlinable func resolve(relativePath: UnsafePointer<CChar>!) -> FileRef! {
        guard let rv = FileRef(gconstpointer: gconstpointer(g_file_resolve_relative_path(file_ptr, relativePath))) else { return nil }
        return rv
    }

    /// Sets an attribute in the file with attribute name `attribute` to `value_p`.
    /// 
    /// Some attributes can be unset by setting `type` to
    /// `G_FILE_ATTRIBUTE_TYPE_INVALID` and `value_p` to `nil`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func set(attribute: UnsafePointer<CChar>!, type: GFileAttributeType, valueP: gpointer! = nil, flags: FileQueryInfoFlags, cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_set_attribute(file_ptr, attribute, type, valueP, flags.value, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Sets an attribute in the file with attribute name `attribute` to `value_p`.
    /// 
    /// Some attributes can be unset by setting `type` to
    /// `G_FILE_ATTRIBUTE_TYPE_INVALID` and `value_p` to `nil`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func set<CancellableT: CancellableProtocol>(attribute: UnsafePointer<CChar>!, type: GFileAttributeType, valueP: gpointer! = nil, flags: FileQueryInfoFlags, cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_set_attribute(file_ptr, attribute, type, valueP, flags.value, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Sets `attribute` of type `G_FILE_ATTRIBUTE_TYPE_BYTE_STRING` to `value`.
    /// If `attribute` is of a different type, this operation will fail,
    /// returning `false`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func setAttributeByteString(attribute: UnsafePointer<CChar>!, value: UnsafePointer<CChar>!, flags: FileQueryInfoFlags, cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_set_attribute_byte_string(file_ptr, attribute, value, flags.value, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Sets `attribute` of type `G_FILE_ATTRIBUTE_TYPE_BYTE_STRING` to `value`.
    /// If `attribute` is of a different type, this operation will fail,
    /// returning `false`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func setAttributeByteString<CancellableT: CancellableProtocol>(attribute: UnsafePointer<CChar>!, value: UnsafePointer<CChar>!, flags: FileQueryInfoFlags, cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_set_attribute_byte_string(file_ptr, attribute, value, flags.value, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Sets `attribute` of type `G_FILE_ATTRIBUTE_TYPE_INT32` to `value`.
    /// If `attribute` is of a different type, this operation will fail.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func setAttributeInt32(attribute: UnsafePointer<CChar>!, value: gint32, flags: FileQueryInfoFlags, cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_set_attribute_int32(file_ptr, attribute, value, flags.value, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Sets `attribute` of type `G_FILE_ATTRIBUTE_TYPE_INT32` to `value`.
    /// If `attribute` is of a different type, this operation will fail.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func setAttributeInt32<CancellableT: CancellableProtocol>(attribute: UnsafePointer<CChar>!, value: gint32, flags: FileQueryInfoFlags, cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_set_attribute_int32(file_ptr, attribute, value, flags.value, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Sets `attribute` of type `G_FILE_ATTRIBUTE_TYPE_INT64` to `value`.
    /// If `attribute` is of a different type, this operation will fail.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func setAttributeInt64(attribute: UnsafePointer<CChar>!, value: gint64, flags: FileQueryInfoFlags, cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_set_attribute_int64(file_ptr, attribute, value, flags.value, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Sets `attribute` of type `G_FILE_ATTRIBUTE_TYPE_INT64` to `value`.
    /// If `attribute` is of a different type, this operation will fail.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func setAttributeInt64<CancellableT: CancellableProtocol>(attribute: UnsafePointer<CChar>!, value: gint64, flags: FileQueryInfoFlags, cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_set_attribute_int64(file_ptr, attribute, value, flags.value, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Sets `attribute` of type `G_FILE_ATTRIBUTE_TYPE_STRING` to `value`.
    /// If `attribute` is of a different type, this operation will fail.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func setAttributeString(attribute: UnsafePointer<CChar>!, value: UnsafePointer<CChar>!, flags: FileQueryInfoFlags, cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_set_attribute_string(file_ptr, attribute, value, flags.value, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Sets `attribute` of type `G_FILE_ATTRIBUTE_TYPE_STRING` to `value`.
    /// If `attribute` is of a different type, this operation will fail.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func setAttributeString<CancellableT: CancellableProtocol>(attribute: UnsafePointer<CChar>!, value: UnsafePointer<CChar>!, flags: FileQueryInfoFlags, cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_set_attribute_string(file_ptr, attribute, value, flags.value, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Sets `attribute` of type `G_FILE_ATTRIBUTE_TYPE_UINT32` to `value`.
    /// If `attribute` is of a different type, this operation will fail.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func setAttributeUint32(attribute: UnsafePointer<CChar>!, value: guint32, flags: FileQueryInfoFlags, cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_set_attribute_uint32(file_ptr, attribute, value, flags.value, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Sets `attribute` of type `G_FILE_ATTRIBUTE_TYPE_UINT32` to `value`.
    /// If `attribute` is of a different type, this operation will fail.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func setAttributeUint32<CancellableT: CancellableProtocol>(attribute: UnsafePointer<CChar>!, value: guint32, flags: FileQueryInfoFlags, cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_set_attribute_uint32(file_ptr, attribute, value, flags.value, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Sets `attribute` of type `G_FILE_ATTRIBUTE_TYPE_UINT64` to `value`.
    /// If `attribute` is of a different type, this operation will fail.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func setAttributeUint64(attribute: UnsafePointer<CChar>!, value: guint64, flags: FileQueryInfoFlags, cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_set_attribute_uint64(file_ptr, attribute, value, flags.value, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Sets `attribute` of type `G_FILE_ATTRIBUTE_TYPE_UINT64` to `value`.
    /// If `attribute` is of a different type, this operation will fail.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func setAttributeUint64<CancellableT: CancellableProtocol>(attribute: UnsafePointer<CChar>!, value: guint64, flags: FileQueryInfoFlags, cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_set_attribute_uint64(file_ptr, attribute, value, flags.value, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously sets the attributes of `file` with `info`.
    /// 
    /// For more details, see `g_file_set_attributes_from_info()`,
    /// which is the synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_set_attributes_finish()` to get
    /// the result of the operation.
    @inlinable func setAttributesAsync<FileInfoT: FileInfoProtocol>(info: FileInfoT, flags: FileQueryInfoFlags, ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_set_attributes_async(file_ptr, info.file_info_ptr, flags.value, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously sets the attributes of `file` with `info`.
    /// 
    /// For more details, see `g_file_set_attributes_from_info()`,
    /// which is the synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_set_attributes_finish()` to get
    /// the result of the operation.
    @inlinable func setAttributesAsync<CancellableT: CancellableProtocol, FileInfoT: FileInfoProtocol>(info: FileInfoT, flags: FileQueryInfoFlags, ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_set_attributes_async(file_ptr, info.file_info_ptr, flags.value, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes setting an attribute started in `g_file_set_attributes_async()`.
    @inlinable func setAttributesFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT, info: UnsafeMutablePointer<UnsafeMutablePointer<GFileInfo>?>!) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_set_attributes_finish(file_ptr, result.async_result_ptr, info, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Tries to set all attributes in the `GFileInfo` on the target
    /// values, not stopping on the first error.
    /// 
    /// If there is any error during this operation then `error` will
    /// be set to the first error. Error on particular fields are flagged
    /// by setting the "status" field in the attribute value to
    /// `G_FILE_ATTRIBUTE_STATUS_ERROR_SETTING`, which means you can
    /// also detect further errors.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func setAttributesFrom<FileInfoT: FileInfoProtocol>(info: FileInfoT, flags: FileQueryInfoFlags, cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_set_attributes_from_info(file_ptr, info.file_info_ptr, flags.value, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Tries to set all attributes in the `GFileInfo` on the target
    /// values, not stopping on the first error.
    /// 
    /// If there is any error during this operation then `error` will
    /// be set to the first error. Error on particular fields are flagged
    /// by setting the "status" field in the attribute value to
    /// `G_FILE_ATTRIBUTE_STATUS_ERROR_SETTING`, which means you can
    /// also detect further errors.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func setAttributesFrom<CancellableT: CancellableProtocol, FileInfoT: FileInfoProtocol>(info: FileInfoT, flags: FileQueryInfoFlags, cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_set_attributes_from_info(file_ptr, info.file_info_ptr, flags.value, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Renames `file` to the specified display name.
    /// 
    /// The display name is converted from UTF-8 to the correct encoding
    /// for the target filesystem if possible and the `file` is renamed to this.
    /// 
    /// If you want to implement a rename operation in the user interface the
    /// edit name (`G_FILE_ATTRIBUTE_STANDARD_EDIT_NAME`) should be used as the
    /// initial value in the rename widget, and then the result after editing
    /// should be passed to `g_file_set_display_name()`.
    /// 
    /// On success the resulting converted filename is returned.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func set(displayName: UnsafePointer<CChar>!, cancellable: CancellableRef? = nil) throws -> FileRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = FileRef(gconstpointer: gconstpointer(g_file_set_display_name(file_ptr, displayName, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }
    /// Renames `file` to the specified display name.
    /// 
    /// The display name is converted from UTF-8 to the correct encoding
    /// for the target filesystem if possible and the `file` is renamed to this.
    /// 
    /// If you want to implement a rename operation in the user interface the
    /// edit name (`G_FILE_ATTRIBUTE_STANDARD_EDIT_NAME`) should be used as the
    /// initial value in the rename widget, and then the result after editing
    /// should be passed to `g_file_set_display_name()`.
    /// 
    /// On success the resulting converted filename is returned.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func set<CancellableT: CancellableProtocol>(displayName: UnsafePointer<CChar>!, cancellable: CancellableT?) throws -> FileRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = FileRef(gconstpointer: gconstpointer(g_file_set_display_name(file_ptr, displayName, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Asynchronously sets the display name for a given `GFile`.
    /// 
    /// For more details, see `g_file_set_display_name()` which is
    /// the synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_set_display_name_finish()` to get
    /// the result of the operation.
    @inlinable func setDisplayNameAsync(displayName: UnsafePointer<CChar>!, ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_set_display_name_async(file_ptr, displayName, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously sets the display name for a given `GFile`.
    /// 
    /// For more details, see `g_file_set_display_name()` which is
    /// the synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_set_display_name_finish()` to get
    /// the result of the operation.
    @inlinable func setDisplayNameAsync<CancellableT: CancellableProtocol>(displayName: UnsafePointer<CChar>!, ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_set_display_name_async(file_ptr, displayName, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes setting a display name started with
    /// `g_file_set_display_name_async()`.
    @inlinable func setDisplayNameFinish<AsyncResultT: AsyncResultProtocol>(res: AsyncResultT) throws -> FileRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = FileRef(gconstpointer: gconstpointer(g_file_set_display_name_finish(file_ptr, res.async_result_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

    /// Starts a file of type `G_FILE_TYPE_MOUNTABLE`.
    /// Using `start_operation`, you can request callbacks when, for instance,
    /// passwords are needed during authentication.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_mount_mountable_finish()` to get
    /// the result of the operation.
    @inlinable func startMountable(flags: DriveStartFlags, startOperation: MountOperationRef? = nil, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_start_mountable(file_ptr, flags.value, startOperation?.mount_operation_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Starts a file of type `G_FILE_TYPE_MOUNTABLE`.
    /// Using `start_operation`, you can request callbacks when, for instance,
    /// passwords are needed during authentication.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_mount_mountable_finish()` to get
    /// the result of the operation.
    @inlinable func startMountable<CancellableT: CancellableProtocol, MountOperationT: MountOperationProtocol>(flags: DriveStartFlags, startOperation: MountOperationT?, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_start_mountable(file_ptr, flags.value, startOperation?.mount_operation_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes a start operation. See `g_file_start_mountable()` for details.
    /// 
    /// Finish an asynchronous start operation that was started
    /// with `g_file_start_mountable()`.
    @inlinable func startMountableFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_start_mountable_finish(file_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Stops a file of type `G_FILE_TYPE_MOUNTABLE`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_stop_mountable_finish()` to get
    /// the result of the operation.
    @inlinable func stopMountable(flags: MountUnmountFlags, mountOperation: MountOperationRef? = nil, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_stop_mountable(file_ptr, flags.value, mountOperation?.mount_operation_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Stops a file of type `G_FILE_TYPE_MOUNTABLE`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_stop_mountable_finish()` to get
    /// the result of the operation.
    @inlinable func stopMountable<CancellableT: CancellableProtocol, MountOperationT: MountOperationProtocol>(flags: MountUnmountFlags, mountOperation: MountOperationT?, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_stop_mountable(file_ptr, flags.value, mountOperation?.mount_operation_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes a stop operation, see `g_file_stop_mountable()` for details.
    /// 
    /// Finish an asynchronous stop operation that was started
    /// with `g_file_stop_mountable()`.
    @inlinable func stopMountableFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_stop_mountable_finish(file_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Checks if `file` supports
    /// [thread-default contexts](#g-main-context-push-thread-default-context).
    /// If this returns `false`, you cannot perform asynchronous operations on
    /// `file` in a thread that has a thread-default context.
    @inlinable func supportsThreadContexts() -> Bool {
        let rv = ((g_file_supports_thread_contexts(file_ptr)) != 0)
        return rv
    }

    /// Sends `file` to the "Trashcan", if possible. This is similar to
    /// deleting it, but the user can recover it before emptying the trashcan.
    /// Not all file systems support trashing, so this call can return the
    /// `G_IO_ERROR_NOT_SUPPORTED` error. Since GLib 2.66, the `x-gvfs-notrash` unix
    /// mount option can be used to disable `g_file_trash()` support for certain
    /// mounts, the `G_IO_ERROR_NOT_SUPPORTED` error will be returned in that case.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func trash(cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_trash(file_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Sends `file` to the "Trashcan", if possible. This is similar to
    /// deleting it, but the user can recover it before emptying the trashcan.
    /// Not all file systems support trashing, so this call can return the
    /// `G_IO_ERROR_NOT_SUPPORTED` error. Since GLib 2.66, the `x-gvfs-notrash` unix
    /// mount option can be used to disable `g_file_trash()` support for certain
    /// mounts, the `G_IO_ERROR_NOT_SUPPORTED` error will be returned in that case.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    @inlinable func trash<CancellableT: CancellableProtocol>(cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_trash(file_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously sends `file` to the Trash location, if possible.
    @inlinable func trashAsync(ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_trash_async(file_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously sends `file` to the Trash location, if possible.
    @inlinable func trashAsync<CancellableT: CancellableProtocol>(ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_trash_async(file_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an asynchronous file trashing operation, started with
    /// `g_file_trash_async()`.
    @inlinable func trashFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_trash_finish(file_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Unmounts a file of type G_FILE_TYPE_MOUNTABLE.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_unmount_mountable_finish()` to get
    /// the result of the operation.
    ///
    /// **unmount_mountable is deprecated:**
    /// Use g_file_unmount_mountable_with_operation() instead.
    @available(*, deprecated) @inlinable func unmountMountable(flags: MountUnmountFlags, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_unmount_mountable(file_ptr, flags.value, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Unmounts a file of type G_FILE_TYPE_MOUNTABLE.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_unmount_mountable_finish()` to get
    /// the result of the operation.
    ///
    /// **unmount_mountable is deprecated:**
    /// Use g_file_unmount_mountable_with_operation() instead.
    @available(*, deprecated) @inlinable func unmountMountable<CancellableT: CancellableProtocol>(flags: MountUnmountFlags, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_unmount_mountable(file_ptr, flags.value, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an unmount operation, see `g_file_unmount_mountable()` for details.
    /// 
    /// Finish an asynchronous unmount operation that was started
    /// with `g_file_unmount_mountable()`.
    ///
    /// **unmount_mountable_finish is deprecated:**
    /// Use g_file_unmount_mountable_with_operation_finish()
    ///     instead.
    @available(*, deprecated) @inlinable func unmountMountableFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_unmount_mountable_finish(file_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Unmounts a file of type `G_FILE_TYPE_MOUNTABLE`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_unmount_mountable_finish()` to get
    /// the result of the operation.
    @inlinable func unmountMountableWithOperation(flags: MountUnmountFlags, mountOperation: MountOperationRef? = nil, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_unmount_mountable_with_operation(file_ptr, flags.value, mountOperation?.mount_operation_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Unmounts a file of type `G_FILE_TYPE_MOUNTABLE`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_unmount_mountable_finish()` to get
    /// the result of the operation.
    @inlinable func unmountMountableWithOperation<CancellableT: CancellableProtocol, MountOperationT: MountOperationProtocol>(flags: MountUnmountFlags, mountOperation: MountOperationT?, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_unmount_mountable_with_operation(file_ptr, flags.value, mountOperation?.mount_operation_ptr, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an unmount operation,
    /// see `g_file_unmount_mountable_with_operation()` for details.
    /// 
    /// Finish an asynchronous unmount operation that was started
    /// with `g_file_unmount_mountable_with_operation()`.
    @inlinable func unmountMountableWithOperationFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_unmount_mountable_with_operation_finish(file_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Tries to guess the type of the tree with root `root`, by
    /// looking at the files it contains. The result is an array
    /// of content types, with the best guess coming first.
    /// 
    /// The types returned all have the form x-content/foo, e.g.
    /// x-content/audio-cdda (for audio CDs) or x-content/image-dcf
    /// (for a camera memory card). See the
    /// [shared-mime-info](http://www.freedesktop.org/wiki/Specifications/shared-mime-info-spec)
    /// specification for more on x-content types.
    /// 
    /// This function is useful in the implementation of
    /// `g_mount_guess_content_type()`.
    @inlinable func contentTypeGuessForTree() -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        let rv = g_content_type_guess_for_tree(file_ptr)
        return rv
    }
    /// Gets the base name (the last component of the path) for a given `GFile`.
    /// 
    /// If called for the top level of a system (such as the filesystem root
    /// or a uri like sftp://host/) it will return a single directory separator
    /// (and on Windows, possibly a drive letter).
    /// 
    /// The base name is a byte string (not UTF-8). It has no defined encoding
    /// or rules other than it may not contain zero bytes.  If you want to use
    /// filenames in a user interface you should use the display name that you
    /// can get by requesting the `G_FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME`
    /// attribute with `g_file_query_info()`.
    /// 
    /// This call does no blocking I/O.
    @inlinable var basename: String! {
        /// Gets the base name (the last component of the path) for a given `GFile`.
        /// 
        /// If called for the top level of a system (such as the filesystem root
        /// or a uri like sftp://host/) it will return a single directory separator
        /// (and on Windows, possibly a drive letter).
        /// 
        /// The base name is a byte string (not UTF-8). It has no defined encoding
        /// or rules other than it may not contain zero bytes.  If you want to use
        /// filenames in a user interface you should use the display name that you
        /// can get by requesting the `G_FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME`
        /// attribute with `g_file_query_info()`.
        /// 
        /// This call does no blocking I/O.
        get {
            let rv = g_file_get_basename(file_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Checks to see if a file is native to the platform.
    /// 
    /// A native file is one expressed in the platform-native filename format,
    /// e.g. "C:\Windows" or "/usr/bin/". This does not mean the file is local,
    /// as it might be on a locally mounted remote filesystem.
    /// 
    /// On some systems non-native files may be available using the native
    /// filesystem via a userspace filesystem (FUSE), in these cases this call
    /// will return `false`, but `g_file_get_path()` will still return a native path.
    /// 
    /// This call does no blocking I/O.
    @inlinable var isNative: Bool {
        /// Checks to see if a file is native to the platform.
        /// 
        /// A native file is one expressed in the platform-native filename format,
        /// e.g. "C:\Windows" or "/usr/bin/". This does not mean the file is local,
        /// as it might be on a locally mounted remote filesystem.
        /// 
        /// On some systems non-native files may be available using the native
        /// filesystem via a userspace filesystem (FUSE), in these cases this call
        /// will return `false`, but `g_file_get_path()` will still return a native path.
        /// 
        /// This call does no blocking I/O.
        get {
            let rv = ((g_file_is_native(file_ptr)) != 0)
            return rv
        }
    }

    /// Gets the parent directory for the `file`.
    /// If the `file` represents the root directory of the
    /// file system, then `nil` will be returned.
    /// 
    /// This call does no blocking I/O.
    @inlinable var parent: FileRef! {
        /// Gets the parent directory for the `file`.
        /// If the `file` represents the root directory of the
        /// file system, then `nil` will be returned.
        /// 
        /// This call does no blocking I/O.
        get {
            guard let rv = FileRef(gconstpointer: gconstpointer(g_file_get_parent(file_ptr))) else { return nil }
            return rv
        }
    }

    /// Gets the parse name of the `file`.
    /// A parse name is a UTF-8 string that describes the
    /// file such that one can get the `GFile` back using
    /// `g_file_parse_name()`.
    /// 
    /// This is generally used to show the `GFile` as a nice
    /// full-pathname kind of string in a user interface,
    /// like in a location entry.
    /// 
    /// For local files with names that can safely be converted
    /// to UTF-8 the pathname is used, otherwise the IRI is used
    /// (a form of URI that allows UTF-8 characters unescaped).
    /// 
    /// This call does no blocking I/O.
    @inlinable var parseName: String! {
        /// Gets the parse name of the `file`.
        /// A parse name is a UTF-8 string that describes the
        /// file such that one can get the `GFile` back using
        /// `g_file_parse_name()`.
        /// 
        /// This is generally used to show the `GFile` as a nice
        /// full-pathname kind of string in a user interface,
        /// like in a location entry.
        /// 
        /// For local files with names that can safely be converted
        /// to UTF-8 the pathname is used, otherwise the IRI is used
        /// (a form of URI that allows UTF-8 characters unescaped).
        /// 
        /// This call does no blocking I/O.
        get {
            let rv = g_file_get_parse_name(file_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the local pathname for `GFile`, if one exists. If non-`nil`, this is
    /// guaranteed to be an absolute, canonical path. It might contain symlinks.
    /// 
    /// This call does no blocking I/O.
    @inlinable var path: String! {
        /// Gets the local pathname for `GFile`, if one exists. If non-`nil`, this is
        /// guaranteed to be an absolute, canonical path. It might contain symlinks.
        /// 
        /// This call does no blocking I/O.
        get {
            let rv = g_file_get_path(file_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the URI for the `file`.
    /// 
    /// This call does no blocking I/O.
    @inlinable var uri: String! {
        /// Gets the URI for the `file`.
        /// 
        /// This call does no blocking I/O.
        get {
            let rv = g_file_get_uri(file_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the URI scheme for a `GFile`.
    /// RFC 3986 decodes the scheme as:
    /// ```
    /// URI = scheme ":" hier-part [ "?" query ] [ "#" fragment ]
    /// ```
    /// Common schemes include "file", "http", "ftp", etc.
    /// 
    /// The scheme can be different from the one used to construct the `GFile`,
    /// in that it might be replaced with one that is logically equivalent to the `GFile`.
    /// 
    /// This call does no blocking I/O.
    @inlinable var uriScheme: String! {
        /// Gets the URI scheme for a `GFile`.
        /// RFC 3986 decodes the scheme as:
        /// ```
        /// URI = scheme ":" hier-part [ "?" query ] [ "#" fragment ]
        /// ```
        /// Common schemes include "file", "http", "ftp", etc.
        /// 
        /// The scheme can be different from the one used to construct the `GFile`,
        /// in that it might be replaced with one that is logically equivalent to the `GFile`.
        /// 
        /// This call does no blocking I/O.
        get {
            let rv = g_file_get_uri_scheme(file_ptr).map({ String(cString: $0) })
            return rv
        }
    }


}



