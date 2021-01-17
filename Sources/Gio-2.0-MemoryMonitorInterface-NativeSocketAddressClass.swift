import CGLib
import GLib
import GLibObject

/// Metatype/GType declaration for MemoryMonitor
public extension MemoryMonitorInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `MemoryMonitor`
    static var metatypeReference: GType { g_memory_monitor_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GMemoryMonitorInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GMemoryMonitorInterface.self) }
    
    static var metatype: GMemoryMonitorInterface? { metatypePointer?.pointee } 
    
    static var wrapper: MemoryMonitorInterfaceRef? { MemoryMonitorInterfaceRef(metatypePointer) }
    
    
}

// MARK: - MemoryMonitorInterface Record

/// The `MemoryMonitorInterfaceProtocol` protocol exposes the methods and properties of an underlying `GMemoryMonitorInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MemoryMonitorInterface`.
/// Alternatively, use `MemoryMonitorInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The virtual function table for `GMemoryMonitor`.
public protocol MemoryMonitorInterfaceProtocol {
        /// Untyped pointer to the underlying `GMemoryMonitorInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GMemoryMonitorInterface` instance.
    var _ptr: UnsafeMutablePointer<GMemoryMonitorInterface>! { get }

}

/// The `MemoryMonitorInterfaceRef` type acts as a lightweight Swift reference to an underlying `GMemoryMonitorInterface` instance.
/// It exposes methods that can operate on this data type through `MemoryMonitorInterfaceProtocol` conformance.
/// Use `MemoryMonitorInterfaceRef` only as an `unowned` reference to an existing `GMemoryMonitorInterface` instance.
///
/// The virtual function table for `GMemoryMonitor`.
public struct MemoryMonitorInterfaceRef: MemoryMonitorInterfaceProtocol {
        /// Untyped pointer to the underlying `GMemoryMonitorInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MemoryMonitorInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GMemoryMonitorInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GMemoryMonitorInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GMemoryMonitorInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GMemoryMonitorInterface>?) {
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

    /// Reference intialiser for a related type that implements `MemoryMonitorInterfaceProtocol`
    @inlinable init<T: MemoryMonitorInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryMonitorInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryMonitorInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryMonitorInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryMonitorInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryMonitorInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: MemoryMonitorInterface Record: MemoryMonitorInterfaceProtocol extension (methods and fields)
public extension MemoryMonitorInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMemoryMonitorInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GMemoryMonitorInterface>! { return ptr?.assumingMemoryBound(to: GMemoryMonitorInterface.self) }


    // var gIface is unavailable because g_iface is private

    // var lowMemoryWarning is unavailable because low_memory_warning is void

}



/// Metatype/GType declaration for MemoryOutputStream
public extension MemoryOutputStreamClassRef {
    
    /// This getter returns the GLib type identifier registered for `MemoryOutputStream`
    static var metatypeReference: GType { g_memory_output_stream_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GMemoryOutputStreamClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GMemoryOutputStreamClass.self) }
    
    static var metatype: GMemoryOutputStreamClass? { metatypePointer?.pointee } 
    
    static var wrapper: MemoryOutputStreamClassRef? { MemoryOutputStreamClassRef(metatypePointer) }
    
    
}

// MARK: - MemoryOutputStreamClass Record

/// The `MemoryOutputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GMemoryOutputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MemoryOutputStreamClass`.
/// Alternatively, use `MemoryOutputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MemoryOutputStreamClassProtocol {
        /// Untyped pointer to the underlying `GMemoryOutputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GMemoryOutputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GMemoryOutputStreamClass>! { get }

}

/// The `MemoryOutputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GMemoryOutputStreamClass` instance.
/// It exposes methods that can operate on this data type through `MemoryOutputStreamClassProtocol` conformance.
/// Use `MemoryOutputStreamClassRef` only as an `unowned` reference to an existing `GMemoryOutputStreamClass` instance.
///

public struct MemoryOutputStreamClassRef: MemoryOutputStreamClassProtocol {
        /// Untyped pointer to the underlying `GMemoryOutputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MemoryOutputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GMemoryOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GMemoryOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GMemoryOutputStreamClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GMemoryOutputStreamClass>?) {
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

    /// Reference intialiser for a related type that implements `MemoryOutputStreamClassProtocol`
    @inlinable init<T: MemoryOutputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryOutputStreamClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: MemoryOutputStreamClass Record: MemoryOutputStreamClassProtocol extension (methods and fields)
public extension MemoryOutputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMemoryOutputStreamClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GMemoryOutputStreamClass>! { return ptr?.assumingMemoryBound(to: GMemoryOutputStreamClass.self) }


    @inlinable var parentClass: GOutputStreamClass {
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



/// Metatype/GType declaration for MenuAttributeIter
public extension MenuAttributeIterClassRef {
    
    /// This getter returns the GLib type identifier registered for `MenuAttributeIter`
    static var metatypeReference: GType { g_menu_attribute_iter_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GMenuAttributeIterClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GMenuAttributeIterClass.self) }
    
    static var metatype: GMenuAttributeIterClass? { metatypePointer?.pointee } 
    
    static var wrapper: MenuAttributeIterClassRef? { MenuAttributeIterClassRef(metatypePointer) }
    
    
}

// MARK: - MenuAttributeIterClass Record

/// The `MenuAttributeIterClassProtocol` protocol exposes the methods and properties of an underlying `GMenuAttributeIterClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuAttributeIterClass`.
/// Alternatively, use `MenuAttributeIterClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MenuAttributeIterClassProtocol {
        /// Untyped pointer to the underlying `GMenuAttributeIterClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GMenuAttributeIterClass` instance.
    var _ptr: UnsafeMutablePointer<GMenuAttributeIterClass>! { get }

}

/// The `MenuAttributeIterClassRef` type acts as a lightweight Swift reference to an underlying `GMenuAttributeIterClass` instance.
/// It exposes methods that can operate on this data type through `MenuAttributeIterClassProtocol` conformance.
/// Use `MenuAttributeIterClassRef` only as an `unowned` reference to an existing `GMenuAttributeIterClass` instance.
///

public struct MenuAttributeIterClassRef: MenuAttributeIterClassProtocol {
        /// Untyped pointer to the underlying `GMenuAttributeIterClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MenuAttributeIterClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GMenuAttributeIterClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GMenuAttributeIterClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GMenuAttributeIterClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GMenuAttributeIterClass>?) {
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

    /// Reference intialiser for a related type that implements `MenuAttributeIterClassProtocol`
    @inlinable init<T: MenuAttributeIterClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAttributeIterClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: MenuAttributeIterClass Record: MenuAttributeIterClassProtocol extension (methods and fields)
public extension MenuAttributeIterClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMenuAttributeIterClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GMenuAttributeIterClass>! { return ptr?.assumingMemoryBound(to: GMenuAttributeIterClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var getNext is unavailable because get_next is void

}



/// Metatype/GType declaration for MenuLinkIter
public extension MenuLinkIterClassRef {
    
    /// This getter returns the GLib type identifier registered for `MenuLinkIter`
    static var metatypeReference: GType { g_menu_link_iter_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GMenuLinkIterClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GMenuLinkIterClass.self) }
    
    static var metatype: GMenuLinkIterClass? { metatypePointer?.pointee } 
    
    static var wrapper: MenuLinkIterClassRef? { MenuLinkIterClassRef(metatypePointer) }
    
    
}

// MARK: - MenuLinkIterClass Record

/// The `MenuLinkIterClassProtocol` protocol exposes the methods and properties of an underlying `GMenuLinkIterClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuLinkIterClass`.
/// Alternatively, use `MenuLinkIterClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MenuLinkIterClassProtocol {
        /// Untyped pointer to the underlying `GMenuLinkIterClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GMenuLinkIterClass` instance.
    var _ptr: UnsafeMutablePointer<GMenuLinkIterClass>! { get }

}

/// The `MenuLinkIterClassRef` type acts as a lightweight Swift reference to an underlying `GMenuLinkIterClass` instance.
/// It exposes methods that can operate on this data type through `MenuLinkIterClassProtocol` conformance.
/// Use `MenuLinkIterClassRef` only as an `unowned` reference to an existing `GMenuLinkIterClass` instance.
///

public struct MenuLinkIterClassRef: MenuLinkIterClassProtocol {
        /// Untyped pointer to the underlying `GMenuLinkIterClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MenuLinkIterClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GMenuLinkIterClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GMenuLinkIterClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GMenuLinkIterClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GMenuLinkIterClass>?) {
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

    /// Reference intialiser for a related type that implements `MenuLinkIterClassProtocol`
    @inlinable init<T: MenuLinkIterClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuLinkIterClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: MenuLinkIterClass Record: MenuLinkIterClassProtocol extension (methods and fields)
public extension MenuLinkIterClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMenuLinkIterClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GMenuLinkIterClass>! { return ptr?.assumingMemoryBound(to: GMenuLinkIterClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var getNext is unavailable because get_next is void

}



/// Metatype/GType declaration for MenuModel
public extension MenuModelClassRef {
    
    /// This getter returns the GLib type identifier registered for `MenuModel`
    static var metatypeReference: GType { g_menu_model_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GMenuModelClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GMenuModelClass.self) }
    
    static var metatype: GMenuModelClass? { metatypePointer?.pointee } 
    
    static var wrapper: MenuModelClassRef? { MenuModelClassRef(metatypePointer) }
    
    
}

// MARK: - MenuModelClass Record

/// The `MenuModelClassProtocol` protocol exposes the methods and properties of an underlying `GMenuModelClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuModelClass`.
/// Alternatively, use `MenuModelClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MenuModelClassProtocol {
        /// Untyped pointer to the underlying `GMenuModelClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GMenuModelClass` instance.
    var _ptr: UnsafeMutablePointer<GMenuModelClass>! { get }

}

/// The `MenuModelClassRef` type acts as a lightweight Swift reference to an underlying `GMenuModelClass` instance.
/// It exposes methods that can operate on this data type through `MenuModelClassProtocol` conformance.
/// Use `MenuModelClassRef` only as an `unowned` reference to an existing `GMenuModelClass` instance.
///

public struct MenuModelClassRef: MenuModelClassProtocol {
        /// Untyped pointer to the underlying `GMenuModelClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MenuModelClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GMenuModelClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GMenuModelClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GMenuModelClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GMenuModelClass>?) {
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

    /// Reference intialiser for a related type that implements `MenuModelClassProtocol`
    @inlinable init<T: MenuModelClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuModelClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: MenuModelClass Record: MenuModelClassProtocol extension (methods and fields)
public extension MenuModelClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMenuModelClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GMenuModelClass>! { return ptr?.assumingMemoryBound(to: GMenuModelClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var isMutable is unavailable because is_mutable is void

    // var getNItems is unavailable because get_n_items is void

    // var getItemAttributes is unavailable because get_item_attributes is void

    // var iterateItemAttributes is unavailable because iterate_item_attributes is void

    // var getItemAttributeValue is unavailable because get_item_attribute_value is void

    // var getItemLinks is unavailable because get_item_links is void

    // var iterateItemLinks is unavailable because iterate_item_links is void

    // var getItemLink is unavailable because get_item_link is void

}



/// Metatype/GType declaration for Mount
public extension MountIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `Mount`
    static var metatypeReference: GType { g_mount_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GMountIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GMountIface.self) }
    
    static var metatype: GMountIface? { metatypePointer?.pointee } 
    
    static var wrapper: MountIfaceRef? { MountIfaceRef(metatypePointer) }
    
    
}

// MARK: - MountIface Record

/// The `MountIfaceProtocol` protocol exposes the methods and properties of an underlying `GMountIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MountIface`.
/// Alternatively, use `MountIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Interface for implementing operations for mounts.
public protocol MountIfaceProtocol {
        /// Untyped pointer to the underlying `GMountIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GMountIface` instance.
    var _ptr: UnsafeMutablePointer<GMountIface>! { get }

}

/// The `MountIfaceRef` type acts as a lightweight Swift reference to an underlying `GMountIface` instance.
/// It exposes methods that can operate on this data type through `MountIfaceProtocol` conformance.
/// Use `MountIfaceRef` only as an `unowned` reference to an existing `GMountIface` instance.
///
/// Interface for implementing operations for mounts.
public struct MountIfaceRef: MountIfaceProtocol {
        /// Untyped pointer to the underlying `GMountIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MountIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GMountIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GMountIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GMountIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GMountIface>?) {
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

    /// Reference intialiser for a related type that implements `MountIfaceProtocol`
    @inlinable init<T: MountIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: MountIface Record: MountIfaceProtocol extension (methods and fields)
public extension MountIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMountIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GMountIface>! { return ptr?.assumingMemoryBound(to: GMountIface.self) }


    /// The parent interface.
    @inlinable var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var changed is unavailable because changed is void

    // var unmounted is unavailable because unmounted is void

    // var getRoot is unavailable because get_root is void

    // var getName is unavailable because get_name is void

    // var getIcon is unavailable because get_icon is void

    // var getUuid is unavailable because get_uuid is void

    // var getVolume is unavailable because get_volume is void

    // var getDrive is unavailable because get_drive is void

    // var canUnmount is unavailable because can_unmount is void

    // var canEject is unavailable because can_eject is void

    // var unmount is unavailable because unmount is void

    // var unmountFinish is unavailable because unmount_finish is void

    // var eject is unavailable because eject is void

    // var ejectFinish is unavailable because eject_finish is void

    // var remount is unavailable because remount is void

    // var remountFinish is unavailable because remount_finish is void

    // var guessContentType is unavailable because guess_content_type is void

    // var guessContentTypeFinish is unavailable because guess_content_type_finish is void

    // var guessContentTypeSync is unavailable because guess_content_type_sync is void

    // var preUnmount is unavailable because pre_unmount is void

    // var unmountWithOperation is unavailable because unmount_with_operation is void

    // var unmountWithOperationFinish is unavailable because unmount_with_operation_finish is void

    // var ejectWithOperation is unavailable because eject_with_operation is void

    // var ejectWithOperationFinish is unavailable because eject_with_operation_finish is void

    // var getDefaultLocation is unavailable because get_default_location is void

    // var getSortKey is unavailable because get_sort_key is void

    // var getSymbolicIcon is unavailable because get_symbolic_icon is void

}



/// Metatype/GType declaration for MountOperation
public extension MountOperationClassRef {
    
    /// This getter returns the GLib type identifier registered for `MountOperation`
    static var metatypeReference: GType { g_mount_operation_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GMountOperationClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GMountOperationClass.self) }
    
    static var metatype: GMountOperationClass? { metatypePointer?.pointee } 
    
    static var wrapper: MountOperationClassRef? { MountOperationClassRef(metatypePointer) }
    
    
}

// MARK: - MountOperationClass Record

/// The `MountOperationClassProtocol` protocol exposes the methods and properties of an underlying `GMountOperationClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MountOperationClass`.
/// Alternatively, use `MountOperationClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MountOperationClassProtocol {
        /// Untyped pointer to the underlying `GMountOperationClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GMountOperationClass` instance.
    var _ptr: UnsafeMutablePointer<GMountOperationClass>! { get }

}

/// The `MountOperationClassRef` type acts as a lightweight Swift reference to an underlying `GMountOperationClass` instance.
/// It exposes methods that can operate on this data type through `MountOperationClassProtocol` conformance.
/// Use `MountOperationClassRef` only as an `unowned` reference to an existing `GMountOperationClass` instance.
///

public struct MountOperationClassRef: MountOperationClassProtocol {
        /// Untyped pointer to the underlying `GMountOperationClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MountOperationClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GMountOperationClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GMountOperationClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GMountOperationClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GMountOperationClass>?) {
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

    /// Reference intialiser for a related type that implements `MountOperationClassProtocol`
    @inlinable init<T: MountOperationClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: MountOperationClass Record: MountOperationClassProtocol extension (methods and fields)
public extension MountOperationClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMountOperationClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GMountOperationClass>! { return ptr?.assumingMemoryBound(to: GMountOperationClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var askPassword is unavailable because ask_password is void

    // var askQuestion is unavailable because ask_question is void

    // var reply is unavailable because reply is void

    // var aborted is unavailable because aborted is void

    // var showProcesses is unavailable because show_processes is void

    // var showUnmountProgress is unavailable because show_unmount_progress is void

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

    // var GReserved4 is unavailable because _g_reserved4 is void

    // var GReserved5 is unavailable because _g_reserved5 is void

    // var GReserved6 is unavailable because _g_reserved6 is void

    // var GReserved7 is unavailable because _g_reserved7 is void

    // var GReserved8 is unavailable because _g_reserved8 is void

    // var GReserved9 is unavailable because _g_reserved9 is void

}



/// Metatype/GType declaration for NativeSocketAddress
public extension NativeSocketAddressClassRef {
    
    /// This getter returns the GLib type identifier registered for `NativeSocketAddress`
    static var metatypeReference: GType { g_native_socket_address_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GNativeSocketAddressClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GNativeSocketAddressClass.self) }
    
    static var metatype: GNativeSocketAddressClass? { metatypePointer?.pointee } 
    
    static var wrapper: NativeSocketAddressClassRef? { NativeSocketAddressClassRef(metatypePointer) }
    
    
}

// MARK: - NativeSocketAddressClass Record

/// The `NativeSocketAddressClassProtocol` protocol exposes the methods and properties of an underlying `GNativeSocketAddressClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NativeSocketAddressClass`.
/// Alternatively, use `NativeSocketAddressClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol NativeSocketAddressClassProtocol {
        /// Untyped pointer to the underlying `GNativeSocketAddressClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GNativeSocketAddressClass` instance.
    var _ptr: UnsafeMutablePointer<GNativeSocketAddressClass>! { get }

}

/// The `NativeSocketAddressClassRef` type acts as a lightweight Swift reference to an underlying `GNativeSocketAddressClass` instance.
/// It exposes methods that can operate on this data type through `NativeSocketAddressClassProtocol` conformance.
/// Use `NativeSocketAddressClassRef` only as an `unowned` reference to an existing `GNativeSocketAddressClass` instance.
///

public struct NativeSocketAddressClassRef: NativeSocketAddressClassProtocol {
        /// Untyped pointer to the underlying `GNativeSocketAddressClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension NativeSocketAddressClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GNativeSocketAddressClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GNativeSocketAddressClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GNativeSocketAddressClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GNativeSocketAddressClass>?) {
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

    /// Reference intialiser for a related type that implements `NativeSocketAddressClassProtocol`
    @inlinable init<T: NativeSocketAddressClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeSocketAddressClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: NativeSocketAddressClass Record: NativeSocketAddressClassProtocol extension (methods and fields)
public extension NativeSocketAddressClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GNativeSocketAddressClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GNativeSocketAddressClass>! { return ptr?.assumingMemoryBound(to: GNativeSocketAddressClass.self) }


    @inlinable var parentClass: GSocketAddressClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



