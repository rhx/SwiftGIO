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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GFileDescriptorBased` instance.
    var file_descriptor_based_ptr: UnsafeMutablePointer<GFileDescriptorBased> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension FileDescriptorBasedRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GFileDescriptorBased>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileDescriptorBasedProtocol`
    init<T: FileDescriptorBasedProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FileDescriptorBased` instance.
    public init(_ op: UnsafeMutablePointer<GFileDescriptorBased>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FileDescriptorBasedProtocol`
    /// `GFileDescriptorBased` does not allow reference counting.
    public convenience init<T: FileDescriptorBasedProtocol>(_ other: T) {
        self.init(cast(other.file_descriptor_based_ptr))
        // no reference counting for GFileDescriptorBased, cannot ref(cast(file_descriptor_based_ptr))
    }

    /// Do-nothing destructor for`GFileDescriptorBased`.
    deinit {
        // no reference counting for GFileDescriptorBased, cannot unref(cast(file_descriptor_based_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GFileDescriptorBased.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GFileDescriptorBased.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GFileDescriptorBased.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GFileDescriptorBased>(opaquePointer))
    }



}

// MARK: - no FileDescriptorBased properties

// MARK: - no signals


public extension FileDescriptorBasedProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileDescriptorBased` instance.
    var file_descriptor_based_ptr: UnsafeMutablePointer<GFileDescriptorBased> { return ptr.assumingMemoryBound(to: GFileDescriptorBased.self) }

    /// Gets the underlying file descriptor.
    func getFd() -> CInt {
        let rv = g_file_descriptor_based_get_fd(cast(file_descriptor_based_ptr))
        return rv
    }
    /// Gets the underlying file descriptor.
    var fd: CInt {
        /// Gets the underlying file descriptor.
        get {
            let rv = g_file_descriptor_based_get_fd(cast(file_descriptor_based_ptr))
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GIcon` instance.
    var icon_ptr: UnsafeMutablePointer<GIcon> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension IconRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GIcon>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `IconProtocol`
    init<T: IconProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Deserializes a `GIcon` previously serialized using `g_icon_serialize()`.
    static func deserialize(value: VariantProtocol) -> IconRef! {
        let rv = g_icon_deserialize(cast(value.ptr))
        return rv.map { IconRef(cast($0)) }
    }

    /// Generate a `GIcon` instance from `str`. This function can fail if
    /// `str` is not valid - see `g_icon_to_string()` for discussion.
    /// 
    /// If your application or library provides one or more `GIcon`
    /// implementations you need to ensure that each `GType` is registered
    /// with the type system prior to calling `g_icon_new_for_string()`.
    static func newFor(string str: UnsafePointer<gchar>) throws -> IconRef! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_icon_new_for_string(str, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { IconRef(cast($0)) }
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Icon` instance.
    public init(_ op: UnsafeMutablePointer<GIcon>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `IconProtocol`
    /// `GIcon` does not allow reference counting.
    public convenience init<T: IconProtocol>(_ other: T) {
        self.init(cast(other.icon_ptr))
        // no reference counting for GIcon, cannot ref(cast(icon_ptr))
    }

    /// Do-nothing destructor for`GIcon`.
    deinit {
        // no reference counting for GIcon, cannot unref(cast(icon_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GIcon.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GIcon.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GIcon.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IconProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GIcon>(opaquePointer))
    }


    /// Deserializes a `GIcon` previously serialized using `g_icon_serialize()`.
    public static func deserialize(value: VariantProtocol) -> Icon! {
        let rv = g_icon_deserialize(cast(value.ptr))
        return rv.map { Icon(cast($0)) }
    }

    /// Generate a `GIcon` instance from `str`. This function can fail if
    /// `str` is not valid - see `g_icon_to_string()` for discussion.
    /// 
    /// If your application or library provides one or more `GIcon`
    /// implementations you need to ensure that each `GType` is registered
    /// with the type system prior to calling `g_icon_new_for_string()`.
    public static func newFor(string str: UnsafePointer<gchar>) throws -> Icon! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_icon_new_for_string(str, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv.map { Icon(cast($0)) }
    }

}

// MARK: - no Icon properties

// MARK: - no signals


public extension IconProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GIcon` instance.
    var icon_ptr: UnsafeMutablePointer<GIcon> { return ptr.assumingMemoryBound(to: GIcon.self) }

    /// Checks if two icons are equal.
    func equal(icon2: IconProtocol) -> Bool {
        let rv = g_icon_equal(cast(icon_ptr), cast(icon2.ptr))
        return Bool(rv != 0)
    }

    /// Serializes a `GIcon` into a `GVariant`. An equivalent `GIcon` can be retrieved
    /// back by calling `g_icon_deserialize()` on the returned value.
    /// As serialization will avoid using raw icon data when possible, it only
    /// makes sense to transfer the `GVariant` between processes on the same machine,
    /// (as opposed to over the network), and within the same file system namespace.
    func serialize() -> UnsafeMutablePointer<GVariant>! {
        let rv = g_icon_serialize(cast(icon_ptr))
        return cast(rv)
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
    func toString() -> String! {
        let rv = g_icon_to_string(cast(icon_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }
}



