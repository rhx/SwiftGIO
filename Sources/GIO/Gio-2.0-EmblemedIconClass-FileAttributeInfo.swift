import CGLib
import GLib
import GLibObject

/// Metatype/GType declaration for EmblemedIcon
public extension EmblemedIconClassRef {
    
    /// This getter returns the GLib type identifier registered for `EmblemedIcon`
    static var metatypeReference: GType { g_emblemed_icon_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GEmblemedIconClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GEmblemedIconClass.self) }
    
    static var metatype: GEmblemedIconClass? { metatypePointer?.pointee } 
    
    static var wrapper: EmblemedIconClassRef? { EmblemedIconClassRef(metatypePointer) }
    
    
}

// MARK: - EmblemedIconClass Record

/// The `EmblemedIconClassProtocol` protocol exposes the methods and properties of an underlying `GEmblemedIconClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EmblemedIconClass`.
/// Alternatively, use `EmblemedIconClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol EmblemedIconClassProtocol {
        /// Untyped pointer to the underlying `GEmblemedIconClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GEmblemedIconClass` instance.
    var _ptr: UnsafeMutablePointer<GEmblemedIconClass>! { get }

    /// Required Initialiser for types conforming to `EmblemedIconClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `EmblemedIconClassRef` type acts as a lightweight Swift reference to an underlying `GEmblemedIconClass` instance.
/// It exposes methods that can operate on this data type through `EmblemedIconClassProtocol` conformance.
/// Use `EmblemedIconClassRef` only as an `unowned` reference to an existing `GEmblemedIconClass` instance.
///

public struct EmblemedIconClassRef: EmblemedIconClassProtocol {
        /// Untyped pointer to the underlying `GEmblemedIconClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EmblemedIconClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GEmblemedIconClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GEmblemedIconClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GEmblemedIconClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GEmblemedIconClass>?) {
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

    /// Reference intialiser for a related type that implements `EmblemedIconClassProtocol`
    @inlinable init<T: EmblemedIconClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: EmblemedIconClass Record: EmblemedIconClassProtocol extension (methods and fields)
public extension EmblemedIconClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GEmblemedIconClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GEmblemedIconClass>! { return ptr?.assumingMemoryBound(to: GEmblemedIconClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



// MARK: - FileAttributeInfo Record

/// The `FileAttributeInfoProtocol` protocol exposes the methods and properties of an underlying `GFileAttributeInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileAttributeInfo`.
/// Alternatively, use `FileAttributeInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Information about a specific attribute.
public protocol FileAttributeInfoProtocol {
        /// Untyped pointer to the underlying `GFileAttributeInfo` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFileAttributeInfo` instance.
    var _ptr: UnsafeMutablePointer<GFileAttributeInfo>! { get }

    /// Required Initialiser for types conforming to `FileAttributeInfoProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `FileAttributeInfoRef` type acts as a lightweight Swift reference to an underlying `GFileAttributeInfo` instance.
/// It exposes methods that can operate on this data type through `FileAttributeInfoProtocol` conformance.
/// Use `FileAttributeInfoRef` only as an `unowned` reference to an existing `GFileAttributeInfo` instance.
///
/// Information about a specific attribute.
public struct FileAttributeInfoRef: FileAttributeInfoProtocol {
        /// Untyped pointer to the underlying `GFileAttributeInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FileAttributeInfoRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GFileAttributeInfo>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GFileAttributeInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GFileAttributeInfo>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GFileAttributeInfo>?) {
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

    /// Reference intialiser for a related type that implements `FileAttributeInfoProtocol`
    @inlinable init<T: FileAttributeInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FileAttributeInfo` type acts as an owner of an underlying `GFileAttributeInfo` instance.
/// It provides the methods that can operate on this data type through `FileAttributeInfoProtocol` conformance.
/// Use `FileAttributeInfo` as a strong reference or owner of a `GFileAttributeInfo` instance.
///
/// Information about a specific attribute.
open class FileAttributeInfo: FileAttributeInfoProtocol {
        /// Untyped pointer to the underlying `GFileAttributeInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileAttributeInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GFileAttributeInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileAttributeInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GFileAttributeInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileAttributeInfo` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileAttributeInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileAttributeInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GFileAttributeInfo>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileAttributeInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GFileAttributeInfo>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GFileAttributeInfo` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FileAttributeInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GFileAttributeInfo>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GFileAttributeInfo, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `FileAttributeInfoProtocol`
    /// `GFileAttributeInfo` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FileAttributeInfoProtocol`
    @inlinable public init<T: FileAttributeInfoProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GFileAttributeInfo, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GFileAttributeInfo`.
    deinit {
        // no reference counting for GFileAttributeInfo, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GFileAttributeInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GFileAttributeInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GFileAttributeInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GFileAttributeInfo, cannot ref(_ptr)
    }



}

// MARK: no FileAttributeInfo properties

// MARK: no FileAttributeInfo signals

// MARK: FileAttributeInfo has no signals
// MARK: FileAttributeInfo Record: FileAttributeInfoProtocol extension (methods and fields)
public extension FileAttributeInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileAttributeInfo` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GFileAttributeInfo>! { return ptr?.assumingMemoryBound(to: GFileAttributeInfo.self) }


    /// the name of the attribute.
    @inlinable var name: UnsafeMutablePointer<CChar>! {
        /// the name of the attribute.
        get {
            let rv = _ptr.pointee.name
            return rv
        }
        /// the name of the attribute.
         set {
            _ptr.pointee.name = newValue
        }
    }

    /// the `GFileAttributeType` type of the attribute.
    @inlinable var type: GFileAttributeType {
        /// the `GFileAttributeType` type of the attribute.
        get {
            let rv = _ptr.pointee.type
            return rv
        }
        /// the `GFileAttributeType` type of the attribute.
         set {
            _ptr.pointee.type = newValue
        }
    }

    /// a set of `GFileAttributeInfoFlags`.
    @inlinable var flags: FileAttributeInfoFlags {
        /// a set of `GFileAttributeInfoFlags`.
        get {
            let rv = FileAttributeInfoFlags(_ptr.pointee.flags)
            return rv
        }
        /// a set of `GFileAttributeInfoFlags`.
         set {
            _ptr.pointee.flags = newValue.value
        }
    }

}



