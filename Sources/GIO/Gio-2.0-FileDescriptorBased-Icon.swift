import CGLib
import GLib
import GLibObject

// MARK: - FileDescriptorBased Interface

/// The `FileDescriptorBasedProtocol` protocol exposes the methods and properties of an underlying `GFileDescriptorBased` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileDescriptorBased`.
/// Alternatively, use `FileDescriptorBasedRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GFileDescriptorBased` is implemented by streams (implementations of
/// `GInputStream` or `GOutputStream`) that are based on file descriptors.
/// 
/// Note that `<gio/gfiledescriptorbased.h>` belongs to the UNIX-specific
/// GIO interfaces, thus you have to use the `gio-unix-2.0.pc` pkg-config
/// file when using it.
public protocol FileDescriptorBasedProtocol {
        /// Untyped pointer to the underlying `GFileDescriptorBased` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFileDescriptorBased` instance.
    var file_descriptor_based_ptr: UnsafeMutablePointer<GFileDescriptorBased>! { get }

}

/// The `FileDescriptorBasedRef` type acts as a lightweight Swift reference to an underlying `GFileDescriptorBased` instance.
/// It exposes methods that can operate on this data type through `FileDescriptorBasedProtocol` conformance.
/// Use `FileDescriptorBasedRef` only as an `unowned` reference to an existing `GFileDescriptorBased` instance.
///
/// `GFileDescriptorBased` is implemented by streams (implementations of
/// `GInputStream` or `GOutputStream`) that are based on file descriptors.
/// 
/// Note that `<gio/gfiledescriptorbased.h>` belongs to the UNIX-specific
/// GIO interfaces, thus you have to use the `gio-unix-2.0.pc` pkg-config
/// file when using it.
public struct FileDescriptorBasedRef: FileDescriptorBasedProtocol {
        /// Untyped pointer to the underlying `GFileDescriptorBased` instance.
    /// For type-safe access, use the generated, typed pointer `file_descriptor_based_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FileDescriptorBasedRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GFileDescriptorBased>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GFileDescriptorBased>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GFileDescriptorBased>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GFileDescriptorBased>?) {
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

    /// Reference intialiser for a related type that implements `FileDescriptorBasedProtocol`
    @inlinable init<T: FileDescriptorBasedProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FileDescriptorBased` type acts as an owner of an underlying `GFileDescriptorBased` instance.
/// It provides the methods that can operate on this data type through `FileDescriptorBasedProtocol` conformance.
/// Use `FileDescriptorBased` as a strong reference or owner of a `GFileDescriptorBased` instance.
///
/// `GFileDescriptorBased` is implemented by streams (implementations of
/// `GInputStream` or `GOutputStream`) that are based on file descriptors.
/// 
/// Note that `<gio/gfiledescriptorbased.h>` belongs to the UNIX-specific
/// GIO interfaces, thus you have to use the `gio-unix-2.0.pc` pkg-config
/// file when using it.
open class FileDescriptorBased: FileDescriptorBasedProtocol {
        /// Untyped pointer to the underlying `GFileDescriptorBased` instance.
    /// For type-safe access, use the generated, typed pointer `file_descriptor_based_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileDescriptorBased` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GFileDescriptorBased>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileDescriptorBased` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GFileDescriptorBased>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileDescriptorBased` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileDescriptorBased` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileDescriptorBased` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GFileDescriptorBased>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileDescriptorBased` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GFileDescriptorBased>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GFileDescriptorBased` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FileDescriptorBased` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GFileDescriptorBased>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GFileDescriptorBased, cannot ref(file_descriptor_based_ptr)
    }

    /// Reference intialiser for a related type that implements `FileDescriptorBasedProtocol`
    /// `GFileDescriptorBased` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FileDescriptorBasedProtocol`
    @inlinable public init<T: FileDescriptorBasedProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GFileDescriptorBased, cannot ref(file_descriptor_based_ptr)
    }

    /// Do-nothing destructor for `GFileDescriptorBased`.
    deinit {
        // no reference counting for GFileDescriptorBased, cannot unref(file_descriptor_based_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GFileDescriptorBased, cannot ref(file_descriptor_based_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GFileDescriptorBased, cannot ref(file_descriptor_based_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GFileDescriptorBased, cannot ref(file_descriptor_based_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GFileDescriptorBased, cannot ref(file_descriptor_based_ptr)
    }



}

// MARK: no FileDescriptorBased properties

// MARK: no FileDescriptorBased signals


// MARK: FileDescriptorBased Interface: FileDescriptorBasedProtocol extension (methods and fields)
public extension FileDescriptorBasedProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileDescriptorBased` instance.
    @inlinable var file_descriptor_based_ptr: UnsafeMutablePointer<GFileDescriptorBased>! { return ptr?.assumingMemoryBound(to: GFileDescriptorBased.self) }

    /// Gets the underlying file descriptor.
    @inlinable func getFd() -> Int {
        let rv = Int(g_file_descriptor_based_get_fd(file_descriptor_based_ptr))
        return rv
    }
    /// Gets the underlying file descriptor.
    @inlinable var fd: Int {
        /// Gets the underlying file descriptor.
        get {
            let rv = Int(g_file_descriptor_based_get_fd(file_descriptor_based_ptr))
            return rv
        }
    }


}



// MARK: - Icon Interface

/// The `IconProtocol` protocol exposes the methods and properties of an underlying `GIcon` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Icon`.
/// Alternatively, use `IconRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GIcon` is a very minimal interface for icons. It provides functions
/// for checking the equality of two icons, hashing of icons and
/// serializing an icon to and from strings.
/// 
/// `GIcon` does not provide the actual pixmap for the icon as this is out
/// of GIO's scope, however implementations of `GIcon` may contain the name
/// of an icon (see `GThemedIcon`), or the path to an icon (see `GLoadableIcon`).
/// 
/// To obtain a hash of a `GIcon`, see `g_icon_hash()`.
/// 
/// To check if two `GIcons` are equal, see `g_icon_equal()`.
/// 
/// For serializing a `GIcon`, use `g_icon_serialize()` and
/// `g_icon_deserialize()`.
/// 
/// If you want to consume `GIcon` (for example, in a toolkit) you must
/// be prepared to handle at least the three following cases:
/// `GLoadableIcon`, `GThemedIcon` and `GEmblemedIcon`.  It may also make
/// sense to have fast-paths for other cases (like handling `GdkPixbuf`
/// directly, for example) but all compliant `GIcon` implementations
/// outside of GIO must implement `GLoadableIcon`.
/// 
/// If your application or library provides one or more `GIcon`
/// implementations you need to ensure that your new implementation also
/// implements `GLoadableIcon`.  Additionally, you must provide an
/// implementation of `g_icon_serialize()` that gives a result that is
/// understood by `g_icon_deserialize()`, yielding one of the built-in icon
/// types.
public protocol IconProtocol {
        /// Untyped pointer to the underlying `GIcon` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GIcon` instance.
    var icon_ptr: UnsafeMutablePointer<GIcon>! { get }

}

/// The `IconRef` type acts as a lightweight Swift reference to an underlying `GIcon` instance.
/// It exposes methods that can operate on this data type through `IconProtocol` conformance.
/// Use `IconRef` only as an `unowned` reference to an existing `GIcon` instance.
///
/// `GIcon` is a very minimal interface for icons. It provides functions
/// for checking the equality of two icons, hashing of icons and
/// serializing an icon to and from strings.
/// 
/// `GIcon` does not provide the actual pixmap for the icon as this is out
/// of GIO's scope, however implementations of `GIcon` may contain the name
/// of an icon (see `GThemedIcon`), or the path to an icon (see `GLoadableIcon`).
/// 
/// To obtain a hash of a `GIcon`, see `g_icon_hash()`.
/// 
/// To check if two `GIcons` are equal, see `g_icon_equal()`.
/// 
/// For serializing a `GIcon`, use `g_icon_serialize()` and
/// `g_icon_deserialize()`.
/// 
/// If you want to consume `GIcon` (for example, in a toolkit) you must
/// be prepared to handle at least the three following cases:
/// `GLoadableIcon`, `GThemedIcon` and `GEmblemedIcon`.  It may also make
/// sense to have fast-paths for other cases (like handling `GdkPixbuf`
/// directly, for example) but all compliant `GIcon` implementations
/// outside of GIO must implement `GLoadableIcon`.
/// 
/// If your application or library provides one or more `GIcon`
/// implementations you need to ensure that your new implementation also
/// implements `GLoadableIcon`.  Additionally, you must provide an
/// implementation of `g_icon_serialize()` that gives a result that is
/// understood by `g_icon_deserialize()`, yielding one of the built-in icon
/// types.
public struct IconRef: IconProtocol {
        /// Untyped pointer to the underlying `GIcon` instance.
    /// For type-safe access, use the generated, typed pointer `icon_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension IconRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GIcon>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GIcon>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GIcon>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GIcon>?) {
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

    /// Reference intialiser for a related type that implements `IconProtocol`
    @inlinable init<T: IconProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Deserializes a `GIcon` previously serialized using `g_icon_serialize()`.
    @inlinable static func deserialize<VariantT: GLib.VariantProtocol>(value: VariantT) -> IconRef! {
        guard let rv = IconRef(gconstpointer: gconstpointer(g_icon_deserialize(value.variant_ptr))) else { return nil }
        return rv
    }

    /// Generate a `GIcon` instance from `str`. This function can fail if
    /// `str` is not valid - see `g_icon_to_string()` for discussion.
    /// 
    /// If your application or library provides one or more `GIcon`
    /// implementations you need to ensure that each `GType` is registered
    /// with the type system prior to calling `g_icon_new_for_string()`.
    @inlinable static func newFor(string str: UnsafePointer<gchar>!) throws -> IconRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = IconRef(gconstpointer: gconstpointer(g_icon_new_for_string(str, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }
}

/// The `Icon` type acts as an owner of an underlying `GIcon` instance.
/// It provides the methods that can operate on this data type through `IconProtocol` conformance.
/// Use `Icon` as a strong reference or owner of a `GIcon` instance.
///
/// `GIcon` is a very minimal interface for icons. It provides functions
/// for checking the equality of two icons, hashing of icons and
/// serializing an icon to and from strings.
/// 
/// `GIcon` does not provide the actual pixmap for the icon as this is out
/// of GIO's scope, however implementations of `GIcon` may contain the name
/// of an icon (see `GThemedIcon`), or the path to an icon (see `GLoadableIcon`).
/// 
/// To obtain a hash of a `GIcon`, see `g_icon_hash()`.
/// 
/// To check if two `GIcons` are equal, see `g_icon_equal()`.
/// 
/// For serializing a `GIcon`, use `g_icon_serialize()` and
/// `g_icon_deserialize()`.
/// 
/// If you want to consume `GIcon` (for example, in a toolkit) you must
/// be prepared to handle at least the three following cases:
/// `GLoadableIcon`, `GThemedIcon` and `GEmblemedIcon`.  It may also make
/// sense to have fast-paths for other cases (like handling `GdkPixbuf`
/// directly, for example) but all compliant `GIcon` implementations
/// outside of GIO must implement `GLoadableIcon`.
/// 
/// If your application or library provides one or more `GIcon`
/// implementations you need to ensure that your new implementation also
/// implements `GLoadableIcon`.  Additionally, you must provide an
/// implementation of `g_icon_serialize()` that gives a result that is
/// understood by `g_icon_deserialize()`, yielding one of the built-in icon
/// types.
open class Icon: IconProtocol {
        /// Untyped pointer to the underlying `GIcon` instance.
    /// For type-safe access, use the generated, typed pointer `icon_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Icon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GIcon>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Icon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GIcon>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Icon` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Icon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Icon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GIcon>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Icon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GIcon>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GIcon` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Icon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GIcon>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GIcon, cannot ref(icon_ptr)
    }

    /// Reference intialiser for a related type that implements `IconProtocol`
    /// `GIcon` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `IconProtocol`
    @inlinable public init<T: IconProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GIcon, cannot ref(icon_ptr)
    }

    /// Do-nothing destructor for `GIcon`.
    deinit {
        // no reference counting for GIcon, cannot unref(icon_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GIcon, cannot ref(icon_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GIcon, cannot ref(icon_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GIcon, cannot ref(icon_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GIcon, cannot ref(icon_ptr)
    }


    /// Deserializes a `GIcon` previously serialized using `g_icon_serialize()`.
    @inlinable public static func deserialize<VariantT: GLib.VariantProtocol>(value: VariantT) -> Icon! {
        guard let rv = Icon(gconstpointer: gconstpointer(g_icon_deserialize(value.variant_ptr))) else { return nil }
        return rv
    }

    /// Generate a `GIcon` instance from `str`. This function can fail if
    /// `str` is not valid - see `g_icon_to_string()` for discussion.
    /// 
    /// If your application or library provides one or more `GIcon`
    /// implementations you need to ensure that each `GType` is registered
    /// with the type system prior to calling `g_icon_new_for_string()`.
    @inlinable public static func newFor(string str: UnsafePointer<gchar>!) throws -> Icon! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = Icon(gconstpointer: gconstpointer(g_icon_new_for_string(str, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

}

// MARK: no Icon properties

// MARK: no Icon signals


// MARK: Icon Interface: IconProtocol extension (methods and fields)
public extension IconProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GIcon` instance.
    @inlinable var icon_ptr: UnsafeMutablePointer<GIcon>! { return ptr?.assumingMemoryBound(to: GIcon.self) }

    /// Checks if two icons are equal.
    @inlinable func equal(icon2: IconRef? = nil) -> Bool {
        let rv = ((g_icon_equal(icon_ptr, icon2?.icon_ptr)) != 0)
        return rv
    }
    /// Checks if two icons are equal.
    @inlinable func equal<IconT: IconProtocol>(icon2: IconT?) -> Bool {
        let rv = ((g_icon_equal(icon_ptr, icon2?.icon_ptr)) != 0)
        return rv
    }

    /// Serializes a `GIcon` into a `GVariant`. An equivalent `GIcon` can be retrieved
    /// back by calling `g_icon_deserialize()` on the returned value.
    /// As serialization will avoid using raw icon data when possible, it only
    /// makes sense to transfer the `GVariant` between processes on the same machine,
    /// (as opposed to over the network), and within the same file system namespace.
    @inlinable func serialize() -> GLib.VariantRef! {
        let rv = GLib.VariantRef(g_icon_serialize(icon_ptr))
        return rv
    }

    /// Generates a textual representation of `icon` that can be used for
    /// serialization such as when passing `icon` to a different process or
    /// saving it to persistent storage. Use `g_icon_new_for_string()` to
    /// get `icon` back from the returned string.
    /// 
    /// The encoding of the returned string is proprietary to `GIcon` except
    /// in the following two cases
    /// 
    /// - If `icon` is a `GFileIcon`, the returned string is a native path
    ///   (such as `/path/to/my icon.png`) without escaping
    ///   if the `GFile` for `icon` is a native file.  If the file is not
    ///   native, the returned string is the result of `g_file_get_uri()`
    ///   (such as `sftp://path/to/my`20icon.png``).
    /// 
    /// - If `icon` is a `GThemedIcon` with exactly one name and no fallbacks,
    ///   the encoding is simply the name (such as `network-server`).
    @inlinable func toString() -> String! {
        let rv = g_icon_to_string(icon_ptr).map({ String(cString: $0) })
        return rv
    }


}



