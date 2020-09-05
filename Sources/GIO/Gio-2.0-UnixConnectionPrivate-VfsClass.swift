import CGLib
import GLib
import GLibObject

// MARK: - UnixConnectionPrivate Record

/// The `UnixConnectionPrivateProtocol` protocol exposes the methods and properties of an underlying `GUnixConnectionPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixConnectionPrivate`.
/// Alternatively, use `UnixConnectionPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol UnixConnectionPrivateProtocol {
        /// Untyped pointer to the underlying `GUnixConnectionPrivate` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixConnectionPrivate` instance.
    var _ptr: UnsafeMutablePointer<GUnixConnectionPrivate>! { get }

}

/// The `UnixConnectionPrivateRef` type acts as a lightweight Swift reference to an underlying `GUnixConnectionPrivate` instance.
/// It exposes methods that can operate on this data type through `UnixConnectionPrivateProtocol` conformance.
/// Use `UnixConnectionPrivateRef` only as an `unowned` reference to an existing `GUnixConnectionPrivate` instance.
///

public struct UnixConnectionPrivateRef: UnixConnectionPrivateProtocol {
        /// Untyped pointer to the underlying `GUnixConnectionPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixConnectionPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixConnectionPrivate>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixConnectionPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixConnectionPrivate>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixConnectionPrivate>?) {
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

    /// Reference intialiser for a related type that implements `UnixConnectionPrivateProtocol`
    @inlinable init<T: UnixConnectionPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionPrivateProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionPrivateProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionPrivateProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionPrivateProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionPrivateProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UnixConnectionPrivate` type acts as an owner of an underlying `GUnixConnectionPrivate` instance.
/// It provides the methods that can operate on this data type through `UnixConnectionPrivateProtocol` conformance.
/// Use `UnixConnectionPrivate` as a strong reference or owner of a `GUnixConnectionPrivate` instance.
///

open class UnixConnectionPrivate: UnixConnectionPrivateProtocol {
        /// Untyped pointer to the underlying `GUnixConnectionPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixConnectionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GUnixConnectionPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixConnectionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GUnixConnectionPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixConnectionPrivate` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixConnectionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixConnectionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GUnixConnectionPrivate>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixConnectionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GUnixConnectionPrivate>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixConnectionPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixConnectionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GUnixConnectionPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixConnectionPrivate, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `UnixConnectionPrivateProtocol`
    /// `GUnixConnectionPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixConnectionPrivateProtocol`
    @inlinable public init<T: UnixConnectionPrivateProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GUnixConnectionPrivate, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GUnixConnectionPrivate`.
    deinit {
        // no reference counting for GUnixConnectionPrivate, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixConnectionPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionPrivateProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixConnectionPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixConnectionPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixConnectionPrivate, cannot ref(_ptr)
    }



}

// MARK: no UnixConnectionPrivate properties

// MARK: no UnixConnectionPrivate signals


// MARK: UnixConnectionPrivate Record: UnixConnectionPrivateProtocol extension (methods and fields)
public extension UnixConnectionPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixConnectionPrivate` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GUnixConnectionPrivate>! { return ptr?.assumingMemoryBound(to: GUnixConnectionPrivate.self) }



}



// MARK: - UnixCredentialsMessageClass Record

/// The `UnixCredentialsMessageClassProtocol` protocol exposes the methods and properties of an underlying `GUnixCredentialsMessageClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixCredentialsMessageClass`.
/// Alternatively, use `UnixCredentialsMessageClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Class structure for `GUnixCredentialsMessage`.
public protocol UnixCredentialsMessageClassProtocol {
        /// Untyped pointer to the underlying `GUnixCredentialsMessageClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixCredentialsMessageClass` instance.
    var _ptr: UnsafeMutablePointer<GUnixCredentialsMessageClass>! { get }

}

/// The `UnixCredentialsMessageClassRef` type acts as a lightweight Swift reference to an underlying `GUnixCredentialsMessageClass` instance.
/// It exposes methods that can operate on this data type through `UnixCredentialsMessageClassProtocol` conformance.
/// Use `UnixCredentialsMessageClassRef` only as an `unowned` reference to an existing `GUnixCredentialsMessageClass` instance.
///
/// Class structure for `GUnixCredentialsMessage`.
public struct UnixCredentialsMessageClassRef: UnixCredentialsMessageClassProtocol {
        /// Untyped pointer to the underlying `GUnixCredentialsMessageClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixCredentialsMessageClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixCredentialsMessageClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixCredentialsMessageClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixCredentialsMessageClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixCredentialsMessageClass>?) {
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

    /// Reference intialiser for a related type that implements `UnixCredentialsMessageClassProtocol`
    @inlinable init<T: UnixCredentialsMessageClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageClassProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UnixCredentialsMessageClass` type acts as an owner of an underlying `GUnixCredentialsMessageClass` instance.
/// It provides the methods that can operate on this data type through `UnixCredentialsMessageClassProtocol` conformance.
/// Use `UnixCredentialsMessageClass` as a strong reference or owner of a `GUnixCredentialsMessageClass` instance.
///
/// Class structure for `GUnixCredentialsMessage`.
open class UnixCredentialsMessageClass: UnixCredentialsMessageClassProtocol {
        /// Untyped pointer to the underlying `GUnixCredentialsMessageClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixCredentialsMessageClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GUnixCredentialsMessageClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixCredentialsMessageClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GUnixCredentialsMessageClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixCredentialsMessageClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixCredentialsMessageClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixCredentialsMessageClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GUnixCredentialsMessageClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixCredentialsMessageClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GUnixCredentialsMessageClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixCredentialsMessageClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixCredentialsMessageClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GUnixCredentialsMessageClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixCredentialsMessageClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `UnixCredentialsMessageClassProtocol`
    /// `GUnixCredentialsMessageClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixCredentialsMessageClassProtocol`
    @inlinable public init<T: UnixCredentialsMessageClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GUnixCredentialsMessageClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GUnixCredentialsMessageClass`.
    deinit {
        // no reference counting for GUnixCredentialsMessageClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixCredentialsMessageClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixCredentialsMessageClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixCredentialsMessageClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessageClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixCredentialsMessageClass, cannot ref(_ptr)
    }



}

// MARK: no UnixCredentialsMessageClass properties

// MARK: no UnixCredentialsMessageClass signals


// MARK: UnixCredentialsMessageClass Record: UnixCredentialsMessageClassProtocol extension (methods and fields)
public extension UnixCredentialsMessageClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixCredentialsMessageClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GUnixCredentialsMessageClass>! { return ptr?.assumingMemoryBound(to: GUnixCredentialsMessageClass.self) }


    @inlinable var parentClass: GSocketControlMessageClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

}



// MARK: - UnixCredentialsMessagePrivate Record

/// The `UnixCredentialsMessagePrivateProtocol` protocol exposes the methods and properties of an underlying `GUnixCredentialsMessagePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixCredentialsMessagePrivate`.
/// Alternatively, use `UnixCredentialsMessagePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol UnixCredentialsMessagePrivateProtocol {
        /// Untyped pointer to the underlying `GUnixCredentialsMessagePrivate` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixCredentialsMessagePrivate` instance.
    var _ptr: UnsafeMutablePointer<GUnixCredentialsMessagePrivate>! { get }

}

/// The `UnixCredentialsMessagePrivateRef` type acts as a lightweight Swift reference to an underlying `GUnixCredentialsMessagePrivate` instance.
/// It exposes methods that can operate on this data type through `UnixCredentialsMessagePrivateProtocol` conformance.
/// Use `UnixCredentialsMessagePrivateRef` only as an `unowned` reference to an existing `GUnixCredentialsMessagePrivate` instance.
///

public struct UnixCredentialsMessagePrivateRef: UnixCredentialsMessagePrivateProtocol {
        /// Untyped pointer to the underlying `GUnixCredentialsMessagePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixCredentialsMessagePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixCredentialsMessagePrivate>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixCredentialsMessagePrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixCredentialsMessagePrivate>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixCredentialsMessagePrivate>?) {
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

    /// Reference intialiser for a related type that implements `UnixCredentialsMessagePrivateProtocol`
    @inlinable init<T: UnixCredentialsMessagePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessagePrivateProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessagePrivateProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessagePrivateProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessagePrivateProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessagePrivateProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UnixCredentialsMessagePrivate` type acts as an owner of an underlying `GUnixCredentialsMessagePrivate` instance.
/// It provides the methods that can operate on this data type through `UnixCredentialsMessagePrivateProtocol` conformance.
/// Use `UnixCredentialsMessagePrivate` as a strong reference or owner of a `GUnixCredentialsMessagePrivate` instance.
///

open class UnixCredentialsMessagePrivate: UnixCredentialsMessagePrivateProtocol {
        /// Untyped pointer to the underlying `GUnixCredentialsMessagePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixCredentialsMessagePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GUnixCredentialsMessagePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixCredentialsMessagePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GUnixCredentialsMessagePrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixCredentialsMessagePrivate` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixCredentialsMessagePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixCredentialsMessagePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GUnixCredentialsMessagePrivate>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixCredentialsMessagePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GUnixCredentialsMessagePrivate>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixCredentialsMessagePrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixCredentialsMessagePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GUnixCredentialsMessagePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixCredentialsMessagePrivate, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `UnixCredentialsMessagePrivateProtocol`
    /// `GUnixCredentialsMessagePrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixCredentialsMessagePrivateProtocol`
    @inlinable public init<T: UnixCredentialsMessagePrivateProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GUnixCredentialsMessagePrivate, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GUnixCredentialsMessagePrivate`.
    deinit {
        // no reference counting for GUnixCredentialsMessagePrivate, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessagePrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessagePrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixCredentialsMessagePrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessagePrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessagePrivateProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixCredentialsMessagePrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessagePrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessagePrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixCredentialsMessagePrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessagePrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixCredentialsMessagePrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixCredentialsMessagePrivate, cannot ref(_ptr)
    }



}

// MARK: no UnixCredentialsMessagePrivate properties

// MARK: no UnixCredentialsMessagePrivate signals


// MARK: UnixCredentialsMessagePrivate Record: UnixCredentialsMessagePrivateProtocol extension (methods and fields)
public extension UnixCredentialsMessagePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixCredentialsMessagePrivate` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GUnixCredentialsMessagePrivate>! { return ptr?.assumingMemoryBound(to: GUnixCredentialsMessagePrivate.self) }



}



// MARK: - UnixFDListClass Record

/// The `UnixFDListClassProtocol` protocol exposes the methods and properties of an underlying `GUnixFDListClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixFDListClass`.
/// Alternatively, use `UnixFDListClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol UnixFDListClassProtocol {
        /// Untyped pointer to the underlying `GUnixFDListClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixFDListClass` instance.
    var _ptr: UnsafeMutablePointer<GUnixFDListClass>! { get }

}

/// The `UnixFDListClassRef` type acts as a lightweight Swift reference to an underlying `GUnixFDListClass` instance.
/// It exposes methods that can operate on this data type through `UnixFDListClassProtocol` conformance.
/// Use `UnixFDListClassRef` only as an `unowned` reference to an existing `GUnixFDListClass` instance.
///

public struct UnixFDListClassRef: UnixFDListClassProtocol {
        /// Untyped pointer to the underlying `GUnixFDListClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixFDListClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixFDListClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixFDListClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixFDListClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixFDListClass>?) {
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

    /// Reference intialiser for a related type that implements `UnixFDListClassProtocol`
    @inlinable init<T: UnixFDListClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListClassProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UnixFDListClass` type acts as an owner of an underlying `GUnixFDListClass` instance.
/// It provides the methods that can operate on this data type through `UnixFDListClassProtocol` conformance.
/// Use `UnixFDListClass` as a strong reference or owner of a `GUnixFDListClass` instance.
///

open class UnixFDListClass: UnixFDListClassProtocol {
        /// Untyped pointer to the underlying `GUnixFDListClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDListClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GUnixFDListClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDListClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GUnixFDListClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDListClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDListClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDListClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GUnixFDListClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDListClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GUnixFDListClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixFDListClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixFDListClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GUnixFDListClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixFDListClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `UnixFDListClassProtocol`
    /// `GUnixFDListClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixFDListClassProtocol`
    @inlinable public init<T: UnixFDListClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GUnixFDListClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GUnixFDListClass`.
    deinit {
        // no reference counting for GUnixFDListClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixFDListClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixFDListClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixFDListClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixFDListClass, cannot ref(_ptr)
    }



}

// MARK: no UnixFDListClass properties

// MARK: no UnixFDListClass signals


// MARK: UnixFDListClass Record: UnixFDListClassProtocol extension (methods and fields)
public extension UnixFDListClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixFDListClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GUnixFDListClass>! { return ptr?.assumingMemoryBound(to: GUnixFDListClass.self) }


    @inlinable var parentClass: GObjectClass {
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



// MARK: - UnixFDListPrivate Record

/// The `UnixFDListPrivateProtocol` protocol exposes the methods and properties of an underlying `GUnixFDListPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixFDListPrivate`.
/// Alternatively, use `UnixFDListPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol UnixFDListPrivateProtocol {
        /// Untyped pointer to the underlying `GUnixFDListPrivate` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixFDListPrivate` instance.
    var _ptr: UnsafeMutablePointer<GUnixFDListPrivate>! { get }

}

/// The `UnixFDListPrivateRef` type acts as a lightweight Swift reference to an underlying `GUnixFDListPrivate` instance.
/// It exposes methods that can operate on this data type through `UnixFDListPrivateProtocol` conformance.
/// Use `UnixFDListPrivateRef` only as an `unowned` reference to an existing `GUnixFDListPrivate` instance.
///

public struct UnixFDListPrivateRef: UnixFDListPrivateProtocol {
        /// Untyped pointer to the underlying `GUnixFDListPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixFDListPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixFDListPrivate>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixFDListPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixFDListPrivate>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixFDListPrivate>?) {
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

    /// Reference intialiser for a related type that implements `UnixFDListPrivateProtocol`
    @inlinable init<T: UnixFDListPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListPrivateProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListPrivateProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListPrivateProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListPrivateProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListPrivateProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UnixFDListPrivate` type acts as an owner of an underlying `GUnixFDListPrivate` instance.
/// It provides the methods that can operate on this data type through `UnixFDListPrivateProtocol` conformance.
/// Use `UnixFDListPrivate` as a strong reference or owner of a `GUnixFDListPrivate` instance.
///

open class UnixFDListPrivate: UnixFDListPrivateProtocol {
        /// Untyped pointer to the underlying `GUnixFDListPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDListPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GUnixFDListPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDListPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GUnixFDListPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDListPrivate` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDListPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDListPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GUnixFDListPrivate>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDListPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GUnixFDListPrivate>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixFDListPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixFDListPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GUnixFDListPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixFDListPrivate, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `UnixFDListPrivateProtocol`
    /// `GUnixFDListPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixFDListPrivateProtocol`
    @inlinable public init<T: UnixFDListPrivateProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GUnixFDListPrivate, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GUnixFDListPrivate`.
    deinit {
        // no reference counting for GUnixFDListPrivate, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixFDListPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListPrivateProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixFDListPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixFDListPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDListPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixFDListPrivate, cannot ref(_ptr)
    }



}

// MARK: no UnixFDListPrivate properties

// MARK: no UnixFDListPrivate signals


// MARK: UnixFDListPrivate Record: UnixFDListPrivateProtocol extension (methods and fields)
public extension UnixFDListPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixFDListPrivate` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GUnixFDListPrivate>! { return ptr?.assumingMemoryBound(to: GUnixFDListPrivate.self) }



}



// MARK: - UnixFDMessageClass Record

/// The `UnixFDMessageClassProtocol` protocol exposes the methods and properties of an underlying `GUnixFDMessageClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixFDMessageClass`.
/// Alternatively, use `UnixFDMessageClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol UnixFDMessageClassProtocol {
        /// Untyped pointer to the underlying `GUnixFDMessageClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixFDMessageClass` instance.
    var _ptr: UnsafeMutablePointer<GUnixFDMessageClass>! { get }

}

/// The `UnixFDMessageClassRef` type acts as a lightweight Swift reference to an underlying `GUnixFDMessageClass` instance.
/// It exposes methods that can operate on this data type through `UnixFDMessageClassProtocol` conformance.
/// Use `UnixFDMessageClassRef` only as an `unowned` reference to an existing `GUnixFDMessageClass` instance.
///

public struct UnixFDMessageClassRef: UnixFDMessageClassProtocol {
        /// Untyped pointer to the underlying `GUnixFDMessageClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixFDMessageClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixFDMessageClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixFDMessageClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixFDMessageClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixFDMessageClass>?) {
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

    /// Reference intialiser for a related type that implements `UnixFDMessageClassProtocol`
    @inlinable init<T: UnixFDMessageClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageClassProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UnixFDMessageClass` type acts as an owner of an underlying `GUnixFDMessageClass` instance.
/// It provides the methods that can operate on this data type through `UnixFDMessageClassProtocol` conformance.
/// Use `UnixFDMessageClass` as a strong reference or owner of a `GUnixFDMessageClass` instance.
///

open class UnixFDMessageClass: UnixFDMessageClassProtocol {
        /// Untyped pointer to the underlying `GUnixFDMessageClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDMessageClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GUnixFDMessageClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDMessageClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GUnixFDMessageClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDMessageClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDMessageClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDMessageClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GUnixFDMessageClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDMessageClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GUnixFDMessageClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixFDMessageClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixFDMessageClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GUnixFDMessageClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixFDMessageClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `UnixFDMessageClassProtocol`
    /// `GUnixFDMessageClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixFDMessageClassProtocol`
    @inlinable public init<T: UnixFDMessageClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GUnixFDMessageClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GUnixFDMessageClass`.
    deinit {
        // no reference counting for GUnixFDMessageClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixFDMessageClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixFDMessageClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixFDMessageClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessageClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixFDMessageClass, cannot ref(_ptr)
    }



}

// MARK: no UnixFDMessageClass properties

// MARK: no UnixFDMessageClass signals


// MARK: UnixFDMessageClass Record: UnixFDMessageClassProtocol extension (methods and fields)
public extension UnixFDMessageClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixFDMessageClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GUnixFDMessageClass>! { return ptr?.assumingMemoryBound(to: GUnixFDMessageClass.self) }


    @inlinable var parentClass: GSocketControlMessageClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

}



// MARK: - UnixFDMessagePrivate Record

/// The `UnixFDMessagePrivateProtocol` protocol exposes the methods and properties of an underlying `GUnixFDMessagePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixFDMessagePrivate`.
/// Alternatively, use `UnixFDMessagePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol UnixFDMessagePrivateProtocol {
        /// Untyped pointer to the underlying `GUnixFDMessagePrivate` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixFDMessagePrivate` instance.
    var _ptr: UnsafeMutablePointer<GUnixFDMessagePrivate>! { get }

}

/// The `UnixFDMessagePrivateRef` type acts as a lightweight Swift reference to an underlying `GUnixFDMessagePrivate` instance.
/// It exposes methods that can operate on this data type through `UnixFDMessagePrivateProtocol` conformance.
/// Use `UnixFDMessagePrivateRef` only as an `unowned` reference to an existing `GUnixFDMessagePrivate` instance.
///

public struct UnixFDMessagePrivateRef: UnixFDMessagePrivateProtocol {
        /// Untyped pointer to the underlying `GUnixFDMessagePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixFDMessagePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixFDMessagePrivate>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixFDMessagePrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixFDMessagePrivate>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixFDMessagePrivate>?) {
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

    /// Reference intialiser for a related type that implements `UnixFDMessagePrivateProtocol`
    @inlinable init<T: UnixFDMessagePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessagePrivateProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessagePrivateProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessagePrivateProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessagePrivateProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessagePrivateProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UnixFDMessagePrivate` type acts as an owner of an underlying `GUnixFDMessagePrivate` instance.
/// It provides the methods that can operate on this data type through `UnixFDMessagePrivateProtocol` conformance.
/// Use `UnixFDMessagePrivate` as a strong reference or owner of a `GUnixFDMessagePrivate` instance.
///

open class UnixFDMessagePrivate: UnixFDMessagePrivateProtocol {
        /// Untyped pointer to the underlying `GUnixFDMessagePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDMessagePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GUnixFDMessagePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDMessagePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GUnixFDMessagePrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDMessagePrivate` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDMessagePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDMessagePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GUnixFDMessagePrivate>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixFDMessagePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GUnixFDMessagePrivate>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixFDMessagePrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixFDMessagePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GUnixFDMessagePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixFDMessagePrivate, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `UnixFDMessagePrivateProtocol`
    /// `GUnixFDMessagePrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixFDMessagePrivateProtocol`
    @inlinable public init<T: UnixFDMessagePrivateProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GUnixFDMessagePrivate, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GUnixFDMessagePrivate`.
    deinit {
        // no reference counting for GUnixFDMessagePrivate, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessagePrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessagePrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixFDMessagePrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessagePrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessagePrivateProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixFDMessagePrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessagePrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessagePrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixFDMessagePrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessagePrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixFDMessagePrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixFDMessagePrivate, cannot ref(_ptr)
    }



}

// MARK: no UnixFDMessagePrivate properties

// MARK: no UnixFDMessagePrivate signals


// MARK: UnixFDMessagePrivate Record: UnixFDMessagePrivateProtocol extension (methods and fields)
public extension UnixFDMessagePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixFDMessagePrivate` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GUnixFDMessagePrivate>! { return ptr?.assumingMemoryBound(to: GUnixFDMessagePrivate.self) }



}



// MARK: - UnixInputStreamClass Record

/// The `UnixInputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GUnixInputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixInputStreamClass`.
/// Alternatively, use `UnixInputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol UnixInputStreamClassProtocol {
        /// Untyped pointer to the underlying `GUnixInputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixInputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GUnixInputStreamClass>! { get }

}

/// The `UnixInputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GUnixInputStreamClass` instance.
/// It exposes methods that can operate on this data type through `UnixInputStreamClassProtocol` conformance.
/// Use `UnixInputStreamClassRef` only as an `unowned` reference to an existing `GUnixInputStreamClass` instance.
///

public struct UnixInputStreamClassRef: UnixInputStreamClassProtocol {
        /// Untyped pointer to the underlying `GUnixInputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixInputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixInputStreamClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixInputStreamClass>?) {
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

    /// Reference intialiser for a related type that implements `UnixInputStreamClassProtocol`
    @inlinable init<T: UnixInputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamClassProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UnixInputStreamClass` type acts as an owner of an underlying `GUnixInputStreamClass` instance.
/// It provides the methods that can operate on this data type through `UnixInputStreamClassProtocol` conformance.
/// Use `UnixInputStreamClass` as a strong reference or owner of a `GUnixInputStreamClass` instance.
///

open class UnixInputStreamClass: UnixInputStreamClassProtocol {
        /// Untyped pointer to the underlying `GUnixInputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixInputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GUnixInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixInputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GUnixInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixInputStreamClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixInputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixInputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GUnixInputStreamClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixInputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GUnixInputStreamClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixInputStreamClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixInputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GUnixInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixInputStreamClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `UnixInputStreamClassProtocol`
    /// `GUnixInputStreamClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixInputStreamClassProtocol`
    @inlinable public init<T: UnixInputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GUnixInputStreamClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GUnixInputStreamClass`.
    deinit {
        // no reference counting for GUnixInputStreamClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixInputStreamClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixInputStreamClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixInputStreamClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixInputStreamClass, cannot ref(_ptr)
    }



}

// MARK: no UnixInputStreamClass properties

// MARK: no UnixInputStreamClass signals


// MARK: UnixInputStreamClass Record: UnixInputStreamClassProtocol extension (methods and fields)
public extension UnixInputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixInputStreamClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GUnixInputStreamClass>! { return ptr?.assumingMemoryBound(to: GUnixInputStreamClass.self) }


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



// MARK: - UnixInputStreamPrivate Record

/// The `UnixInputStreamPrivateProtocol` protocol exposes the methods and properties of an underlying `GUnixInputStreamPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixInputStreamPrivate`.
/// Alternatively, use `UnixInputStreamPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol UnixInputStreamPrivateProtocol {
        /// Untyped pointer to the underlying `GUnixInputStreamPrivate` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixInputStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GUnixInputStreamPrivate>! { get }

}

/// The `UnixInputStreamPrivateRef` type acts as a lightweight Swift reference to an underlying `GUnixInputStreamPrivate` instance.
/// It exposes methods that can operate on this data type through `UnixInputStreamPrivateProtocol` conformance.
/// Use `UnixInputStreamPrivateRef` only as an `unowned` reference to an existing `GUnixInputStreamPrivate` instance.
///

public struct UnixInputStreamPrivateRef: UnixInputStreamPrivateProtocol {
        /// Untyped pointer to the underlying `GUnixInputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixInputStreamPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixInputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixInputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixInputStreamPrivate>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixInputStreamPrivate>?) {
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

    /// Reference intialiser for a related type that implements `UnixInputStreamPrivateProtocol`
    @inlinable init<T: UnixInputStreamPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamPrivateProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamPrivateProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamPrivateProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamPrivateProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamPrivateProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UnixInputStreamPrivate` type acts as an owner of an underlying `GUnixInputStreamPrivate` instance.
/// It provides the methods that can operate on this data type through `UnixInputStreamPrivateProtocol` conformance.
/// Use `UnixInputStreamPrivate` as a strong reference or owner of a `GUnixInputStreamPrivate` instance.
///

open class UnixInputStreamPrivate: UnixInputStreamPrivateProtocol {
        /// Untyped pointer to the underlying `GUnixInputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixInputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GUnixInputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixInputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GUnixInputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixInputStreamPrivate` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixInputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixInputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GUnixInputStreamPrivate>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixInputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GUnixInputStreamPrivate>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixInputStreamPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixInputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GUnixInputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixInputStreamPrivate, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `UnixInputStreamPrivateProtocol`
    /// `GUnixInputStreamPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixInputStreamPrivateProtocol`
    @inlinable public init<T: UnixInputStreamPrivateProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GUnixInputStreamPrivate, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GUnixInputStreamPrivate`.
    deinit {
        // no reference counting for GUnixInputStreamPrivate, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixInputStreamPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamPrivateProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixInputStreamPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixInputStreamPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixInputStreamPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixInputStreamPrivate, cannot ref(_ptr)
    }



}

// MARK: no UnixInputStreamPrivate properties

// MARK: no UnixInputStreamPrivate signals


// MARK: UnixInputStreamPrivate Record: UnixInputStreamPrivateProtocol extension (methods and fields)
public extension UnixInputStreamPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixInputStreamPrivate` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GUnixInputStreamPrivate>! { return ptr?.assumingMemoryBound(to: GUnixInputStreamPrivate.self) }



}



// MARK: - UnixMountEntry Record

/// The `UnixMountEntryProtocol` protocol exposes the methods and properties of an underlying `GUnixMountEntry` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixMountEntry`.
/// Alternatively, use `UnixMountEntryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Defines a Unix mount entry (e.g. <filename>/media/cdrom</filename>).
/// This corresponds roughly to a mtab entry.
public protocol UnixMountEntryProtocol {
        /// Untyped pointer to the underlying `GUnixMountEntry` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixMountEntry` instance.
    var unix_mount_entry_ptr: UnsafeMutablePointer<GUnixMountEntry>! { get }

}

/// The `UnixMountEntryRef` type acts as a lightweight Swift reference to an underlying `GUnixMountEntry` instance.
/// It exposes methods that can operate on this data type through `UnixMountEntryProtocol` conformance.
/// Use `UnixMountEntryRef` only as an `unowned` reference to an existing `GUnixMountEntry` instance.
///
/// Defines a Unix mount entry (e.g. <filename>/media/cdrom</filename>).
/// This corresponds roughly to a mtab entry.
public struct UnixMountEntryRef: UnixMountEntryProtocol {
        /// Untyped pointer to the underlying `GUnixMountEntry` instance.
    /// For type-safe access, use the generated, typed pointer `unix_mount_entry_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixMountEntryRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixMountEntry>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixMountEntry>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixMountEntry>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixMountEntry>?) {
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

    /// Reference intialiser for a related type that implements `UnixMountEntryProtocol`
    @inlinable init<T: UnixMountEntryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UnixMountEntry` type acts as an owner of an underlying `GUnixMountEntry` instance.
/// It provides the methods that can operate on this data type through `UnixMountEntryProtocol` conformance.
/// Use `UnixMountEntry` as a strong reference or owner of a `GUnixMountEntry` instance.
///
/// Defines a Unix mount entry (e.g. <filename>/media/cdrom</filename>).
/// This corresponds roughly to a mtab entry.
open class UnixMountEntry: UnixMountEntryProtocol {
        /// Untyped pointer to the underlying `GUnixMountEntry` instance.
    /// For type-safe access, use the generated, typed pointer `unix_mount_entry_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GUnixMountEntry>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GUnixMountEntry>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountEntry` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GUnixMountEntry>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GUnixMountEntry>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixMountEntry` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixMountEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GUnixMountEntry>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixMountEntry, cannot ref(unix_mount_entry_ptr)
    }

    /// Reference intialiser for a related type that implements `UnixMountEntryProtocol`
    /// `GUnixMountEntry` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixMountEntryProtocol`
    @inlinable public init<T: UnixMountEntryProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GUnixMountEntry, cannot ref(unix_mount_entry_ptr)
    }

    /// Do-nothing destructor for `GUnixMountEntry`.
    deinit {
        // no reference counting for GUnixMountEntry, cannot unref(unix_mount_entry_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixMountEntry, cannot ref(unix_mount_entry_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixMountEntry, cannot ref(unix_mount_entry_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixMountEntry, cannot ref(unix_mount_entry_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixMountEntry, cannot ref(unix_mount_entry_ptr)
    }



}

// MARK: no UnixMountEntry properties

// MARK: no UnixMountEntry signals


// MARK: UnixMountEntry Record: UnixMountEntryProtocol extension (methods and fields)
public extension UnixMountEntryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixMountEntry` instance.
    @inlinable var unix_mount_entry_ptr: UnsafeMutablePointer<GUnixMountEntry>! { return ptr?.assumingMemoryBound(to: GUnixMountEntry.self) }

    /// Compares two unix mounts.
    @inlinable func unixMountCompare<UnixMountEntryT: UnixMountEntryProtocol>(mount2: UnixMountEntryT) -> Int {
        let rv = Int(g_unix_mount_compare(unix_mount_entry_ptr, mount2.unix_mount_entry_ptr))
        return rv
    }

    /// Makes a copy of `mount_entry`.
    @inlinable func unixMountCopy() -> UnixMountEntryRef! {
        guard let rv = UnixMountEntryRef(gconstpointer: gconstpointer(g_unix_mount_copy(unix_mount_entry_ptr))) else { return nil }
        return rv
    }

    /// Frees a unix mount.
    @inlinable func unixMountFree() {
        g_unix_mount_free(unix_mount_entry_ptr)
    
    }

    /// Gets the device path for a unix mount.
    @inlinable func unixMountGetDevicePath() -> String! {
        let rv = g_unix_mount_get_device_path(unix_mount_entry_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the filesystem type for the unix mount.
    @inlinable func unixMountGetFsType() -> String! {
        let rv = g_unix_mount_get_fs_type(unix_mount_entry_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the mount path for a unix mount.
    @inlinable func unixMountGetMountPath() -> String! {
        let rv = g_unix_mount_get_mount_path(unix_mount_entry_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets a comma-separated list of mount options for the unix mount. For example,
    /// `rw,relatime,seclabel,data=ordered`.
    /// 
    /// This is similar to `g_unix_mount_point_get_options()`, but it takes
    /// a `GUnixMountEntry` as an argument.
    @inlinable func unixMountGetOptions() -> String! {
        let rv = g_unix_mount_get_options(unix_mount_entry_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the root of the mount within the filesystem. This is useful e.g. for
    /// mounts created by bind operation, or btrfs subvolumes.
    /// 
    /// For example, the root path is equal to "/" for mount created by
    /// "mount /dev/sda1 /mnt/foo" and "/bar" for
    /// "mount --bind /mnt/foo/bar /mnt/bar".
    @inlinable func unixMountGetRootPath() -> String! {
        let rv = g_unix_mount_get_root_path(unix_mount_entry_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Guesses whether a Unix mount can be ejected.
    @inlinable func unixMountGuessCanEject() -> Bool {
        let rv = ((g_unix_mount_guess_can_eject(unix_mount_entry_ptr)) != 0)
        return rv
    }

    /// Guesses the icon of a Unix mount.
    @inlinable func unixMountGuessIcon() -> IconRef! {
        let rv = IconRef(gconstpointer: gconstpointer(g_unix_mount_guess_icon(unix_mount_entry_ptr)))
        return rv
    }

    /// Guesses the name of a Unix mount.
    /// The result is a translated string.
    @inlinable func unixMountGuessName() -> String! {
        let rv = g_unix_mount_guess_name(unix_mount_entry_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Guesses whether a Unix mount should be displayed in the UI.
    @inlinable func unixMountGuessShouldDisplay() -> Bool {
        let rv = ((g_unix_mount_guess_should_display(unix_mount_entry_ptr)) != 0)
        return rv
    }

    /// Guesses the symbolic icon of a Unix mount.
    @inlinable func unixMountGuessSymbolicIcon() -> IconRef! {
        let rv = IconRef(gconstpointer: gconstpointer(g_unix_mount_guess_symbolic_icon(unix_mount_entry_ptr)))
        return rv
    }

    /// Checks if a unix mount is mounted read only.
    @inlinable func unixMountIsReadonly() -> Bool {
        let rv = ((g_unix_mount_is_readonly(unix_mount_entry_ptr)) != 0)
        return rv
    }

    /// Checks if a Unix mount is a system mount. This is the Boolean OR of
    /// `g_unix_is_system_fs_type()`, `g_unix_is_system_device_path()` and
    /// `g_unix_is_mount_path_system_internal()` on `mount_entry`’s properties.
    /// 
    /// The definition of what a ‘system’ mount entry is may change over time as new
    /// file system types and device paths are ignored.
    @inlinable func unixMountIsSystemInternal() -> Bool {
        let rv = ((g_unix_mount_is_system_internal(unix_mount_entry_ptr)) != 0)
        return rv
    }


}



// MARK: - UnixMountMonitorClass Record

/// The `UnixMountMonitorClassProtocol` protocol exposes the methods and properties of an underlying `GUnixMountMonitorClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixMountMonitorClass`.
/// Alternatively, use `UnixMountMonitorClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol UnixMountMonitorClassProtocol {
        /// Untyped pointer to the underlying `GUnixMountMonitorClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixMountMonitorClass` instance.
    var _ptr: UnsafeMutablePointer<GUnixMountMonitorClass>! { get }

}

/// The `UnixMountMonitorClassRef` type acts as a lightweight Swift reference to an underlying `GUnixMountMonitorClass` instance.
/// It exposes methods that can operate on this data type through `UnixMountMonitorClassProtocol` conformance.
/// Use `UnixMountMonitorClassRef` only as an `unowned` reference to an existing `GUnixMountMonitorClass` instance.
///

public struct UnixMountMonitorClassRef: UnixMountMonitorClassProtocol {
        /// Untyped pointer to the underlying `GUnixMountMonitorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixMountMonitorClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixMountMonitorClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixMountMonitorClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixMountMonitorClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixMountMonitorClass>?) {
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

    /// Reference intialiser for a related type that implements `UnixMountMonitorClassProtocol`
    @inlinable init<T: UnixMountMonitorClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorClassProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UnixMountMonitorClass` type acts as an owner of an underlying `GUnixMountMonitorClass` instance.
/// It provides the methods that can operate on this data type through `UnixMountMonitorClassProtocol` conformance.
/// Use `UnixMountMonitorClass` as a strong reference or owner of a `GUnixMountMonitorClass` instance.
///

open class UnixMountMonitorClass: UnixMountMonitorClassProtocol {
        /// Untyped pointer to the underlying `GUnixMountMonitorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountMonitorClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GUnixMountMonitorClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountMonitorClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GUnixMountMonitorClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountMonitorClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountMonitorClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountMonitorClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GUnixMountMonitorClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountMonitorClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GUnixMountMonitorClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixMountMonitorClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixMountMonitorClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GUnixMountMonitorClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixMountMonitorClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `UnixMountMonitorClassProtocol`
    /// `GUnixMountMonitorClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixMountMonitorClassProtocol`
    @inlinable public init<T: UnixMountMonitorClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GUnixMountMonitorClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GUnixMountMonitorClass`.
    deinit {
        // no reference counting for GUnixMountMonitorClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixMountMonitorClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixMountMonitorClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixMountMonitorClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountMonitorClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixMountMonitorClass, cannot ref(_ptr)
    }



}

// MARK: no UnixMountMonitorClass properties

// MARK: no UnixMountMonitorClass signals


// MARK: UnixMountMonitorClass Record: UnixMountMonitorClassProtocol extension (methods and fields)
public extension UnixMountMonitorClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixMountMonitorClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GUnixMountMonitorClass>! { return ptr?.assumingMemoryBound(to: GUnixMountMonitorClass.self) }



}



// MARK: - UnixMountPoint Record

/// The `UnixMountPointProtocol` protocol exposes the methods and properties of an underlying `GUnixMountPoint` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixMountPoint`.
/// Alternatively, use `UnixMountPointRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Defines a Unix mount point (e.g. <filename>/dev</filename>).
/// This corresponds roughly to a fstab entry.
public protocol UnixMountPointProtocol {
        /// Untyped pointer to the underlying `GUnixMountPoint` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixMountPoint` instance.
    var unix_mount_point_ptr: UnsafeMutablePointer<GUnixMountPoint>! { get }

}

/// The `UnixMountPointRef` type acts as a lightweight Swift reference to an underlying `GUnixMountPoint` instance.
/// It exposes methods that can operate on this data type through `UnixMountPointProtocol` conformance.
/// Use `UnixMountPointRef` only as an `unowned` reference to an existing `GUnixMountPoint` instance.
///
/// Defines a Unix mount point (e.g. <filename>/dev</filename>).
/// This corresponds roughly to a fstab entry.
public struct UnixMountPointRef: UnixMountPointProtocol {
        /// Untyped pointer to the underlying `GUnixMountPoint` instance.
    /// For type-safe access, use the generated, typed pointer `unix_mount_point_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixMountPointRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixMountPoint>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixMountPoint>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixMountPoint>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixMountPoint>?) {
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

    /// Reference intialiser for a related type that implements `UnixMountPointProtocol`
    @inlinable init<T: UnixMountPointProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UnixMountPoint` type acts as an owner of an underlying `GUnixMountPoint` instance.
/// It provides the methods that can operate on this data type through `UnixMountPointProtocol` conformance.
/// Use `UnixMountPoint` as a strong reference or owner of a `GUnixMountPoint` instance.
///
/// Defines a Unix mount point (e.g. <filename>/dev</filename>).
/// This corresponds roughly to a fstab entry.
open class UnixMountPoint: UnixMountPointProtocol {
        /// Untyped pointer to the underlying `GUnixMountPoint` instance.
    /// For type-safe access, use the generated, typed pointer `unix_mount_point_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountPoint` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GUnixMountPoint>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountPoint` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GUnixMountPoint>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountPoint` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountPoint` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountPoint` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GUnixMountPoint>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixMountPoint` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GUnixMountPoint>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixMountPoint` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixMountPoint` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GUnixMountPoint>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixMountPoint, cannot ref(unix_mount_point_ptr)
    }

    /// Reference intialiser for a related type that implements `UnixMountPointProtocol`
    /// `GUnixMountPoint` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixMountPointProtocol`
    @inlinable public init<T: UnixMountPointProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GUnixMountPoint, cannot ref(unix_mount_point_ptr)
    }

    /// Do-nothing destructor for `GUnixMountPoint`.
    deinit {
        // no reference counting for GUnixMountPoint, cannot unref(unix_mount_point_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixMountPoint, cannot ref(unix_mount_point_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixMountPoint, cannot ref(unix_mount_point_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixMountPoint, cannot ref(unix_mount_point_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixMountPointProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixMountPoint, cannot ref(unix_mount_point_ptr)
    }



}

// MARK: no UnixMountPoint properties

// MARK: no UnixMountPoint signals


// MARK: UnixMountPoint Record: UnixMountPointProtocol extension (methods and fields)
public extension UnixMountPointProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixMountPoint` instance.
    @inlinable var unix_mount_point_ptr: UnsafeMutablePointer<GUnixMountPoint>! { return ptr?.assumingMemoryBound(to: GUnixMountPoint.self) }

    /// Compares two unix mount points.
    @inlinable func compare<UnixMountPointT: UnixMountPointProtocol>(mount2: UnixMountPointT) -> Int {
        let rv = Int(g_unix_mount_point_compare(unix_mount_point_ptr, mount2.unix_mount_point_ptr))
        return rv
    }

    /// Makes a copy of `mount_point`.
    @inlinable func copy() -> UnixMountPointRef! {
        guard let rv = UnixMountPointRef(gconstpointer: gconstpointer(g_unix_mount_point_copy(unix_mount_point_ptr))) else { return nil }
        return rv
    }

    /// Frees a unix mount point.
    @inlinable func free() {
        g_unix_mount_point_free(unix_mount_point_ptr)
    
    }

    /// Gets the device path for a unix mount point.
    @inlinable func getDevicePath() -> String! {
        let rv = g_unix_mount_point_get_device_path(unix_mount_point_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the file system type for the mount point.
    @inlinable func getFsType() -> String! {
        let rv = g_unix_mount_point_get_fs_type(unix_mount_point_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the mount path for a unix mount point.
    @inlinable func getMountPath() -> String! {
        let rv = g_unix_mount_point_get_mount_path(unix_mount_point_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the options for the mount point.
    @inlinable func getOptions() -> String! {
        let rv = g_unix_mount_point_get_options(unix_mount_point_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Guesses whether a Unix mount point can be ejected.
    @inlinable func guessCanEject() -> Bool {
        let rv = ((g_unix_mount_point_guess_can_eject(unix_mount_point_ptr)) != 0)
        return rv
    }

    /// Guesses the icon of a Unix mount point.
    @inlinable func guessIcon() -> IconRef! {
        let rv = IconRef(gconstpointer: gconstpointer(g_unix_mount_point_guess_icon(unix_mount_point_ptr)))
        return rv
    }

    /// Guesses the name of a Unix mount point.
    /// The result is a translated string.
    @inlinable func guessName() -> String! {
        let rv = g_unix_mount_point_guess_name(unix_mount_point_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Guesses the symbolic icon of a Unix mount point.
    @inlinable func guessSymbolicIcon() -> IconRef! {
        let rv = IconRef(gconstpointer: gconstpointer(g_unix_mount_point_guess_symbolic_icon(unix_mount_point_ptr)))
        return rv
    }
    /// Gets the device path for a unix mount point.
    @inlinable var devicePath: String! {
        /// Gets the device path for a unix mount point.
        get {
            let rv = g_unix_mount_point_get_device_path(unix_mount_point_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the file system type for the mount point.
    @inlinable var fsType: String! {
        /// Gets the file system type for the mount point.
        get {
            let rv = g_unix_mount_point_get_fs_type(unix_mount_point_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Checks if a unix mount point is a loopback device.
    @inlinable var isLoopback: Bool {
        /// Checks if a unix mount point is a loopback device.
        get {
            let rv = ((g_unix_mount_point_is_loopback(unix_mount_point_ptr)) != 0)
            return rv
        }
    }

    /// Checks if a unix mount point is read only.
    @inlinable var isReadonly: Bool {
        /// Checks if a unix mount point is read only.
        get {
            let rv = ((g_unix_mount_point_is_readonly(unix_mount_point_ptr)) != 0)
            return rv
        }
    }

    /// Checks if a unix mount point is mountable by the user.
    @inlinable var isUserMountable: Bool {
        /// Checks if a unix mount point is mountable by the user.
        get {
            let rv = ((g_unix_mount_point_is_user_mountable(unix_mount_point_ptr)) != 0)
            return rv
        }
    }

    /// Gets the mount path for a unix mount point.
    @inlinable var mountPath: String! {
        /// Gets the mount path for a unix mount point.
        get {
            let rv = g_unix_mount_point_get_mount_path(unix_mount_point_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the options for the mount point.
    @inlinable var options: String! {
        /// Gets the options for the mount point.
        get {
            let rv = g_unix_mount_point_get_options(unix_mount_point_ptr).map({ String(cString: $0) })
            return rv
        }
    }


}



// MARK: - UnixOutputStreamClass Record

/// The `UnixOutputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GUnixOutputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixOutputStreamClass`.
/// Alternatively, use `UnixOutputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol UnixOutputStreamClassProtocol {
        /// Untyped pointer to the underlying `GUnixOutputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixOutputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GUnixOutputStreamClass>! { get }

}

/// The `UnixOutputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GUnixOutputStreamClass` instance.
/// It exposes methods that can operate on this data type through `UnixOutputStreamClassProtocol` conformance.
/// Use `UnixOutputStreamClassRef` only as an `unowned` reference to an existing `GUnixOutputStreamClass` instance.
///

public struct UnixOutputStreamClassRef: UnixOutputStreamClassProtocol {
        /// Untyped pointer to the underlying `GUnixOutputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixOutputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixOutputStreamClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixOutputStreamClass>?) {
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

    /// Reference intialiser for a related type that implements `UnixOutputStreamClassProtocol`
    @inlinable init<T: UnixOutputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamClassProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UnixOutputStreamClass` type acts as an owner of an underlying `GUnixOutputStreamClass` instance.
/// It provides the methods that can operate on this data type through `UnixOutputStreamClassProtocol` conformance.
/// Use `UnixOutputStreamClass` as a strong reference or owner of a `GUnixOutputStreamClass` instance.
///

open class UnixOutputStreamClass: UnixOutputStreamClassProtocol {
        /// Untyped pointer to the underlying `GUnixOutputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixOutputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GUnixOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixOutputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GUnixOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixOutputStreamClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixOutputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixOutputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GUnixOutputStreamClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixOutputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GUnixOutputStreamClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixOutputStreamClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixOutputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GUnixOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixOutputStreamClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `UnixOutputStreamClassProtocol`
    /// `GUnixOutputStreamClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixOutputStreamClassProtocol`
    @inlinable public init<T: UnixOutputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GUnixOutputStreamClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GUnixOutputStreamClass`.
    deinit {
        // no reference counting for GUnixOutputStreamClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixOutputStreamClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixOutputStreamClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixOutputStreamClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixOutputStreamClass, cannot ref(_ptr)
    }



}

// MARK: no UnixOutputStreamClass properties

// MARK: no UnixOutputStreamClass signals


// MARK: UnixOutputStreamClass Record: UnixOutputStreamClassProtocol extension (methods and fields)
public extension UnixOutputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixOutputStreamClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GUnixOutputStreamClass>! { return ptr?.assumingMemoryBound(to: GUnixOutputStreamClass.self) }


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



// MARK: - UnixOutputStreamPrivate Record

/// The `UnixOutputStreamPrivateProtocol` protocol exposes the methods and properties of an underlying `GUnixOutputStreamPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixOutputStreamPrivate`.
/// Alternatively, use `UnixOutputStreamPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol UnixOutputStreamPrivateProtocol {
        /// Untyped pointer to the underlying `GUnixOutputStreamPrivate` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixOutputStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GUnixOutputStreamPrivate>! { get }

}

/// The `UnixOutputStreamPrivateRef` type acts as a lightweight Swift reference to an underlying `GUnixOutputStreamPrivate` instance.
/// It exposes methods that can operate on this data type through `UnixOutputStreamPrivateProtocol` conformance.
/// Use `UnixOutputStreamPrivateRef` only as an `unowned` reference to an existing `GUnixOutputStreamPrivate` instance.
///

public struct UnixOutputStreamPrivateRef: UnixOutputStreamPrivateProtocol {
        /// Untyped pointer to the underlying `GUnixOutputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixOutputStreamPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixOutputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixOutputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixOutputStreamPrivate>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixOutputStreamPrivate>?) {
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

    /// Reference intialiser for a related type that implements `UnixOutputStreamPrivateProtocol`
    @inlinable init<T: UnixOutputStreamPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamPrivateProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamPrivateProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamPrivateProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamPrivateProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamPrivateProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UnixOutputStreamPrivate` type acts as an owner of an underlying `GUnixOutputStreamPrivate` instance.
/// It provides the methods that can operate on this data type through `UnixOutputStreamPrivateProtocol` conformance.
/// Use `UnixOutputStreamPrivate` as a strong reference or owner of a `GUnixOutputStreamPrivate` instance.
///

open class UnixOutputStreamPrivate: UnixOutputStreamPrivateProtocol {
        /// Untyped pointer to the underlying `GUnixOutputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixOutputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GUnixOutputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixOutputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GUnixOutputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixOutputStreamPrivate` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixOutputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixOutputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GUnixOutputStreamPrivate>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixOutputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GUnixOutputStreamPrivate>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixOutputStreamPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixOutputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GUnixOutputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixOutputStreamPrivate, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `UnixOutputStreamPrivateProtocol`
    /// `GUnixOutputStreamPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixOutputStreamPrivateProtocol`
    @inlinable public init<T: UnixOutputStreamPrivateProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GUnixOutputStreamPrivate, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GUnixOutputStreamPrivate`.
    deinit {
        // no reference counting for GUnixOutputStreamPrivate, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixOutputStreamPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamPrivateProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixOutputStreamPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixOutputStreamPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixOutputStreamPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixOutputStreamPrivate, cannot ref(_ptr)
    }



}

// MARK: no UnixOutputStreamPrivate properties

// MARK: no UnixOutputStreamPrivate signals


// MARK: UnixOutputStreamPrivate Record: UnixOutputStreamPrivateProtocol extension (methods and fields)
public extension UnixOutputStreamPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixOutputStreamPrivate` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GUnixOutputStreamPrivate>! { return ptr?.assumingMemoryBound(to: GUnixOutputStreamPrivate.self) }



}



// MARK: - UnixSocketAddressClass Record

/// The `UnixSocketAddressClassProtocol` protocol exposes the methods and properties of an underlying `GUnixSocketAddressClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixSocketAddressClass`.
/// Alternatively, use `UnixSocketAddressClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol UnixSocketAddressClassProtocol {
        /// Untyped pointer to the underlying `GUnixSocketAddressClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixSocketAddressClass` instance.
    var _ptr: UnsafeMutablePointer<GUnixSocketAddressClass>! { get }

}

/// The `UnixSocketAddressClassRef` type acts as a lightweight Swift reference to an underlying `GUnixSocketAddressClass` instance.
/// It exposes methods that can operate on this data type through `UnixSocketAddressClassProtocol` conformance.
/// Use `UnixSocketAddressClassRef` only as an `unowned` reference to an existing `GUnixSocketAddressClass` instance.
///

public struct UnixSocketAddressClassRef: UnixSocketAddressClassProtocol {
        /// Untyped pointer to the underlying `GUnixSocketAddressClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixSocketAddressClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixSocketAddressClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixSocketAddressClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixSocketAddressClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixSocketAddressClass>?) {
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

    /// Reference intialiser for a related type that implements `UnixSocketAddressClassProtocol`
    @inlinable init<T: UnixSocketAddressClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressClassProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UnixSocketAddressClass` type acts as an owner of an underlying `GUnixSocketAddressClass` instance.
/// It provides the methods that can operate on this data type through `UnixSocketAddressClassProtocol` conformance.
/// Use `UnixSocketAddressClass` as a strong reference or owner of a `GUnixSocketAddressClass` instance.
///

open class UnixSocketAddressClass: UnixSocketAddressClassProtocol {
        /// Untyped pointer to the underlying `GUnixSocketAddressClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixSocketAddressClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GUnixSocketAddressClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixSocketAddressClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GUnixSocketAddressClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixSocketAddressClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixSocketAddressClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixSocketAddressClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GUnixSocketAddressClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixSocketAddressClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GUnixSocketAddressClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixSocketAddressClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixSocketAddressClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GUnixSocketAddressClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixSocketAddressClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `UnixSocketAddressClassProtocol`
    /// `GUnixSocketAddressClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixSocketAddressClassProtocol`
    @inlinable public init<T: UnixSocketAddressClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GUnixSocketAddressClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GUnixSocketAddressClass`.
    deinit {
        // no reference counting for GUnixSocketAddressClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixSocketAddressClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixSocketAddressClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixSocketAddressClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixSocketAddressClass, cannot ref(_ptr)
    }



}

// MARK: no UnixSocketAddressClass properties

// MARK: no UnixSocketAddressClass signals


// MARK: UnixSocketAddressClass Record: UnixSocketAddressClassProtocol extension (methods and fields)
public extension UnixSocketAddressClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixSocketAddressClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GUnixSocketAddressClass>! { return ptr?.assumingMemoryBound(to: GUnixSocketAddressClass.self) }


    @inlinable var parentClass: GSocketAddressClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



// MARK: - UnixSocketAddressPrivate Record

/// The `UnixSocketAddressPrivateProtocol` protocol exposes the methods and properties of an underlying `GUnixSocketAddressPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixSocketAddressPrivate`.
/// Alternatively, use `UnixSocketAddressPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol UnixSocketAddressPrivateProtocol {
        /// Untyped pointer to the underlying `GUnixSocketAddressPrivate` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixSocketAddressPrivate` instance.
    var _ptr: UnsafeMutablePointer<GUnixSocketAddressPrivate>! { get }

}

/// The `UnixSocketAddressPrivateRef` type acts as a lightweight Swift reference to an underlying `GUnixSocketAddressPrivate` instance.
/// It exposes methods that can operate on this data type through `UnixSocketAddressPrivateProtocol` conformance.
/// Use `UnixSocketAddressPrivateRef` only as an `unowned` reference to an existing `GUnixSocketAddressPrivate` instance.
///

public struct UnixSocketAddressPrivateRef: UnixSocketAddressPrivateProtocol {
        /// Untyped pointer to the underlying `GUnixSocketAddressPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixSocketAddressPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixSocketAddressPrivate>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixSocketAddressPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixSocketAddressPrivate>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixSocketAddressPrivate>?) {
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

    /// Reference intialiser for a related type that implements `UnixSocketAddressPrivateProtocol`
    @inlinable init<T: UnixSocketAddressPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressPrivateProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressPrivateProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressPrivateProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressPrivateProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressPrivateProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UnixSocketAddressPrivate` type acts as an owner of an underlying `GUnixSocketAddressPrivate` instance.
/// It provides the methods that can operate on this data type through `UnixSocketAddressPrivateProtocol` conformance.
/// Use `UnixSocketAddressPrivate` as a strong reference or owner of a `GUnixSocketAddressPrivate` instance.
///

open class UnixSocketAddressPrivate: UnixSocketAddressPrivateProtocol {
        /// Untyped pointer to the underlying `GUnixSocketAddressPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixSocketAddressPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GUnixSocketAddressPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixSocketAddressPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GUnixSocketAddressPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixSocketAddressPrivate` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixSocketAddressPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixSocketAddressPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GUnixSocketAddressPrivate>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixSocketAddressPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GUnixSocketAddressPrivate>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixSocketAddressPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixSocketAddressPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GUnixSocketAddressPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixSocketAddressPrivate, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `UnixSocketAddressPrivateProtocol`
    /// `GUnixSocketAddressPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixSocketAddressPrivateProtocol`
    @inlinable public init<T: UnixSocketAddressPrivateProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GUnixSocketAddressPrivate, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GUnixSocketAddressPrivate`.
    deinit {
        // no reference counting for GUnixSocketAddressPrivate, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixSocketAddressPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressPrivateProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixSocketAddressPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixSocketAddressPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixSocketAddressPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixSocketAddressPrivate, cannot ref(_ptr)
    }



}

// MARK: no UnixSocketAddressPrivate properties

// MARK: no UnixSocketAddressPrivate signals


// MARK: UnixSocketAddressPrivate Record: UnixSocketAddressPrivateProtocol extension (methods and fields)
public extension UnixSocketAddressPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixSocketAddressPrivate` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GUnixSocketAddressPrivate>! { return ptr?.assumingMemoryBound(to: GUnixSocketAddressPrivate.self) }



}



// MARK: - VfsClass Record

/// The `VfsClassProtocol` protocol exposes the methods and properties of an underlying `GVfsClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `VfsClass`.
/// Alternatively, use `VfsClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol VfsClassProtocol {
        /// Untyped pointer to the underlying `GVfsClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GVfsClass` instance.
    var _ptr: UnsafeMutablePointer<GVfsClass>! { get }

}

/// The `VfsClassRef` type acts as a lightweight Swift reference to an underlying `GVfsClass` instance.
/// It exposes methods that can operate on this data type through `VfsClassProtocol` conformance.
/// Use `VfsClassRef` only as an `unowned` reference to an existing `GVfsClass` instance.
///

public struct VfsClassRef: VfsClassProtocol {
        /// Untyped pointer to the underlying `GVfsClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension VfsClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GVfsClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GVfsClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GVfsClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GVfsClass>?) {
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

    /// Reference intialiser for a related type that implements `VfsClassProtocol`
    @inlinable init<T: VfsClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsClassProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `VfsClass` type acts as an owner of an underlying `GVfsClass` instance.
/// It provides the methods that can operate on this data type through `VfsClassProtocol` conformance.
/// Use `VfsClass` as a strong reference or owner of a `GVfsClass` instance.
///

open class VfsClass: VfsClassProtocol {
        /// Untyped pointer to the underlying `GVfsClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VfsClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GVfsClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VfsClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GVfsClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VfsClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VfsClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VfsClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GVfsClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `VfsClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GVfsClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GVfsClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `VfsClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GVfsClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GVfsClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `VfsClassProtocol`
    /// `GVfsClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `VfsClassProtocol`
    @inlinable public init<T: VfsClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GVfsClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GVfsClass`.
    deinit {
        // no reference counting for GVfsClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GVfsClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GVfsClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GVfsClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `VfsClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GVfsClass, cannot ref(_ptr)
    }



}

// MARK: no VfsClass properties

// MARK: no VfsClass signals


// MARK: VfsClass Record: VfsClassProtocol extension (methods and fields)
public extension VfsClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GVfsClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GVfsClass>! { return ptr?.assumingMemoryBound(to: GVfsClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var isActive is unavailable because is_active is void

    // var getFileForPath is unavailable because get_file_for_path is void

    // var getFileForURI is unavailable because get_file_for_uri is void

    // var getSupportedURISchemes is unavailable because get_supported_uri_schemes is void

    // var parseName is unavailable because parse_name is void

    // var localFileAddInfo is unavailable because local_file_add_info is void

    // var addWritableNamespaces is unavailable because add_writable_namespaces is void

    // var localFileSetAttributes is unavailable because local_file_set_attributes is void

    // var localFileRemoved is unavailable because local_file_removed is void

    // var localFileMoved is unavailable because local_file_moved is void

    // var deserializeIcon is unavailable because deserialize_icon is void

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

    // var GReserved4 is unavailable because _g_reserved4 is void

    // var GReserved5 is unavailable because _g_reserved5 is void

    // var GReserved6 is unavailable because _g_reserved6 is void

}



