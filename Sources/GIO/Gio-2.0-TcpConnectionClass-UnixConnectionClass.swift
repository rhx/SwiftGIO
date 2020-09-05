import CGLib
import GLib
import GLibObject

// MARK: - TcpConnectionClass Record

/// The `TcpConnectionClassProtocol` protocol exposes the methods and properties of an underlying `GTcpConnectionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TcpConnectionClass`.
/// Alternatively, use `TcpConnectionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TcpConnectionClassProtocol {
        /// Untyped pointer to the underlying `GTcpConnectionClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTcpConnectionClass` instance.
    var _ptr: UnsafeMutablePointer<GTcpConnectionClass>! { get }

}

/// The `TcpConnectionClassRef` type acts as a lightweight Swift reference to an underlying `GTcpConnectionClass` instance.
/// It exposes methods that can operate on this data type through `TcpConnectionClassProtocol` conformance.
/// Use `TcpConnectionClassRef` only as an `unowned` reference to an existing `GTcpConnectionClass` instance.
///

public struct TcpConnectionClassRef: TcpConnectionClassProtocol {
        /// Untyped pointer to the underlying `GTcpConnectionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TcpConnectionClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTcpConnectionClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTcpConnectionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTcpConnectionClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTcpConnectionClass>?) {
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

    /// Reference intialiser for a related type that implements `TcpConnectionClassProtocol`
    @inlinable init<T: TcpConnectionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionClassProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TcpConnectionClass` type acts as an owner of an underlying `GTcpConnectionClass` instance.
/// It provides the methods that can operate on this data type through `TcpConnectionClassProtocol` conformance.
/// Use `TcpConnectionClass` as a strong reference or owner of a `GTcpConnectionClass` instance.
///

open class TcpConnectionClass: TcpConnectionClassProtocol {
        /// Untyped pointer to the underlying `GTcpConnectionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpConnectionClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTcpConnectionClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpConnectionClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTcpConnectionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpConnectionClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpConnectionClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpConnectionClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTcpConnectionClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpConnectionClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTcpConnectionClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTcpConnectionClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TcpConnectionClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTcpConnectionClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTcpConnectionClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TcpConnectionClassProtocol`
    /// `GTcpConnectionClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TcpConnectionClassProtocol`
    @inlinable public init<T: TcpConnectionClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTcpConnectionClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTcpConnectionClass`.
    deinit {
        // no reference counting for GTcpConnectionClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTcpConnectionClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTcpConnectionClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTcpConnectionClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTcpConnectionClass, cannot ref(_ptr)
    }



}

// MARK: no TcpConnectionClass properties

// MARK: no TcpConnectionClass signals


// MARK: TcpConnectionClass Record: TcpConnectionClassProtocol extension (methods and fields)
public extension TcpConnectionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTcpConnectionClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTcpConnectionClass>! { return ptr?.assumingMemoryBound(to: GTcpConnectionClass.self) }


    @inlinable var parentClass: GSocketConnectionClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



// MARK: - TcpConnectionPrivate Record

/// The `TcpConnectionPrivateProtocol` protocol exposes the methods and properties of an underlying `GTcpConnectionPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TcpConnectionPrivate`.
/// Alternatively, use `TcpConnectionPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TcpConnectionPrivateProtocol {
        /// Untyped pointer to the underlying `GTcpConnectionPrivate` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTcpConnectionPrivate` instance.
    var _ptr: UnsafeMutablePointer<GTcpConnectionPrivate>! { get }

}

/// The `TcpConnectionPrivateRef` type acts as a lightweight Swift reference to an underlying `GTcpConnectionPrivate` instance.
/// It exposes methods that can operate on this data type through `TcpConnectionPrivateProtocol` conformance.
/// Use `TcpConnectionPrivateRef` only as an `unowned` reference to an existing `GTcpConnectionPrivate` instance.
///

public struct TcpConnectionPrivateRef: TcpConnectionPrivateProtocol {
        /// Untyped pointer to the underlying `GTcpConnectionPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TcpConnectionPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTcpConnectionPrivate>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTcpConnectionPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTcpConnectionPrivate>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTcpConnectionPrivate>?) {
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

    /// Reference intialiser for a related type that implements `TcpConnectionPrivateProtocol`
    @inlinable init<T: TcpConnectionPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionPrivateProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionPrivateProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionPrivateProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionPrivateProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionPrivateProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TcpConnectionPrivate` type acts as an owner of an underlying `GTcpConnectionPrivate` instance.
/// It provides the methods that can operate on this data type through `TcpConnectionPrivateProtocol` conformance.
/// Use `TcpConnectionPrivate` as a strong reference or owner of a `GTcpConnectionPrivate` instance.
///

open class TcpConnectionPrivate: TcpConnectionPrivateProtocol {
        /// Untyped pointer to the underlying `GTcpConnectionPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpConnectionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTcpConnectionPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpConnectionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTcpConnectionPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpConnectionPrivate` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpConnectionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpConnectionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTcpConnectionPrivate>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpConnectionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTcpConnectionPrivate>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTcpConnectionPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TcpConnectionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTcpConnectionPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTcpConnectionPrivate, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TcpConnectionPrivateProtocol`
    /// `GTcpConnectionPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TcpConnectionPrivateProtocol`
    @inlinable public init<T: TcpConnectionPrivateProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTcpConnectionPrivate, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTcpConnectionPrivate`.
    deinit {
        // no reference counting for GTcpConnectionPrivate, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTcpConnectionPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionPrivateProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTcpConnectionPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTcpConnectionPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpConnectionPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTcpConnectionPrivate, cannot ref(_ptr)
    }



}

// MARK: no TcpConnectionPrivate properties

// MARK: no TcpConnectionPrivate signals


// MARK: TcpConnectionPrivate Record: TcpConnectionPrivateProtocol extension (methods and fields)
public extension TcpConnectionPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTcpConnectionPrivate` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTcpConnectionPrivate>! { return ptr?.assumingMemoryBound(to: GTcpConnectionPrivate.self) }



}



// MARK: - TcpWrapperConnectionClass Record

/// The `TcpWrapperConnectionClassProtocol` protocol exposes the methods and properties of an underlying `GTcpWrapperConnectionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TcpWrapperConnectionClass`.
/// Alternatively, use `TcpWrapperConnectionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TcpWrapperConnectionClassProtocol {
        /// Untyped pointer to the underlying `GTcpWrapperConnectionClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTcpWrapperConnectionClass` instance.
    var _ptr: UnsafeMutablePointer<GTcpWrapperConnectionClass>! { get }

}

/// The `TcpWrapperConnectionClassRef` type acts as a lightweight Swift reference to an underlying `GTcpWrapperConnectionClass` instance.
/// It exposes methods that can operate on this data type through `TcpWrapperConnectionClassProtocol` conformance.
/// Use `TcpWrapperConnectionClassRef` only as an `unowned` reference to an existing `GTcpWrapperConnectionClass` instance.
///

public struct TcpWrapperConnectionClassRef: TcpWrapperConnectionClassProtocol {
        /// Untyped pointer to the underlying `GTcpWrapperConnectionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TcpWrapperConnectionClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTcpWrapperConnectionClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTcpWrapperConnectionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTcpWrapperConnectionClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTcpWrapperConnectionClass>?) {
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

    /// Reference intialiser for a related type that implements `TcpWrapperConnectionClassProtocol`
    @inlinable init<T: TcpWrapperConnectionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionClassProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TcpWrapperConnectionClass` type acts as an owner of an underlying `GTcpWrapperConnectionClass` instance.
/// It provides the methods that can operate on this data type through `TcpWrapperConnectionClassProtocol` conformance.
/// Use `TcpWrapperConnectionClass` as a strong reference or owner of a `GTcpWrapperConnectionClass` instance.
///

open class TcpWrapperConnectionClass: TcpWrapperConnectionClassProtocol {
        /// Untyped pointer to the underlying `GTcpWrapperConnectionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpWrapperConnectionClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTcpWrapperConnectionClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpWrapperConnectionClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTcpWrapperConnectionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpWrapperConnectionClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpWrapperConnectionClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpWrapperConnectionClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTcpWrapperConnectionClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpWrapperConnectionClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTcpWrapperConnectionClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTcpWrapperConnectionClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TcpWrapperConnectionClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTcpWrapperConnectionClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTcpWrapperConnectionClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TcpWrapperConnectionClassProtocol`
    /// `GTcpWrapperConnectionClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TcpWrapperConnectionClassProtocol`
    @inlinable public init<T: TcpWrapperConnectionClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTcpWrapperConnectionClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTcpWrapperConnectionClass`.
    deinit {
        // no reference counting for GTcpWrapperConnectionClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTcpWrapperConnectionClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTcpWrapperConnectionClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTcpWrapperConnectionClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTcpWrapperConnectionClass, cannot ref(_ptr)
    }



}

// MARK: no TcpWrapperConnectionClass properties

// MARK: no TcpWrapperConnectionClass signals


// MARK: TcpWrapperConnectionClass Record: TcpWrapperConnectionClassProtocol extension (methods and fields)
public extension TcpWrapperConnectionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTcpWrapperConnectionClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTcpWrapperConnectionClass>! { return ptr?.assumingMemoryBound(to: GTcpWrapperConnectionClass.self) }


    @inlinable var parentClass: GTcpConnectionClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



// MARK: - TcpWrapperConnectionPrivate Record

/// The `TcpWrapperConnectionPrivateProtocol` protocol exposes the methods and properties of an underlying `GTcpWrapperConnectionPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TcpWrapperConnectionPrivate`.
/// Alternatively, use `TcpWrapperConnectionPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TcpWrapperConnectionPrivateProtocol {
        /// Untyped pointer to the underlying `GTcpWrapperConnectionPrivate` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTcpWrapperConnectionPrivate` instance.
    var _ptr: UnsafeMutablePointer<GTcpWrapperConnectionPrivate>! { get }

}

/// The `TcpWrapperConnectionPrivateRef` type acts as a lightweight Swift reference to an underlying `GTcpWrapperConnectionPrivate` instance.
/// It exposes methods that can operate on this data type through `TcpWrapperConnectionPrivateProtocol` conformance.
/// Use `TcpWrapperConnectionPrivateRef` only as an `unowned` reference to an existing `GTcpWrapperConnectionPrivate` instance.
///

public struct TcpWrapperConnectionPrivateRef: TcpWrapperConnectionPrivateProtocol {
        /// Untyped pointer to the underlying `GTcpWrapperConnectionPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TcpWrapperConnectionPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTcpWrapperConnectionPrivate>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTcpWrapperConnectionPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTcpWrapperConnectionPrivate>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTcpWrapperConnectionPrivate>?) {
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

    /// Reference intialiser for a related type that implements `TcpWrapperConnectionPrivateProtocol`
    @inlinable init<T: TcpWrapperConnectionPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionPrivateProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionPrivateProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionPrivateProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionPrivateProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionPrivateProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TcpWrapperConnectionPrivate` type acts as an owner of an underlying `GTcpWrapperConnectionPrivate` instance.
/// It provides the methods that can operate on this data type through `TcpWrapperConnectionPrivateProtocol` conformance.
/// Use `TcpWrapperConnectionPrivate` as a strong reference or owner of a `GTcpWrapperConnectionPrivate` instance.
///

open class TcpWrapperConnectionPrivate: TcpWrapperConnectionPrivateProtocol {
        /// Untyped pointer to the underlying `GTcpWrapperConnectionPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpWrapperConnectionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTcpWrapperConnectionPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpWrapperConnectionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTcpWrapperConnectionPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpWrapperConnectionPrivate` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpWrapperConnectionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpWrapperConnectionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTcpWrapperConnectionPrivate>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TcpWrapperConnectionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTcpWrapperConnectionPrivate>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTcpWrapperConnectionPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TcpWrapperConnectionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTcpWrapperConnectionPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTcpWrapperConnectionPrivate, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TcpWrapperConnectionPrivateProtocol`
    /// `GTcpWrapperConnectionPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TcpWrapperConnectionPrivateProtocol`
    @inlinable public init<T: TcpWrapperConnectionPrivateProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTcpWrapperConnectionPrivate, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTcpWrapperConnectionPrivate`.
    deinit {
        // no reference counting for GTcpWrapperConnectionPrivate, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTcpWrapperConnectionPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionPrivateProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTcpWrapperConnectionPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTcpWrapperConnectionPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TcpWrapperConnectionPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTcpWrapperConnectionPrivate, cannot ref(_ptr)
    }



}

// MARK: no TcpWrapperConnectionPrivate properties

// MARK: no TcpWrapperConnectionPrivate signals


// MARK: TcpWrapperConnectionPrivate Record: TcpWrapperConnectionPrivateProtocol extension (methods and fields)
public extension TcpWrapperConnectionPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTcpWrapperConnectionPrivate` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTcpWrapperConnectionPrivate>! { return ptr?.assumingMemoryBound(to: GTcpWrapperConnectionPrivate.self) }



}



// MARK: - ThemedIconClass Record

/// The `ThemedIconClassProtocol` protocol exposes the methods and properties of an underlying `GThemedIconClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ThemedIconClass`.
/// Alternatively, use `ThemedIconClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ThemedIconClassProtocol {
        /// Untyped pointer to the underlying `GThemedIconClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GThemedIconClass` instance.
    var _ptr: UnsafeMutablePointer<GThemedIconClass>! { get }

}

/// The `ThemedIconClassRef` type acts as a lightweight Swift reference to an underlying `GThemedIconClass` instance.
/// It exposes methods that can operate on this data type through `ThemedIconClassProtocol` conformance.
/// Use `ThemedIconClassRef` only as an `unowned` reference to an existing `GThemedIconClass` instance.
///

public struct ThemedIconClassRef: ThemedIconClassProtocol {
        /// Untyped pointer to the underlying `GThemedIconClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ThemedIconClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GThemedIconClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GThemedIconClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GThemedIconClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GThemedIconClass>?) {
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

    /// Reference intialiser for a related type that implements `ThemedIconClassProtocol`
    @inlinable init<T: ThemedIconClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconClassProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ThemedIconClass` type acts as an owner of an underlying `GThemedIconClass` instance.
/// It provides the methods that can operate on this data type through `ThemedIconClassProtocol` conformance.
/// Use `ThemedIconClass` as a strong reference or owner of a `GThemedIconClass` instance.
///

open class ThemedIconClass: ThemedIconClassProtocol {
        /// Untyped pointer to the underlying `GThemedIconClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThemedIconClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GThemedIconClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThemedIconClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GThemedIconClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThemedIconClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThemedIconClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThemedIconClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GThemedIconClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThemedIconClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GThemedIconClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GThemedIconClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ThemedIconClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GThemedIconClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GThemedIconClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `ThemedIconClassProtocol`
    /// `GThemedIconClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ThemedIconClassProtocol`
    @inlinable public init<T: ThemedIconClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GThemedIconClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GThemedIconClass`.
    deinit {
        // no reference counting for GThemedIconClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GThemedIconClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GThemedIconClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GThemedIconClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThemedIconClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GThemedIconClass, cannot ref(_ptr)
    }



}

// MARK: no ThemedIconClass properties

// MARK: no ThemedIconClass signals


// MARK: ThemedIconClass Record: ThemedIconClassProtocol extension (methods and fields)
public extension ThemedIconClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GThemedIconClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GThemedIconClass>! { return ptr?.assumingMemoryBound(to: GThemedIconClass.self) }



}



// MARK: - ThreadedSocketServiceClass Record

/// The `ThreadedSocketServiceClassProtocol` protocol exposes the methods and properties of an underlying `GThreadedSocketServiceClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ThreadedSocketServiceClass`.
/// Alternatively, use `ThreadedSocketServiceClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ThreadedSocketServiceClassProtocol {
        /// Untyped pointer to the underlying `GThreadedSocketServiceClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GThreadedSocketServiceClass` instance.
    var _ptr: UnsafeMutablePointer<GThreadedSocketServiceClass>! { get }

}

/// The `ThreadedSocketServiceClassRef` type acts as a lightweight Swift reference to an underlying `GThreadedSocketServiceClass` instance.
/// It exposes methods that can operate on this data type through `ThreadedSocketServiceClassProtocol` conformance.
/// Use `ThreadedSocketServiceClassRef` only as an `unowned` reference to an existing `GThreadedSocketServiceClass` instance.
///

public struct ThreadedSocketServiceClassRef: ThreadedSocketServiceClassProtocol {
        /// Untyped pointer to the underlying `GThreadedSocketServiceClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ThreadedSocketServiceClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GThreadedSocketServiceClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GThreadedSocketServiceClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GThreadedSocketServiceClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GThreadedSocketServiceClass>?) {
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

    /// Reference intialiser for a related type that implements `ThreadedSocketServiceClassProtocol`
    @inlinable init<T: ThreadedSocketServiceClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceClassProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ThreadedSocketServiceClass` type acts as an owner of an underlying `GThreadedSocketServiceClass` instance.
/// It provides the methods that can operate on this data type through `ThreadedSocketServiceClassProtocol` conformance.
/// Use `ThreadedSocketServiceClass` as a strong reference or owner of a `GThreadedSocketServiceClass` instance.
///

open class ThreadedSocketServiceClass: ThreadedSocketServiceClassProtocol {
        /// Untyped pointer to the underlying `GThreadedSocketServiceClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThreadedSocketServiceClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GThreadedSocketServiceClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThreadedSocketServiceClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GThreadedSocketServiceClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThreadedSocketServiceClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThreadedSocketServiceClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThreadedSocketServiceClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GThreadedSocketServiceClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThreadedSocketServiceClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GThreadedSocketServiceClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GThreadedSocketServiceClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ThreadedSocketServiceClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GThreadedSocketServiceClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GThreadedSocketServiceClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `ThreadedSocketServiceClassProtocol`
    /// `GThreadedSocketServiceClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ThreadedSocketServiceClassProtocol`
    @inlinable public init<T: ThreadedSocketServiceClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GThreadedSocketServiceClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GThreadedSocketServiceClass`.
    deinit {
        // no reference counting for GThreadedSocketServiceClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GThreadedSocketServiceClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GThreadedSocketServiceClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GThreadedSocketServiceClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServiceClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GThreadedSocketServiceClass, cannot ref(_ptr)
    }



}

// MARK: no ThreadedSocketServiceClass properties

// MARK: no ThreadedSocketServiceClass signals


// MARK: ThreadedSocketServiceClass Record: ThreadedSocketServiceClassProtocol extension (methods and fields)
public extension ThreadedSocketServiceClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GThreadedSocketServiceClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GThreadedSocketServiceClass>! { return ptr?.assumingMemoryBound(to: GThreadedSocketServiceClass.self) }


    @inlinable var parentClass: GSocketServiceClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var run is unavailable because run is void

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

    // var GReserved4 is unavailable because _g_reserved4 is void

    // var GReserved5 is unavailable because _g_reserved5 is void

}



// MARK: - ThreadedSocketServicePrivate Record

/// The `ThreadedSocketServicePrivateProtocol` protocol exposes the methods and properties of an underlying `GThreadedSocketServicePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ThreadedSocketServicePrivate`.
/// Alternatively, use `ThreadedSocketServicePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ThreadedSocketServicePrivateProtocol {
        /// Untyped pointer to the underlying `GThreadedSocketServicePrivate` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GThreadedSocketServicePrivate` instance.
    var _ptr: UnsafeMutablePointer<GThreadedSocketServicePrivate>! { get }

}

/// The `ThreadedSocketServicePrivateRef` type acts as a lightweight Swift reference to an underlying `GThreadedSocketServicePrivate` instance.
/// It exposes methods that can operate on this data type through `ThreadedSocketServicePrivateProtocol` conformance.
/// Use `ThreadedSocketServicePrivateRef` only as an `unowned` reference to an existing `GThreadedSocketServicePrivate` instance.
///

public struct ThreadedSocketServicePrivateRef: ThreadedSocketServicePrivateProtocol {
        /// Untyped pointer to the underlying `GThreadedSocketServicePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ThreadedSocketServicePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GThreadedSocketServicePrivate>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GThreadedSocketServicePrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GThreadedSocketServicePrivate>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GThreadedSocketServicePrivate>?) {
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

    /// Reference intialiser for a related type that implements `ThreadedSocketServicePrivateProtocol`
    @inlinable init<T: ThreadedSocketServicePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServicePrivateProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServicePrivateProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServicePrivateProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServicePrivateProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServicePrivateProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ThreadedSocketServicePrivate` type acts as an owner of an underlying `GThreadedSocketServicePrivate` instance.
/// It provides the methods that can operate on this data type through `ThreadedSocketServicePrivateProtocol` conformance.
/// Use `ThreadedSocketServicePrivate` as a strong reference or owner of a `GThreadedSocketServicePrivate` instance.
///

open class ThreadedSocketServicePrivate: ThreadedSocketServicePrivateProtocol {
        /// Untyped pointer to the underlying `GThreadedSocketServicePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThreadedSocketServicePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GThreadedSocketServicePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThreadedSocketServicePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GThreadedSocketServicePrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThreadedSocketServicePrivate` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThreadedSocketServicePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThreadedSocketServicePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GThreadedSocketServicePrivate>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ThreadedSocketServicePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GThreadedSocketServicePrivate>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GThreadedSocketServicePrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ThreadedSocketServicePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GThreadedSocketServicePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GThreadedSocketServicePrivate, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `ThreadedSocketServicePrivateProtocol`
    /// `GThreadedSocketServicePrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ThreadedSocketServicePrivateProtocol`
    @inlinable public init<T: ThreadedSocketServicePrivateProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GThreadedSocketServicePrivate, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GThreadedSocketServicePrivate`.
    deinit {
        // no reference counting for GThreadedSocketServicePrivate, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServicePrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServicePrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GThreadedSocketServicePrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServicePrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServicePrivateProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GThreadedSocketServicePrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServicePrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServicePrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GThreadedSocketServicePrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServicePrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ThreadedSocketServicePrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GThreadedSocketServicePrivate, cannot ref(_ptr)
    }



}

// MARK: no ThreadedSocketServicePrivate properties

// MARK: no ThreadedSocketServicePrivate signals


// MARK: ThreadedSocketServicePrivate Record: ThreadedSocketServicePrivateProtocol extension (methods and fields)
public extension ThreadedSocketServicePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GThreadedSocketServicePrivate` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GThreadedSocketServicePrivate>! { return ptr?.assumingMemoryBound(to: GThreadedSocketServicePrivate.self) }



}



// MARK: - TLSBackendInterface Record

/// The `TLSBackendInterfaceProtocol` protocol exposes the methods and properties of an underlying `GTlsBackendInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TLSBackendInterface`.
/// Alternatively, use `TLSBackendInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Provides an interface for describing TLS-related types.
public protocol TLSBackendInterfaceProtocol {
        /// Untyped pointer to the underlying `GTlsBackendInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTlsBackendInterface` instance.
    var _ptr: UnsafeMutablePointer<GTlsBackendInterface>! { get }

}

/// The `TLSBackendInterfaceRef` type acts as a lightweight Swift reference to an underlying `GTlsBackendInterface` instance.
/// It exposes methods that can operate on this data type through `TLSBackendInterfaceProtocol` conformance.
/// Use `TLSBackendInterfaceRef` only as an `unowned` reference to an existing `GTlsBackendInterface` instance.
///
/// Provides an interface for describing TLS-related types.
public struct TLSBackendInterfaceRef: TLSBackendInterfaceProtocol {
        /// Untyped pointer to the underlying `GTlsBackendInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TLSBackendInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTlsBackendInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTlsBackendInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTlsBackendInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTlsBackendInterface>?) {
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

    /// Reference intialiser for a related type that implements `TLSBackendInterfaceProtocol`
    @inlinable init<T: TLSBackendInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendInterfaceProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TLSBackendInterface` type acts as an owner of an underlying `GTlsBackendInterface` instance.
/// It provides the methods that can operate on this data type through `TLSBackendInterfaceProtocol` conformance.
/// Use `TLSBackendInterface` as a strong reference or owner of a `GTlsBackendInterface` instance.
///
/// Provides an interface for describing TLS-related types.
open class TLSBackendInterface: TLSBackendInterfaceProtocol {
        /// Untyped pointer to the underlying `GTlsBackendInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSBackendInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTlsBackendInterface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSBackendInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTlsBackendInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSBackendInterface` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSBackendInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSBackendInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTlsBackendInterface>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSBackendInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTlsBackendInterface>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTlsBackendInterface` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TLSBackendInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTlsBackendInterface>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTlsBackendInterface, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TLSBackendInterfaceProtocol`
    /// `GTlsBackendInterface` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TLSBackendInterfaceProtocol`
    @inlinable public init<T: TLSBackendInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTlsBackendInterface, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTlsBackendInterface`.
    deinit {
        // no reference counting for GTlsBackendInterface, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTlsBackendInterface, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendInterfaceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendInterfaceProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTlsBackendInterface, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendInterfaceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendInterfaceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTlsBackendInterface, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSBackendInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTlsBackendInterface, cannot ref(_ptr)
    }



}

// MARK: no TLSBackendInterface properties

// MARK: no TLSBackendInterface signals


// MARK: TLSBackendInterface Record: TLSBackendInterfaceProtocol extension (methods and fields)
public extension TLSBackendInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsBackendInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTlsBackendInterface>! { return ptr?.assumingMemoryBound(to: GTlsBackendInterface.self) }


    /// The parent interface.
    @inlinable var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var supportsTLS is unavailable because supports_tls is void

    // var getCertificateType is unavailable because get_certificate_type is void

    // var getClientConnectionType is unavailable because get_client_connection_type is void

    // var getServerConnectionType is unavailable because get_server_connection_type is void

    // var getFileDatabaseType is unavailable because get_file_database_type is void

    // var getDefaultDatabase is unavailable because get_default_database is void

    // var supportsDtls is unavailable because supports_dtls is void

    // var getDtlsClientConnectionType is unavailable because get_dtls_client_connection_type is void

    // var getDtlsServerConnectionType is unavailable because get_dtls_server_connection_type is void

}



// MARK: - TLSCertificateClass Record

/// The `TLSCertificateClassProtocol` protocol exposes the methods and properties of an underlying `GTlsCertificateClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TLSCertificateClass`.
/// Alternatively, use `TLSCertificateClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TLSCertificateClassProtocol {
        /// Untyped pointer to the underlying `GTlsCertificateClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTlsCertificateClass` instance.
    var _ptr: UnsafeMutablePointer<GTlsCertificateClass>! { get }

}

/// The `TLSCertificateClassRef` type acts as a lightweight Swift reference to an underlying `GTlsCertificateClass` instance.
/// It exposes methods that can operate on this data type through `TLSCertificateClassProtocol` conformance.
/// Use `TLSCertificateClassRef` only as an `unowned` reference to an existing `GTlsCertificateClass` instance.
///

public struct TLSCertificateClassRef: TLSCertificateClassProtocol {
        /// Untyped pointer to the underlying `GTlsCertificateClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TLSCertificateClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTlsCertificateClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTlsCertificateClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTlsCertificateClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTlsCertificateClass>?) {
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

    /// Reference intialiser for a related type that implements `TLSCertificateClassProtocol`
    @inlinable init<T: TLSCertificateClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateClassProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TLSCertificateClass` type acts as an owner of an underlying `GTlsCertificateClass` instance.
/// It provides the methods that can operate on this data type through `TLSCertificateClassProtocol` conformance.
/// Use `TLSCertificateClass` as a strong reference or owner of a `GTlsCertificateClass` instance.
///

open class TLSCertificateClass: TLSCertificateClassProtocol {
        /// Untyped pointer to the underlying `GTlsCertificateClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSCertificateClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTlsCertificateClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSCertificateClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTlsCertificateClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSCertificateClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSCertificateClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSCertificateClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTlsCertificateClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSCertificateClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTlsCertificateClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTlsCertificateClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TLSCertificateClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTlsCertificateClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTlsCertificateClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TLSCertificateClassProtocol`
    /// `GTlsCertificateClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TLSCertificateClassProtocol`
    @inlinable public init<T: TLSCertificateClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTlsCertificateClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTlsCertificateClass`.
    deinit {
        // no reference counting for GTlsCertificateClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTlsCertificateClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTlsCertificateClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTlsCertificateClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificateClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTlsCertificateClass, cannot ref(_ptr)
    }



}

// MARK: no TLSCertificateClass properties

// MARK: no TLSCertificateClass signals


// MARK: TLSCertificateClass Record: TLSCertificateClassProtocol extension (methods and fields)
public extension TLSCertificateClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsCertificateClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTlsCertificateClass>! { return ptr?.assumingMemoryBound(to: GTlsCertificateClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var verify is unavailable because verify is void

    // var padding is unavailable because padding is private

}



// MARK: - TLSCertificatePrivate Record

/// The `TLSCertificatePrivateProtocol` protocol exposes the methods and properties of an underlying `GTlsCertificatePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TLSCertificatePrivate`.
/// Alternatively, use `TLSCertificatePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TLSCertificatePrivateProtocol {
        /// Untyped pointer to the underlying `GTlsCertificatePrivate` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTlsCertificatePrivate` instance.
    var _ptr: UnsafeMutablePointer<GTlsCertificatePrivate>! { get }

}

/// The `TLSCertificatePrivateRef` type acts as a lightweight Swift reference to an underlying `GTlsCertificatePrivate` instance.
/// It exposes methods that can operate on this data type through `TLSCertificatePrivateProtocol` conformance.
/// Use `TLSCertificatePrivateRef` only as an `unowned` reference to an existing `GTlsCertificatePrivate` instance.
///

public struct TLSCertificatePrivateRef: TLSCertificatePrivateProtocol {
        /// Untyped pointer to the underlying `GTlsCertificatePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TLSCertificatePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTlsCertificatePrivate>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTlsCertificatePrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTlsCertificatePrivate>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTlsCertificatePrivate>?) {
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

    /// Reference intialiser for a related type that implements `TLSCertificatePrivateProtocol`
    @inlinable init<T: TLSCertificatePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificatePrivateProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificatePrivateProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificatePrivateProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificatePrivateProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificatePrivateProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TLSCertificatePrivate` type acts as an owner of an underlying `GTlsCertificatePrivate` instance.
/// It provides the methods that can operate on this data type through `TLSCertificatePrivateProtocol` conformance.
/// Use `TLSCertificatePrivate` as a strong reference or owner of a `GTlsCertificatePrivate` instance.
///

open class TLSCertificatePrivate: TLSCertificatePrivateProtocol {
        /// Untyped pointer to the underlying `GTlsCertificatePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSCertificatePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTlsCertificatePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSCertificatePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTlsCertificatePrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSCertificatePrivate` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSCertificatePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSCertificatePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTlsCertificatePrivate>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSCertificatePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTlsCertificatePrivate>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTlsCertificatePrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TLSCertificatePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTlsCertificatePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTlsCertificatePrivate, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TLSCertificatePrivateProtocol`
    /// `GTlsCertificatePrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TLSCertificatePrivateProtocol`
    @inlinable public init<T: TLSCertificatePrivateProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTlsCertificatePrivate, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTlsCertificatePrivate`.
    deinit {
        // no reference counting for GTlsCertificatePrivate, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificatePrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificatePrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTlsCertificatePrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificatePrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificatePrivateProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTlsCertificatePrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificatePrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificatePrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTlsCertificatePrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificatePrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSCertificatePrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTlsCertificatePrivate, cannot ref(_ptr)
    }



}

// MARK: no TLSCertificatePrivate properties

// MARK: no TLSCertificatePrivate signals


// MARK: TLSCertificatePrivate Record: TLSCertificatePrivateProtocol extension (methods and fields)
public extension TLSCertificatePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsCertificatePrivate` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTlsCertificatePrivate>! { return ptr?.assumingMemoryBound(to: GTlsCertificatePrivate.self) }



}



// MARK: - TLSClientConnectionInterface Record

/// The `TLSClientConnectionInterfaceProtocol` protocol exposes the methods and properties of an underlying `GTlsClientConnectionInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TLSClientConnectionInterface`.
/// Alternatively, use `TLSClientConnectionInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// vtable for a `GTlsClientConnection` implementation.
public protocol TLSClientConnectionInterfaceProtocol {
        /// Untyped pointer to the underlying `GTlsClientConnectionInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTlsClientConnectionInterface` instance.
    var _ptr: UnsafeMutablePointer<GTlsClientConnectionInterface>! { get }

}

/// The `TLSClientConnectionInterfaceRef` type acts as a lightweight Swift reference to an underlying `GTlsClientConnectionInterface` instance.
/// It exposes methods that can operate on this data type through `TLSClientConnectionInterfaceProtocol` conformance.
/// Use `TLSClientConnectionInterfaceRef` only as an `unowned` reference to an existing `GTlsClientConnectionInterface` instance.
///
/// vtable for a `GTlsClientConnection` implementation.
public struct TLSClientConnectionInterfaceRef: TLSClientConnectionInterfaceProtocol {
        /// Untyped pointer to the underlying `GTlsClientConnectionInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TLSClientConnectionInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTlsClientConnectionInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTlsClientConnectionInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTlsClientConnectionInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTlsClientConnectionInterface>?) {
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

    /// Reference intialiser for a related type that implements `TLSClientConnectionInterfaceProtocol`
    @inlinable init<T: TLSClientConnectionInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSClientConnectionInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSClientConnectionInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSClientConnectionInterfaceProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSClientConnectionInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSClientConnectionInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TLSClientConnectionInterface` type acts as an owner of an underlying `GTlsClientConnectionInterface` instance.
/// It provides the methods that can operate on this data type through `TLSClientConnectionInterfaceProtocol` conformance.
/// Use `TLSClientConnectionInterface` as a strong reference or owner of a `GTlsClientConnectionInterface` instance.
///
/// vtable for a `GTlsClientConnection` implementation.
open class TLSClientConnectionInterface: TLSClientConnectionInterfaceProtocol {
        /// Untyped pointer to the underlying `GTlsClientConnectionInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSClientConnectionInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTlsClientConnectionInterface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSClientConnectionInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTlsClientConnectionInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSClientConnectionInterface` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSClientConnectionInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSClientConnectionInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTlsClientConnectionInterface>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSClientConnectionInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTlsClientConnectionInterface>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTlsClientConnectionInterface` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TLSClientConnectionInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTlsClientConnectionInterface>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTlsClientConnectionInterface, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TLSClientConnectionInterfaceProtocol`
    /// `GTlsClientConnectionInterface` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TLSClientConnectionInterfaceProtocol`
    @inlinable public init<T: TLSClientConnectionInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTlsClientConnectionInterface, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTlsClientConnectionInterface`.
    deinit {
        // no reference counting for GTlsClientConnectionInterface, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSClientConnectionInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSClientConnectionInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTlsClientConnectionInterface, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSClientConnectionInterfaceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSClientConnectionInterfaceProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTlsClientConnectionInterface, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSClientConnectionInterfaceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSClientConnectionInterfaceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTlsClientConnectionInterface, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSClientConnectionInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSClientConnectionInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTlsClientConnectionInterface, cannot ref(_ptr)
    }



}

// MARK: no TLSClientConnectionInterface properties

// MARK: no TLSClientConnectionInterface signals


// MARK: TLSClientConnectionInterface Record: TLSClientConnectionInterfaceProtocol extension (methods and fields)
public extension TLSClientConnectionInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsClientConnectionInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTlsClientConnectionInterface>! { return ptr?.assumingMemoryBound(to: GTlsClientConnectionInterface.self) }


    /// The parent interface.
    @inlinable var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var copySessionState is unavailable because copy_session_state is void

}



// MARK: - TLSConnectionClass Record

/// The `TLSConnectionClassProtocol` protocol exposes the methods and properties of an underlying `GTlsConnectionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TLSConnectionClass`.
/// Alternatively, use `TLSConnectionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TLSConnectionClassProtocol {
        /// Untyped pointer to the underlying `GTlsConnectionClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTlsConnectionClass` instance.
    var _ptr: UnsafeMutablePointer<GTlsConnectionClass>! { get }

}

/// The `TLSConnectionClassRef` type acts as a lightweight Swift reference to an underlying `GTlsConnectionClass` instance.
/// It exposes methods that can operate on this data type through `TLSConnectionClassProtocol` conformance.
/// Use `TLSConnectionClassRef` only as an `unowned` reference to an existing `GTlsConnectionClass` instance.
///

public struct TLSConnectionClassRef: TLSConnectionClassProtocol {
        /// Untyped pointer to the underlying `GTlsConnectionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TLSConnectionClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTlsConnectionClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTlsConnectionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTlsConnectionClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTlsConnectionClass>?) {
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

    /// Reference intialiser for a related type that implements `TLSConnectionClassProtocol`
    @inlinable init<T: TLSConnectionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionClassProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TLSConnectionClass` type acts as an owner of an underlying `GTlsConnectionClass` instance.
/// It provides the methods that can operate on this data type through `TLSConnectionClassProtocol` conformance.
/// Use `TLSConnectionClass` as a strong reference or owner of a `GTlsConnectionClass` instance.
///

open class TLSConnectionClass: TLSConnectionClassProtocol {
        /// Untyped pointer to the underlying `GTlsConnectionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSConnectionClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTlsConnectionClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSConnectionClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTlsConnectionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSConnectionClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSConnectionClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSConnectionClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTlsConnectionClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSConnectionClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTlsConnectionClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTlsConnectionClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TLSConnectionClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTlsConnectionClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTlsConnectionClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TLSConnectionClassProtocol`
    /// `GTlsConnectionClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TLSConnectionClassProtocol`
    @inlinable public init<T: TLSConnectionClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTlsConnectionClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTlsConnectionClass`.
    deinit {
        // no reference counting for GTlsConnectionClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTlsConnectionClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTlsConnectionClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTlsConnectionClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTlsConnectionClass, cannot ref(_ptr)
    }



}

// MARK: no TLSConnectionClass properties

// MARK: no TLSConnectionClass signals


// MARK: TLSConnectionClass Record: TLSConnectionClassProtocol extension (methods and fields)
public extension TLSConnectionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsConnectionClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTlsConnectionClass>! { return ptr?.assumingMemoryBound(to: GTlsConnectionClass.self) }


    @inlinable var parentClass: GIOStreamClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var acceptCertificate is unavailable because accept_certificate is void

    // var handshake is unavailable because handshake is void

    // var handshakeAsync is unavailable because handshake_async is void

    // var handshakeFinish is unavailable because handshake_finish is void

    // var padding is unavailable because padding is private

}



// MARK: - TLSConnectionPrivate Record

/// The `TLSConnectionPrivateProtocol` protocol exposes the methods and properties of an underlying `GTlsConnectionPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TLSConnectionPrivate`.
/// Alternatively, use `TLSConnectionPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TLSConnectionPrivateProtocol {
        /// Untyped pointer to the underlying `GTlsConnectionPrivate` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTlsConnectionPrivate` instance.
    var _ptr: UnsafeMutablePointer<GTlsConnectionPrivate>! { get }

}

/// The `TLSConnectionPrivateRef` type acts as a lightweight Swift reference to an underlying `GTlsConnectionPrivate` instance.
/// It exposes methods that can operate on this data type through `TLSConnectionPrivateProtocol` conformance.
/// Use `TLSConnectionPrivateRef` only as an `unowned` reference to an existing `GTlsConnectionPrivate` instance.
///

public struct TLSConnectionPrivateRef: TLSConnectionPrivateProtocol {
        /// Untyped pointer to the underlying `GTlsConnectionPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TLSConnectionPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTlsConnectionPrivate>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTlsConnectionPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTlsConnectionPrivate>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTlsConnectionPrivate>?) {
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

    /// Reference intialiser for a related type that implements `TLSConnectionPrivateProtocol`
    @inlinable init<T: TLSConnectionPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionPrivateProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionPrivateProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionPrivateProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionPrivateProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionPrivateProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TLSConnectionPrivate` type acts as an owner of an underlying `GTlsConnectionPrivate` instance.
/// It provides the methods that can operate on this data type through `TLSConnectionPrivateProtocol` conformance.
/// Use `TLSConnectionPrivate` as a strong reference or owner of a `GTlsConnectionPrivate` instance.
///

open class TLSConnectionPrivate: TLSConnectionPrivateProtocol {
        /// Untyped pointer to the underlying `GTlsConnectionPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSConnectionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTlsConnectionPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSConnectionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTlsConnectionPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSConnectionPrivate` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSConnectionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSConnectionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTlsConnectionPrivate>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSConnectionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTlsConnectionPrivate>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTlsConnectionPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TLSConnectionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTlsConnectionPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTlsConnectionPrivate, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TLSConnectionPrivateProtocol`
    /// `GTlsConnectionPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TLSConnectionPrivateProtocol`
    @inlinable public init<T: TLSConnectionPrivateProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTlsConnectionPrivate, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTlsConnectionPrivate`.
    deinit {
        // no reference counting for GTlsConnectionPrivate, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTlsConnectionPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionPrivateProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTlsConnectionPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTlsConnectionPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSConnectionPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTlsConnectionPrivate, cannot ref(_ptr)
    }



}

// MARK: no TLSConnectionPrivate properties

// MARK: no TLSConnectionPrivate signals


// MARK: TLSConnectionPrivate Record: TLSConnectionPrivateProtocol extension (methods and fields)
public extension TLSConnectionPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsConnectionPrivate` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTlsConnectionPrivate>! { return ptr?.assumingMemoryBound(to: GTlsConnectionPrivate.self) }



}



// MARK: - TLSDatabaseClass Record

/// The `TLSDatabaseClassProtocol` protocol exposes the methods and properties of an underlying `GTlsDatabaseClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TLSDatabaseClass`.
/// Alternatively, use `TLSDatabaseClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The class for `GTlsDatabase`. Derived classes should implement the various
/// virtual methods. _async and _finish methods have a default
/// implementation that runs the corresponding sync method in a thread.
public protocol TLSDatabaseClassProtocol {
        /// Untyped pointer to the underlying `GTlsDatabaseClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTlsDatabaseClass` instance.
    var _ptr: UnsafeMutablePointer<GTlsDatabaseClass>! { get }

}

/// The `TLSDatabaseClassRef` type acts as a lightweight Swift reference to an underlying `GTlsDatabaseClass` instance.
/// It exposes methods that can operate on this data type through `TLSDatabaseClassProtocol` conformance.
/// Use `TLSDatabaseClassRef` only as an `unowned` reference to an existing `GTlsDatabaseClass` instance.
///
/// The class for `GTlsDatabase`. Derived classes should implement the various
/// virtual methods. _async and _finish methods have a default
/// implementation that runs the corresponding sync method in a thread.
public struct TLSDatabaseClassRef: TLSDatabaseClassProtocol {
        /// Untyped pointer to the underlying `GTlsDatabaseClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TLSDatabaseClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTlsDatabaseClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTlsDatabaseClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTlsDatabaseClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTlsDatabaseClass>?) {
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

    /// Reference intialiser for a related type that implements `TLSDatabaseClassProtocol`
    @inlinable init<T: TLSDatabaseClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseClassProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TLSDatabaseClass` type acts as an owner of an underlying `GTlsDatabaseClass` instance.
/// It provides the methods that can operate on this data type through `TLSDatabaseClassProtocol` conformance.
/// Use `TLSDatabaseClass` as a strong reference or owner of a `GTlsDatabaseClass` instance.
///
/// The class for `GTlsDatabase`. Derived classes should implement the various
/// virtual methods. _async and _finish methods have a default
/// implementation that runs the corresponding sync method in a thread.
open class TLSDatabaseClass: TLSDatabaseClassProtocol {
        /// Untyped pointer to the underlying `GTlsDatabaseClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSDatabaseClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTlsDatabaseClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSDatabaseClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTlsDatabaseClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSDatabaseClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSDatabaseClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSDatabaseClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTlsDatabaseClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSDatabaseClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTlsDatabaseClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTlsDatabaseClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TLSDatabaseClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTlsDatabaseClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTlsDatabaseClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TLSDatabaseClassProtocol`
    /// `GTlsDatabaseClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TLSDatabaseClassProtocol`
    @inlinable public init<T: TLSDatabaseClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTlsDatabaseClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTlsDatabaseClass`.
    deinit {
        // no reference counting for GTlsDatabaseClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTlsDatabaseClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTlsDatabaseClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTlsDatabaseClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabaseClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTlsDatabaseClass, cannot ref(_ptr)
    }



}

// MARK: no TLSDatabaseClass properties

// MARK: no TLSDatabaseClass signals


// MARK: TLSDatabaseClass Record: TLSDatabaseClassProtocol extension (methods and fields)
public extension TLSDatabaseClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsDatabaseClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTlsDatabaseClass>! { return ptr?.assumingMemoryBound(to: GTlsDatabaseClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var verifyChain is unavailable because verify_chain is void

    // var verifyChainAsync is unavailable because verify_chain_async is void

    // var verifyChainFinish is unavailable because verify_chain_finish is void

    // var createCertificateHandle is unavailable because create_certificate_handle is void

    // var lookupCertificateForHandle is unavailable because lookup_certificate_for_handle is void

    // var lookupCertificateForHandleAsync is unavailable because lookup_certificate_for_handle_async is void

    // var lookupCertificateForHandleFinish is unavailable because lookup_certificate_for_handle_finish is void

    // var lookupCertificateIssuer is unavailable because lookup_certificate_issuer is void

    // var lookupCertificateIssuerAsync is unavailable because lookup_certificate_issuer_async is void

    // var lookupCertificateIssuerFinish is unavailable because lookup_certificate_issuer_finish is void

    // var lookupCertificatesIssuedBy is unavailable because lookup_certificates_issued_by is void

    // var lookupCertificatesIssuedByAsync is unavailable because lookup_certificates_issued_by_async is void

    // var lookupCertificatesIssuedByFinish is unavailable because lookup_certificates_issued_by_finish is void

    // var padding is unavailable because padding is private

}



// MARK: - TLSDatabasePrivate Record

/// The `TLSDatabasePrivateProtocol` protocol exposes the methods and properties of an underlying `GTlsDatabasePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TLSDatabasePrivate`.
/// Alternatively, use `TLSDatabasePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TLSDatabasePrivateProtocol {
        /// Untyped pointer to the underlying `GTlsDatabasePrivate` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTlsDatabasePrivate` instance.
    var _ptr: UnsafeMutablePointer<GTlsDatabasePrivate>! { get }

}

/// The `TLSDatabasePrivateRef` type acts as a lightweight Swift reference to an underlying `GTlsDatabasePrivate` instance.
/// It exposes methods that can operate on this data type through `TLSDatabasePrivateProtocol` conformance.
/// Use `TLSDatabasePrivateRef` only as an `unowned` reference to an existing `GTlsDatabasePrivate` instance.
///

public struct TLSDatabasePrivateRef: TLSDatabasePrivateProtocol {
        /// Untyped pointer to the underlying `GTlsDatabasePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TLSDatabasePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTlsDatabasePrivate>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTlsDatabasePrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTlsDatabasePrivate>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTlsDatabasePrivate>?) {
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

    /// Reference intialiser for a related type that implements `TLSDatabasePrivateProtocol`
    @inlinable init<T: TLSDatabasePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabasePrivateProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabasePrivateProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabasePrivateProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabasePrivateProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabasePrivateProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TLSDatabasePrivate` type acts as an owner of an underlying `GTlsDatabasePrivate` instance.
/// It provides the methods that can operate on this data type through `TLSDatabasePrivateProtocol` conformance.
/// Use `TLSDatabasePrivate` as a strong reference or owner of a `GTlsDatabasePrivate` instance.
///

open class TLSDatabasePrivate: TLSDatabasePrivateProtocol {
        /// Untyped pointer to the underlying `GTlsDatabasePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSDatabasePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTlsDatabasePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSDatabasePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTlsDatabasePrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSDatabasePrivate` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSDatabasePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSDatabasePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTlsDatabasePrivate>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSDatabasePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTlsDatabasePrivate>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTlsDatabasePrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TLSDatabasePrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTlsDatabasePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTlsDatabasePrivate, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TLSDatabasePrivateProtocol`
    /// `GTlsDatabasePrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TLSDatabasePrivateProtocol`
    @inlinable public init<T: TLSDatabasePrivateProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTlsDatabasePrivate, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTlsDatabasePrivate`.
    deinit {
        // no reference counting for GTlsDatabasePrivate, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabasePrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabasePrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTlsDatabasePrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabasePrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabasePrivateProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTlsDatabasePrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabasePrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabasePrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTlsDatabasePrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabasePrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSDatabasePrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTlsDatabasePrivate, cannot ref(_ptr)
    }



}

// MARK: no TLSDatabasePrivate properties

// MARK: no TLSDatabasePrivate signals


// MARK: TLSDatabasePrivate Record: TLSDatabasePrivateProtocol extension (methods and fields)
public extension TLSDatabasePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsDatabasePrivate` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTlsDatabasePrivate>! { return ptr?.assumingMemoryBound(to: GTlsDatabasePrivate.self) }



}



// MARK: - TLSFileDatabaseInterface Record

/// The `TLSFileDatabaseInterfaceProtocol` protocol exposes the methods and properties of an underlying `GTlsFileDatabaseInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TLSFileDatabaseInterface`.
/// Alternatively, use `TLSFileDatabaseInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Provides an interface for `GTlsFileDatabase` implementations.
public protocol TLSFileDatabaseInterfaceProtocol {
        /// Untyped pointer to the underlying `GTlsFileDatabaseInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTlsFileDatabaseInterface` instance.
    var _ptr: UnsafeMutablePointer<GTlsFileDatabaseInterface>! { get }

}

/// The `TLSFileDatabaseInterfaceRef` type acts as a lightweight Swift reference to an underlying `GTlsFileDatabaseInterface` instance.
/// It exposes methods that can operate on this data type through `TLSFileDatabaseInterfaceProtocol` conformance.
/// Use `TLSFileDatabaseInterfaceRef` only as an `unowned` reference to an existing `GTlsFileDatabaseInterface` instance.
///
/// Provides an interface for `GTlsFileDatabase` implementations.
public struct TLSFileDatabaseInterfaceRef: TLSFileDatabaseInterfaceProtocol {
        /// Untyped pointer to the underlying `GTlsFileDatabaseInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TLSFileDatabaseInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTlsFileDatabaseInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTlsFileDatabaseInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTlsFileDatabaseInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTlsFileDatabaseInterface>?) {
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

    /// Reference intialiser for a related type that implements `TLSFileDatabaseInterfaceProtocol`
    @inlinable init<T: TLSFileDatabaseInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSFileDatabaseInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSFileDatabaseInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSFileDatabaseInterfaceProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSFileDatabaseInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSFileDatabaseInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TLSFileDatabaseInterface` type acts as an owner of an underlying `GTlsFileDatabaseInterface` instance.
/// It provides the methods that can operate on this data type through `TLSFileDatabaseInterfaceProtocol` conformance.
/// Use `TLSFileDatabaseInterface` as a strong reference or owner of a `GTlsFileDatabaseInterface` instance.
///
/// Provides an interface for `GTlsFileDatabase` implementations.
open class TLSFileDatabaseInterface: TLSFileDatabaseInterfaceProtocol {
        /// Untyped pointer to the underlying `GTlsFileDatabaseInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSFileDatabaseInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTlsFileDatabaseInterface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSFileDatabaseInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTlsFileDatabaseInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSFileDatabaseInterface` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSFileDatabaseInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSFileDatabaseInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTlsFileDatabaseInterface>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSFileDatabaseInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTlsFileDatabaseInterface>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTlsFileDatabaseInterface` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TLSFileDatabaseInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTlsFileDatabaseInterface>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTlsFileDatabaseInterface, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TLSFileDatabaseInterfaceProtocol`
    /// `GTlsFileDatabaseInterface` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TLSFileDatabaseInterfaceProtocol`
    @inlinable public init<T: TLSFileDatabaseInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTlsFileDatabaseInterface, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTlsFileDatabaseInterface`.
    deinit {
        // no reference counting for GTlsFileDatabaseInterface, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSFileDatabaseInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSFileDatabaseInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTlsFileDatabaseInterface, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSFileDatabaseInterfaceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSFileDatabaseInterfaceProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTlsFileDatabaseInterface, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSFileDatabaseInterfaceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSFileDatabaseInterfaceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTlsFileDatabaseInterface, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSFileDatabaseInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSFileDatabaseInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTlsFileDatabaseInterface, cannot ref(_ptr)
    }



}

// MARK: no TLSFileDatabaseInterface properties

// MARK: no TLSFileDatabaseInterface signals


// MARK: TLSFileDatabaseInterface Record: TLSFileDatabaseInterfaceProtocol extension (methods and fields)
public extension TLSFileDatabaseInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsFileDatabaseInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTlsFileDatabaseInterface>! { return ptr?.assumingMemoryBound(to: GTlsFileDatabaseInterface.self) }


    /// The parent interface.
    @inlinable var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var padding is unavailable because padding is private

}



// MARK: - TLSInteractionClass Record

/// The `TLSInteractionClassProtocol` protocol exposes the methods and properties of an underlying `GTlsInteractionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TLSInteractionClass`.
/// Alternatively, use `TLSInteractionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The class for `GTlsInteraction`. Derived classes implement the various
/// virtual interaction methods to handle TLS interactions.
/// 
/// Derived classes can choose to implement whichever interactions methods they'd
/// like to support by overriding those virtual methods in their class
/// initialization function. If a derived class implements an async method,
/// it must also implement the corresponding finish method.
/// 
/// The synchronous interaction methods should implement to display modal dialogs,
/// and the asynchronous methods to display modeless dialogs.
/// 
/// If the user cancels an interaction, then the result should be
/// `G_TLS_INTERACTION_FAILED` and the error should be set with a domain of
/// `G_IO_ERROR` and code of `G_IO_ERROR_CANCELLED`.
public protocol TLSInteractionClassProtocol {
        /// Untyped pointer to the underlying `GTlsInteractionClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTlsInteractionClass` instance.
    var _ptr: UnsafeMutablePointer<GTlsInteractionClass>! { get }

}

/// The `TLSInteractionClassRef` type acts as a lightweight Swift reference to an underlying `GTlsInteractionClass` instance.
/// It exposes methods that can operate on this data type through `TLSInteractionClassProtocol` conformance.
/// Use `TLSInteractionClassRef` only as an `unowned` reference to an existing `GTlsInteractionClass` instance.
///
/// The class for `GTlsInteraction`. Derived classes implement the various
/// virtual interaction methods to handle TLS interactions.
/// 
/// Derived classes can choose to implement whichever interactions methods they'd
/// like to support by overriding those virtual methods in their class
/// initialization function. If a derived class implements an async method,
/// it must also implement the corresponding finish method.
/// 
/// The synchronous interaction methods should implement to display modal dialogs,
/// and the asynchronous methods to display modeless dialogs.
/// 
/// If the user cancels an interaction, then the result should be
/// `G_TLS_INTERACTION_FAILED` and the error should be set with a domain of
/// `G_IO_ERROR` and code of `G_IO_ERROR_CANCELLED`.
public struct TLSInteractionClassRef: TLSInteractionClassProtocol {
        /// Untyped pointer to the underlying `GTlsInteractionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TLSInteractionClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTlsInteractionClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTlsInteractionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTlsInteractionClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTlsInteractionClass>?) {
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

    /// Reference intialiser for a related type that implements `TLSInteractionClassProtocol`
    @inlinable init<T: TLSInteractionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionClassProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TLSInteractionClass` type acts as an owner of an underlying `GTlsInteractionClass` instance.
/// It provides the methods that can operate on this data type through `TLSInteractionClassProtocol` conformance.
/// Use `TLSInteractionClass` as a strong reference or owner of a `GTlsInteractionClass` instance.
///
/// The class for `GTlsInteraction`. Derived classes implement the various
/// virtual interaction methods to handle TLS interactions.
/// 
/// Derived classes can choose to implement whichever interactions methods they'd
/// like to support by overriding those virtual methods in their class
/// initialization function. If a derived class implements an async method,
/// it must also implement the corresponding finish method.
/// 
/// The synchronous interaction methods should implement to display modal dialogs,
/// and the asynchronous methods to display modeless dialogs.
/// 
/// If the user cancels an interaction, then the result should be
/// `G_TLS_INTERACTION_FAILED` and the error should be set with a domain of
/// `G_IO_ERROR` and code of `G_IO_ERROR_CANCELLED`.
open class TLSInteractionClass: TLSInteractionClassProtocol {
        /// Untyped pointer to the underlying `GTlsInteractionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSInteractionClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTlsInteractionClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSInteractionClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTlsInteractionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSInteractionClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSInteractionClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSInteractionClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTlsInteractionClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSInteractionClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTlsInteractionClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTlsInteractionClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TLSInteractionClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTlsInteractionClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTlsInteractionClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TLSInteractionClassProtocol`
    /// `GTlsInteractionClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TLSInteractionClassProtocol`
    @inlinable public init<T: TLSInteractionClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTlsInteractionClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTlsInteractionClass`.
    deinit {
        // no reference counting for GTlsInteractionClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTlsInteractionClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTlsInteractionClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTlsInteractionClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTlsInteractionClass, cannot ref(_ptr)
    }



}

// MARK: no TLSInteractionClass properties

// MARK: no TLSInteractionClass signals


// MARK: TLSInteractionClass Record: TLSInteractionClassProtocol extension (methods and fields)
public extension TLSInteractionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsInteractionClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTlsInteractionClass>! { return ptr?.assumingMemoryBound(to: GTlsInteractionClass.self) }


    // var parentClass is unavailable because parent_class is private

    // var askPassword is unavailable because ask_password is void

    // var askPasswordAsync is unavailable because ask_password_async is void

    // var askPasswordFinish is unavailable because ask_password_finish is void

    // var requestCertificate is unavailable because request_certificate is void

    // var requestCertificateAsync is unavailable because request_certificate_async is void

    // var requestCertificateFinish is unavailable because request_certificate_finish is void

    // var padding is unavailable because padding is private

}



// MARK: - TLSInteractionPrivate Record

/// The `TLSInteractionPrivateProtocol` protocol exposes the methods and properties of an underlying `GTlsInteractionPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TLSInteractionPrivate`.
/// Alternatively, use `TLSInteractionPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TLSInteractionPrivateProtocol {
        /// Untyped pointer to the underlying `GTlsInteractionPrivate` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTlsInteractionPrivate` instance.
    var _ptr: UnsafeMutablePointer<GTlsInteractionPrivate>! { get }

}

/// The `TLSInteractionPrivateRef` type acts as a lightweight Swift reference to an underlying `GTlsInteractionPrivate` instance.
/// It exposes methods that can operate on this data type through `TLSInteractionPrivateProtocol` conformance.
/// Use `TLSInteractionPrivateRef` only as an `unowned` reference to an existing `GTlsInteractionPrivate` instance.
///

public struct TLSInteractionPrivateRef: TLSInteractionPrivateProtocol {
        /// Untyped pointer to the underlying `GTlsInteractionPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TLSInteractionPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTlsInteractionPrivate>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTlsInteractionPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTlsInteractionPrivate>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTlsInteractionPrivate>?) {
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

    /// Reference intialiser for a related type that implements `TLSInteractionPrivateProtocol`
    @inlinable init<T: TLSInteractionPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionPrivateProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionPrivateProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionPrivateProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionPrivateProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionPrivateProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TLSInteractionPrivate` type acts as an owner of an underlying `GTlsInteractionPrivate` instance.
/// It provides the methods that can operate on this data type through `TLSInteractionPrivateProtocol` conformance.
/// Use `TLSInteractionPrivate` as a strong reference or owner of a `GTlsInteractionPrivate` instance.
///

open class TLSInteractionPrivate: TLSInteractionPrivateProtocol {
        /// Untyped pointer to the underlying `GTlsInteractionPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSInteractionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTlsInteractionPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSInteractionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTlsInteractionPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSInteractionPrivate` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSInteractionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSInteractionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTlsInteractionPrivate>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSInteractionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTlsInteractionPrivate>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTlsInteractionPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TLSInteractionPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTlsInteractionPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTlsInteractionPrivate, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TLSInteractionPrivateProtocol`
    /// `GTlsInteractionPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TLSInteractionPrivateProtocol`
    @inlinable public init<T: TLSInteractionPrivateProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTlsInteractionPrivate, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTlsInteractionPrivate`.
    deinit {
        // no reference counting for GTlsInteractionPrivate, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTlsInteractionPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionPrivateProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTlsInteractionPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTlsInteractionPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSInteractionPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTlsInteractionPrivate, cannot ref(_ptr)
    }



}

// MARK: no TLSInteractionPrivate properties

// MARK: no TLSInteractionPrivate signals


// MARK: TLSInteractionPrivate Record: TLSInteractionPrivateProtocol extension (methods and fields)
public extension TLSInteractionPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsInteractionPrivate` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTlsInteractionPrivate>! { return ptr?.assumingMemoryBound(to: GTlsInteractionPrivate.self) }



}



// MARK: - TLSPasswordClass Record

/// The `TLSPasswordClassProtocol` protocol exposes the methods and properties of an underlying `GTlsPasswordClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TLSPasswordClass`.
/// Alternatively, use `TLSPasswordClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Class structure for `GTlsPassword`.
public protocol TLSPasswordClassProtocol {
        /// Untyped pointer to the underlying `GTlsPasswordClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTlsPasswordClass` instance.
    var _ptr: UnsafeMutablePointer<GTlsPasswordClass>! { get }

}

/// The `TLSPasswordClassRef` type acts as a lightweight Swift reference to an underlying `GTlsPasswordClass` instance.
/// It exposes methods that can operate on this data type through `TLSPasswordClassProtocol` conformance.
/// Use `TLSPasswordClassRef` only as an `unowned` reference to an existing `GTlsPasswordClass` instance.
///
/// Class structure for `GTlsPassword`.
public struct TLSPasswordClassRef: TLSPasswordClassProtocol {
        /// Untyped pointer to the underlying `GTlsPasswordClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TLSPasswordClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTlsPasswordClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTlsPasswordClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTlsPasswordClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTlsPasswordClass>?) {
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

    /// Reference intialiser for a related type that implements `TLSPasswordClassProtocol`
    @inlinable init<T: TLSPasswordClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordClassProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TLSPasswordClass` type acts as an owner of an underlying `GTlsPasswordClass` instance.
/// It provides the methods that can operate on this data type through `TLSPasswordClassProtocol` conformance.
/// Use `TLSPasswordClass` as a strong reference or owner of a `GTlsPasswordClass` instance.
///
/// Class structure for `GTlsPassword`.
open class TLSPasswordClass: TLSPasswordClassProtocol {
        /// Untyped pointer to the underlying `GTlsPasswordClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSPasswordClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTlsPasswordClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSPasswordClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTlsPasswordClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSPasswordClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSPasswordClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSPasswordClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTlsPasswordClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSPasswordClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTlsPasswordClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTlsPasswordClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TLSPasswordClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTlsPasswordClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTlsPasswordClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TLSPasswordClassProtocol`
    /// `GTlsPasswordClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TLSPasswordClassProtocol`
    @inlinable public init<T: TLSPasswordClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTlsPasswordClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTlsPasswordClass`.
    deinit {
        // no reference counting for GTlsPasswordClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTlsPasswordClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTlsPasswordClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTlsPasswordClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTlsPasswordClass, cannot ref(_ptr)
    }



}

// MARK: no TLSPasswordClass properties

// MARK: no TLSPasswordClass signals


// MARK: TLSPasswordClass Record: TLSPasswordClassProtocol extension (methods and fields)
public extension TLSPasswordClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsPasswordClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTlsPasswordClass>! { return ptr?.assumingMemoryBound(to: GTlsPasswordClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var getValue is unavailable because get_value is void

    // var setValue is unavailable because set_value is void

    // var getDefaultWarning is unavailable because get_default_warning is void

    // var padding is unavailable because padding is private

}



// MARK: - TLSPasswordPrivate Record

/// The `TLSPasswordPrivateProtocol` protocol exposes the methods and properties of an underlying `GTlsPasswordPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TLSPasswordPrivate`.
/// Alternatively, use `TLSPasswordPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TLSPasswordPrivateProtocol {
        /// Untyped pointer to the underlying `GTlsPasswordPrivate` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTlsPasswordPrivate` instance.
    var _ptr: UnsafeMutablePointer<GTlsPasswordPrivate>! { get }

}

/// The `TLSPasswordPrivateRef` type acts as a lightweight Swift reference to an underlying `GTlsPasswordPrivate` instance.
/// It exposes methods that can operate on this data type through `TLSPasswordPrivateProtocol` conformance.
/// Use `TLSPasswordPrivateRef` only as an `unowned` reference to an existing `GTlsPasswordPrivate` instance.
///

public struct TLSPasswordPrivateRef: TLSPasswordPrivateProtocol {
        /// Untyped pointer to the underlying `GTlsPasswordPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TLSPasswordPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTlsPasswordPrivate>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTlsPasswordPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTlsPasswordPrivate>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTlsPasswordPrivate>?) {
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

    /// Reference intialiser for a related type that implements `TLSPasswordPrivateProtocol`
    @inlinable init<T: TLSPasswordPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordPrivateProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordPrivateProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordPrivateProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordPrivateProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordPrivateProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TLSPasswordPrivate` type acts as an owner of an underlying `GTlsPasswordPrivate` instance.
/// It provides the methods that can operate on this data type through `TLSPasswordPrivateProtocol` conformance.
/// Use `TLSPasswordPrivate` as a strong reference or owner of a `GTlsPasswordPrivate` instance.
///

open class TLSPasswordPrivate: TLSPasswordPrivateProtocol {
        /// Untyped pointer to the underlying `GTlsPasswordPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSPasswordPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTlsPasswordPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSPasswordPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTlsPasswordPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSPasswordPrivate` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSPasswordPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSPasswordPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTlsPasswordPrivate>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSPasswordPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTlsPasswordPrivate>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTlsPasswordPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TLSPasswordPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTlsPasswordPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTlsPasswordPrivate, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TLSPasswordPrivateProtocol`
    /// `GTlsPasswordPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TLSPasswordPrivateProtocol`
    @inlinable public init<T: TLSPasswordPrivateProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTlsPasswordPrivate, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTlsPasswordPrivate`.
    deinit {
        // no reference counting for GTlsPasswordPrivate, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTlsPasswordPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordPrivateProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTlsPasswordPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTlsPasswordPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSPasswordPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTlsPasswordPrivate, cannot ref(_ptr)
    }



}

// MARK: no TLSPasswordPrivate properties

// MARK: no TLSPasswordPrivate signals


// MARK: TLSPasswordPrivate Record: TLSPasswordPrivateProtocol extension (methods and fields)
public extension TLSPasswordPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsPasswordPrivate` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTlsPasswordPrivate>! { return ptr?.assumingMemoryBound(to: GTlsPasswordPrivate.self) }



}



// MARK: - TLSServerConnectionInterface Record

/// The `TLSServerConnectionInterfaceProtocol` protocol exposes the methods and properties of an underlying `GTlsServerConnectionInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TLSServerConnectionInterface`.
/// Alternatively, use `TLSServerConnectionInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// vtable for a `GTlsServerConnection` implementation.
public protocol TLSServerConnectionInterfaceProtocol {
        /// Untyped pointer to the underlying `GTlsServerConnectionInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTlsServerConnectionInterface` instance.
    var _ptr: UnsafeMutablePointer<GTlsServerConnectionInterface>! { get }

}

/// The `TLSServerConnectionInterfaceRef` type acts as a lightweight Swift reference to an underlying `GTlsServerConnectionInterface` instance.
/// It exposes methods that can operate on this data type through `TLSServerConnectionInterfaceProtocol` conformance.
/// Use `TLSServerConnectionInterfaceRef` only as an `unowned` reference to an existing `GTlsServerConnectionInterface` instance.
///
/// vtable for a `GTlsServerConnection` implementation.
public struct TLSServerConnectionInterfaceRef: TLSServerConnectionInterfaceProtocol {
        /// Untyped pointer to the underlying `GTlsServerConnectionInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TLSServerConnectionInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTlsServerConnectionInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTlsServerConnectionInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTlsServerConnectionInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTlsServerConnectionInterface>?) {
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

    /// Reference intialiser for a related type that implements `TLSServerConnectionInterfaceProtocol`
    @inlinable init<T: TLSServerConnectionInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSServerConnectionInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSServerConnectionInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSServerConnectionInterfaceProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSServerConnectionInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSServerConnectionInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TLSServerConnectionInterface` type acts as an owner of an underlying `GTlsServerConnectionInterface` instance.
/// It provides the methods that can operate on this data type through `TLSServerConnectionInterfaceProtocol` conformance.
/// Use `TLSServerConnectionInterface` as a strong reference or owner of a `GTlsServerConnectionInterface` instance.
///
/// vtable for a `GTlsServerConnection` implementation.
open class TLSServerConnectionInterface: TLSServerConnectionInterfaceProtocol {
        /// Untyped pointer to the underlying `GTlsServerConnectionInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSServerConnectionInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTlsServerConnectionInterface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSServerConnectionInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTlsServerConnectionInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSServerConnectionInterface` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSServerConnectionInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSServerConnectionInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTlsServerConnectionInterface>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TLSServerConnectionInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTlsServerConnectionInterface>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTlsServerConnectionInterface` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TLSServerConnectionInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTlsServerConnectionInterface>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTlsServerConnectionInterface, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TLSServerConnectionInterfaceProtocol`
    /// `GTlsServerConnectionInterface` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TLSServerConnectionInterfaceProtocol`
    @inlinable public init<T: TLSServerConnectionInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTlsServerConnectionInterface, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTlsServerConnectionInterface`.
    deinit {
        // no reference counting for GTlsServerConnectionInterface, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSServerConnectionInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSServerConnectionInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTlsServerConnectionInterface, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSServerConnectionInterfaceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSServerConnectionInterfaceProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTlsServerConnectionInterface, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSServerConnectionInterfaceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSServerConnectionInterfaceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTlsServerConnectionInterface, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSServerConnectionInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TLSServerConnectionInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTlsServerConnectionInterface, cannot ref(_ptr)
    }



}

// MARK: no TLSServerConnectionInterface properties

// MARK: no TLSServerConnectionInterface signals


// MARK: TLSServerConnectionInterface Record: TLSServerConnectionInterfaceProtocol extension (methods and fields)
public extension TLSServerConnectionInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTlsServerConnectionInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTlsServerConnectionInterface>! { return ptr?.assumingMemoryBound(to: GTlsServerConnectionInterface.self) }


    /// The parent interface.
    @inlinable var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

}



// MARK: - UnixConnectionClass Record

/// The `UnixConnectionClassProtocol` protocol exposes the methods and properties of an underlying `GUnixConnectionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `UnixConnectionClass`.
/// Alternatively, use `UnixConnectionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol UnixConnectionClassProtocol {
        /// Untyped pointer to the underlying `GUnixConnectionClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GUnixConnectionClass` instance.
    var _ptr: UnsafeMutablePointer<GUnixConnectionClass>! { get }

}

/// The `UnixConnectionClassRef` type acts as a lightweight Swift reference to an underlying `GUnixConnectionClass` instance.
/// It exposes methods that can operate on this data type through `UnixConnectionClassProtocol` conformance.
/// Use `UnixConnectionClassRef` only as an `unowned` reference to an existing `GUnixConnectionClass` instance.
///

public struct UnixConnectionClassRef: UnixConnectionClassProtocol {
        /// Untyped pointer to the underlying `GUnixConnectionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension UnixConnectionClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GUnixConnectionClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GUnixConnectionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GUnixConnectionClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GUnixConnectionClass>?) {
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

    /// Reference intialiser for a related type that implements `UnixConnectionClassProtocol`
    @inlinable init<T: UnixConnectionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionClassProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `UnixConnectionClass` type acts as an owner of an underlying `GUnixConnectionClass` instance.
/// It provides the methods that can operate on this data type through `UnixConnectionClassProtocol` conformance.
/// Use `UnixConnectionClass` as a strong reference or owner of a `GUnixConnectionClass` instance.
///

open class UnixConnectionClass: UnixConnectionClassProtocol {
        /// Untyped pointer to the underlying `GUnixConnectionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixConnectionClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GUnixConnectionClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixConnectionClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GUnixConnectionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixConnectionClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixConnectionClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixConnectionClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GUnixConnectionClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `UnixConnectionClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GUnixConnectionClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GUnixConnectionClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `UnixConnectionClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GUnixConnectionClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GUnixConnectionClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `UnixConnectionClassProtocol`
    /// `GUnixConnectionClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `UnixConnectionClassProtocol`
    @inlinable public init<T: UnixConnectionClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GUnixConnectionClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GUnixConnectionClass`.
    deinit {
        // no reference counting for GUnixConnectionClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GUnixConnectionClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GUnixConnectionClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GUnixConnectionClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `UnixConnectionClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GUnixConnectionClass, cannot ref(_ptr)
    }



}

// MARK: no UnixConnectionClass properties

// MARK: no UnixConnectionClass signals


// MARK: UnixConnectionClass Record: UnixConnectionClassProtocol extension (methods and fields)
public extension UnixConnectionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GUnixConnectionClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GUnixConnectionClass>! { return ptr?.assumingMemoryBound(to: GUnixConnectionClass.self) }


    @inlinable var parentClass: GSocketConnectionClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



