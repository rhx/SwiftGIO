import CGLib
import GLib
import GLibObject

// MARK: - CancellablePrivate Record

/// The `CancellablePrivateProtocol` protocol exposes the methods and properties of an underlying `GCancellablePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CancellablePrivate`.
/// Alternatively, use `CancellablePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CancellablePrivateProtocol {
        /// Untyped pointer to the underlying `GCancellablePrivate` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GCancellablePrivate` instance.
    var _ptr: UnsafeMutablePointer<GCancellablePrivate>! { get }

}

/// The `CancellablePrivateRef` type acts as a lightweight Swift reference to an underlying `GCancellablePrivate` instance.
/// It exposes methods that can operate on this data type through `CancellablePrivateProtocol` conformance.
/// Use `CancellablePrivateRef` only as an `unowned` reference to an existing `GCancellablePrivate` instance.
///

public struct CancellablePrivateRef: CancellablePrivateProtocol {
        /// Untyped pointer to the underlying `GCancellablePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CancellablePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GCancellablePrivate>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GCancellablePrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GCancellablePrivate>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GCancellablePrivate>?) {
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

    /// Reference intialiser for a related type that implements `CancellablePrivateProtocol`
    @inlinable init<T: CancellablePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellablePrivateProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellablePrivateProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellablePrivateProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellablePrivateProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellablePrivateProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CancellablePrivate` type acts as an owner of an underlying `GCancellablePrivate` instance.
/// It provides the methods that can operate on this data type through `CancellablePrivateProtocol` conformance.
/// Use `CancellablePrivate` as a strong reference or owner of a `GCancellablePrivate` instance.
///

open class CancellablePrivate: CancellablePrivateProtocol {
        /// Untyped pointer to the underlying `GCancellablePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CancellablePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GCancellablePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CancellablePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GCancellablePrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CancellablePrivate` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CancellablePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CancellablePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GCancellablePrivate>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CancellablePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GCancellablePrivate>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GCancellablePrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `CancellablePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GCancellablePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GCancellablePrivate, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `CancellablePrivateProtocol`
    /// `GCancellablePrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `CancellablePrivateProtocol`
    @inlinable public init<T: CancellablePrivateProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GCancellablePrivate, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GCancellablePrivate`.
    deinit {
        // no reference counting for GCancellablePrivate, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellablePrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellablePrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GCancellablePrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellablePrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellablePrivateProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GCancellablePrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellablePrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellablePrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GCancellablePrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellablePrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CancellablePrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GCancellablePrivate, cannot ref(_ptr)
    }



}

// MARK: no CancellablePrivate properties

// MARK: no CancellablePrivate signals


// MARK: CancellablePrivate Record: CancellablePrivateProtocol extension (methods and fields)
public extension CancellablePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GCancellablePrivate` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GCancellablePrivate>! { return ptr?.assumingMemoryBound(to: GCancellablePrivate.self) }



}



// MARK: - CharsetConverterClass Record

/// The `CharsetConverterClassProtocol` protocol exposes the methods and properties of an underlying `GCharsetConverterClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CharsetConverterClass`.
/// Alternatively, use `CharsetConverterClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CharsetConverterClassProtocol {
        /// Untyped pointer to the underlying `GCharsetConverterClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GCharsetConverterClass` instance.
    var _ptr: UnsafeMutablePointer<GCharsetConverterClass>! { get }

}

/// The `CharsetConverterClassRef` type acts as a lightweight Swift reference to an underlying `GCharsetConverterClass` instance.
/// It exposes methods that can operate on this data type through `CharsetConverterClassProtocol` conformance.
/// Use `CharsetConverterClassRef` only as an `unowned` reference to an existing `GCharsetConverterClass` instance.
///

public struct CharsetConverterClassRef: CharsetConverterClassProtocol {
        /// Untyped pointer to the underlying `GCharsetConverterClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CharsetConverterClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GCharsetConverterClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GCharsetConverterClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GCharsetConverterClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GCharsetConverterClass>?) {
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

    /// Reference intialiser for a related type that implements `CharsetConverterClassProtocol`
    @inlinable init<T: CharsetConverterClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterClassProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CharsetConverterClass` type acts as an owner of an underlying `GCharsetConverterClass` instance.
/// It provides the methods that can operate on this data type through `CharsetConverterClassProtocol` conformance.
/// Use `CharsetConverterClass` as a strong reference or owner of a `GCharsetConverterClass` instance.
///

open class CharsetConverterClass: CharsetConverterClassProtocol {
        /// Untyped pointer to the underlying `GCharsetConverterClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CharsetConverterClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GCharsetConverterClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CharsetConverterClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GCharsetConverterClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CharsetConverterClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CharsetConverterClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CharsetConverterClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GCharsetConverterClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CharsetConverterClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GCharsetConverterClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GCharsetConverterClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `CharsetConverterClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GCharsetConverterClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GCharsetConverterClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `CharsetConverterClassProtocol`
    /// `GCharsetConverterClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `CharsetConverterClassProtocol`
    @inlinable public init<T: CharsetConverterClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GCharsetConverterClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GCharsetConverterClass`.
    deinit {
        // no reference counting for GCharsetConverterClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GCharsetConverterClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GCharsetConverterClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GCharsetConverterClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CharsetConverterClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GCharsetConverterClass, cannot ref(_ptr)
    }



}

// MARK: no CharsetConverterClass properties

// MARK: no CharsetConverterClass signals


// MARK: CharsetConverterClass Record: CharsetConverterClassProtocol extension (methods and fields)
public extension CharsetConverterClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GCharsetConverterClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GCharsetConverterClass>! { return ptr?.assumingMemoryBound(to: GCharsetConverterClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



// MARK: - ConverterIface Record

/// The `ConverterIfaceProtocol` protocol exposes the methods and properties of an underlying `GConverterIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ConverterIface`.
/// Alternatively, use `ConverterIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Provides an interface for converting data from one type
/// to another type. The conversion can be stateful
/// and may fail at any place.
public protocol ConverterIfaceProtocol {
        /// Untyped pointer to the underlying `GConverterIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GConverterIface` instance.
    var _ptr: UnsafeMutablePointer<GConverterIface>! { get }

}

/// The `ConverterIfaceRef` type acts as a lightweight Swift reference to an underlying `GConverterIface` instance.
/// It exposes methods that can operate on this data type through `ConverterIfaceProtocol` conformance.
/// Use `ConverterIfaceRef` only as an `unowned` reference to an existing `GConverterIface` instance.
///
/// Provides an interface for converting data from one type
/// to another type. The conversion can be stateful
/// and may fail at any place.
public struct ConverterIfaceRef: ConverterIfaceProtocol {
        /// Untyped pointer to the underlying `GConverterIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ConverterIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GConverterIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GConverterIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GConverterIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GConverterIface>?) {
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

    /// Reference intialiser for a related type that implements `ConverterIfaceProtocol`
    @inlinable init<T: ConverterIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterIfaceProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ConverterIface` type acts as an owner of an underlying `GConverterIface` instance.
/// It provides the methods that can operate on this data type through `ConverterIfaceProtocol` conformance.
/// Use `ConverterIface` as a strong reference or owner of a `GConverterIface` instance.
///
/// Provides an interface for converting data from one type
/// to another type. The conversion can be stateful
/// and may fail at any place.
open class ConverterIface: ConverterIfaceProtocol {
        /// Untyped pointer to the underlying `GConverterIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterIface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GConverterIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterIface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GConverterIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterIface` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterIface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterIface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GConverterIface>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterIface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GConverterIface>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GConverterIface` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ConverterIface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GConverterIface>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GConverterIface, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `ConverterIfaceProtocol`
    /// `GConverterIface` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ConverterIfaceProtocol`
    @inlinable public init<T: ConverterIfaceProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GConverterIface, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GConverterIface`.
    deinit {
        // no reference counting for GConverterIface, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterIfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterIfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GConverterIface, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterIfaceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterIfaceProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GConverterIface, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterIfaceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterIfaceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GConverterIface, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterIfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterIfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GConverterIface, cannot ref(_ptr)
    }



}

// MARK: no ConverterIface properties

// MARK: no ConverterIface signals


// MARK: ConverterIface Record: ConverterIfaceProtocol extension (methods and fields)
public extension ConverterIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GConverterIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GConverterIface>! { return ptr?.assumingMemoryBound(to: GConverterIface.self) }


    /// The parent interface.
    @inlinable var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var convert is unavailable because convert is void

    // var reset is unavailable because reset is void

}



// MARK: - ConverterInputStreamClass Record

/// The `ConverterInputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GConverterInputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ConverterInputStreamClass`.
/// Alternatively, use `ConverterInputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ConverterInputStreamClassProtocol {
        /// Untyped pointer to the underlying `GConverterInputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GConverterInputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GConverterInputStreamClass>! { get }

}

/// The `ConverterInputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GConverterInputStreamClass` instance.
/// It exposes methods that can operate on this data type through `ConverterInputStreamClassProtocol` conformance.
/// Use `ConverterInputStreamClassRef` only as an `unowned` reference to an existing `GConverterInputStreamClass` instance.
///

public struct ConverterInputStreamClassRef: ConverterInputStreamClassProtocol {
        /// Untyped pointer to the underlying `GConverterInputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ConverterInputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GConverterInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GConverterInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GConverterInputStreamClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GConverterInputStreamClass>?) {
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

    /// Reference intialiser for a related type that implements `ConverterInputStreamClassProtocol`
    @inlinable init<T: ConverterInputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamClassProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ConverterInputStreamClass` type acts as an owner of an underlying `GConverterInputStreamClass` instance.
/// It provides the methods that can operate on this data type through `ConverterInputStreamClassProtocol` conformance.
/// Use `ConverterInputStreamClass` as a strong reference or owner of a `GConverterInputStreamClass` instance.
///

open class ConverterInputStreamClass: ConverterInputStreamClassProtocol {
        /// Untyped pointer to the underlying `GConverterInputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterInputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GConverterInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterInputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GConverterInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterInputStreamClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterInputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterInputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GConverterInputStreamClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterInputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GConverterInputStreamClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GConverterInputStreamClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ConverterInputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GConverterInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GConverterInputStreamClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `ConverterInputStreamClassProtocol`
    /// `GConverterInputStreamClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ConverterInputStreamClassProtocol`
    @inlinable public init<T: ConverterInputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GConverterInputStreamClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GConverterInputStreamClass`.
    deinit {
        // no reference counting for GConverterInputStreamClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GConverterInputStreamClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GConverterInputStreamClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GConverterInputStreamClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GConverterInputStreamClass, cannot ref(_ptr)
    }



}

// MARK: no ConverterInputStreamClass properties

// MARK: no ConverterInputStreamClass signals


// MARK: ConverterInputStreamClass Record: ConverterInputStreamClassProtocol extension (methods and fields)
public extension ConverterInputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GConverterInputStreamClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GConverterInputStreamClass>! { return ptr?.assumingMemoryBound(to: GConverterInputStreamClass.self) }


    @inlinable var parentClass: GFilterInputStreamClass {
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



// MARK: - ConverterInputStreamPrivate Record

/// The `ConverterInputStreamPrivateProtocol` protocol exposes the methods and properties of an underlying `GConverterInputStreamPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ConverterInputStreamPrivate`.
/// Alternatively, use `ConverterInputStreamPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ConverterInputStreamPrivateProtocol {
        /// Untyped pointer to the underlying `GConverterInputStreamPrivate` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GConverterInputStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GConverterInputStreamPrivate>! { get }

}

/// The `ConverterInputStreamPrivateRef` type acts as a lightweight Swift reference to an underlying `GConverterInputStreamPrivate` instance.
/// It exposes methods that can operate on this data type through `ConverterInputStreamPrivateProtocol` conformance.
/// Use `ConverterInputStreamPrivateRef` only as an `unowned` reference to an existing `GConverterInputStreamPrivate` instance.
///

public struct ConverterInputStreamPrivateRef: ConverterInputStreamPrivateProtocol {
        /// Untyped pointer to the underlying `GConverterInputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ConverterInputStreamPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GConverterInputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GConverterInputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GConverterInputStreamPrivate>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GConverterInputStreamPrivate>?) {
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

    /// Reference intialiser for a related type that implements `ConverterInputStreamPrivateProtocol`
    @inlinable init<T: ConverterInputStreamPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamPrivateProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamPrivateProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamPrivateProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamPrivateProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamPrivateProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ConverterInputStreamPrivate` type acts as an owner of an underlying `GConverterInputStreamPrivate` instance.
/// It provides the methods that can operate on this data type through `ConverterInputStreamPrivateProtocol` conformance.
/// Use `ConverterInputStreamPrivate` as a strong reference or owner of a `GConverterInputStreamPrivate` instance.
///

open class ConverterInputStreamPrivate: ConverterInputStreamPrivateProtocol {
        /// Untyped pointer to the underlying `GConverterInputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterInputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GConverterInputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterInputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GConverterInputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterInputStreamPrivate` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterInputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterInputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GConverterInputStreamPrivate>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterInputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GConverterInputStreamPrivate>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GConverterInputStreamPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ConverterInputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GConverterInputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GConverterInputStreamPrivate, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `ConverterInputStreamPrivateProtocol`
    /// `GConverterInputStreamPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ConverterInputStreamPrivateProtocol`
    @inlinable public init<T: ConverterInputStreamPrivateProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GConverterInputStreamPrivate, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GConverterInputStreamPrivate`.
    deinit {
        // no reference counting for GConverterInputStreamPrivate, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GConverterInputStreamPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamPrivateProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GConverterInputStreamPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GConverterInputStreamPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterInputStreamPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GConverterInputStreamPrivate, cannot ref(_ptr)
    }



}

// MARK: no ConverterInputStreamPrivate properties

// MARK: no ConverterInputStreamPrivate signals


// MARK: ConverterInputStreamPrivate Record: ConverterInputStreamPrivateProtocol extension (methods and fields)
public extension ConverterInputStreamPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GConverterInputStreamPrivate` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GConverterInputStreamPrivate>! { return ptr?.assumingMemoryBound(to: GConverterInputStreamPrivate.self) }



}



// MARK: - ConverterOutputStreamClass Record

/// The `ConverterOutputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GConverterOutputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ConverterOutputStreamClass`.
/// Alternatively, use `ConverterOutputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ConverterOutputStreamClassProtocol {
        /// Untyped pointer to the underlying `GConverterOutputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GConverterOutputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GConverterOutputStreamClass>! { get }

}

/// The `ConverterOutputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GConverterOutputStreamClass` instance.
/// It exposes methods that can operate on this data type through `ConverterOutputStreamClassProtocol` conformance.
/// Use `ConverterOutputStreamClassRef` only as an `unowned` reference to an existing `GConverterOutputStreamClass` instance.
///

public struct ConverterOutputStreamClassRef: ConverterOutputStreamClassProtocol {
        /// Untyped pointer to the underlying `GConverterOutputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ConverterOutputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GConverterOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GConverterOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GConverterOutputStreamClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GConverterOutputStreamClass>?) {
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

    /// Reference intialiser for a related type that implements `ConverterOutputStreamClassProtocol`
    @inlinable init<T: ConverterOutputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamClassProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ConverterOutputStreamClass` type acts as an owner of an underlying `GConverterOutputStreamClass` instance.
/// It provides the methods that can operate on this data type through `ConverterOutputStreamClassProtocol` conformance.
/// Use `ConverterOutputStreamClass` as a strong reference or owner of a `GConverterOutputStreamClass` instance.
///

open class ConverterOutputStreamClass: ConverterOutputStreamClassProtocol {
        /// Untyped pointer to the underlying `GConverterOutputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterOutputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GConverterOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterOutputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GConverterOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterOutputStreamClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterOutputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterOutputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GConverterOutputStreamClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterOutputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GConverterOutputStreamClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GConverterOutputStreamClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ConverterOutputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GConverterOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GConverterOutputStreamClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `ConverterOutputStreamClassProtocol`
    /// `GConverterOutputStreamClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ConverterOutputStreamClassProtocol`
    @inlinable public init<T: ConverterOutputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GConverterOutputStreamClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GConverterOutputStreamClass`.
    deinit {
        // no reference counting for GConverterOutputStreamClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GConverterOutputStreamClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GConverterOutputStreamClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GConverterOutputStreamClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GConverterOutputStreamClass, cannot ref(_ptr)
    }



}

// MARK: no ConverterOutputStreamClass properties

// MARK: no ConverterOutputStreamClass signals


// MARK: ConverterOutputStreamClass Record: ConverterOutputStreamClassProtocol extension (methods and fields)
public extension ConverterOutputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GConverterOutputStreamClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GConverterOutputStreamClass>! { return ptr?.assumingMemoryBound(to: GConverterOutputStreamClass.self) }


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



// MARK: - ConverterOutputStreamPrivate Record

/// The `ConverterOutputStreamPrivateProtocol` protocol exposes the methods and properties of an underlying `GConverterOutputStreamPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ConverterOutputStreamPrivate`.
/// Alternatively, use `ConverterOutputStreamPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ConverterOutputStreamPrivateProtocol {
        /// Untyped pointer to the underlying `GConverterOutputStreamPrivate` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GConverterOutputStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GConverterOutputStreamPrivate>! { get }

}

/// The `ConverterOutputStreamPrivateRef` type acts as a lightweight Swift reference to an underlying `GConverterOutputStreamPrivate` instance.
/// It exposes methods that can operate on this data type through `ConverterOutputStreamPrivateProtocol` conformance.
/// Use `ConverterOutputStreamPrivateRef` only as an `unowned` reference to an existing `GConverterOutputStreamPrivate` instance.
///

public struct ConverterOutputStreamPrivateRef: ConverterOutputStreamPrivateProtocol {
        /// Untyped pointer to the underlying `GConverterOutputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ConverterOutputStreamPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GConverterOutputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GConverterOutputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GConverterOutputStreamPrivate>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GConverterOutputStreamPrivate>?) {
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

    /// Reference intialiser for a related type that implements `ConverterOutputStreamPrivateProtocol`
    @inlinable init<T: ConverterOutputStreamPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamPrivateProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamPrivateProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamPrivateProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamPrivateProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamPrivateProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ConverterOutputStreamPrivate` type acts as an owner of an underlying `GConverterOutputStreamPrivate` instance.
/// It provides the methods that can operate on this data type through `ConverterOutputStreamPrivateProtocol` conformance.
/// Use `ConverterOutputStreamPrivate` as a strong reference or owner of a `GConverterOutputStreamPrivate` instance.
///

open class ConverterOutputStreamPrivate: ConverterOutputStreamPrivateProtocol {
        /// Untyped pointer to the underlying `GConverterOutputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterOutputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GConverterOutputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterOutputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GConverterOutputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterOutputStreamPrivate` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterOutputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterOutputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GConverterOutputStreamPrivate>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ConverterOutputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GConverterOutputStreamPrivate>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GConverterOutputStreamPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ConverterOutputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GConverterOutputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GConverterOutputStreamPrivate, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `ConverterOutputStreamPrivateProtocol`
    /// `GConverterOutputStreamPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ConverterOutputStreamPrivateProtocol`
    @inlinable public init<T: ConverterOutputStreamPrivateProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GConverterOutputStreamPrivate, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GConverterOutputStreamPrivate`.
    deinit {
        // no reference counting for GConverterOutputStreamPrivate, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GConverterOutputStreamPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamPrivateProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GConverterOutputStreamPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GConverterOutputStreamPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ConverterOutputStreamPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GConverterOutputStreamPrivate, cannot ref(_ptr)
    }



}

// MARK: no ConverterOutputStreamPrivate properties

// MARK: no ConverterOutputStreamPrivate signals


// MARK: ConverterOutputStreamPrivate Record: ConverterOutputStreamPrivateProtocol extension (methods and fields)
public extension ConverterOutputStreamPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GConverterOutputStreamPrivate` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GConverterOutputStreamPrivate>! { return ptr?.assumingMemoryBound(to: GConverterOutputStreamPrivate.self) }



}



// MARK: - CredentialsClass Record

/// The `CredentialsClassProtocol` protocol exposes the methods and properties of an underlying `GCredentialsClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CredentialsClass`.
/// Alternatively, use `CredentialsClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Class structure for `GCredentials`.
public protocol CredentialsClassProtocol {
        /// Untyped pointer to the underlying `GCredentialsClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GCredentialsClass` instance.
    var _ptr: UnsafeMutablePointer<GCredentialsClass>! { get }

}

/// The `CredentialsClassRef` type acts as a lightweight Swift reference to an underlying `GCredentialsClass` instance.
/// It exposes methods that can operate on this data type through `CredentialsClassProtocol` conformance.
/// Use `CredentialsClassRef` only as an `unowned` reference to an existing `GCredentialsClass` instance.
///
/// Class structure for `GCredentials`.
public struct CredentialsClassRef: CredentialsClassProtocol {
        /// Untyped pointer to the underlying `GCredentialsClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CredentialsClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GCredentialsClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GCredentialsClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GCredentialsClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GCredentialsClass>?) {
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

    /// Reference intialiser for a related type that implements `CredentialsClassProtocol`
    @inlinable init<T: CredentialsClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsClassProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CredentialsClass` type acts as an owner of an underlying `GCredentialsClass` instance.
/// It provides the methods that can operate on this data type through `CredentialsClassProtocol` conformance.
/// Use `CredentialsClass` as a strong reference or owner of a `GCredentialsClass` instance.
///
/// Class structure for `GCredentials`.
open class CredentialsClass: CredentialsClassProtocol {
        /// Untyped pointer to the underlying `GCredentialsClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CredentialsClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GCredentialsClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CredentialsClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GCredentialsClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CredentialsClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CredentialsClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CredentialsClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GCredentialsClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CredentialsClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GCredentialsClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GCredentialsClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `CredentialsClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GCredentialsClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GCredentialsClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `CredentialsClassProtocol`
    /// `GCredentialsClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `CredentialsClassProtocol`
    @inlinable public init<T: CredentialsClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GCredentialsClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GCredentialsClass`.
    deinit {
        // no reference counting for GCredentialsClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GCredentialsClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GCredentialsClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GCredentialsClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CredentialsClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GCredentialsClass, cannot ref(_ptr)
    }



}

// MARK: no CredentialsClass properties

// MARK: no CredentialsClass signals


// MARK: CredentialsClass Record: CredentialsClassProtocol extension (methods and fields)
public extension CredentialsClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GCredentialsClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GCredentialsClass>! { return ptr?.assumingMemoryBound(to: GCredentialsClass.self) }



}



// MARK: - DBusAnnotationInfo Record

/// The `DBusAnnotationInfoProtocol` protocol exposes the methods and properties of an underlying `GDBusAnnotationInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `DBusAnnotationInfo`.
/// Alternatively, use `DBusAnnotationInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Information about an annotation.
public protocol DBusAnnotationInfoProtocol {
        /// Untyped pointer to the underlying `GDBusAnnotationInfo` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GDBusAnnotationInfo` instance.
    var dbus_annotation_info_ptr: UnsafeMutablePointer<GDBusAnnotationInfo>! { get }

}

/// The `DBusAnnotationInfoRef` type acts as a lightweight Swift reference to an underlying `GDBusAnnotationInfo` instance.
/// It exposes methods that can operate on this data type through `DBusAnnotationInfoProtocol` conformance.
/// Use `DBusAnnotationInfoRef` only as an `unowned` reference to an existing `GDBusAnnotationInfo` instance.
///
/// Information about an annotation.
public struct DBusAnnotationInfoRef: DBusAnnotationInfoProtocol {
        /// Untyped pointer to the underlying `GDBusAnnotationInfo` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_annotation_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension DBusAnnotationInfoRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GDBusAnnotationInfo>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GDBusAnnotationInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GDBusAnnotationInfo>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GDBusAnnotationInfo>?) {
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

    /// Reference intialiser for a related type that implements `DBusAnnotationInfoProtocol`
    @inlinable init<T: DBusAnnotationInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `DBusAnnotationInfo` type acts as a reference-counted owner of an underlying `GDBusAnnotationInfo` instance.
/// It provides the methods that can operate on this data type through `DBusAnnotationInfoProtocol` conformance.
/// Use `DBusAnnotationInfo` as a strong reference or owner of a `GDBusAnnotationInfo` instance.
///
/// Information about an annotation.
open class DBusAnnotationInfo: DBusAnnotationInfoProtocol {
        /// Untyped pointer to the underlying `GDBusAnnotationInfo` instance.
    /// For type-safe access, use the generated, typed pointer `dbus_annotation_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusAnnotationInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GDBusAnnotationInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusAnnotationInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GDBusAnnotationInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusAnnotationInfo` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusAnnotationInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusAnnotationInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GDBusAnnotationInfo>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `DBusAnnotationInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GDBusAnnotationInfo>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GDBusAnnotationInfo`.
    /// i.e., ownership is transferred to the `DBusAnnotationInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GDBusAnnotationInfo>) {
        ptr = UnsafeMutableRawPointer(op)
        g_dbus_annotation_info_ref(ptr.assumingMemoryBound(to: GDBusAnnotationInfo.self))
    }

    /// Reference intialiser for a related type that implements `DBusAnnotationInfoProtocol`
    /// Will retain `GDBusAnnotationInfo`.
    /// - Parameter other: an instance of a related type that implements `DBusAnnotationInfoProtocol`
    @inlinable public init<T: DBusAnnotationInfoProtocol>(_ other: T) {
        ptr = other.ptr
        g_dbus_annotation_info_ref(ptr.assumingMemoryBound(to: GDBusAnnotationInfo.self))
    }

    /// Releases the underlying `GDBusAnnotationInfo` instance using `g_dbus_annotation_info_unref`.
    deinit {
        g_dbus_annotation_info_unref(ptr.assumingMemoryBound(to: GDBusAnnotationInfo.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_dbus_annotation_info_ref(ptr.assumingMemoryBound(to: GDBusAnnotationInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_dbus_annotation_info_ref(ptr.assumingMemoryBound(to: GDBusAnnotationInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_dbus_annotation_info_ref(ptr.assumingMemoryBound(to: GDBusAnnotationInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `DBusAnnotationInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_dbus_annotation_info_ref(ptr.assumingMemoryBound(to: GDBusAnnotationInfo.self))
    }



}

// MARK: no DBusAnnotationInfo properties

// MARK: no DBusAnnotationInfo signals


// MARK: DBusAnnotationInfo Record: DBusAnnotationInfoProtocol extension (methods and fields)
public extension DBusAnnotationInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GDBusAnnotationInfo` instance.
    @inlinable var dbus_annotation_info_ptr: UnsafeMutablePointer<GDBusAnnotationInfo>! { return ptr?.assumingMemoryBound(to: GDBusAnnotationInfo.self) }

    /// If `info` is statically allocated does nothing. Otherwise increases
    /// the reference count.
    @discardableResult @inlinable func ref() -> DBusAnnotationInfoRef! {
        guard let rv = DBusAnnotationInfoRef(gconstpointer: gconstpointer(g_dbus_annotation_info_ref(dbus_annotation_info_ptr))) else { return nil }
        return rv
    }

    /// If `info` is statically allocated, does nothing. Otherwise decreases
    /// the reference count of `info`. When its reference count drops to 0,
    /// the memory used is freed.
    @inlinable func unref() {
        g_dbus_annotation_info_unref(dbus_annotation_info_ptr)
    
    }

    /// The reference count or -1 if statically allocated.
    @inlinable var refCount: gint {
        /// The reference count or -1 if statically allocated.
        get {
            let rv = dbus_annotation_info_ptr.pointee.ref_count
            return rv
        }
        /// The reference count or -1 if statically allocated.
         set {
            dbus_annotation_info_ptr.pointee.ref_count = newValue
        }
    }

    /// The name of the annotation, e.g. "org.freedesktop.DBus.Deprecated".
    @inlinable var key: UnsafeMutablePointer<gchar>! {
        /// The name of the annotation, e.g. "org.freedesktop.DBus.Deprecated".
        get {
            let rv = dbus_annotation_info_ptr.pointee.key
            return rv
        }
        /// The name of the annotation, e.g. "org.freedesktop.DBus.Deprecated".
         set {
            dbus_annotation_info_ptr.pointee.key = newValue
        }
    }

    /// The value of the annotation.
    @inlinable var value: UnsafeMutablePointer<gchar>! {
        /// The value of the annotation.
        get {
            let rv = dbus_annotation_info_ptr.pointee.value
            return rv
        }
        /// The value of the annotation.
         set {
            dbus_annotation_info_ptr.pointee.value = newValue
        }
    }

    /// A pointer to a `nil`-terminated array of pointers to `GDBusAnnotationInfo` structures or `nil` if there are no annotations.
    @inlinable var annotations: UnsafeMutablePointer<UnsafeMutablePointer<GDBusAnnotationInfo>?>! {
        /// A pointer to a `nil`-terminated array of pointers to `GDBusAnnotationInfo` structures or `nil` if there are no annotations.
        get {
            let rv = dbus_annotation_info_ptr.pointee.annotations
            return rv
        }
        /// A pointer to a `nil`-terminated array of pointers to `GDBusAnnotationInfo` structures or `nil` if there are no annotations.
         set {
            dbus_annotation_info_ptr.pointee.annotations = newValue
        }
    }

}



