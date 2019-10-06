import CGLib
import GLib
import GLibObject

// MARK: - DBusInterface Interface

/// The `DBusInterfaceProtocol` protocol exposes the methods and properties of an underlying `GDBusInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusInterface`.
/// Alternatively, use `DBusInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GDBusInterface` type is the base type for D-Bus interfaces both
/// on the service side (see `GDBusInterfaceSkeleton`) and client side
/// (see `GDBusProxy`).
public protocol DBusInterfaceProtocol {
    /// Untyped pointer to the underlying `GDBusInterface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusInterface` instance.
    var dbus_interface_ptr: UnsafeMutablePointer<GDBusInterface> { get }
}

/// The `DBusInterfaceRef` type acts as a lightweight Swift reference to an underlying `GDBusInterface` instance.
/// It exposes methods that can operate on this data type through `DBusInterfaceProtocol` conformance.
/// Use `DBusInterfaceRef` only as an `unowned` reference to an existing `GDBusInterface` instance.
///
/// The `GDBusInterface` type is the base type for D-Bus interfaces both
/// on the service side (see `GDBusInterfaceSkeleton`) and client side
/// (see `GDBusProxy`).
public struct DBusInterfaceRef: DBusInterfaceProtocol {
    /// Untyped pointer to the underlying `GDBusInterface` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_interface_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusInterface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusInterfaceProtocol`
    init<T: DBusInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DBusInterface` type acts as an owner of an underlying `GDBusInterface` instance.
/// It provides the methods that can operate on this data type through `DBusInterfaceProtocol` conformance.
/// Use `DBusInterface` as a strong reference or owner of a `GDBusInterface` instance.
///
/// The `GDBusInterface` type is the base type for D-Bus interfaces both
/// on the service side (see `GDBusInterfaceSkeleton`) and client side
/// (see `GDBusProxy`).
open class DBusInterface: DBusInterfaceProtocol {
    /// Untyped pointer to the underlying `GDBusInterface` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_interface_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DBusInterface` instance.
    public init(_ op: UnsafeMutablePointer<GDBusInterface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DBusInterfaceProtocol`
    /// `GDBusInterface` does not allow reference counting.
    public convenience init<T: DBusInterfaceProtocol>(_ other: T) {
        self.init(cast(other.dbus_interface_ptr))
        // no reference counting for GDBusInterface, cannot ref(cast(dbus_interface_ptr))
    }

    /// Do-nothing destructor for`GDBusInterface`.
    deinit {
        // no reference counting for GDBusInterface, cannot unref(cast(dbus_interface_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusInterface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusInterface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusInterface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusInterface>(opaquePointer))
    }



}

// MARK: - no DBusInterface properties

// MARK: - no signals


public extension DBusInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusInterface` instance.
    var dbus_interface_ptr: UnsafeMutablePointer<GDBusInterface> { return ptr.assumingMemoryBound(to: GDBusInterface.self) }

    /// Gets the `GDBusObject` that `interface_` belongs to, if any.
    func dupObject() -> UnsafeMutablePointer<GDBusObject>! {
        let rv = g_dbus_interface_dup_object(cast(dbus_interface_ptr))
        return cast(rv)
    }

    /// Gets D-Bus introspection information for the D-Bus interface
    /// implemented by `interface_`.
    func getInfo() -> UnsafeMutablePointer<GDBusInterfaceInfo>! {
        let rv = g_dbus_interface_get_info(cast(dbus_interface_ptr))
        return cast(rv)
    }

    /// Gets the `GDBusObject` that `interface_` belongs to, if any.
    /// 
    /// It is not safe to use the returned object if `interface_` or
    /// the returned object is being used from other threads. See
    /// `g_dbus_interface_dup_object()` for a thread-safe alternative.
    func getObject() -> UnsafeMutablePointer<GDBusObject>! {
        let rv = g_dbus_interface_get_object(cast(dbus_interface_ptr))
        return cast(rv)
    }

    /// Sets the `GDBusObject` for `interface_` to `object`.
    /// 
    /// Note that `interface_` will hold a weak reference to `object`.
    func set(object: DBusObjectProtocol) {
        g_dbus_interface_set_object(cast(dbus_interface_ptr), cast(object.ptr))
    
    }
    /// Gets D-Bus introspection information for the D-Bus interface
    /// implemented by `interface_`.
    var info: UnsafeMutablePointer<GDBusInterfaceInfo>! {
        /// Gets D-Bus introspection information for the D-Bus interface
        /// implemented by `interface_`.
        get {
            let rv = g_dbus_interface_get_info(cast(dbus_interface_ptr))
            return cast(rv)
        }
    }

    /// Gets the `GDBusObject` that `interface_` belongs to, if any.
    /// 
    /// It is not safe to use the returned object if `interface_` or
    /// the returned object is being used from other threads. See
    /// `g_dbus_interface_dup_object()` for a thread-safe alternative.
    var object: UnsafeMutablePointer<GDBusObject>! {
        /// Gets the `GDBusObject` that `interface_` belongs to, if any.
        /// 
        /// It is not safe to use the returned object if `interface_` or
        /// the returned object is being used from other threads. See
        /// `g_dbus_interface_dup_object()` for a thread-safe alternative.
        get {
            let rv = g_dbus_interface_get_object(cast(dbus_interface_ptr))
            return cast(rv)
        }
        /// Sets the `GDBusObject` for `interface_` to `object`.
        /// 
        /// Note that `interface_` will hold a weak reference to `object`.
        nonmutating set {
            g_dbus_interface_set_object(cast(dbus_interface_ptr), cast(newValue))
        }
    }
}



// MARK: - DBusObject Interface

/// The `DBusObjectProtocol` protocol exposes the methods and properties of an underlying `GDBusObject` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusObject`.
/// Alternatively, use `DBusObjectRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GDBusObject` type is the base type for D-Bus objects on both
/// the service side (see `GDBusObjectSkeleton`) and the client side
/// (see `GDBusObjectProxy`). It is essentially just a container of
/// interfaces.
public protocol DBusObjectProtocol {
    /// Untyped pointer to the underlying `GDBusObject` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusObject` instance.
    var dbus_object_ptr: UnsafeMutablePointer<GDBusObject> { get }
}

/// The `DBusObjectRef` type acts as a lightweight Swift reference to an underlying `GDBusObject` instance.
/// It exposes methods that can operate on this data type through `DBusObjectProtocol` conformance.
/// Use `DBusObjectRef` only as an `unowned` reference to an existing `GDBusObject` instance.
///
/// The `GDBusObject` type is the base type for D-Bus objects on both
/// the service side (see `GDBusObjectSkeleton`) and the client side
/// (see `GDBusObjectProxy`). It is essentially just a container of
/// interfaces.
public struct DBusObjectRef: DBusObjectProtocol {
    /// Untyped pointer to the underlying `GDBusObject` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_object_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusObjectRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusObject>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusObjectProtocol`
    init<T: DBusObjectProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DBusObject` type acts as an owner of an underlying `GDBusObject` instance.
/// It provides the methods that can operate on this data type through `DBusObjectProtocol` conformance.
/// Use `DBusObject` as a strong reference or owner of a `GDBusObject` instance.
///
/// The `GDBusObject` type is the base type for D-Bus objects on both
/// the service side (see `GDBusObjectSkeleton`) and the client side
/// (see `GDBusObjectProxy`). It is essentially just a container of
/// interfaces.
open class DBusObject: DBusObjectProtocol {
    /// Untyped pointer to the underlying `GDBusObject` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_object_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DBusObject` instance.
    public init(_ op: UnsafeMutablePointer<GDBusObject>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DBusObjectProtocol`
    /// `GDBusObject` does not allow reference counting.
    public convenience init<T: DBusObjectProtocol>(_ other: T) {
        self.init(cast(other.dbus_object_ptr))
        // no reference counting for GDBusObject, cannot ref(cast(dbus_object_ptr))
    }

    /// Do-nothing destructor for`GDBusObject`.
    deinit {
        // no reference counting for GDBusObject, cannot unref(cast(dbus_object_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusObject.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusObject.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusObject.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusObject>(opaquePointer))
    }



}

// MARK: - no DBusObject properties

public enum DBusObjectSignalName: String, SignalNameProtocol {
    /// Emitted when `interface` is added to `object`.
    case interfaceAdded = "interface-added"
    /// Emitted when `interface` is removed from `object`.
    case interfaceRemoved = "interface-removed"

}

public extension DBusObjectProtocol {
    /// Connect a `DBusObjectSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: DBusObjectSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(dbus_object_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension DBusObjectProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusObject` instance.
    var dbus_object_ptr: UnsafeMutablePointer<GDBusObject> { return ptr.assumingMemoryBound(to: GDBusObject.self) }

    /// Gets the D-Bus interface with name `interface_name` associated with
    /// `object`, if any.
    func getInterface(interfaceName interface_name: UnsafePointer<gchar>) -> UnsafeMutablePointer<GDBusInterface>! {
        let rv = g_dbus_object_get_interface(cast(dbus_object_ptr), interface_name)
        return cast(rv)
    }

    /// Gets the D-Bus interfaces associated with `object`.
    func getInterfaces() -> UnsafeMutablePointer<GList>! {
        let rv = g_dbus_object_get_interfaces(cast(dbus_object_ptr))
        return cast(rv)
    }

    /// Gets the object path for `object`.
    func getObjectPath() -> String! {
        let rv = g_dbus_object_get_object_path(cast(dbus_object_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }
    /// Gets the D-Bus interfaces associated with `object`.
    var interfaces: UnsafeMutablePointer<GList>! {
        /// Gets the D-Bus interfaces associated with `object`.
        get {
            let rv = g_dbus_object_get_interfaces(cast(dbus_object_ptr))
            return cast(rv)
        }
    }

    /// Gets the object path for `object`.
    var objectPath: String! {
        /// Gets the object path for `object`.
        get {
            let rv = g_dbus_object_get_object_path(cast(dbus_object_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }
}



// MARK: - DBusObjectManager Interface

/// The `DBusObjectManagerProtocol` protocol exposes the methods and properties of an underlying `GDBusObjectManager` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusObjectManager`.
/// Alternatively, use `DBusObjectManagerRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GDBusObjectManager` type is the base type for service- and
/// client-side implementations of the standardized
/// [org.freedesktop.DBus.ObjectManager](http://dbus.freedesktop.org/doc/dbus-specification.html`standard`-interfaces-objectmanager)
/// interface.
/// 
/// See `GDBusObjectManagerClient` for the client-side implementation
/// and `GDBusObjectManagerServer` for the service-side implementation.
public protocol DBusObjectManagerProtocol {
    /// Untyped pointer to the underlying `GDBusObjectManager` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusObjectManager` instance.
    var dbus_object_manager_ptr: UnsafeMutablePointer<GDBusObjectManager> { get }
}

/// The `DBusObjectManagerRef` type acts as a lightweight Swift reference to an underlying `GDBusObjectManager` instance.
/// It exposes methods that can operate on this data type through `DBusObjectManagerProtocol` conformance.
/// Use `DBusObjectManagerRef` only as an `unowned` reference to an existing `GDBusObjectManager` instance.
///
/// The `GDBusObjectManager` type is the base type for service- and
/// client-side implementations of the standardized
/// [org.freedesktop.DBus.ObjectManager](http://dbus.freedesktop.org/doc/dbus-specification.html`standard`-interfaces-objectmanager)
/// interface.
/// 
/// See `GDBusObjectManagerClient` for the client-side implementation
/// and `GDBusObjectManagerServer` for the service-side implementation.
public struct DBusObjectManagerRef: DBusObjectManagerProtocol {
    /// Untyped pointer to the underlying `GDBusObjectManager` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_object_manager_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusObjectManagerRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusObjectManager>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusObjectManagerProtocol`
    init<T: DBusObjectManagerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DBusObjectManager` type acts as an owner of an underlying `GDBusObjectManager` instance.
/// It provides the methods that can operate on this data type through `DBusObjectManagerProtocol` conformance.
/// Use `DBusObjectManager` as a strong reference or owner of a `GDBusObjectManager` instance.
///
/// The `GDBusObjectManager` type is the base type for service- and
/// client-side implementations of the standardized
/// [org.freedesktop.DBus.ObjectManager](http://dbus.freedesktop.org/doc/dbus-specification.html`standard`-interfaces-objectmanager)
/// interface.
/// 
/// See `GDBusObjectManagerClient` for the client-side implementation
/// and `GDBusObjectManagerServer` for the service-side implementation.
open class DBusObjectManager: DBusObjectManagerProtocol {
    /// Untyped pointer to the underlying `GDBusObjectManager` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_object_manager_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DBusObjectManager` instance.
    public init(_ op: UnsafeMutablePointer<GDBusObjectManager>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DBusObjectManagerProtocol`
    /// `GDBusObjectManager` does not allow reference counting.
    public convenience init<T: DBusObjectManagerProtocol>(_ other: T) {
        self.init(cast(other.dbus_object_manager_ptr))
        // no reference counting for GDBusObjectManager, cannot ref(cast(dbus_object_manager_ptr))
    }

    /// Do-nothing destructor for`GDBusObjectManager`.
    deinit {
        // no reference counting for GDBusObjectManager, cannot unref(cast(dbus_object_manager_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusObjectManager.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusObjectManager.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusObjectManager.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusObjectManager>(opaquePointer))
    }



}

// MARK: - no DBusObjectManager properties

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

public extension DBusObjectManagerProtocol {
    /// Connect a `DBusObjectManagerSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: DBusObjectManagerSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(dbus_object_manager_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension DBusObjectManagerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusObjectManager` instance.
    var dbus_object_manager_ptr: UnsafeMutablePointer<GDBusObjectManager> { return ptr.assumingMemoryBound(to: GDBusObjectManager.self) }

    /// Gets the interface proxy for `interface_name` at `object_path`, if
    /// any.
    func getInterface(objectPath object_path: UnsafePointer<gchar>, interfaceName interface_name: UnsafePointer<gchar>) -> UnsafeMutablePointer<GDBusInterface>! {
        let rv = g_dbus_object_manager_get_interface(cast(dbus_object_manager_ptr), object_path, interface_name)
        return cast(rv)
    }

    /// Gets the `GDBusObjectProxy` at `object_path`, if any.
    func getObject(objectPath object_path: UnsafePointer<gchar>) -> UnsafeMutablePointer<GDBusObject>! {
        let rv = g_dbus_object_manager_get_object(cast(dbus_object_manager_ptr), object_path)
        return cast(rv)
    }

    /// Gets the object path that `manager` is for.
    func getObjectPath() -> String! {
        let rv = g_dbus_object_manager_get_object_path(cast(dbus_object_manager_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets all `GDBusObject` objects known to `manager`.
    func getObjects() -> UnsafeMutablePointer<GList>! {
        let rv = g_dbus_object_manager_get_objects(cast(dbus_object_manager_ptr))
        return cast(rv)
    }
    /// Gets the object path that `manager` is for.
    var objectPath: String! {
        /// Gets the object path that `manager` is for.
        get {
            let rv = g_dbus_object_manager_get_object_path(cast(dbus_object_manager_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets all `GDBusObject` objects known to `manager`.
    var objects: UnsafeMutablePointer<GList>! {
        /// Gets all `GDBusObject` objects known to `manager`.
        get {
            let rv = g_dbus_object_manager_get_objects(cast(dbus_object_manager_ptr))
            return cast(rv)
        }
    }
}



// MARK: - DatagramBased Interface

/// The `DatagramBasedProtocol` protocol exposes the methods and properties of an underlying `GDatagramBased` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DatagramBased`.
/// Alternatively, use `DatagramBasedRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
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
public protocol DatagramBasedProtocol {
    /// Untyped pointer to the underlying `GDatagramBased` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDatagramBased` instance.
    var datagram_based_ptr: UnsafeMutablePointer<GDatagramBased> { get }
}

/// The `DatagramBasedRef` type acts as a lightweight Swift reference to an underlying `GDatagramBased` instance.
/// It exposes methods that can operate on this data type through `DatagramBasedProtocol` conformance.
/// Use `DatagramBasedRef` only as an `unowned` reference to an existing `GDatagramBased` instance.
///
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
public struct DatagramBasedRef: DatagramBasedProtocol {
    /// Untyped pointer to the underlying `GDatagramBased` instance.
    /// For type-safe access, use the generated, typed pointer `datagram_based_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DatagramBasedRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDatagramBased>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DatagramBasedProtocol`
    init<T: DatagramBasedProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DatagramBased` type acts as an owner of an underlying `GDatagramBased` instance.
/// It provides the methods that can operate on this data type through `DatagramBasedProtocol` conformance.
/// Use `DatagramBased` as a strong reference or owner of a `GDatagramBased` instance.
///
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
open class DatagramBased: DatagramBasedProtocol {
    /// Untyped pointer to the underlying `GDatagramBased` instance.
    /// For type-safe access, use the generated, typed pointer `datagram_based_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DatagramBased` instance.
    public init(_ op: UnsafeMutablePointer<GDatagramBased>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DatagramBasedProtocol`
    /// `GDatagramBased` does not allow reference counting.
    public convenience init<T: DatagramBasedProtocol>(_ other: T) {
        self.init(cast(other.datagram_based_ptr))
        // no reference counting for GDatagramBased, cannot ref(cast(datagram_based_ptr))
    }

    /// Do-nothing destructor for`GDatagramBased`.
    deinit {
        // no reference counting for GDatagramBased, cannot unref(cast(datagram_based_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDatagramBased.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDatagramBased.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDatagramBased.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDatagramBased>(opaquePointer))
    }



}

// MARK: - no DatagramBased properties

// MARK: - no signals


public extension DatagramBasedProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDatagramBased` instance.
    var datagram_based_ptr: UnsafeMutablePointer<GDatagramBased> { return ptr.assumingMemoryBound(to: GDatagramBased.self) }

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
    func conditionCheck(condition: GLib.IOCondition) -> GIOCondition {
        let rv = g_datagram_based_condition_check(cast(datagram_based_ptr), condition)
        return rv
    }

    /// Waits for up to `timeout` microseconds for condition to become true on
    /// `datagram_based`. If the condition is met, `true` is returned.
    /// 
    /// If `cancellable` is cancelled before the condition is met, or if `timeout` is
    /// reached before the condition is met, then `false` is returned and `error` is
    /// set appropriately (`G_IO_ERROR_CANCELLED` or `G_IO_ERROR_TIMED_OUT`).
    func conditionWait(condition: GLib.IOCondition, timeout: Int64, cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_datagram_based_condition_wait(cast(datagram_based_ptr), condition, gint64(timeout), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
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
    func createSource(condition: GLib.IOCondition, cancellable: CancellableProtocol) -> UnsafeMutablePointer<GSource>! {
        let rv = g_datagram_based_create_source(cast(datagram_based_ptr), condition, cast(cancellable.ptr))
        return cast(rv)
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
    func receive(messages: UnsafeMutablePointer<GInputMessage>, numMessages num_messages: CUnsignedInt, flags: CInt, timeout: Int64, cancellable: CancellableProtocol) throws -> CInt {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_datagram_based_receive_messages(cast(datagram_based_ptr), cast(messages), guint(num_messages), gint(flags), gint64(timeout), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return CInt(rv)
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
    func send(messages: UnsafeMutablePointer<GOutputMessage>, numMessages num_messages: CUnsignedInt, flags: CInt, timeout: Int64, cancellable: CancellableProtocol) throws -> CInt {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_datagram_based_send_messages(cast(datagram_based_ptr), cast(messages), guint(num_messages), gint(flags), gint64(timeout), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return CInt(rv)
    }

    /// Creates a new `GDtlsClientConnection` wrapping `base_socket` which is
    /// assumed to communicate with the server identified by `server_identity`.
    func dtlsClientConnectionNew(serverIdentity server_identity: SocketConnectableProtocol) throws -> UnsafeMutablePointer<GDatagramBased>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dtls_client_connection_new(cast(datagram_based_ptr), cast(server_identity.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Creates a new `GDtlsServerConnection` wrapping `base_socket`.
    func dtlsServerConnectionNew(certificate: TLSCertificateProtocol) throws -> UnsafeMutablePointer<GDatagramBased>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dtls_server_connection_new(cast(datagram_based_ptr), cast(certificate.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }
}



// MARK: - Drive Interface

/// The `DriveProtocol` protocol exposes the methods and properties of an underlying `GDrive` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Drive`.
/// Alternatively, use `DriveRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
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
/// as a poll for media operation is potententially expensive and may
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
public protocol DriveProtocol {
    /// Untyped pointer to the underlying `GDrive` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDrive` instance.
    var drive_ptr: UnsafeMutablePointer<GDrive> { get }
}

/// The `DriveRef` type acts as a lightweight Swift reference to an underlying `GDrive` instance.
/// It exposes methods that can operate on this data type through `DriveProtocol` conformance.
/// Use `DriveRef` only as an `unowned` reference to an existing `GDrive` instance.
///
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
/// as a poll for media operation is potententially expensive and may
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
public struct DriveRef: DriveProtocol {
    /// Untyped pointer to the underlying `GDrive` instance.
    /// For type-safe access, use the generated, typed pointer `drive_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DriveRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDrive>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DriveProtocol`
    init<T: DriveProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Drive` type acts as an owner of an underlying `GDrive` instance.
/// It provides the methods that can operate on this data type through `DriveProtocol` conformance.
/// Use `Drive` as a strong reference or owner of a `GDrive` instance.
///
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
/// as a poll for media operation is potententially expensive and may
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
open class Drive: DriveProtocol {
    /// Untyped pointer to the underlying `GDrive` instance.
    /// For type-safe access, use the generated, typed pointer `drive_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Drive` instance.
    public init(_ op: UnsafeMutablePointer<GDrive>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DriveProtocol`
    /// `GDrive` does not allow reference counting.
    public convenience init<T: DriveProtocol>(_ other: T) {
        self.init(cast(other.drive_ptr))
        // no reference counting for GDrive, cannot ref(cast(drive_ptr))
    }

    /// Do-nothing destructor for`GDrive`.
    deinit {
        // no reference counting for GDrive, cannot unref(cast(drive_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDrive.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDrive.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDrive.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDrive>(opaquePointer))
    }



}

// MARK: - no Drive properties

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

public extension DriveProtocol {
    /// Connect a `DriveSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: DriveSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(drive_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension DriveProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDrive` instance.
    var drive_ptr: UnsafeMutablePointer<GDrive> { return ptr.assumingMemoryBound(to: GDrive.self) }

    /// Checks if a drive can be ejected.
    func canEject() -> Bool {
        let rv = g_drive_can_eject(cast(drive_ptr))
        return Bool(rv != 0)
    }

    /// Checks if a drive can be polled for media changes.
    func canPollForMedia() -> Bool {
        let rv = g_drive_can_poll_for_media(cast(drive_ptr))
        return Bool(rv != 0)
    }

    /// Checks if a drive can be started.
    func canStart() -> Bool {
        let rv = g_drive_can_start(cast(drive_ptr))
        return Bool(rv != 0)
    }

    /// Checks if a drive can be started degraded.
    func canStartDegraded() -> Bool {
        let rv = g_drive_can_start_degraded(cast(drive_ptr))
        return Bool(rv != 0)
    }

    /// Checks if a drive can be stopped.
    func canStop() -> Bool {
        let rv = g_drive_can_stop(cast(drive_ptr))
        return Bool(rv != 0)
    }

    /// Asynchronously ejects a drive.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_drive_eject_finish()` to obtain the
    /// result of the operation.
    ///
    /// **eject is deprecated:**
    /// Use g_drive_eject_with_operation() instead.
    @available(*, deprecated) func eject(flags: MountUnmountFlags, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_drive_eject(cast(drive_ptr), flags, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes ejecting a drive.
    ///
    /// **eject_finish is deprecated:**
    /// Use g_drive_eject_with_operation_finish() instead.
    @available(*, deprecated) func ejectFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_drive_eject_finish(cast(drive_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Ejects a drive. This is an asynchronous operation, and is
    /// finished by calling `g_drive_eject_with_operation_finish()` with the `drive`
    /// and `GAsyncResult` data returned in the `callback`.
    func ejectWithOperation(flags: MountUnmountFlags, mountOperation mount_operation: MountOperationProtocol, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_drive_eject_with_operation(cast(drive_ptr), flags, cast(mount_operation.ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes ejecting a drive. If any errors occurred during the operation,
    /// `error` will be set to contain the errors and `false` will be returned.
    func ejectWithOperationFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_drive_eject_with_operation_finish(cast(drive_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Gets the kinds of identifiers that `drive` has.
    /// Use `g_drive_get_identifier()` to obtain the identifiers
    /// themselves.
    func enumerateIdentifiers() -> UnsafeMutablePointer<UnsafeMutablePointer<CChar>>! {
        let rv = g_drive_enumerate_identifiers(cast(drive_ptr))
        return cast(rv)
    }

    /// Gets the icon for `drive`.
    func getIcon() -> UnsafeMutablePointer<GIcon>! {
        let rv = g_drive_get_icon(cast(drive_ptr))
        return cast(rv)
    }

    /// Gets the identifier of the given kind for `drive`. The only
    /// identifier currently available is
    /// `G_DRIVE_IDENTIFIER_KIND_UNIX_DEVICE`.
    func getIdentifier(kind: UnsafePointer<CChar>) -> String! {
        let rv = g_drive_get_identifier(cast(drive_ptr), kind)
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the name of `drive`.
    func getName() -> String! {
        let rv = g_drive_get_name(cast(drive_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the sort key for `drive`, if any.
    func getSortKey() -> String! {
        let rv = g_drive_get_sort_key(cast(drive_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets a hint about how a drive can be started/stopped.
    func getStartStopType() -> GDriveStartStopType {
        let rv = g_drive_get_start_stop_type(cast(drive_ptr))
        return rv
    }

    /// Gets the icon for `drive`.
    func getSymbolicIcon() -> UnsafeMutablePointer<GIcon>! {
        let rv = g_drive_get_symbolic_icon(cast(drive_ptr))
        return cast(rv)
    }

    /// Get a list of mountable volumes for `drive`.
    /// 
    /// The returned list should be freed with `g_list_free()`, after
    /// its elements have been unreffed with `g_object_unref()`.
    func getVolumes() -> UnsafeMutablePointer<GList>! {
        let rv = g_drive_get_volumes(cast(drive_ptr))
        return cast(rv)
    }

    /// Checks if the `drive` has media. Note that the OS may not be polling
    /// the drive for media changes; see `g_drive_is_media_check_automatic()`
    /// for more details.
    func hasMedia() -> Bool {
        let rv = g_drive_has_media(cast(drive_ptr))
        return Bool(rv != 0)
    }

    /// Check if `drive` has any mountable volumes.
    func hasVolumes() -> Bool {
        let rv = g_drive_has_volumes(cast(drive_ptr))
        return Bool(rv != 0)
    }

    /// Asynchronously polls `drive` to see if media has been inserted or removed.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_drive_poll_for_media_finish()` to obtain the
    /// result of the operation.
    func pollForMedia(cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_drive_poll_for_media(cast(drive_ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an operation started with `g_drive_poll_for_media()` on a drive.
    func pollForMediaFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_drive_poll_for_media_finish(cast(drive_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Asynchronously starts a drive.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_drive_start_finish()` to obtain the
    /// result of the operation.
    func start(flags: DriveStartFlags, mountOperation mount_operation: MountOperationProtocol, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_drive_start(cast(drive_ptr), flags, cast(mount_operation.ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes starting a drive.
    func startFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_drive_start_finish(cast(drive_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Asynchronously stops a drive.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_drive_stop_finish()` to obtain the
    /// result of the operation.
    func stop(flags: MountUnmountFlags, mountOperation mount_operation: MountOperationProtocol, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_drive_stop(cast(drive_ptr), flags, cast(mount_operation.ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes stopping a drive.
    func stopFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_drive_stop_finish(cast(drive_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }
    /// Gets the icon for `drive`.
    var icon: UnsafeMutablePointer<GIcon>! {
        /// Gets the icon for `drive`.
        get {
            let rv = g_drive_get_icon(cast(drive_ptr))
            return cast(rv)
        }
    }

    /// Checks if `drive` is capabable of automatically detecting media changes.
    var isMediaCheckAutomatic: Bool {
        /// Checks if `drive` is capabable of automatically detecting media changes.
        get {
            let rv = g_drive_is_media_check_automatic(cast(drive_ptr))
            return Bool(rv != 0)
        }
    }

    /// Checks if the `drive` supports removable media.
    var isMediaRemovable: Bool {
        /// Checks if the `drive` supports removable media.
        get {
            let rv = g_drive_is_media_removable(cast(drive_ptr))
            return Bool(rv != 0)
        }
    }

    /// Checks if the `GDrive` and/or its media is considered removable by the user.
    /// See `g_drive_is_media_removable()`.
    var isRemovable: Bool {
        /// Checks if the `GDrive` and/or its media is considered removable by the user.
        /// See `g_drive_is_media_removable()`.
        get {
            let rv = g_drive_is_removable(cast(drive_ptr))
            return Bool(rv != 0)
        }
    }

    /// Gets the name of `drive`.
    var name: String! {
        /// Gets the name of `drive`.
        get {
            let rv = g_drive_get_name(cast(drive_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the sort key for `drive`, if any.
    var sortKey: String! {
        /// Gets the sort key for `drive`, if any.
        get {
            let rv = g_drive_get_sort_key(cast(drive_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets a hint about how a drive can be started/stopped.
    var startStopType: GDriveStartStopType {
        /// Gets a hint about how a drive can be started/stopped.
        get {
            let rv = g_drive_get_start_stop_type(cast(drive_ptr))
            return rv
        }
    }

    /// Gets the icon for `drive`.
    var symbolicIcon: UnsafeMutablePointer<GIcon>! {
        /// Gets the icon for `drive`.
        get {
            let rv = g_drive_get_symbolic_icon(cast(drive_ptr))
            return cast(rv)
        }
    }

    /// Get a list of mountable volumes for `drive`.
    /// 
    /// The returned list should be freed with `g_list_free()`, after
    /// its elements have been unreffed with `g_object_unref()`.
    var volumes: UnsafeMutablePointer<GList>! {
        /// Get a list of mountable volumes for `drive`.
        /// 
        /// The returned list should be freed with `g_list_free()`, after
        /// its elements have been unreffed with `g_object_unref()`.
        get {
            let rv = g_drive_get_volumes(cast(drive_ptr))
            return cast(rv)
        }
    }
}



// MARK: - DtlsClientConnection Interface

/// The `DtlsClientConnectionProtocol` protocol exposes the methods and properties of an underlying `GDtlsClientConnection` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DtlsClientConnection`.
/// Alternatively, use `DtlsClientConnectionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GDtlsClientConnection` is the client-side subclass of
/// `GDtlsConnection`, representing a client-side DTLS connection.
public protocol DtlsClientConnectionProtocol: DatagramBasedProtocol {
    /// Untyped pointer to the underlying `GDtlsClientConnection` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDtlsClientConnection` instance.
    var dtls_client_connection_ptr: UnsafeMutablePointer<GDtlsClientConnection> { get }
}

/// The `DtlsClientConnectionRef` type acts as a lightweight Swift reference to an underlying `GDtlsClientConnection` instance.
/// It exposes methods that can operate on this data type through `DtlsClientConnectionProtocol` conformance.
/// Use `DtlsClientConnectionRef` only as an `unowned` reference to an existing `GDtlsClientConnection` instance.
///
/// `GDtlsClientConnection` is the client-side subclass of
/// `GDtlsConnection`, representing a client-side DTLS connection.
public struct DtlsClientConnectionRef: DtlsClientConnectionProtocol {
    /// Untyped pointer to the underlying `GDtlsClientConnection` instance.
    /// For type-safe access, use the generated, typed pointer `dtls_client_connection_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DtlsClientConnectionRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDtlsClientConnection>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DtlsClientConnectionProtocol`
    init<T: DtlsClientConnectionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DtlsClientConnection` type acts as an owner of an underlying `GDtlsClientConnection` instance.
/// It provides the methods that can operate on this data type through `DtlsClientConnectionProtocol` conformance.
/// Use `DtlsClientConnection` as a strong reference or owner of a `GDtlsClientConnection` instance.
///
/// `GDtlsClientConnection` is the client-side subclass of
/// `GDtlsConnection`, representing a client-side DTLS connection.
open class DtlsClientConnection: DatagramBased, DtlsClientConnectionProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DtlsClientConnection` instance.
    public init(_ op: UnsafeMutablePointer<GDtlsClientConnection>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `DtlsClientConnectionProtocol`
    /// `GDtlsClientConnection` does not allow reference counting.
    public convenience init<T: DtlsClientConnectionProtocol>(_ other: T) {
        self.init(cast(other.dtls_client_connection_ptr))
        // no reference counting for GDtlsClientConnection, cannot ref(cast(dtls_client_connection_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDtlsClientConnection.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDtlsClientConnection.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDtlsClientConnection.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDtlsClientConnection>(opaquePointer))
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
    /// `GDtlsClientConnection:validation`-flags, this object will be used
    /// to determine the expected identify of the remote end of the
    /// connection; if `GDtlsClientConnection:server`-identity is not set,
    /// or does not match the identity presented by the server, then the
    /// `G_TLS_CERTIFICATE_BAD_IDENTITY` validation will fail.
    /// 
    /// In addition to its use in verifying the server certificate,
    /// this is also used to give a hint to the server about what
    /// certificate we expect, which is useful for servers that serve
    /// virtual hosts.
    case serverIdentity = "server-identity"
    /// What steps to perform when validating a certificate received from
    /// a server. Server certificates that fail to validate in all of the
    /// ways indicated here will be rejected unless the application
    /// overrides the default via `GDtlsConnection::accept`-certificate.
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DtlsClientConnectionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(dtls_client_connection_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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
    /// `GDtlsClientConnection:validation`-flags, this object will be used
    /// to determine the expected identify of the remote end of the
    /// connection; if `GDtlsClientConnection:server`-identity is not set,
    /// or does not match the identity presented by the server, then the
    /// `G_TLS_CERTIFICATE_BAD_IDENTITY` validation will fail.
    /// 
    /// In addition to its use in verifying the server certificate,
    /// this is also used to give a hint to the server about what
    /// certificate we expect, which is useful for servers that serve
    /// virtual hosts.
    case notifyServerIdentity = "notify::server-identity"
    /// What steps to perform when validating a certificate received from
    /// a server. Server certificates that fail to validate in all of the
    /// ways indicated here will be rejected unless the application
    /// overrides the default via `GDtlsConnection::accept`-certificate.
    case notifyValidationFlags = "notify::validation-flags"
}

public extension DtlsClientConnectionProtocol {
    /// Connect a `DtlsClientConnectionSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: DtlsClientConnectionSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(dtls_client_connection_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension DtlsClientConnectionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDtlsClientConnection` instance.
    var dtls_client_connection_ptr: UnsafeMutablePointer<GDtlsClientConnection> { return ptr.assumingMemoryBound(to: GDtlsClientConnection.self) }

    /// Gets the list of distinguished names of the Certificate Authorities
    /// that the server will accept certificates from. This will be set
    /// during the TLS handshake if the server requests a certificate.
    /// Otherwise, it will be `nil`.
    /// 
    /// Each item in the list is a `GByteArray` which contains the complete
    /// subject DN of the certificate authority.
    func getAcceptedCas() -> UnsafeMutablePointer<GList>! {
        let rv = g_dtls_client_connection_get_accepted_cas(cast(dtls_client_connection_ptr))
        return cast(rv)
    }

    /// Gets `conn`'s expected server identity
    func getServerIdentity() -> UnsafeMutablePointer<GSocketConnectable>! {
        let rv = g_dtls_client_connection_get_server_identity(cast(dtls_client_connection_ptr))
        return cast(rv)
    }

    /// Gets `conn`'s validation flags
    func getValidationFlags() -> GTlsCertificateFlags {
        let rv = g_dtls_client_connection_get_validation_flags(cast(dtls_client_connection_ptr))
        return rv
    }

    /// Sets `conn`'s expected server identity, which is used both to tell
    /// servers on virtual hosts which certificate to present, and also
    /// to let `conn` know what name to look for in the certificate when
    /// performing `G_TLS_CERTIFICATE_BAD_IDENTITY` validation, if enabled.
    func setServer(identity: SocketConnectableProtocol) {
        g_dtls_client_connection_set_server_identity(cast(dtls_client_connection_ptr), cast(identity.ptr))
    
    }

    /// Sets `conn`'s validation flags, to override the default set of
    /// checks performed when validating a server certificate. By default,
    /// `G_TLS_CERTIFICATE_VALIDATE_ALL` is used.
    func setValidation(flags: TLSCertificateFlags) {
        g_dtls_client_connection_set_validation_flags(cast(dtls_client_connection_ptr), flags)
    
    }
    /// Gets the list of distinguished names of the Certificate Authorities
    /// that the server will accept certificates from. This will be set
    /// during the TLS handshake if the server requests a certificate.
    /// Otherwise, it will be `nil`.
    /// 
    /// Each item in the list is a `GByteArray` which contains the complete
    /// subject DN of the certificate authority.
    var acceptedCas: UnsafeMutablePointer<GList>! {
        /// Gets the list of distinguished names of the Certificate Authorities
        /// that the server will accept certificates from. This will be set
        /// during the TLS handshake if the server requests a certificate.
        /// Otherwise, it will be `nil`.
        /// 
        /// Each item in the list is a `GByteArray` which contains the complete
        /// subject DN of the certificate authority.
        get {
            let rv = g_dtls_client_connection_get_accepted_cas(cast(dtls_client_connection_ptr))
            return cast(rv)
        }
    }

    /// Gets `conn`'s expected server identity
    var serverIdentity: UnsafeMutablePointer<GSocketConnectable>! {
        /// Gets `conn`'s expected server identity
        get {
            let rv = g_dtls_client_connection_get_server_identity(cast(dtls_client_connection_ptr))
            return cast(rv)
        }
        /// Sets `conn`'s expected server identity, which is used both to tell
        /// servers on virtual hosts which certificate to present, and also
        /// to let `conn` know what name to look for in the certificate when
        /// performing `G_TLS_CERTIFICATE_BAD_IDENTITY` validation, if enabled.
        nonmutating set {
            g_dtls_client_connection_set_server_identity(cast(dtls_client_connection_ptr), cast(newValue))
        }
    }

    /// Gets `conn`'s validation flags
    var validationFlags: GTlsCertificateFlags {
        /// Gets `conn`'s validation flags
        get {
            let rv = g_dtls_client_connection_get_validation_flags(cast(dtls_client_connection_ptr))
            return rv
        }
        /// Sets `conn`'s validation flags, to override the default set of
        /// checks performed when validating a server certificate. By default,
        /// `G_TLS_CERTIFICATE_VALIDATE_ALL` is used.
        nonmutating set {
            g_dtls_client_connection_set_validation_flags(cast(dtls_client_connection_ptr), newValue)
        }
    }
}



// MARK: - DtlsConnection Interface

/// The `DtlsConnectionProtocol` protocol exposes the methods and properties of an underlying `GDtlsConnection` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DtlsConnection`.
/// Alternatively, use `DtlsConnectionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
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
/// (`GDtlsConnection:base`-socket).
/// 
/// To close a DTLS connection, use `g_dtls_connection_close()`.
/// 
/// Neither `GDtlsServerConnection` or `GDtlsClientConnection` set the peer address
/// on their base `GDatagramBased` if it is a `GSocket` — it is up to the caller to
/// do that if they wish. If they do not, and `g_socket_close()` is called on the
/// base socket, the `GDtlsConnection` will not raise a `G_IO_ERROR_NOT_CONNECTED`
/// error on further I/O.
public protocol DtlsConnectionProtocol: DatagramBasedProtocol {
    /// Untyped pointer to the underlying `GDtlsConnection` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDtlsConnection` instance.
    var dtls_connection_ptr: UnsafeMutablePointer<GDtlsConnection> { get }
}

/// The `DtlsConnectionRef` type acts as a lightweight Swift reference to an underlying `GDtlsConnection` instance.
/// It exposes methods that can operate on this data type through `DtlsConnectionProtocol` conformance.
/// Use `DtlsConnectionRef` only as an `unowned` reference to an existing `GDtlsConnection` instance.
///
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
/// (`GDtlsConnection:base`-socket).
/// 
/// To close a DTLS connection, use `g_dtls_connection_close()`.
/// 
/// Neither `GDtlsServerConnection` or `GDtlsClientConnection` set the peer address
/// on their base `GDatagramBased` if it is a `GSocket` — it is up to the caller to
/// do that if they wish. If they do not, and `g_socket_close()` is called on the
/// base socket, the `GDtlsConnection` will not raise a `G_IO_ERROR_NOT_CONNECTED`
/// error on further I/O.
public struct DtlsConnectionRef: DtlsConnectionProtocol {
    /// Untyped pointer to the underlying `GDtlsConnection` instance.
    /// For type-safe access, use the generated, typed pointer `dtls_connection_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DtlsConnectionRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDtlsConnection>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DtlsConnectionProtocol`
    init<T: DtlsConnectionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DtlsConnection` type acts as an owner of an underlying `GDtlsConnection` instance.
/// It provides the methods that can operate on this data type through `DtlsConnectionProtocol` conformance.
/// Use `DtlsConnection` as a strong reference or owner of a `GDtlsConnection` instance.
///
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
/// (`GDtlsConnection:base`-socket).
/// 
/// To close a DTLS connection, use `g_dtls_connection_close()`.
/// 
/// Neither `GDtlsServerConnection` or `GDtlsClientConnection` set the peer address
/// on their base `GDatagramBased` if it is a `GSocket` — it is up to the caller to
/// do that if they wish. If they do not, and `g_socket_close()` is called on the
/// base socket, the `GDtlsConnection` will not raise a `G_IO_ERROR_NOT_CONNECTED`
/// error on further I/O.
open class DtlsConnection: DatagramBased, DtlsConnectionProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DtlsConnection` instance.
    public init(_ op: UnsafeMutablePointer<GDtlsConnection>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `DtlsConnectionProtocol`
    /// `GDtlsConnection` does not allow reference counting.
    public convenience init<T: DtlsConnectionProtocol>(_ other: T) {
        self.init(cast(other.dtls_connection_ptr))
        // no reference counting for GDtlsConnection, cannot ref(cast(dtls_connection_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDtlsConnection.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDtlsConnection.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDtlsConnection.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDtlsConnection>(opaquePointer))
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
    /// completed and the certificate has been accepted. Note in
    /// particular that this is not yet set during the emission of
    /// `GDtlsConnection::accept`-certificate.
    /// 
    /// (You can watch for a `GObject::notify` signal on this property to
    /// detect when a handshake has occurred.)
    case peerCertificate = "peer-certificate"
    /// The errors noticed-and-ignored while verifying
    /// `GDtlsConnection:peer`-certificate. Normally this should be 0, but
    /// it may not be if `GDtlsClientConnection:validation`-flags is not
    /// `G_TLS_CERTIFICATE_VALIDATE_ALL`, or if
    /// `GDtlsConnection::accept`-certificate overrode the default
    /// behavior.
    case peerCertificateErrors = "peer-certificate-errors"
    /// The rehandshaking mode. See
    /// `g_dtls_connection_set_rehandshake_mode()`.
    ///
    /// **rehandshake-mode is deprecated:**
    /// Changing the rehandshake mode is no longer
    ///   required for compatibility. Also, rehandshaking has been removed
    ///   from the TLS protocol in TLS 1.3.
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DtlsConnectionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(dtls_connection_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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
    /// completed and the certificate has been accepted. Note in
    /// particular that this is not yet set during the emission of
    /// `GDtlsConnection::accept`-certificate.
    /// 
    /// (You can watch for a `GObject::notify` signal on this property to
    /// detect when a handshake has occurred.)
    case notifyPeerCertificate = "notify::peer-certificate"
    /// The errors noticed-and-ignored while verifying
    /// `GDtlsConnection:peer`-certificate. Normally this should be 0, but
    /// it may not be if `GDtlsClientConnection:validation`-flags is not
    /// `G_TLS_CERTIFICATE_VALIDATE_ALL`, or if
    /// `GDtlsConnection::accept`-certificate overrode the default
    /// behavior.
    case notifyPeerCertificateErrors = "notify::peer-certificate-errors"
    /// The rehandshaking mode. See
    /// `g_dtls_connection_set_rehandshake_mode()`.
    ///
    /// **rehandshake-mode is deprecated:**
    /// Changing the rehandshake mode is no longer
    ///   required for compatibility. Also, rehandshaking has been removed
    ///   from the TLS protocol in TLS 1.3.
    case notifyRehandshakeMode = "notify::rehandshake-mode"
    /// Whether or not proper TLS close notification is required.
    /// See `g_dtls_connection_set_require_close_notify()`.
    case notifyRequireCloseNotify = "notify::require-close-notify"
}

public extension DtlsConnectionProtocol {
    /// Connect a `DtlsConnectionSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: DtlsConnectionSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(dtls_connection_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension DtlsConnectionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDtlsConnection` instance.
    var dtls_connection_ptr: UnsafeMutablePointer<GDtlsConnection> { return ptr.assumingMemoryBound(to: GDtlsConnection.self) }

    /// Close the DTLS connection. This is equivalent to calling
    /// `g_dtls_connection_shutdown()` to shut down both sides of the connection.
    /// 
    /// Closing a `GDtlsConnection` waits for all buffered but untransmitted data to
    /// be sent before it completes. It then sends a `close_notify` DTLS alert to the
    /// peer and may wait for a `close_notify` to be received from the peer. It does
    /// not close the underlying `GDtlsConnection:base`-socket; that must be closed
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
    func close(cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dtls_connection_close(cast(dtls_connection_ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Asynchronously close the DTLS connection. See `g_dtls_connection_close()` for
    /// more information.
    func closeAsync(ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_dtls_connection_close_async(cast(dtls_connection_ptr), io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finish an asynchronous TLS close operation. See `g_dtls_connection_close()`
    /// for more information.
    func closeFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dtls_connection_close_finish(cast(dtls_connection_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Used by `GDtlsConnection` implementations to emit the
    /// `GDtlsConnection::accept`-certificate signal.
    func emitAcceptCertificate(peerCert peer_cert: TLSCertificateProtocol, errors: TLSCertificateFlags) -> Bool {
        let rv = g_dtls_connection_emit_accept_certificate(cast(dtls_connection_ptr), cast(peer_cert.ptr), errors)
        return Bool(rv != 0)
    }

    /// Gets `conn`'s certificate, as set by
    /// `g_dtls_connection_set_certificate()`.
    func getCertificate() -> UnsafeMutablePointer<GTlsCertificate>! {
        let rv = g_dtls_connection_get_certificate(cast(dtls_connection_ptr))
        return cast(rv)
    }

    /// Gets the certificate database that `conn` uses to verify
    /// peer certificates. See `g_dtls_connection_set_database()`.
    func getDatabase() -> UnsafeMutablePointer<GTlsDatabase>! {
        let rv = g_dtls_connection_get_database(cast(dtls_connection_ptr))
        return cast(rv)
    }

    /// Get the object that will be used to interact with the user. It will be used
    /// for things like prompting the user for passwords. If `nil` is returned, then
    /// no user interaction will occur for this connection.
    func getInteraction() -> UnsafeMutablePointer<GTlsInteraction>! {
        let rv = g_dtls_connection_get_interaction(cast(dtls_connection_ptr))
        return cast(rv)
    }

    /// Gets the name of the application-layer protocol negotiated during
    /// the handshake.
    /// 
    /// If the peer did not use the ALPN extension, or did not advertise a
    /// protocol that matched one of `conn`'s protocols, or the TLS backend
    /// does not support ALPN, then this will be `nil`. See
    /// `g_dtls_connection_set_advertised_protocols()`.
    func getNegotiatedProtocol() -> String! {
        let rv = g_dtls_connection_get_negotiated_protocol(cast(dtls_connection_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets `conn`'s peer's certificate after the handshake has completed.
    /// (It is not set during the emission of
    /// `GDtlsConnection::accept`-certificate.)
    func getPeerCertificate() -> UnsafeMutablePointer<GTlsCertificate>! {
        let rv = g_dtls_connection_get_peer_certificate(cast(dtls_connection_ptr))
        return cast(rv)
    }

    /// Gets the errors associated with validating `conn`'s peer's
    /// certificate, after the handshake has completed. (It is not set
    /// during the emission of `GDtlsConnection::accept`-certificate.)
    func getPeerCertificateErrors() -> GTlsCertificateFlags {
        let rv = g_dtls_connection_get_peer_certificate_errors(cast(dtls_connection_ptr))
        return rv
    }

    /// Gets `conn` rehandshaking mode. See
    /// `g_dtls_connection_set_rehandshake_mode()` for details.
    func getRehandshakeMode() -> GTlsRehandshakeMode {
        let rv = g_dtls_connection_get_rehandshake_mode(cast(dtls_connection_ptr))
        return rv
    }

    /// Tests whether or not `conn` expects a proper TLS close notification
    /// when the connection is closed. See
    /// `g_dtls_connection_set_require_close_notify()` for details.
    func getRequireCloseNotify() -> Bool {
        let rv = g_dtls_connection_get_require_close_notify(cast(dtls_connection_ptr))
        return Bool(rv != 0)
    }

    /// Attempts a TLS handshake on `conn`.
    /// 
    /// On the client side, it is never necessary to call this method;
    /// although the connection needs to perform a handshake after
    /// connecting (or after sending a "STARTTLS"-type command) and may
    /// need to rehandshake later if the server requests it,
    /// `GDtlsConnection` will handle this for you automatically when you try
    /// to send or receive data on the connection. However, you can call
    /// `g_dtls_connection_handshake()` manually if you want to know for sure
    /// whether the initial handshake succeeded or failed (as opposed to
    /// just immediately trying to write to `conn`, in which
    /// case if it fails, it may not be possible to tell if it failed
    /// before or after completing the handshake).
    /// 
    /// Likewise, on the server side, although a handshake is necessary at
    /// the beginning of the communication, you do not need to call this
    /// function explicitly unless you want clearer error reporting.
    /// 
    /// If TLS 1.2 or older is in use, you may call
    /// `g_dtls_connection_handshake()` after the initial handshake to
    /// rehandshake; however, this usage is deprecated because rehandshaking
    /// is no longer part of the TLS protocol in TLS 1.3. Accordingly, the
    /// behavior of calling this function after the initial handshake is now
    /// undefined, except it is guaranteed to be reasonable and
    /// nondestructive so as to preserve compatibility with code written for
    /// older versions of GLib.
    /// 
    /// `GDtlsConnection::accept_certificate` may be emitted during the
    /// handshake.
    func handshake(cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dtls_connection_handshake(cast(dtls_connection_ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Asynchronously performs a TLS handshake on `conn`. See
    /// `g_dtls_connection_handshake()` for more information.
    func handshakeAsync(ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_dtls_connection_handshake_async(cast(dtls_connection_ptr), io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finish an asynchronous TLS handshake operation. See
    /// `g_dtls_connection_handshake()` for more information.
    func handshakeFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dtls_connection_handshake_finish(cast(dtls_connection_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Sets the list of application-layer protocols to advertise that the
    /// caller is willing to speak on this connection. The
    /// Application-Layer Protocol Negotiation (ALPN) extension will be
    /// used to negotiate a compatible protocol with the peer; use
    /// `g_dtls_connection_get_negotiated_protocol()` to find the negotiated
    /// protocol after the handshake.  Specifying `nil` for the the value
    /// of `protocols` will disable ALPN negotiation.
    /// 
    /// See [IANA TLS ALPN Protocol IDs](https://www.iana.org/assignments/tls-extensiontype-values/tls-extensiontype-values.xhtml`alpn`-protocol-ids)
    /// for a list of registered protocol IDs.
    func setAdvertised(protocols: UnsafePointer<UnsafePointer<gchar>>) {
        g_dtls_connection_set_advertised_protocols(cast(dtls_connection_ptr), cast(protocols))
    
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
    func set(certificate: TLSCertificateProtocol) {
        g_dtls_connection_set_certificate(cast(dtls_connection_ptr), cast(certificate.ptr))
    
    }

    /// Sets the certificate database that is used to verify peer certificates.
    /// This is set to the default database by default. See
    /// `g_tls_backend_get_default_database()`. If set to `nil`, then
    /// peer certificate validation will always set the
    /// `G_TLS_CERTIFICATE_UNKNOWN_CA` error (meaning
    /// `GDtlsConnection::accept`-certificate will always be emitted on
    /// client-side connections, unless that bit is not set in
    /// `GDtlsClientConnection:validation`-flags).
    func set(database: TLSDatabaseProtocol) {
        g_dtls_connection_set_database(cast(dtls_connection_ptr), cast(database.ptr))
    
    }

    /// Set the object that will be used to interact with the user. It will be used
    /// for things like prompting the user for passwords.
    /// 
    /// The `interaction` argument will normally be a derived subclass of
    /// `GTlsInteraction`. `nil` can also be provided if no user interaction
    /// should occur for this connection.
    func set(interaction: TLSInteractionProtocol) {
        g_dtls_connection_set_interaction(cast(dtls_connection_ptr), cast(interaction.ptr))
    
    }

    /// Sets how `conn` behaves with respect to rehandshaking requests.
    /// 
    /// `G_TLS_REHANDSHAKE_NEVER` means that it will never agree to
    /// rehandshake after the initial handshake is complete. (For a client,
    /// this means it will refuse rehandshake requests from the server, and
    /// for a server, this means it will close the connection with an error
    /// if the client attempts to rehandshake.)
    /// 
    /// `G_TLS_REHANDSHAKE_SAFELY` means that the connection will allow a
    /// rehandshake only if the other end of the connection supports the
    /// TLS `renegotiation_info` extension. This is the default behavior,
    /// but means that rehandshaking will not work against older
    /// implementations that do not support that extension.
    /// 
    /// `G_TLS_REHANDSHAKE_UNSAFELY` means that the connection will allow
    /// rehandshaking even without the `renegotiation_info` extension. On
    /// the server side in particular, this is not recommended, since it
    /// leaves the server open to certain attacks. However, this mode is
    /// necessary if you need to allow renegotiation with older client
    /// software.
    ///
    /// **set_rehandshake_mode is deprecated:**
    /// Changing the rehandshake mode is no longer
    ///   required for compatibility. Also, rehandshaking has been removed
    ///   from the TLS protocol in TLS 1.3.
    @available(*, deprecated) func setRehandshake(mode: TLSRehandshakeMode) {
        g_dtls_connection_set_rehandshake_mode(cast(dtls_connection_ptr), mode)
    
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
    /// close, you can close `conn`'s `GDtlsConnection:base`-socket rather
    /// than closing `conn` itself.
    func set(requireCloseNotify require_close_notify: Bool) {
        g_dtls_connection_set_require_close_notify(cast(dtls_connection_ptr), gboolean(require_close_notify ? 1 : 0))
    
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
    func shutdown(shutdownRead shutdown_read: Bool, shutdownWrite shutdown_write: Bool, cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dtls_connection_shutdown(cast(dtls_connection_ptr), gboolean(shutdown_read ? 1 : 0), gboolean(shutdown_write ? 1 : 0), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Asynchronously shut down part or all of the DTLS connection. See
    /// `g_dtls_connection_shutdown()` for more information.
    func shutdownAsync(shutdownRead shutdown_read: Bool, shutdownWrite shutdown_write: Bool, ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_dtls_connection_shutdown_async(cast(dtls_connection_ptr), gboolean(shutdown_read ? 1 : 0), gboolean(shutdown_write ? 1 : 0), io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finish an asynchronous TLS shutdown operation. See
    /// `g_dtls_connection_shutdown()` for more information.
    func shutdownFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dtls_connection_shutdown_finish(cast(dtls_connection_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }
    /// The connection's certificate; see
    /// `g_dtls_connection_set_certificate()`.
    var certificate: UnsafeMutablePointer<GTlsCertificate>! {
        /// Gets `conn`'s certificate, as set by
        /// `g_dtls_connection_set_certificate()`.
        get {
            let rv = g_dtls_connection_get_certificate(cast(dtls_connection_ptr))
            return cast(rv)
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
            g_dtls_connection_set_certificate(cast(dtls_connection_ptr), cast(newValue))
        }
    }

    /// The certificate database to use when verifying this TLS connection.
    /// If no certificate database is set, then the default database will be
    /// used. See `g_tls_backend_get_default_database()`.
    var database: UnsafeMutablePointer<GTlsDatabase>! {
        /// Gets the certificate database that `conn` uses to verify
        /// peer certificates. See `g_dtls_connection_set_database()`.
        get {
            let rv = g_dtls_connection_get_database(cast(dtls_connection_ptr))
            return cast(rv)
        }
        /// Sets the certificate database that is used to verify peer certificates.
        /// This is set to the default database by default. See
        /// `g_tls_backend_get_default_database()`. If set to `nil`, then
        /// peer certificate validation will always set the
        /// `G_TLS_CERTIFICATE_UNKNOWN_CA` error (meaning
        /// `GDtlsConnection::accept`-certificate will always be emitted on
        /// client-side connections, unless that bit is not set in
        /// `GDtlsClientConnection:validation`-flags).
        nonmutating set {
            g_dtls_connection_set_database(cast(dtls_connection_ptr), cast(newValue))
        }
    }

    /// A `GTlsInteraction` object to be used when the connection or certificate
    /// database need to interact with the user. This will be used to prompt the
    /// user for passwords where necessary.
    var interaction: UnsafeMutablePointer<GTlsInteraction>! {
        /// Get the object that will be used to interact with the user. It will be used
        /// for things like prompting the user for passwords. If `nil` is returned, then
        /// no user interaction will occur for this connection.
        get {
            let rv = g_dtls_connection_get_interaction(cast(dtls_connection_ptr))
            return cast(rv)
        }
        /// Set the object that will be used to interact with the user. It will be used
        /// for things like prompting the user for passwords.
        /// 
        /// The `interaction` argument will normally be a derived subclass of
        /// `GTlsInteraction`. `nil` can also be provided if no user interaction
        /// should occur for this connection.
        nonmutating set {
            g_dtls_connection_set_interaction(cast(dtls_connection_ptr), cast(newValue))
        }
    }

    /// Gets the name of the application-layer protocol negotiated during
    /// the handshake.
    /// 
    /// If the peer did not use the ALPN extension, or did not advertise a
    /// protocol that matched one of `conn`'s protocols, or the TLS backend
    /// does not support ALPN, then this will be `nil`. See
    /// `g_dtls_connection_set_advertised_protocols()`.
    var negotiatedProtocol: String! {
        /// Gets the name of the application-layer protocol negotiated during
        /// the handshake.
        /// 
        /// If the peer did not use the ALPN extension, or did not advertise a
        /// protocol that matched one of `conn`'s protocols, or the TLS backend
        /// does not support ALPN, then this will be `nil`. See
        /// `g_dtls_connection_set_advertised_protocols()`.
        get {
            let rv = g_dtls_connection_get_negotiated_protocol(cast(dtls_connection_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets `conn`'s peer's certificate after the handshake has completed.
    /// (It is not set during the emission of
    /// `GDtlsConnection::accept`-certificate.)
    var peerCertificate: UnsafeMutablePointer<GTlsCertificate>! {
        /// Gets `conn`'s peer's certificate after the handshake has completed.
        /// (It is not set during the emission of
        /// `GDtlsConnection::accept`-certificate.)
        get {
            let rv = g_dtls_connection_get_peer_certificate(cast(dtls_connection_ptr))
            return cast(rv)
        }
    }

    /// Gets the errors associated with validating `conn`'s peer's
    /// certificate, after the handshake has completed. (It is not set
    /// during the emission of `GDtlsConnection::accept`-certificate.)
    var peerCertificateErrors: GTlsCertificateFlags {
        /// Gets the errors associated with validating `conn`'s peer's
        /// certificate, after the handshake has completed. (It is not set
        /// during the emission of `GDtlsConnection::accept`-certificate.)
        get {
            let rv = g_dtls_connection_get_peer_certificate_errors(cast(dtls_connection_ptr))
            return rv
        }
    }

    /// Gets `conn` rehandshaking mode. See
    /// `g_dtls_connection_set_rehandshake_mode()` for details.
    var rehandshakeMode: GTlsRehandshakeMode {
        /// Gets `conn` rehandshaking mode. See
        /// `g_dtls_connection_set_rehandshake_mode()` for details.
        get {
            let rv = g_dtls_connection_get_rehandshake_mode(cast(dtls_connection_ptr))
            return rv
        }
        /// Sets how `conn` behaves with respect to rehandshaking requests.
        /// 
        /// `G_TLS_REHANDSHAKE_NEVER` means that it will never agree to
        /// rehandshake after the initial handshake is complete. (For a client,
        /// this means it will refuse rehandshake requests from the server, and
        /// for a server, this means it will close the connection with an error
        /// if the client attempts to rehandshake.)
        /// 
        /// `G_TLS_REHANDSHAKE_SAFELY` means that the connection will allow a
        /// rehandshake only if the other end of the connection supports the
        /// TLS `renegotiation_info` extension. This is the default behavior,
        /// but means that rehandshaking will not work against older
        /// implementations that do not support that extension.
        /// 
        /// `G_TLS_REHANDSHAKE_UNSAFELY` means that the connection will allow
        /// rehandshaking even without the `renegotiation_info` extension. On
        /// the server side in particular, this is not recommended, since it
        /// leaves the server open to certain attacks. However, this mode is
        /// necessary if you need to allow renegotiation with older client
        /// software.
        ///
        /// **set_rehandshake_mode is deprecated:**
        /// Changing the rehandshake mode is no longer
        ///   required for compatibility. Also, rehandshaking has been removed
        ///   from the TLS protocol in TLS 1.3.
        @available(*, deprecated) nonmutating set {
            g_dtls_connection_set_rehandshake_mode(cast(dtls_connection_ptr), newValue)
        }
    }

    /// Tests whether or not `conn` expects a proper TLS close notification
    /// when the connection is closed. See
    /// `g_dtls_connection_set_require_close_notify()` for details.
    var requireCloseNotify: Bool {
        /// Tests whether or not `conn` expects a proper TLS close notification
        /// when the connection is closed. See
        /// `g_dtls_connection_set_require_close_notify()` for details.
        get {
            let rv = g_dtls_connection_get_require_close_notify(cast(dtls_connection_ptr))
            return Bool(rv != 0)
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
        /// close, you can close `conn`'s `GDtlsConnection:base`-socket rather
        /// than closing `conn` itself.
        nonmutating set {
            g_dtls_connection_set_require_close_notify(cast(dtls_connection_ptr), gboolean(newValue ? 1 : 0))
        }
    }
}



// MARK: - DtlsServerConnection Interface

/// The `DtlsServerConnectionProtocol` protocol exposes the methods and properties of an underlying `GDtlsServerConnection` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DtlsServerConnection`.
/// Alternatively, use `DtlsServerConnectionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GDtlsServerConnection` is the server-side subclass of `GDtlsConnection`,
/// representing a server-side DTLS connection.
public protocol DtlsServerConnectionProtocol: DatagramBasedProtocol {
    /// Untyped pointer to the underlying `GDtlsServerConnection` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDtlsServerConnection` instance.
    var dtls_server_connection_ptr: UnsafeMutablePointer<GDtlsServerConnection> { get }
}

/// The `DtlsServerConnectionRef` type acts as a lightweight Swift reference to an underlying `GDtlsServerConnection` instance.
/// It exposes methods that can operate on this data type through `DtlsServerConnectionProtocol` conformance.
/// Use `DtlsServerConnectionRef` only as an `unowned` reference to an existing `GDtlsServerConnection` instance.
///
/// `GDtlsServerConnection` is the server-side subclass of `GDtlsConnection`,
/// representing a server-side DTLS connection.
public struct DtlsServerConnectionRef: DtlsServerConnectionProtocol {
    /// Untyped pointer to the underlying `GDtlsServerConnection` instance.
    /// For type-safe access, use the generated, typed pointer `dtls_server_connection_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DtlsServerConnectionRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDtlsServerConnection>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DtlsServerConnectionProtocol`
    init<T: DtlsServerConnectionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DtlsServerConnection` type acts as an owner of an underlying `GDtlsServerConnection` instance.
/// It provides the methods that can operate on this data type through `DtlsServerConnectionProtocol` conformance.
/// Use `DtlsServerConnection` as a strong reference or owner of a `GDtlsServerConnection` instance.
///
/// `GDtlsServerConnection` is the server-side subclass of `GDtlsConnection`,
/// representing a server-side DTLS connection.
open class DtlsServerConnection: DatagramBased, DtlsServerConnectionProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DtlsServerConnection` instance.
    public init(_ op: UnsafeMutablePointer<GDtlsServerConnection>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `DtlsServerConnectionProtocol`
    /// `GDtlsServerConnection` does not allow reference counting.
    public convenience init<T: DtlsServerConnectionProtocol>(_ other: T) {
        self.init(cast(other.dtls_server_connection_ptr))
        // no reference counting for GDtlsServerConnection, cannot ref(cast(dtls_server_connection_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDtlsServerConnection.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDtlsServerConnection.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDtlsServerConnection.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDtlsServerConnection>(opaquePointer))
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: DtlsServerConnectionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(dtls_server_connection_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum DtlsServerConnectionSignalName: String, SignalNameProtocol {

    /// The `GTlsAuthenticationMode` for the server. This can be changed
    /// before calling `g_dtls_connection_handshake()` if you want to
    /// rehandshake with a different mode from the initial handshake.
    case notifyAuthenticationMode = "notify::authentication-mode"
}

public extension DtlsServerConnectionProtocol {
    /// Connect a `DtlsServerConnectionSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: DtlsServerConnectionSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(dtls_server_connection_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension DtlsServerConnectionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDtlsServerConnection` instance.
    var dtls_server_connection_ptr: UnsafeMutablePointer<GDtlsServerConnection> { return ptr.assumingMemoryBound(to: GDtlsServerConnection.self) }

}



// MARK: - File Interface

/// The `FileProtocol` protocol exposes the methods and properties of an underlying `GFile` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `File`.
/// Alternatively, use `FileRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
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
/// [introduction to asynchronous programming section][async-programming] for
/// more.
/// 
/// Some `GFile` operations almost always take a noticeable amount of time, and
/// so do not have synchronous analogs. Notable cases include:
/// - `g_file_mount_mountable()` to mount a mountable file.
/// - `g_file_unmount_mountable_with_operation()` to unmount a mountable file.
/// - `g_file_eject_mountable_with_operation()` to eject a mountable file.
/// 
/// ```` Entity Tags `` {`gfile`-etag}
/// 
/// One notable feature of `GFiles` are entity tags, or "etags" for
/// short. Entity tags are somewhat like a more abstract version of the
/// traditional mtime, and can be used to quickly determine if the file
/// has been modified from the version on the file system. See the
/// HTTP 1.1
/// [specification](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html)
/// for HTTP Etag headers, which are a very similar concept.
public protocol FileProtocol {
    /// Untyped pointer to the underlying `GFile` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GFile` instance.
    var file_ptr: UnsafeMutablePointer<GFile> { get }
}

/// The `FileRef` type acts as a lightweight Swift reference to an underlying `GFile` instance.
/// It exposes methods that can operate on this data type through `FileProtocol` conformance.
/// Use `FileRef` only as an `unowned` reference to an existing `GFile` instance.
///
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
/// [introduction to asynchronous programming section][async-programming] for
/// more.
/// 
/// Some `GFile` operations almost always take a noticeable amount of time, and
/// so do not have synchronous analogs. Notable cases include:
/// - `g_file_mount_mountable()` to mount a mountable file.
/// - `g_file_unmount_mountable_with_operation()` to unmount a mountable file.
/// - `g_file_eject_mountable_with_operation()` to eject a mountable file.
/// 
/// ```` Entity Tags `` {`gfile`-etag}
/// 
/// One notable feature of `GFiles` are entity tags, or "etags" for
/// short. Entity tags are somewhat like a more abstract version of the
/// traditional mtime, and can be used to quickly determine if the file
/// has been modified from the version on the file system. See the
/// HTTP 1.1
/// [specification](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html)
/// for HTTP Etag headers, which are a very similar concept.
public struct FileRef: FileProtocol {
    /// Untyped pointer to the underlying `GFile` instance.
    /// For type-safe access, use the generated, typed pointer `file_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FileRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GFile>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileProtocol`
    init<T: FileProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    static func newForCommandline(commandlineArg arg: UnsafePointer<CChar>) -> FileRef! {
        let rv = g_file_new_for_commandline_arg(arg)
        return rv.map { FileRef(cast($0)) }
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
    static func newFor(commandlineArgAndCwd arg: UnsafePointer<gchar>, cwd: UnsafePointer<gchar>) -> FileRef! {
        let rv = g_file_new_for_commandline_arg_and_cwd(arg, cwd)
        return rv.map { FileRef(cast($0)) }
    }

    /// Constructs a `GFile` for a given path. This operation never
    /// fails, but the returned object might not support any I/O
    /// operation if `path` is malformed.
    static func newFor(path: UnsafePointer<CChar>) -> FileRef! {
        let rv = g_file_new_for_path(path)
        return rv.map { FileRef(cast($0)) }
    }

    /// Constructs a `GFile` for a given URI. This operation never
    /// fails, but the returned object might not support any I/O
    /// operation if `uri` is malformed or if the uri type is
    /// not supported.
    static func newFor(uri: UnsafePointer<CChar>) -> FileRef! {
        let rv = g_file_new_for_uri(uri)
        return rv.map { FileRef(cast($0)) }
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
    static func new(tmp tmpl: UnsafePointer<CChar>, iostream: FileIOStreamProtocol) throws -> FileRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_new_tmp(tmpl, cast(iostream.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { FileRef(cast($0)) }
    }

    /// Constructs a `GFile` with the given `parse_name` (i.e. something
    /// given by `g_file_get_parse_name()`). This operation never fails,
    /// but the returned object might not support any I/O operation if
    /// the `parse_name` cannot be parsed.
    static func parseName(parseName parse_name: UnsafePointer<CChar>) -> FileRef! {
        let rv = g_file_parse_name(parse_name)
        return rv.map { FileRef(cast($0)) }
    }
}

/// The `File` type acts as an owner of an underlying `GFile` instance.
/// It provides the methods that can operate on this data type through `FileProtocol` conformance.
/// Use `File` as a strong reference or owner of a `GFile` instance.
///
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
/// [introduction to asynchronous programming section][async-programming] for
/// more.
/// 
/// Some `GFile` operations almost always take a noticeable amount of time, and
/// so do not have synchronous analogs. Notable cases include:
/// - `g_file_mount_mountable()` to mount a mountable file.
/// - `g_file_unmount_mountable_with_operation()` to unmount a mountable file.
/// - `g_file_eject_mountable_with_operation()` to eject a mountable file.
/// 
/// ```` Entity Tags `` {`gfile`-etag}
/// 
/// One notable feature of `GFiles` are entity tags, or "etags" for
/// short. Entity tags are somewhat like a more abstract version of the
/// traditional mtime, and can be used to quickly determine if the file
/// has been modified from the version on the file system. See the
/// HTTP 1.1
/// [specification](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html)
/// for HTTP Etag headers, which are a very similar concept.
open class File: FileProtocol {
    /// Untyped pointer to the underlying `GFile` instance.
    /// For type-safe access, use the generated, typed pointer `file_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `File` instance.
    public init(_ op: UnsafeMutablePointer<GFile>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FileProtocol`
    /// `GFile` does not allow reference counting.
    public convenience init<T: FileProtocol>(_ other: T) {
        self.init(cast(other.file_ptr))
	g_object_ref(cast(ptr))
    }

    /// Do-nothing destructor for`GFile`.
    deinit {
	g_object_unref(cast(ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GFile.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GFile.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GFile.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GFile>(opaquePointer))
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
    public static func newForCommandline(commandlineArg arg: UnsafePointer<CChar>) -> File! {
        let rv = g_file_new_for_commandline_arg(arg)
        return rv.map { File(cast($0)) }
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
    public static func newFor(commandlineArgAndCwd arg: UnsafePointer<gchar>, cwd: UnsafePointer<gchar>) -> File! {
        let rv = g_file_new_for_commandline_arg_and_cwd(arg, cwd)
        return rv.map { File(cast($0)) }
    }

    /// Constructs a `GFile` for a given path. This operation never
    /// fails, but the returned object might not support any I/O
    /// operation if `path` is malformed.
    public static func newFor(path: UnsafePointer<CChar>) -> File! {
        let rv = g_file_new_for_path(path)
        return rv.map { File(cast($0)) }
    }

    /// Constructs a `GFile` for a given URI. This operation never
    /// fails, but the returned object might not support any I/O
    /// operation if `uri` is malformed or if the uri type is
    /// not supported.
    public static func newFor(uri: UnsafePointer<CChar>) -> File! {
        let rv = g_file_new_for_uri(uri)
        return rv.map { File(cast($0)) }
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
    public static func new(tmp tmpl: UnsafePointer<CChar>, iostream: FileIOStreamProtocol) throws -> File! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_new_tmp(tmpl, cast(iostream.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { File(cast($0)) }
    }

    /// Constructs a `GFile` with the given `parse_name` (i.e. something
    /// given by `g_file_get_parse_name()`). This operation never fails,
    /// but the returned object might not support any I/O operation if
    /// the `parse_name` cannot be parsed.
    public static func parseName(parseName parse_name: UnsafePointer<CChar>) -> File! {
        let rv = g_file_parse_name(parse_name)
        return rv.map { File(cast($0)) }
    }

}

// MARK: - no File properties

// MARK: - no signals


public extension FileProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFile` instance.
    var file_ptr: UnsafeMutablePointer<GFile> { return ptr.assumingMemoryBound(to: GFile.self) }

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
    func appendTo(flags: FileCreateFlags, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GFileOutputStream>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_append_to(cast(file_ptr), flags, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Asynchronously opens `file` for appending.
    /// 
    /// For more details, see `g_file_append_to()` which is
    /// the synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_append_to_finish()` to get the result
    /// of the operation.
    func appendToAsync(flags: FileCreateFlags, ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_append_to_async(cast(file_ptr), flags, io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an asynchronous file append operation started with
    /// `g_file_append_to_async()`.
    func appendToFinish(res: AsyncResultProtocol) throws -> UnsafeMutablePointer<GFileOutputStream>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_append_to_finish(cast(file_ptr), cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
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
    func copy(destination: FileProtocol, flags: FileCopyFlags, cancellable: CancellableProtocol, progressCallback progress_callback: @escaping FileProgressCallback, progressCallbackData progress_callback_data: UnsafeMutableRawPointer) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_copy(cast(file_ptr), cast(destination.ptr), flags, cast(cancellable.ptr), progress_callback, cast(progress_callback_data), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
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
    func copyAsync(destination: FileProtocol, flags: FileCopyFlags, ioPriority io_priority: CInt, cancellable: CancellableProtocol, progressCallback progress_callback: @escaping FileProgressCallback, progressCallbackData progress_callback_data: UnsafeMutableRawPointer, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_copy_async(cast(file_ptr), cast(destination.ptr), flags, io_priority, cast(cancellable.ptr), progress_callback, cast(progress_callback_data), callback, cast(user_data))
    
    }

    /// Copies the file attributes from `source` to `destination`.
    /// 
    /// Normally only a subset of the file attributes are copied,
    /// those that are copies in a normal file copy operation
    /// (which for instance does not include e.g. owner). However
    /// if `G_FILE_COPY_ALL_METADATA` is specified in `flags`, then
    /// all the metadata that is possible to copy is copied. This
    /// is useful when implementing move by copy + delete source.
    func copyAttributes(destination: FileProtocol, flags: FileCopyFlags, cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_copy_attributes(cast(file_ptr), cast(destination.ptr), flags, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Finishes copying the file started with `g_file_copy_async()`.
    func copyFinish(res: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_copy_finish(cast(file_ptr), cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
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
    func create(flags: FileCreateFlags, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GFileOutputStream>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_create(cast(file_ptr), flags, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
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
    func createAsync(flags: FileCreateFlags, ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_create_async(cast(file_ptr), flags, io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an asynchronous file create operation started with
    /// `g_file_create_async()`.
    func createFinish(res: AsyncResultProtocol) throws -> UnsafeMutablePointer<GFileOutputStream>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_create_finish(cast(file_ptr), cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
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
    func createReadwrite(flags: FileCreateFlags, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GFileIOStream>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_create_readwrite(cast(file_ptr), flags, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
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
    func createReadwriteAsync(flags: FileCreateFlags, ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_create_readwrite_async(cast(file_ptr), flags, io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an asynchronous file create operation started with
    /// `g_file_create_readwrite_async()`.
    func createReadwriteFinish(res: AsyncResultProtocol) throws -> UnsafeMutablePointer<GFileIOStream>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_create_readwrite_finish(cast(file_ptr), cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Deletes a file. If the `file` is a directory, it will only be
    /// deleted if it is empty. This has the same semantics as `g_unlink()`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    func delete(cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_delete(cast(file_ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Asynchronously delete a file. If the `file` is a directory, it will
    /// only be deleted if it is empty.  This has the same semantics as
    /// `g_unlink()`.
    func deleteAsync(ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_delete_async(cast(file_ptr), io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes deleting a file started with `g_file_delete_async()`.
    func deleteFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_delete_finish(cast(file_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
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
    func dup() -> UnsafeMutablePointer<GFile>! {
        let rv = g_file_dup(cast(file_ptr))
        return cast(rv)
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
    @available(*, deprecated) func ejectMountable(flags: MountUnmountFlags, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_eject_mountable(cast(file_ptr), flags, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an asynchronous eject operation started by
    /// `g_file_eject_mountable()`.
    ///
    /// **eject_mountable_finish is deprecated:**
    /// Use g_file_eject_mountable_with_operation_finish()
    ///     instead.
    @available(*, deprecated) func ejectMountableFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_eject_mountable_finish(cast(file_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Starts an asynchronous eject on a mountable.
    /// When this operation has completed, `callback` will be called with
    /// `user_user` data, and the operation can be finalized with
    /// `g_file_eject_mountable_with_operation_finish()`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    func ejectMountableWithOperation(flags: MountUnmountFlags, mountOperation mount_operation: MountOperationProtocol, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_eject_mountable_with_operation(cast(file_ptr), flags, cast(mount_operation.ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an asynchronous eject operation started by
    /// `g_file_eject_mountable_with_operation()`.
    func ejectMountableWithOperationFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_eject_mountable_with_operation_finish(cast(file_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
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
    func enumerateChildren(attributes: UnsafePointer<CChar>, flags: FileQueryInfoFlags, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GFileEnumerator>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_enumerate_children(cast(file_ptr), attributes, flags, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
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
    func enumerateChildrenAsync(attributes: UnsafePointer<CChar>, flags: FileQueryInfoFlags, ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_enumerate_children_async(cast(file_ptr), attributes, flags, io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an async enumerate children operation.
    /// See `g_file_enumerate_children_async()`.
    func enumerateChildrenFinish(res: AsyncResultProtocol) throws -> UnsafeMutablePointer<GFileEnumerator>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_enumerate_children_finish(cast(file_ptr), cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Checks if the two given `GFiles` refer to the same file.
    /// 
    /// Note that two `GFiles` that differ can still refer to the same
    /// file on the filesystem due to various forms of filename
    /// aliasing.
    /// 
    /// This call does no blocking I/O.
    func equal(file2: FileProtocol) -> Bool {
        let rv = g_file_equal(cast(file_ptr), cast(file2.ptr))
        return Bool(rv != 0)
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
    func findEnclosingMount(cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GMount>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_find_enclosing_mount(cast(file_ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Asynchronously gets the mount for the file.
    /// 
    /// For more details, see `g_file_find_enclosing_mount()` which is
    /// the synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_find_enclosing_mount_finish()` to
    /// get the result of the operation.
    func findEnclosingMountAsync(ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_find_enclosing_mount_async(cast(file_ptr), io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an asynchronous find mount request.
    /// See `g_file_find_enclosing_mount_async()`.
    func findEnclosingMountFinish(res: AsyncResultProtocol) throws -> UnsafeMutablePointer<GMount>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_find_enclosing_mount_finish(cast(file_ptr), cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
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
    func getBasename() -> String! {
        let rv = g_file_get_basename(cast(file_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets a child of `file` with basename equal to `name`.
    /// 
    /// Note that the file with that specific name might not exist, but
    /// you can still have a `GFile` that points to it. You can use this
    /// for instance to create that file.
    /// 
    /// This call does no blocking I/O.
    func getChild(name: UnsafePointer<CChar>) -> UnsafeMutablePointer<GFile>! {
        let rv = g_file_get_child(cast(file_ptr), name)
        return cast(rv)
    }

    /// Gets the child of `file` for a given `display_name` (i.e. a UTF-8
    /// version of the name). If this function fails, it returns `nil`
    /// and `error` will be set. This is very useful when constructing a
    /// `GFile` for a new file and the user entered the filename in the
    /// user interface, for instance when you select a directory and
    /// type a filename in the file selector.
    /// 
    /// This call does no blocking I/O.
    func getChildFor(displayName display_name: UnsafePointer<CChar>) throws -> UnsafeMutablePointer<GFile>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_get_child_for_display_name(cast(file_ptr), display_name, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Gets the parent directory for the `file`.
    /// If the `file` represents the root directory of the
    /// file system, then `nil` will be returned.
    /// 
    /// This call does no blocking I/O.
    func getParent() -> UnsafeMutablePointer<GFile>! {
        let rv = g_file_get_parent(cast(file_ptr))
        return cast(rv)
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
    func getParseName() -> String! {
        let rv = g_file_get_parse_name(cast(file_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the local pathname for `GFile`, if one exists. If non-`nil`, this is
    /// guaranteed to be an absolute, canonical path. It might contain symlinks.
    /// 
    /// This call does no blocking I/O.
    func getPath() -> String! {
        let rv = g_file_get_path(cast(file_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the path for `descendant` relative to `parent`.
    /// 
    /// This call does no blocking I/O.
    func getRelativePath(descendant: FileProtocol) -> String! {
        let rv = g_file_get_relative_path(cast(file_ptr), cast(descendant.ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the URI for the `file`.
    /// 
    /// This call does no blocking I/O.
    func getURI() -> String! {
        let rv = g_file_get_uri(cast(file_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the URI scheme for a `GFile`.
    /// RFC 3986 decodes the scheme as:
    /// ```
    /// URI = scheme ":" hier-part [ "?" query ] [ "#" fragment ]
    /// ```
    /// Common schemes include "file", "http", "ftp", etc.
    /// 
    /// This call does no blocking I/O.
    func getURIScheme() -> String! {
        let rv = g_file_get_uri_scheme(cast(file_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Checks if `file` has a parent, and optionally, if it is `parent`.
    /// 
    /// If `parent` is `nil` then this function returns `true` if `file` has any
    /// parent at all.  If `parent` is non-`nil` then `true` is only returned
    /// if `file` is an immediate child of `parent`.
    func has(parent: FileProtocol) -> Bool {
        let rv = g_file_has_parent(cast(file_ptr), cast(parent.ptr))
        return Bool(rv != 0)
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
    func hasPrefix(prefix_: FileProtocol) -> Bool {
        let rv = g_file_has_prefix(cast(file_ptr), cast(prefix_.ptr))
        return Bool(rv != 0)
    }

    /// Checks to see if a `GFile` has a given URI scheme.
    /// 
    /// This call does no blocking I/O.
    func has(uriScheme uri_scheme: UnsafePointer<CChar>) -> Bool {
        let rv = g_file_has_uri_scheme(cast(file_ptr), uri_scheme)
        return Bool(rv != 0)
    }

    /// Creates a hash value for a `GFile`.
    /// 
    /// This call does no blocking I/O.
    func hash() -> CUnsignedInt {
        let rv = g_file_hash(cast(file_ptr))
        return CUnsignedInt(rv)
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
    func loadBytes(cancellable: CancellableProtocol, etagOut etag_out: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>) throws -> UnsafeMutablePointer<GBytes>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_load_bytes(cast(file_ptr), cast(cancellable.ptr), cast(etag_out), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
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
    func loadBytesAsync(cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_load_bytes_async(cast(file_ptr), cast(cancellable.ptr), callback, cast(user_data))
    
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
    func loadBytesFinish(result: AsyncResultProtocol, etagOut etag_out: UnsafeMutablePointer<UnsafeMutablePointer<gchar>>) throws -> UnsafeMutablePointer<GBytes>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_load_bytes_finish(cast(file_ptr), cast(result.ptr), cast(etag_out), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Loads the content of the file into memory. The data is always
    /// zero-terminated, but this is not included in the resultant `length`.
    /// The returned `content` should be freed with `g_free()` when no longer
    /// needed.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    func loadContents(cancellable: CancellableProtocol, contents: UnsafeMutablePointer<UnsafeMutablePointer<CChar>>, length: UnsafeMutablePointer<Int>, etagOut etag_out: UnsafeMutablePointer<UnsafeMutablePointer<CChar>>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_load_contents(cast(file_ptr), cast(cancellable.ptr), cast(contents), cast(length), cast(etag_out), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
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
    func loadContentsAsync(cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_load_contents_async(cast(file_ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an asynchronous load of the `file`'s contents.
    /// The contents are placed in `contents`, and `length` is set to the
    /// size of the `contents` string. The `content` should be freed with
    /// `g_free()` when no longer needed. If `etag_out` is present, it will be
    /// set to the new entity tag for the `file`.
    func loadContentsFinish(res: AsyncResultProtocol, contents: UnsafeMutablePointer<UnsafeMutablePointer<CChar>>, length: UnsafeMutablePointer<Int>, etagOut etag_out: UnsafeMutablePointer<UnsafeMutablePointer<CChar>>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_load_contents_finish(cast(file_ptr), cast(res.ptr), cast(contents), cast(length), cast(etag_out), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
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
    func loadPartialContentsAsync(cancellable: CancellableProtocol, readMoreCallback read_more_callback: @escaping FileReadMoreCallback, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_load_partial_contents_async(cast(file_ptr), cast(cancellable.ptr), read_more_callback, callback, cast(user_data))
    
    }

    /// Finishes an asynchronous partial load operation that was started
    /// with `g_file_load_partial_contents_async()`. The data is always
    /// zero-terminated, but this is not included in the resultant `length`.
    /// The returned `content` should be freed with `g_free()` when no longer
    /// needed.
    func loadPartialContentsFinish(res: AsyncResultProtocol, contents: UnsafeMutablePointer<UnsafeMutablePointer<CChar>>, length: UnsafeMutablePointer<Int>, etagOut etag_out: UnsafeMutablePointer<UnsafeMutablePointer<CChar>>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_load_partial_contents_finish(cast(file_ptr), cast(res.ptr), cast(contents), cast(length), cast(etag_out), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
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
    func makeDirectory(cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_make_directory(cast(file_ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Asynchronously creates a directory.
    func makeDirectoryAsync(ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_make_directory_async(cast(file_ptr), io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an asynchronous directory creation, started with
    /// `g_file_make_directory_async()`.
    func makeDirectoryFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_make_directory_finish(cast(file_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
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
    func makeDirectoryWithParents(cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_make_directory_with_parents(cast(file_ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Creates a symbolic link named `file` which contains the string
    /// `symlink_value`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    func makeSymbolicLink(symlinkValue symlink_value: UnsafePointer<CChar>, cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_make_symbolic_link(cast(file_ptr), symlink_value, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
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
    func measureDiskUsage(flags: FileMeasureFlags, cancellable: CancellableProtocol, progressCallback progress_callback: @escaping FileMeasureProgressCallback, progressData progress_data: UnsafeMutableRawPointer, diskUsage disk_usage: UnsafeMutablePointer<UInt64>, numDirs num_dirs: UnsafeMutablePointer<UInt64>, numFiles num_files: UnsafeMutablePointer<UInt64>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_measure_disk_usage(cast(file_ptr), flags, cast(cancellable.ptr), progress_callback, cast(progress_data), cast(disk_usage), cast(num_dirs), cast(num_files), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Recursively measures the disk usage of `file`.
    /// 
    /// This is the asynchronous version of `g_file_measure_disk_usage()`.  See
    /// there for more information.
    func measureDiskUsageAsync(flags: FileMeasureFlags, ioPriority io_priority: CInt, cancellable: CancellableProtocol, progressCallback progress_callback: @escaping FileMeasureProgressCallback, progressData progress_data: UnsafeMutableRawPointer, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_measure_disk_usage_async(cast(file_ptr), flags, gint(io_priority), cast(cancellable.ptr), progress_callback, cast(progress_data), callback, cast(user_data))
    
    }

    /// Collects the results from an earlier call to
    /// `g_file_measure_disk_usage_async()`.  See `g_file_measure_disk_usage()` for
    /// more information.
    func measureDiskUsageFinish(result: AsyncResultProtocol, diskUsage disk_usage: UnsafeMutablePointer<UInt64>, numDirs num_dirs: UnsafeMutablePointer<UInt64>, numFiles num_files: UnsafeMutablePointer<UInt64>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_measure_disk_usage_finish(cast(file_ptr), cast(result.ptr), cast(disk_usage), cast(num_dirs), cast(num_files), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Obtains a file or directory monitor for the given file,
    /// depending on the type of the file.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    func monitor(flags: FileMonitorFlags, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GFileMonitor>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_monitor(cast(file_ptr), flags, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
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
    func monitorDirectory(flags: FileMonitorFlags, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GFileMonitor>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_monitor_directory(cast(file_ptr), flags, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
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
    func monitorFile(flags: FileMonitorFlags, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GFileMonitor>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_monitor_file(cast(file_ptr), flags, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
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
    func mountEnclosingVolume(flags: MountMountFlags, mountOperation mount_operation: MountOperationProtocol, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_mount_enclosing_volume(cast(file_ptr), flags, cast(mount_operation.ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes a mount operation started by `g_file_mount_enclosing_volume()`.
    func mountEnclosingVolumeFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_mount_enclosing_volume_finish(cast(file_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
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
    func mountMountable(flags: MountMountFlags, mountOperation mount_operation: MountOperationProtocol, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_mount_mountable(cast(file_ptr), flags, cast(mount_operation.ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes a mount operation. See `g_file_mount_mountable()` for details.
    /// 
    /// Finish an asynchronous mount operation that was started
    /// with `g_file_mount_mountable()`.
    func mountMountableFinish(result: AsyncResultProtocol) throws -> UnsafeMutablePointer<GFile>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_mount_mountable_finish(cast(file_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
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
    /// If the flag `G_FILE_COPY_NOFOLLOW_SYMLINKS` is specified then symlinks
    /// will be copied as symlinks, otherwise the target of the
    /// `source` symlink will be copied.
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
    func move(destination: FileProtocol, flags: FileCopyFlags, cancellable: CancellableProtocol, progressCallback progress_callback: @escaping FileProgressCallback, progressCallbackData progress_callback_data: UnsafeMutableRawPointer) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_move(cast(file_ptr), cast(destination.ptr), flags, cast(cancellable.ptr), progress_callback, cast(progress_callback_data), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
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
    func openReadwrite(cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GFileIOStream>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_open_readwrite(cast(file_ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Asynchronously opens `file` for reading and writing.
    /// 
    /// For more details, see `g_file_open_readwrite()` which is
    /// the synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_open_readwrite_finish()` to get
    /// the result of the operation.
    func openReadwriteAsync(ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_open_readwrite_async(cast(file_ptr), io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an asynchronous file read operation started with
    /// `g_file_open_readwrite_async()`.
    func openReadwriteFinish(res: AsyncResultProtocol) throws -> UnsafeMutablePointer<GFileIOStream>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_open_readwrite_finish(cast(file_ptr), cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Exactly like `g_file_get_path()`, but caches the result via
    /// `g_object_set_qdata_full()`.  This is useful for example in C
    /// applications which mix `g_file_*` APIs with native ones.  It
    /// also avoids an extra duplicated string when possible, so will be
    /// generally more efficient.
    /// 
    /// This call does no blocking I/O.
    func peekPath() -> String! {
        let rv = g_file_peek_path(cast(file_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
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
    func pollMountable(cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_poll_mountable(cast(file_ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes a poll operation. See `g_file_poll_mountable()` for details.
    /// 
    /// Finish an asynchronous poll operation that was polled
    /// with `g_file_poll_mountable()`.
    func pollMountableFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_poll_mountable_finish(cast(file_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Returns the `GAppInfo` that is registered as the default
    /// application to handle the file specified by `file`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    func queryDefaultHandler(cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GAppInfo>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_query_default_handler(cast(file_ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Async version of `g_file_query_default_handler()`.
    func queryDefaultHandlerAsync(ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_query_default_handler_async(cast(file_ptr), io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes a `g_file_query_default_handler_async()` operation.
    func queryDefaultHandlerFinish(result: AsyncResultProtocol) throws -> UnsafeMutablePointer<GAppInfo>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_query_default_handler_finish(cast(file_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
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
    func queryExists(cancellable: CancellableProtocol) -> Bool {
        let rv = g_file_query_exists(cast(file_ptr), cast(cancellable.ptr))
        return Bool(rv != 0)
    }

    /// Utility function to inspect the `GFileType` of a file. This is
    /// implemented using `g_file_query_info()` and as such does blocking I/O.
    /// 
    /// The primary use case of this method is to check if a file is
    /// a regular file, directory, or symlink.
    func queryFileType(flags: FileQueryInfoFlags, cancellable: CancellableProtocol) -> GFileType {
        let rv = g_file_query_file_type(cast(file_ptr), flags, cast(cancellable.ptr))
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
    func queryFilesystemInfo(attributes: UnsafePointer<CChar>, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GFileInfo>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_query_filesystem_info(cast(file_ptr), attributes, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
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
    func queryFilesystemInfoAsync(attributes: UnsafePointer<CChar>, ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_query_filesystem_info_async(cast(file_ptr), attributes, io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an asynchronous filesystem info query.
    /// See `g_file_query_filesystem_info_async()`.
    func queryFilesystemInfoFinish(res: AsyncResultProtocol) throws -> UnsafeMutablePointer<GFileInfo>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_query_filesystem_info_finish(cast(file_ptr), cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
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
    func queryInfo(attributes: UnsafePointer<CChar>, flags: FileQueryInfoFlags, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GFileInfo>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_query_info(cast(file_ptr), attributes, flags, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
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
    func queryInfoAsync(attributes: UnsafePointer<CChar>, flags: FileQueryInfoFlags, ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_query_info_async(cast(file_ptr), attributes, flags, io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an asynchronous file info query.
    /// See `g_file_query_info_async()`.
    func queryInfoFinish(res: AsyncResultProtocol) throws -> UnsafeMutablePointer<GFileInfo>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_query_info_finish(cast(file_ptr), cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
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
    func querySettableAttributes(cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GFileAttributeInfoList>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_query_settable_attributes(cast(file_ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Obtain the list of attribute namespaces where new attributes
    /// can be created by a user. An example of this is extended
    /// attributes (in the "xattr" namespace).
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    func queryWritableNamespaces(cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GFileAttributeInfoList>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_query_writable_namespaces(cast(file_ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
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
    func read(cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GFileInputStream>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_read(cast(file_ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Asynchronously opens `file` for reading.
    /// 
    /// For more details, see `g_file_read()` which is
    /// the synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_read_finish()` to get the result
    /// of the operation.
    func readAsync(ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_read_async(cast(file_ptr), io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an asynchronous file read operation started with
    /// `g_file_read_async()`.
    func readFinish(res: AsyncResultProtocol) throws -> UnsafeMutablePointer<GFileInputStream>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_read_finish(cast(file_ptr), cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
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
    func replace(etag: UnsafePointer<CChar>, makeBackup make_backup: Bool, flags: FileCreateFlags, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GFileOutputStream>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_replace(cast(file_ptr), etag, gboolean(make_backup ? 1 : 0), flags, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
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
    func replaceAsync(etag: UnsafePointer<CChar>, makeBackup make_backup: Bool, flags: FileCreateFlags, ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_replace_async(cast(file_ptr), etag, gboolean(make_backup ? 1 : 0), flags, io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
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
    func replace(contents: UnsafePointer<CChar>, length: Int, etag: UnsafePointer<CChar>, makeBackup make_backup: Bool, flags: FileCreateFlags, newEtag new_etag: UnsafeMutablePointer<UnsafeMutablePointer<CChar>>, cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_replace_contents(cast(file_ptr), cast(contents), gsize(length), etag, gboolean(make_backup ? 1 : 0), flags, cast(new_etag), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
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
    /// Note that no copy of `content` will be made, so it must stay valid
    /// until `callback` is called. See `g_file_replace_contents_bytes_async()`
    /// for a `GBytes` version that will automatically hold a reference to the
    /// contents (without copying) for the duration of the call.
    func replaceContentsAsync(contents: UnsafePointer<CChar>, length: Int, etag: UnsafePointer<CChar>, makeBackup make_backup: Bool, flags: FileCreateFlags, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_replace_contents_async(cast(file_ptr), cast(contents), gsize(length), etag, gboolean(make_backup ? 1 : 0), flags, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Same as `g_file_replace_contents_async()` but takes a `GBytes` input instead.
    /// This function will keep a ref on `contents` until the operation is done.
    /// Unlike `g_file_replace_contents_async()` this allows forgetting about the
    /// content without waiting for the callback.
    /// 
    /// When this operation has completed, `callback` will be called with
    /// `user_user` data, and the operation can be finalized with
    /// `g_file_replace_contents_finish()`.
    func replaceContentsBytesAsync(contents: BytesProtocol, etag: UnsafePointer<CChar>, makeBackup make_backup: Bool, flags: FileCreateFlags, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_replace_contents_bytes_async(cast(file_ptr), cast(contents.ptr), etag, gboolean(make_backup ? 1 : 0), flags, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an asynchronous replace of the given `file`. See
    /// `g_file_replace_contents_async()`. Sets `new_etag` to the new entity
    /// tag for the document, if present.
    func replaceContentsFinish(res: AsyncResultProtocol, newEtag new_etag: UnsafeMutablePointer<UnsafeMutablePointer<CChar>>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_replace_contents_finish(cast(file_ptr), cast(res.ptr), cast(new_etag), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Finishes an asynchronous file replace operation started with
    /// `g_file_replace_async()`.
    func replaceFinish(res: AsyncResultProtocol) throws -> UnsafeMutablePointer<GFileOutputStream>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_replace_finish(cast(file_ptr), cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
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
    func replaceReadwrite(etag: UnsafePointer<CChar>, makeBackup make_backup: Bool, flags: FileCreateFlags, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GFileIOStream>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_replace_readwrite(cast(file_ptr), etag, gboolean(make_backup ? 1 : 0), flags, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
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
    func replaceReadwriteAsync(etag: UnsafePointer<CChar>, makeBackup make_backup: Bool, flags: FileCreateFlags, ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_replace_readwrite_async(cast(file_ptr), etag, gboolean(make_backup ? 1 : 0), flags, io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an asynchronous file replace operation started with
    /// `g_file_replace_readwrite_async()`.
    func replaceReadwriteFinish(res: AsyncResultProtocol) throws -> UnsafeMutablePointer<GFileIOStream>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_replace_readwrite_finish(cast(file_ptr), cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Resolves a relative path for `file` to an absolute path.
    /// 
    /// This call does no blocking I/O.
    func resolve(relativePath relative_path: UnsafePointer<CChar>) -> UnsafeMutablePointer<GFile>! {
        let rv = g_file_resolve_relative_path(cast(file_ptr), relative_path)
        return cast(rv)
    }

    /// Sets an attribute in the file with attribute name `attribute` to `value`.
    /// 
    /// Some attributes can be unset by setting `type` to
    /// `G_FILE_ATTRIBUTE_TYPE_INVALID` and `value_p` to `nil`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    func set(attribute: UnsafePointer<CChar>, type: FileAttributeType, valueP value_p: UnsafeMutableRawPointer, flags: FileQueryInfoFlags, cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_set_attribute(cast(file_ptr), attribute, type, cast(value_p), flags, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Sets `attribute` of type `G_FILE_ATTRIBUTE_TYPE_BYTE_STRING` to `value`.
    /// If `attribute` is of a different type, this operation will fail,
    /// returning `false`.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    func setAttributeByteString(attribute: UnsafePointer<CChar>, value: UnsafePointer<CChar>, flags: FileQueryInfoFlags, cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_set_attribute_byte_string(cast(file_ptr), attribute, value, flags, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Sets `attribute` of type `G_FILE_ATTRIBUTE_TYPE_INT32` to `value`.
    /// If `attribute` is of a different type, this operation will fail.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    func setAttributeInt32(attribute: UnsafePointer<CChar>, value: Int32, flags: FileQueryInfoFlags, cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_set_attribute_int32(cast(file_ptr), attribute, gint32(value), flags, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Sets `attribute` of type `G_FILE_ATTRIBUTE_TYPE_INT64` to `value`.
    /// If `attribute` is of a different type, this operation will fail.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    func setAttributeInt64(attribute: UnsafePointer<CChar>, value: Int64, flags: FileQueryInfoFlags, cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_set_attribute_int64(cast(file_ptr), attribute, gint64(value), flags, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Sets `attribute` of type `G_FILE_ATTRIBUTE_TYPE_STRING` to `value`.
    /// If `attribute` is of a different type, this operation will fail.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    func setAttributeString(attribute: UnsafePointer<CChar>, value: UnsafePointer<CChar>, flags: FileQueryInfoFlags, cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_set_attribute_string(cast(file_ptr), attribute, value, flags, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Sets `attribute` of type `G_FILE_ATTRIBUTE_TYPE_UINT32` to `value`.
    /// If `attribute` is of a different type, this operation will fail.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    func setAttributeUint32(attribute: UnsafePointer<CChar>, value: UInt32, flags: FileQueryInfoFlags, cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_set_attribute_uint32(cast(file_ptr), attribute, guint32(value), flags, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Sets `attribute` of type `G_FILE_ATTRIBUTE_TYPE_UINT64` to `value`.
    /// If `attribute` is of a different type, this operation will fail.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    func setAttributeUint64(attribute: UnsafePointer<CChar>, value: UInt64, flags: FileQueryInfoFlags, cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_set_attribute_uint64(cast(file_ptr), attribute, guint64(value), flags, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Asynchronously sets the attributes of `file` with `info`.
    /// 
    /// For more details, see `g_file_set_attributes_from_info()`,
    /// which is the synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_set_attributes_finish()` to get
    /// the result of the operation.
    func setAttributesAsync(info: FileInfoProtocol, flags: FileQueryInfoFlags, ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_set_attributes_async(cast(file_ptr), cast(info.ptr), flags, io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes setting an attribute started in `g_file_set_attributes_async()`.
    func setAttributesFinish(result: AsyncResultProtocol, info: FileInfoProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_set_attributes_finish(cast(file_ptr), cast(result.ptr), cast(info.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
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
    func setAttributesFrom(info: FileInfoProtocol, flags: FileQueryInfoFlags, cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_set_attributes_from_info(cast(file_ptr), cast(info.ptr), flags, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
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
    func set(displayName display_name: UnsafePointer<CChar>, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GFile>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_set_display_name(cast(file_ptr), display_name, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Asynchronously sets the display name for a given `GFile`.
    /// 
    /// For more details, see `g_file_set_display_name()` which is
    /// the synchronous version of this call.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_file_set_display_name_finish()` to get
    /// the result of the operation.
    func setDisplayNameAsync(displayName display_name: UnsafePointer<CChar>, ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_set_display_name_async(cast(file_ptr), display_name, io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes setting a display name started with
    /// `g_file_set_display_name_async()`.
    func setDisplayNameFinish(res: AsyncResultProtocol) throws -> UnsafeMutablePointer<GFile>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_set_display_name_finish(cast(file_ptr), cast(res.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
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
    func startMountable(flags: DriveStartFlags, startOperation start_operation: MountOperationProtocol, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_start_mountable(cast(file_ptr), flags, cast(start_operation.ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes a start operation. See `g_file_start_mountable()` for details.
    /// 
    /// Finish an asynchronous start operation that was started
    /// with `g_file_start_mountable()`.
    func startMountableFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_start_mountable_finish(cast(file_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
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
    func stopMountable(flags: MountUnmountFlags, mountOperation mount_operation: MountOperationProtocol, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_stop_mountable(cast(file_ptr), flags, cast(mount_operation.ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an stop operation, see `g_file_stop_mountable()` for details.
    /// 
    /// Finish an asynchronous stop operation that was started
    /// with `g_file_stop_mountable()`.
    func stopMountableFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_stop_mountable_finish(cast(file_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Checks if `file` supports
    /// [thread-default contexts][g-main-context-push-thread-default-context].
    /// If this returns `false`, you cannot perform asynchronous operations on
    /// `file` in a thread that has a thread-default context.
    func supportsThreadContexts() -> Bool {
        let rv = g_file_supports_thread_contexts(cast(file_ptr))
        return Bool(rv != 0)
    }

    /// Sends `file` to the "Trashcan", if possible. This is similar to
    /// deleting it, but the user can recover it before emptying the trashcan.
    /// Not all file systems support trashing, so this call can return the
    /// `G_IO_ERROR_NOT_SUPPORTED` error.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned.
    func trash(cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_trash(cast(file_ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Asynchronously sends `file` to the Trash location, if possible.
    func trashAsync(ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_trash_async(cast(file_ptr), io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an asynchronous file trashing operation, started with
    /// `g_file_trash_async()`.
    func trashFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_trash_finish(cast(file_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
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
    @available(*, deprecated) func unmountMountable(flags: MountUnmountFlags, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_unmount_mountable(cast(file_ptr), flags, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an unmount operation, see `g_file_unmount_mountable()` for details.
    /// 
    /// Finish an asynchronous unmount operation that was started
    /// with `g_file_unmount_mountable()`.
    ///
    /// **unmount_mountable_finish is deprecated:**
    /// Use g_file_unmount_mountable_with_operation_finish()
    ///     instead.
    @available(*, deprecated) func unmountMountableFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_unmount_mountable_finish(cast(file_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
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
    func unmountMountableWithOperation(flags: MountUnmountFlags, mountOperation mount_operation: MountOperationProtocol, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_unmount_mountable_with_operation(cast(file_ptr), flags, cast(mount_operation.ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an unmount operation,
    /// see `g_file_unmount_mountable_with_operation()` for details.
    /// 
    /// Finish an asynchronous unmount operation that was started
    /// with `g_file_unmount_mountable_with_operation()`.
    func unmountMountableWithOperationFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_unmount_mountable_with_operation_finish(cast(file_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
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
    func contentTypeGuessForTree() -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        let rv = g_content_type_guess_for_tree(cast(file_ptr))
        return cast(rv)
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
    var basename: String! {
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
            let rv = g_file_get_basename(cast(file_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
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
    var isNative: Bool {
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
            let rv = g_file_is_native(cast(file_ptr))
            return Bool(rv != 0)
        }
    }

    /// Gets the parent directory for the `file`.
    /// If the `file` represents the root directory of the
    /// file system, then `nil` will be returned.
    /// 
    /// This call does no blocking I/O.
    var parent: UnsafeMutablePointer<GFile>! {
        /// Gets the parent directory for the `file`.
        /// If the `file` represents the root directory of the
        /// file system, then `nil` will be returned.
        /// 
        /// This call does no blocking I/O.
        get {
            let rv = g_file_get_parent(cast(file_ptr))
            return cast(rv)
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
    var parseName: String! {
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
            let rv = g_file_get_parse_name(cast(file_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the local pathname for `GFile`, if one exists. If non-`nil`, this is
    /// guaranteed to be an absolute, canonical path. It might contain symlinks.
    /// 
    /// This call does no blocking I/O.
    var path: String! {
        /// Gets the local pathname for `GFile`, if one exists. If non-`nil`, this is
        /// guaranteed to be an absolute, canonical path. It might contain symlinks.
        /// 
        /// This call does no blocking I/O.
        get {
            let rv = g_file_get_path(cast(file_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the URI for the `file`.
    /// 
    /// This call does no blocking I/O.
    var uri: String! {
        /// Gets the URI for the `file`.
        /// 
        /// This call does no blocking I/O.
        get {
            let rv = g_file_get_uri(cast(file_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the URI scheme for a `GFile`.
    /// RFC 3986 decodes the scheme as:
    /// ```
    /// URI = scheme ":" hier-part [ "?" query ] [ "#" fragment ]
    /// ```
    /// Common schemes include "file", "http", "ftp", etc.
    /// 
    /// This call does no blocking I/O.
    var uriScheme: String! {
        /// Gets the URI scheme for a `GFile`.
        /// RFC 3986 decodes the scheme as:
        /// ```
        /// URI = scheme ":" hier-part [ "?" query ] [ "#" fragment ]
        /// ```
        /// Common schemes include "file", "http", "ftp", etc.
        /// 
        /// This call does no blocking I/O.
        get {
            let rv = g_file_get_uri_scheme(cast(file_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }
}



