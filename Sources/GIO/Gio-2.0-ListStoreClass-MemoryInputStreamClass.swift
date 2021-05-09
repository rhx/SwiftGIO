import CGLib
import GLib
import GLibObject

/// Metatype/GType declaration for ListStore
public extension ListStoreClassRef {
    
    /// This getter returns the GLib type identifier registered for `ListStore`
    static var metatypeReference: GType { g_list_store_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GListStoreClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GListStoreClass.self) }
    
    static var metatype: GListStoreClass? { metatypePointer?.pointee } 
    
    static var wrapper: ListStoreClassRef? { ListStoreClassRef(metatypePointer) }
    
    
}

// MARK: - ListStoreClass Record

/// The `ListStoreClassProtocol` protocol exposes the methods and properties of an underlying `GListStoreClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListStoreClass`.
/// Alternatively, use `ListStoreClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ListStoreClassProtocol {
        /// Untyped pointer to the underlying `GListStoreClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GListStoreClass` instance.
    var _ptr: UnsafeMutablePointer<GListStoreClass>! { get }

    /// Required Initialiser for types conforming to `ListStoreClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ListStoreClassRef` type acts as a lightweight Swift reference to an underlying `GListStoreClass` instance.
/// It exposes methods that can operate on this data type through `ListStoreClassProtocol` conformance.
/// Use `ListStoreClassRef` only as an `unowned` reference to an existing `GListStoreClass` instance.
///

public struct ListStoreClassRef: ListStoreClassProtocol {
        /// Untyped pointer to the underlying `GListStoreClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ListStoreClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GListStoreClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GListStoreClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GListStoreClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GListStoreClass>?) {
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

    /// Reference intialiser for a related type that implements `ListStoreClassProtocol`
    @inlinable init<T: ListStoreClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ListStoreClass Record: ListStoreClassProtocol extension (methods and fields)
public extension ListStoreClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GListStoreClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GListStoreClass>! { return ptr?.assumingMemoryBound(to: GListStoreClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for LoadableIcon
public extension LoadableIconIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `LoadableIcon`
    static var metatypeReference: GType { g_loadable_icon_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GLoadableIconIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GLoadableIconIface.self) }
    
    static var metatype: GLoadableIconIface? { metatypePointer?.pointee } 
    
    static var wrapper: LoadableIconIfaceRef? { LoadableIconIfaceRef(metatypePointer) }
    
    
}

// MARK: - LoadableIconIface Record

/// The `LoadableIconIfaceProtocol` protocol exposes the methods and properties of an underlying `GLoadableIconIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LoadableIconIface`.
/// Alternatively, use `LoadableIconIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Interface for icons that can be loaded as a stream.
public protocol LoadableIconIfaceProtocol {
        /// Untyped pointer to the underlying `GLoadableIconIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GLoadableIconIface` instance.
    var _ptr: UnsafeMutablePointer<GLoadableIconIface>! { get }

    /// Required Initialiser for types conforming to `LoadableIconIfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `LoadableIconIfaceRef` type acts as a lightweight Swift reference to an underlying `GLoadableIconIface` instance.
/// It exposes methods that can operate on this data type through `LoadableIconIfaceProtocol` conformance.
/// Use `LoadableIconIfaceRef` only as an `unowned` reference to an existing `GLoadableIconIface` instance.
///
/// Interface for icons that can be loaded as a stream.
public struct LoadableIconIfaceRef: LoadableIconIfaceProtocol {
        /// Untyped pointer to the underlying `GLoadableIconIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LoadableIconIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GLoadableIconIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GLoadableIconIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GLoadableIconIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GLoadableIconIface>?) {
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

    /// Reference intialiser for a related type that implements `LoadableIconIfaceProtocol`
    @inlinable init<T: LoadableIconIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: LoadableIconIface Record: LoadableIconIfaceProtocol extension (methods and fields)
public extension LoadableIconIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GLoadableIconIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GLoadableIconIface>! { return ptr?.assumingMemoryBound(to: GLoadableIconIface.self) }


    /// The parent interface.
    @inlinable var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var load is unavailable because load is void

    // var loadAsync is unavailable because load_async is void

    // var loadFinish is unavailable because load_finish is void

}



/// Metatype/GType declaration for MemoryInputStream
public extension MemoryInputStreamClassRef {
    
    /// This getter returns the GLib type identifier registered for `MemoryInputStream`
    static var metatypeReference: GType { g_memory_input_stream_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GMemoryInputStreamClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GMemoryInputStreamClass.self) }
    
    static var metatype: GMemoryInputStreamClass? { metatypePointer?.pointee } 
    
    static var wrapper: MemoryInputStreamClassRef? { MemoryInputStreamClassRef(metatypePointer) }
    
    
}

// MARK: - MemoryInputStreamClass Record

/// The `MemoryInputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GMemoryInputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MemoryInputStreamClass`.
/// Alternatively, use `MemoryInputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MemoryInputStreamClassProtocol {
        /// Untyped pointer to the underlying `GMemoryInputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GMemoryInputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GMemoryInputStreamClass>! { get }

    /// Required Initialiser for types conforming to `MemoryInputStreamClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `MemoryInputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GMemoryInputStreamClass` instance.
/// It exposes methods that can operate on this data type through `MemoryInputStreamClassProtocol` conformance.
/// Use `MemoryInputStreamClassRef` only as an `unowned` reference to an existing `GMemoryInputStreamClass` instance.
///

public struct MemoryInputStreamClassRef: MemoryInputStreamClassProtocol {
        /// Untyped pointer to the underlying `GMemoryInputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MemoryInputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GMemoryInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GMemoryInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GMemoryInputStreamClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GMemoryInputStreamClass>?) {
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

    /// Reference intialiser for a related type that implements `MemoryInputStreamClassProtocol`
    @inlinable init<T: MemoryInputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryInputStreamClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: MemoryInputStreamClass Record: MemoryInputStreamClassProtocol extension (methods and fields)
public extension MemoryInputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMemoryInputStreamClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GMemoryInputStreamClass>! { return ptr?.assumingMemoryBound(to: GMemoryInputStreamClass.self) }


    @inlinable var parentClass: GInputStreamClass {
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



