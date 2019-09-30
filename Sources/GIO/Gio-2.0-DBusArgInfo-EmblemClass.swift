import CGLib
import GLib
import GLibObject

// MARK: - DBusArgInfo Record

/// The `DBusArgInfoProtocol` protocol exposes the methods and properties of an underlying `GDBusArgInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusArgInfo`.
/// Alternatively, use `DBusArgInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Information about an argument for a method or a signal.
public protocol DBusArgInfoProtocol {
    /// Untyped pointer to the underlying `GDBusArgInfo` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusArgInfo` instance.
    var dbus_arg_info_ptr: UnsafeMutablePointer<GDBusArgInfo> { get }
}

/// The `DBusArgInfoRef` type acts as a lightweight Swift reference to an underlying `GDBusArgInfo` instance.
/// It exposes methods that can operate on this data type through `DBusArgInfoProtocol` conformance.
/// Use `DBusArgInfoRef` only as an `unowned` reference to an existing `GDBusArgInfo` instance.
///
/// Information about an argument for a method or a signal.
public struct DBusArgInfoRef: DBusArgInfoProtocol {
    /// Untyped pointer to the underlying `GDBusArgInfo` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_arg_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusArgInfoRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusArgInfo>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusArgInfoProtocol`
    init<T: DBusArgInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusArgInfoProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusArgInfoProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusArgInfoProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusArgInfoProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusArgInfoProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DBusArgInfo` type acts as a reference-counted owner of an underlying `GDBusArgInfo` instance.
/// It provides the methods that can operate on this data type through `DBusArgInfoProtocol` conformance.
/// Use `DBusArgInfo` as a strong reference or owner of a `GDBusArgInfo` instance.
///
/// Information about an argument for a method or a signal.
open class DBusArgInfo: DBusArgInfoProtocol {
    /// Untyped pointer to the underlying `GDBusArgInfo` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_arg_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DBusArgInfo` instance.
    public init(_ op: UnsafeMutablePointer<GDBusArgInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DBusArgInfoProtocol`
    /// Will retain `GDBusArgInfo`.
    public convenience init<T: DBusArgInfoProtocol>(_ other: T) {
        self.init(cast(other.dbus_arg_info_ptr))
        g_dbus_arg_info_ref(cast(dbus_arg_info_ptr))
    }

    /// Releases the underlying `GDBusArgInfo` instance using `g_dbus_arg_info_unref`.
    deinit {
        g_dbus_arg_info_unref(cast(dbus_arg_info_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusArgInfoProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusArgInfo.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusArgInfoProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusArgInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusArgInfoProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusArgInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusArgInfoProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusArgInfo>(opaquePointer))
    }



}

// MARK: - no DBusArgInfo properties

// MARK: - no signals


public extension DBusArgInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusArgInfo` instance.
    var dbus_arg_info_ptr: UnsafeMutablePointer<GDBusArgInfo> { return ptr.assumingMemoryBound(to: GDBusArgInfo.self) }

    /// If `info` is statically allocated does nothing. Otherwise increases
    /// the reference count.
    func ref() -> UnsafeMutablePointer<GDBusArgInfo>! {
        let rv = g_dbus_arg_info_ref(cast(dbus_arg_info_ptr))
        return cast(rv)
    }

    /// If `info` is statically allocated, does nothing. Otherwise decreases
    /// the reference count of `info`. When its reference count drops to 0,
    /// the memory used is freed.
    func unref() {
        g_dbus_arg_info_unref(cast(dbus_arg_info_ptr))
    
    }
}



// MARK: - DBusErrorEntry Record

/// The `DBusErrorEntryProtocol` protocol exposes the methods and properties of an underlying `GDBusErrorEntry` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusErrorEntry`.
/// Alternatively, use `DBusErrorEntryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Struct used in g_dbus_error_register_error_domain().
public protocol DBusErrorEntryProtocol {
    /// Untyped pointer to the underlying `GDBusErrorEntry` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusErrorEntry` instance.
    var _ptr: UnsafeMutablePointer<GDBusErrorEntry> { get }
}

/// The `DBusErrorEntryRef` type acts as a lightweight Swift reference to an underlying `GDBusErrorEntry` instance.
/// It exposes methods that can operate on this data type through `DBusErrorEntryProtocol` conformance.
/// Use `DBusErrorEntryRef` only as an `unowned` reference to an existing `GDBusErrorEntry` instance.
///
/// Struct used in g_dbus_error_register_error_domain().
public struct DBusErrorEntryRef: DBusErrorEntryProtocol {
    /// Untyped pointer to the underlying `GDBusErrorEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusErrorEntryRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusErrorEntry>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusErrorEntryProtocol`
    init<T: DBusErrorEntryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusErrorEntryProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusErrorEntryProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusErrorEntryProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusErrorEntryProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusErrorEntryProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DBusErrorEntry` type acts as an owner of an underlying `GDBusErrorEntry` instance.
/// It provides the methods that can operate on this data type through `DBusErrorEntryProtocol` conformance.
/// Use `DBusErrorEntry` as a strong reference or owner of a `GDBusErrorEntry` instance.
///
/// Struct used in g_dbus_error_register_error_domain().
open class DBusErrorEntry: DBusErrorEntryProtocol {
    /// Untyped pointer to the underlying `GDBusErrorEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DBusErrorEntry` instance.
    public init(_ op: UnsafeMutablePointer<GDBusErrorEntry>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DBusErrorEntryProtocol`
    /// `GDBusErrorEntry` does not allow reference counting.
    public convenience init<T: DBusErrorEntryProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GDBusErrorEntry, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GDBusErrorEntry`.
    deinit {
        // no reference counting for GDBusErrorEntry, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusErrorEntryProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusErrorEntry.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusErrorEntryProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusErrorEntry.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusErrorEntryProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusErrorEntry.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusErrorEntryProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusErrorEntry>(opaquePointer))
    }



}

// MARK: - no DBusErrorEntry properties

// MARK: - no signals


public extension DBusErrorEntryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusErrorEntry` instance.
    var _ptr: UnsafeMutablePointer<GDBusErrorEntry> { return ptr.assumingMemoryBound(to: GDBusErrorEntry.self) }

}



// MARK: - DBusInterfaceIface Record

/// The `DBusInterfaceIfaceProtocol` protocol exposes the methods and properties of an underlying `GDBusInterfaceIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusInterfaceIface`.
/// Alternatively, use `DBusInterfaceIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Base type for D-Bus interfaces.
public protocol DBusInterfaceIfaceProtocol {
    /// Untyped pointer to the underlying `GDBusInterfaceIface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusInterfaceIface` instance.
    var _ptr: UnsafeMutablePointer<GDBusInterfaceIface> { get }
}

/// The `DBusInterfaceIfaceRef` type acts as a lightweight Swift reference to an underlying `GDBusInterfaceIface` instance.
/// It exposes methods that can operate on this data type through `DBusInterfaceIfaceProtocol` conformance.
/// Use `DBusInterfaceIfaceRef` only as an `unowned` reference to an existing `GDBusInterfaceIface` instance.
///
/// Base type for D-Bus interfaces.
public struct DBusInterfaceIfaceRef: DBusInterfaceIfaceProtocol {
    /// Untyped pointer to the underlying `GDBusInterfaceIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusInterfaceIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusInterfaceIface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusInterfaceIfaceProtocol`
    init<T: DBusInterfaceIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceIfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceIfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceIfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceIfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceIfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DBusInterfaceIface` type acts as an owner of an underlying `GDBusInterfaceIface` instance.
/// It provides the methods that can operate on this data type through `DBusInterfaceIfaceProtocol` conformance.
/// Use `DBusInterfaceIface` as a strong reference or owner of a `GDBusInterfaceIface` instance.
///
/// Base type for D-Bus interfaces.
open class DBusInterfaceIface: DBusInterfaceIfaceProtocol {
    /// Untyped pointer to the underlying `GDBusInterfaceIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DBusInterfaceIface` instance.
    public init(_ op: UnsafeMutablePointer<GDBusInterfaceIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DBusInterfaceIfaceProtocol`
    /// `GDBusInterfaceIface` does not allow reference counting.
    public convenience init<T: DBusInterfaceIfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GDBusInterfaceIface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GDBusInterfaceIface`.
    deinit {
        // no reference counting for GDBusInterfaceIface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceIfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusInterfaceIface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceIfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusInterfaceIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceIfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusInterfaceIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceIfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusInterfaceIface>(opaquePointer))
    }



}

// MARK: - no DBusInterfaceIface properties

// MARK: - no signals


public extension DBusInterfaceIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusInterfaceIface` instance.
    var _ptr: UnsafeMutablePointer<GDBusInterfaceIface> { return ptr.assumingMemoryBound(to: GDBusInterfaceIface.self) }

}



// MARK: - DBusInterfaceInfo Record

/// The `DBusInterfaceInfoProtocol` protocol exposes the methods and properties of an underlying `GDBusInterfaceInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusInterfaceInfo`.
/// Alternatively, use `DBusInterfaceInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Information about a D-Bus interface.
public protocol DBusInterfaceInfoProtocol {
    /// Untyped pointer to the underlying `GDBusInterfaceInfo` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusInterfaceInfo` instance.
    var dbus_interface_info_ptr: UnsafeMutablePointer<GDBusInterfaceInfo> { get }
}

/// The `DBusInterfaceInfoRef` type acts as a lightweight Swift reference to an underlying `GDBusInterfaceInfo` instance.
/// It exposes methods that can operate on this data type through `DBusInterfaceInfoProtocol` conformance.
/// Use `DBusInterfaceInfoRef` only as an `unowned` reference to an existing `GDBusInterfaceInfo` instance.
///
/// Information about a D-Bus interface.
public struct DBusInterfaceInfoRef: DBusInterfaceInfoProtocol {
    /// Untyped pointer to the underlying `GDBusInterfaceInfo` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_interface_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusInterfaceInfoRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusInterfaceInfo>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusInterfaceInfoProtocol`
    init<T: DBusInterfaceInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceInfoProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceInfoProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceInfoProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceInfoProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceInfoProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DBusInterfaceInfo` type acts as a reference-counted owner of an underlying `GDBusInterfaceInfo` instance.
/// It provides the methods that can operate on this data type through `DBusInterfaceInfoProtocol` conformance.
/// Use `DBusInterfaceInfo` as a strong reference or owner of a `GDBusInterfaceInfo` instance.
///
/// Information about a D-Bus interface.
open class DBusInterfaceInfo: DBusInterfaceInfoProtocol {
    /// Untyped pointer to the underlying `GDBusInterfaceInfo` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_interface_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DBusInterfaceInfo` instance.
    public init(_ op: UnsafeMutablePointer<GDBusInterfaceInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DBusInterfaceInfoProtocol`
    /// Will retain `GDBusInterfaceInfo`.
    public convenience init<T: DBusInterfaceInfoProtocol>(_ other: T) {
        self.init(cast(other.dbus_interface_info_ptr))
        g_dbus_interface_info_ref(cast(dbus_interface_info_ptr))
    }

    /// Releases the underlying `GDBusInterfaceInfo` instance using `g_dbus_interface_info_unref`.
    deinit {
        g_dbus_interface_info_unref(cast(dbus_interface_info_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceInfoProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusInterfaceInfo.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceInfoProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusInterfaceInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceInfoProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusInterfaceInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceInfoProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusInterfaceInfo>(opaquePointer))
    }



}

// MARK: - no DBusInterfaceInfo properties

// MARK: - no signals


public extension DBusInterfaceInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusInterfaceInfo` instance.
    var dbus_interface_info_ptr: UnsafeMutablePointer<GDBusInterfaceInfo> { return ptr.assumingMemoryBound(to: GDBusInterfaceInfo.self) }

    /// Builds a lookup-cache to speed up
    /// g_dbus_interface_info_lookup_method(),
    /// g_dbus_interface_info_lookup_signal() and
    /// g_dbus_interface_info_lookup_property().
    /// 
    /// If this has already been called with `info`, the existing cache is
    /// used and its use count is increased.
    /// 
    /// Note that `info` cannot be modified until
    /// g_dbus_interface_info_cache_release() is called.
    func cacheBuild() {
        g_dbus_interface_info_cache_build(cast(dbus_interface_info_ptr))
    
    }

    /// Decrements the usage count for the cache for `info` built by
    /// g_dbus_interface_info_cache_build() (if any) and frees the
    /// resources used by the cache if the usage count drops to zero.
    func cacheRelease() {
        g_dbus_interface_info_cache_release(cast(dbus_interface_info_ptr))
    
    }

    /// Appends an XML representation of `info` (and its children) to `string_builder`.
    /// 
    /// This function is typically used for generating introspection XML
    /// documents at run-time for handling the
    /// `org.freedesktop.DBus.Introspectable.Introspect`
    /// method.
    func generateXml(indent: CUnsignedInt, stringBuilder string_builder: StringTypeProtocol) {
        g_dbus_interface_info_generate_xml(cast(dbus_interface_info_ptr), guint(indent), cast(string_builder.ptr))
    
    }

    /// Looks up information about a method.
    /// 
    /// The cost of this function is O(n) in number of methods unless
    /// g_dbus_interface_info_cache_build() has been used on `info`.
    func lookupMethod(name: UnsafePointer<gchar>) -> UnsafeMutablePointer<GDBusMethodInfo>! {
        let rv = g_dbus_interface_info_lookup_method(cast(dbus_interface_info_ptr), name)
        return cast(rv)
    }

    /// Looks up information about a property.
    /// 
    /// The cost of this function is O(n) in number of properties unless
    /// g_dbus_interface_info_cache_build() has been used on `info`.
    func lookupProperty(name: UnsafePointer<gchar>) -> UnsafeMutablePointer<GDBusPropertyInfo>! {
        let rv = g_dbus_interface_info_lookup_property(cast(dbus_interface_info_ptr), name)
        return cast(rv)
    }

    /// Looks up information about a signal.
    /// 
    /// The cost of this function is O(n) in number of signals unless
    /// g_dbus_interface_info_cache_build() has been used on `info`.
    func lookupSignal(name: UnsafePointer<gchar>) -> UnsafeMutablePointer<GDBusSignalInfo>! {
        let rv = g_dbus_interface_info_lookup_signal(cast(dbus_interface_info_ptr), name)
        return cast(rv)
    }

    /// If `info` is statically allocated does nothing. Otherwise increases
    /// the reference count.
    func ref() -> UnsafeMutablePointer<GDBusInterfaceInfo>! {
        let rv = g_dbus_interface_info_ref(cast(dbus_interface_info_ptr))
        return cast(rv)
    }

    /// If `info` is statically allocated, does nothing. Otherwise decreases
    /// the reference count of `info`. When its reference count drops to 0,
    /// the memory used is freed.
    func unref() {
        g_dbus_interface_info_unref(cast(dbus_interface_info_ptr))
    
    }
}



// MARK: - DBusInterfaceSkeletonClass Record

/// The `DBusInterfaceSkeletonClassProtocol` protocol exposes the methods and properties of an underlying `GDBusInterfaceSkeletonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusInterfaceSkeletonClass`.
/// Alternatively, use `DBusInterfaceSkeletonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Class structure for `GDBusInterfaceSkeleton`.
public protocol DBusInterfaceSkeletonClassProtocol {
    /// Untyped pointer to the underlying `GDBusInterfaceSkeletonClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusInterfaceSkeletonClass` instance.
    var _ptr: UnsafeMutablePointer<GDBusInterfaceSkeletonClass> { get }
}

/// The `DBusInterfaceSkeletonClassRef` type acts as a lightweight Swift reference to an underlying `GDBusInterfaceSkeletonClass` instance.
/// It exposes methods that can operate on this data type through `DBusInterfaceSkeletonClassProtocol` conformance.
/// Use `DBusInterfaceSkeletonClassRef` only as an `unowned` reference to an existing `GDBusInterfaceSkeletonClass` instance.
///
/// Class structure for `GDBusInterfaceSkeleton`.
public struct DBusInterfaceSkeletonClassRef: DBusInterfaceSkeletonClassProtocol {
    /// Untyped pointer to the underlying `GDBusInterfaceSkeletonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusInterfaceSkeletonClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusInterfaceSkeletonClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusInterfaceSkeletonClassProtocol`
    init<T: DBusInterfaceSkeletonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DBusInterfaceSkeletonClass` type acts as an owner of an underlying `GDBusInterfaceSkeletonClass` instance.
/// It provides the methods that can operate on this data type through `DBusInterfaceSkeletonClassProtocol` conformance.
/// Use `DBusInterfaceSkeletonClass` as a strong reference or owner of a `GDBusInterfaceSkeletonClass` instance.
///
/// Class structure for `GDBusInterfaceSkeleton`.
open class DBusInterfaceSkeletonClass: DBusInterfaceSkeletonClassProtocol {
    /// Untyped pointer to the underlying `GDBusInterfaceSkeletonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DBusInterfaceSkeletonClass` instance.
    public init(_ op: UnsafeMutablePointer<GDBusInterfaceSkeletonClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DBusInterfaceSkeletonClassProtocol`
    /// `GDBusInterfaceSkeletonClass` does not allow reference counting.
    public convenience init<T: DBusInterfaceSkeletonClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GDBusInterfaceSkeletonClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GDBusInterfaceSkeletonClass`.
    deinit {
        // no reference counting for GDBusInterfaceSkeletonClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusInterfaceSkeletonClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusInterfaceSkeletonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusInterfaceSkeletonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusInterfaceSkeletonClass>(opaquePointer))
    }



}

// MARK: - no DBusInterfaceSkeletonClass properties

// MARK: - no signals


public extension DBusInterfaceSkeletonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusInterfaceSkeletonClass` instance.
    var _ptr: UnsafeMutablePointer<GDBusInterfaceSkeletonClass> { return ptr.assumingMemoryBound(to: GDBusInterfaceSkeletonClass.self) }

}



// MARK: - DBusInterfaceSkeletonPrivate Record

/// The `DBusInterfaceSkeletonPrivateProtocol` protocol exposes the methods and properties of an underlying `GDBusInterfaceSkeletonPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusInterfaceSkeletonPrivate`.
/// Alternatively, use `DBusInterfaceSkeletonPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol DBusInterfaceSkeletonPrivateProtocol {
    /// Untyped pointer to the underlying `GDBusInterfaceSkeletonPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusInterfaceSkeletonPrivate` instance.
    var _ptr: UnsafeMutablePointer<GDBusInterfaceSkeletonPrivate> { get }
}

/// The `DBusInterfaceSkeletonPrivateRef` type acts as a lightweight Swift reference to an underlying `GDBusInterfaceSkeletonPrivate` instance.
/// It exposes methods that can operate on this data type through `DBusInterfaceSkeletonPrivateProtocol` conformance.
/// Use `DBusInterfaceSkeletonPrivateRef` only as an `unowned` reference to an existing `GDBusInterfaceSkeletonPrivate` instance.
///

public struct DBusInterfaceSkeletonPrivateRef: DBusInterfaceSkeletonPrivateProtocol {
    /// Untyped pointer to the underlying `GDBusInterfaceSkeletonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusInterfaceSkeletonPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusInterfaceSkeletonPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusInterfaceSkeletonPrivateProtocol`
    init<T: DBusInterfaceSkeletonPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DBusInterfaceSkeletonPrivate` type acts as an owner of an underlying `GDBusInterfaceSkeletonPrivate` instance.
/// It provides the methods that can operate on this data type through `DBusInterfaceSkeletonPrivateProtocol` conformance.
/// Use `DBusInterfaceSkeletonPrivate` as a strong reference or owner of a `GDBusInterfaceSkeletonPrivate` instance.
///

open class DBusInterfaceSkeletonPrivate: DBusInterfaceSkeletonPrivateProtocol {
    /// Untyped pointer to the underlying `GDBusInterfaceSkeletonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DBusInterfaceSkeletonPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GDBusInterfaceSkeletonPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DBusInterfaceSkeletonPrivateProtocol`
    /// `GDBusInterfaceSkeletonPrivate` does not allow reference counting.
    public convenience init<T: DBusInterfaceSkeletonPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GDBusInterfaceSkeletonPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GDBusInterfaceSkeletonPrivate`.
    deinit {
        // no reference counting for GDBusInterfaceSkeletonPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusInterfaceSkeletonPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusInterfaceSkeletonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusInterfaceSkeletonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusInterfaceSkeletonPrivate>(opaquePointer))
    }



}

// MARK: - no DBusInterfaceSkeletonPrivate properties

// MARK: - no signals


public extension DBusInterfaceSkeletonPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusInterfaceSkeletonPrivate` instance.
    var _ptr: UnsafeMutablePointer<GDBusInterfaceSkeletonPrivate> { return ptr.assumingMemoryBound(to: GDBusInterfaceSkeletonPrivate.self) }

}



// MARK: - DBusInterfaceVTable Record

/// The `DBusInterfaceVTableProtocol` protocol exposes the methods and properties of an underlying `GDBusInterfaceVTable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusInterfaceVTable`.
/// Alternatively, use `DBusInterfaceVTableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Virtual table for handling properties and method calls for a D-Bus
/// interface.
/// 
/// Since 2.38, if you want to handle getting/setting D-Bus properties
/// asynchronously, give `nil` as your get_property() or set_property()
/// function. The D-Bus call will be directed to your `method_call` function,
/// with the provided `interface_name` set to "org.freedesktop.DBus.Properties".
/// 
/// Ownership of the `GDBusMethodInvocation` object passed to the
/// method_call() function is transferred to your handler; you must
/// call one of the methods of `GDBusMethodInvocation` to return a reply
/// (possibly empty), or an error. These functions also take ownership
/// of the passed-in invocation object, so unless the invocation
/// object has otherwise been referenced, it will be then be freed.
/// Calling one of these functions may be done within your
/// method_call() implementation but it also can be done at a later
/// point to handle the method asynchronously.
/// 
/// The usual checks on the validity of the calls is performed. For
/// `Get` calls, an error is automatically returned if the property does
/// not exist or the permissions do not allow access. The same checks are
/// performed for `Set` calls, and the provided value is also checked for
/// being the correct type.
/// 
/// For both `Get` and `Set` calls, the `GDBusMethodInvocation`
/// passed to the `method_call` handler can be queried with
/// g_dbus_method_invocation_get_property_info() to get a pointer
/// to the `GDBusPropertyInfo` of the property.
/// 
/// If you have readable properties specified in your interface info,
/// you must ensure that you either provide a non-`nil` `get_property`()
/// function or provide implementations of both the `Get` and `GetAll`
/// methods on org.freedesktop.DBus.Properties interface in your `method_call`
/// function. Note that the required return type of the `Get` call is
/// `(v)`, not the type of the property. `GetAll` expects a return value
/// of type `a{sv}`.
/// 
/// If you have writable properties specified in your interface info,
/// you must ensure that you either provide a non-`nil` `set_property`()
/// function or provide an implementation of the `Set` call. If implementing
/// the call, you must return the value of type `G_VARIANT_TYPE_UNIT`.
public protocol DBusInterfaceVTableProtocol {
    /// Untyped pointer to the underlying `GDBusInterfaceVTable` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusInterfaceVTable` instance.
    var _ptr: UnsafeMutablePointer<GDBusInterfaceVTable> { get }
}

/// The `DBusInterfaceVTableRef` type acts as a lightweight Swift reference to an underlying `GDBusInterfaceVTable` instance.
/// It exposes methods that can operate on this data type through `DBusInterfaceVTableProtocol` conformance.
/// Use `DBusInterfaceVTableRef` only as an `unowned` reference to an existing `GDBusInterfaceVTable` instance.
///
/// Virtual table for handling properties and method calls for a D-Bus
/// interface.
/// 
/// Since 2.38, if you want to handle getting/setting D-Bus properties
/// asynchronously, give `nil` as your get_property() or set_property()
/// function. The D-Bus call will be directed to your `method_call` function,
/// with the provided `interface_name` set to "org.freedesktop.DBus.Properties".
/// 
/// Ownership of the `GDBusMethodInvocation` object passed to the
/// method_call() function is transferred to your handler; you must
/// call one of the methods of `GDBusMethodInvocation` to return a reply
/// (possibly empty), or an error. These functions also take ownership
/// of the passed-in invocation object, so unless the invocation
/// object has otherwise been referenced, it will be then be freed.
/// Calling one of these functions may be done within your
/// method_call() implementation but it also can be done at a later
/// point to handle the method asynchronously.
/// 
/// The usual checks on the validity of the calls is performed. For
/// `Get` calls, an error is automatically returned if the property does
/// not exist or the permissions do not allow access. The same checks are
/// performed for `Set` calls, and the provided value is also checked for
/// being the correct type.
/// 
/// For both `Get` and `Set` calls, the `GDBusMethodInvocation`
/// passed to the `method_call` handler can be queried with
/// g_dbus_method_invocation_get_property_info() to get a pointer
/// to the `GDBusPropertyInfo` of the property.
/// 
/// If you have readable properties specified in your interface info,
/// you must ensure that you either provide a non-`nil` `get_property`()
/// function or provide implementations of both the `Get` and `GetAll`
/// methods on org.freedesktop.DBus.Properties interface in your `method_call`
/// function. Note that the required return type of the `Get` call is
/// `(v)`, not the type of the property. `GetAll` expects a return value
/// of type `a{sv}`.
/// 
/// If you have writable properties specified in your interface info,
/// you must ensure that you either provide a non-`nil` `set_property`()
/// function or provide an implementation of the `Set` call. If implementing
/// the call, you must return the value of type `G_VARIANT_TYPE_UNIT`.
public struct DBusInterfaceVTableRef: DBusInterfaceVTableProtocol {
    /// Untyped pointer to the underlying `GDBusInterfaceVTable` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusInterfaceVTableRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusInterfaceVTable>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusInterfaceVTableProtocol`
    init<T: DBusInterfaceVTableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceVTableProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceVTableProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceVTableProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceVTableProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceVTableProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DBusInterfaceVTable` type acts as an owner of an underlying `GDBusInterfaceVTable` instance.
/// It provides the methods that can operate on this data type through `DBusInterfaceVTableProtocol` conformance.
/// Use `DBusInterfaceVTable` as a strong reference or owner of a `GDBusInterfaceVTable` instance.
///
/// Virtual table for handling properties and method calls for a D-Bus
/// interface.
/// 
/// Since 2.38, if you want to handle getting/setting D-Bus properties
/// asynchronously, give `nil` as your get_property() or set_property()
/// function. The D-Bus call will be directed to your `method_call` function,
/// with the provided `interface_name` set to "org.freedesktop.DBus.Properties".
/// 
/// Ownership of the `GDBusMethodInvocation` object passed to the
/// method_call() function is transferred to your handler; you must
/// call one of the methods of `GDBusMethodInvocation` to return a reply
/// (possibly empty), or an error. These functions also take ownership
/// of the passed-in invocation object, so unless the invocation
/// object has otherwise been referenced, it will be then be freed.
/// Calling one of these functions may be done within your
/// method_call() implementation but it also can be done at a later
/// point to handle the method asynchronously.
/// 
/// The usual checks on the validity of the calls is performed. For
/// `Get` calls, an error is automatically returned if the property does
/// not exist or the permissions do not allow access. The same checks are
/// performed for `Set` calls, and the provided value is also checked for
/// being the correct type.
/// 
/// For both `Get` and `Set` calls, the `GDBusMethodInvocation`
/// passed to the `method_call` handler can be queried with
/// g_dbus_method_invocation_get_property_info() to get a pointer
/// to the `GDBusPropertyInfo` of the property.
/// 
/// If you have readable properties specified in your interface info,
/// you must ensure that you either provide a non-`nil` `get_property`()
/// function or provide implementations of both the `Get` and `GetAll`
/// methods on org.freedesktop.DBus.Properties interface in your `method_call`
/// function. Note that the required return type of the `Get` call is
/// `(v)`, not the type of the property. `GetAll` expects a return value
/// of type `a{sv}`.
/// 
/// If you have writable properties specified in your interface info,
/// you must ensure that you either provide a non-`nil` `set_property`()
/// function or provide an implementation of the `Set` call. If implementing
/// the call, you must return the value of type `G_VARIANT_TYPE_UNIT`.
open class DBusInterfaceVTable: DBusInterfaceVTableProtocol {
    /// Untyped pointer to the underlying `GDBusInterfaceVTable` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DBusInterfaceVTable` instance.
    public init(_ op: UnsafeMutablePointer<GDBusInterfaceVTable>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DBusInterfaceVTableProtocol`
    /// `GDBusInterfaceVTable` does not allow reference counting.
    public convenience init<T: DBusInterfaceVTableProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GDBusInterfaceVTable, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GDBusInterfaceVTable`.
    deinit {
        // no reference counting for GDBusInterfaceVTable, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceVTableProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusInterfaceVTable.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceVTableProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusInterfaceVTable.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceVTableProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusInterfaceVTable.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceVTableProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusInterfaceVTable>(opaquePointer))
    }



}

// MARK: - no DBusInterfaceVTable properties

// MARK: - no signals


public extension DBusInterfaceVTableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusInterfaceVTable` instance.
    var _ptr: UnsafeMutablePointer<GDBusInterfaceVTable> { return ptr.assumingMemoryBound(to: GDBusInterfaceVTable.self) }

}



// MARK: - DBusMethodInfo Record

/// The `DBusMethodInfoProtocol` protocol exposes the methods and properties of an underlying `GDBusMethodInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusMethodInfo`.
/// Alternatively, use `DBusMethodInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Information about a method on an D-Bus interface.
public protocol DBusMethodInfoProtocol {
    /// Untyped pointer to the underlying `GDBusMethodInfo` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusMethodInfo` instance.
    var dbus_method_info_ptr: UnsafeMutablePointer<GDBusMethodInfo> { get }
}

/// The `DBusMethodInfoRef` type acts as a lightweight Swift reference to an underlying `GDBusMethodInfo` instance.
/// It exposes methods that can operate on this data type through `DBusMethodInfoProtocol` conformance.
/// Use `DBusMethodInfoRef` only as an `unowned` reference to an existing `GDBusMethodInfo` instance.
///
/// Information about a method on an D-Bus interface.
public struct DBusMethodInfoRef: DBusMethodInfoProtocol {
    /// Untyped pointer to the underlying `GDBusMethodInfo` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_method_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusMethodInfoRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusMethodInfo>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusMethodInfoProtocol`
    init<T: DBusMethodInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInfoProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInfoProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInfoProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInfoProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInfoProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DBusMethodInfo` type acts as a reference-counted owner of an underlying `GDBusMethodInfo` instance.
/// It provides the methods that can operate on this data type through `DBusMethodInfoProtocol` conformance.
/// Use `DBusMethodInfo` as a strong reference or owner of a `GDBusMethodInfo` instance.
///
/// Information about a method on an D-Bus interface.
open class DBusMethodInfo: DBusMethodInfoProtocol {
    /// Untyped pointer to the underlying `GDBusMethodInfo` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_method_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DBusMethodInfo` instance.
    public init(_ op: UnsafeMutablePointer<GDBusMethodInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DBusMethodInfoProtocol`
    /// Will retain `GDBusMethodInfo`.
    public convenience init<T: DBusMethodInfoProtocol>(_ other: T) {
        self.init(cast(other.dbus_method_info_ptr))
        g_dbus_method_info_ref(cast(dbus_method_info_ptr))
    }

    /// Releases the underlying `GDBusMethodInfo` instance using `g_dbus_method_info_unref`.
    deinit {
        g_dbus_method_info_unref(cast(dbus_method_info_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInfoProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusMethodInfo.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInfoProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusMethodInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInfoProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusMethodInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInfoProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusMethodInfo>(opaquePointer))
    }



}

// MARK: - no DBusMethodInfo properties

// MARK: - no signals


public extension DBusMethodInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusMethodInfo` instance.
    var dbus_method_info_ptr: UnsafeMutablePointer<GDBusMethodInfo> { return ptr.assumingMemoryBound(to: GDBusMethodInfo.self) }

    /// If `info` is statically allocated does nothing. Otherwise increases
    /// the reference count.
    func ref() -> UnsafeMutablePointer<GDBusMethodInfo>! {
        let rv = g_dbus_method_info_ref(cast(dbus_method_info_ptr))
        return cast(rv)
    }

    /// If `info` is statically allocated, does nothing. Otherwise decreases
    /// the reference count of `info`. When its reference count drops to 0,
    /// the memory used is freed.
    func unref() {
        g_dbus_method_info_unref(cast(dbus_method_info_ptr))
    
    }
}



// MARK: - DBusNodeInfo Record

/// The `DBusNodeInfoProtocol` protocol exposes the methods and properties of an underlying `GDBusNodeInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusNodeInfo`.
/// Alternatively, use `DBusNodeInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Information about nodes in a remote object hierarchy.
public protocol DBusNodeInfoProtocol {
    /// Untyped pointer to the underlying `GDBusNodeInfo` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusNodeInfo` instance.
    var dbus_node_info_ptr: UnsafeMutablePointer<GDBusNodeInfo> { get }
}

/// The `DBusNodeInfoRef` type acts as a lightweight Swift reference to an underlying `GDBusNodeInfo` instance.
/// It exposes methods that can operate on this data type through `DBusNodeInfoProtocol` conformance.
/// Use `DBusNodeInfoRef` only as an `unowned` reference to an existing `GDBusNodeInfo` instance.
///
/// Information about nodes in a remote object hierarchy.
public struct DBusNodeInfoRef: DBusNodeInfoProtocol {
    /// Untyped pointer to the underlying `GDBusNodeInfo` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_node_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusNodeInfoRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusNodeInfo>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusNodeInfoProtocol`
    init<T: DBusNodeInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusNodeInfoProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusNodeInfoProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusNodeInfoProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusNodeInfoProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusNodeInfoProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Parses `xml_data` and returns a `GDBusNodeInfo` representing the data.
    /// 
    /// The introspection XML must contain exactly one top-level
    /// <node> element.
    /// 
    /// Note that this routine is using a
    /// [GMarkup][glib-Simple-XML-Subset-Parser.description]-based
    /// parser that only accepts a subset of valid XML documents.
    init(xml xml_data: UnsafePointer<gchar>) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_node_info_new_for_xml(xml_data, &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }
    /// Parses `xml_data` and returns a `GDBusNodeInfo` representing the data.
    /// 
    /// The introspection XML must contain exactly one top-level
    /// <node> element.
    /// 
    /// Note that this routine is using a
    /// [GMarkup][glib-Simple-XML-Subset-Parser.description]-based
    /// parser that only accepts a subset of valid XML documents.
    static func newFor(xml xml_data: UnsafePointer<gchar>) throws -> DBusNodeInfoRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_node_info_new_for_xml(xml_data, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { DBusNodeInfoRef(cast($0)) }
    }
}

/// The `DBusNodeInfo` type acts as a reference-counted owner of an underlying `GDBusNodeInfo` instance.
/// It provides the methods that can operate on this data type through `DBusNodeInfoProtocol` conformance.
/// Use `DBusNodeInfo` as a strong reference or owner of a `GDBusNodeInfo` instance.
///
/// Information about nodes in a remote object hierarchy.
open class DBusNodeInfo: DBusNodeInfoProtocol {
    /// Untyped pointer to the underlying `GDBusNodeInfo` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_node_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DBusNodeInfo` instance.
    public init(_ op: UnsafeMutablePointer<GDBusNodeInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DBusNodeInfoProtocol`
    /// Will retain `GDBusNodeInfo`.
    public convenience init<T: DBusNodeInfoProtocol>(_ other: T) {
        self.init(cast(other.dbus_node_info_ptr))
        g_dbus_node_info_ref(cast(dbus_node_info_ptr))
    }

    /// Releases the underlying `GDBusNodeInfo` instance using `g_dbus_node_info_unref`.
    deinit {
        g_dbus_node_info_unref(cast(dbus_node_info_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusNodeInfoProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusNodeInfo.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusNodeInfoProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusNodeInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusNodeInfoProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusNodeInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusNodeInfoProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusNodeInfo>(opaquePointer))
    }

    /// Parses `xml_data` and returns a `GDBusNodeInfo` representing the data.
    /// 
    /// The introspection XML must contain exactly one top-level
    /// <node> element.
    /// 
    /// Note that this routine is using a
    /// [GMarkup][glib-Simple-XML-Subset-Parser.description]-based
    /// parser that only accepts a subset of valid XML documents.
    public convenience init(xml xml_data: UnsafePointer<gchar>) throws {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_node_info_new_for_xml(xml_data, &error)
        if let error = error {
                throw ErrorType(error)
        }
        self.init(cast(rv))
    }

    /// Parses `xml_data` and returns a `GDBusNodeInfo` representing the data.
    /// 
    /// The introspection XML must contain exactly one top-level
    /// <node> element.
    /// 
    /// Note that this routine is using a
    /// [GMarkup][glib-Simple-XML-Subset-Parser.description]-based
    /// parser that only accepts a subset of valid XML documents.
    public static func newFor(xml xml_data: UnsafePointer<gchar>) throws -> DBusNodeInfo! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_dbus_node_info_new_for_xml(xml_data, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { DBusNodeInfo(cast($0)) }
    }

}

// MARK: - no DBusNodeInfo properties

// MARK: - no signals


public extension DBusNodeInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusNodeInfo` instance.
    var dbus_node_info_ptr: UnsafeMutablePointer<GDBusNodeInfo> { return ptr.assumingMemoryBound(to: GDBusNodeInfo.self) }

    /// Appends an XML representation of `info` (and its children) to `string_builder`.
    /// 
    /// This function is typically used for generating introspection XML documents at run-time for
    /// handling the `org.freedesktop.DBus.Introspectable.Introspect`  method.
    func generateXml(indent: CUnsignedInt, stringBuilder string_builder: StringTypeProtocol) {
        g_dbus_node_info_generate_xml(cast(dbus_node_info_ptr), guint(indent), cast(string_builder.ptr))
    
    }

    /// Looks up information about an interface.
    /// 
    /// The cost of this function is O(n) in number of interfaces.
    func lookupInterface(name: UnsafePointer<gchar>) -> UnsafeMutablePointer<GDBusInterfaceInfo>! {
        let rv = g_dbus_node_info_lookup_interface(cast(dbus_node_info_ptr), name)
        return cast(rv)
    }

    /// If `info` is statically allocated does nothing. Otherwise increases
    /// the reference count.
    func ref() -> UnsafeMutablePointer<GDBusNodeInfo>! {
        let rv = g_dbus_node_info_ref(cast(dbus_node_info_ptr))
        return cast(rv)
    }

    /// If `info` is statically allocated, does nothing. Otherwise decreases
    /// the reference count of `info`. When its reference count drops to 0,
    /// the memory used is freed.
    func unref() {
        g_dbus_node_info_unref(cast(dbus_node_info_ptr))
    
    }
}



// MARK: - DBusObjectIface Record

/// The `DBusObjectIfaceProtocol` protocol exposes the methods and properties of an underlying `GDBusObjectIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusObjectIface`.
/// Alternatively, use `DBusObjectIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Base object type for D-Bus objects.
public protocol DBusObjectIfaceProtocol {
    /// Untyped pointer to the underlying `GDBusObjectIface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusObjectIface` instance.
    var _ptr: UnsafeMutablePointer<GDBusObjectIface> { get }
}

/// The `DBusObjectIfaceRef` type acts as a lightweight Swift reference to an underlying `GDBusObjectIface` instance.
/// It exposes methods that can operate on this data type through `DBusObjectIfaceProtocol` conformance.
/// Use `DBusObjectIfaceRef` only as an `unowned` reference to an existing `GDBusObjectIface` instance.
///
/// Base object type for D-Bus objects.
public struct DBusObjectIfaceRef: DBusObjectIfaceProtocol {
    /// Untyped pointer to the underlying `GDBusObjectIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusObjectIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusObjectIface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusObjectIfaceProtocol`
    init<T: DBusObjectIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectIfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectIfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectIfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectIfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectIfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DBusObjectIface` type acts as an owner of an underlying `GDBusObjectIface` instance.
/// It provides the methods that can operate on this data type through `DBusObjectIfaceProtocol` conformance.
/// Use `DBusObjectIface` as a strong reference or owner of a `GDBusObjectIface` instance.
///
/// Base object type for D-Bus objects.
open class DBusObjectIface: DBusObjectIfaceProtocol {
    /// Untyped pointer to the underlying `GDBusObjectIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DBusObjectIface` instance.
    public init(_ op: UnsafeMutablePointer<GDBusObjectIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DBusObjectIfaceProtocol`
    /// `GDBusObjectIface` does not allow reference counting.
    public convenience init<T: DBusObjectIfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GDBusObjectIface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GDBusObjectIface`.
    deinit {
        // no reference counting for GDBusObjectIface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectIfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusObjectIface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectIfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusObjectIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectIfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusObjectIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectIfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusObjectIface>(opaquePointer))
    }



}

// MARK: - no DBusObjectIface properties

// MARK: - no signals


public extension DBusObjectIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusObjectIface` instance.
    var _ptr: UnsafeMutablePointer<GDBusObjectIface> { return ptr.assumingMemoryBound(to: GDBusObjectIface.self) }

}



// MARK: - DBusObjectManagerClientClass Record

/// The `DBusObjectManagerClientClassProtocol` protocol exposes the methods and properties of an underlying `GDBusObjectManagerClientClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusObjectManagerClientClass`.
/// Alternatively, use `DBusObjectManagerClientClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Class structure for `GDBusObjectManagerClient`.
public protocol DBusObjectManagerClientClassProtocol {
    /// Untyped pointer to the underlying `GDBusObjectManagerClientClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusObjectManagerClientClass` instance.
    var _ptr: UnsafeMutablePointer<GDBusObjectManagerClientClass> { get }
}

/// The `DBusObjectManagerClientClassRef` type acts as a lightweight Swift reference to an underlying `GDBusObjectManagerClientClass` instance.
/// It exposes methods that can operate on this data type through `DBusObjectManagerClientClassProtocol` conformance.
/// Use `DBusObjectManagerClientClassRef` only as an `unowned` reference to an existing `GDBusObjectManagerClientClass` instance.
///
/// Class structure for `GDBusObjectManagerClient`.
public struct DBusObjectManagerClientClassRef: DBusObjectManagerClientClassProtocol {
    /// Untyped pointer to the underlying `GDBusObjectManagerClientClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusObjectManagerClientClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusObjectManagerClientClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusObjectManagerClientClassProtocol`
    init<T: DBusObjectManagerClientClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DBusObjectManagerClientClass` type acts as an owner of an underlying `GDBusObjectManagerClientClass` instance.
/// It provides the methods that can operate on this data type through `DBusObjectManagerClientClassProtocol` conformance.
/// Use `DBusObjectManagerClientClass` as a strong reference or owner of a `GDBusObjectManagerClientClass` instance.
///
/// Class structure for `GDBusObjectManagerClient`.
open class DBusObjectManagerClientClass: DBusObjectManagerClientClassProtocol {
    /// Untyped pointer to the underlying `GDBusObjectManagerClientClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DBusObjectManagerClientClass` instance.
    public init(_ op: UnsafeMutablePointer<GDBusObjectManagerClientClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DBusObjectManagerClientClassProtocol`
    /// `GDBusObjectManagerClientClass` does not allow reference counting.
    public convenience init<T: DBusObjectManagerClientClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GDBusObjectManagerClientClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GDBusObjectManagerClientClass`.
    deinit {
        // no reference counting for GDBusObjectManagerClientClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusObjectManagerClientClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusObjectManagerClientClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusObjectManagerClientClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusObjectManagerClientClass>(opaquePointer))
    }



}

// MARK: - no DBusObjectManagerClientClass properties

// MARK: - no signals


public extension DBusObjectManagerClientClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusObjectManagerClientClass` instance.
    var _ptr: UnsafeMutablePointer<GDBusObjectManagerClientClass> { return ptr.assumingMemoryBound(to: GDBusObjectManagerClientClass.self) }

}



// MARK: - DBusObjectManagerClientPrivate Record

/// The `DBusObjectManagerClientPrivateProtocol` protocol exposes the methods and properties of an underlying `GDBusObjectManagerClientPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusObjectManagerClientPrivate`.
/// Alternatively, use `DBusObjectManagerClientPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol DBusObjectManagerClientPrivateProtocol {
    /// Untyped pointer to the underlying `GDBusObjectManagerClientPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusObjectManagerClientPrivate` instance.
    var _ptr: UnsafeMutablePointer<GDBusObjectManagerClientPrivate> { get }
}

/// The `DBusObjectManagerClientPrivateRef` type acts as a lightweight Swift reference to an underlying `GDBusObjectManagerClientPrivate` instance.
/// It exposes methods that can operate on this data type through `DBusObjectManagerClientPrivateProtocol` conformance.
/// Use `DBusObjectManagerClientPrivateRef` only as an `unowned` reference to an existing `GDBusObjectManagerClientPrivate` instance.
///

public struct DBusObjectManagerClientPrivateRef: DBusObjectManagerClientPrivateProtocol {
    /// Untyped pointer to the underlying `GDBusObjectManagerClientPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusObjectManagerClientPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusObjectManagerClientPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusObjectManagerClientPrivateProtocol`
    init<T: DBusObjectManagerClientPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DBusObjectManagerClientPrivate` type acts as an owner of an underlying `GDBusObjectManagerClientPrivate` instance.
/// It provides the methods that can operate on this data type through `DBusObjectManagerClientPrivateProtocol` conformance.
/// Use `DBusObjectManagerClientPrivate` as a strong reference or owner of a `GDBusObjectManagerClientPrivate` instance.
///

open class DBusObjectManagerClientPrivate: DBusObjectManagerClientPrivateProtocol {
    /// Untyped pointer to the underlying `GDBusObjectManagerClientPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DBusObjectManagerClientPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GDBusObjectManagerClientPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DBusObjectManagerClientPrivateProtocol`
    /// `GDBusObjectManagerClientPrivate` does not allow reference counting.
    public convenience init<T: DBusObjectManagerClientPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GDBusObjectManagerClientPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GDBusObjectManagerClientPrivate`.
    deinit {
        // no reference counting for GDBusObjectManagerClientPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusObjectManagerClientPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusObjectManagerClientPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusObjectManagerClientPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusObjectManagerClientPrivate>(opaquePointer))
    }



}

// MARK: - no DBusObjectManagerClientPrivate properties

// MARK: - no signals


public extension DBusObjectManagerClientPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusObjectManagerClientPrivate` instance.
    var _ptr: UnsafeMutablePointer<GDBusObjectManagerClientPrivate> { return ptr.assumingMemoryBound(to: GDBusObjectManagerClientPrivate.self) }

}



// MARK: - DBusObjectManagerIface Record

/// The `DBusObjectManagerIfaceProtocol` protocol exposes the methods and properties of an underlying `GDBusObjectManagerIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusObjectManagerIface`.
/// Alternatively, use `DBusObjectManagerIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Base type for D-Bus object managers.
public protocol DBusObjectManagerIfaceProtocol {
    /// Untyped pointer to the underlying `GDBusObjectManagerIface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusObjectManagerIface` instance.
    var _ptr: UnsafeMutablePointer<GDBusObjectManagerIface> { get }
}

/// The `DBusObjectManagerIfaceRef` type acts as a lightweight Swift reference to an underlying `GDBusObjectManagerIface` instance.
/// It exposes methods that can operate on this data type through `DBusObjectManagerIfaceProtocol` conformance.
/// Use `DBusObjectManagerIfaceRef` only as an `unowned` reference to an existing `GDBusObjectManagerIface` instance.
///
/// Base type for D-Bus object managers.
public struct DBusObjectManagerIfaceRef: DBusObjectManagerIfaceProtocol {
    /// Untyped pointer to the underlying `GDBusObjectManagerIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusObjectManagerIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusObjectManagerIface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusObjectManagerIfaceProtocol`
    init<T: DBusObjectManagerIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerIfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerIfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerIfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerIfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerIfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DBusObjectManagerIface` type acts as an owner of an underlying `GDBusObjectManagerIface` instance.
/// It provides the methods that can operate on this data type through `DBusObjectManagerIfaceProtocol` conformance.
/// Use `DBusObjectManagerIface` as a strong reference or owner of a `GDBusObjectManagerIface` instance.
///
/// Base type for D-Bus object managers.
open class DBusObjectManagerIface: DBusObjectManagerIfaceProtocol {
    /// Untyped pointer to the underlying `GDBusObjectManagerIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DBusObjectManagerIface` instance.
    public init(_ op: UnsafeMutablePointer<GDBusObjectManagerIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DBusObjectManagerIfaceProtocol`
    /// `GDBusObjectManagerIface` does not allow reference counting.
    public convenience init<T: DBusObjectManagerIfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GDBusObjectManagerIface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GDBusObjectManagerIface`.
    deinit {
        // no reference counting for GDBusObjectManagerIface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerIfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusObjectManagerIface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerIfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusObjectManagerIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerIfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusObjectManagerIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerIfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusObjectManagerIface>(opaquePointer))
    }



}

// MARK: - no DBusObjectManagerIface properties

// MARK: - no signals


public extension DBusObjectManagerIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusObjectManagerIface` instance.
    var _ptr: UnsafeMutablePointer<GDBusObjectManagerIface> { return ptr.assumingMemoryBound(to: GDBusObjectManagerIface.self) }

}



// MARK: - DBusObjectManagerServerClass Record

/// The `DBusObjectManagerServerClassProtocol` protocol exposes the methods and properties of an underlying `GDBusObjectManagerServerClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusObjectManagerServerClass`.
/// Alternatively, use `DBusObjectManagerServerClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Class structure for `GDBusObjectManagerServer`.
public protocol DBusObjectManagerServerClassProtocol {
    /// Untyped pointer to the underlying `GDBusObjectManagerServerClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusObjectManagerServerClass` instance.
    var _ptr: UnsafeMutablePointer<GDBusObjectManagerServerClass> { get }
}

/// The `DBusObjectManagerServerClassRef` type acts as a lightweight Swift reference to an underlying `GDBusObjectManagerServerClass` instance.
/// It exposes methods that can operate on this data type through `DBusObjectManagerServerClassProtocol` conformance.
/// Use `DBusObjectManagerServerClassRef` only as an `unowned` reference to an existing `GDBusObjectManagerServerClass` instance.
///
/// Class structure for `GDBusObjectManagerServer`.
public struct DBusObjectManagerServerClassRef: DBusObjectManagerServerClassProtocol {
    /// Untyped pointer to the underlying `GDBusObjectManagerServerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusObjectManagerServerClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusObjectManagerServerClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusObjectManagerServerClassProtocol`
    init<T: DBusObjectManagerServerClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DBusObjectManagerServerClass` type acts as an owner of an underlying `GDBusObjectManagerServerClass` instance.
/// It provides the methods that can operate on this data type through `DBusObjectManagerServerClassProtocol` conformance.
/// Use `DBusObjectManagerServerClass` as a strong reference or owner of a `GDBusObjectManagerServerClass` instance.
///
/// Class structure for `GDBusObjectManagerServer`.
open class DBusObjectManagerServerClass: DBusObjectManagerServerClassProtocol {
    /// Untyped pointer to the underlying `GDBusObjectManagerServerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DBusObjectManagerServerClass` instance.
    public init(_ op: UnsafeMutablePointer<GDBusObjectManagerServerClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DBusObjectManagerServerClassProtocol`
    /// `GDBusObjectManagerServerClass` does not allow reference counting.
    public convenience init<T: DBusObjectManagerServerClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GDBusObjectManagerServerClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GDBusObjectManagerServerClass`.
    deinit {
        // no reference counting for GDBusObjectManagerServerClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusObjectManagerServerClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusObjectManagerServerClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusObjectManagerServerClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusObjectManagerServerClass>(opaquePointer))
    }



}

// MARK: - no DBusObjectManagerServerClass properties

// MARK: - no signals


public extension DBusObjectManagerServerClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusObjectManagerServerClass` instance.
    var _ptr: UnsafeMutablePointer<GDBusObjectManagerServerClass> { return ptr.assumingMemoryBound(to: GDBusObjectManagerServerClass.self) }

}



// MARK: - DBusObjectManagerServerPrivate Record

/// The `DBusObjectManagerServerPrivateProtocol` protocol exposes the methods and properties of an underlying `GDBusObjectManagerServerPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusObjectManagerServerPrivate`.
/// Alternatively, use `DBusObjectManagerServerPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol DBusObjectManagerServerPrivateProtocol {
    /// Untyped pointer to the underlying `GDBusObjectManagerServerPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusObjectManagerServerPrivate` instance.
    var _ptr: UnsafeMutablePointer<GDBusObjectManagerServerPrivate> { get }
}

/// The `DBusObjectManagerServerPrivateRef` type acts as a lightweight Swift reference to an underlying `GDBusObjectManagerServerPrivate` instance.
/// It exposes methods that can operate on this data type through `DBusObjectManagerServerPrivateProtocol` conformance.
/// Use `DBusObjectManagerServerPrivateRef` only as an `unowned` reference to an existing `GDBusObjectManagerServerPrivate` instance.
///

public struct DBusObjectManagerServerPrivateRef: DBusObjectManagerServerPrivateProtocol {
    /// Untyped pointer to the underlying `GDBusObjectManagerServerPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusObjectManagerServerPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusObjectManagerServerPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusObjectManagerServerPrivateProtocol`
    init<T: DBusObjectManagerServerPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DBusObjectManagerServerPrivate` type acts as an owner of an underlying `GDBusObjectManagerServerPrivate` instance.
/// It provides the methods that can operate on this data type through `DBusObjectManagerServerPrivateProtocol` conformance.
/// Use `DBusObjectManagerServerPrivate` as a strong reference or owner of a `GDBusObjectManagerServerPrivate` instance.
///

open class DBusObjectManagerServerPrivate: DBusObjectManagerServerPrivateProtocol {
    /// Untyped pointer to the underlying `GDBusObjectManagerServerPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DBusObjectManagerServerPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GDBusObjectManagerServerPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DBusObjectManagerServerPrivateProtocol`
    /// `GDBusObjectManagerServerPrivate` does not allow reference counting.
    public convenience init<T: DBusObjectManagerServerPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GDBusObjectManagerServerPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GDBusObjectManagerServerPrivate`.
    deinit {
        // no reference counting for GDBusObjectManagerServerPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusObjectManagerServerPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusObjectManagerServerPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusObjectManagerServerPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusObjectManagerServerPrivate>(opaquePointer))
    }



}

// MARK: - no DBusObjectManagerServerPrivate properties

// MARK: - no signals


public extension DBusObjectManagerServerPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusObjectManagerServerPrivate` instance.
    var _ptr: UnsafeMutablePointer<GDBusObjectManagerServerPrivate> { return ptr.assumingMemoryBound(to: GDBusObjectManagerServerPrivate.self) }

}



// MARK: - DBusObjectProxyClass Record

/// The `DBusObjectProxyClassProtocol` protocol exposes the methods and properties of an underlying `GDBusObjectProxyClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusObjectProxyClass`.
/// Alternatively, use `DBusObjectProxyClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Class structure for `GDBusObjectProxy`.
public protocol DBusObjectProxyClassProtocol {
    /// Untyped pointer to the underlying `GDBusObjectProxyClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusObjectProxyClass` instance.
    var _ptr: UnsafeMutablePointer<GDBusObjectProxyClass> { get }
}

/// The `DBusObjectProxyClassRef` type acts as a lightweight Swift reference to an underlying `GDBusObjectProxyClass` instance.
/// It exposes methods that can operate on this data type through `DBusObjectProxyClassProtocol` conformance.
/// Use `DBusObjectProxyClassRef` only as an `unowned` reference to an existing `GDBusObjectProxyClass` instance.
///
/// Class structure for `GDBusObjectProxy`.
public struct DBusObjectProxyClassRef: DBusObjectProxyClassProtocol {
    /// Untyped pointer to the underlying `GDBusObjectProxyClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusObjectProxyClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusObjectProxyClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusObjectProxyClassProtocol`
    init<T: DBusObjectProxyClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DBusObjectProxyClass` type acts as an owner of an underlying `GDBusObjectProxyClass` instance.
/// It provides the methods that can operate on this data type through `DBusObjectProxyClassProtocol` conformance.
/// Use `DBusObjectProxyClass` as a strong reference or owner of a `GDBusObjectProxyClass` instance.
///
/// Class structure for `GDBusObjectProxy`.
open class DBusObjectProxyClass: DBusObjectProxyClassProtocol {
    /// Untyped pointer to the underlying `GDBusObjectProxyClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DBusObjectProxyClass` instance.
    public init(_ op: UnsafeMutablePointer<GDBusObjectProxyClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DBusObjectProxyClassProtocol`
    /// `GDBusObjectProxyClass` does not allow reference counting.
    public convenience init<T: DBusObjectProxyClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GDBusObjectProxyClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GDBusObjectProxyClass`.
    deinit {
        // no reference counting for GDBusObjectProxyClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusObjectProxyClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusObjectProxyClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusObjectProxyClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusObjectProxyClass>(opaquePointer))
    }



}

// MARK: - no DBusObjectProxyClass properties

// MARK: - no signals


public extension DBusObjectProxyClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusObjectProxyClass` instance.
    var _ptr: UnsafeMutablePointer<GDBusObjectProxyClass> { return ptr.assumingMemoryBound(to: GDBusObjectProxyClass.self) }

}



// MARK: - DBusObjectProxyPrivate Record

/// The `DBusObjectProxyPrivateProtocol` protocol exposes the methods and properties of an underlying `GDBusObjectProxyPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusObjectProxyPrivate`.
/// Alternatively, use `DBusObjectProxyPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol DBusObjectProxyPrivateProtocol {
    /// Untyped pointer to the underlying `GDBusObjectProxyPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusObjectProxyPrivate` instance.
    var _ptr: UnsafeMutablePointer<GDBusObjectProxyPrivate> { get }
}

/// The `DBusObjectProxyPrivateRef` type acts as a lightweight Swift reference to an underlying `GDBusObjectProxyPrivate` instance.
/// It exposes methods that can operate on this data type through `DBusObjectProxyPrivateProtocol` conformance.
/// Use `DBusObjectProxyPrivateRef` only as an `unowned` reference to an existing `GDBusObjectProxyPrivate` instance.
///

public struct DBusObjectProxyPrivateRef: DBusObjectProxyPrivateProtocol {
    /// Untyped pointer to the underlying `GDBusObjectProxyPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusObjectProxyPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusObjectProxyPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusObjectProxyPrivateProtocol`
    init<T: DBusObjectProxyPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DBusObjectProxyPrivate` type acts as an owner of an underlying `GDBusObjectProxyPrivate` instance.
/// It provides the methods that can operate on this data type through `DBusObjectProxyPrivateProtocol` conformance.
/// Use `DBusObjectProxyPrivate` as a strong reference or owner of a `GDBusObjectProxyPrivate` instance.
///

open class DBusObjectProxyPrivate: DBusObjectProxyPrivateProtocol {
    /// Untyped pointer to the underlying `GDBusObjectProxyPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DBusObjectProxyPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GDBusObjectProxyPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DBusObjectProxyPrivateProtocol`
    /// `GDBusObjectProxyPrivate` does not allow reference counting.
    public convenience init<T: DBusObjectProxyPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GDBusObjectProxyPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GDBusObjectProxyPrivate`.
    deinit {
        // no reference counting for GDBusObjectProxyPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusObjectProxyPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusObjectProxyPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusObjectProxyPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusObjectProxyPrivate>(opaquePointer))
    }



}

// MARK: - no DBusObjectProxyPrivate properties

// MARK: - no signals


public extension DBusObjectProxyPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusObjectProxyPrivate` instance.
    var _ptr: UnsafeMutablePointer<GDBusObjectProxyPrivate> { return ptr.assumingMemoryBound(to: GDBusObjectProxyPrivate.self) }

}



// MARK: - DBusObjectSkeletonClass Record

/// The `DBusObjectSkeletonClassProtocol` protocol exposes the methods and properties of an underlying `GDBusObjectSkeletonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusObjectSkeletonClass`.
/// Alternatively, use `DBusObjectSkeletonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Class structure for `GDBusObjectSkeleton`.
public protocol DBusObjectSkeletonClassProtocol {
    /// Untyped pointer to the underlying `GDBusObjectSkeletonClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusObjectSkeletonClass` instance.
    var _ptr: UnsafeMutablePointer<GDBusObjectSkeletonClass> { get }
}

/// The `DBusObjectSkeletonClassRef` type acts as a lightweight Swift reference to an underlying `GDBusObjectSkeletonClass` instance.
/// It exposes methods that can operate on this data type through `DBusObjectSkeletonClassProtocol` conformance.
/// Use `DBusObjectSkeletonClassRef` only as an `unowned` reference to an existing `GDBusObjectSkeletonClass` instance.
///
/// Class structure for `GDBusObjectSkeleton`.
public struct DBusObjectSkeletonClassRef: DBusObjectSkeletonClassProtocol {
    /// Untyped pointer to the underlying `GDBusObjectSkeletonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusObjectSkeletonClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusObjectSkeletonClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusObjectSkeletonClassProtocol`
    init<T: DBusObjectSkeletonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DBusObjectSkeletonClass` type acts as an owner of an underlying `GDBusObjectSkeletonClass` instance.
/// It provides the methods that can operate on this data type through `DBusObjectSkeletonClassProtocol` conformance.
/// Use `DBusObjectSkeletonClass` as a strong reference or owner of a `GDBusObjectSkeletonClass` instance.
///
/// Class structure for `GDBusObjectSkeleton`.
open class DBusObjectSkeletonClass: DBusObjectSkeletonClassProtocol {
    /// Untyped pointer to the underlying `GDBusObjectSkeletonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DBusObjectSkeletonClass` instance.
    public init(_ op: UnsafeMutablePointer<GDBusObjectSkeletonClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DBusObjectSkeletonClassProtocol`
    /// `GDBusObjectSkeletonClass` does not allow reference counting.
    public convenience init<T: DBusObjectSkeletonClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GDBusObjectSkeletonClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GDBusObjectSkeletonClass`.
    deinit {
        // no reference counting for GDBusObjectSkeletonClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusObjectSkeletonClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusObjectSkeletonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusObjectSkeletonClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusObjectSkeletonClass>(opaquePointer))
    }



}

// MARK: - no DBusObjectSkeletonClass properties

// MARK: - no signals


public extension DBusObjectSkeletonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusObjectSkeletonClass` instance.
    var _ptr: UnsafeMutablePointer<GDBusObjectSkeletonClass> { return ptr.assumingMemoryBound(to: GDBusObjectSkeletonClass.self) }

}



// MARK: - DBusObjectSkeletonPrivate Record

/// The `DBusObjectSkeletonPrivateProtocol` protocol exposes the methods and properties of an underlying `GDBusObjectSkeletonPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusObjectSkeletonPrivate`.
/// Alternatively, use `DBusObjectSkeletonPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol DBusObjectSkeletonPrivateProtocol {
    /// Untyped pointer to the underlying `GDBusObjectSkeletonPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusObjectSkeletonPrivate` instance.
    var _ptr: UnsafeMutablePointer<GDBusObjectSkeletonPrivate> { get }
}

/// The `DBusObjectSkeletonPrivateRef` type acts as a lightweight Swift reference to an underlying `GDBusObjectSkeletonPrivate` instance.
/// It exposes methods that can operate on this data type through `DBusObjectSkeletonPrivateProtocol` conformance.
/// Use `DBusObjectSkeletonPrivateRef` only as an `unowned` reference to an existing `GDBusObjectSkeletonPrivate` instance.
///

public struct DBusObjectSkeletonPrivateRef: DBusObjectSkeletonPrivateProtocol {
    /// Untyped pointer to the underlying `GDBusObjectSkeletonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusObjectSkeletonPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusObjectSkeletonPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusObjectSkeletonPrivateProtocol`
    init<T: DBusObjectSkeletonPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DBusObjectSkeletonPrivate` type acts as an owner of an underlying `GDBusObjectSkeletonPrivate` instance.
/// It provides the methods that can operate on this data type through `DBusObjectSkeletonPrivateProtocol` conformance.
/// Use `DBusObjectSkeletonPrivate` as a strong reference or owner of a `GDBusObjectSkeletonPrivate` instance.
///

open class DBusObjectSkeletonPrivate: DBusObjectSkeletonPrivateProtocol {
    /// Untyped pointer to the underlying `GDBusObjectSkeletonPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DBusObjectSkeletonPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GDBusObjectSkeletonPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DBusObjectSkeletonPrivateProtocol`
    /// `GDBusObjectSkeletonPrivate` does not allow reference counting.
    public convenience init<T: DBusObjectSkeletonPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GDBusObjectSkeletonPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GDBusObjectSkeletonPrivate`.
    deinit {
        // no reference counting for GDBusObjectSkeletonPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusObjectSkeletonPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusObjectSkeletonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusObjectSkeletonPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusObjectSkeletonPrivate>(opaquePointer))
    }



}

// MARK: - no DBusObjectSkeletonPrivate properties

// MARK: - no signals


public extension DBusObjectSkeletonPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusObjectSkeletonPrivate` instance.
    var _ptr: UnsafeMutablePointer<GDBusObjectSkeletonPrivate> { return ptr.assumingMemoryBound(to: GDBusObjectSkeletonPrivate.self) }

}



// MARK: - DBusPropertyInfo Record

/// The `DBusPropertyInfoProtocol` protocol exposes the methods and properties of an underlying `GDBusPropertyInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusPropertyInfo`.
/// Alternatively, use `DBusPropertyInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Information about a D-Bus property on a D-Bus interface.
public protocol DBusPropertyInfoProtocol {
    /// Untyped pointer to the underlying `GDBusPropertyInfo` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusPropertyInfo` instance.
    var dbus_property_info_ptr: UnsafeMutablePointer<GDBusPropertyInfo> { get }
}

/// The `DBusPropertyInfoRef` type acts as a lightweight Swift reference to an underlying `GDBusPropertyInfo` instance.
/// It exposes methods that can operate on this data type through `DBusPropertyInfoProtocol` conformance.
/// Use `DBusPropertyInfoRef` only as an `unowned` reference to an existing `GDBusPropertyInfo` instance.
///
/// Information about a D-Bus property on a D-Bus interface.
public struct DBusPropertyInfoRef: DBusPropertyInfoProtocol {
    /// Untyped pointer to the underlying `GDBusPropertyInfo` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_property_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusPropertyInfoRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusPropertyInfo>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusPropertyInfoProtocol`
    init<T: DBusPropertyInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusPropertyInfoProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusPropertyInfoProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusPropertyInfoProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusPropertyInfoProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusPropertyInfoProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DBusPropertyInfo` type acts as a reference-counted owner of an underlying `GDBusPropertyInfo` instance.
/// It provides the methods that can operate on this data type through `DBusPropertyInfoProtocol` conformance.
/// Use `DBusPropertyInfo` as a strong reference or owner of a `GDBusPropertyInfo` instance.
///
/// Information about a D-Bus property on a D-Bus interface.
open class DBusPropertyInfo: DBusPropertyInfoProtocol {
    /// Untyped pointer to the underlying `GDBusPropertyInfo` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_property_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DBusPropertyInfo` instance.
    public init(_ op: UnsafeMutablePointer<GDBusPropertyInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DBusPropertyInfoProtocol`
    /// Will retain `GDBusPropertyInfo`.
    public convenience init<T: DBusPropertyInfoProtocol>(_ other: T) {
        self.init(cast(other.dbus_property_info_ptr))
        g_dbus_property_info_ref(cast(dbus_property_info_ptr))
    }

    /// Releases the underlying `GDBusPropertyInfo` instance using `g_dbus_property_info_unref`.
    deinit {
        g_dbus_property_info_unref(cast(dbus_property_info_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusPropertyInfoProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusPropertyInfo.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusPropertyInfoProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusPropertyInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusPropertyInfoProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusPropertyInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusPropertyInfoProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusPropertyInfo>(opaquePointer))
    }



}

// MARK: - no DBusPropertyInfo properties

// MARK: - no signals


public extension DBusPropertyInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusPropertyInfo` instance.
    var dbus_property_info_ptr: UnsafeMutablePointer<GDBusPropertyInfo> { return ptr.assumingMemoryBound(to: GDBusPropertyInfo.self) }

    /// If `info` is statically allocated does nothing. Otherwise increases
    /// the reference count.
    func ref() -> UnsafeMutablePointer<GDBusPropertyInfo>! {
        let rv = g_dbus_property_info_ref(cast(dbus_property_info_ptr))
        return cast(rv)
    }

    /// If `info` is statically allocated, does nothing. Otherwise decreases
    /// the reference count of `info`. When its reference count drops to 0,
    /// the memory used is freed.
    func unref() {
        g_dbus_property_info_unref(cast(dbus_property_info_ptr))
    
    }
}



// MARK: - DBusProxyClass Record

/// The `DBusProxyClassProtocol` protocol exposes the methods and properties of an underlying `GDBusProxyClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusProxyClass`.
/// Alternatively, use `DBusProxyClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Class structure for `GDBusProxy`.
public protocol DBusProxyClassProtocol {
    /// Untyped pointer to the underlying `GDBusProxyClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusProxyClass` instance.
    var _ptr: UnsafeMutablePointer<GDBusProxyClass> { get }
}

/// The `DBusProxyClassRef` type acts as a lightweight Swift reference to an underlying `GDBusProxyClass` instance.
/// It exposes methods that can operate on this data type through `DBusProxyClassProtocol` conformance.
/// Use `DBusProxyClassRef` only as an `unowned` reference to an existing `GDBusProxyClass` instance.
///
/// Class structure for `GDBusProxy`.
public struct DBusProxyClassRef: DBusProxyClassProtocol {
    /// Untyped pointer to the underlying `GDBusProxyClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusProxyClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusProxyClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusProxyClassProtocol`
    init<T: DBusProxyClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DBusProxyClass` type acts as an owner of an underlying `GDBusProxyClass` instance.
/// It provides the methods that can operate on this data type through `DBusProxyClassProtocol` conformance.
/// Use `DBusProxyClass` as a strong reference or owner of a `GDBusProxyClass` instance.
///
/// Class structure for `GDBusProxy`.
open class DBusProxyClass: DBusProxyClassProtocol {
    /// Untyped pointer to the underlying `GDBusProxyClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DBusProxyClass` instance.
    public init(_ op: UnsafeMutablePointer<GDBusProxyClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DBusProxyClassProtocol`
    /// `GDBusProxyClass` does not allow reference counting.
    public convenience init<T: DBusProxyClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GDBusProxyClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GDBusProxyClass`.
    deinit {
        // no reference counting for GDBusProxyClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusProxyClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusProxyClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusProxyClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusProxyClass>(opaquePointer))
    }



}

// MARK: - no DBusProxyClass properties

// MARK: - no signals


public extension DBusProxyClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusProxyClass` instance.
    var _ptr: UnsafeMutablePointer<GDBusProxyClass> { return ptr.assumingMemoryBound(to: GDBusProxyClass.self) }

}



// MARK: - DBusProxyPrivate Record

/// The `DBusProxyPrivateProtocol` protocol exposes the methods and properties of an underlying `GDBusProxyPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusProxyPrivate`.
/// Alternatively, use `DBusProxyPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol DBusProxyPrivateProtocol {
    /// Untyped pointer to the underlying `GDBusProxyPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusProxyPrivate` instance.
    var _ptr: UnsafeMutablePointer<GDBusProxyPrivate> { get }
}

/// The `DBusProxyPrivateRef` type acts as a lightweight Swift reference to an underlying `GDBusProxyPrivate` instance.
/// It exposes methods that can operate on this data type through `DBusProxyPrivateProtocol` conformance.
/// Use `DBusProxyPrivateRef` only as an `unowned` reference to an existing `GDBusProxyPrivate` instance.
///

public struct DBusProxyPrivateRef: DBusProxyPrivateProtocol {
    /// Untyped pointer to the underlying `GDBusProxyPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusProxyPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusProxyPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusProxyPrivateProtocol`
    init<T: DBusProxyPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DBusProxyPrivate` type acts as an owner of an underlying `GDBusProxyPrivate` instance.
/// It provides the methods that can operate on this data type through `DBusProxyPrivateProtocol` conformance.
/// Use `DBusProxyPrivate` as a strong reference or owner of a `GDBusProxyPrivate` instance.
///

open class DBusProxyPrivate: DBusProxyPrivateProtocol {
    /// Untyped pointer to the underlying `GDBusProxyPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DBusProxyPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GDBusProxyPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DBusProxyPrivateProtocol`
    /// `GDBusProxyPrivate` does not allow reference counting.
    public convenience init<T: DBusProxyPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GDBusProxyPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GDBusProxyPrivate`.
    deinit {
        // no reference counting for GDBusProxyPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusProxyPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusProxyPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusProxyPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusProxyPrivate>(opaquePointer))
    }



}

// MARK: - no DBusProxyPrivate properties

// MARK: - no signals


public extension DBusProxyPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusProxyPrivate` instance.
    var _ptr: UnsafeMutablePointer<GDBusProxyPrivate> { return ptr.assumingMemoryBound(to: GDBusProxyPrivate.self) }

}



// MARK: - DBusSignalInfo Record

/// The `DBusSignalInfoProtocol` protocol exposes the methods and properties of an underlying `GDBusSignalInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusSignalInfo`.
/// Alternatively, use `DBusSignalInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Information about a signal on a D-Bus interface.
public protocol DBusSignalInfoProtocol {
    /// Untyped pointer to the underlying `GDBusSignalInfo` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusSignalInfo` instance.
    var dbus_signal_info_ptr: UnsafeMutablePointer<GDBusSignalInfo> { get }
}

/// The `DBusSignalInfoRef` type acts as a lightweight Swift reference to an underlying `GDBusSignalInfo` instance.
/// It exposes methods that can operate on this data type through `DBusSignalInfoProtocol` conformance.
/// Use `DBusSignalInfoRef` only as an `unowned` reference to an existing `GDBusSignalInfo` instance.
///
/// Information about a signal on a D-Bus interface.
public struct DBusSignalInfoRef: DBusSignalInfoProtocol {
    /// Untyped pointer to the underlying `GDBusSignalInfo` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_signal_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusSignalInfoRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusSignalInfo>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusSignalInfoProtocol`
    init<T: DBusSignalInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSignalInfoProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSignalInfoProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSignalInfoProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSignalInfoProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSignalInfoProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DBusSignalInfo` type acts as a reference-counted owner of an underlying `GDBusSignalInfo` instance.
/// It provides the methods that can operate on this data type through `DBusSignalInfoProtocol` conformance.
/// Use `DBusSignalInfo` as a strong reference or owner of a `GDBusSignalInfo` instance.
///
/// Information about a signal on a D-Bus interface.
open class DBusSignalInfo: DBusSignalInfoProtocol {
    /// Untyped pointer to the underlying `GDBusSignalInfo` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_signal_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DBusSignalInfo` instance.
    public init(_ op: UnsafeMutablePointer<GDBusSignalInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DBusSignalInfoProtocol`
    /// Will retain `GDBusSignalInfo`.
    public convenience init<T: DBusSignalInfoProtocol>(_ other: T) {
        self.init(cast(other.dbus_signal_info_ptr))
        g_dbus_signal_info_ref(cast(dbus_signal_info_ptr))
    }

    /// Releases the underlying `GDBusSignalInfo` instance using `g_dbus_signal_info_unref`.
    deinit {
        g_dbus_signal_info_unref(cast(dbus_signal_info_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSignalInfoProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusSignalInfo.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSignalInfoProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusSignalInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSignalInfoProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusSignalInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSignalInfoProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusSignalInfo>(opaquePointer))
    }



}

// MARK: - no DBusSignalInfo properties

// MARK: - no signals


public extension DBusSignalInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusSignalInfo` instance.
    var dbus_signal_info_ptr: UnsafeMutablePointer<GDBusSignalInfo> { return ptr.assumingMemoryBound(to: GDBusSignalInfo.self) }

    /// If `info` is statically allocated does nothing. Otherwise increases
    /// the reference count.
    func ref() -> UnsafeMutablePointer<GDBusSignalInfo>! {
        let rv = g_dbus_signal_info_ref(cast(dbus_signal_info_ptr))
        return cast(rv)
    }

    /// If `info` is statically allocated, does nothing. Otherwise decreases
    /// the reference count of `info`. When its reference count drops to 0,
    /// the memory used is freed.
    func unref() {
        g_dbus_signal_info_unref(cast(dbus_signal_info_ptr))
    
    }
}



// MARK: - DBusSubtreeVTable Record

/// The `DBusSubtreeVTableProtocol` protocol exposes the methods and properties of an underlying `GDBusSubtreeVTable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusSubtreeVTable`.
/// Alternatively, use `DBusSubtreeVTableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Virtual table for handling subtrees registered with g_dbus_connection_register_subtree().
public protocol DBusSubtreeVTableProtocol {
    /// Untyped pointer to the underlying `GDBusSubtreeVTable` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDBusSubtreeVTable` instance.
    var _ptr: UnsafeMutablePointer<GDBusSubtreeVTable> { get }
}

/// The `DBusSubtreeVTableRef` type acts as a lightweight Swift reference to an underlying `GDBusSubtreeVTable` instance.
/// It exposes methods that can operate on this data type through `DBusSubtreeVTableProtocol` conformance.
/// Use `DBusSubtreeVTableRef` only as an `unowned` reference to an existing `GDBusSubtreeVTable` instance.
///
/// Virtual table for handling subtrees registered with g_dbus_connection_register_subtree().
public struct DBusSubtreeVTableRef: DBusSubtreeVTableProtocol {
    /// Untyped pointer to the underlying `GDBusSubtreeVTable` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DBusSubtreeVTableRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDBusSubtreeVTable>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DBusSubtreeVTableProtocol`
    init<T: DBusSubtreeVTableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSubtreeVTableProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSubtreeVTableProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSubtreeVTableProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSubtreeVTableProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSubtreeVTableProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DBusSubtreeVTable` type acts as an owner of an underlying `GDBusSubtreeVTable` instance.
/// It provides the methods that can operate on this data type through `DBusSubtreeVTableProtocol` conformance.
/// Use `DBusSubtreeVTable` as a strong reference or owner of a `GDBusSubtreeVTable` instance.
///
/// Virtual table for handling subtrees registered with g_dbus_connection_register_subtree().
open class DBusSubtreeVTable: DBusSubtreeVTableProtocol {
    /// Untyped pointer to the underlying `GDBusSubtreeVTable` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DBusSubtreeVTable` instance.
    public init(_ op: UnsafeMutablePointer<GDBusSubtreeVTable>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DBusSubtreeVTableProtocol`
    /// `GDBusSubtreeVTable` does not allow reference counting.
    public convenience init<T: DBusSubtreeVTableProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GDBusSubtreeVTable, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GDBusSubtreeVTable`.
    deinit {
        // no reference counting for GDBusSubtreeVTable, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSubtreeVTableProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDBusSubtreeVTable.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSubtreeVTableProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDBusSubtreeVTable.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSubtreeVTableProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDBusSubtreeVTable.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSubtreeVTableProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDBusSubtreeVTable>(opaquePointer))
    }



}

// MARK: - no DBusSubtreeVTable properties

// MARK: - no signals


public extension DBusSubtreeVTableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusSubtreeVTable` instance.
    var _ptr: UnsafeMutablePointer<GDBusSubtreeVTable> { return ptr.assumingMemoryBound(to: GDBusSubtreeVTable.self) }

}



// MARK: - DataInputStreamClass Record

/// The `DataInputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GDataInputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DataInputStreamClass`.
/// Alternatively, use `DataInputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol DataInputStreamClassProtocol {
    /// Untyped pointer to the underlying `GDataInputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDataInputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GDataInputStreamClass> { get }
}

/// The `DataInputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GDataInputStreamClass` instance.
/// It exposes methods that can operate on this data type through `DataInputStreamClassProtocol` conformance.
/// Use `DataInputStreamClassRef` only as an `unowned` reference to an existing `GDataInputStreamClass` instance.
///

public struct DataInputStreamClassRef: DataInputStreamClassProtocol {
    /// Untyped pointer to the underlying `GDataInputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DataInputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDataInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DataInputStreamClassProtocol`
    init<T: DataInputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DataInputStreamClass` type acts as an owner of an underlying `GDataInputStreamClass` instance.
/// It provides the methods that can operate on this data type through `DataInputStreamClassProtocol` conformance.
/// Use `DataInputStreamClass` as a strong reference or owner of a `GDataInputStreamClass` instance.
///

open class DataInputStreamClass: DataInputStreamClassProtocol {
    /// Untyped pointer to the underlying `GDataInputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DataInputStreamClass` instance.
    public init(_ op: UnsafeMutablePointer<GDataInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DataInputStreamClassProtocol`
    /// `GDataInputStreamClass` does not allow reference counting.
    public convenience init<T: DataInputStreamClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GDataInputStreamClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GDataInputStreamClass`.
    deinit {
        // no reference counting for GDataInputStreamClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDataInputStreamClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDataInputStreamClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDataInputStreamClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDataInputStreamClass>(opaquePointer))
    }



}

// MARK: - no DataInputStreamClass properties

// MARK: - no signals


public extension DataInputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDataInputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GDataInputStreamClass> { return ptr.assumingMemoryBound(to: GDataInputStreamClass.self) }

}



// MARK: - DataInputStreamPrivate Record

/// The `DataInputStreamPrivateProtocol` protocol exposes the methods and properties of an underlying `GDataInputStreamPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DataInputStreamPrivate`.
/// Alternatively, use `DataInputStreamPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol DataInputStreamPrivateProtocol {
    /// Untyped pointer to the underlying `GDataInputStreamPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDataInputStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GDataInputStreamPrivate> { get }
}

/// The `DataInputStreamPrivateRef` type acts as a lightweight Swift reference to an underlying `GDataInputStreamPrivate` instance.
/// It exposes methods that can operate on this data type through `DataInputStreamPrivateProtocol` conformance.
/// Use `DataInputStreamPrivateRef` only as an `unowned` reference to an existing `GDataInputStreamPrivate` instance.
///

public struct DataInputStreamPrivateRef: DataInputStreamPrivateProtocol {
    /// Untyped pointer to the underlying `GDataInputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DataInputStreamPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDataInputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DataInputStreamPrivateProtocol`
    init<T: DataInputStreamPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DataInputStreamPrivate` type acts as an owner of an underlying `GDataInputStreamPrivate` instance.
/// It provides the methods that can operate on this data type through `DataInputStreamPrivateProtocol` conformance.
/// Use `DataInputStreamPrivate` as a strong reference or owner of a `GDataInputStreamPrivate` instance.
///

open class DataInputStreamPrivate: DataInputStreamPrivateProtocol {
    /// Untyped pointer to the underlying `GDataInputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DataInputStreamPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GDataInputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DataInputStreamPrivateProtocol`
    /// `GDataInputStreamPrivate` does not allow reference counting.
    public convenience init<T: DataInputStreamPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GDataInputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GDataInputStreamPrivate`.
    deinit {
        // no reference counting for GDataInputStreamPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDataInputStreamPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDataInputStreamPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDataInputStreamPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDataInputStreamPrivate>(opaquePointer))
    }



}

// MARK: - no DataInputStreamPrivate properties

// MARK: - no signals


public extension DataInputStreamPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDataInputStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GDataInputStreamPrivate> { return ptr.assumingMemoryBound(to: GDataInputStreamPrivate.self) }

}



// MARK: - DataOutputStreamClass Record

/// The `DataOutputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GDataOutputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DataOutputStreamClass`.
/// Alternatively, use `DataOutputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol DataOutputStreamClassProtocol {
    /// Untyped pointer to the underlying `GDataOutputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDataOutputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GDataOutputStreamClass> { get }
}

/// The `DataOutputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GDataOutputStreamClass` instance.
/// It exposes methods that can operate on this data type through `DataOutputStreamClassProtocol` conformance.
/// Use `DataOutputStreamClassRef` only as an `unowned` reference to an existing `GDataOutputStreamClass` instance.
///

public struct DataOutputStreamClassRef: DataOutputStreamClassProtocol {
    /// Untyped pointer to the underlying `GDataOutputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DataOutputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDataOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DataOutputStreamClassProtocol`
    init<T: DataOutputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DataOutputStreamClass` type acts as an owner of an underlying `GDataOutputStreamClass` instance.
/// It provides the methods that can operate on this data type through `DataOutputStreamClassProtocol` conformance.
/// Use `DataOutputStreamClass` as a strong reference or owner of a `GDataOutputStreamClass` instance.
///

open class DataOutputStreamClass: DataOutputStreamClassProtocol {
    /// Untyped pointer to the underlying `GDataOutputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DataOutputStreamClass` instance.
    public init(_ op: UnsafeMutablePointer<GDataOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DataOutputStreamClassProtocol`
    /// `GDataOutputStreamClass` does not allow reference counting.
    public convenience init<T: DataOutputStreamClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GDataOutputStreamClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GDataOutputStreamClass`.
    deinit {
        // no reference counting for GDataOutputStreamClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDataOutputStreamClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDataOutputStreamClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDataOutputStreamClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDataOutputStreamClass>(opaquePointer))
    }



}

// MARK: - no DataOutputStreamClass properties

// MARK: - no signals


public extension DataOutputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDataOutputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GDataOutputStreamClass> { return ptr.assumingMemoryBound(to: GDataOutputStreamClass.self) }

}



// MARK: - DataOutputStreamPrivate Record

/// The `DataOutputStreamPrivateProtocol` protocol exposes the methods and properties of an underlying `GDataOutputStreamPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DataOutputStreamPrivate`.
/// Alternatively, use `DataOutputStreamPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol DataOutputStreamPrivateProtocol {
    /// Untyped pointer to the underlying `GDataOutputStreamPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDataOutputStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GDataOutputStreamPrivate> { get }
}

/// The `DataOutputStreamPrivateRef` type acts as a lightweight Swift reference to an underlying `GDataOutputStreamPrivate` instance.
/// It exposes methods that can operate on this data type through `DataOutputStreamPrivateProtocol` conformance.
/// Use `DataOutputStreamPrivateRef` only as an `unowned` reference to an existing `GDataOutputStreamPrivate` instance.
///

public struct DataOutputStreamPrivateRef: DataOutputStreamPrivateProtocol {
    /// Untyped pointer to the underlying `GDataOutputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DataOutputStreamPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDataOutputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DataOutputStreamPrivateProtocol`
    init<T: DataOutputStreamPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DataOutputStreamPrivate` type acts as an owner of an underlying `GDataOutputStreamPrivate` instance.
/// It provides the methods that can operate on this data type through `DataOutputStreamPrivateProtocol` conformance.
/// Use `DataOutputStreamPrivate` as a strong reference or owner of a `GDataOutputStreamPrivate` instance.
///

open class DataOutputStreamPrivate: DataOutputStreamPrivateProtocol {
    /// Untyped pointer to the underlying `GDataOutputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DataOutputStreamPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GDataOutputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DataOutputStreamPrivateProtocol`
    /// `GDataOutputStreamPrivate` does not allow reference counting.
    public convenience init<T: DataOutputStreamPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GDataOutputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GDataOutputStreamPrivate`.
    deinit {
        // no reference counting for GDataOutputStreamPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDataOutputStreamPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDataOutputStreamPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDataOutputStreamPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDataOutputStreamPrivate>(opaquePointer))
    }



}

// MARK: - no DataOutputStreamPrivate properties

// MARK: - no signals


public extension DataOutputStreamPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDataOutputStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GDataOutputStreamPrivate> { return ptr.assumingMemoryBound(to: GDataOutputStreamPrivate.self) }

}



// MARK: - DatagramBasedInterface Record

/// The `DatagramBasedInterfaceProtocol` protocol exposes the methods and properties of an underlying `GDatagramBasedInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DatagramBasedInterface`.
/// Alternatively, use `DatagramBasedInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Provides an interface for socket-like objects which have datagram semantics,
/// following the Berkeley sockets API. The interface methods are thin wrappers
/// around the corresponding virtual methods, and no pre-processing of inputs is
/// implemented — so implementations of this API must handle all functionality
/// documented in the interface methods.
public protocol DatagramBasedInterfaceProtocol {
    /// Untyped pointer to the underlying `GDatagramBasedInterface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDatagramBasedInterface` instance.
    var _ptr: UnsafeMutablePointer<GDatagramBasedInterface> { get }
}

/// The `DatagramBasedInterfaceRef` type acts as a lightweight Swift reference to an underlying `GDatagramBasedInterface` instance.
/// It exposes methods that can operate on this data type through `DatagramBasedInterfaceProtocol` conformance.
/// Use `DatagramBasedInterfaceRef` only as an `unowned` reference to an existing `GDatagramBasedInterface` instance.
///
/// Provides an interface for socket-like objects which have datagram semantics,
/// following the Berkeley sockets API. The interface methods are thin wrappers
/// around the corresponding virtual methods, and no pre-processing of inputs is
/// implemented — so implementations of this API must handle all functionality
/// documented in the interface methods.
public struct DatagramBasedInterfaceRef: DatagramBasedInterfaceProtocol {
    /// Untyped pointer to the underlying `GDatagramBasedInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DatagramBasedInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDatagramBasedInterface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DatagramBasedInterfaceProtocol`
    init<T: DatagramBasedInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedInterfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedInterfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedInterfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedInterfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedInterfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DatagramBasedInterface` type acts as an owner of an underlying `GDatagramBasedInterface` instance.
/// It provides the methods that can operate on this data type through `DatagramBasedInterfaceProtocol` conformance.
/// Use `DatagramBasedInterface` as a strong reference or owner of a `GDatagramBasedInterface` instance.
///
/// Provides an interface for socket-like objects which have datagram semantics,
/// following the Berkeley sockets API. The interface methods are thin wrappers
/// around the corresponding virtual methods, and no pre-processing of inputs is
/// implemented — so implementations of this API must handle all functionality
/// documented in the interface methods.
open class DatagramBasedInterface: DatagramBasedInterfaceProtocol {
    /// Untyped pointer to the underlying `GDatagramBasedInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DatagramBasedInterface` instance.
    public init(_ op: UnsafeMutablePointer<GDatagramBasedInterface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DatagramBasedInterfaceProtocol`
    /// `GDatagramBasedInterface` does not allow reference counting.
    public convenience init<T: DatagramBasedInterfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GDatagramBasedInterface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GDatagramBasedInterface`.
    deinit {
        // no reference counting for GDatagramBasedInterface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedInterfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDatagramBasedInterface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedInterfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDatagramBasedInterface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedInterfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDatagramBasedInterface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedInterfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDatagramBasedInterface>(opaquePointer))
    }



}

// MARK: - no DatagramBasedInterface properties

// MARK: - no signals


public extension DatagramBasedInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDatagramBasedInterface` instance.
    var _ptr: UnsafeMutablePointer<GDatagramBasedInterface> { return ptr.assumingMemoryBound(to: GDatagramBasedInterface.self) }

}



// MARK: - DriveIface Record

/// The `DriveIfaceProtocol` protocol exposes the methods and properties of an underlying `GDriveIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DriveIface`.
/// Alternatively, use `DriveIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Interface for creating `GDrive` implementations.
public protocol DriveIfaceProtocol {
    /// Untyped pointer to the underlying `GDriveIface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDriveIface` instance.
    var _ptr: UnsafeMutablePointer<GDriveIface> { get }
}

/// The `DriveIfaceRef` type acts as a lightweight Swift reference to an underlying `GDriveIface` instance.
/// It exposes methods that can operate on this data type through `DriveIfaceProtocol` conformance.
/// Use `DriveIfaceRef` only as an `unowned` reference to an existing `GDriveIface` instance.
///
/// Interface for creating `GDrive` implementations.
public struct DriveIfaceRef: DriveIfaceProtocol {
    /// Untyped pointer to the underlying `GDriveIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DriveIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDriveIface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DriveIfaceProtocol`
    init<T: DriveIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveIfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveIfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveIfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveIfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveIfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DriveIface` type acts as an owner of an underlying `GDriveIface` instance.
/// It provides the methods that can operate on this data type through `DriveIfaceProtocol` conformance.
/// Use `DriveIface` as a strong reference or owner of a `GDriveIface` instance.
///
/// Interface for creating `GDrive` implementations.
open class DriveIface: DriveIfaceProtocol {
    /// Untyped pointer to the underlying `GDriveIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DriveIface` instance.
    public init(_ op: UnsafeMutablePointer<GDriveIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DriveIfaceProtocol`
    /// `GDriveIface` does not allow reference counting.
    public convenience init<T: DriveIfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GDriveIface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GDriveIface`.
    deinit {
        // no reference counting for GDriveIface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveIfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDriveIface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveIfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDriveIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveIfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDriveIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveIfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDriveIface>(opaquePointer))
    }



}

// MARK: - no DriveIface properties

// MARK: - no signals


public extension DriveIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDriveIface` instance.
    var _ptr: UnsafeMutablePointer<GDriveIface> { return ptr.assumingMemoryBound(to: GDriveIface.self) }

}



// MARK: - DtlsClientConnectionInterface Record

/// The `DtlsClientConnectionInterfaceProtocol` protocol exposes the methods and properties of an underlying `GDtlsClientConnectionInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DtlsClientConnectionInterface`.
/// Alternatively, use `DtlsClientConnectionInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// vtable for a `GDtlsClientConnection` implementation.
public protocol DtlsClientConnectionInterfaceProtocol {
    /// Untyped pointer to the underlying `GDtlsClientConnectionInterface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDtlsClientConnectionInterface` instance.
    var _ptr: UnsafeMutablePointer<GDtlsClientConnectionInterface> { get }
}

/// The `DtlsClientConnectionInterfaceRef` type acts as a lightweight Swift reference to an underlying `GDtlsClientConnectionInterface` instance.
/// It exposes methods that can operate on this data type through `DtlsClientConnectionInterfaceProtocol` conformance.
/// Use `DtlsClientConnectionInterfaceRef` only as an `unowned` reference to an existing `GDtlsClientConnectionInterface` instance.
///
/// vtable for a `GDtlsClientConnection` implementation.
public struct DtlsClientConnectionInterfaceRef: DtlsClientConnectionInterfaceProtocol {
    /// Untyped pointer to the underlying `GDtlsClientConnectionInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DtlsClientConnectionInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDtlsClientConnectionInterface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DtlsClientConnectionInterfaceProtocol`
    init<T: DtlsClientConnectionInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionInterfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionInterfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionInterfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionInterfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionInterfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DtlsClientConnectionInterface` type acts as an owner of an underlying `GDtlsClientConnectionInterface` instance.
/// It provides the methods that can operate on this data type through `DtlsClientConnectionInterfaceProtocol` conformance.
/// Use `DtlsClientConnectionInterface` as a strong reference or owner of a `GDtlsClientConnectionInterface` instance.
///
/// vtable for a `GDtlsClientConnection` implementation.
open class DtlsClientConnectionInterface: DtlsClientConnectionInterfaceProtocol {
    /// Untyped pointer to the underlying `GDtlsClientConnectionInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DtlsClientConnectionInterface` instance.
    public init(_ op: UnsafeMutablePointer<GDtlsClientConnectionInterface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DtlsClientConnectionInterfaceProtocol`
    /// `GDtlsClientConnectionInterface` does not allow reference counting.
    public convenience init<T: DtlsClientConnectionInterfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GDtlsClientConnectionInterface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GDtlsClientConnectionInterface`.
    deinit {
        // no reference counting for GDtlsClientConnectionInterface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionInterfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDtlsClientConnectionInterface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionInterfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDtlsClientConnectionInterface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionInterfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDtlsClientConnectionInterface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionInterfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDtlsClientConnectionInterface>(opaquePointer))
    }



}

// MARK: - no DtlsClientConnectionInterface properties

// MARK: - no signals


public extension DtlsClientConnectionInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDtlsClientConnectionInterface` instance.
    var _ptr: UnsafeMutablePointer<GDtlsClientConnectionInterface> { return ptr.assumingMemoryBound(to: GDtlsClientConnectionInterface.self) }

}



// MARK: - DtlsConnectionInterface Record

/// The `DtlsConnectionInterfaceProtocol` protocol exposes the methods and properties of an underlying `GDtlsConnectionInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DtlsConnectionInterface`.
/// Alternatively, use `DtlsConnectionInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Virtual method table for a `GDtlsConnection` implementation.
public protocol DtlsConnectionInterfaceProtocol {
    /// Untyped pointer to the underlying `GDtlsConnectionInterface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDtlsConnectionInterface` instance.
    var _ptr: UnsafeMutablePointer<GDtlsConnectionInterface> { get }
}

/// The `DtlsConnectionInterfaceRef` type acts as a lightweight Swift reference to an underlying `GDtlsConnectionInterface` instance.
/// It exposes methods that can operate on this data type through `DtlsConnectionInterfaceProtocol` conformance.
/// Use `DtlsConnectionInterfaceRef` only as an `unowned` reference to an existing `GDtlsConnectionInterface` instance.
///
/// Virtual method table for a `GDtlsConnection` implementation.
public struct DtlsConnectionInterfaceRef: DtlsConnectionInterfaceProtocol {
    /// Untyped pointer to the underlying `GDtlsConnectionInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DtlsConnectionInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDtlsConnectionInterface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DtlsConnectionInterfaceProtocol`
    init<T: DtlsConnectionInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionInterfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionInterfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionInterfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionInterfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionInterfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DtlsConnectionInterface` type acts as an owner of an underlying `GDtlsConnectionInterface` instance.
/// It provides the methods that can operate on this data type through `DtlsConnectionInterfaceProtocol` conformance.
/// Use `DtlsConnectionInterface` as a strong reference or owner of a `GDtlsConnectionInterface` instance.
///
/// Virtual method table for a `GDtlsConnection` implementation.
open class DtlsConnectionInterface: DtlsConnectionInterfaceProtocol {
    /// Untyped pointer to the underlying `GDtlsConnectionInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DtlsConnectionInterface` instance.
    public init(_ op: UnsafeMutablePointer<GDtlsConnectionInterface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DtlsConnectionInterfaceProtocol`
    /// `GDtlsConnectionInterface` does not allow reference counting.
    public convenience init<T: DtlsConnectionInterfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GDtlsConnectionInterface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GDtlsConnectionInterface`.
    deinit {
        // no reference counting for GDtlsConnectionInterface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionInterfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDtlsConnectionInterface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionInterfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDtlsConnectionInterface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionInterfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDtlsConnectionInterface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionInterfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDtlsConnectionInterface>(opaquePointer))
    }



}

// MARK: - no DtlsConnectionInterface properties

// MARK: - no signals


public extension DtlsConnectionInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDtlsConnectionInterface` instance.
    var _ptr: UnsafeMutablePointer<GDtlsConnectionInterface> { return ptr.assumingMemoryBound(to: GDtlsConnectionInterface.self) }

}



// MARK: - DtlsServerConnectionInterface Record

/// The `DtlsServerConnectionInterfaceProtocol` protocol exposes the methods and properties of an underlying `GDtlsServerConnectionInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DtlsServerConnectionInterface`.
/// Alternatively, use `DtlsServerConnectionInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// vtable for a `GDtlsServerConnection` implementation.
public protocol DtlsServerConnectionInterfaceProtocol {
    /// Untyped pointer to the underlying `GDtlsServerConnectionInterface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GDtlsServerConnectionInterface` instance.
    var _ptr: UnsafeMutablePointer<GDtlsServerConnectionInterface> { get }
}

/// The `DtlsServerConnectionInterfaceRef` type acts as a lightweight Swift reference to an underlying `GDtlsServerConnectionInterface` instance.
/// It exposes methods that can operate on this data type through `DtlsServerConnectionInterfaceProtocol` conformance.
/// Use `DtlsServerConnectionInterfaceRef` only as an `unowned` reference to an existing `GDtlsServerConnectionInterface` instance.
///
/// vtable for a `GDtlsServerConnection` implementation.
public struct DtlsServerConnectionInterfaceRef: DtlsServerConnectionInterfaceProtocol {
    /// Untyped pointer to the underlying `GDtlsServerConnectionInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension DtlsServerConnectionInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GDtlsServerConnectionInterface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `DtlsServerConnectionInterfaceProtocol`
    init<T: DtlsServerConnectionInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionInterfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionInterfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionInterfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionInterfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionInterfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DtlsServerConnectionInterface` type acts as an owner of an underlying `GDtlsServerConnectionInterface` instance.
/// It provides the methods that can operate on this data type through `DtlsServerConnectionInterfaceProtocol` conformance.
/// Use `DtlsServerConnectionInterface` as a strong reference or owner of a `GDtlsServerConnectionInterface` instance.
///
/// vtable for a `GDtlsServerConnection` implementation.
open class DtlsServerConnectionInterface: DtlsServerConnectionInterfaceProtocol {
    /// Untyped pointer to the underlying `GDtlsServerConnectionInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `DtlsServerConnectionInterface` instance.
    public init(_ op: UnsafeMutablePointer<GDtlsServerConnectionInterface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `DtlsServerConnectionInterfaceProtocol`
    /// `GDtlsServerConnectionInterface` does not allow reference counting.
    public convenience init<T: DtlsServerConnectionInterfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GDtlsServerConnectionInterface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GDtlsServerConnectionInterface`.
    deinit {
        // no reference counting for GDtlsServerConnectionInterface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionInterfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GDtlsServerConnectionInterface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionInterfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GDtlsServerConnectionInterface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionInterfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GDtlsServerConnectionInterface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionInterfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GDtlsServerConnectionInterface>(opaquePointer))
    }



}

// MARK: - no DtlsServerConnectionInterface properties

// MARK: - no signals


public extension DtlsServerConnectionInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDtlsServerConnectionInterface` instance.
    var _ptr: UnsafeMutablePointer<GDtlsServerConnectionInterface> { return ptr.assumingMemoryBound(to: GDtlsServerConnectionInterface.self) }

}



// MARK: - EmblemClass Record

/// The `EmblemClassProtocol` protocol exposes the methods and properties of an underlying `GEmblemClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EmblemClass`.
/// Alternatively, use `EmblemClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EmblemClassProtocol {
    /// Untyped pointer to the underlying `GEmblemClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GEmblemClass` instance.
    var _ptr: UnsafeMutablePointer<GEmblemClass> { get }
}

/// The `EmblemClassRef` type acts as a lightweight Swift reference to an underlying `GEmblemClass` instance.
/// It exposes methods that can operate on this data type through `EmblemClassProtocol` conformance.
/// Use `EmblemClassRef` only as an `unowned` reference to an existing `GEmblemClass` instance.
///

public struct EmblemClassRef: EmblemClassProtocol {
    /// Untyped pointer to the underlying `GEmblemClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EmblemClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GEmblemClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EmblemClassProtocol`
    init<T: EmblemClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EmblemClass` type acts as an owner of an underlying `GEmblemClass` instance.
/// It provides the methods that can operate on this data type through `EmblemClassProtocol` conformance.
/// Use `EmblemClass` as a strong reference or owner of a `GEmblemClass` instance.
///

open class EmblemClass: EmblemClassProtocol {
    /// Untyped pointer to the underlying `GEmblemClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `EmblemClass` instance.
    public init(_ op: UnsafeMutablePointer<GEmblemClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `EmblemClassProtocol`
    /// `GEmblemClass` does not allow reference counting.
    public convenience init<T: EmblemClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GEmblemClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GEmblemClass`.
    deinit {
        // no reference counting for GEmblemClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GEmblemClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GEmblemClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GEmblemClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GEmblemClass>(opaquePointer))
    }



}

// MARK: - no EmblemClass properties

// MARK: - no signals


public extension EmblemClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GEmblemClass` instance.
    var _ptr: UnsafeMutablePointer<GEmblemClass> { return ptr.assumingMemoryBound(to: GEmblemClass.self) }

}



