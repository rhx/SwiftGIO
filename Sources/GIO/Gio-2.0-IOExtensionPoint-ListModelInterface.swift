import CGLib
import GLib
import GLibObject

// MARK: - IOExtensionPoint Record

/// `GIOExtensionPoint` is an opaque data structure and can only be accessed
/// using the following functions.
///
/// The `IOExtensionPointProtocol` protocol exposes the methods and properties of an underlying `GIOExtensionPoint` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IOExtensionPoint`.
/// Alternatively, use `IOExtensionPointRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol IOExtensionPointProtocol {
        /// Untyped pointer to the underlying `GIOExtensionPoint` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GIOExtensionPoint` instance.
    var _ptr: UnsafeMutablePointer<GIOExtensionPoint>! { get }

    /// Required Initialiser for types conforming to `IOExtensionPointProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GIOExtensionPoint` is an opaque data structure and can only be accessed
/// using the following functions.
///
/// The `IOExtensionPointRef` type acts as a lightweight Swift reference to an underlying `GIOExtensionPoint` instance.
/// It exposes methods that can operate on this data type through `IOExtensionPointProtocol` conformance.
/// Use `IOExtensionPointRef` only as an `unowned` reference to an existing `GIOExtensionPoint` instance.
///
public struct IOExtensionPointRef: IOExtensionPointProtocol {
        /// Untyped pointer to the underlying `GIOExtensionPoint` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IOExtensionPointRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GIOExtensionPoint>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GIOExtensionPoint>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GIOExtensionPoint>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GIOExtensionPoint>?) {
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

    /// Reference intialiser for a related type that implements `IOExtensionPointProtocol`
    @inlinable init<T: IOExtensionPointProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionPointProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionPointProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionPointProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionPointProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionPointProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Looks up an existing extension point.
    @inlinable static func lookup(name: UnsafePointer<CChar>!) -> IOExtensionPointRef! {
        guard let rv = IOExtensionPointRef(gconstpointer: gconstpointer(g_io_extension_point_lookup(name))) else { return nil }
        return rv
    }

    /// Registers an extension point.
    @inlinable static func register(name: UnsafePointer<CChar>!) -> IOExtensionPointRef! {
        guard let rv = IOExtensionPointRef(gconstpointer: gconstpointer(g_io_extension_point_register(name))) else { return nil }
        return rv
    }
}

/// `GIOExtensionPoint` is an opaque data structure and can only be accessed
/// using the following functions.
///
/// The `IOExtensionPoint` type acts as an owner of an underlying `GIOExtensionPoint` instance.
/// It provides the methods that can operate on this data type through `IOExtensionPointProtocol` conformance.
/// Use `IOExtensionPoint` as a strong reference or owner of a `GIOExtensionPoint` instance.
///
open class IOExtensionPoint: IOExtensionPointProtocol {
        /// Untyped pointer to the underlying `GIOExtensionPoint` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOExtensionPoint` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GIOExtensionPoint>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOExtensionPoint` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GIOExtensionPoint>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOExtensionPoint` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOExtensionPoint` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOExtensionPoint` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GIOExtensionPoint>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOExtensionPoint` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GIOExtensionPoint>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GIOExtensionPoint` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `IOExtensionPoint` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GIOExtensionPoint>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GIOExtensionPoint, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `IOExtensionPointProtocol`
    /// `GIOExtensionPoint` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `IOExtensionPointProtocol`
    @inlinable public init<T: IOExtensionPointProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GIOExtensionPoint, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GIOExtensionPoint`.
    deinit {
        // no reference counting for GIOExtensionPoint, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionPointProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionPointProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GIOExtensionPoint, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionPointProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionPointProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GIOExtensionPoint, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionPointProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionPointProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GIOExtensionPoint, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionPointProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionPointProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GIOExtensionPoint, cannot ref(_ptr)
    }


    /// Looks up an existing extension point.
    @inlinable public static func lookup(name: UnsafePointer<CChar>!) -> IOExtensionPoint! {
        guard let rv = IOExtensionPoint(gconstpointer: gconstpointer(g_io_extension_point_lookup(name))) else { return nil }
        return rv
    }

    /// Registers an extension point.
    @inlinable public static func register(name: UnsafePointer<CChar>!) -> IOExtensionPoint! {
        guard let rv = IOExtensionPoint(gconstpointer: gconstpointer(g_io_extension_point_register(name))) else { return nil }
        return rv
    }

}

// MARK: no IOExtensionPoint properties

// MARK: no IOExtensionPoint signals

// MARK: IOExtensionPoint has no signals
// MARK: IOExtensionPoint Record: IOExtensionPointProtocol extension (methods and fields)
public extension IOExtensionPointProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GIOExtensionPoint` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GIOExtensionPoint>! { return ptr?.assumingMemoryBound(to: GIOExtensionPoint.self) }

    /// Finds a `GIOExtension` for an extension point by name.
    @inlinable func getExtensionBy(name: UnsafePointer<CChar>!) -> IOExtensionRef! {
        let rv = IOExtensionRef(gconstpointer: gconstpointer(g_io_extension_point_get_extension_by_name(_ptr, name)))
        return rv
    }

    /// Gets a list of all extensions that implement this extension point.
    /// The list is sorted by priority, beginning with the highest priority.
    @inlinable func getExtensions() -> GLib.ListRef! {
        let rv = GLib.ListRef(g_io_extension_point_get_extensions(_ptr))
        return rv
    }

    /// Gets the required type for `extension_point`.
    @inlinable func getRequiredType() -> GType {
        let rv = g_io_extension_point_get_required_type(_ptr)
        return rv
    }

    /// Sets the required type for `extension_point` to `type`.
    /// All implementations must henceforth have this type.
    @inlinable func setRequired(type: GType) {
        g_io_extension_point_set_required_type(_ptr, type)
    
    }
    /// Gets a list of all extensions that implement this extension point.
    /// The list is sorted by priority, beginning with the highest priority.
    @inlinable var extensions: GLib.ListRef! {
        /// Gets a list of all extensions that implement this extension point.
        /// The list is sorted by priority, beginning with the highest priority.
        get {
            let rv = GLib.ListRef(g_io_extension_point_get_extensions(_ptr))
            return rv
        }
    }

    /// Gets the required type for `extension_point`.
    @inlinable var requiredType: GType {
        /// Gets the required type for `extension_point`.
        get {
            let rv = g_io_extension_point_get_required_type(_ptr)
            return rv
        }
        /// Sets the required type for `extension_point` to `type`.
        /// All implementations must henceforth have this type.
        nonmutating set {
            g_io_extension_point_set_required_type(_ptr, newValue)
        }
    }


}



/// Metatype/GType declaration for IOModule
public extension IOModuleClassRef {
    
    /// This getter returns the GLib type identifier registered for `IOModule`
    static var metatypeReference: GType { g_io_module_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GIOModuleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GIOModuleClass.self) }
    
    static var metatype: GIOModuleClass? { metatypePointer?.pointee } 
    
    static var wrapper: IOModuleClassRef? { IOModuleClassRef(metatypePointer) }
    
    
}

// MARK: - IOModuleClass Record


///
/// The `IOModuleClassProtocol` protocol exposes the methods and properties of an underlying `GIOModuleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IOModuleClass`.
/// Alternatively, use `IOModuleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol IOModuleClassProtocol {
        /// Untyped pointer to the underlying `GIOModuleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GIOModuleClass` instance.
    var _ptr: UnsafeMutablePointer<GIOModuleClass>! { get }

    /// Required Initialiser for types conforming to `IOModuleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `IOModuleClassRef` type acts as a lightweight Swift reference to an underlying `GIOModuleClass` instance.
/// It exposes methods that can operate on this data type through `IOModuleClassProtocol` conformance.
/// Use `IOModuleClassRef` only as an `unowned` reference to an existing `GIOModuleClass` instance.
///
public struct IOModuleClassRef: IOModuleClassProtocol {
        /// Untyped pointer to the underlying `GIOModuleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IOModuleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GIOModuleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GIOModuleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GIOModuleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GIOModuleClass>?) {
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

    /// Reference intialiser for a related type that implements `IOModuleClassProtocol`
    @inlinable init<T: IOModuleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: IOModuleClass Record: IOModuleClassProtocol extension (methods and fields)
public extension IOModuleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GIOModuleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GIOModuleClass>! { return ptr?.assumingMemoryBound(to: GIOModuleClass.self) }



}



// MARK: - IOModuleScope Record

/// Represents a scope for loading IO modules. A scope can be used for blocking
/// duplicate modules, or blocking a module you don't want to load.
/// 
/// The scope can be used with `g_io_modules_load_all_in_directory_with_scope()`
/// or `g_io_modules_scan_all_in_directory_with_scope()`.
///
/// The `IOModuleScopeProtocol` protocol exposes the methods and properties of an underlying `GIOModuleScope` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IOModuleScope`.
/// Alternatively, use `IOModuleScopeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol IOModuleScopeProtocol {
        /// Untyped pointer to the underlying `GIOModuleScope` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GIOModuleScope` instance.
    var _ptr: UnsafeMutablePointer<GIOModuleScope>! { get }

    /// Required Initialiser for types conforming to `IOModuleScopeProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Represents a scope for loading IO modules. A scope can be used for blocking
/// duplicate modules, or blocking a module you don't want to load.
/// 
/// The scope can be used with `g_io_modules_load_all_in_directory_with_scope()`
/// or `g_io_modules_scan_all_in_directory_with_scope()`.
///
/// The `IOModuleScopeRef` type acts as a lightweight Swift reference to an underlying `GIOModuleScope` instance.
/// It exposes methods that can operate on this data type through `IOModuleScopeProtocol` conformance.
/// Use `IOModuleScopeRef` only as an `unowned` reference to an existing `GIOModuleScope` instance.
///
public struct IOModuleScopeRef: IOModuleScopeProtocol {
        /// Untyped pointer to the underlying `GIOModuleScope` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IOModuleScopeRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GIOModuleScope>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GIOModuleScope>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GIOModuleScope>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GIOModuleScope>?) {
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

    /// Reference intialiser for a related type that implements `IOModuleScopeProtocol`
    @inlinable init<T: IOModuleScopeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleScopeProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleScopeProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleScopeProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleScopeProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleScopeProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// Represents a scope for loading IO modules. A scope can be used for blocking
/// duplicate modules, or blocking a module you don't want to load.
/// 
/// The scope can be used with `g_io_modules_load_all_in_directory_with_scope()`
/// or `g_io_modules_scan_all_in_directory_with_scope()`.
///
/// The `IOModuleScope` type acts as an owner of an underlying `GIOModuleScope` instance.
/// It provides the methods that can operate on this data type through `IOModuleScopeProtocol` conformance.
/// Use `IOModuleScope` as a strong reference or owner of a `GIOModuleScope` instance.
///
open class IOModuleScope: IOModuleScopeProtocol {
        /// Untyped pointer to the underlying `GIOModuleScope` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOModuleScope` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GIOModuleScope>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOModuleScope` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GIOModuleScope>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOModuleScope` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOModuleScope` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOModuleScope` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GIOModuleScope>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOModuleScope` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GIOModuleScope>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GIOModuleScope` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `IOModuleScope` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GIOModuleScope>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GIOModuleScope, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `IOModuleScopeProtocol`
    /// `GIOModuleScope` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `IOModuleScopeProtocol`
    @inlinable public init<T: IOModuleScopeProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GIOModuleScope, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GIOModuleScope`.
    deinit {
        // no reference counting for GIOModuleScope, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleScopeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleScopeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GIOModuleScope, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleScopeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleScopeProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GIOModuleScope, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleScopeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleScopeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GIOModuleScope, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleScopeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleScopeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GIOModuleScope, cannot ref(_ptr)
    }



}

// MARK: no IOModuleScope properties

// MARK: no IOModuleScope signals

// MARK: IOModuleScope has no signals
// MARK: IOModuleScope Record: IOModuleScopeProtocol extension (methods and fields)
public extension IOModuleScopeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GIOModuleScope` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GIOModuleScope>! { return ptr?.assumingMemoryBound(to: GIOModuleScope.self) }

    /// Block modules with the given `basename` from being loaded when
    /// this scope is used with `g_io_modules_scan_all_in_directory_with_scope()`
    /// or `g_io_modules_load_all_in_directory_with_scope()`.
    @inlinable func block(basename: UnsafePointer<gchar>!) {
        g_io_module_scope_block(_ptr, basename)
    
    }

    /// Free a module scope.
    @inlinable func free() {
        g_io_module_scope_free(_ptr)
    
    }

    /// Loads all the modules in the specified directory.
    /// 
    /// If don't require all modules to be initialized (and thus registering
    /// all gtypes) then you can use `g_io_modules_scan_all_in_directory()`
    /// which allows delayed/lazy loading of modules.
    @inlinable func ioModulesLoadAllInDirectoryWithScope(dirname: UnsafePointer<gchar>!) -> GLib.ListRef! {
        let rv = GLib.ListRef(g_io_modules_load_all_in_directory_with_scope(dirname, _ptr))
        return rv
    }

    /// Scans all the modules in the specified directory, ensuring that
    /// any extension point implemented by a module is registered.
    /// 
    /// This may not actually load and initialize all the types in each
    /// module, some modules may be lazily loaded and initialized when
    /// an extension point it implements is used with e.g.
    /// `g_io_extension_point_get_extensions()` or
    /// `g_io_extension_point_get_extension_by_name()`.
    /// 
    /// If you need to guarantee that all types are loaded in all the modules,
    /// use `g_io_modules_load_all_in_directory()`.
    @inlinable func ioModulesScanAllInDirectoryWithScope(dirname: UnsafePointer<gchar>!) {
        g_io_modules_scan_all_in_directory_with_scope(dirname, _ptr)
    
    }


}



// MARK: - IOSchedulerJob Record

/// Opaque class for defining and scheduling IO jobs.
///
/// The `IOSchedulerJobProtocol` protocol exposes the methods and properties of an underlying `GIOSchedulerJob` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IOSchedulerJob`.
/// Alternatively, use `IOSchedulerJobRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol IOSchedulerJobProtocol {
        /// Untyped pointer to the underlying `GIOSchedulerJob` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GIOSchedulerJob` instance.
    var _ptr: UnsafeMutablePointer<GIOSchedulerJob>! { get }

    /// Required Initialiser for types conforming to `IOSchedulerJobProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Opaque class for defining and scheduling IO jobs.
///
/// The `IOSchedulerJobRef` type acts as a lightweight Swift reference to an underlying `GIOSchedulerJob` instance.
/// It exposes methods that can operate on this data type through `IOSchedulerJobProtocol` conformance.
/// Use `IOSchedulerJobRef` only as an `unowned` reference to an existing `GIOSchedulerJob` instance.
///
public struct IOSchedulerJobRef: IOSchedulerJobProtocol {
        /// Untyped pointer to the underlying `GIOSchedulerJob` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IOSchedulerJobRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GIOSchedulerJob>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GIOSchedulerJob>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GIOSchedulerJob>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GIOSchedulerJob>?) {
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

    /// Reference intialiser for a related type that implements `IOSchedulerJobProtocol`
    @inlinable init<T: IOSchedulerJobProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOSchedulerJobProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOSchedulerJobProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOSchedulerJobProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOSchedulerJobProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOSchedulerJobProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// Opaque class for defining and scheduling IO jobs.
///
/// The `IOSchedulerJob` type acts as an owner of an underlying `GIOSchedulerJob` instance.
/// It provides the methods that can operate on this data type through `IOSchedulerJobProtocol` conformance.
/// Use `IOSchedulerJob` as a strong reference or owner of a `GIOSchedulerJob` instance.
///
open class IOSchedulerJob: IOSchedulerJobProtocol {
        /// Untyped pointer to the underlying `GIOSchedulerJob` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOSchedulerJob` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GIOSchedulerJob>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOSchedulerJob` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GIOSchedulerJob>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOSchedulerJob` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOSchedulerJob` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOSchedulerJob` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GIOSchedulerJob>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOSchedulerJob` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GIOSchedulerJob>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GIOSchedulerJob` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `IOSchedulerJob` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GIOSchedulerJob>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GIOSchedulerJob, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `IOSchedulerJobProtocol`
    /// `GIOSchedulerJob` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `IOSchedulerJobProtocol`
    @inlinable public init<T: IOSchedulerJobProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GIOSchedulerJob, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GIOSchedulerJob`.
    deinit {
        // no reference counting for GIOSchedulerJob, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOSchedulerJobProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOSchedulerJobProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GIOSchedulerJob, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOSchedulerJobProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOSchedulerJobProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GIOSchedulerJob, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOSchedulerJobProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOSchedulerJobProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GIOSchedulerJob, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOSchedulerJobProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOSchedulerJobProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GIOSchedulerJob, cannot ref(_ptr)
    }



}

// MARK: no IOSchedulerJob properties

// MARK: no IOSchedulerJob signals

// MARK: IOSchedulerJob has no signals
// MARK: IOSchedulerJob Record: IOSchedulerJobProtocol extension (methods and fields)
public extension IOSchedulerJobProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GIOSchedulerJob` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GIOSchedulerJob>! { return ptr?.assumingMemoryBound(to: GIOSchedulerJob.self) }

    /// Used from an I/O job to send a callback to be run in the thread
    /// that the job was started from, waiting for the result (and thus
    /// blocking the I/O job).
    ///
    /// **send_to_mainloop is deprecated:**
    /// Use g_main_context_invoke().
    @available(*, deprecated) @inlinable func sendToMainloop(`func`: GSourceFunc?, userData: gpointer! = nil, notify: GDestroyNotify? = nil) -> Bool {
        let rv = ((g_io_scheduler_job_send_to_mainloop(_ptr, `func`, userData, notify)) != 0)
        return rv
    }

    /// Used from an I/O job to send a callback to be run asynchronously in
    /// the thread that the job was started from. The callback will be run
    /// when the main loop is available, but at that time the I/O job might
    /// have finished. The return value from the callback is ignored.
    /// 
    /// Note that if you are passing the `user_data` from `g_io_scheduler_push_job()`
    /// on to this function you have to ensure that it is not freed before
    /// `func` is called, either by passing `nil` as `notify` to
    /// `g_io_scheduler_push_job()` or by using refcounting for `user_data`.
    ///
    /// **send_to_mainloop_async is deprecated:**
    /// Use g_main_context_invoke().
    @available(*, deprecated) @inlinable func sendToMainloopAsync(`func`: GSourceFunc?, userData: gpointer! = nil, notify: GDestroyNotify? = nil) {
        g_io_scheduler_job_send_to_mainloop_async(_ptr, `func`, userData, notify)
    
    }


}



// MARK: - IOStreamAdapter Record


///
/// The `IOStreamAdapterProtocol` protocol exposes the methods and properties of an underlying `GIOStreamAdapter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IOStreamAdapter`.
/// Alternatively, use `IOStreamAdapterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol IOStreamAdapterProtocol {
        /// Untyped pointer to the underlying `GIOStreamAdapter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GIOStreamAdapter` instance.
    var _ptr: UnsafeMutablePointer<GIOStreamAdapter>! { get }

    /// Required Initialiser for types conforming to `IOStreamAdapterProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `IOStreamAdapterRef` type acts as a lightweight Swift reference to an underlying `GIOStreamAdapter` instance.
/// It exposes methods that can operate on this data type through `IOStreamAdapterProtocol` conformance.
/// Use `IOStreamAdapterRef` only as an `unowned` reference to an existing `GIOStreamAdapter` instance.
///
public struct IOStreamAdapterRef: IOStreamAdapterProtocol {
        /// Untyped pointer to the underlying `GIOStreamAdapter` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IOStreamAdapterRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GIOStreamAdapter>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GIOStreamAdapter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GIOStreamAdapter>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GIOStreamAdapter>?) {
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

    /// Reference intialiser for a related type that implements `IOStreamAdapterProtocol`
    @inlinable init<T: IOStreamAdapterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamAdapterProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamAdapterProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamAdapterProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamAdapterProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamAdapterProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }


///
/// The `IOStreamAdapter` type acts as an owner of an underlying `GIOStreamAdapter` instance.
/// It provides the methods that can operate on this data type through `IOStreamAdapterProtocol` conformance.
/// Use `IOStreamAdapter` as a strong reference or owner of a `GIOStreamAdapter` instance.
///
open class IOStreamAdapter: IOStreamAdapterProtocol {
        /// Untyped pointer to the underlying `GIOStreamAdapter` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOStreamAdapter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GIOStreamAdapter>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOStreamAdapter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GIOStreamAdapter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOStreamAdapter` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOStreamAdapter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOStreamAdapter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GIOStreamAdapter>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOStreamAdapter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GIOStreamAdapter>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GIOStreamAdapter` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `IOStreamAdapter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GIOStreamAdapter>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GIOStreamAdapter, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `IOStreamAdapterProtocol`
    /// `GIOStreamAdapter` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `IOStreamAdapterProtocol`
    @inlinable public init<T: IOStreamAdapterProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GIOStreamAdapter, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GIOStreamAdapter`.
    deinit {
        // no reference counting for GIOStreamAdapter, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamAdapterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamAdapterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GIOStreamAdapter, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamAdapterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamAdapterProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GIOStreamAdapter, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamAdapterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamAdapterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GIOStreamAdapter, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamAdapterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamAdapterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GIOStreamAdapter, cannot ref(_ptr)
    }



}

// MARK: no IOStreamAdapter properties

// MARK: no IOStreamAdapter signals

// MARK: IOStreamAdapter has no signals
// MARK: IOStreamAdapter Record: IOStreamAdapterProtocol extension (methods and fields)
public extension IOStreamAdapterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GIOStreamAdapter` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GIOStreamAdapter>! { return ptr?.assumingMemoryBound(to: GIOStreamAdapter.self) }



}



/// Metatype/GType declaration for IOStream
public extension IOStreamClassRef {
    
    /// This getter returns the GLib type identifier registered for `IOStream`
    static var metatypeReference: GType { g_io_stream_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GIOStreamClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GIOStreamClass.self) }
    
    static var metatype: GIOStreamClass? { metatypePointer?.pointee } 
    
    static var wrapper: IOStreamClassRef? { IOStreamClassRef(metatypePointer) }
    
    
}

// MARK: - IOStreamClass Record


///
/// The `IOStreamClassProtocol` protocol exposes the methods and properties of an underlying `GIOStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IOStreamClass`.
/// Alternatively, use `IOStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol IOStreamClassProtocol {
        /// Untyped pointer to the underlying `GIOStreamClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GIOStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GIOStreamClass>! { get }

    /// Required Initialiser for types conforming to `IOStreamClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `IOStreamClassRef` type acts as a lightweight Swift reference to an underlying `GIOStreamClass` instance.
/// It exposes methods that can operate on this data type through `IOStreamClassProtocol` conformance.
/// Use `IOStreamClassRef` only as an `unowned` reference to an existing `GIOStreamClass` instance.
///
public struct IOStreamClassRef: IOStreamClassProtocol {
        /// Untyped pointer to the underlying `GIOStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IOStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GIOStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GIOStreamClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GIOStreamClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GIOStreamClass>?) {
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

    /// Reference intialiser for a related type that implements `IOStreamClassProtocol`
    @inlinable init<T: IOStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: IOStreamClass Record: IOStreamClassProtocol extension (methods and fields)
public extension IOStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GIOStreamClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GIOStreamClass>! { return ptr?.assumingMemoryBound(to: GIOStreamClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var getInputStream is unavailable because get_input_stream is void

    // var getOutputStream is unavailable because get_output_stream is void

    // var closeFn is unavailable because close_fn is void

    // var closeAsync is unavailable because close_async is void

    // var closeFinish is unavailable because close_finish is void

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

    // var GReserved4 is unavailable because _g_reserved4 is void

    // var GReserved5 is unavailable because _g_reserved5 is void

    // var GReserved6 is unavailable because _g_reserved6 is void

    // var GReserved7 is unavailable because _g_reserved7 is void

    // var GReserved8 is unavailable because _g_reserved8 is void

    // var GReserved9 is unavailable because _g_reserved9 is void

    // var GReserved10 is unavailable because _g_reserved10 is void

}



/// Metatype/GType declaration for Icon
public extension IconIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `Icon`
    static var metatypeReference: GType { g_icon_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GIconIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GIconIface.self) }
    
    static var metatype: GIconIface? { metatypePointer?.pointee } 
    
    static var wrapper: IconIfaceRef? { IconIfaceRef(metatypePointer) }
    
    
}

// MARK: - IconIface Record

/// GIconIface is used to implement GIcon types for various
/// different systems. See `GThemedIcon` and `GLoadableIcon` for
/// examples of how to implement this interface.
///
/// The `IconIfaceProtocol` protocol exposes the methods and properties of an underlying `GIconIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IconIface`.
/// Alternatively, use `IconIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol IconIfaceProtocol {
        /// Untyped pointer to the underlying `GIconIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GIconIface` instance.
    var _ptr: UnsafeMutablePointer<GIconIface>! { get }

    /// Required Initialiser for types conforming to `IconIfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// GIconIface is used to implement GIcon types for various
/// different systems. See `GThemedIcon` and `GLoadableIcon` for
/// examples of how to implement this interface.
///
/// The `IconIfaceRef` type acts as a lightweight Swift reference to an underlying `GIconIface` instance.
/// It exposes methods that can operate on this data type through `IconIfaceProtocol` conformance.
/// Use `IconIfaceRef` only as an `unowned` reference to an existing `GIconIface` instance.
///
public struct IconIfaceRef: IconIfaceProtocol {
        /// Untyped pointer to the underlying `GIconIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IconIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GIconIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GIconIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GIconIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GIconIface>?) {
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

    /// Reference intialiser for a related type that implements `IconIfaceProtocol`
    @inlinable init<T: IconIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: IconIface Record: IconIfaceProtocol extension (methods and fields)
public extension IconIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GIconIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GIconIface>! { return ptr?.assumingMemoryBound(to: GIconIface.self) }


    /// The parent interface.
    @inlinable var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var hash is unavailable because hash is void

    // var equal is unavailable because equal is void

    // var toTokens is unavailable because to_tokens is void

    // var fromTokens is unavailable because from_tokens is void

    // var serialize is unavailable because serialize is void

}



/// Metatype/GType declaration for InetAddress
public extension InetAddressClassRef {
    
    /// This getter returns the GLib type identifier registered for `InetAddress`
    static var metatypeReference: GType { g_inet_address_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GInetAddressClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GInetAddressClass.self) }
    
    static var metatype: GInetAddressClass? { metatypePointer?.pointee } 
    
    static var wrapper: InetAddressClassRef? { InetAddressClassRef(metatypePointer) }
    
    
}

// MARK: - InetAddressClass Record


///
/// The `InetAddressClassProtocol` protocol exposes the methods and properties of an underlying `GInetAddressClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InetAddressClass`.
/// Alternatively, use `InetAddressClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol InetAddressClassProtocol {
        /// Untyped pointer to the underlying `GInetAddressClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GInetAddressClass` instance.
    var _ptr: UnsafeMutablePointer<GInetAddressClass>! { get }

    /// Required Initialiser for types conforming to `InetAddressClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `InetAddressClassRef` type acts as a lightweight Swift reference to an underlying `GInetAddressClass` instance.
/// It exposes methods that can operate on this data type through `InetAddressClassProtocol` conformance.
/// Use `InetAddressClassRef` only as an `unowned` reference to an existing `GInetAddressClass` instance.
///
public struct InetAddressClassRef: InetAddressClassProtocol {
        /// Untyped pointer to the underlying `GInetAddressClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension InetAddressClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GInetAddressClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GInetAddressClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GInetAddressClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GInetAddressClass>?) {
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

    /// Reference intialiser for a related type that implements `InetAddressClassProtocol`
    @inlinable init<T: InetAddressClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: InetAddressClass Record: InetAddressClassProtocol extension (methods and fields)
public extension InetAddressClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GInetAddressClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GInetAddressClass>! { return ptr?.assumingMemoryBound(to: GInetAddressClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var toString is unavailable because to_string is void

    // var toBytes is unavailable because to_bytes is void

}



/// Metatype/GType declaration for InetAddressMask
public extension InetAddressMaskClassRef {
    
    /// This getter returns the GLib type identifier registered for `InetAddressMask`
    static var metatypeReference: GType { g_inet_address_mask_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GInetAddressMaskClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GInetAddressMaskClass.self) }
    
    static var metatype: GInetAddressMaskClass? { metatypePointer?.pointee } 
    
    static var wrapper: InetAddressMaskClassRef? { InetAddressMaskClassRef(metatypePointer) }
    
    
}

// MARK: - InetAddressMaskClass Record


///
/// The `InetAddressMaskClassProtocol` protocol exposes the methods and properties of an underlying `GInetAddressMaskClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InetAddressMaskClass`.
/// Alternatively, use `InetAddressMaskClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol InetAddressMaskClassProtocol {
        /// Untyped pointer to the underlying `GInetAddressMaskClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GInetAddressMaskClass` instance.
    var _ptr: UnsafeMutablePointer<GInetAddressMaskClass>! { get }

    /// Required Initialiser for types conforming to `InetAddressMaskClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `InetAddressMaskClassRef` type acts as a lightweight Swift reference to an underlying `GInetAddressMaskClass` instance.
/// It exposes methods that can operate on this data type through `InetAddressMaskClassProtocol` conformance.
/// Use `InetAddressMaskClassRef` only as an `unowned` reference to an existing `GInetAddressMaskClass` instance.
///
public struct InetAddressMaskClassRef: InetAddressMaskClassProtocol {
        /// Untyped pointer to the underlying `GInetAddressMaskClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension InetAddressMaskClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GInetAddressMaskClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GInetAddressMaskClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GInetAddressMaskClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GInetAddressMaskClass>?) {
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

    /// Reference intialiser for a related type that implements `InetAddressMaskClassProtocol`
    @inlinable init<T: InetAddressMaskClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: InetAddressMaskClass Record: InetAddressMaskClassProtocol extension (methods and fields)
public extension InetAddressMaskClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GInetAddressMaskClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GInetAddressMaskClass>! { return ptr?.assumingMemoryBound(to: GInetAddressMaskClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for InetSocketAddress
public extension InetSocketAddressClassRef {
    
    /// This getter returns the GLib type identifier registered for `InetSocketAddress`
    static var metatypeReference: GType { g_inet_socket_address_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GInetSocketAddressClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GInetSocketAddressClass.self) }
    
    static var metatype: GInetSocketAddressClass? { metatypePointer?.pointee } 
    
    static var wrapper: InetSocketAddressClassRef? { InetSocketAddressClassRef(metatypePointer) }
    
    
}

// MARK: - InetSocketAddressClass Record


///
/// The `InetSocketAddressClassProtocol` protocol exposes the methods and properties of an underlying `GInetSocketAddressClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InetSocketAddressClass`.
/// Alternatively, use `InetSocketAddressClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol InetSocketAddressClassProtocol {
        /// Untyped pointer to the underlying `GInetSocketAddressClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GInetSocketAddressClass` instance.
    var _ptr: UnsafeMutablePointer<GInetSocketAddressClass>! { get }

    /// Required Initialiser for types conforming to `InetSocketAddressClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `InetSocketAddressClassRef` type acts as a lightweight Swift reference to an underlying `GInetSocketAddressClass` instance.
/// It exposes methods that can operate on this data type through `InetSocketAddressClassProtocol` conformance.
/// Use `InetSocketAddressClassRef` only as an `unowned` reference to an existing `GInetSocketAddressClass` instance.
///
public struct InetSocketAddressClassRef: InetSocketAddressClassProtocol {
        /// Untyped pointer to the underlying `GInetSocketAddressClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension InetSocketAddressClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GInetSocketAddressClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GInetSocketAddressClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GInetSocketAddressClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GInetSocketAddressClass>?) {
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

    /// Reference intialiser for a related type that implements `InetSocketAddressClassProtocol`
    @inlinable init<T: InetSocketAddressClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: InetSocketAddressClass Record: InetSocketAddressClassProtocol extension (methods and fields)
public extension InetSocketAddressClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GInetSocketAddressClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GInetSocketAddressClass>! { return ptr?.assumingMemoryBound(to: GInetSocketAddressClass.self) }


    @inlinable var parentClass: GSocketAddressClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for Initable
public extension InitableIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `Initable`
    static var metatypeReference: GType { g_initable_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GInitableIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GInitableIface.self) }
    
    static var metatype: GInitableIface? { metatypePointer?.pointee } 
    
    static var wrapper: InitableIfaceRef? { InitableIfaceRef(metatypePointer) }
    
    
}

// MARK: - InitableIface Record

/// Provides an interface for initializing object such that initialization
/// may fail.
///
/// The `InitableIfaceProtocol` protocol exposes the methods and properties of an underlying `GInitableIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InitableIface`.
/// Alternatively, use `InitableIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol InitableIfaceProtocol {
        /// Untyped pointer to the underlying `GInitableIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GInitableIface` instance.
    var _ptr: UnsafeMutablePointer<GInitableIface>! { get }

    /// Required Initialiser for types conforming to `InitableIfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Provides an interface for initializing object such that initialization
/// may fail.
///
/// The `InitableIfaceRef` type acts as a lightweight Swift reference to an underlying `GInitableIface` instance.
/// It exposes methods that can operate on this data type through `InitableIfaceProtocol` conformance.
/// Use `InitableIfaceRef` only as an `unowned` reference to an existing `GInitableIface` instance.
///
public struct InitableIfaceRef: InitableIfaceProtocol {
        /// Untyped pointer to the underlying `GInitableIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension InitableIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GInitableIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GInitableIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GInitableIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GInitableIface>?) {
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

    /// Reference intialiser for a related type that implements `InitableIfaceProtocol`
    @inlinable init<T: InitableIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitableIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitableIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitableIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitableIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitableIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: InitableIface Record: InitableIfaceProtocol extension (methods and fields)
public extension InitableIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GInitableIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GInitableIface>! { return ptr?.assumingMemoryBound(to: GInitableIface.self) }


    /// The parent interface.
    @inlinable var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var `init` is unavailable because init is void

}



// MARK: - InputMessage Record

/// Structure used for scatter/gather data input when receiving multiple
/// messages or packets in one go. You generally pass in an array of empty
/// `GInputVectors` and the operation will use all the buffers as if they
/// were one buffer, and will set `bytes_received` to the total number of bytes
/// received across all `GInputVectors`.
/// 
/// This structure closely mirrors `struct mmsghdr` and `struct msghdr` from
/// the POSIX sockets API (see `man 2 recvmmsg`).
/// 
/// If `address` is non-`nil` then it is set to the source address the message
/// was received from, and the caller must free it afterwards.
/// 
/// If `control_messages` is non-`nil` then it is set to an array of control
/// messages received with the message (if any), and the caller must free it
/// afterwards. `num_control_messages` is set to the number of elements in
/// this array, which may be zero.
/// 
/// Flags relevant to this message will be returned in `flags`. For example,
/// `MSG_EOR` or `MSG_TRUNC`.
///
/// The `InputMessageProtocol` protocol exposes the methods and properties of an underlying `GInputMessage` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InputMessage`.
/// Alternatively, use `InputMessageRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol InputMessageProtocol {
        /// Untyped pointer to the underlying `GInputMessage` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GInputMessage` instance.
    var _ptr: UnsafeMutablePointer<GInputMessage>! { get }

    /// Required Initialiser for types conforming to `InputMessageProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Structure used for scatter/gather data input when receiving multiple
/// messages or packets in one go. You generally pass in an array of empty
/// `GInputVectors` and the operation will use all the buffers as if they
/// were one buffer, and will set `bytes_received` to the total number of bytes
/// received across all `GInputVectors`.
/// 
/// This structure closely mirrors `struct mmsghdr` and `struct msghdr` from
/// the POSIX sockets API (see `man 2 recvmmsg`).
/// 
/// If `address` is non-`nil` then it is set to the source address the message
/// was received from, and the caller must free it afterwards.
/// 
/// If `control_messages` is non-`nil` then it is set to an array of control
/// messages received with the message (if any), and the caller must free it
/// afterwards. `num_control_messages` is set to the number of elements in
/// this array, which may be zero.
/// 
/// Flags relevant to this message will be returned in `flags`. For example,
/// `MSG_EOR` or `MSG_TRUNC`.
///
/// The `InputMessageRef` type acts as a lightweight Swift reference to an underlying `GInputMessage` instance.
/// It exposes methods that can operate on this data type through `InputMessageProtocol` conformance.
/// Use `InputMessageRef` only as an `unowned` reference to an existing `GInputMessage` instance.
///
public struct InputMessageRef: InputMessageProtocol {
        /// Untyped pointer to the underlying `GInputMessage` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension InputMessageRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GInputMessage>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GInputMessage>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GInputMessage>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GInputMessage>?) {
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

    /// Reference intialiser for a related type that implements `InputMessageProtocol`
    @inlinable init<T: InputMessageProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputMessageProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputMessageProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputMessageProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputMessageProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputMessageProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// Structure used for scatter/gather data input when receiving multiple
/// messages or packets in one go. You generally pass in an array of empty
/// `GInputVectors` and the operation will use all the buffers as if they
/// were one buffer, and will set `bytes_received` to the total number of bytes
/// received across all `GInputVectors`.
/// 
/// This structure closely mirrors `struct mmsghdr` and `struct msghdr` from
/// the POSIX sockets API (see `man 2 recvmmsg`).
/// 
/// If `address` is non-`nil` then it is set to the source address the message
/// was received from, and the caller must free it afterwards.
/// 
/// If `control_messages` is non-`nil` then it is set to an array of control
/// messages received with the message (if any), and the caller must free it
/// afterwards. `num_control_messages` is set to the number of elements in
/// this array, which may be zero.
/// 
/// Flags relevant to this message will be returned in `flags`. For example,
/// `MSG_EOR` or `MSG_TRUNC`.
///
/// The `InputMessage` type acts as an owner of an underlying `GInputMessage` instance.
/// It provides the methods that can operate on this data type through `InputMessageProtocol` conformance.
/// Use `InputMessage` as a strong reference or owner of a `GInputMessage` instance.
///
open class InputMessage: InputMessageProtocol {
        /// Untyped pointer to the underlying `GInputMessage` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InputMessage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GInputMessage>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InputMessage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GInputMessage>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InputMessage` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InputMessage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InputMessage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GInputMessage>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InputMessage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GInputMessage>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GInputMessage` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `InputMessage` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GInputMessage>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GInputMessage, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `InputMessageProtocol`
    /// `GInputMessage` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `InputMessageProtocol`
    @inlinable public init<T: InputMessageProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GInputMessage, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GInputMessage`.
    deinit {
        // no reference counting for GInputMessage, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputMessageProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputMessageProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GInputMessage, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputMessageProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputMessageProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GInputMessage, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputMessageProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputMessageProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GInputMessage, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputMessageProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputMessageProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GInputMessage, cannot ref(_ptr)
    }



}

// MARK: no InputMessage properties

// MARK: no InputMessage signals

// MARK: InputMessage has no signals
// MARK: InputMessage Record: InputMessageProtocol extension (methods and fields)
public extension InputMessageProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GInputMessage` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GInputMessage>! { return ptr?.assumingMemoryBound(to: GInputMessage.self) }


    /// return location
    ///   for a `GSocketAddress`, or `nil`
    @inlinable var address: UnsafeMutablePointer<UnsafeMutablePointer<GSocketAddress>?>! {
        /// return location
        ///   for a `GSocketAddress`, or `nil`
        get {
            let rv = _ptr.pointee.address
            return rv
        }
        /// return location
        ///   for a `GSocketAddress`, or `nil`
         set {
            _ptr.pointee.address = newValue
        }
    }

    /// pointer to an
    ///   array of input vectors
    @inlinable var vectors: UnsafeMutablePointer<GInputVector>! {
        /// pointer to an
        ///   array of input vectors
        get {
            let rv = _ptr.pointee.vectors
            return rv
        }
        /// pointer to an
        ///   array of input vectors
         set {
            _ptr.pointee.vectors = newValue
        }
    }

    /// the number of input vectors pointed to by `vectors`
    @inlinable var numVectors: guint {
        /// the number of input vectors pointed to by `vectors`
        get {
            let rv = _ptr.pointee.num_vectors
            return rv
        }
        /// the number of input vectors pointed to by `vectors`
         set {
            _ptr.pointee.num_vectors = newValue
        }
    }

    /// will be set to the number of bytes that have been
    ///   received
    @inlinable var bytesReceived: gsize {
        /// will be set to the number of bytes that have been
        ///   received
        get {
            let rv = _ptr.pointee.bytes_received
            return rv
        }
        /// will be set to the number of bytes that have been
        ///   received
         set {
            _ptr.pointee.bytes_received = newValue
        }
    }

    /// collection of `GSocketMsgFlags` for the received message,
    ///   outputted by the call
    @inlinable var flags: gint {
        /// collection of `GSocketMsgFlags` for the received message,
        ///   outputted by the call
        get {
            let rv = _ptr.pointee.flags
            return rv
        }
        /// collection of `GSocketMsgFlags` for the received message,
        ///   outputted by the call
         set {
            _ptr.pointee.flags = newValue
        }
    }

    /// return location for a
    ///   caller-allocated array of `GSocketControlMessages`, or `nil`
    @inlinable var controlMessages: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<GSocketControlMessage>?>?>! {
        /// return location for a
        ///   caller-allocated array of `GSocketControlMessages`, or `nil`
        get {
            let rv = _ptr.pointee.control_messages
            return rv
        }
        /// return location for a
        ///   caller-allocated array of `GSocketControlMessages`, or `nil`
         set {
            _ptr.pointee.control_messages = newValue
        }
    }

    /// return location for the number of
    ///   elements in `control_messages`
    @inlinable var numControlMessages: UnsafeMutablePointer<guint>! {
        /// return location for the number of
        ///   elements in `control_messages`
        get {
            let rv = _ptr.pointee.num_control_messages
            return rv
        }
        /// return location for the number of
        ///   elements in `control_messages`
         set {
            _ptr.pointee.num_control_messages = newValue
        }
    }

}



/// Metatype/GType declaration for InputStream
public extension InputStreamClassRef {
    
    /// This getter returns the GLib type identifier registered for `InputStream`
    static var metatypeReference: GType { g_input_stream_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GInputStreamClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GInputStreamClass.self) }
    
    static var metatype: GInputStreamClass? { metatypePointer?.pointee } 
    
    static var wrapper: InputStreamClassRef? { InputStreamClassRef(metatypePointer) }
    
    
}

// MARK: - InputStreamClass Record


///
/// The `InputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GInputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InputStreamClass`.
/// Alternatively, use `InputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol InputStreamClassProtocol {
        /// Untyped pointer to the underlying `GInputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GInputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GInputStreamClass>! { get }

    /// Required Initialiser for types conforming to `InputStreamClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `InputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GInputStreamClass` instance.
/// It exposes methods that can operate on this data type through `InputStreamClassProtocol` conformance.
/// Use `InputStreamClassRef` only as an `unowned` reference to an existing `GInputStreamClass` instance.
///
public struct InputStreamClassRef: InputStreamClassProtocol {
        /// Untyped pointer to the underlying `GInputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension InputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GInputStreamClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GInputStreamClass>?) {
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

    /// Reference intialiser for a related type that implements `InputStreamClassProtocol`
    @inlinable init<T: InputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: InputStreamClass Record: InputStreamClassProtocol extension (methods and fields)
public extension InputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GInputStreamClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GInputStreamClass>! { return ptr?.assumingMemoryBound(to: GInputStreamClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var readFn is unavailable because read_fn is void

    // var skip is unavailable because skip is void

    // var closeFn is unavailable because close_fn is void

    // var readAsync is unavailable because read_async is void

    // var readFinish is unavailable because read_finish is void

    // var skipAsync is unavailable because skip_async is void

    // var skipFinish is unavailable because skip_finish is void

    // var closeAsync is unavailable because close_async is void

    // var closeFinish is unavailable because close_finish is void

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

    // var GReserved4 is unavailable because _g_reserved4 is void

    // var GReserved5 is unavailable because _g_reserved5 is void

}



// MARK: - InputVector Record

/// Structure used for scatter/gather data input.
/// You generally pass in an array of `GInputVectors`
/// and the operation will store the read data starting in the
/// first buffer, switching to the next as needed.
///
/// The `InputVectorProtocol` protocol exposes the methods and properties of an underlying `GInputVector` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InputVector`.
/// Alternatively, use `InputVectorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol InputVectorProtocol {
        /// Untyped pointer to the underlying `GInputVector` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GInputVector` instance.
    var _ptr: UnsafeMutablePointer<GInputVector>! { get }

    /// Required Initialiser for types conforming to `InputVectorProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Structure used for scatter/gather data input.
/// You generally pass in an array of `GInputVectors`
/// and the operation will store the read data starting in the
/// first buffer, switching to the next as needed.
///
/// The `InputVectorRef` type acts as a lightweight Swift reference to an underlying `GInputVector` instance.
/// It exposes methods that can operate on this data type through `InputVectorProtocol` conformance.
/// Use `InputVectorRef` only as an `unowned` reference to an existing `GInputVector` instance.
///
public struct InputVectorRef: InputVectorProtocol {
        /// Untyped pointer to the underlying `GInputVector` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension InputVectorRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GInputVector>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GInputVector>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GInputVector>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GInputVector>?) {
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

    /// Reference intialiser for a related type that implements `InputVectorProtocol`
    @inlinable init<T: InputVectorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputVectorProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputVectorProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputVectorProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputVectorProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputVectorProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// Structure used for scatter/gather data input.
/// You generally pass in an array of `GInputVectors`
/// and the operation will store the read data starting in the
/// first buffer, switching to the next as needed.
///
/// The `InputVector` type acts as an owner of an underlying `GInputVector` instance.
/// It provides the methods that can operate on this data type through `InputVectorProtocol` conformance.
/// Use `InputVector` as a strong reference or owner of a `GInputVector` instance.
///
open class InputVector: InputVectorProtocol {
        /// Untyped pointer to the underlying `GInputVector` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InputVector` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GInputVector>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InputVector` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GInputVector>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InputVector` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InputVector` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InputVector` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GInputVector>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InputVector` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GInputVector>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GInputVector` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `InputVector` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GInputVector>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GInputVector, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `InputVectorProtocol`
    /// `GInputVector` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `InputVectorProtocol`
    @inlinable public init<T: InputVectorProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GInputVector, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GInputVector`.
    deinit {
        // no reference counting for GInputVector, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputVectorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputVectorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GInputVector, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputVectorProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputVectorProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GInputVector, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputVectorProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputVectorProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GInputVector, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputVectorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputVectorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GInputVector, cannot ref(_ptr)
    }



}

// MARK: no InputVector properties

// MARK: no InputVector signals

// MARK: InputVector has no signals
// MARK: InputVector Record: InputVectorProtocol extension (methods and fields)
public extension InputVectorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GInputVector` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GInputVector>! { return ptr?.assumingMemoryBound(to: GInputVector.self) }


    /// Pointer to a buffer where data will be written.
    @inlinable var buffer: gpointer! {
        /// Pointer to a buffer where data will be written.
        get {
            let rv = _ptr.pointee.buffer
            return rv
        }
        /// Pointer to a buffer where data will be written.
         set {
            _ptr.pointee.buffer = newValue
        }
    }

    /// the available size in `buffer`.
    @inlinable var size: gsize {
        /// the available size in `buffer`.
        get {
            let rv = _ptr.pointee.size
            return rv
        }
        /// the available size in `buffer`.
         set {
            _ptr.pointee.size = newValue
        }
    }

}



/// Metatype/GType declaration for ListModel
public extension ListModelInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `ListModel`
    static var metatypeReference: GType { g_list_model_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GListModelInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GListModelInterface.self) }
    
    static var metatype: GListModelInterface? { metatypePointer?.pointee } 
    
    static var wrapper: ListModelInterfaceRef? { ListModelInterfaceRef(metatypePointer) }
    
    
}

// MARK: - ListModelInterface Record

/// The virtual function table for `GListModel`.
///
/// The `ListModelInterfaceProtocol` protocol exposes the methods and properties of an underlying `GListModelInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListModelInterface`.
/// Alternatively, use `ListModelInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ListModelInterfaceProtocol {
        /// Untyped pointer to the underlying `GListModelInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GListModelInterface` instance.
    var _ptr: UnsafeMutablePointer<GListModelInterface>! { get }

    /// Required Initialiser for types conforming to `ListModelInterfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The virtual function table for `GListModel`.
///
/// The `ListModelInterfaceRef` type acts as a lightweight Swift reference to an underlying `GListModelInterface` instance.
/// It exposes methods that can operate on this data type through `ListModelInterfaceProtocol` conformance.
/// Use `ListModelInterfaceRef` only as an `unowned` reference to an existing `GListModelInterface` instance.
///
public struct ListModelInterfaceRef: ListModelInterfaceProtocol {
        /// Untyped pointer to the underlying `GListModelInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ListModelInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GListModelInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GListModelInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GListModelInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GListModelInterface>?) {
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

    /// Reference intialiser for a related type that implements `ListModelInterfaceProtocol`
    @inlinable init<T: ListModelInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListModelInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListModelInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListModelInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListModelInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListModelInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ListModelInterface Record: ListModelInterfaceProtocol extension (methods and fields)
public extension ListModelInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GListModelInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GListModelInterface>! { return ptr?.assumingMemoryBound(to: GListModelInterface.self) }


    /// parent `GTypeInterface`
    @inlinable var gIface: GTypeInterface {
        /// parent `GTypeInterface`
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var getItemType is unavailable because get_item_type is void

    // var getNItems is unavailable because get_n_items is void

    // var getItem is unavailable because get_item is void

}



