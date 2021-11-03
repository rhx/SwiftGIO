import CGLib
import GLib
import GLibObject

// MARK: - DBusArgInfo Record

/// Information about an argument for a method or a signal.
///
/// The `DBusArgInfoProtocol` protocol exposes the methods and properties of an underlying `GDBusArgInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusArgInfo`.
/// Alternatively, use `DBusArgInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DBusArgInfoProtocol {
        /// Untyped pointer to the underlying `GDBusArgInfo` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusArgInfo` instance.
    var dbus_arg_info_ptr: UnsafeMutablePointer<GDBusArgInfo>! { get }

    /// Required Initialiser for types conforming to `DBusArgInfoProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Information about an argument for a method or a signal.
///
/// The `DBusArgInfoRef` type acts as a lightweight Swift reference to an underlying `GDBusArgInfo` instance.
/// It exposes methods that can operate on this data type through `DBusArgInfoProtocol` conformance.
/// Use `DBusArgInfoRef` only as an `unowned` reference to an existing `GDBusArgInfo` instance.
///
public struct DBusArgInfoRef: DBusArgInfoProtocol {
        /// Untyped pointer to the underlying `GDBusArgInfo` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_arg_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusArgInfoRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusArgInfo>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusArgInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusArgInfo>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusArgInfo>?) {
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

    /// Reference intialiser for a related type that implements `DBusArgInfoProtocol`
    @inlinable init<T: DBusArgInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusArgInfoProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusArgInfoProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusArgInfoProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusArgInfoProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusArgInfoProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// Information about an argument for a method or a signal.
///
/// The `DBusArgInfo` type acts as a reference-counted owner of an underlying `GDBusArgInfo` instance.
/// It provides the methods that can operate on this data type through `DBusArgInfoProtocol` conformance.
/// Use `DBusArgInfo` as a strong reference or owner of a `GDBusArgInfo` instance.
///
open class DBusArgInfo: DBusArgInfoProtocol {
        /// Untyped pointer to the underlying `GDBusArgInfo` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_arg_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusArgInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDBusArgInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusArgInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDBusArgInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusArgInfo` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusArgInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusArgInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDBusArgInfo>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusArgInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDBusArgInfo>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GDBusArgInfo`.
    /// i.e., ownership is transferred to the `DBusArgInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDBusArgInfo>) {
        ptr = UnsafeMutableRawPointer(op)
        g_dbus_arg_info_ref(ptr.assumingMemoryBound(to: GDBusArgInfo.self))
    }

    /// Reference intialiser for a related type that implements `DBusArgInfoProtocol`
    /// Will retain `GDBusArgInfo`.
    /// - Parameter other: an instance of a related type that implements `DBusArgInfoProtocol`
    @inlinable public init<T: DBusArgInfoProtocol>(_ other: T) {
        ptr = other.ptr
        g_dbus_arg_info_ref(ptr.assumingMemoryBound(to: GDBusArgInfo.self))
    }

    /// Releases the underlying `GDBusArgInfo` instance using `g_dbus_arg_info_unref`.
    deinit {
        g_dbus_arg_info_unref(ptr.assumingMemoryBound(to: GDBusArgInfo.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusArgInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusArgInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_dbus_arg_info_ref(ptr.assumingMemoryBound(to: GDBusArgInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusArgInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusArgInfoProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_dbus_arg_info_ref(ptr.assumingMemoryBound(to: GDBusArgInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusArgInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusArgInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_dbus_arg_info_ref(ptr.assumingMemoryBound(to: GDBusArgInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusArgInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusArgInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_dbus_arg_info_ref(ptr.assumingMemoryBound(to: GDBusArgInfo.self))
    }



}

// MARK: no DBusArgInfo properties

// MARK: no DBusArgInfo signals

// MARK: DBusArgInfo has no signals
// MARK: DBusArgInfo Record: DBusArgInfoProtocol extension (methods and fields)
public extension DBusArgInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusArgInfo` instance.
    @inlinable var dbus_arg_info_ptr: UnsafeMutablePointer<GDBusArgInfo>! { return ptr?.assumingMemoryBound(to: GDBusArgInfo.self) }

    /// If `info` is statically allocated does nothing. Otherwise increases
    /// the reference count.
    @discardableResult @inlinable func ref() -> DBusArgInfoRef! {
        guard let rv = DBusArgInfoRef(gconstpointer: gconstpointer(g_dbus_arg_info_ref(dbus_arg_info_ptr))) else { return nil }
        return rv
    }

    /// If `info` is statically allocated, does nothing. Otherwise decreases
    /// the reference count of `info`. When its reference count drops to 0,
    /// the memory used is freed.
    @inlinable func unref() {
        g_dbus_arg_info_unref(dbus_arg_info_ptr)
    
    }

    /// The reference count or -1 if statically allocated.
    @inlinable var refCount: gint {
        /// The reference count or -1 if statically allocated.
        get {
            let rv = dbus_arg_info_ptr.pointee.ref_count
            return rv
        }
        /// The reference count or -1 if statically allocated.
         set {
            dbus_arg_info_ptr.pointee.ref_count = newValue
        }
    }

    /// Name of the argument, e.g. `unix_user_id`.
    @inlinable var name: UnsafeMutablePointer<gchar>! {
        /// Name of the argument, e.g. `unix_user_id`.
        get {
            let rv = dbus_arg_info_ptr.pointee.name
            return rv
        }
        /// Name of the argument, e.g. `unix_user_id`.
         set {
            dbus_arg_info_ptr.pointee.name = newValue
        }
    }

    /// D-Bus signature of the argument (a single complete type).
    @inlinable var signature: UnsafeMutablePointer<gchar>! {
        /// D-Bus signature of the argument (a single complete type).
        get {
            let rv = dbus_arg_info_ptr.pointee.signature
            return rv
        }
        /// D-Bus signature of the argument (a single complete type).
         set {
            dbus_arg_info_ptr.pointee.signature = newValue
        }
    }

    /// A pointer to a `nil`-terminated array of pointers to `GDBusAnnotationInfo` structures or `nil` if there are no annotations.
    @inlinable var annotations: UnsafeMutablePointer<UnsafeMutablePointer<GDBusAnnotationInfo>?>! {
        /// A pointer to a `nil`-terminated array of pointers to `GDBusAnnotationInfo` structures or `nil` if there are no annotations.
        get {
            let rv = dbus_arg_info_ptr.pointee.annotations
            return rv
        }
        /// A pointer to a `nil`-terminated array of pointers to `GDBusAnnotationInfo` structures or `nil` if there are no annotations.
         set {
            dbus_arg_info_ptr.pointee.annotations = newValue
        }
    }

}



// MARK: - DBusErrorEntry Record

/// Struct used in `g_dbus_error_register_error_domain()`.
///
/// The `DBusErrorEntryProtocol` protocol exposes the methods and properties of an underlying `GDBusErrorEntry` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusErrorEntry`.
/// Alternatively, use `DBusErrorEntryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DBusErrorEntryProtocol {
        /// Untyped pointer to the underlying `GDBusErrorEntry` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusErrorEntry` instance.
    var _ptr: UnsafeMutablePointer<GDBusErrorEntry>! { get }

    /// Required Initialiser for types conforming to `DBusErrorEntryProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Struct used in `g_dbus_error_register_error_domain()`.
///
/// The `DBusErrorEntryRef` type acts as a lightweight Swift reference to an underlying `GDBusErrorEntry` instance.
/// It exposes methods that can operate on this data type through `DBusErrorEntryProtocol` conformance.
/// Use `DBusErrorEntryRef` only as an `unowned` reference to an existing `GDBusErrorEntry` instance.
///
public struct DBusErrorEntryRef: DBusErrorEntryProtocol {
        /// Untyped pointer to the underlying `GDBusErrorEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusErrorEntryRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusErrorEntry>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusErrorEntry>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusErrorEntry>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusErrorEntry>?) {
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

    /// Reference intialiser for a related type that implements `DBusErrorEntryProtocol`
    @inlinable init<T: DBusErrorEntryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusErrorEntryProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusErrorEntryProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusErrorEntryProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusErrorEntryProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusErrorEntryProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// Struct used in `g_dbus_error_register_error_domain()`.
///
/// The `DBusErrorEntry` type acts as an owner of an underlying `GDBusErrorEntry` instance.
/// It provides the methods that can operate on this data type through `DBusErrorEntryProtocol` conformance.
/// Use `DBusErrorEntry` as a strong reference or owner of a `GDBusErrorEntry` instance.
///
open class DBusErrorEntry: DBusErrorEntryProtocol {
        /// Untyped pointer to the underlying `GDBusErrorEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusErrorEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDBusErrorEntry>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusErrorEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDBusErrorEntry>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusErrorEntry` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusErrorEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusErrorEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDBusErrorEntry>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusErrorEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDBusErrorEntry>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GDBusErrorEntry` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `DBusErrorEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDBusErrorEntry>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GDBusErrorEntry, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `DBusErrorEntryProtocol`
    /// `GDBusErrorEntry` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `DBusErrorEntryProtocol`
    @inlinable public init<T: DBusErrorEntryProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GDBusErrorEntry, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GDBusErrorEntry`.
    deinit {
        // no reference counting for GDBusErrorEntry, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusErrorEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusErrorEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GDBusErrorEntry, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusErrorEntryProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusErrorEntryProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GDBusErrorEntry, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusErrorEntryProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusErrorEntryProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GDBusErrorEntry, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusErrorEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusErrorEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GDBusErrorEntry, cannot ref(_ptr)
    }



}

// MARK: no DBusErrorEntry properties

// MARK: no DBusErrorEntry signals

// MARK: DBusErrorEntry has no signals
// MARK: DBusErrorEntry Record: DBusErrorEntryProtocol extension (methods and fields)
public extension DBusErrorEntryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusErrorEntry` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GDBusErrorEntry>! { return ptr?.assumingMemoryBound(to: GDBusErrorEntry.self) }


    /// An error code.
    @inlinable var errorCode: gint {
        /// An error code.
        get {
            let rv = _ptr.pointee.error_code
            return rv
        }
        /// An error code.
         set {
            _ptr.pointee.error_code = newValue
        }
    }

    /// The D-Bus error name to associate with `error_code`.
    @inlinable var dbusErrorName: UnsafePointer<gchar>! {
        /// The D-Bus error name to associate with `error_code`.
        get {
            let rv = _ptr.pointee.dbus_error_name
            return rv
        }
        /// The D-Bus error name to associate with `error_code`.
         set {
            _ptr.pointee.dbus_error_name = newValue
        }
    }

}



/// Metatype/GType declaration for DBusInterface
public extension DBusInterfaceIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `DBusInterface`
    static var metatypeReference: GType { g_dbus_interface_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GDBusInterfaceIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GDBusInterfaceIface.self) }
    
    static var metatype: GDBusInterfaceIface? { metatypePointer?.pointee } 
    
    static var wrapper: DBusInterfaceIfaceRef? { DBusInterfaceIfaceRef(metatypePointer) }
    
    
}

// MARK: - DBusInterfaceIface Record

/// Base type for D-Bus interfaces.
///
/// The `DBusInterfaceIfaceProtocol` protocol exposes the methods and properties of an underlying `GDBusInterfaceIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusInterfaceIface`.
/// Alternatively, use `DBusInterfaceIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DBusInterfaceIfaceProtocol {
        /// Untyped pointer to the underlying `GDBusInterfaceIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusInterfaceIface` instance.
    var _ptr: UnsafeMutablePointer<GDBusInterfaceIface>! { get }

    /// Required Initialiser for types conforming to `DBusInterfaceIfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Base type for D-Bus interfaces.
///
/// The `DBusInterfaceIfaceRef` type acts as a lightweight Swift reference to an underlying `GDBusInterfaceIface` instance.
/// It exposes methods that can operate on this data type through `DBusInterfaceIfaceProtocol` conformance.
/// Use `DBusInterfaceIfaceRef` only as an `unowned` reference to an existing `GDBusInterfaceIface` instance.
///
public struct DBusInterfaceIfaceRef: DBusInterfaceIfaceProtocol {
        /// Untyped pointer to the underlying `GDBusInterfaceIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusInterfaceIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusInterfaceIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusInterfaceIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusInterfaceIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusInterfaceIface>?) {
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

    /// Reference intialiser for a related type that implements `DBusInterfaceIfaceProtocol`
    @inlinable init<T: DBusInterfaceIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: DBusInterfaceIface Record: DBusInterfaceIfaceProtocol extension (methods and fields)
public extension DBusInterfaceIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusInterfaceIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GDBusInterfaceIface>! { return ptr?.assumingMemoryBound(to: GDBusInterfaceIface.self) }


    /// The parent interface.
    @inlinable var parentIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.parent_iface
            return rv
        }
    }

    // var getInfo is unavailable because get_info is void

    // var getObject is unavailable because get_object is void

    // var setObject is unavailable because set_object is void

    // var dupObject is unavailable because dup_object is void

}



// MARK: - DBusInterfaceInfo Record

/// Information about a D-Bus interface.
///
/// The `DBusInterfaceInfoProtocol` protocol exposes the methods and properties of an underlying `GDBusInterfaceInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusInterfaceInfo`.
/// Alternatively, use `DBusInterfaceInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DBusInterfaceInfoProtocol {
        /// Untyped pointer to the underlying `GDBusInterfaceInfo` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusInterfaceInfo` instance.
    var dbus_interface_info_ptr: UnsafeMutablePointer<GDBusInterfaceInfo>! { get }

    /// Required Initialiser for types conforming to `DBusInterfaceInfoProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Information about a D-Bus interface.
///
/// The `DBusInterfaceInfoRef` type acts as a lightweight Swift reference to an underlying `GDBusInterfaceInfo` instance.
/// It exposes methods that can operate on this data type through `DBusInterfaceInfoProtocol` conformance.
/// Use `DBusInterfaceInfoRef` only as an `unowned` reference to an existing `GDBusInterfaceInfo` instance.
///
public struct DBusInterfaceInfoRef: DBusInterfaceInfoProtocol {
        /// Untyped pointer to the underlying `GDBusInterfaceInfo` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_interface_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusInterfaceInfoRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusInterfaceInfo>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusInterfaceInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusInterfaceInfo>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusInterfaceInfo>?) {
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

    /// Reference intialiser for a related type that implements `DBusInterfaceInfoProtocol`
    @inlinable init<T: DBusInterfaceInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceInfoProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceInfoProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceInfoProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceInfoProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceInfoProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// Information about a D-Bus interface.
///
/// The `DBusInterfaceInfo` type acts as a reference-counted owner of an underlying `GDBusInterfaceInfo` instance.
/// It provides the methods that can operate on this data type through `DBusInterfaceInfoProtocol` conformance.
/// Use `DBusInterfaceInfo` as a strong reference or owner of a `GDBusInterfaceInfo` instance.
///
open class DBusInterfaceInfo: DBusInterfaceInfoProtocol {
        /// Untyped pointer to the underlying `GDBusInterfaceInfo` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_interface_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusInterfaceInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDBusInterfaceInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusInterfaceInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDBusInterfaceInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusInterfaceInfo` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusInterfaceInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusInterfaceInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDBusInterfaceInfo>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusInterfaceInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDBusInterfaceInfo>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GDBusInterfaceInfo`.
    /// i.e., ownership is transferred to the `DBusInterfaceInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDBusInterfaceInfo>) {
        ptr = UnsafeMutableRawPointer(op)
        g_dbus_interface_info_ref(ptr.assumingMemoryBound(to: GDBusInterfaceInfo.self))
    }

    /// Reference intialiser for a related type that implements `DBusInterfaceInfoProtocol`
    /// Will retain `GDBusInterfaceInfo`.
    /// - Parameter other: an instance of a related type that implements `DBusInterfaceInfoProtocol`
    @inlinable public init<T: DBusInterfaceInfoProtocol>(_ other: T) {
        ptr = other.ptr
        g_dbus_interface_info_ref(ptr.assumingMemoryBound(to: GDBusInterfaceInfo.self))
    }

    /// Releases the underlying `GDBusInterfaceInfo` instance using `g_dbus_interface_info_unref`.
    deinit {
        g_dbus_interface_info_unref(ptr.assumingMemoryBound(to: GDBusInterfaceInfo.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_dbus_interface_info_ref(ptr.assumingMemoryBound(to: GDBusInterfaceInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceInfoProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_dbus_interface_info_ref(ptr.assumingMemoryBound(to: GDBusInterfaceInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_dbus_interface_info_ref(ptr.assumingMemoryBound(to: GDBusInterfaceInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_dbus_interface_info_ref(ptr.assumingMemoryBound(to: GDBusInterfaceInfo.self))
    }



}

// MARK: no DBusInterfaceInfo properties

// MARK: no DBusInterfaceInfo signals

// MARK: DBusInterfaceInfo has no signals
// MARK: DBusInterfaceInfo Record: DBusInterfaceInfoProtocol extension (methods and fields)
public extension DBusInterfaceInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusInterfaceInfo` instance.
    @inlinable var dbus_interface_info_ptr: UnsafeMutablePointer<GDBusInterfaceInfo>! { return ptr?.assumingMemoryBound(to: GDBusInterfaceInfo.self) }

    /// Builds a lookup-cache to speed up
    /// `g_dbus_interface_info_lookup_method()`,
    /// `g_dbus_interface_info_lookup_signal()` and
    /// `g_dbus_interface_info_lookup_property()`.
    /// 
    /// If this has already been called with `info`, the existing cache is
    /// used and its use count is increased.
    /// 
    /// Note that `info` cannot be modified until
    /// `g_dbus_interface_info_cache_release()` is called.
    @inlinable func cacheBuild() {
        g_dbus_interface_info_cache_build(dbus_interface_info_ptr)
    
    }

    /// Decrements the usage count for the cache for `info` built by
    /// `g_dbus_interface_info_cache_build()` (if any) and frees the
    /// resources used by the cache if the usage count drops to zero.
    @inlinable func cacheRelease() {
        g_dbus_interface_info_cache_release(dbus_interface_info_ptr)
    
    }

    /// Appends an XML representation of `info` (and its children) to `string_builder`.
    /// 
    /// This function is typically used for generating introspection XML
    /// documents at run-time for handling the
    /// `org.freedesktop.DBus.Introspectable.Introspect`
    /// method.
    @inlinable func generateXml<StringTypeT: StringProtocol>(indent: Int, stringBuilder: StringTypeT) {
        g_dbus_interface_info_generate_xml(dbus_interface_info_ptr, guint(indent), stringBuilder.gstring_ptr)
    
    }

    /// Looks up information about a method.
    /// 
    /// The cost of this function is `O(n)` in number of methods unless
    /// `g_dbus_interface_info_cache_build()` has been used on `info`.
    @inlinable func lookupMethod(name: UnsafePointer<gchar>!) -> DBusMethodInfoRef! {
        let rv = DBusMethodInfoRef(gconstpointer: gconstpointer(g_dbus_interface_info_lookup_method(dbus_interface_info_ptr, name)))
        return rv
    }

    /// Looks up information about a property.
    /// 
    /// The cost of this function is `O(n)` in number of properties unless
    /// `g_dbus_interface_info_cache_build()` has been used on `info`.
    @inlinable func lookupProperty(name: UnsafePointer<gchar>!) -> DBusPropertyInfoRef! {
        let rv = DBusPropertyInfoRef(gconstpointer: gconstpointer(g_dbus_interface_info_lookup_property(dbus_interface_info_ptr, name)))
        return rv
    }

    /// Looks up information about a signal.
    /// 
    /// The cost of this function is `O(n)` in number of signals unless
    /// `g_dbus_interface_info_cache_build()` has been used on `info`.
    @inlinable func lookupSignal(name: UnsafePointer<gchar>!) -> DBusSignalInfoRef! {
        let rv = DBusSignalInfoRef(gconstpointer: gconstpointer(g_dbus_interface_info_lookup_signal(dbus_interface_info_ptr, name)))
        return rv
    }

    /// If `info` is statically allocated does nothing. Otherwise increases
    /// the reference count.
    @discardableResult @inlinable func ref() -> DBusInterfaceInfoRef! {
        guard let rv = DBusInterfaceInfoRef(gconstpointer: gconstpointer(g_dbus_interface_info_ref(dbus_interface_info_ptr))) else { return nil }
        return rv
    }

    /// If `info` is statically allocated, does nothing. Otherwise decreases
    /// the reference count of `info`. When its reference count drops to 0,
    /// the memory used is freed.
    @inlinable func unref() {
        g_dbus_interface_info_unref(dbus_interface_info_ptr)
    
    }

    /// The reference count or -1 if statically allocated.
    @inlinable var refCount: gint {
        /// The reference count or -1 if statically allocated.
        get {
            let rv = dbus_interface_info_ptr.pointee.ref_count
            return rv
        }
        /// The reference count or -1 if statically allocated.
         set {
            dbus_interface_info_ptr.pointee.ref_count = newValue
        }
    }

    /// The name of the D-Bus interface, e.g. "org.freedesktop.DBus.Properties".
    @inlinable var name: UnsafeMutablePointer<gchar>! {
        /// The name of the D-Bus interface, e.g. "org.freedesktop.DBus.Properties".
        get {
            let rv = dbus_interface_info_ptr.pointee.name
            return rv
        }
        /// The name of the D-Bus interface, e.g. "org.freedesktop.DBus.Properties".
         set {
            dbus_interface_info_ptr.pointee.name = newValue
        }
    }

    /// A pointer to a `nil`-terminated array of pointers to `GDBusMethodInfo` structures or `nil` if there are no methods.
    @inlinable var methods: UnsafeMutablePointer<UnsafeMutablePointer<GDBusMethodInfo>?>! {
        /// A pointer to a `nil`-terminated array of pointers to `GDBusMethodInfo` structures or `nil` if there are no methods.
        get {
            let rv = dbus_interface_info_ptr.pointee.methods
            return rv
        }
        /// A pointer to a `nil`-terminated array of pointers to `GDBusMethodInfo` structures or `nil` if there are no methods.
         set {
            dbus_interface_info_ptr.pointee.methods = newValue
        }
    }

    /// A pointer to a `nil`-terminated array of pointers to `GDBusSignalInfo` structures or `nil` if there are no signals.
    @inlinable var signals: UnsafeMutablePointer<UnsafeMutablePointer<GDBusSignalInfo>?>! {
        /// A pointer to a `nil`-terminated array of pointers to `GDBusSignalInfo` structures or `nil` if there are no signals.
        get {
            let rv = dbus_interface_info_ptr.pointee.signals
            return rv
        }
        /// A pointer to a `nil`-terminated array of pointers to `GDBusSignalInfo` structures or `nil` if there are no signals.
         set {
            dbus_interface_info_ptr.pointee.signals = newValue
        }
    }

    /// A pointer to a `nil`-terminated array of pointers to `GDBusPropertyInfo` structures or `nil` if there are no properties.
    @inlinable var properties: UnsafeMutablePointer<UnsafeMutablePointer<GDBusPropertyInfo>?>! {
        /// A pointer to a `nil`-terminated array of pointers to `GDBusPropertyInfo` structures or `nil` if there are no properties.
        get {
            let rv = dbus_interface_info_ptr.pointee.properties
            return rv
        }
        /// A pointer to a `nil`-terminated array of pointers to `GDBusPropertyInfo` structures or `nil` if there are no properties.
         set {
            dbus_interface_info_ptr.pointee.properties = newValue
        }
    }

    /// A pointer to a `nil`-terminated array of pointers to `GDBusAnnotationInfo` structures or `nil` if there are no annotations.
    @inlinable var annotations: UnsafeMutablePointer<UnsafeMutablePointer<GDBusAnnotationInfo>?>! {
        /// A pointer to a `nil`-terminated array of pointers to `GDBusAnnotationInfo` structures or `nil` if there are no annotations.
        get {
            let rv = dbus_interface_info_ptr.pointee.annotations
            return rv
        }
        /// A pointer to a `nil`-terminated array of pointers to `GDBusAnnotationInfo` structures or `nil` if there are no annotations.
         set {
            dbus_interface_info_ptr.pointee.annotations = newValue
        }
    }

}



/// Metatype/GType declaration for DBusInterfaceSkeleton
public extension DBusInterfaceSkeletonClassRef {
    
    /// This getter returns the GLib type identifier registered for `DBusInterfaceSkeleton`
    static var metatypeReference: GType { g_dbus_interface_skeleton_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GDBusInterfaceSkeletonClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GDBusInterfaceSkeletonClass.self) }
    
    static var metatype: GDBusInterfaceSkeletonClass? { metatypePointer?.pointee } 
    
    static var wrapper: DBusInterfaceSkeletonClassRef? { DBusInterfaceSkeletonClassRef(metatypePointer) }
    
    
}

// MARK: - DBusInterfaceSkeletonClass Record

/// Class structure for `GDBusInterfaceSkeleton`.
///
/// The `DBusInterfaceSkeletonClassProtocol` protocol exposes the methods and properties of an underlying `GDBusInterfaceSkeletonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusInterfaceSkeletonClass`.
/// Alternatively, use `DBusInterfaceSkeletonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DBusInterfaceSkeletonClassProtocol {
        /// Untyped pointer to the underlying `GDBusInterfaceSkeletonClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusInterfaceSkeletonClass` instance.
    var _ptr: UnsafeMutablePointer<GDBusInterfaceSkeletonClass>! { get }

    /// Required Initialiser for types conforming to `DBusInterfaceSkeletonClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Class structure for `GDBusInterfaceSkeleton`.
///
/// The `DBusInterfaceSkeletonClassRef` type acts as a lightweight Swift reference to an underlying `GDBusInterfaceSkeletonClass` instance.
/// It exposes methods that can operate on this data type through `DBusInterfaceSkeletonClassProtocol` conformance.
/// Use `DBusInterfaceSkeletonClassRef` only as an `unowned` reference to an existing `GDBusInterfaceSkeletonClass` instance.
///
public struct DBusInterfaceSkeletonClassRef: DBusInterfaceSkeletonClassProtocol {
        /// Untyped pointer to the underlying `GDBusInterfaceSkeletonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusInterfaceSkeletonClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusInterfaceSkeletonClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusInterfaceSkeletonClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusInterfaceSkeletonClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusInterfaceSkeletonClass>?) {
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

    /// Reference intialiser for a related type that implements `DBusInterfaceSkeletonClassProtocol`
    @inlinable init<T: DBusInterfaceSkeletonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceSkeletonClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: DBusInterfaceSkeletonClass Record: DBusInterfaceSkeletonClassProtocol extension (methods and fields)
public extension DBusInterfaceSkeletonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusInterfaceSkeletonClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GDBusInterfaceSkeletonClass>! { return ptr?.assumingMemoryBound(to: GDBusInterfaceSkeletonClass.self) }


    /// The parent class.
    @inlinable var parentClass: GObjectClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var getInfo is unavailable because get_info is void

    // var getVtable is unavailable because get_vtable is void

    // var getProperties is unavailable because get_properties is void

    // var flush is unavailable because flush is void

    // var vfuncPadding is unavailable because vfunc_padding is private

    // var gAuthorizeMethod is unavailable because g_authorize_method is void

    // var signalPadding is unavailable because signal_padding is private

}



// MARK: - DBusInterfaceVTable Record

/// Virtual table for handling properties and method calls for a D-Bus
/// interface.
/// 
/// Since 2.38, if you want to handle getting/setting D-Bus properties
/// asynchronously, give `nil` as your `get_property()` or `set_property()`
/// function. The D-Bus call will be directed to your `method_call` function,
/// with the provided `interface_name` set to "org.freedesktop.DBus.Properties".
/// 
/// Ownership of the `GDBusMethodInvocation` object passed to the
/// `method_call()` function is transferred to your handler; you must
/// call one of the methods of `GDBusMethodInvocation` to return a reply
/// (possibly empty), or an error. These functions also take ownership
/// of the passed-in invocation object, so unless the invocation
/// object has otherwise been referenced, it will be then be freed.
/// Calling one of these functions may be done within your
/// `method_call()` implementation but it also can be done at a later
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
/// `g_dbus_method_invocation_get_property_info()` to get a pointer
/// to the `GDBusPropertyInfo` of the property.
/// 
/// If you have readable properties specified in your interface info,
/// you must ensure that you either provide a non-`nil` `get_property``()`
/// function or provide implementations of both the `Get` and `GetAll`
/// methods on org.freedesktop.DBus.Properties interface in your `method_call`
/// function. Note that the required return type of the `Get` call is
/// `(v)`, not the type of the property. `GetAll` expects a return value
/// of type `a{sv}`.
/// 
/// If you have writable properties specified in your interface info,
/// you must ensure that you either provide a non-`nil` `set_property``()`
/// function or provide an implementation of the `Set` call. If implementing
/// the call, you must return the value of type `G_VARIANT_TYPE_UNIT`.
///
/// The `DBusInterfaceVTableProtocol` protocol exposes the methods and properties of an underlying `GDBusInterfaceVTable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusInterfaceVTable`.
/// Alternatively, use `DBusInterfaceVTableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DBusInterfaceVTableProtocol {
        /// Untyped pointer to the underlying `GDBusInterfaceVTable` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusInterfaceVTable` instance.
    var _ptr: UnsafeMutablePointer<GDBusInterfaceVTable>! { get }

    /// Required Initialiser for types conforming to `DBusInterfaceVTableProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Virtual table for handling properties and method calls for a D-Bus
/// interface.
/// 
/// Since 2.38, if you want to handle getting/setting D-Bus properties
/// asynchronously, give `nil` as your `get_property()` or `set_property()`
/// function. The D-Bus call will be directed to your `method_call` function,
/// with the provided `interface_name` set to "org.freedesktop.DBus.Properties".
/// 
/// Ownership of the `GDBusMethodInvocation` object passed to the
/// `method_call()` function is transferred to your handler; you must
/// call one of the methods of `GDBusMethodInvocation` to return a reply
/// (possibly empty), or an error. These functions also take ownership
/// of the passed-in invocation object, so unless the invocation
/// object has otherwise been referenced, it will be then be freed.
/// Calling one of these functions may be done within your
/// `method_call()` implementation but it also can be done at a later
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
/// `g_dbus_method_invocation_get_property_info()` to get a pointer
/// to the `GDBusPropertyInfo` of the property.
/// 
/// If you have readable properties specified in your interface info,
/// you must ensure that you either provide a non-`nil` `get_property``()`
/// function or provide implementations of both the `Get` and `GetAll`
/// methods on org.freedesktop.DBus.Properties interface in your `method_call`
/// function. Note that the required return type of the `Get` call is
/// `(v)`, not the type of the property. `GetAll` expects a return value
/// of type `a{sv}`.
/// 
/// If you have writable properties specified in your interface info,
/// you must ensure that you either provide a non-`nil` `set_property``()`
/// function or provide an implementation of the `Set` call. If implementing
/// the call, you must return the value of type `G_VARIANT_TYPE_UNIT`.
///
/// The `DBusInterfaceVTableRef` type acts as a lightweight Swift reference to an underlying `GDBusInterfaceVTable` instance.
/// It exposes methods that can operate on this data type through `DBusInterfaceVTableProtocol` conformance.
/// Use `DBusInterfaceVTableRef` only as an `unowned` reference to an existing `GDBusInterfaceVTable` instance.
///
public struct DBusInterfaceVTableRef: DBusInterfaceVTableProtocol {
        /// Untyped pointer to the underlying `GDBusInterfaceVTable` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusInterfaceVTableRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusInterfaceVTable>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusInterfaceVTable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusInterfaceVTable>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusInterfaceVTable>?) {
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

    /// Reference intialiser for a related type that implements `DBusInterfaceVTableProtocol`
    @inlinable init<T: DBusInterfaceVTableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceVTableProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceVTableProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceVTableProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceVTableProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceVTableProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// Virtual table for handling properties and method calls for a D-Bus
/// interface.
/// 
/// Since 2.38, if you want to handle getting/setting D-Bus properties
/// asynchronously, give `nil` as your `get_property()` or `set_property()`
/// function. The D-Bus call will be directed to your `method_call` function,
/// with the provided `interface_name` set to "org.freedesktop.DBus.Properties".
/// 
/// Ownership of the `GDBusMethodInvocation` object passed to the
/// `method_call()` function is transferred to your handler; you must
/// call one of the methods of `GDBusMethodInvocation` to return a reply
/// (possibly empty), or an error. These functions also take ownership
/// of the passed-in invocation object, so unless the invocation
/// object has otherwise been referenced, it will be then be freed.
/// Calling one of these functions may be done within your
/// `method_call()` implementation but it also can be done at a later
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
/// `g_dbus_method_invocation_get_property_info()` to get a pointer
/// to the `GDBusPropertyInfo` of the property.
/// 
/// If you have readable properties specified in your interface info,
/// you must ensure that you either provide a non-`nil` `get_property``()`
/// function or provide implementations of both the `Get` and `GetAll`
/// methods on org.freedesktop.DBus.Properties interface in your `method_call`
/// function. Note that the required return type of the `Get` call is
/// `(v)`, not the type of the property. `GetAll` expects a return value
/// of type `a{sv}`.
/// 
/// If you have writable properties specified in your interface info,
/// you must ensure that you either provide a non-`nil` `set_property``()`
/// function or provide an implementation of the `Set` call. If implementing
/// the call, you must return the value of type `G_VARIANT_TYPE_UNIT`.
///
/// The `DBusInterfaceVTable` type acts as an owner of an underlying `GDBusInterfaceVTable` instance.
/// It provides the methods that can operate on this data type through `DBusInterfaceVTableProtocol` conformance.
/// Use `DBusInterfaceVTable` as a strong reference or owner of a `GDBusInterfaceVTable` instance.
///
open class DBusInterfaceVTable: DBusInterfaceVTableProtocol {
        /// Untyped pointer to the underlying `GDBusInterfaceVTable` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusInterfaceVTable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDBusInterfaceVTable>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusInterfaceVTable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDBusInterfaceVTable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusInterfaceVTable` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusInterfaceVTable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusInterfaceVTable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDBusInterfaceVTable>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusInterfaceVTable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDBusInterfaceVTable>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GDBusInterfaceVTable` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `DBusInterfaceVTable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDBusInterfaceVTable>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GDBusInterfaceVTable, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `DBusInterfaceVTableProtocol`
    /// `GDBusInterfaceVTable` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `DBusInterfaceVTableProtocol`
    @inlinable public init<T: DBusInterfaceVTableProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GDBusInterfaceVTable, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GDBusInterfaceVTable`.
    deinit {
        // no reference counting for GDBusInterfaceVTable, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceVTableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceVTableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GDBusInterfaceVTable, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceVTableProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceVTableProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GDBusInterfaceVTable, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceVTableProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceVTableProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GDBusInterfaceVTable, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceVTableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusInterfaceVTableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GDBusInterfaceVTable, cannot ref(_ptr)
    }



}

// MARK: no DBusInterfaceVTable properties

// MARK: no DBusInterfaceVTable signals

// MARK: DBusInterfaceVTable has no signals
// MARK: DBusInterfaceVTable Record: DBusInterfaceVTableProtocol extension (methods and fields)
public extension DBusInterfaceVTableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusInterfaceVTable` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GDBusInterfaceVTable>! { return ptr?.assumingMemoryBound(to: GDBusInterfaceVTable.self) }


    /// Function for handling incoming method calls.
    @inlinable var methodCall: GDBusInterfaceMethodCallFunc! {
        /// Function for handling incoming method calls.
        get {
            let rv = _ptr.pointee.method_call
            return rv
        }
        /// Function for handling incoming method calls.
         set {
            _ptr.pointee.method_call = newValue
        }
    }

    /// Function for getting a property.
    @inlinable var getProperty: GDBusInterfaceGetPropertyFunc! {
        /// Function for getting a property.
        get {
            let rv = _ptr.pointee.get_property
            return rv
        }
        /// Function for getting a property.
         set {
            _ptr.pointee.get_property = newValue
        }
    }

    /// Function for setting a property.
    @inlinable var setProperty: GDBusInterfaceSetPropertyFunc! {
        /// Function for setting a property.
        get {
            let rv = _ptr.pointee.set_property
            return rv
        }
        /// Function for setting a property.
         set {
            _ptr.pointee.set_property = newValue
        }
    }

    // var padding is unavailable because padding is private

}



// MARK: - DBusMethodInfo Record

/// Information about a method on an D-Bus interface.
///
/// The `DBusMethodInfoProtocol` protocol exposes the methods and properties of an underlying `GDBusMethodInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusMethodInfo`.
/// Alternatively, use `DBusMethodInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DBusMethodInfoProtocol {
        /// Untyped pointer to the underlying `GDBusMethodInfo` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusMethodInfo` instance.
    var dbus_method_info_ptr: UnsafeMutablePointer<GDBusMethodInfo>! { get }

    /// Required Initialiser for types conforming to `DBusMethodInfoProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Information about a method on an D-Bus interface.
///
/// The `DBusMethodInfoRef` type acts as a lightweight Swift reference to an underlying `GDBusMethodInfo` instance.
/// It exposes methods that can operate on this data type through `DBusMethodInfoProtocol` conformance.
/// Use `DBusMethodInfoRef` only as an `unowned` reference to an existing `GDBusMethodInfo` instance.
///
public struct DBusMethodInfoRef: DBusMethodInfoProtocol {
        /// Untyped pointer to the underlying `GDBusMethodInfo` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_method_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusMethodInfoRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusMethodInfo>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusMethodInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusMethodInfo>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusMethodInfo>?) {
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

    /// Reference intialiser for a related type that implements `DBusMethodInfoProtocol`
    @inlinable init<T: DBusMethodInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInfoProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInfoProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInfoProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInfoProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInfoProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// Information about a method on an D-Bus interface.
///
/// The `DBusMethodInfo` type acts as a reference-counted owner of an underlying `GDBusMethodInfo` instance.
/// It provides the methods that can operate on this data type through `DBusMethodInfoProtocol` conformance.
/// Use `DBusMethodInfo` as a strong reference or owner of a `GDBusMethodInfo` instance.
///
open class DBusMethodInfo: DBusMethodInfoProtocol {
        /// Untyped pointer to the underlying `GDBusMethodInfo` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_method_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusMethodInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDBusMethodInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusMethodInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDBusMethodInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusMethodInfo` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusMethodInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusMethodInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDBusMethodInfo>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusMethodInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDBusMethodInfo>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GDBusMethodInfo`.
    /// i.e., ownership is transferred to the `DBusMethodInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDBusMethodInfo>) {
        ptr = UnsafeMutableRawPointer(op)
        g_dbus_method_info_ref(ptr.assumingMemoryBound(to: GDBusMethodInfo.self))
    }

    /// Reference intialiser for a related type that implements `DBusMethodInfoProtocol`
    /// Will retain `GDBusMethodInfo`.
    /// - Parameter other: an instance of a related type that implements `DBusMethodInfoProtocol`
    @inlinable public init<T: DBusMethodInfoProtocol>(_ other: T) {
        ptr = other.ptr
        g_dbus_method_info_ref(ptr.assumingMemoryBound(to: GDBusMethodInfo.self))
    }

    /// Releases the underlying `GDBusMethodInfo` instance using `g_dbus_method_info_unref`.
    deinit {
        g_dbus_method_info_unref(ptr.assumingMemoryBound(to: GDBusMethodInfo.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_dbus_method_info_ref(ptr.assumingMemoryBound(to: GDBusMethodInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInfoProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_dbus_method_info_ref(ptr.assumingMemoryBound(to: GDBusMethodInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_dbus_method_info_ref(ptr.assumingMemoryBound(to: GDBusMethodInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusMethodInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_dbus_method_info_ref(ptr.assumingMemoryBound(to: GDBusMethodInfo.self))
    }



}

// MARK: no DBusMethodInfo properties

// MARK: no DBusMethodInfo signals

// MARK: DBusMethodInfo has no signals
// MARK: DBusMethodInfo Record: DBusMethodInfoProtocol extension (methods and fields)
public extension DBusMethodInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusMethodInfo` instance.
    @inlinable var dbus_method_info_ptr: UnsafeMutablePointer<GDBusMethodInfo>! { return ptr?.assumingMemoryBound(to: GDBusMethodInfo.self) }

    /// If `info` is statically allocated does nothing. Otherwise increases
    /// the reference count.
    @discardableResult @inlinable func ref() -> DBusMethodInfoRef! {
        guard let rv = DBusMethodInfoRef(gconstpointer: gconstpointer(g_dbus_method_info_ref(dbus_method_info_ptr))) else { return nil }
        return rv
    }

    /// If `info` is statically allocated, does nothing. Otherwise decreases
    /// the reference count of `info`. When its reference count drops to 0,
    /// the memory used is freed.
    @inlinable func unref() {
        g_dbus_method_info_unref(dbus_method_info_ptr)
    
    }

    /// The reference count or -1 if statically allocated.
    @inlinable var refCount: gint {
        /// The reference count or -1 if statically allocated.
        get {
            let rv = dbus_method_info_ptr.pointee.ref_count
            return rv
        }
        /// The reference count or -1 if statically allocated.
         set {
            dbus_method_info_ptr.pointee.ref_count = newValue
        }
    }

    /// The name of the D-Bus method, e.g. `RequestName`.
    @inlinable var name: UnsafeMutablePointer<gchar>! {
        /// The name of the D-Bus method, e.g. `RequestName`.
        get {
            let rv = dbus_method_info_ptr.pointee.name
            return rv
        }
        /// The name of the D-Bus method, e.g. `RequestName`.
         set {
            dbus_method_info_ptr.pointee.name = newValue
        }
    }

    /// A pointer to a `nil`-terminated array of pointers to `GDBusArgInfo` structures or `nil` if there are no in arguments.
    @inlinable var inArgs: UnsafeMutablePointer<UnsafeMutablePointer<GDBusArgInfo>?>! {
        /// A pointer to a `nil`-terminated array of pointers to `GDBusArgInfo` structures or `nil` if there are no in arguments.
        get {
            let rv = dbus_method_info_ptr.pointee.in_args
            return rv
        }
        /// A pointer to a `nil`-terminated array of pointers to `GDBusArgInfo` structures or `nil` if there are no in arguments.
         set {
            dbus_method_info_ptr.pointee.in_args = newValue
        }
    }

    /// A pointer to a `nil`-terminated array of pointers to `GDBusArgInfo` structures or `nil` if there are no out arguments.
    @inlinable var outArgs: UnsafeMutablePointer<UnsafeMutablePointer<GDBusArgInfo>?>! {
        /// A pointer to a `nil`-terminated array of pointers to `GDBusArgInfo` structures or `nil` if there are no out arguments.
        get {
            let rv = dbus_method_info_ptr.pointee.out_args
            return rv
        }
        /// A pointer to a `nil`-terminated array of pointers to `GDBusArgInfo` structures or `nil` if there are no out arguments.
         set {
            dbus_method_info_ptr.pointee.out_args = newValue
        }
    }

    /// A pointer to a `nil`-terminated array of pointers to `GDBusAnnotationInfo` structures or `nil` if there are no annotations.
    @inlinable var annotations: UnsafeMutablePointer<UnsafeMutablePointer<GDBusAnnotationInfo>?>! {
        /// A pointer to a `nil`-terminated array of pointers to `GDBusAnnotationInfo` structures or `nil` if there are no annotations.
        get {
            let rv = dbus_method_info_ptr.pointee.annotations
            return rv
        }
        /// A pointer to a `nil`-terminated array of pointers to `GDBusAnnotationInfo` structures or `nil` if there are no annotations.
         set {
            dbus_method_info_ptr.pointee.annotations = newValue
        }
    }

}



// MARK: - DBusNodeInfo Record

/// Information about nodes in a remote object hierarchy.
///
/// The `DBusNodeInfoProtocol` protocol exposes the methods and properties of an underlying `GDBusNodeInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusNodeInfo`.
/// Alternatively, use `DBusNodeInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DBusNodeInfoProtocol {
        /// Untyped pointer to the underlying `GDBusNodeInfo` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusNodeInfo` instance.
    var dbus_node_info_ptr: UnsafeMutablePointer<GDBusNodeInfo>! { get }

    /// Required Initialiser for types conforming to `DBusNodeInfoProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Information about nodes in a remote object hierarchy.
///
/// The `DBusNodeInfoRef` type acts as a lightweight Swift reference to an underlying `GDBusNodeInfo` instance.
/// It exposes methods that can operate on this data type through `DBusNodeInfoProtocol` conformance.
/// Use `DBusNodeInfoRef` only as an `unowned` reference to an existing `GDBusNodeInfo` instance.
///
public struct DBusNodeInfoRef: DBusNodeInfoProtocol {
        /// Untyped pointer to the underlying `GDBusNodeInfo` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_node_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusNodeInfoRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusNodeInfo>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusNodeInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusNodeInfo>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusNodeInfo>?) {
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

    /// Reference intialiser for a related type that implements `DBusNodeInfoProtocol`
    @inlinable init<T: DBusNodeInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusNodeInfoProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusNodeInfoProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusNodeInfoProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusNodeInfoProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusNodeInfoProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Parses `xml_data` and returns a `GDBusNodeInfo` representing the data.
    /// 
    /// The introspection XML must contain exactly one top-level
    /// &lt;node&gt; element.
    /// 
    /// Note that this routine is using a
    /// [GMarkup](#glib-Simple-XML-Subset-Parser.description)-based
    /// parser that only accepts a subset of valid XML documents.
    @inlinable init(xml xmlData: UnsafePointer<gchar>!) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_dbus_node_info_new_for_xml(xmlData, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Parses `xml_data` and returns a `GDBusNodeInfo` representing the data.
    /// 
    /// The introspection XML must contain exactly one top-level
    /// &lt;node&gt; element.
    /// 
    /// Note that this routine is using a
    /// [GMarkup](#glib-Simple-XML-Subset-Parser.description)-based
    /// parser that only accepts a subset of valid XML documents.
    @inlinable static func newFor(xml xmlData: UnsafePointer<gchar>!) throws -> DBusNodeInfoRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = DBusNodeInfoRef(gconstpointer: gconstpointer(g_dbus_node_info_new_for_xml(xmlData, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }
}

/// Information about nodes in a remote object hierarchy.
///
/// The `DBusNodeInfo` type acts as a reference-counted owner of an underlying `GDBusNodeInfo` instance.
/// It provides the methods that can operate on this data type through `DBusNodeInfoProtocol` conformance.
/// Use `DBusNodeInfo` as a strong reference or owner of a `GDBusNodeInfo` instance.
///
open class DBusNodeInfo: DBusNodeInfoProtocol {
        /// Untyped pointer to the underlying `GDBusNodeInfo` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_node_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusNodeInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDBusNodeInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusNodeInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDBusNodeInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusNodeInfo` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusNodeInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusNodeInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDBusNodeInfo>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusNodeInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDBusNodeInfo>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GDBusNodeInfo`.
    /// i.e., ownership is transferred to the `DBusNodeInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDBusNodeInfo>) {
        ptr = UnsafeMutableRawPointer(op)
        g_dbus_node_info_ref(ptr.assumingMemoryBound(to: GDBusNodeInfo.self))
    }

    /// Reference intialiser for a related type that implements `DBusNodeInfoProtocol`
    /// Will retain `GDBusNodeInfo`.
    /// - Parameter other: an instance of a related type that implements `DBusNodeInfoProtocol`
    @inlinable public init<T: DBusNodeInfoProtocol>(_ other: T) {
        ptr = other.ptr
        g_dbus_node_info_ref(ptr.assumingMemoryBound(to: GDBusNodeInfo.self))
    }

    /// Releases the underlying `GDBusNodeInfo` instance using `g_dbus_node_info_unref`.
    deinit {
        g_dbus_node_info_unref(ptr.assumingMemoryBound(to: GDBusNodeInfo.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusNodeInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusNodeInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_dbus_node_info_ref(ptr.assumingMemoryBound(to: GDBusNodeInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusNodeInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusNodeInfoProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_dbus_node_info_ref(ptr.assumingMemoryBound(to: GDBusNodeInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusNodeInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusNodeInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_dbus_node_info_ref(ptr.assumingMemoryBound(to: GDBusNodeInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusNodeInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusNodeInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_dbus_node_info_ref(ptr.assumingMemoryBound(to: GDBusNodeInfo.self))
    }

    /// Parses `xml_data` and returns a `GDBusNodeInfo` representing the data.
    /// 
    /// The introspection XML must contain exactly one top-level
    /// &lt;node&gt; element.
    /// 
    /// Note that this routine is using a
    /// [GMarkup](#glib-Simple-XML-Subset-Parser.description)-based
    /// parser that only accepts a subset of valid XML documents.
    @inlinable public init(xml xmlData: UnsafePointer<gchar>!) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_dbus_node_info_new_for_xml(xmlData, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Parses `xml_data` and returns a `GDBusNodeInfo` representing the data.
    /// 
    /// The introspection XML must contain exactly one top-level
    /// &lt;node&gt; element.
    /// 
    /// Note that this routine is using a
    /// [GMarkup](#glib-Simple-XML-Subset-Parser.description)-based
    /// parser that only accepts a subset of valid XML documents.
    @inlinable public static func newFor(xml xmlData: UnsafePointer<gchar>!) throws -> DBusNodeInfo! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = DBusNodeInfo(gconstpointer: gconstpointer(g_dbus_node_info_new_for_xml(xmlData, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

}

// MARK: no DBusNodeInfo properties

// MARK: no DBusNodeInfo signals

// MARK: DBusNodeInfo has no signals
// MARK: DBusNodeInfo Record: DBusNodeInfoProtocol extension (methods and fields)
public extension DBusNodeInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusNodeInfo` instance.
    @inlinable var dbus_node_info_ptr: UnsafeMutablePointer<GDBusNodeInfo>! { return ptr?.assumingMemoryBound(to: GDBusNodeInfo.self) }

    /// Appends an XML representation of `info` (and its children) to `string_builder`.
    /// 
    /// This function is typically used for generating introspection XML documents at run-time for
    /// handling the `org.freedesktop.DBus.Introspectable.Introspect`  method.
    @inlinable func generateXml<StringTypeT: StringProtocol>(indent: Int, stringBuilder: StringTypeT) {
        g_dbus_node_info_generate_xml(dbus_node_info_ptr, guint(indent), stringBuilder.gstring_ptr)
    
    }

    /// Looks up information about an interface.
    /// 
    /// The cost of this function is `O(n)` in number of interfaces.
    @inlinable func lookupInterface(name: UnsafePointer<gchar>!) -> DBusInterfaceInfoRef! {
        let rv = DBusInterfaceInfoRef(gconstpointer: gconstpointer(g_dbus_node_info_lookup_interface(dbus_node_info_ptr, name)))
        return rv
    }

    /// If `info` is statically allocated does nothing. Otherwise increases
    /// the reference count.
    @discardableResult @inlinable func ref() -> DBusNodeInfoRef! {
        guard let rv = DBusNodeInfoRef(gconstpointer: gconstpointer(g_dbus_node_info_ref(dbus_node_info_ptr))) else { return nil }
        return rv
    }

    /// If `info` is statically allocated, does nothing. Otherwise decreases
    /// the reference count of `info`. When its reference count drops to 0,
    /// the memory used is freed.
    @inlinable func unref() {
        g_dbus_node_info_unref(dbus_node_info_ptr)
    
    }

    /// The reference count or -1 if statically allocated.
    @inlinable var refCount: gint {
        /// The reference count or -1 if statically allocated.
        get {
            let rv = dbus_node_info_ptr.pointee.ref_count
            return rv
        }
        /// The reference count or -1 if statically allocated.
         set {
            dbus_node_info_ptr.pointee.ref_count = newValue
        }
    }

    /// The path of the node or `nil` if omitted. Note that this may be a relative path. See the D-Bus specification for more details.
    @inlinable var path: UnsafeMutablePointer<gchar>! {
        /// The path of the node or `nil` if omitted. Note that this may be a relative path. See the D-Bus specification for more details.
        get {
            let rv = dbus_node_info_ptr.pointee.path
            return rv
        }
        /// The path of the node or `nil` if omitted. Note that this may be a relative path. See the D-Bus specification for more details.
         set {
            dbus_node_info_ptr.pointee.path = newValue
        }
    }

    /// A pointer to a `nil`-terminated array of pointers to `GDBusInterfaceInfo` structures or `nil` if there are no interfaces.
    @inlinable var interfaces: UnsafeMutablePointer<UnsafeMutablePointer<GDBusInterfaceInfo>?>! {
        /// A pointer to a `nil`-terminated array of pointers to `GDBusInterfaceInfo` structures or `nil` if there are no interfaces.
        get {
            let rv = dbus_node_info_ptr.pointee.interfaces
            return rv
        }
        /// A pointer to a `nil`-terminated array of pointers to `GDBusInterfaceInfo` structures or `nil` if there are no interfaces.
         set {
            dbus_node_info_ptr.pointee.interfaces = newValue
        }
    }

    /// A pointer to a `nil`-terminated array of pointers to `GDBusNodeInfo` structures or `nil` if there are no nodes.
    @inlinable var nodes: UnsafeMutablePointer<UnsafeMutablePointer<GDBusNodeInfo>?>! {
        /// A pointer to a `nil`-terminated array of pointers to `GDBusNodeInfo` structures or `nil` if there are no nodes.
        get {
            let rv = dbus_node_info_ptr.pointee.nodes
            return rv
        }
        /// A pointer to a `nil`-terminated array of pointers to `GDBusNodeInfo` structures or `nil` if there are no nodes.
         set {
            dbus_node_info_ptr.pointee.nodes = newValue
        }
    }

    /// A pointer to a `nil`-terminated array of pointers to `GDBusAnnotationInfo` structures or `nil` if there are no annotations.
    @inlinable var annotations: UnsafeMutablePointer<UnsafeMutablePointer<GDBusAnnotationInfo>?>! {
        /// A pointer to a `nil`-terminated array of pointers to `GDBusAnnotationInfo` structures or `nil` if there are no annotations.
        get {
            let rv = dbus_node_info_ptr.pointee.annotations
            return rv
        }
        /// A pointer to a `nil`-terminated array of pointers to `GDBusAnnotationInfo` structures or `nil` if there are no annotations.
         set {
            dbus_node_info_ptr.pointee.annotations = newValue
        }
    }

}



/// Metatype/GType declaration for DBusObject
public extension DBusObjectIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `DBusObject`
    static var metatypeReference: GType { g_dbus_object_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GDBusObjectIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GDBusObjectIface.self) }
    
    static var metatype: GDBusObjectIface? { metatypePointer?.pointee } 
    
    static var wrapper: DBusObjectIfaceRef? { DBusObjectIfaceRef(metatypePointer) }
    
    
}

// MARK: - DBusObjectIface Record

/// Base object type for D-Bus objects.
///
/// The `DBusObjectIfaceProtocol` protocol exposes the methods and properties of an underlying `GDBusObjectIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusObjectIface`.
/// Alternatively, use `DBusObjectIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DBusObjectIfaceProtocol {
        /// Untyped pointer to the underlying `GDBusObjectIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusObjectIface` instance.
    var _ptr: UnsafeMutablePointer<GDBusObjectIface>! { get }

    /// Required Initialiser for types conforming to `DBusObjectIfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Base object type for D-Bus objects.
///
/// The `DBusObjectIfaceRef` type acts as a lightweight Swift reference to an underlying `GDBusObjectIface` instance.
/// It exposes methods that can operate on this data type through `DBusObjectIfaceProtocol` conformance.
/// Use `DBusObjectIfaceRef` only as an `unowned` reference to an existing `GDBusObjectIface` instance.
///
public struct DBusObjectIfaceRef: DBusObjectIfaceProtocol {
        /// Untyped pointer to the underlying `GDBusObjectIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusObjectIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusObjectIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusObjectIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusObjectIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusObjectIface>?) {
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

    /// Reference intialiser for a related type that implements `DBusObjectIfaceProtocol`
    @inlinable init<T: DBusObjectIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: DBusObjectIface Record: DBusObjectIfaceProtocol extension (methods and fields)
public extension DBusObjectIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusObjectIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GDBusObjectIface>! { return ptr?.assumingMemoryBound(to: GDBusObjectIface.self) }


    /// The parent interface.
    @inlinable var parentIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.parent_iface
            return rv
        }
    }

    // var getObjectPath is unavailable because get_object_path is void

    // var getInterfaces is unavailable because get_interfaces is void

    // var getInterface is unavailable because get_interface is void

    // var interfaceAdded is unavailable because interface_added is void

    // var interfaceRemoved is unavailable because interface_removed is void

}



/// Metatype/GType declaration for DBusObjectManagerClient
public extension DBusObjectManagerClientClassRef {
    
    /// This getter returns the GLib type identifier registered for `DBusObjectManagerClient`
    static var metatypeReference: GType { g_dbus_object_manager_client_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GDBusObjectManagerClientClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GDBusObjectManagerClientClass.self) }
    
    static var metatype: GDBusObjectManagerClientClass? { metatypePointer?.pointee } 
    
    static var wrapper: DBusObjectManagerClientClassRef? { DBusObjectManagerClientClassRef(metatypePointer) }
    
    
}

// MARK: - DBusObjectManagerClientClass Record

/// Class structure for `GDBusObjectManagerClient`.
///
/// The `DBusObjectManagerClientClassProtocol` protocol exposes the methods and properties of an underlying `GDBusObjectManagerClientClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusObjectManagerClientClass`.
/// Alternatively, use `DBusObjectManagerClientClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DBusObjectManagerClientClassProtocol {
        /// Untyped pointer to the underlying `GDBusObjectManagerClientClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusObjectManagerClientClass` instance.
    var _ptr: UnsafeMutablePointer<GDBusObjectManagerClientClass>! { get }

    /// Required Initialiser for types conforming to `DBusObjectManagerClientClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Class structure for `GDBusObjectManagerClient`.
///
/// The `DBusObjectManagerClientClassRef` type acts as a lightweight Swift reference to an underlying `GDBusObjectManagerClientClass` instance.
/// It exposes methods that can operate on this data type through `DBusObjectManagerClientClassProtocol` conformance.
/// Use `DBusObjectManagerClientClassRef` only as an `unowned` reference to an existing `GDBusObjectManagerClientClass` instance.
///
public struct DBusObjectManagerClientClassRef: DBusObjectManagerClientClassProtocol {
        /// Untyped pointer to the underlying `GDBusObjectManagerClientClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusObjectManagerClientClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusObjectManagerClientClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusObjectManagerClientClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusObjectManagerClientClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusObjectManagerClientClass>?) {
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

    /// Reference intialiser for a related type that implements `DBusObjectManagerClientClassProtocol`
    @inlinable init<T: DBusObjectManagerClientClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerClientClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: DBusObjectManagerClientClass Record: DBusObjectManagerClientClassProtocol extension (methods and fields)
public extension DBusObjectManagerClientClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusObjectManagerClientClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GDBusObjectManagerClientClass>! { return ptr?.assumingMemoryBound(to: GDBusObjectManagerClientClass.self) }


    /// The parent class.
    @inlinable var parentClass: GObjectClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var interfaceProxySignal is unavailable because interface_proxy_signal is void

    // var interfaceProxyPropertiesChanged is unavailable because interface_proxy_properties_changed is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for DBusObjectManager
public extension DBusObjectManagerIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `DBusObjectManager`
    static var metatypeReference: GType { g_dbus_object_manager_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GDBusObjectManagerIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GDBusObjectManagerIface.self) }
    
    static var metatype: GDBusObjectManagerIface? { metatypePointer?.pointee } 
    
    static var wrapper: DBusObjectManagerIfaceRef? { DBusObjectManagerIfaceRef(metatypePointer) }
    
    
}

// MARK: - DBusObjectManagerIface Record

/// Base type for D-Bus object managers.
///
/// The `DBusObjectManagerIfaceProtocol` protocol exposes the methods and properties of an underlying `GDBusObjectManagerIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusObjectManagerIface`.
/// Alternatively, use `DBusObjectManagerIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DBusObjectManagerIfaceProtocol {
        /// Untyped pointer to the underlying `GDBusObjectManagerIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusObjectManagerIface` instance.
    var _ptr: UnsafeMutablePointer<GDBusObjectManagerIface>! { get }

    /// Required Initialiser for types conforming to `DBusObjectManagerIfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Base type for D-Bus object managers.
///
/// The `DBusObjectManagerIfaceRef` type acts as a lightweight Swift reference to an underlying `GDBusObjectManagerIface` instance.
/// It exposes methods that can operate on this data type through `DBusObjectManagerIfaceProtocol` conformance.
/// Use `DBusObjectManagerIfaceRef` only as an `unowned` reference to an existing `GDBusObjectManagerIface` instance.
///
public struct DBusObjectManagerIfaceRef: DBusObjectManagerIfaceProtocol {
        /// Untyped pointer to the underlying `GDBusObjectManagerIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusObjectManagerIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusObjectManagerIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusObjectManagerIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusObjectManagerIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusObjectManagerIface>?) {
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

    /// Reference intialiser for a related type that implements `DBusObjectManagerIfaceProtocol`
    @inlinable init<T: DBusObjectManagerIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: DBusObjectManagerIface Record: DBusObjectManagerIfaceProtocol extension (methods and fields)
public extension DBusObjectManagerIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusObjectManagerIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GDBusObjectManagerIface>! { return ptr?.assumingMemoryBound(to: GDBusObjectManagerIface.self) }


    /// The parent interface.
    @inlinable var parentIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.parent_iface
            return rv
        }
    }

    // var getObjectPath is unavailable because get_object_path is void

    // var getObjects is unavailable because get_objects is void

    // var getObject is unavailable because get_object is void

    // var getInterface is unavailable because get_interface is void

    // var objectAdded is unavailable because object_added is void

    // var objectRemoved is unavailable because object_removed is void

    // var interfaceAdded is unavailable because interface_added is void

    // var interfaceRemoved is unavailable because interface_removed is void

}



/// Metatype/GType declaration for DBusObjectManagerServer
public extension DBusObjectManagerServerClassRef {
    
    /// This getter returns the GLib type identifier registered for `DBusObjectManagerServer`
    static var metatypeReference: GType { g_dbus_object_manager_server_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GDBusObjectManagerServerClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GDBusObjectManagerServerClass.self) }
    
    static var metatype: GDBusObjectManagerServerClass? { metatypePointer?.pointee } 
    
    static var wrapper: DBusObjectManagerServerClassRef? { DBusObjectManagerServerClassRef(metatypePointer) }
    
    
}

// MARK: - DBusObjectManagerServerClass Record

/// Class structure for `GDBusObjectManagerServer`.
///
/// The `DBusObjectManagerServerClassProtocol` protocol exposes the methods and properties of an underlying `GDBusObjectManagerServerClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusObjectManagerServerClass`.
/// Alternatively, use `DBusObjectManagerServerClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DBusObjectManagerServerClassProtocol {
        /// Untyped pointer to the underlying `GDBusObjectManagerServerClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusObjectManagerServerClass` instance.
    var _ptr: UnsafeMutablePointer<GDBusObjectManagerServerClass>! { get }

    /// Required Initialiser for types conforming to `DBusObjectManagerServerClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Class structure for `GDBusObjectManagerServer`.
///
/// The `DBusObjectManagerServerClassRef` type acts as a lightweight Swift reference to an underlying `GDBusObjectManagerServerClass` instance.
/// It exposes methods that can operate on this data type through `DBusObjectManagerServerClassProtocol` conformance.
/// Use `DBusObjectManagerServerClassRef` only as an `unowned` reference to an existing `GDBusObjectManagerServerClass` instance.
///
public struct DBusObjectManagerServerClassRef: DBusObjectManagerServerClassProtocol {
        /// Untyped pointer to the underlying `GDBusObjectManagerServerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusObjectManagerServerClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusObjectManagerServerClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusObjectManagerServerClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusObjectManagerServerClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusObjectManagerServerClass>?) {
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

    /// Reference intialiser for a related type that implements `DBusObjectManagerServerClassProtocol`
    @inlinable init<T: DBusObjectManagerServerClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectManagerServerClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: DBusObjectManagerServerClass Record: DBusObjectManagerServerClassProtocol extension (methods and fields)
public extension DBusObjectManagerServerClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusObjectManagerServerClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GDBusObjectManagerServerClass>! { return ptr?.assumingMemoryBound(to: GDBusObjectManagerServerClass.self) }


    /// The parent class.
    @inlinable var parentClass: GObjectClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for DBusObjectProxy
public extension DBusObjectProxyClassRef {
    
    /// This getter returns the GLib type identifier registered for `DBusObjectProxy`
    static var metatypeReference: GType { g_dbus_object_proxy_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GDBusObjectProxyClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GDBusObjectProxyClass.self) }
    
    static var metatype: GDBusObjectProxyClass? { metatypePointer?.pointee } 
    
    static var wrapper: DBusObjectProxyClassRef? { DBusObjectProxyClassRef(metatypePointer) }
    
    
}

// MARK: - DBusObjectProxyClass Record

/// Class structure for `GDBusObjectProxy`.
///
/// The `DBusObjectProxyClassProtocol` protocol exposes the methods and properties of an underlying `GDBusObjectProxyClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusObjectProxyClass`.
/// Alternatively, use `DBusObjectProxyClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DBusObjectProxyClassProtocol {
        /// Untyped pointer to the underlying `GDBusObjectProxyClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusObjectProxyClass` instance.
    var _ptr: UnsafeMutablePointer<GDBusObjectProxyClass>! { get }

    /// Required Initialiser for types conforming to `DBusObjectProxyClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Class structure for `GDBusObjectProxy`.
///
/// The `DBusObjectProxyClassRef` type acts as a lightweight Swift reference to an underlying `GDBusObjectProxyClass` instance.
/// It exposes methods that can operate on this data type through `DBusObjectProxyClassProtocol` conformance.
/// Use `DBusObjectProxyClassRef` only as an `unowned` reference to an existing `GDBusObjectProxyClass` instance.
///
public struct DBusObjectProxyClassRef: DBusObjectProxyClassProtocol {
        /// Untyped pointer to the underlying `GDBusObjectProxyClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusObjectProxyClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusObjectProxyClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusObjectProxyClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusObjectProxyClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusObjectProxyClass>?) {
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

    /// Reference intialiser for a related type that implements `DBusObjectProxyClassProtocol`
    @inlinable init<T: DBusObjectProxyClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectProxyClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: DBusObjectProxyClass Record: DBusObjectProxyClassProtocol extension (methods and fields)
public extension DBusObjectProxyClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusObjectProxyClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GDBusObjectProxyClass>! { return ptr?.assumingMemoryBound(to: GDBusObjectProxyClass.self) }


    /// The parent class.
    @inlinable var parentClass: GObjectClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for DBusObjectSkeleton
public extension DBusObjectSkeletonClassRef {
    
    /// This getter returns the GLib type identifier registered for `DBusObjectSkeleton`
    static var metatypeReference: GType { g_dbus_object_skeleton_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GDBusObjectSkeletonClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GDBusObjectSkeletonClass.self) }
    
    static var metatype: GDBusObjectSkeletonClass? { metatypePointer?.pointee } 
    
    static var wrapper: DBusObjectSkeletonClassRef? { DBusObjectSkeletonClassRef(metatypePointer) }
    
    
}

// MARK: - DBusObjectSkeletonClass Record

/// Class structure for `GDBusObjectSkeleton`.
///
/// The `DBusObjectSkeletonClassProtocol` protocol exposes the methods and properties of an underlying `GDBusObjectSkeletonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusObjectSkeletonClass`.
/// Alternatively, use `DBusObjectSkeletonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DBusObjectSkeletonClassProtocol {
        /// Untyped pointer to the underlying `GDBusObjectSkeletonClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusObjectSkeletonClass` instance.
    var _ptr: UnsafeMutablePointer<GDBusObjectSkeletonClass>! { get }

    /// Required Initialiser for types conforming to `DBusObjectSkeletonClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Class structure for `GDBusObjectSkeleton`.
///
/// The `DBusObjectSkeletonClassRef` type acts as a lightweight Swift reference to an underlying `GDBusObjectSkeletonClass` instance.
/// It exposes methods that can operate on this data type through `DBusObjectSkeletonClassProtocol` conformance.
/// Use `DBusObjectSkeletonClassRef` only as an `unowned` reference to an existing `GDBusObjectSkeletonClass` instance.
///
public struct DBusObjectSkeletonClassRef: DBusObjectSkeletonClassProtocol {
        /// Untyped pointer to the underlying `GDBusObjectSkeletonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusObjectSkeletonClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusObjectSkeletonClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusObjectSkeletonClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusObjectSkeletonClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusObjectSkeletonClass>?) {
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

    /// Reference intialiser for a related type that implements `DBusObjectSkeletonClassProtocol`
    @inlinable init<T: DBusObjectSkeletonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusObjectSkeletonClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: DBusObjectSkeletonClass Record: DBusObjectSkeletonClassProtocol extension (methods and fields)
public extension DBusObjectSkeletonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusObjectSkeletonClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GDBusObjectSkeletonClass>! { return ptr?.assumingMemoryBound(to: GDBusObjectSkeletonClass.self) }


    /// The parent class.
    @inlinable var parentClass: GObjectClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var authorizeMethod is unavailable because authorize_method is void

    // var padding is unavailable because padding is private

}



// MARK: - DBusPropertyInfo Record

/// Information about a D-Bus property on a D-Bus interface.
///
/// The `DBusPropertyInfoProtocol` protocol exposes the methods and properties of an underlying `GDBusPropertyInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusPropertyInfo`.
/// Alternatively, use `DBusPropertyInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DBusPropertyInfoProtocol {
        /// Untyped pointer to the underlying `GDBusPropertyInfo` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusPropertyInfo` instance.
    var dbus_property_info_ptr: UnsafeMutablePointer<GDBusPropertyInfo>! { get }

    /// Required Initialiser for types conforming to `DBusPropertyInfoProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Information about a D-Bus property on a D-Bus interface.
///
/// The `DBusPropertyInfoRef` type acts as a lightweight Swift reference to an underlying `GDBusPropertyInfo` instance.
/// It exposes methods that can operate on this data type through `DBusPropertyInfoProtocol` conformance.
/// Use `DBusPropertyInfoRef` only as an `unowned` reference to an existing `GDBusPropertyInfo` instance.
///
public struct DBusPropertyInfoRef: DBusPropertyInfoProtocol {
        /// Untyped pointer to the underlying `GDBusPropertyInfo` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_property_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusPropertyInfoRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusPropertyInfo>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusPropertyInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusPropertyInfo>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusPropertyInfo>?) {
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

    /// Reference intialiser for a related type that implements `DBusPropertyInfoProtocol`
    @inlinable init<T: DBusPropertyInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusPropertyInfoProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusPropertyInfoProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusPropertyInfoProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusPropertyInfoProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusPropertyInfoProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// Information about a D-Bus property on a D-Bus interface.
///
/// The `DBusPropertyInfo` type acts as a reference-counted owner of an underlying `GDBusPropertyInfo` instance.
/// It provides the methods that can operate on this data type through `DBusPropertyInfoProtocol` conformance.
/// Use `DBusPropertyInfo` as a strong reference or owner of a `GDBusPropertyInfo` instance.
///
open class DBusPropertyInfo: DBusPropertyInfoProtocol {
        /// Untyped pointer to the underlying `GDBusPropertyInfo` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_property_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusPropertyInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDBusPropertyInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusPropertyInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDBusPropertyInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusPropertyInfo` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusPropertyInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusPropertyInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDBusPropertyInfo>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusPropertyInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDBusPropertyInfo>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GDBusPropertyInfo`.
    /// i.e., ownership is transferred to the `DBusPropertyInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDBusPropertyInfo>) {
        ptr = UnsafeMutableRawPointer(op)
        g_dbus_property_info_ref(ptr.assumingMemoryBound(to: GDBusPropertyInfo.self))
    }

    /// Reference intialiser for a related type that implements `DBusPropertyInfoProtocol`
    /// Will retain `GDBusPropertyInfo`.
    /// - Parameter other: an instance of a related type that implements `DBusPropertyInfoProtocol`
    @inlinable public init<T: DBusPropertyInfoProtocol>(_ other: T) {
        ptr = other.ptr
        g_dbus_property_info_ref(ptr.assumingMemoryBound(to: GDBusPropertyInfo.self))
    }

    /// Releases the underlying `GDBusPropertyInfo` instance using `g_dbus_property_info_unref`.
    deinit {
        g_dbus_property_info_unref(ptr.assumingMemoryBound(to: GDBusPropertyInfo.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusPropertyInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusPropertyInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_dbus_property_info_ref(ptr.assumingMemoryBound(to: GDBusPropertyInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusPropertyInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusPropertyInfoProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_dbus_property_info_ref(ptr.assumingMemoryBound(to: GDBusPropertyInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusPropertyInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusPropertyInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_dbus_property_info_ref(ptr.assumingMemoryBound(to: GDBusPropertyInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusPropertyInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusPropertyInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_dbus_property_info_ref(ptr.assumingMemoryBound(to: GDBusPropertyInfo.self))
    }



}

// MARK: no DBusPropertyInfo properties

// MARK: no DBusPropertyInfo signals

// MARK: DBusPropertyInfo has no signals
// MARK: DBusPropertyInfo Record: DBusPropertyInfoProtocol extension (methods and fields)
public extension DBusPropertyInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusPropertyInfo` instance.
    @inlinable var dbus_property_info_ptr: UnsafeMutablePointer<GDBusPropertyInfo>! { return ptr?.assumingMemoryBound(to: GDBusPropertyInfo.self) }

    /// If `info` is statically allocated does nothing. Otherwise increases
    /// the reference count.
    @discardableResult @inlinable func ref() -> DBusPropertyInfoRef! {
        guard let rv = DBusPropertyInfoRef(gconstpointer: gconstpointer(g_dbus_property_info_ref(dbus_property_info_ptr))) else { return nil }
        return rv
    }

    /// If `info` is statically allocated, does nothing. Otherwise decreases
    /// the reference count of `info`. When its reference count drops to 0,
    /// the memory used is freed.
    @inlinable func unref() {
        g_dbus_property_info_unref(dbus_property_info_ptr)
    
    }

    /// The reference count or -1 if statically allocated.
    @inlinable var refCount: gint {
        /// The reference count or -1 if statically allocated.
        get {
            let rv = dbus_property_info_ptr.pointee.ref_count
            return rv
        }
        /// The reference count or -1 if statically allocated.
         set {
            dbus_property_info_ptr.pointee.ref_count = newValue
        }
    }

    /// The name of the D-Bus property, e.g. "SupportedFilesystems".
    @inlinable var name: UnsafeMutablePointer<gchar>! {
        /// The name of the D-Bus property, e.g. "SupportedFilesystems".
        get {
            let rv = dbus_property_info_ptr.pointee.name
            return rv
        }
        /// The name of the D-Bus property, e.g. "SupportedFilesystems".
         set {
            dbus_property_info_ptr.pointee.name = newValue
        }
    }

    /// The D-Bus signature of the property (a single complete type).
    @inlinable var signature: UnsafeMutablePointer<gchar>! {
        /// The D-Bus signature of the property (a single complete type).
        get {
            let rv = dbus_property_info_ptr.pointee.signature
            return rv
        }
        /// The D-Bus signature of the property (a single complete type).
         set {
            dbus_property_info_ptr.pointee.signature = newValue
        }
    }

    /// Access control flags for the property.
    @inlinable var flags: DBusPropertyInfoFlags {
        /// Access control flags for the property.
        get {
            let rv = DBusPropertyInfoFlags(dbus_property_info_ptr.pointee.flags)
            return rv
        }
        /// Access control flags for the property.
         set {
            dbus_property_info_ptr.pointee.flags = newValue.value
        }
    }

    /// A pointer to a `nil`-terminated array of pointers to `GDBusAnnotationInfo` structures or `nil` if there are no annotations.
    @inlinable var annotations: UnsafeMutablePointer<UnsafeMutablePointer<GDBusAnnotationInfo>?>! {
        /// A pointer to a `nil`-terminated array of pointers to `GDBusAnnotationInfo` structures or `nil` if there are no annotations.
        get {
            let rv = dbus_property_info_ptr.pointee.annotations
            return rv
        }
        /// A pointer to a `nil`-terminated array of pointers to `GDBusAnnotationInfo` structures or `nil` if there are no annotations.
         set {
            dbus_property_info_ptr.pointee.annotations = newValue
        }
    }

}



/// Metatype/GType declaration for DBusProxy
public extension DBusProxyClassRef {
    
    /// This getter returns the GLib type identifier registered for `DBusProxy`
    static var metatypeReference: GType { g_dbus_proxy_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GDBusProxyClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GDBusProxyClass.self) }
    
    static var metatype: GDBusProxyClass? { metatypePointer?.pointee } 
    
    static var wrapper: DBusProxyClassRef? { DBusProxyClassRef(metatypePointer) }
    
    
}

// MARK: - DBusProxyClass Record

/// Class structure for `GDBusProxy`.
///
/// The `DBusProxyClassProtocol` protocol exposes the methods and properties of an underlying `GDBusProxyClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusProxyClass`.
/// Alternatively, use `DBusProxyClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DBusProxyClassProtocol {
        /// Untyped pointer to the underlying `GDBusProxyClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusProxyClass` instance.
    var _ptr: UnsafeMutablePointer<GDBusProxyClass>! { get }

    /// Required Initialiser for types conforming to `DBusProxyClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Class structure for `GDBusProxy`.
///
/// The `DBusProxyClassRef` type acts as a lightweight Swift reference to an underlying `GDBusProxyClass` instance.
/// It exposes methods that can operate on this data type through `DBusProxyClassProtocol` conformance.
/// Use `DBusProxyClassRef` only as an `unowned` reference to an existing `GDBusProxyClass` instance.
///
public struct DBusProxyClassRef: DBusProxyClassProtocol {
        /// Untyped pointer to the underlying `GDBusProxyClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusProxyClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusProxyClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusProxyClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusProxyClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusProxyClass>?) {
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

    /// Reference intialiser for a related type that implements `DBusProxyClassProtocol`
    @inlinable init<T: DBusProxyClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusProxyClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: DBusProxyClass Record: DBusProxyClassProtocol extension (methods and fields)
public extension DBusProxyClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusProxyClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GDBusProxyClass>! { return ptr?.assumingMemoryBound(to: GDBusProxyClass.self) }


    // var parentClass is unavailable because parent_class is private

    // var gPropertiesChanged is unavailable because g_properties_changed is void

    // var gSignal is unavailable because g_signal is void

    // var padding is unavailable because padding is private

}



// MARK: - DBusSignalInfo Record

/// Information about a signal on a D-Bus interface.
///
/// The `DBusSignalInfoProtocol` protocol exposes the methods and properties of an underlying `GDBusSignalInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusSignalInfo`.
/// Alternatively, use `DBusSignalInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DBusSignalInfoProtocol {
        /// Untyped pointer to the underlying `GDBusSignalInfo` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusSignalInfo` instance.
    var dbus_signal_info_ptr: UnsafeMutablePointer<GDBusSignalInfo>! { get }

    /// Required Initialiser for types conforming to `DBusSignalInfoProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Information about a signal on a D-Bus interface.
///
/// The `DBusSignalInfoRef` type acts as a lightweight Swift reference to an underlying `GDBusSignalInfo` instance.
/// It exposes methods that can operate on this data type through `DBusSignalInfoProtocol` conformance.
/// Use `DBusSignalInfoRef` only as an `unowned` reference to an existing `GDBusSignalInfo` instance.
///
public struct DBusSignalInfoRef: DBusSignalInfoProtocol {
        /// Untyped pointer to the underlying `GDBusSignalInfo` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_signal_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusSignalInfoRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusSignalInfo>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusSignalInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusSignalInfo>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusSignalInfo>?) {
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

    /// Reference intialiser for a related type that implements `DBusSignalInfoProtocol`
    @inlinable init<T: DBusSignalInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSignalInfoProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSignalInfoProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSignalInfoProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSignalInfoProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSignalInfoProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// Information about a signal on a D-Bus interface.
///
/// The `DBusSignalInfo` type acts as a reference-counted owner of an underlying `GDBusSignalInfo` instance.
/// It provides the methods that can operate on this data type through `DBusSignalInfoProtocol` conformance.
/// Use `DBusSignalInfo` as a strong reference or owner of a `GDBusSignalInfo` instance.
///
open class DBusSignalInfo: DBusSignalInfoProtocol {
        /// Untyped pointer to the underlying `GDBusSignalInfo` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_signal_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusSignalInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDBusSignalInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusSignalInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDBusSignalInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusSignalInfo` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusSignalInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusSignalInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDBusSignalInfo>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusSignalInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDBusSignalInfo>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GDBusSignalInfo`.
    /// i.e., ownership is transferred to the `DBusSignalInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDBusSignalInfo>) {
        ptr = UnsafeMutableRawPointer(op)
        g_dbus_signal_info_ref(ptr.assumingMemoryBound(to: GDBusSignalInfo.self))
    }

    /// Reference intialiser for a related type that implements `DBusSignalInfoProtocol`
    /// Will retain `GDBusSignalInfo`.
    /// - Parameter other: an instance of a related type that implements `DBusSignalInfoProtocol`
    @inlinable public init<T: DBusSignalInfoProtocol>(_ other: T) {
        ptr = other.ptr
        g_dbus_signal_info_ref(ptr.assumingMemoryBound(to: GDBusSignalInfo.self))
    }

    /// Releases the underlying `GDBusSignalInfo` instance using `g_dbus_signal_info_unref`.
    deinit {
        g_dbus_signal_info_unref(ptr.assumingMemoryBound(to: GDBusSignalInfo.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSignalInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSignalInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_dbus_signal_info_ref(ptr.assumingMemoryBound(to: GDBusSignalInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSignalInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSignalInfoProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_dbus_signal_info_ref(ptr.assumingMemoryBound(to: GDBusSignalInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSignalInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSignalInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_dbus_signal_info_ref(ptr.assumingMemoryBound(to: GDBusSignalInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSignalInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSignalInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_dbus_signal_info_ref(ptr.assumingMemoryBound(to: GDBusSignalInfo.self))
    }



}

// MARK: no DBusSignalInfo properties

// MARK: no DBusSignalInfo signals

// MARK: DBusSignalInfo has no signals
// MARK: DBusSignalInfo Record: DBusSignalInfoProtocol extension (methods and fields)
public extension DBusSignalInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusSignalInfo` instance.
    @inlinable var dbus_signal_info_ptr: UnsafeMutablePointer<GDBusSignalInfo>! { return ptr?.assumingMemoryBound(to: GDBusSignalInfo.self) }

    /// If `info` is statically allocated does nothing. Otherwise increases
    /// the reference count.
    @discardableResult @inlinable func ref() -> DBusSignalInfoRef! {
        guard let rv = DBusSignalInfoRef(gconstpointer: gconstpointer(g_dbus_signal_info_ref(dbus_signal_info_ptr))) else { return nil }
        return rv
    }

    /// If `info` is statically allocated, does nothing. Otherwise decreases
    /// the reference count of `info`. When its reference count drops to 0,
    /// the memory used is freed.
    @inlinable func unref() {
        g_dbus_signal_info_unref(dbus_signal_info_ptr)
    
    }

    /// The reference count or -1 if statically allocated.
    @inlinable var refCount: gint {
        /// The reference count or -1 if statically allocated.
        get {
            let rv = dbus_signal_info_ptr.pointee.ref_count
            return rv
        }
        /// The reference count or -1 if statically allocated.
         set {
            dbus_signal_info_ptr.pointee.ref_count = newValue
        }
    }

    /// The name of the D-Bus signal, e.g. "NameOwnerChanged".
    @inlinable var name: UnsafeMutablePointer<gchar>! {
        /// The name of the D-Bus signal, e.g. "NameOwnerChanged".
        get {
            let rv = dbus_signal_info_ptr.pointee.name
            return rv
        }
        /// The name of the D-Bus signal, e.g. "NameOwnerChanged".
         set {
            dbus_signal_info_ptr.pointee.name = newValue
        }
    }

    /// A pointer to a `nil`-terminated array of pointers to `GDBusArgInfo` structures or `nil` if there are no arguments.
    @inlinable var args: UnsafeMutablePointer<UnsafeMutablePointer<GDBusArgInfo>?>! {
        /// A pointer to a `nil`-terminated array of pointers to `GDBusArgInfo` structures or `nil` if there are no arguments.
        get {
            let rv = dbus_signal_info_ptr.pointee.args
            return rv
        }
        /// A pointer to a `nil`-terminated array of pointers to `GDBusArgInfo` structures or `nil` if there are no arguments.
         set {
            dbus_signal_info_ptr.pointee.args = newValue
        }
    }

    /// A pointer to a `nil`-terminated array of pointers to `GDBusAnnotationInfo` structures or `nil` if there are no annotations.
    @inlinable var annotations: UnsafeMutablePointer<UnsafeMutablePointer<GDBusAnnotationInfo>?>! {
        /// A pointer to a `nil`-terminated array of pointers to `GDBusAnnotationInfo` structures or `nil` if there are no annotations.
        get {
            let rv = dbus_signal_info_ptr.pointee.annotations
            return rv
        }
        /// A pointer to a `nil`-terminated array of pointers to `GDBusAnnotationInfo` structures or `nil` if there are no annotations.
         set {
            dbus_signal_info_ptr.pointee.annotations = newValue
        }
    }

}



// MARK: - DBusSubtreeVTable Record

/// Virtual table for handling subtrees registered with `g_dbus_connection_register_subtree()`.
///
/// The `DBusSubtreeVTableProtocol` protocol exposes the methods and properties of an underlying `GDBusSubtreeVTable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusSubtreeVTable`.
/// Alternatively, use `DBusSubtreeVTableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DBusSubtreeVTableProtocol {
        /// Untyped pointer to the underlying `GDBusSubtreeVTable` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusSubtreeVTable` instance.
    var _ptr: UnsafeMutablePointer<GDBusSubtreeVTable>! { get }

    /// Required Initialiser for types conforming to `DBusSubtreeVTableProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Virtual table for handling subtrees registered with `g_dbus_connection_register_subtree()`.
///
/// The `DBusSubtreeVTableRef` type acts as a lightweight Swift reference to an underlying `GDBusSubtreeVTable` instance.
/// It exposes methods that can operate on this data type through `DBusSubtreeVTableProtocol` conformance.
/// Use `DBusSubtreeVTableRef` only as an `unowned` reference to an existing `GDBusSubtreeVTable` instance.
///
public struct DBusSubtreeVTableRef: DBusSubtreeVTableProtocol {
        /// Untyped pointer to the underlying `GDBusSubtreeVTable` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusSubtreeVTableRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusSubtreeVTable>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusSubtreeVTable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusSubtreeVTable>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusSubtreeVTable>?) {
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

    /// Reference intialiser for a related type that implements `DBusSubtreeVTableProtocol`
    @inlinable init<T: DBusSubtreeVTableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSubtreeVTableProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSubtreeVTableProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSubtreeVTableProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSubtreeVTableProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSubtreeVTableProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// Virtual table for handling subtrees registered with `g_dbus_connection_register_subtree()`.
///
/// The `DBusSubtreeVTable` type acts as an owner of an underlying `GDBusSubtreeVTable` instance.
/// It provides the methods that can operate on this data type through `DBusSubtreeVTableProtocol` conformance.
/// Use `DBusSubtreeVTable` as a strong reference or owner of a `GDBusSubtreeVTable` instance.
///
open class DBusSubtreeVTable: DBusSubtreeVTableProtocol {
        /// Untyped pointer to the underlying `GDBusSubtreeVTable` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusSubtreeVTable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDBusSubtreeVTable>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusSubtreeVTable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDBusSubtreeVTable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusSubtreeVTable` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusSubtreeVTable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusSubtreeVTable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDBusSubtreeVTable>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusSubtreeVTable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDBusSubtreeVTable>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GDBusSubtreeVTable` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `DBusSubtreeVTable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDBusSubtreeVTable>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GDBusSubtreeVTable, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `DBusSubtreeVTableProtocol`
    /// `GDBusSubtreeVTable` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `DBusSubtreeVTableProtocol`
    @inlinable public init<T: DBusSubtreeVTableProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GDBusSubtreeVTable, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GDBusSubtreeVTable`.
    deinit {
        // no reference counting for GDBusSubtreeVTable, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSubtreeVTableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSubtreeVTableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GDBusSubtreeVTable, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSubtreeVTableProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSubtreeVTableProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GDBusSubtreeVTable, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSubtreeVTableProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSubtreeVTableProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GDBusSubtreeVTable, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSubtreeVTableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusSubtreeVTableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GDBusSubtreeVTable, cannot ref(_ptr)
    }



}

// MARK: no DBusSubtreeVTable properties

// MARK: no DBusSubtreeVTable signals

// MARK: DBusSubtreeVTable has no signals
// MARK: DBusSubtreeVTable Record: DBusSubtreeVTableProtocol extension (methods and fields)
public extension DBusSubtreeVTableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusSubtreeVTable` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GDBusSubtreeVTable>! { return ptr?.assumingMemoryBound(to: GDBusSubtreeVTable.self) }


    /// Function for enumerating child nodes.
    @inlinable var enumerate: GDBusSubtreeEnumerateFunc! {
        /// Function for enumerating child nodes.
        get {
            let rv = _ptr.pointee.enumerate
            return rv
        }
        /// Function for enumerating child nodes.
         set {
            _ptr.pointee.enumerate = newValue
        }
    }

    /// Function for introspecting a child node.
    @inlinable var introspect: GDBusSubtreeIntrospectFunc! {
        /// Function for introspecting a child node.
        get {
            let rv = _ptr.pointee.introspect
            return rv
        }
        /// Function for introspecting a child node.
         set {
            _ptr.pointee.introspect = newValue
        }
    }

    /// Function for dispatching a remote call on a child node.
    @inlinable var dispatch: GDBusSubtreeDispatchFunc! {
        /// Function for dispatching a remote call on a child node.
        get {
            let rv = _ptr.pointee.dispatch
            return rv
        }
        /// Function for dispatching a remote call on a child node.
         set {
            _ptr.pointee.dispatch = newValue
        }
    }

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for DataInputStream
public extension DataInputStreamClassRef {
    
    /// This getter returns the GLib type identifier registered for `DataInputStream`
    static var metatypeReference: GType { g_data_input_stream_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GDataInputStreamClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GDataInputStreamClass.self) }
    
    static var metatype: GDataInputStreamClass? { metatypePointer?.pointee } 
    
    static var wrapper: DataInputStreamClassRef? { DataInputStreamClassRef(metatypePointer) }
    
    
}

// MARK: - DataInputStreamClass Record


///
/// The `DataInputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GDataInputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DataInputStreamClass`.
/// Alternatively, use `DataInputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DataInputStreamClassProtocol {
        /// Untyped pointer to the underlying `GDataInputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDataInputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GDataInputStreamClass>! { get }

    /// Required Initialiser for types conforming to `DataInputStreamClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `DataInputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GDataInputStreamClass` instance.
/// It exposes methods that can operate on this data type through `DataInputStreamClassProtocol` conformance.
/// Use `DataInputStreamClassRef` only as an `unowned` reference to an existing `GDataInputStreamClass` instance.
///
public struct DataInputStreamClassRef: DataInputStreamClassProtocol {
        /// Untyped pointer to the underlying `GDataInputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DataInputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDataInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDataInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDataInputStreamClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDataInputStreamClass>?) {
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

    /// Reference intialiser for a related type that implements `DataInputStreamClassProtocol`
    @inlinable init<T: DataInputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataInputStreamClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: DataInputStreamClass Record: DataInputStreamClassProtocol extension (methods and fields)
public extension DataInputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDataInputStreamClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GDataInputStreamClass>! { return ptr?.assumingMemoryBound(to: GDataInputStreamClass.self) }


    @inlinable var parentClass: GBufferedInputStreamClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

    // var GReserved4 is unavailable because _g_reserved4 is void

    // var GReserved5 is unavailable because _g_reserved5 is void

}



/// Metatype/GType declaration for DataOutputStream
public extension DataOutputStreamClassRef {
    
    /// This getter returns the GLib type identifier registered for `DataOutputStream`
    static var metatypeReference: GType { g_data_output_stream_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GDataOutputStreamClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GDataOutputStreamClass.self) }
    
    static var metatype: GDataOutputStreamClass? { metatypePointer?.pointee } 
    
    static var wrapper: DataOutputStreamClassRef? { DataOutputStreamClassRef(metatypePointer) }
    
    
}

// MARK: - DataOutputStreamClass Record


///
/// The `DataOutputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GDataOutputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DataOutputStreamClass`.
/// Alternatively, use `DataOutputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DataOutputStreamClassProtocol {
        /// Untyped pointer to the underlying `GDataOutputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDataOutputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GDataOutputStreamClass>! { get }

    /// Required Initialiser for types conforming to `DataOutputStreamClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `DataOutputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GDataOutputStreamClass` instance.
/// It exposes methods that can operate on this data type through `DataOutputStreamClassProtocol` conformance.
/// Use `DataOutputStreamClassRef` only as an `unowned` reference to an existing `GDataOutputStreamClass` instance.
///
public struct DataOutputStreamClassRef: DataOutputStreamClassProtocol {
        /// Untyped pointer to the underlying `GDataOutputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DataOutputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDataOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDataOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDataOutputStreamClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDataOutputStreamClass>?) {
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

    /// Reference intialiser for a related type that implements `DataOutputStreamClassProtocol`
    @inlinable init<T: DataOutputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DataOutputStreamClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: DataOutputStreamClass Record: DataOutputStreamClassProtocol extension (methods and fields)
public extension DataOutputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDataOutputStreamClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GDataOutputStreamClass>! { return ptr?.assumingMemoryBound(to: GDataOutputStreamClass.self) }


    @inlinable var parentClass: GFilterOutputStreamClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

    // var GReserved4 is unavailable because _g_reserved4 is void

    // var GReserved5 is unavailable because _g_reserved5 is void

}



/// Metatype/GType declaration for DatagramBased
public extension DatagramBasedInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `DatagramBased`
    static var metatypeReference: GType { g_datagram_based_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GDatagramBasedInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GDatagramBasedInterface.self) }
    
    static var metatype: GDatagramBasedInterface? { metatypePointer?.pointee } 
    
    static var wrapper: DatagramBasedInterfaceRef? { DatagramBasedInterfaceRef(metatypePointer) }
    
    
}

// MARK: - DatagramBasedInterface Record

/// Provides an interface for socket-like objects which have datagram semantics,
/// following the Berkeley sockets API. The interface methods are thin wrappers
/// around the corresponding virtual methods, and no pre-processing of inputs is
/// implemented — so implementations of this API must handle all functionality
/// documented in the interface methods.
///
/// The `DatagramBasedInterfaceProtocol` protocol exposes the methods and properties of an underlying `GDatagramBasedInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DatagramBasedInterface`.
/// Alternatively, use `DatagramBasedInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DatagramBasedInterfaceProtocol {
        /// Untyped pointer to the underlying `GDatagramBasedInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDatagramBasedInterface` instance.
    var _ptr: UnsafeMutablePointer<GDatagramBasedInterface>! { get }

    /// Required Initialiser for types conforming to `DatagramBasedInterfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Provides an interface for socket-like objects which have datagram semantics,
/// following the Berkeley sockets API. The interface methods are thin wrappers
/// around the corresponding virtual methods, and no pre-processing of inputs is
/// implemented — so implementations of this API must handle all functionality
/// documented in the interface methods.
///
/// The `DatagramBasedInterfaceRef` type acts as a lightweight Swift reference to an underlying `GDatagramBasedInterface` instance.
/// It exposes methods that can operate on this data type through `DatagramBasedInterfaceProtocol` conformance.
/// Use `DatagramBasedInterfaceRef` only as an `unowned` reference to an existing `GDatagramBasedInterface` instance.
///
public struct DatagramBasedInterfaceRef: DatagramBasedInterfaceProtocol {
        /// Untyped pointer to the underlying `GDatagramBasedInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DatagramBasedInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDatagramBasedInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDatagramBasedInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDatagramBasedInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDatagramBasedInterface>?) {
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

    /// Reference intialiser for a related type that implements `DatagramBasedInterfaceProtocol`
    @inlinable init<T: DatagramBasedInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DatagramBasedInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: DatagramBasedInterface Record: DatagramBasedInterfaceProtocol extension (methods and fields)
public extension DatagramBasedInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDatagramBasedInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GDatagramBasedInterface>! { return ptr?.assumingMemoryBound(to: GDatagramBasedInterface.self) }


    /// The parent interface.
    @inlinable var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var receiveMessages is unavailable because receive_messages is void

    // var sendMessages is unavailable because send_messages is void

    // var createSource is unavailable because create_source is void

    // var conditionCheck is unavailable because condition_check is void

    // var conditionWait is unavailable because condition_wait is void

}



/// Metatype/GType declaration for Drive
public extension DriveIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `Drive`
    static var metatypeReference: GType { g_drive_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GDriveIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GDriveIface.self) }
    
    static var metatype: GDriveIface? { metatypePointer?.pointee } 
    
    static var wrapper: DriveIfaceRef? { DriveIfaceRef(metatypePointer) }
    
    
}

// MARK: - DriveIface Record

/// Interface for creating `GDrive` implementations.
///
/// The `DriveIfaceProtocol` protocol exposes the methods and properties of an underlying `GDriveIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DriveIface`.
/// Alternatively, use `DriveIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DriveIfaceProtocol {
        /// Untyped pointer to the underlying `GDriveIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDriveIface` instance.
    var _ptr: UnsafeMutablePointer<GDriveIface>! { get }

    /// Required Initialiser for types conforming to `DriveIfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Interface for creating `GDrive` implementations.
///
/// The `DriveIfaceRef` type acts as a lightweight Swift reference to an underlying `GDriveIface` instance.
/// It exposes methods that can operate on this data type through `DriveIfaceProtocol` conformance.
/// Use `DriveIfaceRef` only as an `unowned` reference to an existing `GDriveIface` instance.
///
public struct DriveIfaceRef: DriveIfaceProtocol {
        /// Untyped pointer to the underlying `GDriveIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DriveIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDriveIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDriveIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDriveIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDriveIface>?) {
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

    /// Reference intialiser for a related type that implements `DriveIfaceProtocol`
    @inlinable init<T: DriveIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DriveIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: DriveIface Record: DriveIfaceProtocol extension (methods and fields)
public extension DriveIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDriveIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GDriveIface>! { return ptr?.assumingMemoryBound(to: GDriveIface.self) }


    /// The parent interface.
    @inlinable var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var changed is unavailable because changed is void

    // var disconnected is unavailable because disconnected is void

    // var ejectButton is unavailable because eject_button is void

    // var getName is unavailable because get_name is void

    // var getIcon is unavailable because get_icon is void

    // var hasVolumes is unavailable because has_volumes is void

    // var getVolumes is unavailable because get_volumes is void

    // var isMediaRemovable is unavailable because is_media_removable is void

    // var hasMedia is unavailable because has_media is void

    // var isMediaCheckAutomatic is unavailable because is_media_check_automatic is void

    // var canEject is unavailable because can_eject is void

    // var canPollForMedia is unavailable because can_poll_for_media is void

    // var eject is unavailable because eject is void

    // var ejectFinish is unavailable because eject_finish is void

    // var pollForMedia is unavailable because poll_for_media is void

    // var pollForMediaFinish is unavailable because poll_for_media_finish is void

    // var getIdentifier is unavailable because get_identifier is void

    // var enumerateIdentifiers is unavailable because enumerate_identifiers is void

    // var getStartStopType is unavailable because get_start_stop_type is void

    // var canStart is unavailable because can_start is void

    // var canStartDegraded is unavailable because can_start_degraded is void

    // var start is unavailable because start is void

    // var startFinish is unavailable because start_finish is void

    // var canStop is unavailable because can_stop is void

    // var stop is unavailable because stop is void

    // var stopFinish is unavailable because stop_finish is void

    // var stopButton is unavailable because stop_button is void

    // var ejectWithOperation is unavailable because eject_with_operation is void

    // var ejectWithOperationFinish is unavailable because eject_with_operation_finish is void

    // var getSortKey is unavailable because get_sort_key is void

    // var getSymbolicIcon is unavailable because get_symbolic_icon is void

    // var isRemovable is unavailable because is_removable is void

}



/// Metatype/GType declaration for DtlsClientConnection
public extension DtlsClientConnectionInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `DtlsClientConnection`
    static var metatypeReference: GType { g_dtls_client_connection_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GDtlsClientConnectionInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GDtlsClientConnectionInterface.self) }
    
    static var metatype: GDtlsClientConnectionInterface? { metatypePointer?.pointee } 
    
    static var wrapper: DtlsClientConnectionInterfaceRef? { DtlsClientConnectionInterfaceRef(metatypePointer) }
    
    
}

// MARK: - DtlsClientConnectionInterface Record

/// vtable for a `GDtlsClientConnection` implementation.
///
/// The `DtlsClientConnectionInterfaceProtocol` protocol exposes the methods and properties of an underlying `GDtlsClientConnectionInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DtlsClientConnectionInterface`.
/// Alternatively, use `DtlsClientConnectionInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DtlsClientConnectionInterfaceProtocol {
        /// Untyped pointer to the underlying `GDtlsClientConnectionInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDtlsClientConnectionInterface` instance.
    var _ptr: UnsafeMutablePointer<GDtlsClientConnectionInterface>! { get }

    /// Required Initialiser for types conforming to `DtlsClientConnectionInterfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// vtable for a `GDtlsClientConnection` implementation.
///
/// The `DtlsClientConnectionInterfaceRef` type acts as a lightweight Swift reference to an underlying `GDtlsClientConnectionInterface` instance.
/// It exposes methods that can operate on this data type through `DtlsClientConnectionInterfaceProtocol` conformance.
/// Use `DtlsClientConnectionInterfaceRef` only as an `unowned` reference to an existing `GDtlsClientConnectionInterface` instance.
///
public struct DtlsClientConnectionInterfaceRef: DtlsClientConnectionInterfaceProtocol {
        /// Untyped pointer to the underlying `GDtlsClientConnectionInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DtlsClientConnectionInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDtlsClientConnectionInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDtlsClientConnectionInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDtlsClientConnectionInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDtlsClientConnectionInterface>?) {
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

    /// Reference intialiser for a related type that implements `DtlsClientConnectionInterfaceProtocol`
    @inlinable init<T: DtlsClientConnectionInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsClientConnectionInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: DtlsClientConnectionInterface Record: DtlsClientConnectionInterfaceProtocol extension (methods and fields)
public extension DtlsClientConnectionInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDtlsClientConnectionInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GDtlsClientConnectionInterface>! { return ptr?.assumingMemoryBound(to: GDtlsClientConnectionInterface.self) }


    /// The parent interface.
    @inlinable var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

}



/// Metatype/GType declaration for DtlsConnection
public extension DtlsConnectionInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `DtlsConnection`
    static var metatypeReference: GType { g_dtls_connection_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GDtlsConnectionInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GDtlsConnectionInterface.self) }
    
    static var metatype: GDtlsConnectionInterface? { metatypePointer?.pointee } 
    
    static var wrapper: DtlsConnectionInterfaceRef? { DtlsConnectionInterfaceRef(metatypePointer) }
    
    
}

// MARK: - DtlsConnectionInterface Record

/// Virtual method table for a `GDtlsConnection` implementation.
///
/// The `DtlsConnectionInterfaceProtocol` protocol exposes the methods and properties of an underlying `GDtlsConnectionInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DtlsConnectionInterface`.
/// Alternatively, use `DtlsConnectionInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DtlsConnectionInterfaceProtocol {
        /// Untyped pointer to the underlying `GDtlsConnectionInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDtlsConnectionInterface` instance.
    var _ptr: UnsafeMutablePointer<GDtlsConnectionInterface>! { get }

    /// Required Initialiser for types conforming to `DtlsConnectionInterfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Virtual method table for a `GDtlsConnection` implementation.
///
/// The `DtlsConnectionInterfaceRef` type acts as a lightweight Swift reference to an underlying `GDtlsConnectionInterface` instance.
/// It exposes methods that can operate on this data type through `DtlsConnectionInterfaceProtocol` conformance.
/// Use `DtlsConnectionInterfaceRef` only as an `unowned` reference to an existing `GDtlsConnectionInterface` instance.
///
public struct DtlsConnectionInterfaceRef: DtlsConnectionInterfaceProtocol {
        /// Untyped pointer to the underlying `GDtlsConnectionInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DtlsConnectionInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDtlsConnectionInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDtlsConnectionInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDtlsConnectionInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDtlsConnectionInterface>?) {
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

    /// Reference intialiser for a related type that implements `DtlsConnectionInterfaceProtocol`
    @inlinable init<T: DtlsConnectionInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsConnectionInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: DtlsConnectionInterface Record: DtlsConnectionInterfaceProtocol extension (methods and fields)
public extension DtlsConnectionInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDtlsConnectionInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GDtlsConnectionInterface>! { return ptr?.assumingMemoryBound(to: GDtlsConnectionInterface.self) }


    /// The parent interface.
    @inlinable var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var acceptCertificate is unavailable because accept_certificate is void

    // var handshake is unavailable because handshake is void

    // var handshakeAsync is unavailable because handshake_async is void

    // var handshakeFinish is unavailable because handshake_finish is void

    // var shutdown is unavailable because shutdown is void

    // var shutdownAsync is unavailable because shutdown_async is void

    // var shutdownFinish is unavailable because shutdown_finish is void

    // var setAdvertisedProtocols is unavailable because set_advertised_protocols is void

    // var getNegotiatedProtocol is unavailable because get_negotiated_protocol is void

    // var getBindingData is unavailable because get_binding_data is void

}



/// Metatype/GType declaration for DtlsServerConnection
public extension DtlsServerConnectionInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `DtlsServerConnection`
    static var metatypeReference: GType { g_dtls_server_connection_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GDtlsServerConnectionInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GDtlsServerConnectionInterface.self) }
    
    static var metatype: GDtlsServerConnectionInterface? { metatypePointer?.pointee } 
    
    static var wrapper: DtlsServerConnectionInterfaceRef? { DtlsServerConnectionInterfaceRef(metatypePointer) }
    
    
}

// MARK: - DtlsServerConnectionInterface Record

/// vtable for a `GDtlsServerConnection` implementation.
///
/// The `DtlsServerConnectionInterfaceProtocol` protocol exposes the methods and properties of an underlying `GDtlsServerConnectionInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DtlsServerConnectionInterface`.
/// Alternatively, use `DtlsServerConnectionInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol DtlsServerConnectionInterfaceProtocol {
        /// Untyped pointer to the underlying `GDtlsServerConnectionInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDtlsServerConnectionInterface` instance.
    var _ptr: UnsafeMutablePointer<GDtlsServerConnectionInterface>! { get }

    /// Required Initialiser for types conforming to `DtlsServerConnectionInterfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// vtable for a `GDtlsServerConnection` implementation.
///
/// The `DtlsServerConnectionInterfaceRef` type acts as a lightweight Swift reference to an underlying `GDtlsServerConnectionInterface` instance.
/// It exposes methods that can operate on this data type through `DtlsServerConnectionInterfaceProtocol` conformance.
/// Use `DtlsServerConnectionInterfaceRef` only as an `unowned` reference to an existing `GDtlsServerConnectionInterface` instance.
///
public struct DtlsServerConnectionInterfaceRef: DtlsServerConnectionInterfaceProtocol {
        /// Untyped pointer to the underlying `GDtlsServerConnectionInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DtlsServerConnectionInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDtlsServerConnectionInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDtlsServerConnectionInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDtlsServerConnectionInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDtlsServerConnectionInterface>?) {
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

    /// Reference intialiser for a related type that implements `DtlsServerConnectionInterfaceProtocol`
    @inlinable init<T: DtlsServerConnectionInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DtlsServerConnectionInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: DtlsServerConnectionInterface Record: DtlsServerConnectionInterfaceProtocol extension (methods and fields)
public extension DtlsServerConnectionInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDtlsServerConnectionInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GDtlsServerConnectionInterface>! { return ptr?.assumingMemoryBound(to: GDtlsServerConnectionInterface.self) }


    /// The parent interface.
    @inlinable var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

}



/// Metatype/GType declaration for Emblem
public extension EmblemClassRef {
    
    /// This getter returns the GLib type identifier registered for `Emblem`
    static var metatypeReference: GType { g_emblem_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GEmblemClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GEmblemClass.self) }
    
    static var metatype: GEmblemClass? { metatypePointer?.pointee } 
    
    static var wrapper: EmblemClassRef? { EmblemClassRef(metatypePointer) }
    
    
}

// MARK: - EmblemClass Record


///
/// The `EmblemClassProtocol` protocol exposes the methods and properties of an underlying `GEmblemClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EmblemClass`.
/// Alternatively, use `EmblemClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol EmblemClassProtocol {
        /// Untyped pointer to the underlying `GEmblemClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GEmblemClass` instance.
    var _ptr: UnsafeMutablePointer<GEmblemClass>! { get }

    /// Required Initialiser for types conforming to `EmblemClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `EmblemClassRef` type acts as a lightweight Swift reference to an underlying `GEmblemClass` instance.
/// It exposes methods that can operate on this data type through `EmblemClassProtocol` conformance.
/// Use `EmblemClassRef` only as an `unowned` reference to an existing `GEmblemClass` instance.
///
public struct EmblemClassRef: EmblemClassProtocol {
        /// Untyped pointer to the underlying `GEmblemClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EmblemClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GEmblemClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GEmblemClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GEmblemClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GEmblemClass>?) {
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

    /// Reference intialiser for a related type that implements `EmblemClassProtocol`
    @inlinable init<T: EmblemClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: EmblemClass Record: EmblemClassProtocol extension (methods and fields)
public extension EmblemClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GEmblemClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GEmblemClass>! { return ptr?.assumingMemoryBound(to: GEmblemClass.self) }



}



