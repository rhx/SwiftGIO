import CGLib
import GLib
import GLibObject

// MARK: - Initable Interface

/// The `InitableProtocol` protocol exposes the methods and properties of an underlying `GInitable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Initable`.
/// Alternatively, use `InitableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GInitable` is implemented by objects that can fail during
/// initialization. If an object implements this interface then
/// it must be initialized as the first thing after construction,
/// either via `g_initable_init()` or `g_async_initable_init_async()`
/// (the latter is only available if it also implements `GAsyncInitable`).
/// 
/// If the object is not initialized, or initialization returns with an
/// error, then all operations on the object except `g_object_ref()` and
/// `g_object_unref()` are considered to be invalid, and have undefined
/// behaviour. They will often fail with `g_critical()` or `g_warning()`, but
/// this must not be relied on.
/// 
/// Users of objects implementing this are not intended to use
/// the interface method directly, instead it will be used automatically
/// in various ways. For C applications you generally just call
/// `g_initable_new()` directly, or indirectly via a `foo_thing_new()` wrapper.
/// This will call `g_initable_init()` under the cover, returning `nil` and
/// setting a `GError` on failure (at which point the instance is
/// unreferenced).
/// 
/// For bindings in languages where the native constructor supports
/// exceptions the binding could check for objects implementing `GInitable`
/// during normal construction and automatically initialize them, throwing
/// an exception on failure.
public protocol InitableProtocol {
        /// Untyped pointer to the underlying `GInitable` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GInitable` instance.
    var initable_ptr: UnsafeMutablePointer<GInitable>! { get }

}

/// The `InitableRef` type acts as a lightweight Swift reference to an underlying `GInitable` instance.
/// It exposes methods that can operate on this data type through `InitableProtocol` conformance.
/// Use `InitableRef` only as an `unowned` reference to an existing `GInitable` instance.
///
/// `GInitable` is implemented by objects that can fail during
/// initialization. If an object implements this interface then
/// it must be initialized as the first thing after construction,
/// either via `g_initable_init()` or `g_async_initable_init_async()`
/// (the latter is only available if it also implements `GAsyncInitable`).
/// 
/// If the object is not initialized, or initialization returns with an
/// error, then all operations on the object except `g_object_ref()` and
/// `g_object_unref()` are considered to be invalid, and have undefined
/// behaviour. They will often fail with `g_critical()` or `g_warning()`, but
/// this must not be relied on.
/// 
/// Users of objects implementing this are not intended to use
/// the interface method directly, instead it will be used automatically
/// in various ways. For C applications you generally just call
/// `g_initable_new()` directly, or indirectly via a `foo_thing_new()` wrapper.
/// This will call `g_initable_init()` under the cover, returning `nil` and
/// setting a `GError` on failure (at which point the instance is
/// unreferenced).
/// 
/// For bindings in languages where the native constructor supports
/// exceptions the binding could check for objects implementing `GInitable`
/// during normal construction and automatically initialize them, throwing
/// an exception on failure.
public struct InitableRef: InitableProtocol {
        /// Untyped pointer to the underlying `GInitable` instance.
    /// For type-safe access, use the generated, typed pointer `initable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension InitableRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GInitable>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GInitable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GInitable>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GInitable>?) {
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

    /// Reference intialiser for a related type that implements `InitableProtocol`
    @inlinable init<T: InitableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitableProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitableProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitableProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitableProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitableProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Initable` type acts as an owner of an underlying `GInitable` instance.
/// It provides the methods that can operate on this data type through `InitableProtocol` conformance.
/// Use `Initable` as a strong reference or owner of a `GInitable` instance.
///
/// `GInitable` is implemented by objects that can fail during
/// initialization. If an object implements this interface then
/// it must be initialized as the first thing after construction,
/// either via `g_initable_init()` or `g_async_initable_init_async()`
/// (the latter is only available if it also implements `GAsyncInitable`).
/// 
/// If the object is not initialized, or initialization returns with an
/// error, then all operations on the object except `g_object_ref()` and
/// `g_object_unref()` are considered to be invalid, and have undefined
/// behaviour. They will often fail with `g_critical()` or `g_warning()`, but
/// this must not be relied on.
/// 
/// Users of objects implementing this are not intended to use
/// the interface method directly, instead it will be used automatically
/// in various ways. For C applications you generally just call
/// `g_initable_new()` directly, or indirectly via a `foo_thing_new()` wrapper.
/// This will call `g_initable_init()` under the cover, returning `nil` and
/// setting a `GError` on failure (at which point the instance is
/// unreferenced).
/// 
/// For bindings in languages where the native constructor supports
/// exceptions the binding could check for objects implementing `GInitable`
/// during normal construction and automatically initialize them, throwing
/// an exception on failure.
open class Initable: InitableProtocol {
        /// Untyped pointer to the underlying `GInitable` instance.
    /// For type-safe access, use the generated, typed pointer `initable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Initable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GInitable>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Initable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GInitable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Initable` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Initable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Initable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GInitable>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Initable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GInitable>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GInitable` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Initable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GInitable>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GInitable, cannot ref(initable_ptr)
    }

    /// Reference intialiser for a related type that implements `InitableProtocol`
    /// `GInitable` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `InitableProtocol`
    @inlinable public init<T: InitableProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GInitable, cannot ref(initable_ptr)
    }

    /// Do-nothing destructor for `GInitable`.
    deinit {
        // no reference counting for GInitable, cannot unref(initable_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GInitable, cannot ref(initable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitableProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitableProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GInitable, cannot ref(initable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitableProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitableProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GInitable, cannot ref(initable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GInitable, cannot ref(initable_ptr)
    }



}

// MARK: no Initable properties

// MARK: no Initable signals

// MARK: Initable has no signals
// MARK: Initable Interface: InitableProtocol extension (methods and fields)
public extension InitableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GInitable` instance.
    @inlinable var initable_ptr: UnsafeMutablePointer<GInitable>! { return ptr?.assumingMemoryBound(to: GInitable.self) }

    /// Initializes the object implementing the interface.
    /// 
    /// This method is intended for language bindings. If writing in C,
    /// `g_initable_new()` should typically be used instead.
    /// 
    /// The object must be initialized before any real use after initial
    /// construction, either with this function or `g_async_initable_init_async()`.
    /// 
    /// Implementations may also support cancellation. If `cancellable` is not `nil`,
    /// then initialization can be cancelled by triggering the cancellable object
    /// from another thread. If the operation was cancelled, the error
    /// `G_IO_ERROR_CANCELLED` will be returned. If `cancellable` is not `nil` and
    /// the object doesn't support cancellable initialization the error
    /// `G_IO_ERROR_NOT_SUPPORTED` will be returned.
    /// 
    /// If the object is not initialized, or initialization returns with an
    /// error, then all operations on the object except `g_object_ref()` and
    /// `g_object_unref()` are considered to be invalid, and have undefined
    /// behaviour. See the [introduction](#ginitable) for more details.
    /// 
    /// Callers should not assume that a class which implements `GInitable` can be
    /// initialized multiple times, unless the class explicitly documents itself as
    /// supporting this. Generally, a class’ implementation of `init()` can assume
    /// (and assert) that it will only be called once. Previously, this documentation
    /// recommended all `GInitable` implementations should be idempotent; that
    /// recommendation was relaxed in GLib 2.54.
    /// 
    /// If a class explicitly supports being initialized multiple times, it is
    /// recommended that the method is idempotent: multiple calls with the same
    /// arguments should return the same results. Only the first call initializes
    /// the object; further calls return the result of the first call.
    /// 
    /// One reason why a class might need to support idempotent initialization is if
    /// it is designed to be used via the singleton pattern, with a
    /// `GObjectClass.constructor` that sometimes returns an existing instance.
    /// In this pattern, a caller would expect to be able to call `g_initable_init()`
    /// on the result of `g_object_new()`, regardless of whether it is in fact a new
    /// instance.
    @inlinable func init_(cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_initable_init(initable_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Initializes the object implementing the interface.
    /// 
    /// This method is intended for language bindings. If writing in C,
    /// `g_initable_new()` should typically be used instead.
    /// 
    /// The object must be initialized before any real use after initial
    /// construction, either with this function or `g_async_initable_init_async()`.
    /// 
    /// Implementations may also support cancellation. If `cancellable` is not `nil`,
    /// then initialization can be cancelled by triggering the cancellable object
    /// from another thread. If the operation was cancelled, the error
    /// `G_IO_ERROR_CANCELLED` will be returned. If `cancellable` is not `nil` and
    /// the object doesn't support cancellable initialization the error
    /// `G_IO_ERROR_NOT_SUPPORTED` will be returned.
    /// 
    /// If the object is not initialized, or initialization returns with an
    /// error, then all operations on the object except `g_object_ref()` and
    /// `g_object_unref()` are considered to be invalid, and have undefined
    /// behaviour. See the [introduction](#ginitable) for more details.
    /// 
    /// Callers should not assume that a class which implements `GInitable` can be
    /// initialized multiple times, unless the class explicitly documents itself as
    /// supporting this. Generally, a class’ implementation of `init()` can assume
    /// (and assert) that it will only be called once. Previously, this documentation
    /// recommended all `GInitable` implementations should be idempotent; that
    /// recommendation was relaxed in GLib 2.54.
    /// 
    /// If a class explicitly supports being initialized multiple times, it is
    /// recommended that the method is idempotent: multiple calls with the same
    /// arguments should return the same results. Only the first call initializes
    /// the object; further calls return the result of the first call.
    /// 
    /// One reason why a class might need to support idempotent initialization is if
    /// it is designed to be used via the singleton pattern, with a
    /// `GObjectClass.constructor` that sometimes returns an existing instance.
    /// In this pattern, a caller would expect to be able to call `g_initable_init()`
    /// on the result of `g_object_new()`, regardless of whether it is in fact a new
    /// instance.
    @inlinable func init_<CancellableT: CancellableProtocol>(cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_initable_init(initable_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }


}



// MARK: - ListModel Interface

/// The `ListModelProtocol` protocol exposes the methods and properties of an underlying `GListModel` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListModel`.
/// Alternatively, use `ListModelRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GListModel` is an interface that represents a mutable list of
/// `GObjects`. Its main intention is as a model for various widgets in
/// user interfaces, such as list views, but it can also be used as a
/// convenient method of returning lists of data, with support for
/// updates.
/// 
/// Each object in the list may also report changes in itself via some
/// mechanism (normally the `GObject::notify` signal).  Taken together
/// with the `GListModel::items`-changed signal, this provides for a list
/// that can change its membership, and in which the members can change
/// their individual properties.
/// 
/// A good example would be the list of visible wireless network access
/// points, where each access point can report dynamic properties such as
/// signal strength.
/// 
/// It is important to note that the `GListModel` itself does not report
/// changes to the individual items.  It only reports changes to the list
/// membership.  If you want to observe changes to the objects themselves
/// then you need to connect signals to the objects that you are
/// interested in.
/// 
/// All items in a `GListModel` are of (or derived from) the same type.
/// `g_list_model_get_item_type()` returns that type.  The type may be an
/// interface, in which case all objects in the list must implement it.
/// 
/// The semantics are close to that of an array:
/// `g_list_model_get_n_items()` returns the number of items in the list and
/// `g_list_model_get_item()` returns an item at a (0-based) position. In
/// order to allow implementations to calculate the list length lazily,
/// you can also iterate over items: starting from 0, repeatedly call
/// `g_list_model_get_item()` until it returns `nil`.
/// 
/// An implementation may create objects lazily, but must take care to
/// return the same object for a given position until all references to
/// it are gone.
/// 
/// On the other side, a consumer is expected only to hold references on
/// objects that are currently "user visible", in order to facilitate the
/// maximum level of laziness in the implementation of the list and to
/// reduce the required number of signal connections at a given time.
/// 
/// This interface is intended only to be used from a single thread.  The
/// thread in which it is appropriate to use it depends on the particular
/// implementation, but typically it will be from the thread that owns
/// the [thread-default main context](#g-main-context-push-thread-default)
/// in effect at the time that the model was created.
public protocol ListModelProtocol {
        /// Untyped pointer to the underlying `GListModel` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GListModel` instance.
    var list_model_ptr: UnsafeMutablePointer<GListModel>! { get }

}

/// The `ListModelRef` type acts as a lightweight Swift reference to an underlying `GListModel` instance.
/// It exposes methods that can operate on this data type through `ListModelProtocol` conformance.
/// Use `ListModelRef` only as an `unowned` reference to an existing `GListModel` instance.
///
/// `GListModel` is an interface that represents a mutable list of
/// `GObjects`. Its main intention is as a model for various widgets in
/// user interfaces, such as list views, but it can also be used as a
/// convenient method of returning lists of data, with support for
/// updates.
/// 
/// Each object in the list may also report changes in itself via some
/// mechanism (normally the `GObject::notify` signal).  Taken together
/// with the `GListModel::items`-changed signal, this provides for a list
/// that can change its membership, and in which the members can change
/// their individual properties.
/// 
/// A good example would be the list of visible wireless network access
/// points, where each access point can report dynamic properties such as
/// signal strength.
/// 
/// It is important to note that the `GListModel` itself does not report
/// changes to the individual items.  It only reports changes to the list
/// membership.  If you want to observe changes to the objects themselves
/// then you need to connect signals to the objects that you are
/// interested in.
/// 
/// All items in a `GListModel` are of (or derived from) the same type.
/// `g_list_model_get_item_type()` returns that type.  The type may be an
/// interface, in which case all objects in the list must implement it.
/// 
/// The semantics are close to that of an array:
/// `g_list_model_get_n_items()` returns the number of items in the list and
/// `g_list_model_get_item()` returns an item at a (0-based) position. In
/// order to allow implementations to calculate the list length lazily,
/// you can also iterate over items: starting from 0, repeatedly call
/// `g_list_model_get_item()` until it returns `nil`.
/// 
/// An implementation may create objects lazily, but must take care to
/// return the same object for a given position until all references to
/// it are gone.
/// 
/// On the other side, a consumer is expected only to hold references on
/// objects that are currently "user visible", in order to facilitate the
/// maximum level of laziness in the implementation of the list and to
/// reduce the required number of signal connections at a given time.
/// 
/// This interface is intended only to be used from a single thread.  The
/// thread in which it is appropriate to use it depends on the particular
/// implementation, but typically it will be from the thread that owns
/// the [thread-default main context](#g-main-context-push-thread-default)
/// in effect at the time that the model was created.
public struct ListModelRef: ListModelProtocol {
        /// Untyped pointer to the underlying `GListModel` instance.
    /// For type-safe access, use the generated, typed pointer `list_model_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ListModelRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GListModel>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GListModel>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GListModel>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GListModel>?) {
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

    /// Reference intialiser for a related type that implements `ListModelProtocol`
    @inlinable init<T: ListModelProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListModelProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListModelProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListModelProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListModelProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListModelProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ListModel` type acts as an owner of an underlying `GListModel` instance.
/// It provides the methods that can operate on this data type through `ListModelProtocol` conformance.
/// Use `ListModel` as a strong reference or owner of a `GListModel` instance.
///
/// `GListModel` is an interface that represents a mutable list of
/// `GObjects`. Its main intention is as a model for various widgets in
/// user interfaces, such as list views, but it can also be used as a
/// convenient method of returning lists of data, with support for
/// updates.
/// 
/// Each object in the list may also report changes in itself via some
/// mechanism (normally the `GObject::notify` signal).  Taken together
/// with the `GListModel::items`-changed signal, this provides for a list
/// that can change its membership, and in which the members can change
/// their individual properties.
/// 
/// A good example would be the list of visible wireless network access
/// points, where each access point can report dynamic properties such as
/// signal strength.
/// 
/// It is important to note that the `GListModel` itself does not report
/// changes to the individual items.  It only reports changes to the list
/// membership.  If you want to observe changes to the objects themselves
/// then you need to connect signals to the objects that you are
/// interested in.
/// 
/// All items in a `GListModel` are of (or derived from) the same type.
/// `g_list_model_get_item_type()` returns that type.  The type may be an
/// interface, in which case all objects in the list must implement it.
/// 
/// The semantics are close to that of an array:
/// `g_list_model_get_n_items()` returns the number of items in the list and
/// `g_list_model_get_item()` returns an item at a (0-based) position. In
/// order to allow implementations to calculate the list length lazily,
/// you can also iterate over items: starting from 0, repeatedly call
/// `g_list_model_get_item()` until it returns `nil`.
/// 
/// An implementation may create objects lazily, but must take care to
/// return the same object for a given position until all references to
/// it are gone.
/// 
/// On the other side, a consumer is expected only to hold references on
/// objects that are currently "user visible", in order to facilitate the
/// maximum level of laziness in the implementation of the list and to
/// reduce the required number of signal connections at a given time.
/// 
/// This interface is intended only to be used from a single thread.  The
/// thread in which it is appropriate to use it depends on the particular
/// implementation, but typically it will be from the thread that owns
/// the [thread-default main context](#g-main-context-push-thread-default)
/// in effect at the time that the model was created.
open class ListModel: ListModelProtocol {
        /// Untyped pointer to the underlying `GListModel` instance.
    /// For type-safe access, use the generated, typed pointer `list_model_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GListModel>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GListModel>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListModel` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GListModel>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GListModel>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GListModel` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ListModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GListModel>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GListModel, cannot ref(list_model_ptr)
    }

    /// Reference intialiser for a related type that implements `ListModelProtocol`
    /// `GListModel` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ListModelProtocol`
    @inlinable public init<T: ListModelProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GListModel, cannot ref(list_model_ptr)
    }

    /// Do-nothing destructor for `GListModel`.
    deinit {
        // no reference counting for GListModel, cannot unref(list_model_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListModelProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListModelProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GListModel, cannot ref(list_model_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListModelProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListModelProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GListModel, cannot ref(list_model_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListModelProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListModelProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GListModel, cannot ref(list_model_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListModelProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListModelProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GListModel, cannot ref(list_model_ptr)
    }



}

// MARK: no ListModel properties

public enum ListModelSignalName: String, SignalNameProtocol {
    /// This signal is emitted whenever items were added to or removed
    /// from `list`. At `position`, `removed` items were removed and `added`
    /// items were added in their place.
    /// 
    /// Note: If `removed` != `added`, the positions of all later items
    /// in the model change.
    case itemsChanged = "items-changed"

}

// MARK: ListModel signals
public extension ListModelProtocol {
    /// Connect a Swift signal handler to the given, typed `ListModelSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: ListModelSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        GLibObject.ObjectRef(raw: ptr).connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `ListModelSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: ListModelSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        GLibObject.ObjectRef(raw: ptr).connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// This signal is emitted whenever items were added to or removed
    /// from `list`. At `position`, `removed` items were removed and `added`
    /// items were added in their place.
    /// 
    /// Note: If `removed` != `added`, the positions of all later items
    /// in the model change.
    /// - Note: This represents the underlying `items-changed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter position: the position at which `list` changed
    /// - Parameter removed: the number of items removed
    /// - Parameter added: the number of items added
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `itemsChanged` signal is emitted
    @discardableResult @inlinable func onItemsChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListModelRef, _ position: UInt, _ removed: UInt, _ added: UInt) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder4<ListModelRef, UInt, UInt, UInt, Void>
        let cCallback: @convention(c) (gpointer, guint, guint, guint, gpointer) -> Void = { unownedSelf, arg1, arg2, arg3, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListModelRef(raw: unownedSelf), UInt(arg1), UInt(arg2), UInt(arg3))
            return output
        }
        return connect(
            signal: .itemsChanged,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `items-changed` signal for using the `connect(signal:)` methods
    static var itemsChangedSignal: ListModelSignalName { .itemsChanged }
    
    
}

// MARK: ListModel Interface: ListModelProtocol extension (methods and fields)
public extension ListModelProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GListModel` instance.
    @inlinable var list_model_ptr: UnsafeMutablePointer<GListModel>! { return ptr?.assumingMemoryBound(to: GListModel.self) }

    /// Get the item at `position`. If `position` is greater than the number of
    /// items in `list`, `nil` is returned.
    /// 
    /// `nil` is never returned for an index that is smaller than the length
    /// of the list.  See `g_list_model_get_n_items()`.
    @inlinable func getItem(position: Int) -> gpointer! {
        let rv = g_list_model_get_item(list_model_ptr, guint(position))
        return rv
    }

    /// Gets the type of the items in `list`. All items returned from
    /// `g_list_model_get_type()` are of that type or a subtype, or are an
    /// implementation of that interface.
    /// 
    /// The item type of a `GListModel` can not change during the life of the
    /// model.
    @inlinable func getItemType() -> GType {
        let rv = g_list_model_get_item_type(list_model_ptr)
        return rv
    }

    /// Gets the number of items in `list`.
    /// 
    /// Depending on the model implementation, calling this function may be
    /// less efficient than iterating the list with increasing values for
    /// `position` until `g_list_model_get_item()` returns `nil`.
    @inlinable func getNItems() -> Int {
        let rv = Int(g_list_model_get_n_items(list_model_ptr))
        return rv
    }

    /// Get the item at `position`. If `position` is greater than the number of
    /// items in `list`, `nil` is returned.
    /// 
    /// `nil` is never returned for an index that is smaller than the length
    /// of the list.  See `g_list_model_get_n_items()`.
    @inlinable func getObject(position: Int) -> GLibObject.ObjectRef! {
        let rv = GLibObject.ObjectRef(g_list_model_get_object(list_model_ptr, guint(position)))
        return rv
    }

    /// Emits the `GListModel::items`-changed signal on `list`.
    /// 
    /// This function should only be called by classes implementing
    /// `GListModel`. It has to be called after the internal representation
    /// of `list` has been updated, because handlers connected to this signal
    /// might query the new state of the list.
    /// 
    /// Implementations must only make changes to the model (as visible to
    /// its consumer) in places that will not cause problems for that
    /// consumer.  For models that are driven directly by a write API (such
    /// as `GListStore`), changes can be reported in response to uses of that
    /// API.  For models that represent remote data, changes should only be
    /// made from a fresh mainloop dispatch.  It is particularly not
    /// permitted to make changes in response to a call to the `GListModel`
    /// consumer API.
    /// 
    /// Stated another way: in general, it is assumed that code making a
    /// series of accesses to the model via the API, without returning to the
    /// mainloop, and without calling other code, will continue to view the
    /// same contents of the model.
    @inlinable func itemsChanged(position: Int, removed: Int, added: Int) {
        g_list_model_items_changed(list_model_ptr, guint(position), guint(removed), guint(added))
    
    }
    /// Gets the type of the items in `list`. All items returned from
    /// `g_list_model_get_type()` are of that type or a subtype, or are an
    /// implementation of that interface.
    /// 
    /// The item type of a `GListModel` can not change during the life of the
    /// model.
    @inlinable var itemType: GType {
        /// Gets the type of the items in `list`. All items returned from
        /// `g_list_model_get_type()` are of that type or a subtype, or are an
        /// implementation of that interface.
        /// 
        /// The item type of a `GListModel` can not change during the life of the
        /// model.
        get {
            let rv = g_list_model_get_item_type(list_model_ptr)
            return rv
        }
    }

    /// Gets the number of items in `list`.
    /// 
    /// Depending on the model implementation, calling this function may be
    /// less efficient than iterating the list with increasing values for
    /// `position` until `g_list_model_get_item()` returns `nil`.
    @inlinable var nItems: Int {
        /// Gets the number of items in `list`.
        /// 
        /// Depending on the model implementation, calling this function may be
        /// less efficient than iterating the list with increasing values for
        /// `position` until `g_list_model_get_item()` returns `nil`.
        get {
            let rv = Int(g_list_model_get_n_items(list_model_ptr))
            return rv
        }
    }


}



