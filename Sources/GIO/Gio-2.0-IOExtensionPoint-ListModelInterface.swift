import CGLib
import GLib
import GLibObject

// MARK: - IOExtensionPoint Record

/// The `IOExtensionPointProtocol` protocol exposes the methods and properties of an underlying `GIOExtensionPoint` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IOExtensionPoint`.
/// Alternatively, use `IOExtensionPointRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GIOExtensionPoint` is an opaque data structure and can only be accessed
/// using the following functions.
public protocol IOExtensionPointProtocol {
    /// Untyped pointer to the underlying `GIOExtensionPoint` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GIOExtensionPoint` instance.
    var _ptr: UnsafeMutablePointer<GIOExtensionPoint> { get }
}

/// The `IOExtensionPointRef` type acts as a lightweight Swift reference to an underlying `GIOExtensionPoint` instance.
/// It exposes methods that can operate on this data type through `IOExtensionPointProtocol` conformance.
/// Use `IOExtensionPointRef` only as an `unowned` reference to an existing `GIOExtensionPoint` instance.
///
/// `GIOExtensionPoint` is an opaque data structure and can only be accessed
/// using the following functions.
public struct IOExtensionPointRef: IOExtensionPointProtocol {
    /// Untyped pointer to the underlying `GIOExtensionPoint` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension IOExtensionPointRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GIOExtensionPoint>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `IOExtensionPointProtocol`
    init<T: IOExtensionPointProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionPointProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionPointProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionPointProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionPointProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionPointProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Looks up an existing extension point.
    static func lookup(name: UnsafePointer<CChar>) -> IOExtensionPointRef! {
        let rv = g_io_extension_point_lookup(name)
        return rv.map { IOExtensionPointRef(cast($0)) }
    }

    /// Registers an extension point.
    static func register(name: UnsafePointer<CChar>) -> IOExtensionPointRef! {
        let rv = g_io_extension_point_register(name)
        return rv.map { IOExtensionPointRef(cast($0)) }
    }
}

/// The `IOExtensionPoint` type acts as an owner of an underlying `GIOExtensionPoint` instance.
/// It provides the methods that can operate on this data type through `IOExtensionPointProtocol` conformance.
/// Use `IOExtensionPoint` as a strong reference or owner of a `GIOExtensionPoint` instance.
///
/// `GIOExtensionPoint` is an opaque data structure and can only be accessed
/// using the following functions.
open class IOExtensionPoint: IOExtensionPointProtocol {
    /// Untyped pointer to the underlying `GIOExtensionPoint` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `IOExtensionPoint` instance.
    public init(_ op: UnsafeMutablePointer<GIOExtensionPoint>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `IOExtensionPointProtocol`
    /// `GIOExtensionPoint` does not allow reference counting.
    public convenience init<T: IOExtensionPointProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GIOExtensionPoint, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GIOExtensionPoint`.
    deinit {
        // no reference counting for GIOExtensionPoint, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionPointProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GIOExtensionPoint.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionPointProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GIOExtensionPoint.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionPointProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GIOExtensionPoint.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionPointProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GIOExtensionPoint>(opaquePointer))
    }


    /// Looks up an existing extension point.
    public static func lookup(name: UnsafePointer<CChar>) -> IOExtensionPoint! {
        let rv = g_io_extension_point_lookup(name)
        return rv.map { IOExtensionPoint(cast($0)) }
    }

    /// Registers an extension point.
    public static func register(name: UnsafePointer<CChar>) -> IOExtensionPoint! {
        let rv = g_io_extension_point_register(name)
        return rv.map { IOExtensionPoint(cast($0)) }
    }

}

// MARK: - no IOExtensionPoint properties

// MARK: - no signals


public extension IOExtensionPointProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GIOExtensionPoint` instance.
    var _ptr: UnsafeMutablePointer<GIOExtensionPoint> { return ptr.assumingMemoryBound(to: GIOExtensionPoint.self) }

    /// Finds a `GIOExtension` for an extension point by name.
    func getExtensionBy(name: UnsafePointer<CChar>) -> UnsafeMutablePointer<GIOExtension>! {
        let rv = g_io_extension_point_get_extension_by_name(cast(_ptr), name)
        return cast(rv)
    }

    /// Gets a list of all extensions that implement this extension point.
    /// The list is sorted by priority, beginning with the highest priority.
    func getExtensions() -> UnsafeMutablePointer<GList>! {
        let rv = g_io_extension_point_get_extensions(cast(_ptr))
        return cast(rv)
    }

    /// Gets the required type for `extension_point`.
    func getRequiredType() -> GType {
        let rv = g_io_extension_point_get_required_type(cast(_ptr))
        return rv
    }

    /// Sets the required type for `extension_point` to `type`.
    /// All implementations must henceforth have this type.
    func setRequired(type: GType) {
        g_io_extension_point_set_required_type(cast(_ptr), type)
    
    }
    /// Gets a list of all extensions that implement this extension point.
    /// The list is sorted by priority, beginning with the highest priority.
    var extensions: UnsafeMutablePointer<GList>! {
        /// Gets a list of all extensions that implement this extension point.
        /// The list is sorted by priority, beginning with the highest priority.
        get {
            let rv = g_io_extension_point_get_extensions(cast(_ptr))
            return cast(rv)
        }
    }

    /// Gets the required type for `extension_point`.
    var requiredType: GType {
        /// Gets the required type for `extension_point`.
        get {
            let rv = g_io_extension_point_get_required_type(cast(_ptr))
            return rv
        }
        /// Sets the required type for `extension_point` to `type`.
        /// All implementations must henceforth have this type.
        nonmutating set {
            g_io_extension_point_set_required_type(cast(_ptr), newValue)
        }
    }
}



// MARK: - IOModuleClass Record

/// The `IOModuleClassProtocol` protocol exposes the methods and properties of an underlying `GIOModuleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IOModuleClass`.
/// Alternatively, use `IOModuleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol IOModuleClassProtocol {
    /// Untyped pointer to the underlying `GIOModuleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GIOModuleClass` instance.
    var _ptr: UnsafeMutablePointer<GIOModuleClass> { get }
}

/// The `IOModuleClassRef` type acts as a lightweight Swift reference to an underlying `GIOModuleClass` instance.
/// It exposes methods that can operate on this data type through `IOModuleClassProtocol` conformance.
/// Use `IOModuleClassRef` only as an `unowned` reference to an existing `GIOModuleClass` instance.
///

public struct IOModuleClassRef: IOModuleClassProtocol {
    /// Untyped pointer to the underlying `GIOModuleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension IOModuleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GIOModuleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `IOModuleClassProtocol`
    init<T: IOModuleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `IOModuleClass` type acts as an owner of an underlying `GIOModuleClass` instance.
/// It provides the methods that can operate on this data type through `IOModuleClassProtocol` conformance.
/// Use `IOModuleClass` as a strong reference or owner of a `GIOModuleClass` instance.
///

open class IOModuleClass: IOModuleClassProtocol {
    /// Untyped pointer to the underlying `GIOModuleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `IOModuleClass` instance.
    public init(_ op: UnsafeMutablePointer<GIOModuleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `IOModuleClassProtocol`
    /// `GIOModuleClass` does not allow reference counting.
    public convenience init<T: IOModuleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GIOModuleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GIOModuleClass`.
    deinit {
        // no reference counting for GIOModuleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GIOModuleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GIOModuleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GIOModuleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GIOModuleClass>(opaquePointer))
    }



}

// MARK: - no IOModuleClass properties

// MARK: - no signals


public extension IOModuleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GIOModuleClass` instance.
    var _ptr: UnsafeMutablePointer<GIOModuleClass> { return ptr.assumingMemoryBound(to: GIOModuleClass.self) }

}



// MARK: - IOModuleScope Record

/// The `IOModuleScopeProtocol` protocol exposes the methods and properties of an underlying `GIOModuleScope` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IOModuleScope`.
/// Alternatively, use `IOModuleScopeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Represents a scope for loading IO modules. A scope can be used for blocking
/// duplicate modules, or blocking a module you don't want to load.
/// 
/// The scope can be used with g_io_modules_load_all_in_directory_with_scope()
/// or g_io_modules_scan_all_in_directory_with_scope().
public protocol IOModuleScopeProtocol {
    /// Untyped pointer to the underlying `GIOModuleScope` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GIOModuleScope` instance.
    var _ptr: UnsafeMutablePointer<GIOModuleScope> { get }
}

/// The `IOModuleScopeRef` type acts as a lightweight Swift reference to an underlying `GIOModuleScope` instance.
/// It exposes methods that can operate on this data type through `IOModuleScopeProtocol` conformance.
/// Use `IOModuleScopeRef` only as an `unowned` reference to an existing `GIOModuleScope` instance.
///
/// Represents a scope for loading IO modules. A scope can be used for blocking
/// duplicate modules, or blocking a module you don't want to load.
/// 
/// The scope can be used with g_io_modules_load_all_in_directory_with_scope()
/// or g_io_modules_scan_all_in_directory_with_scope().
public struct IOModuleScopeRef: IOModuleScopeProtocol {
    /// Untyped pointer to the underlying `GIOModuleScope` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension IOModuleScopeRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GIOModuleScope>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `IOModuleScopeProtocol`
    init<T: IOModuleScopeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleScopeProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleScopeProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleScopeProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleScopeProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleScopeProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `IOModuleScope` type acts as an owner of an underlying `GIOModuleScope` instance.
/// It provides the methods that can operate on this data type through `IOModuleScopeProtocol` conformance.
/// Use `IOModuleScope` as a strong reference or owner of a `GIOModuleScope` instance.
///
/// Represents a scope for loading IO modules. A scope can be used for blocking
/// duplicate modules, or blocking a module you don't want to load.
/// 
/// The scope can be used with g_io_modules_load_all_in_directory_with_scope()
/// or g_io_modules_scan_all_in_directory_with_scope().
open class IOModuleScope: IOModuleScopeProtocol {
    /// Untyped pointer to the underlying `GIOModuleScope` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `IOModuleScope` instance.
    public init(_ op: UnsafeMutablePointer<GIOModuleScope>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `IOModuleScopeProtocol`
    /// `GIOModuleScope` does not allow reference counting.
    public convenience init<T: IOModuleScopeProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GIOModuleScope, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GIOModuleScope`.
    deinit {
        // no reference counting for GIOModuleScope, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleScopeProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GIOModuleScope.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleScopeProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GIOModuleScope.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleScopeProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GIOModuleScope.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOModuleScopeProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GIOModuleScope>(opaquePointer))
    }



}

// MARK: - no IOModuleScope properties

// MARK: - no signals


public extension IOModuleScopeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GIOModuleScope` instance.
    var _ptr: UnsafeMutablePointer<GIOModuleScope> { return ptr.assumingMemoryBound(to: GIOModuleScope.self) }

    /// Block modules with the given `basename` from being loaded when
    /// this scope is used with g_io_modules_scan_all_in_directory_with_scope()
    /// or g_io_modules_load_all_in_directory_with_scope().
    func block(basename: UnsafePointer<gchar>) {
        g_io_module_scope_block(cast(_ptr), basename)
    
    }

    /// Free a module scope.
    func free() {
        g_io_module_scope_free(cast(_ptr))
    
    }

    /// Loads all the modules in the specified directory.
    /// 
    /// If don't require all modules to be initialized (and thus registering
    /// all gtypes) then you can use g_io_modules_scan_all_in_directory()
    /// which allows delayed/lazy loading of modules.
    func ioModulesLoadAllInDirectoryWithScope(dirname: UnsafePointer<gchar>) -> UnsafeMutablePointer<GList>! {
        let rv = g_io_modules_load_all_in_directory_with_scope(dirname, cast(_ptr))
        return cast(rv)
    }

    /// Scans all the modules in the specified directory, ensuring that
    /// any extension point implemented by a module is registered.
    /// 
    /// This may not actually load and initialize all the types in each
    /// module, some modules may be lazily loaded and initialized when
    /// an extension point it implementes is used with e.g.
    /// g_io_extension_point_get_extensions() or
    /// g_io_extension_point_get_extension_by_name().
    /// 
    /// If you need to guarantee that all types are loaded in all the modules,
    /// use g_io_modules_load_all_in_directory().
    func ioModulesScanAllInDirectoryWithScope(dirname: UnsafePointer<gchar>) {
        g_io_modules_scan_all_in_directory_with_scope(dirname, cast(_ptr))
    
    }
}



// MARK: - IOSchedulerJob Record

/// The `IOSchedulerJobProtocol` protocol exposes the methods and properties of an underlying `GIOSchedulerJob` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IOSchedulerJob`.
/// Alternatively, use `IOSchedulerJobRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Opaque class for defining and scheduling IO jobs.
public protocol IOSchedulerJobProtocol {
    /// Untyped pointer to the underlying `GIOSchedulerJob` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GIOSchedulerJob` instance.
    var _ptr: UnsafeMutablePointer<GIOSchedulerJob> { get }
}

/// The `IOSchedulerJobRef` type acts as a lightweight Swift reference to an underlying `GIOSchedulerJob` instance.
/// It exposes methods that can operate on this data type through `IOSchedulerJobProtocol` conformance.
/// Use `IOSchedulerJobRef` only as an `unowned` reference to an existing `GIOSchedulerJob` instance.
///
/// Opaque class for defining and scheduling IO jobs.
public struct IOSchedulerJobRef: IOSchedulerJobProtocol {
    /// Untyped pointer to the underlying `GIOSchedulerJob` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension IOSchedulerJobRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GIOSchedulerJob>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `IOSchedulerJobProtocol`
    init<T: IOSchedulerJobProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOSchedulerJobProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOSchedulerJobProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOSchedulerJobProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOSchedulerJobProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOSchedulerJobProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `IOSchedulerJob` type acts as an owner of an underlying `GIOSchedulerJob` instance.
/// It provides the methods that can operate on this data type through `IOSchedulerJobProtocol` conformance.
/// Use `IOSchedulerJob` as a strong reference or owner of a `GIOSchedulerJob` instance.
///
/// Opaque class for defining and scheduling IO jobs.
open class IOSchedulerJob: IOSchedulerJobProtocol {
    /// Untyped pointer to the underlying `GIOSchedulerJob` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `IOSchedulerJob` instance.
    public init(_ op: UnsafeMutablePointer<GIOSchedulerJob>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `IOSchedulerJobProtocol`
    /// `GIOSchedulerJob` does not allow reference counting.
    public convenience init<T: IOSchedulerJobProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GIOSchedulerJob, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GIOSchedulerJob`.
    deinit {
        // no reference counting for GIOSchedulerJob, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOSchedulerJobProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GIOSchedulerJob.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOSchedulerJobProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GIOSchedulerJob.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOSchedulerJobProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GIOSchedulerJob.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOSchedulerJobProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GIOSchedulerJob>(opaquePointer))
    }



}

// MARK: - no IOSchedulerJob properties

// MARK: - no signals


public extension IOSchedulerJobProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GIOSchedulerJob` instance.
    var _ptr: UnsafeMutablePointer<GIOSchedulerJob> { return ptr.assumingMemoryBound(to: GIOSchedulerJob.self) }

    /// Used from an I/O job to send a callback to be run in the thread
    /// that the job was started from, waiting for the result (and thus
    /// blocking the I/O job).
    ///
    /// **send_to_mainloop is deprecated:**
    /// Use g_main_context_invoke().
    @available(*, deprecated) func sendToMainloop(func_: @escaping GLib.SourceFunc, userData user_data: UnsafeMutableRawPointer, notify: @escaping GLib.DestroyNotify) -> Bool {
        let rv = g_io_scheduler_job_send_to_mainloop(cast(_ptr), func_, cast(user_data), notify)
        return Bool(rv != 0)
    }

    /// Used from an I/O job to send a callback to be run asynchronously in
    /// the thread that the job was started from. The callback will be run
    /// when the main loop is available, but at that time the I/O job might
    /// have finished. The return value from the callback is ignored.
    /// 
    /// Note that if you are passing the `user_data` from g_io_scheduler_push_job()
    /// on to this function you have to ensure that it is not freed before
    /// `func` is called, either by passing `nil` as `notify` to
    /// g_io_scheduler_push_job() or by using refcounting for `user_data`.
    ///
    /// **send_to_mainloop_async is deprecated:**
    /// Use g_main_context_invoke().
    @available(*, deprecated) func sendToMainloopAsync(func_: @escaping GLib.SourceFunc, userData user_data: UnsafeMutableRawPointer, notify: @escaping GLib.DestroyNotify) {
        g_io_scheduler_job_send_to_mainloop_async(cast(_ptr), func_, cast(user_data), notify)
    
    }
}



// MARK: - IOStreamAdapter Record

/// The `IOStreamAdapterProtocol` protocol exposes the methods and properties of an underlying `GIOStreamAdapter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IOStreamAdapter`.
/// Alternatively, use `IOStreamAdapterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol IOStreamAdapterProtocol {
    /// Untyped pointer to the underlying `GIOStreamAdapter` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GIOStreamAdapter` instance.
    var _ptr: UnsafeMutablePointer<GIOStreamAdapter> { get }
}

/// The `IOStreamAdapterRef` type acts as a lightweight Swift reference to an underlying `GIOStreamAdapter` instance.
/// It exposes methods that can operate on this data type through `IOStreamAdapterProtocol` conformance.
/// Use `IOStreamAdapterRef` only as an `unowned` reference to an existing `GIOStreamAdapter` instance.
///

public struct IOStreamAdapterRef: IOStreamAdapterProtocol {
    /// Untyped pointer to the underlying `GIOStreamAdapter` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension IOStreamAdapterRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GIOStreamAdapter>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `IOStreamAdapterProtocol`
    init<T: IOStreamAdapterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamAdapterProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamAdapterProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamAdapterProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamAdapterProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamAdapterProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `IOStreamAdapter` type acts as an owner of an underlying `GIOStreamAdapter` instance.
/// It provides the methods that can operate on this data type through `IOStreamAdapterProtocol` conformance.
/// Use `IOStreamAdapter` as a strong reference or owner of a `GIOStreamAdapter` instance.
///

open class IOStreamAdapter: IOStreamAdapterProtocol {
    /// Untyped pointer to the underlying `GIOStreamAdapter` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `IOStreamAdapter` instance.
    public init(_ op: UnsafeMutablePointer<GIOStreamAdapter>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `IOStreamAdapterProtocol`
    /// `GIOStreamAdapter` does not allow reference counting.
    public convenience init<T: IOStreamAdapterProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GIOStreamAdapter, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GIOStreamAdapter`.
    deinit {
        // no reference counting for GIOStreamAdapter, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamAdapterProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GIOStreamAdapter.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamAdapterProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GIOStreamAdapter.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamAdapterProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GIOStreamAdapter.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamAdapterProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GIOStreamAdapter>(opaquePointer))
    }



}

// MARK: - no IOStreamAdapter properties

// MARK: - no signals


public extension IOStreamAdapterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GIOStreamAdapter` instance.
    var _ptr: UnsafeMutablePointer<GIOStreamAdapter> { return ptr.assumingMemoryBound(to: GIOStreamAdapter.self) }

}



// MARK: - IOStreamClass Record

/// The `IOStreamClassProtocol` protocol exposes the methods and properties of an underlying `GIOStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IOStreamClass`.
/// Alternatively, use `IOStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol IOStreamClassProtocol {
    /// Untyped pointer to the underlying `GIOStreamClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GIOStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GIOStreamClass> { get }
}

/// The `IOStreamClassRef` type acts as a lightweight Swift reference to an underlying `GIOStreamClass` instance.
/// It exposes methods that can operate on this data type through `IOStreamClassProtocol` conformance.
/// Use `IOStreamClassRef` only as an `unowned` reference to an existing `GIOStreamClass` instance.
///

public struct IOStreamClassRef: IOStreamClassProtocol {
    /// Untyped pointer to the underlying `GIOStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension IOStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GIOStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `IOStreamClassProtocol`
    init<T: IOStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `IOStreamClass` type acts as an owner of an underlying `GIOStreamClass` instance.
/// It provides the methods that can operate on this data type through `IOStreamClassProtocol` conformance.
/// Use `IOStreamClass` as a strong reference or owner of a `GIOStreamClass` instance.
///

open class IOStreamClass: IOStreamClassProtocol {
    /// Untyped pointer to the underlying `GIOStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `IOStreamClass` instance.
    public init(_ op: UnsafeMutablePointer<GIOStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `IOStreamClassProtocol`
    /// `GIOStreamClass` does not allow reference counting.
    public convenience init<T: IOStreamClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GIOStreamClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GIOStreamClass`.
    deinit {
        // no reference counting for GIOStreamClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GIOStreamClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GIOStreamClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GIOStreamClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GIOStreamClass>(opaquePointer))
    }



}

// MARK: - no IOStreamClass properties

// MARK: - no signals


public extension IOStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GIOStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GIOStreamClass> { return ptr.assumingMemoryBound(to: GIOStreamClass.self) }

}



// MARK: - IOStreamPrivate Record

/// The `IOStreamPrivateProtocol` protocol exposes the methods and properties of an underlying `GIOStreamPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IOStreamPrivate`.
/// Alternatively, use `IOStreamPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol IOStreamPrivateProtocol {
    /// Untyped pointer to the underlying `GIOStreamPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GIOStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GIOStreamPrivate> { get }
}

/// The `IOStreamPrivateRef` type acts as a lightweight Swift reference to an underlying `GIOStreamPrivate` instance.
/// It exposes methods that can operate on this data type through `IOStreamPrivateProtocol` conformance.
/// Use `IOStreamPrivateRef` only as an `unowned` reference to an existing `GIOStreamPrivate` instance.
///

public struct IOStreamPrivateRef: IOStreamPrivateProtocol {
    /// Untyped pointer to the underlying `GIOStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension IOStreamPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GIOStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `IOStreamPrivateProtocol`
    init<T: IOStreamPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `IOStreamPrivate` type acts as an owner of an underlying `GIOStreamPrivate` instance.
/// It provides the methods that can operate on this data type through `IOStreamPrivateProtocol` conformance.
/// Use `IOStreamPrivate` as a strong reference or owner of a `GIOStreamPrivate` instance.
///

open class IOStreamPrivate: IOStreamPrivateProtocol {
    /// Untyped pointer to the underlying `GIOStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `IOStreamPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GIOStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `IOStreamPrivateProtocol`
    /// `GIOStreamPrivate` does not allow reference counting.
    public convenience init<T: IOStreamPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GIOStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GIOStreamPrivate`.
    deinit {
        // no reference counting for GIOStreamPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GIOStreamPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GIOStreamPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GIOStreamPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOStreamPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GIOStreamPrivate>(opaquePointer))
    }



}

// MARK: - no IOStreamPrivate properties

// MARK: - no signals


public extension IOStreamPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GIOStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GIOStreamPrivate> { return ptr.assumingMemoryBound(to: GIOStreamPrivate.self) }

}



// MARK: - IconIface Record

/// The `IconIfaceProtocol` protocol exposes the methods and properties of an underlying `GIconIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IconIface`.
/// Alternatively, use `IconIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GIconIface is used to implement GIcon types for various
/// different systems. See `GThemedIcon` and `GLoadableIcon` for
/// examples of how to implement this interface.
public protocol IconIfaceProtocol {
    /// Untyped pointer to the underlying `GIconIface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GIconIface` instance.
    var _ptr: UnsafeMutablePointer<GIconIface> { get }
}

/// The `IconIfaceRef` type acts as a lightweight Swift reference to an underlying `GIconIface` instance.
/// It exposes methods that can operate on this data type through `IconIfaceProtocol` conformance.
/// Use `IconIfaceRef` only as an `unowned` reference to an existing `GIconIface` instance.
///
/// GIconIface is used to implement GIcon types for various
/// different systems. See `GThemedIcon` and `GLoadableIcon` for
/// examples of how to implement this interface.
public struct IconIfaceRef: IconIfaceProtocol {
    /// Untyped pointer to the underlying `GIconIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension IconIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GIconIface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `IconIfaceProtocol`
    init<T: IconIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconIfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconIfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconIfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconIfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconIfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `IconIface` type acts as an owner of an underlying `GIconIface` instance.
/// It provides the methods that can operate on this data type through `IconIfaceProtocol` conformance.
/// Use `IconIface` as a strong reference or owner of a `GIconIface` instance.
///
/// GIconIface is used to implement GIcon types for various
/// different systems. See `GThemedIcon` and `GLoadableIcon` for
/// examples of how to implement this interface.
open class IconIface: IconIfaceProtocol {
    /// Untyped pointer to the underlying `GIconIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `IconIface` instance.
    public init(_ op: UnsafeMutablePointer<GIconIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `IconIfaceProtocol`
    /// `GIconIface` does not allow reference counting.
    public convenience init<T: IconIfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GIconIface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GIconIface`.
    deinit {
        // no reference counting for GIconIface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconIfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GIconIface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconIfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GIconIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconIfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GIconIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconIfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GIconIface>(opaquePointer))
    }



}

// MARK: - no IconIface properties

// MARK: - no signals


public extension IconIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GIconIface` instance.
    var _ptr: UnsafeMutablePointer<GIconIface> { return ptr.assumingMemoryBound(to: GIconIface.self) }

}



// MARK: - InetAddressClass Record

/// The `InetAddressClassProtocol` protocol exposes the methods and properties of an underlying `GInetAddressClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InetAddressClass`.
/// Alternatively, use `InetAddressClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol InetAddressClassProtocol {
    /// Untyped pointer to the underlying `GInetAddressClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GInetAddressClass` instance.
    var _ptr: UnsafeMutablePointer<GInetAddressClass> { get }
}

/// The `InetAddressClassRef` type acts as a lightweight Swift reference to an underlying `GInetAddressClass` instance.
/// It exposes methods that can operate on this data type through `InetAddressClassProtocol` conformance.
/// Use `InetAddressClassRef` only as an `unowned` reference to an existing `GInetAddressClass` instance.
///

public struct InetAddressClassRef: InetAddressClassProtocol {
    /// Untyped pointer to the underlying `GInetAddressClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension InetAddressClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GInetAddressClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `InetAddressClassProtocol`
    init<T: InetAddressClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `InetAddressClass` type acts as an owner of an underlying `GInetAddressClass` instance.
/// It provides the methods that can operate on this data type through `InetAddressClassProtocol` conformance.
/// Use `InetAddressClass` as a strong reference or owner of a `GInetAddressClass` instance.
///

open class InetAddressClass: InetAddressClassProtocol {
    /// Untyped pointer to the underlying `GInetAddressClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `InetAddressClass` instance.
    public init(_ op: UnsafeMutablePointer<GInetAddressClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `InetAddressClassProtocol`
    /// `GInetAddressClass` does not allow reference counting.
    public convenience init<T: InetAddressClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GInetAddressClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GInetAddressClass`.
    deinit {
        // no reference counting for GInetAddressClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GInetAddressClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GInetAddressClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GInetAddressClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GInetAddressClass>(opaquePointer))
    }



}

// MARK: - no InetAddressClass properties

// MARK: - no signals


public extension InetAddressClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GInetAddressClass` instance.
    var _ptr: UnsafeMutablePointer<GInetAddressClass> { return ptr.assumingMemoryBound(to: GInetAddressClass.self) }

}



// MARK: - InetAddressMaskClass Record

/// The `InetAddressMaskClassProtocol` protocol exposes the methods and properties of an underlying `GInetAddressMaskClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InetAddressMaskClass`.
/// Alternatively, use `InetAddressMaskClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol InetAddressMaskClassProtocol {
    /// Untyped pointer to the underlying `GInetAddressMaskClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GInetAddressMaskClass` instance.
    var _ptr: UnsafeMutablePointer<GInetAddressMaskClass> { get }
}

/// The `InetAddressMaskClassRef` type acts as a lightweight Swift reference to an underlying `GInetAddressMaskClass` instance.
/// It exposes methods that can operate on this data type through `InetAddressMaskClassProtocol` conformance.
/// Use `InetAddressMaskClassRef` only as an `unowned` reference to an existing `GInetAddressMaskClass` instance.
///

public struct InetAddressMaskClassRef: InetAddressMaskClassProtocol {
    /// Untyped pointer to the underlying `GInetAddressMaskClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension InetAddressMaskClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GInetAddressMaskClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `InetAddressMaskClassProtocol`
    init<T: InetAddressMaskClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `InetAddressMaskClass` type acts as an owner of an underlying `GInetAddressMaskClass` instance.
/// It provides the methods that can operate on this data type through `InetAddressMaskClassProtocol` conformance.
/// Use `InetAddressMaskClass` as a strong reference or owner of a `GInetAddressMaskClass` instance.
///

open class InetAddressMaskClass: InetAddressMaskClassProtocol {
    /// Untyped pointer to the underlying `GInetAddressMaskClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `InetAddressMaskClass` instance.
    public init(_ op: UnsafeMutablePointer<GInetAddressMaskClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `InetAddressMaskClassProtocol`
    /// `GInetAddressMaskClass` does not allow reference counting.
    public convenience init<T: InetAddressMaskClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GInetAddressMaskClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GInetAddressMaskClass`.
    deinit {
        // no reference counting for GInetAddressMaskClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GInetAddressMaskClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GInetAddressMaskClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GInetAddressMaskClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GInetAddressMaskClass>(opaquePointer))
    }



}

// MARK: - no InetAddressMaskClass properties

// MARK: - no signals


public extension InetAddressMaskClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GInetAddressMaskClass` instance.
    var _ptr: UnsafeMutablePointer<GInetAddressMaskClass> { return ptr.assumingMemoryBound(to: GInetAddressMaskClass.self) }

}



// MARK: - InetAddressMaskPrivate Record

/// The `InetAddressMaskPrivateProtocol` protocol exposes the methods and properties of an underlying `GInetAddressMaskPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InetAddressMaskPrivate`.
/// Alternatively, use `InetAddressMaskPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol InetAddressMaskPrivateProtocol {
    /// Untyped pointer to the underlying `GInetAddressMaskPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GInetAddressMaskPrivate` instance.
    var _ptr: UnsafeMutablePointer<GInetAddressMaskPrivate> { get }
}

/// The `InetAddressMaskPrivateRef` type acts as a lightweight Swift reference to an underlying `GInetAddressMaskPrivate` instance.
/// It exposes methods that can operate on this data type through `InetAddressMaskPrivateProtocol` conformance.
/// Use `InetAddressMaskPrivateRef` only as an `unowned` reference to an existing `GInetAddressMaskPrivate` instance.
///

public struct InetAddressMaskPrivateRef: InetAddressMaskPrivateProtocol {
    /// Untyped pointer to the underlying `GInetAddressMaskPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension InetAddressMaskPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GInetAddressMaskPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `InetAddressMaskPrivateProtocol`
    init<T: InetAddressMaskPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `InetAddressMaskPrivate` type acts as an owner of an underlying `GInetAddressMaskPrivate` instance.
/// It provides the methods that can operate on this data type through `InetAddressMaskPrivateProtocol` conformance.
/// Use `InetAddressMaskPrivate` as a strong reference or owner of a `GInetAddressMaskPrivate` instance.
///

open class InetAddressMaskPrivate: InetAddressMaskPrivateProtocol {
    /// Untyped pointer to the underlying `GInetAddressMaskPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `InetAddressMaskPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GInetAddressMaskPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `InetAddressMaskPrivateProtocol`
    /// `GInetAddressMaskPrivate` does not allow reference counting.
    public convenience init<T: InetAddressMaskPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GInetAddressMaskPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GInetAddressMaskPrivate`.
    deinit {
        // no reference counting for GInetAddressMaskPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GInetAddressMaskPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GInetAddressMaskPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GInetAddressMaskPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressMaskPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GInetAddressMaskPrivate>(opaquePointer))
    }



}

// MARK: - no InetAddressMaskPrivate properties

// MARK: - no signals


public extension InetAddressMaskPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GInetAddressMaskPrivate` instance.
    var _ptr: UnsafeMutablePointer<GInetAddressMaskPrivate> { return ptr.assumingMemoryBound(to: GInetAddressMaskPrivate.self) }

}



// MARK: - InetAddressPrivate Record

/// The `InetAddressPrivateProtocol` protocol exposes the methods and properties of an underlying `GInetAddressPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InetAddressPrivate`.
/// Alternatively, use `InetAddressPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol InetAddressPrivateProtocol {
    /// Untyped pointer to the underlying `GInetAddressPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GInetAddressPrivate` instance.
    var _ptr: UnsafeMutablePointer<GInetAddressPrivate> { get }
}

/// The `InetAddressPrivateRef` type acts as a lightweight Swift reference to an underlying `GInetAddressPrivate` instance.
/// It exposes methods that can operate on this data type through `InetAddressPrivateProtocol` conformance.
/// Use `InetAddressPrivateRef` only as an `unowned` reference to an existing `GInetAddressPrivate` instance.
///

public struct InetAddressPrivateRef: InetAddressPrivateProtocol {
    /// Untyped pointer to the underlying `GInetAddressPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension InetAddressPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GInetAddressPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `InetAddressPrivateProtocol`
    init<T: InetAddressPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `InetAddressPrivate` type acts as an owner of an underlying `GInetAddressPrivate` instance.
/// It provides the methods that can operate on this data type through `InetAddressPrivateProtocol` conformance.
/// Use `InetAddressPrivate` as a strong reference or owner of a `GInetAddressPrivate` instance.
///

open class InetAddressPrivate: InetAddressPrivateProtocol {
    /// Untyped pointer to the underlying `GInetAddressPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `InetAddressPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GInetAddressPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `InetAddressPrivateProtocol`
    /// `GInetAddressPrivate` does not allow reference counting.
    public convenience init<T: InetAddressPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GInetAddressPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GInetAddressPrivate`.
    deinit {
        // no reference counting for GInetAddressPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GInetAddressPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GInetAddressPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GInetAddressPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetAddressPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GInetAddressPrivate>(opaquePointer))
    }



}

// MARK: - no InetAddressPrivate properties

// MARK: - no signals


public extension InetAddressPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GInetAddressPrivate` instance.
    var _ptr: UnsafeMutablePointer<GInetAddressPrivate> { return ptr.assumingMemoryBound(to: GInetAddressPrivate.self) }

}



// MARK: - InetSocketAddressClass Record

/// The `InetSocketAddressClassProtocol` protocol exposes the methods and properties of an underlying `GInetSocketAddressClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InetSocketAddressClass`.
/// Alternatively, use `InetSocketAddressClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol InetSocketAddressClassProtocol {
    /// Untyped pointer to the underlying `GInetSocketAddressClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GInetSocketAddressClass` instance.
    var _ptr: UnsafeMutablePointer<GInetSocketAddressClass> { get }
}

/// The `InetSocketAddressClassRef` type acts as a lightweight Swift reference to an underlying `GInetSocketAddressClass` instance.
/// It exposes methods that can operate on this data type through `InetSocketAddressClassProtocol` conformance.
/// Use `InetSocketAddressClassRef` only as an `unowned` reference to an existing `GInetSocketAddressClass` instance.
///

public struct InetSocketAddressClassRef: InetSocketAddressClassProtocol {
    /// Untyped pointer to the underlying `GInetSocketAddressClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension InetSocketAddressClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GInetSocketAddressClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `InetSocketAddressClassProtocol`
    init<T: InetSocketAddressClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `InetSocketAddressClass` type acts as an owner of an underlying `GInetSocketAddressClass` instance.
/// It provides the methods that can operate on this data type through `InetSocketAddressClassProtocol` conformance.
/// Use `InetSocketAddressClass` as a strong reference or owner of a `GInetSocketAddressClass` instance.
///

open class InetSocketAddressClass: InetSocketAddressClassProtocol {
    /// Untyped pointer to the underlying `GInetSocketAddressClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `InetSocketAddressClass` instance.
    public init(_ op: UnsafeMutablePointer<GInetSocketAddressClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `InetSocketAddressClassProtocol`
    /// `GInetSocketAddressClass` does not allow reference counting.
    public convenience init<T: InetSocketAddressClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GInetSocketAddressClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GInetSocketAddressClass`.
    deinit {
        // no reference counting for GInetSocketAddressClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GInetSocketAddressClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GInetSocketAddressClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GInetSocketAddressClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GInetSocketAddressClass>(opaquePointer))
    }



}

// MARK: - no InetSocketAddressClass properties

// MARK: - no signals


public extension InetSocketAddressClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GInetSocketAddressClass` instance.
    var _ptr: UnsafeMutablePointer<GInetSocketAddressClass> { return ptr.assumingMemoryBound(to: GInetSocketAddressClass.self) }

}



// MARK: - InetSocketAddressPrivate Record

/// The `InetSocketAddressPrivateProtocol` protocol exposes the methods and properties of an underlying `GInetSocketAddressPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InetSocketAddressPrivate`.
/// Alternatively, use `InetSocketAddressPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol InetSocketAddressPrivateProtocol {
    /// Untyped pointer to the underlying `GInetSocketAddressPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GInetSocketAddressPrivate` instance.
    var _ptr: UnsafeMutablePointer<GInetSocketAddressPrivate> { get }
}

/// The `InetSocketAddressPrivateRef` type acts as a lightweight Swift reference to an underlying `GInetSocketAddressPrivate` instance.
/// It exposes methods that can operate on this data type through `InetSocketAddressPrivateProtocol` conformance.
/// Use `InetSocketAddressPrivateRef` only as an `unowned` reference to an existing `GInetSocketAddressPrivate` instance.
///

public struct InetSocketAddressPrivateRef: InetSocketAddressPrivateProtocol {
    /// Untyped pointer to the underlying `GInetSocketAddressPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension InetSocketAddressPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GInetSocketAddressPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `InetSocketAddressPrivateProtocol`
    init<T: InetSocketAddressPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `InetSocketAddressPrivate` type acts as an owner of an underlying `GInetSocketAddressPrivate` instance.
/// It provides the methods that can operate on this data type through `InetSocketAddressPrivateProtocol` conformance.
/// Use `InetSocketAddressPrivate` as a strong reference or owner of a `GInetSocketAddressPrivate` instance.
///

open class InetSocketAddressPrivate: InetSocketAddressPrivateProtocol {
    /// Untyped pointer to the underlying `GInetSocketAddressPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `InetSocketAddressPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GInetSocketAddressPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `InetSocketAddressPrivateProtocol`
    /// `GInetSocketAddressPrivate` does not allow reference counting.
    public convenience init<T: InetSocketAddressPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GInetSocketAddressPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GInetSocketAddressPrivate`.
    deinit {
        // no reference counting for GInetSocketAddressPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GInetSocketAddressPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GInetSocketAddressPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GInetSocketAddressPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InetSocketAddressPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GInetSocketAddressPrivate>(opaquePointer))
    }



}

// MARK: - no InetSocketAddressPrivate properties

// MARK: - no signals


public extension InetSocketAddressPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GInetSocketAddressPrivate` instance.
    var _ptr: UnsafeMutablePointer<GInetSocketAddressPrivate> { return ptr.assumingMemoryBound(to: GInetSocketAddressPrivate.self) }

}



// MARK: - InitableIface Record

/// The `InitableIfaceProtocol` protocol exposes the methods and properties of an underlying `GInitableIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InitableIface`.
/// Alternatively, use `InitableIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Provides an interface for initializing object such that initialization
/// may fail.
public protocol InitableIfaceProtocol {
    /// Untyped pointer to the underlying `GInitableIface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GInitableIface` instance.
    var _ptr: UnsafeMutablePointer<GInitableIface> { get }
}

/// The `InitableIfaceRef` type acts as a lightweight Swift reference to an underlying `GInitableIface` instance.
/// It exposes methods that can operate on this data type through `InitableIfaceProtocol` conformance.
/// Use `InitableIfaceRef` only as an `unowned` reference to an existing `GInitableIface` instance.
///
/// Provides an interface for initializing object such that initialization
/// may fail.
public struct InitableIfaceRef: InitableIfaceProtocol {
    /// Untyped pointer to the underlying `GInitableIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension InitableIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GInitableIface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `InitableIfaceProtocol`
    init<T: InitableIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitableIfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitableIfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitableIfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitableIfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitableIfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `InitableIface` type acts as an owner of an underlying `GInitableIface` instance.
/// It provides the methods that can operate on this data type through `InitableIfaceProtocol` conformance.
/// Use `InitableIface` as a strong reference or owner of a `GInitableIface` instance.
///
/// Provides an interface for initializing object such that initialization
/// may fail.
open class InitableIface: InitableIfaceProtocol {
    /// Untyped pointer to the underlying `GInitableIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `InitableIface` instance.
    public init(_ op: UnsafeMutablePointer<GInitableIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `InitableIfaceProtocol`
    /// `GInitableIface` does not allow reference counting.
    public convenience init<T: InitableIfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GInitableIface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GInitableIface`.
    deinit {
        // no reference counting for GInitableIface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitableIfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GInitableIface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitableIfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GInitableIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitableIfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GInitableIface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitableIfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GInitableIface>(opaquePointer))
    }



}

// MARK: - no InitableIface properties

// MARK: - no signals


public extension InitableIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GInitableIface` instance.
    var _ptr: UnsafeMutablePointer<GInitableIface> { return ptr.assumingMemoryBound(to: GInitableIface.self) }

}



// MARK: - InputMessage Record

/// The `InputMessageProtocol` protocol exposes the methods and properties of an underlying `GInputMessage` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InputMessage`.
/// Alternatively, use `InputMessageRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
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
public protocol InputMessageProtocol {
    /// Untyped pointer to the underlying `GInputMessage` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GInputMessage` instance.
    var _ptr: UnsafeMutablePointer<GInputMessage> { get }
}

/// The `InputMessageRef` type acts as a lightweight Swift reference to an underlying `GInputMessage` instance.
/// It exposes methods that can operate on this data type through `InputMessageProtocol` conformance.
/// Use `InputMessageRef` only as an `unowned` reference to an existing `GInputMessage` instance.
///
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
public struct InputMessageRef: InputMessageProtocol {
    /// Untyped pointer to the underlying `GInputMessage` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension InputMessageRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GInputMessage>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `InputMessageProtocol`
    init<T: InputMessageProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputMessageProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputMessageProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputMessageProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputMessageProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputMessageProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `InputMessage` type acts as an owner of an underlying `GInputMessage` instance.
/// It provides the methods that can operate on this data type through `InputMessageProtocol` conformance.
/// Use `InputMessage` as a strong reference or owner of a `GInputMessage` instance.
///
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
open class InputMessage: InputMessageProtocol {
    /// Untyped pointer to the underlying `GInputMessage` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `InputMessage` instance.
    public init(_ op: UnsafeMutablePointer<GInputMessage>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `InputMessageProtocol`
    /// `GInputMessage` does not allow reference counting.
    public convenience init<T: InputMessageProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GInputMessage, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GInputMessage`.
    deinit {
        // no reference counting for GInputMessage, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputMessageProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GInputMessage.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputMessageProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GInputMessage.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputMessageProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GInputMessage.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputMessageProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GInputMessage>(opaquePointer))
    }



}

// MARK: - no InputMessage properties

// MARK: - no signals


public extension InputMessageProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GInputMessage` instance.
    var _ptr: UnsafeMutablePointer<GInputMessage> { return ptr.assumingMemoryBound(to: GInputMessage.self) }

}



// MARK: - InputStreamClass Record

/// The `InputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GInputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InputStreamClass`.
/// Alternatively, use `InputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol InputStreamClassProtocol {
    /// Untyped pointer to the underlying `GInputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GInputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GInputStreamClass> { get }
}

/// The `InputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GInputStreamClass` instance.
/// It exposes methods that can operate on this data type through `InputStreamClassProtocol` conformance.
/// Use `InputStreamClassRef` only as an `unowned` reference to an existing `GInputStreamClass` instance.
///

public struct InputStreamClassRef: InputStreamClassProtocol {
    /// Untyped pointer to the underlying `GInputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension InputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `InputStreamClassProtocol`
    init<T: InputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `InputStreamClass` type acts as an owner of an underlying `GInputStreamClass` instance.
/// It provides the methods that can operate on this data type through `InputStreamClassProtocol` conformance.
/// Use `InputStreamClass` as a strong reference or owner of a `GInputStreamClass` instance.
///

open class InputStreamClass: InputStreamClassProtocol {
    /// Untyped pointer to the underlying `GInputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `InputStreamClass` instance.
    public init(_ op: UnsafeMutablePointer<GInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `InputStreamClassProtocol`
    /// `GInputStreamClass` does not allow reference counting.
    public convenience init<T: InputStreamClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GInputStreamClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GInputStreamClass`.
    deinit {
        // no reference counting for GInputStreamClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GInputStreamClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GInputStreamClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GInputStreamClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GInputStreamClass>(opaquePointer))
    }



}

// MARK: - no InputStreamClass properties

// MARK: - no signals


public extension InputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GInputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GInputStreamClass> { return ptr.assumingMemoryBound(to: GInputStreamClass.self) }

}



// MARK: - InputStreamPrivate Record

/// The `InputStreamPrivateProtocol` protocol exposes the methods and properties of an underlying `GInputStreamPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InputStreamPrivate`.
/// Alternatively, use `InputStreamPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol InputStreamPrivateProtocol {
    /// Untyped pointer to the underlying `GInputStreamPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GInputStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GInputStreamPrivate> { get }
}

/// The `InputStreamPrivateRef` type acts as a lightweight Swift reference to an underlying `GInputStreamPrivate` instance.
/// It exposes methods that can operate on this data type through `InputStreamPrivateProtocol` conformance.
/// Use `InputStreamPrivateRef` only as an `unowned` reference to an existing `GInputStreamPrivate` instance.
///

public struct InputStreamPrivateRef: InputStreamPrivateProtocol {
    /// Untyped pointer to the underlying `GInputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension InputStreamPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GInputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `InputStreamPrivateProtocol`
    init<T: InputStreamPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `InputStreamPrivate` type acts as an owner of an underlying `GInputStreamPrivate` instance.
/// It provides the methods that can operate on this data type through `InputStreamPrivateProtocol` conformance.
/// Use `InputStreamPrivate` as a strong reference or owner of a `GInputStreamPrivate` instance.
///

open class InputStreamPrivate: InputStreamPrivateProtocol {
    /// Untyped pointer to the underlying `GInputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `InputStreamPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GInputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `InputStreamPrivateProtocol`
    /// `GInputStreamPrivate` does not allow reference counting.
    public convenience init<T: InputStreamPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GInputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GInputStreamPrivate`.
    deinit {
        // no reference counting for GInputStreamPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GInputStreamPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GInputStreamPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GInputStreamPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputStreamPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GInputStreamPrivate>(opaquePointer))
    }



}

// MARK: - no InputStreamPrivate properties

// MARK: - no signals


public extension InputStreamPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GInputStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GInputStreamPrivate> { return ptr.assumingMemoryBound(to: GInputStreamPrivate.self) }

}



// MARK: - InputVector Record

/// The `InputVectorProtocol` protocol exposes the methods and properties of an underlying `GInputVector` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InputVector`.
/// Alternatively, use `InputVectorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Structure used for scatter/gather data input.
/// You generally pass in an array of `GInputVectors`
/// and the operation will store the read data starting in the
/// first buffer, switching to the next as needed.
public protocol InputVectorProtocol {
    /// Untyped pointer to the underlying `GInputVector` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GInputVector` instance.
    var _ptr: UnsafeMutablePointer<GInputVector> { get }
}

/// The `InputVectorRef` type acts as a lightweight Swift reference to an underlying `GInputVector` instance.
/// It exposes methods that can operate on this data type through `InputVectorProtocol` conformance.
/// Use `InputVectorRef` only as an `unowned` reference to an existing `GInputVector` instance.
///
/// Structure used for scatter/gather data input.
/// You generally pass in an array of `GInputVectors`
/// and the operation will store the read data starting in the
/// first buffer, switching to the next as needed.
public struct InputVectorRef: InputVectorProtocol {
    /// Untyped pointer to the underlying `GInputVector` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension InputVectorRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GInputVector>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `InputVectorProtocol`
    init<T: InputVectorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputVectorProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputVectorProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputVectorProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputVectorProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputVectorProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `InputVector` type acts as an owner of an underlying `GInputVector` instance.
/// It provides the methods that can operate on this data type through `InputVectorProtocol` conformance.
/// Use `InputVector` as a strong reference or owner of a `GInputVector` instance.
///
/// Structure used for scatter/gather data input.
/// You generally pass in an array of `GInputVectors`
/// and the operation will store the read data starting in the
/// first buffer, switching to the next as needed.
open class InputVector: InputVectorProtocol {
    /// Untyped pointer to the underlying `GInputVector` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `InputVector` instance.
    public init(_ op: UnsafeMutablePointer<GInputVector>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `InputVectorProtocol`
    /// `GInputVector` does not allow reference counting.
    public convenience init<T: InputVectorProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GInputVector, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GInputVector`.
    deinit {
        // no reference counting for GInputVector, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputVectorProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GInputVector.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputVectorProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GInputVector.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputVectorProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GInputVector.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InputVectorProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GInputVector>(opaquePointer))
    }



}

// MARK: - no InputVector properties

// MARK: - no signals


public extension InputVectorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GInputVector` instance.
    var _ptr: UnsafeMutablePointer<GInputVector> { return ptr.assumingMemoryBound(to: GInputVector.self) }

}



// MARK: - ListModelInterface Record

/// The `ListModelInterfaceProtocol` protocol exposes the methods and properties of an underlying `GListModelInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListModelInterface`.
/// Alternatively, use `ListModelInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The virtual function table for `GListModel`.
public protocol ListModelInterfaceProtocol {
    /// Untyped pointer to the underlying `GListModelInterface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GListModelInterface` instance.
    var _ptr: UnsafeMutablePointer<GListModelInterface> { get }
}

/// The `ListModelInterfaceRef` type acts as a lightweight Swift reference to an underlying `GListModelInterface` instance.
/// It exposes methods that can operate on this data type through `ListModelInterfaceProtocol` conformance.
/// Use `ListModelInterfaceRef` only as an `unowned` reference to an existing `GListModelInterface` instance.
///
/// The virtual function table for `GListModel`.
public struct ListModelInterfaceRef: ListModelInterfaceProtocol {
    /// Untyped pointer to the underlying `GListModelInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ListModelInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GListModelInterface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ListModelInterfaceProtocol`
    init<T: ListModelInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListModelInterfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListModelInterfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListModelInterfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListModelInterfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListModelInterfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ListModelInterface` type acts as an owner of an underlying `GListModelInterface` instance.
/// It provides the methods that can operate on this data type through `ListModelInterfaceProtocol` conformance.
/// Use `ListModelInterface` as a strong reference or owner of a `GListModelInterface` instance.
///
/// The virtual function table for `GListModel`.
open class ListModelInterface: ListModelInterfaceProtocol {
    /// Untyped pointer to the underlying `GListModelInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ListModelInterface` instance.
    public init(_ op: UnsafeMutablePointer<GListModelInterface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ListModelInterfaceProtocol`
    /// `GListModelInterface` does not allow reference counting.
    public convenience init<T: ListModelInterfaceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GListModelInterface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GListModelInterface`.
    deinit {
        // no reference counting for GListModelInterface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListModelInterfaceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GListModelInterface.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListModelInterfaceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GListModelInterface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListModelInterfaceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GListModelInterface.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListModelInterfaceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GListModelInterface>(opaquePointer))
    }



}

// MARK: - no ListModelInterface properties

// MARK: - no signals


public extension ListModelInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GListModelInterface` instance.
    var _ptr: UnsafeMutablePointer<GListModelInterface> { return ptr.assumingMemoryBound(to: GListModelInterface.self) }

}



