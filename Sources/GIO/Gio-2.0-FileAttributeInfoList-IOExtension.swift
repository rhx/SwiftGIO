import CGLib
import GLib
import GLibObject

// MARK: - FileAttributeInfoList Record

/// The `FileAttributeInfoListProtocol` protocol exposes the methods and properties of an underlying `GFileAttributeInfoList` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileAttributeInfoList`.
/// Alternatively, use `FileAttributeInfoListRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Acts as a lightweight registry for possible valid file attributes.
/// The registry stores Key-Value pair formats as `GFileAttributeInfos`.
public protocol FileAttributeInfoListProtocol {
        /// Untyped pointer to the underlying `GFileAttributeInfoList` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GFileAttributeInfoList` instance.
    var file_attribute_info_list_ptr: UnsafeMutablePointer<GFileAttributeInfoList> { get }
}

/// The `FileAttributeInfoListRef` type acts as a lightweight Swift reference to an underlying `GFileAttributeInfoList` instance.
/// It exposes methods that can operate on this data type through `FileAttributeInfoListProtocol` conformance.
/// Use `FileAttributeInfoListRef` only as an `unowned` reference to an existing `GFileAttributeInfoList` instance.
///
/// Acts as a lightweight registry for possible valid file attributes.
/// The registry stores Key-Value pair formats as `GFileAttributeInfos`.
public struct FileAttributeInfoListRef: FileAttributeInfoListProtocol {
        /// Untyped pointer to the underlying `GFileAttributeInfoList` instance.
    /// For type-safe access, use the generated, typed pointer `file_attribute_info_list_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FileAttributeInfoListRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GFileAttributeInfoList>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileAttributeInfoListProtocol`
    init<T: FileAttributeInfoListProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoListProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoListProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoListProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoListProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoListProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new file attribute info list.
    init() {
        let rv: UnsafeMutablePointer<GFileAttributeInfoList>! = cast(g_file_attribute_info_list_new())
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
}

/// The `FileAttributeInfoList` type acts as a reference-counted owner of an underlying `GFileAttributeInfoList` instance.
/// It provides the methods that can operate on this data type through `FileAttributeInfoListProtocol` conformance.
/// Use `FileAttributeInfoList` as a strong reference or owner of a `GFileAttributeInfoList` instance.
///
/// Acts as a lightweight registry for possible valid file attributes.
/// The registry stores Key-Value pair formats as `GFileAttributeInfos`.
open class FileAttributeInfoList: FileAttributeInfoListProtocol {
        /// Untyped pointer to the underlying `GFileAttributeInfoList` instance.
    /// For type-safe access, use the generated, typed pointer `file_attribute_info_list_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileAttributeInfoList` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GFileAttributeInfoList>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GFileAttributeInfoList`.
    /// i.e., ownership is transferred to the `FileAttributeInfoList` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GFileAttributeInfoList>) {
        ptr = UnsafeMutableRawPointer(op)
        g_file_attribute_info_list_ref(cast(file_attribute_info_list_ptr))
    }

    /// Reference intialiser for a related type that implements `FileAttributeInfoListProtocol`
    /// Will retain `GFileAttributeInfoList`.
    /// - Parameter other: an instance of a related type that implements `FileAttributeInfoListProtocol`
    public init<T: FileAttributeInfoListProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.file_attribute_info_list_ptr)
        g_file_attribute_info_list_ref(cast(file_attribute_info_list_ptr))
    }

    /// Releases the underlying `GFileAttributeInfoList` instance using `g_file_attribute_info_list_unref`.
    deinit {
        g_file_attribute_info_list_unref(cast(file_attribute_info_list_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoListProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoListProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_file_attribute_info_list_ref(cast(file_attribute_info_list_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoListProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoListProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_file_attribute_info_list_ref(cast(file_attribute_info_list_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoListProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoListProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_file_attribute_info_list_ref(cast(file_attribute_info_list_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoListProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoListProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_file_attribute_info_list_ref(cast(file_attribute_info_list_ptr))
    }

    /// Creates a new file attribute info list.
    public init() {
        let rv: UnsafeMutablePointer<GFileAttributeInfoList>! = cast(g_file_attribute_info_list_new())
        ptr = UnsafeMutableRawPointer(cast(rv))
    }


}

// MARK: no FileAttributeInfoList properties

// MARK: no FileAttributeInfoList signals


// MARK: FileAttributeInfoList Record: FileAttributeInfoListProtocol extension (methods and fields)
public extension FileAttributeInfoListProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileAttributeInfoList` instance.
    var file_attribute_info_list_ptr: UnsafeMutablePointer<GFileAttributeInfoList> { return ptr.assumingMemoryBound(to: GFileAttributeInfoList.self) }

    /// Adds a new attribute with `name` to the `list`, setting
    /// its `type` and `flags`.
    func add(name: UnsafePointer<CChar>, type: FileAttributeType, flags: FileAttributeInfoFlags) {
        g_file_attribute_info_list_add(cast(file_attribute_info_list_ptr), name, type, flags.value)
    
    }

    /// Makes a duplicate of a file attribute info list.
    func dup() -> UnsafeMutablePointer<GFileAttributeInfoList>! {
        let rv: UnsafeMutablePointer<GFileAttributeInfoList>! = cast(g_file_attribute_info_list_dup(cast(file_attribute_info_list_ptr)))
        return cast(rv)
    }

    /// Gets the file attribute with the name `name` from `list`.
    func lookup(name: UnsafePointer<CChar>) -> UnsafePointer<GFileAttributeInfo>! {
        let rv: UnsafePointer<GFileAttributeInfo>! = cast(g_file_attribute_info_list_lookup(cast(file_attribute_info_list_ptr), name))
        return cast(rv)
    }

    /// References a file attribute info list.
    func ref() -> UnsafeMutablePointer<GFileAttributeInfoList>! {
        let rv: UnsafeMutablePointer<GFileAttributeInfoList>! = cast(g_file_attribute_info_list_ref(cast(file_attribute_info_list_ptr)))
        return cast(rv)
    }

    /// Removes a reference from the given `list`. If the reference count
    /// falls to zero, the `list` is deleted.
    func unref() {
        g_file_attribute_info_list_unref(cast(file_attribute_info_list_ptr))
    
    }

    /// an array of `GFileAttributeInfos`.
    var infos: UnsafeMutablePointer<GFileAttributeInfo> {
        /// an array of `GFileAttributeInfos`.
        get {
            let rv: UnsafeMutablePointer<GFileAttributeInfo> = cast(file_attribute_info_list_ptr.pointee.infos)
            return rv
        }
        /// an array of `GFileAttributeInfos`.
         set {
            file_attribute_info_list_ptr.pointee.infos = cast(newValue)
        }
    }

    /// the number of values in the array.
    var nInfos: Int {
        /// the number of values in the array.
        get {
            let rv: Int = cast(file_attribute_info_list_ptr.pointee.n_infos)
            return rv
        }
        /// the number of values in the array.
         set {
            file_attribute_info_list_ptr.pointee.n_infos = cast(newValue)
        }
    }

}



// MARK: - FileAttributeMatcher Record

/// The `FileAttributeMatcherProtocol` protocol exposes the methods and properties of an underlying `GFileAttributeMatcher` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileAttributeMatcher`.
/// Alternatively, use `FileAttributeMatcherRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Determines if a string matches a file attribute.
public protocol FileAttributeMatcherProtocol {
        /// Untyped pointer to the underlying `GFileAttributeMatcher` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GFileAttributeMatcher` instance.
    var file_attribute_matcher_ptr: UnsafeMutablePointer<GFileAttributeMatcher> { get }
}

/// The `FileAttributeMatcherRef` type acts as a lightweight Swift reference to an underlying `GFileAttributeMatcher` instance.
/// It exposes methods that can operate on this data type through `FileAttributeMatcherProtocol` conformance.
/// Use `FileAttributeMatcherRef` only as an `unowned` reference to an existing `GFileAttributeMatcher` instance.
///
/// Determines if a string matches a file attribute.
public struct FileAttributeMatcherRef: FileAttributeMatcherProtocol {
        /// Untyped pointer to the underlying `GFileAttributeMatcher` instance.
    /// For type-safe access, use the generated, typed pointer `file_attribute_matcher_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FileAttributeMatcherRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GFileAttributeMatcher>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileAttributeMatcherProtocol`
    init<T: FileAttributeMatcherProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeMatcherProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeMatcherProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeMatcherProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeMatcherProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeMatcherProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new file attribute matcher, which matches attributes
    /// against a given string. `GFileAttributeMatchers` are reference
    /// counted structures, and are created with a reference count of 1. If
    /// the number of references falls to 0, the `GFileAttributeMatcher` is
    /// automatically destroyed.
    /// 
    /// The `attributes` string should be formatted with specific keys separated
    /// from namespaces with a double colon. Several "namespace`key`" strings may be
    /// concatenated with a single comma (e.g. "standard`type`,standard`is`-hidden").
    /// The wildcard "*" may be used to match all keys and namespaces, or
    /// "namespace``*" will match all keys in a given namespace.
    /// 
    /// ## Examples of file attribute matcher strings and results
    /// 
    /// - `"*"`: matches all attributes.
    /// - `"standard`is`-hidden"`: matches only the key is-hidden in the
    ///   standard namespace.
    /// - `"standard`type`,unix``*"`: matches the type key in the standard
    ///   namespace and all keys in the unix namespace.
    init( attributes: UnsafePointer<CChar>) {
        let rv: UnsafeMutablePointer<GFileAttributeMatcher>! = cast(g_file_attribute_matcher_new(attributes))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
}

/// The `FileAttributeMatcher` type acts as a reference-counted owner of an underlying `GFileAttributeMatcher` instance.
/// It provides the methods that can operate on this data type through `FileAttributeMatcherProtocol` conformance.
/// Use `FileAttributeMatcher` as a strong reference or owner of a `GFileAttributeMatcher` instance.
///
/// Determines if a string matches a file attribute.
open class FileAttributeMatcher: FileAttributeMatcherProtocol {
        /// Untyped pointer to the underlying `GFileAttributeMatcher` instance.
    /// For type-safe access, use the generated, typed pointer `file_attribute_matcher_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileAttributeMatcher` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GFileAttributeMatcher>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GFileAttributeMatcher`.
    /// i.e., ownership is transferred to the `FileAttributeMatcher` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GFileAttributeMatcher>) {
        ptr = UnsafeMutableRawPointer(op)
        g_file_attribute_matcher_ref(cast(file_attribute_matcher_ptr))
    }

    /// Reference intialiser for a related type that implements `FileAttributeMatcherProtocol`
    /// Will retain `GFileAttributeMatcher`.
    /// - Parameter other: an instance of a related type that implements `FileAttributeMatcherProtocol`
    public init<T: FileAttributeMatcherProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.file_attribute_matcher_ptr)
        g_file_attribute_matcher_ref(cast(file_attribute_matcher_ptr))
    }

    /// Releases the underlying `GFileAttributeMatcher` instance using `g_file_attribute_matcher_unref`.
    deinit {
        g_file_attribute_matcher_unref(cast(file_attribute_matcher_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeMatcherProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeMatcherProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_file_attribute_matcher_ref(cast(file_attribute_matcher_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeMatcherProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeMatcherProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_file_attribute_matcher_ref(cast(file_attribute_matcher_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeMatcherProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeMatcherProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_file_attribute_matcher_ref(cast(file_attribute_matcher_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeMatcherProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeMatcherProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_file_attribute_matcher_ref(cast(file_attribute_matcher_ptr))
    }

    /// Creates a new file attribute matcher, which matches attributes
    /// against a given string. `GFileAttributeMatchers` are reference
    /// counted structures, and are created with a reference count of 1. If
    /// the number of references falls to 0, the `GFileAttributeMatcher` is
    /// automatically destroyed.
    /// 
    /// The `attributes` string should be formatted with specific keys separated
    /// from namespaces with a double colon. Several "namespace`key`" strings may be
    /// concatenated with a single comma (e.g. "standard`type`,standard`is`-hidden").
    /// The wildcard "*" may be used to match all keys and namespaces, or
    /// "namespace``*" will match all keys in a given namespace.
    /// 
    /// ## Examples of file attribute matcher strings and results
    /// 
    /// - `"*"`: matches all attributes.
    /// - `"standard`is`-hidden"`: matches only the key is-hidden in the
    ///   standard namespace.
    /// - `"standard`type`,unix``*"`: matches the type key in the standard
    ///   namespace and all keys in the unix namespace.
    public init( attributes: UnsafePointer<CChar>) {
        let rv: UnsafeMutablePointer<GFileAttributeMatcher>! = cast(g_file_attribute_matcher_new(attributes))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }


}

// MARK: no FileAttributeMatcher properties

// MARK: no FileAttributeMatcher signals


// MARK: FileAttributeMatcher Record: FileAttributeMatcherProtocol extension (methods and fields)
public extension FileAttributeMatcherProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileAttributeMatcher` instance.
    var file_attribute_matcher_ptr: UnsafeMutablePointer<GFileAttributeMatcher> { return ptr.assumingMemoryBound(to: GFileAttributeMatcher.self) }

    /// Checks if the matcher will match all of the keys in a given namespace.
    /// This will always return `true` if a wildcard character is in use (e.g. if
    /// matcher was created with "standard``*" and `ns` is "standard", or if matcher was created
    /// using "*" and namespace is anything.)
    /// 
    /// TODO: this is awkwardly worded.
    func enumerateNamespace(ns: UnsafePointer<CChar>) -> Bool {
        let rv = g_file_attribute_matcher_enumerate_namespace(cast(file_attribute_matcher_ptr), ns)
        return Bool(rv != 0)
    }

    /// Gets the next matched attribute from a `GFileAttributeMatcher`.
    func enumerateNext() -> String! {
        let rv: String! = cast(g_file_attribute_matcher_enumerate_next(cast(file_attribute_matcher_ptr)))
        return cast(rv)
    }

    /// Checks if an attribute will be matched by an attribute matcher. If
    /// the matcher was created with the "*" matching string, this function
    /// will always return `true`.
    func matches(attribute: UnsafePointer<CChar>) -> Bool {
        let rv = g_file_attribute_matcher_matches(cast(file_attribute_matcher_ptr), attribute)
        return Bool(rv != 0)
    }

    /// Checks if a attribute matcher only matches a given attribute. Always
    /// returns `false` if "*" was used when creating the matcher.
    func matchesOnly(attribute: UnsafePointer<CChar>) -> Bool {
        let rv = g_file_attribute_matcher_matches_only(cast(file_attribute_matcher_ptr), attribute)
        return Bool(rv != 0)
    }

    /// References a file attribute matcher.
    func ref() -> UnsafeMutablePointer<GFileAttributeMatcher>! {
        let rv: UnsafeMutablePointer<GFileAttributeMatcher>! = cast(g_file_attribute_matcher_ref(cast(file_attribute_matcher_ptr)))
        return cast(rv)
    }

    /// Subtracts all attributes of `subtract` from `matcher` and returns
    /// a matcher that supports those attributes.
    /// 
    /// Note that currently it is not possible to remove a single
    /// attribute when the `matcher` matches the whole namespace - or remove
    /// a namespace or attribute when the matcher matches everything. This
    /// is a limitation of the current implementation, but may be fixed
    /// in the future.
    func subtract(subtract: FileAttributeMatcherProtocol) -> UnsafeMutablePointer<GFileAttributeMatcher>! {
        let rv: UnsafeMutablePointer<GFileAttributeMatcher>! = cast(g_file_attribute_matcher_subtract(cast(file_attribute_matcher_ptr), cast(subtract.ptr)))
        return cast(rv)
    }

    /// Prints what the matcher is matching against. The format will be
    /// equal to the format passed to `g_file_attribute_matcher_new()`.
    /// The output however, might not be identical, as the matcher may
    /// decide to use a different order or omit needless parts.
    func toString() -> String! {
        let rv: String! = cast(g_file_attribute_matcher_to_string(cast(file_attribute_matcher_ptr)))
        return cast(rv)
    }

    /// Unreferences `matcher`. If the reference count falls below 1,
    /// the `matcher` is automatically freed.
    func unref() {
        g_file_attribute_matcher_unref(cast(file_attribute_matcher_ptr))
    
    }


}



// MARK: - FileDescriptorBasedIface Record

/// The `FileDescriptorBasedIfaceProtocol` protocol exposes the methods and properties of an underlying `GFileDescriptorBasedIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileDescriptorBasedIface`.
/// Alternatively, use `FileDescriptorBasedIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// An interface for file descriptor based io objects.
public protocol FileDescriptorBasedIfaceProtocol {
        /// Untyped pointer to the underlying `GFileDescriptorBasedIface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GFileDescriptorBasedIface` instance.
    var _ptr: UnsafeMutablePointer<GFileDescriptorBasedIface> { get }
}

/// The `FileDescriptorBasedIfaceRef` type acts as a lightweight Swift reference to an underlying `GFileDescriptorBasedIface` instance.
/// It exposes methods that can operate on this data type through `FileDescriptorBasedIfaceProtocol` conformance.
/// Use `FileDescriptorBasedIfaceRef` only as an `unowned` reference to an existing `GFileDescriptorBasedIface` instance.
///
/// An interface for file descriptor based io objects.
public struct FileDescriptorBasedIfaceRef: FileDescriptorBasedIfaceProtocol {
        /// Untyped pointer to the underlying `GFileDescriptorBasedIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FileDescriptorBasedIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GFileDescriptorBasedIface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileDescriptorBasedIfaceProtocol`
    init<T: FileDescriptorBasedIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedIfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedIfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedIfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedIfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedIfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FileDescriptorBasedIface` type acts as an owner of an underlying `GFileDescriptorBasedIface` instance.
/// It provides the methods that can operate on this data type through `FileDescriptorBasedIfaceProtocol` conformance.
/// Use `FileDescriptorBasedIface` as a strong reference or owner of a `GFileDescriptorBasedIface` instance.
///
/// An interface for file descriptor based io objects.
open class FileDescriptorBasedIface: FileDescriptorBasedIfaceProtocol {
        /// Untyped pointer to the underlying `GFileDescriptorBasedIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileDescriptorBasedIface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GFileDescriptorBasedIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GFileDescriptorBasedIface` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FileDescriptorBasedIface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GFileDescriptorBasedIface>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GFileDescriptorBasedIface, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `FileDescriptorBasedIfaceProtocol`
    /// `GFileDescriptorBasedIface` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FileDescriptorBasedIfaceProtocol`
    public init<T: FileDescriptorBasedIfaceProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GFileDescriptorBasedIface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GFileDescriptorBasedIface`.
    deinit {
        // no reference counting for GFileDescriptorBasedIface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedIfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedIfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GFileDescriptorBasedIface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedIfaceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedIfaceProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GFileDescriptorBasedIface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedIfaceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedIfaceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GFileDescriptorBasedIface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedIfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedIfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GFileDescriptorBasedIface, cannot ref(cast(_ptr))
    }



}

// MARK: no FileDescriptorBasedIface properties

// MARK: no FileDescriptorBasedIface signals


// MARK: FileDescriptorBasedIface Record: FileDescriptorBasedIfaceProtocol extension (methods and fields)
public extension FileDescriptorBasedIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileDescriptorBasedIface` instance.
    var _ptr: UnsafeMutablePointer<GFileDescriptorBasedIface> { return ptr.assumingMemoryBound(to: GFileDescriptorBasedIface.self) }


    /// The parent interface.
    var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv: GTypeInterface = cast(_ptr.pointee.g_iface)
            return rv
        }
    }

    // var getFd is unavailable because get_fd is void

}



// MARK: - FileEnumeratorClass Record

/// The `FileEnumeratorClassProtocol` protocol exposes the methods and properties of an underlying `GFileEnumeratorClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileEnumeratorClass`.
/// Alternatively, use `FileEnumeratorClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FileEnumeratorClassProtocol {
        /// Untyped pointer to the underlying `GFileEnumeratorClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GFileEnumeratorClass` instance.
    var _ptr: UnsafeMutablePointer<GFileEnumeratorClass> { get }
}

/// The `FileEnumeratorClassRef` type acts as a lightweight Swift reference to an underlying `GFileEnumeratorClass` instance.
/// It exposes methods that can operate on this data type through `FileEnumeratorClassProtocol` conformance.
/// Use `FileEnumeratorClassRef` only as an `unowned` reference to an existing `GFileEnumeratorClass` instance.
///

public struct FileEnumeratorClassRef: FileEnumeratorClassProtocol {
        /// Untyped pointer to the underlying `GFileEnumeratorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FileEnumeratorClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GFileEnumeratorClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileEnumeratorClassProtocol`
    init<T: FileEnumeratorClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FileEnumeratorClass` type acts as an owner of an underlying `GFileEnumeratorClass` instance.
/// It provides the methods that can operate on this data type through `FileEnumeratorClassProtocol` conformance.
/// Use `FileEnumeratorClass` as a strong reference or owner of a `GFileEnumeratorClass` instance.
///

open class FileEnumeratorClass: FileEnumeratorClassProtocol {
        /// Untyped pointer to the underlying `GFileEnumeratorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileEnumeratorClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GFileEnumeratorClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GFileEnumeratorClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FileEnumeratorClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GFileEnumeratorClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GFileEnumeratorClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `FileEnumeratorClassProtocol`
    /// `GFileEnumeratorClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FileEnumeratorClassProtocol`
    public init<T: FileEnumeratorClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GFileEnumeratorClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GFileEnumeratorClass`.
    deinit {
        // no reference counting for GFileEnumeratorClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GFileEnumeratorClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GFileEnumeratorClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GFileEnumeratorClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GFileEnumeratorClass, cannot ref(cast(_ptr))
    }



}

// MARK: no FileEnumeratorClass properties

// MARK: no FileEnumeratorClass signals


// MARK: FileEnumeratorClass Record: FileEnumeratorClassProtocol extension (methods and fields)
public extension FileEnumeratorClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileEnumeratorClass` instance.
    var _ptr: UnsafeMutablePointer<GFileEnumeratorClass> { return ptr.assumingMemoryBound(to: GFileEnumeratorClass.self) }


    var parentClass: GObjectClass {
        get {
            let rv: GObjectClass = cast(_ptr.pointee.parent_class)
            return rv
        }
    }

    // var nextFile is unavailable because next_file is void

    // var closeFn is unavailable because close_fn is void

    // var nextFilesAsync is unavailable because next_files_async is void

    // var nextFilesFinish is unavailable because next_files_finish is void

    // var closeAsync is unavailable because close_async is void

    // var closeFinish is unavailable because close_finish is void

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

    // var GReserved4 is unavailable because _g_reserved4 is void

    // var GReserved5 is unavailable because _g_reserved5 is void

    // var GReserved6 is unavailable because _g_reserved6 is void

    // var GReserved7 is unavailable because _g_reserved7 is void

}



// MARK: - FileEnumeratorPrivate Record

/// The `FileEnumeratorPrivateProtocol` protocol exposes the methods and properties of an underlying `GFileEnumeratorPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileEnumeratorPrivate`.
/// Alternatively, use `FileEnumeratorPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FileEnumeratorPrivateProtocol {
        /// Untyped pointer to the underlying `GFileEnumeratorPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GFileEnumeratorPrivate` instance.
    var _ptr: UnsafeMutablePointer<GFileEnumeratorPrivate> { get }
}

/// The `FileEnumeratorPrivateRef` type acts as a lightweight Swift reference to an underlying `GFileEnumeratorPrivate` instance.
/// It exposes methods that can operate on this data type through `FileEnumeratorPrivateProtocol` conformance.
/// Use `FileEnumeratorPrivateRef` only as an `unowned` reference to an existing `GFileEnumeratorPrivate` instance.
///

public struct FileEnumeratorPrivateRef: FileEnumeratorPrivateProtocol {
        /// Untyped pointer to the underlying `GFileEnumeratorPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FileEnumeratorPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GFileEnumeratorPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileEnumeratorPrivateProtocol`
    init<T: FileEnumeratorPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FileEnumeratorPrivate` type acts as an owner of an underlying `GFileEnumeratorPrivate` instance.
/// It provides the methods that can operate on this data type through `FileEnumeratorPrivateProtocol` conformance.
/// Use `FileEnumeratorPrivate` as a strong reference or owner of a `GFileEnumeratorPrivate` instance.
///

open class FileEnumeratorPrivate: FileEnumeratorPrivateProtocol {
        /// Untyped pointer to the underlying `GFileEnumeratorPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileEnumeratorPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GFileEnumeratorPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GFileEnumeratorPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FileEnumeratorPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GFileEnumeratorPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GFileEnumeratorPrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `FileEnumeratorPrivateProtocol`
    /// `GFileEnumeratorPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FileEnumeratorPrivateProtocol`
    public init<T: FileEnumeratorPrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GFileEnumeratorPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GFileEnumeratorPrivate`.
    deinit {
        // no reference counting for GFileEnumeratorPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GFileEnumeratorPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorPrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GFileEnumeratorPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GFileEnumeratorPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GFileEnumeratorPrivate, cannot ref(cast(_ptr))
    }



}

// MARK: no FileEnumeratorPrivate properties

// MARK: no FileEnumeratorPrivate signals


// MARK: FileEnumeratorPrivate Record: FileEnumeratorPrivateProtocol extension (methods and fields)
public extension FileEnumeratorPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileEnumeratorPrivate` instance.
    var _ptr: UnsafeMutablePointer<GFileEnumeratorPrivate> { return ptr.assumingMemoryBound(to: GFileEnumeratorPrivate.self) }



}



// MARK: - FileIOStreamClass Record

/// The `FileIOStreamClassProtocol` protocol exposes the methods and properties of an underlying `GFileIOStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileIOStreamClass`.
/// Alternatively, use `FileIOStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FileIOStreamClassProtocol {
        /// Untyped pointer to the underlying `GFileIOStreamClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GFileIOStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GFileIOStreamClass> { get }
}

/// The `FileIOStreamClassRef` type acts as a lightweight Swift reference to an underlying `GFileIOStreamClass` instance.
/// It exposes methods that can operate on this data type through `FileIOStreamClassProtocol` conformance.
/// Use `FileIOStreamClassRef` only as an `unowned` reference to an existing `GFileIOStreamClass` instance.
///

public struct FileIOStreamClassRef: FileIOStreamClassProtocol {
        /// Untyped pointer to the underlying `GFileIOStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FileIOStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GFileIOStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileIOStreamClassProtocol`
    init<T: FileIOStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FileIOStreamClass` type acts as an owner of an underlying `GFileIOStreamClass` instance.
/// It provides the methods that can operate on this data type through `FileIOStreamClassProtocol` conformance.
/// Use `FileIOStreamClass` as a strong reference or owner of a `GFileIOStreamClass` instance.
///

open class FileIOStreamClass: FileIOStreamClassProtocol {
        /// Untyped pointer to the underlying `GFileIOStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileIOStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GFileIOStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GFileIOStreamClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FileIOStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GFileIOStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GFileIOStreamClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `FileIOStreamClassProtocol`
    /// `GFileIOStreamClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FileIOStreamClassProtocol`
    public init<T: FileIOStreamClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GFileIOStreamClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GFileIOStreamClass`.
    deinit {
        // no reference counting for GFileIOStreamClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GFileIOStreamClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GFileIOStreamClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GFileIOStreamClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GFileIOStreamClass, cannot ref(cast(_ptr))
    }



}

// MARK: no FileIOStreamClass properties

// MARK: no FileIOStreamClass signals


// MARK: FileIOStreamClass Record: FileIOStreamClassProtocol extension (methods and fields)
public extension FileIOStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileIOStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GFileIOStreamClass> { return ptr.assumingMemoryBound(to: GFileIOStreamClass.self) }


    var parentClass: GIOStreamClass {
        get {
            let rv: GIOStreamClass = cast(_ptr.pointee.parent_class)
            return rv
        }
    }

    // var tell is unavailable because tell is void

    // var canSeek is unavailable because can_seek is void

    // var seek is unavailable because seek is void

    // var canTruncate is unavailable because can_truncate is void

    // var truncateFn is unavailable because truncate_fn is void

    // var queryInfo is unavailable because query_info is void

    // var queryInfoAsync is unavailable because query_info_async is void

    // var queryInfoFinish is unavailable because query_info_finish is void

    // var getEtag is unavailable because get_etag is void

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

    // var GReserved4 is unavailable because _g_reserved4 is void

    // var GReserved5 is unavailable because _g_reserved5 is void

}



// MARK: - FileIOStreamPrivate Record

/// The `FileIOStreamPrivateProtocol` protocol exposes the methods and properties of an underlying `GFileIOStreamPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileIOStreamPrivate`.
/// Alternatively, use `FileIOStreamPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FileIOStreamPrivateProtocol {
        /// Untyped pointer to the underlying `GFileIOStreamPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GFileIOStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GFileIOStreamPrivate> { get }
}

/// The `FileIOStreamPrivateRef` type acts as a lightweight Swift reference to an underlying `GFileIOStreamPrivate` instance.
/// It exposes methods that can operate on this data type through `FileIOStreamPrivateProtocol` conformance.
/// Use `FileIOStreamPrivateRef` only as an `unowned` reference to an existing `GFileIOStreamPrivate` instance.
///

public struct FileIOStreamPrivateRef: FileIOStreamPrivateProtocol {
        /// Untyped pointer to the underlying `GFileIOStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FileIOStreamPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GFileIOStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileIOStreamPrivateProtocol`
    init<T: FileIOStreamPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FileIOStreamPrivate` type acts as an owner of an underlying `GFileIOStreamPrivate` instance.
/// It provides the methods that can operate on this data type through `FileIOStreamPrivateProtocol` conformance.
/// Use `FileIOStreamPrivate` as a strong reference or owner of a `GFileIOStreamPrivate` instance.
///

open class FileIOStreamPrivate: FileIOStreamPrivateProtocol {
        /// Untyped pointer to the underlying `GFileIOStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileIOStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GFileIOStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GFileIOStreamPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FileIOStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GFileIOStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GFileIOStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `FileIOStreamPrivateProtocol`
    /// `GFileIOStreamPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FileIOStreamPrivateProtocol`
    public init<T: FileIOStreamPrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GFileIOStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GFileIOStreamPrivate`.
    deinit {
        // no reference counting for GFileIOStreamPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GFileIOStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamPrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GFileIOStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GFileIOStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GFileIOStreamPrivate, cannot ref(cast(_ptr))
    }



}

// MARK: no FileIOStreamPrivate properties

// MARK: no FileIOStreamPrivate signals


// MARK: FileIOStreamPrivate Record: FileIOStreamPrivateProtocol extension (methods and fields)
public extension FileIOStreamPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileIOStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GFileIOStreamPrivate> { return ptr.assumingMemoryBound(to: GFileIOStreamPrivate.self) }



}



// MARK: - FileIconClass Record

/// The `FileIconClassProtocol` protocol exposes the methods and properties of an underlying `GFileIconClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileIconClass`.
/// Alternatively, use `FileIconClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FileIconClassProtocol {
        /// Untyped pointer to the underlying `GFileIconClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GFileIconClass` instance.
    var _ptr: UnsafeMutablePointer<GFileIconClass> { get }
}

/// The `FileIconClassRef` type acts as a lightweight Swift reference to an underlying `GFileIconClass` instance.
/// It exposes methods that can operate on this data type through `FileIconClassProtocol` conformance.
/// Use `FileIconClassRef` only as an `unowned` reference to an existing `GFileIconClass` instance.
///

public struct FileIconClassRef: FileIconClassProtocol {
        /// Untyped pointer to the underlying `GFileIconClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FileIconClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GFileIconClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileIconClassProtocol`
    init<T: FileIconClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FileIconClass` type acts as an owner of an underlying `GFileIconClass` instance.
/// It provides the methods that can operate on this data type through `FileIconClassProtocol` conformance.
/// Use `FileIconClass` as a strong reference or owner of a `GFileIconClass` instance.
///

open class FileIconClass: FileIconClassProtocol {
        /// Untyped pointer to the underlying `GFileIconClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileIconClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GFileIconClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GFileIconClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FileIconClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GFileIconClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GFileIconClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `FileIconClassProtocol`
    /// `GFileIconClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FileIconClassProtocol`
    public init<T: FileIconClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GFileIconClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GFileIconClass`.
    deinit {
        // no reference counting for GFileIconClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GFileIconClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GFileIconClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GFileIconClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GFileIconClass, cannot ref(cast(_ptr))
    }



}

// MARK: no FileIconClass properties

// MARK: no FileIconClass signals


// MARK: FileIconClass Record: FileIconClassProtocol extension (methods and fields)
public extension FileIconClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileIconClass` instance.
    var _ptr: UnsafeMutablePointer<GFileIconClass> { return ptr.assumingMemoryBound(to: GFileIconClass.self) }



}



// MARK: - FileIface Record

/// The `FileIfaceProtocol` protocol exposes the methods and properties of an underlying `GFileIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileIface`.
/// Alternatively, use `FileIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// An interface for writing VFS file handles.
public protocol FileIfaceProtocol {
        /// Untyped pointer to the underlying `GFileIface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GFileIface` instance.
    var _ptr: UnsafeMutablePointer<GFileIface> { get }
}

/// The `FileIfaceRef` type acts as a lightweight Swift reference to an underlying `GFileIface` instance.
/// It exposes methods that can operate on this data type through `FileIfaceProtocol` conformance.
/// Use `FileIfaceRef` only as an `unowned` reference to an existing `GFileIface` instance.
///
/// An interface for writing VFS file handles.
public struct FileIfaceRef: FileIfaceProtocol {
        /// Untyped pointer to the underlying `GFileIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FileIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GFileIface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileIfaceProtocol`
    init<T: FileIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FileIface` type acts as an owner of an underlying `GFileIface` instance.
/// It provides the methods that can operate on this data type through `FileIfaceProtocol` conformance.
/// Use `FileIface` as a strong reference or owner of a `GFileIface` instance.
///
/// An interface for writing VFS file handles.
open class FileIface: FileIfaceProtocol {
        /// Untyped pointer to the underlying `GFileIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileIface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GFileIface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GFileIface` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FileIface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GFileIface>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GFileIface, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `FileIfaceProtocol`
    /// `GFileIface` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FileIfaceProtocol`
    public init<T: FileIfaceProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GFileIface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GFileIface`.
    deinit {
        // no reference counting for GFileIface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GFileIface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIfaceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIfaceProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GFileIface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIfaceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIfaceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GFileIface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GFileIface, cannot ref(cast(_ptr))
    }



}

// MARK: no FileIface properties

// MARK: no FileIface signals


// MARK: FileIface Record: FileIfaceProtocol extension (methods and fields)
public extension FileIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileIface` instance.
    var _ptr: UnsafeMutablePointer<GFileIface> { return ptr.assumingMemoryBound(to: GFileIface.self) }


    /// The parent interface.
    var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv: GTypeInterface = cast(_ptr.pointee.g_iface)
            return rv
        }
    }

    // var dup is unavailable because dup is void

    // var hash is unavailable because hash is void

    // var equal is unavailable because equal is void

    // var isNative is unavailable because is_native is void

    // var hasURIScheme is unavailable because has_uri_scheme is void

    // var getURIScheme is unavailable because get_uri_scheme is void

    // var getBasename is unavailable because get_basename is void

    // var getPath is unavailable because get_path is void

    // var getURI is unavailable because get_uri is void

    // var getParseName is unavailable because get_parse_name is void

    // var getParent is unavailable because get_parent is void

    // var prefixMatches is unavailable because prefix_matches is void

    // var getRelativePath is unavailable because get_relative_path is void

    // var resolveRelativePath is unavailable because resolve_relative_path is void

    // var getChildForDisplayName is unavailable because get_child_for_display_name is void

    // var enumerateChildren is unavailable because enumerate_children is void

    // var enumerateChildrenAsync is unavailable because enumerate_children_async is void

    // var enumerateChildrenFinish is unavailable because enumerate_children_finish is void

    // var queryInfo is unavailable because query_info is void

    // var queryInfoAsync is unavailable because query_info_async is void

    // var queryInfoFinish is unavailable because query_info_finish is void

    // var queryFilesystemInfo is unavailable because query_filesystem_info is void

    // var queryFilesystemInfoAsync is unavailable because query_filesystem_info_async is void

    // var queryFilesystemInfoFinish is unavailable because query_filesystem_info_finish is void

    // var findEnclosingMount is unavailable because find_enclosing_mount is void

    // var findEnclosingMountAsync is unavailable because find_enclosing_mount_async is void

    // var findEnclosingMountFinish is unavailable because find_enclosing_mount_finish is void

    // var setDisplayName is unavailable because set_display_name is void

    // var setDisplayNameAsync is unavailable because set_display_name_async is void

    // var setDisplayNameFinish is unavailable because set_display_name_finish is void

    // var querySettableAttributes is unavailable because query_settable_attributes is void

    // var QuerySettableAttributesAsync is unavailable because _query_settable_attributes_async is void

    // var QuerySettableAttributesFinish is unavailable because _query_settable_attributes_finish is void

    // var queryWritableNamespaces is unavailable because query_writable_namespaces is void

    // var QueryWritableNamespacesAsync is unavailable because _query_writable_namespaces_async is void

    // var QueryWritableNamespacesFinish is unavailable because _query_writable_namespaces_finish is void

    // var setAttribute is unavailable because set_attribute is void

    // var setAttributesFromInfo is unavailable because set_attributes_from_info is void

    // var setAttributesAsync is unavailable because set_attributes_async is void

    // var setAttributesFinish is unavailable because set_attributes_finish is void

    // var readFn is unavailable because read_fn is void

    // var readAsync is unavailable because read_async is void

    // var readFinish is unavailable because read_finish is void

    // var appendTo is unavailable because append_to is void

    // var appendToAsync is unavailable because append_to_async is void

    // var appendToFinish is unavailable because append_to_finish is void

    // var create is unavailable because create is void

    // var createAsync is unavailable because create_async is void

    // var createFinish is unavailable because create_finish is void

    // var replace is unavailable because replace is void

    // var replaceAsync is unavailable because replace_async is void

    // var replaceFinish is unavailable because replace_finish is void

    // var deleteFile is unavailable because delete_file is void

    // var deleteFileAsync is unavailable because delete_file_async is void

    // var deleteFileFinish is unavailable because delete_file_finish is void

    // var trash is unavailable because trash is void

    // var trashAsync is unavailable because trash_async is void

    // var trashFinish is unavailable because trash_finish is void

    // var makeDirectory is unavailable because make_directory is void

    // var makeDirectoryAsync is unavailable because make_directory_async is void

    // var makeDirectoryFinish is unavailable because make_directory_finish is void

    // var makeSymbolicLink is unavailable because make_symbolic_link is void

    // var MakeSymbolicLinkAsync is unavailable because _make_symbolic_link_async is void

    // var MakeSymbolicLinkFinish is unavailable because _make_symbolic_link_finish is void

    // var copy is unavailable because copy is void

    // var copyAsync is unavailable because copy_async is void

    // var copyFinish is unavailable because copy_finish is void

    // var move is unavailable because move is void

    // var MoveAsync is unavailable because _move_async is void

    // var MoveFinish is unavailable because _move_finish is void

    // var mountMountable is unavailable because mount_mountable is void

    // var mountMountableFinish is unavailable because mount_mountable_finish is void

    // var unmountMountable is unavailable because unmount_mountable is void

    // var unmountMountableFinish is unavailable because unmount_mountable_finish is void

    // var ejectMountable is unavailable because eject_mountable is void

    // var ejectMountableFinish is unavailable because eject_mountable_finish is void

    // var mountEnclosingVolume is unavailable because mount_enclosing_volume is void

    // var mountEnclosingVolumeFinish is unavailable because mount_enclosing_volume_finish is void

    // var monitorDir is unavailable because monitor_dir is void

    // var monitorFile is unavailable because monitor_file is void

    // var openReadwrite is unavailable because open_readwrite is void

    // var openReadwriteAsync is unavailable because open_readwrite_async is void

    // var openReadwriteFinish is unavailable because open_readwrite_finish is void

    // var createReadwrite is unavailable because create_readwrite is void

    // var createReadwriteAsync is unavailable because create_readwrite_async is void

    // var createReadwriteFinish is unavailable because create_readwrite_finish is void

    // var replaceReadwrite is unavailable because replace_readwrite is void

    // var replaceReadwriteAsync is unavailable because replace_readwrite_async is void

    // var replaceReadwriteFinish is unavailable because replace_readwrite_finish is void

    // var startMountable is unavailable because start_mountable is void

    // var startMountableFinish is unavailable because start_mountable_finish is void

    // var stopMountable is unavailable because stop_mountable is void

    // var stopMountableFinish is unavailable because stop_mountable_finish is void

    /// a boolean that indicates whether the `GFile` implementation supports thread-default contexts. Since 2.22.
    var supportsThreadContexts: Bool {
        /// a boolean that indicates whether the `GFile` implementation supports thread-default contexts. Since 2.22.
        get {
            let rv: Bool = cast(_ptr.pointee.supports_thread_contexts)
            return rv
        }
    }

    // var unmountMountableWithOperation is unavailable because unmount_mountable_with_operation is void

    // var unmountMountableWithOperationFinish is unavailable because unmount_mountable_with_operation_finish is void

    // var ejectMountableWithOperation is unavailable because eject_mountable_with_operation is void

    // var ejectMountableWithOperationFinish is unavailable because eject_mountable_with_operation_finish is void

    // var pollMountable is unavailable because poll_mountable is void

    // var pollMountableFinish is unavailable because poll_mountable_finish is void

    // var measureDiskUsage is unavailable because measure_disk_usage is void

    // var measureDiskUsageAsync is unavailable because measure_disk_usage_async is void

    // var measureDiskUsageFinish is unavailable because measure_disk_usage_finish is void

}



// MARK: - FileInfoClass Record

/// The `FileInfoClassProtocol` protocol exposes the methods and properties of an underlying `GFileInfoClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileInfoClass`.
/// Alternatively, use `FileInfoClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FileInfoClassProtocol {
        /// Untyped pointer to the underlying `GFileInfoClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GFileInfoClass` instance.
    var _ptr: UnsafeMutablePointer<GFileInfoClass> { get }
}

/// The `FileInfoClassRef` type acts as a lightweight Swift reference to an underlying `GFileInfoClass` instance.
/// It exposes methods that can operate on this data type through `FileInfoClassProtocol` conformance.
/// Use `FileInfoClassRef` only as an `unowned` reference to an existing `GFileInfoClass` instance.
///

public struct FileInfoClassRef: FileInfoClassProtocol {
        /// Untyped pointer to the underlying `GFileInfoClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FileInfoClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GFileInfoClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileInfoClassProtocol`
    init<T: FileInfoClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FileInfoClass` type acts as an owner of an underlying `GFileInfoClass` instance.
/// It provides the methods that can operate on this data type through `FileInfoClassProtocol` conformance.
/// Use `FileInfoClass` as a strong reference or owner of a `GFileInfoClass` instance.
///

open class FileInfoClass: FileInfoClassProtocol {
        /// Untyped pointer to the underlying `GFileInfoClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileInfoClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GFileInfoClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GFileInfoClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FileInfoClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GFileInfoClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GFileInfoClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `FileInfoClassProtocol`
    /// `GFileInfoClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FileInfoClassProtocol`
    public init<T: FileInfoClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GFileInfoClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GFileInfoClass`.
    deinit {
        // no reference counting for GFileInfoClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GFileInfoClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GFileInfoClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GFileInfoClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GFileInfoClass, cannot ref(cast(_ptr))
    }



}

// MARK: no FileInfoClass properties

// MARK: no FileInfoClass signals


// MARK: FileInfoClass Record: FileInfoClassProtocol extension (methods and fields)
public extension FileInfoClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileInfoClass` instance.
    var _ptr: UnsafeMutablePointer<GFileInfoClass> { return ptr.assumingMemoryBound(to: GFileInfoClass.self) }



}



// MARK: - FileInputStreamClass Record

/// The `FileInputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GFileInputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileInputStreamClass`.
/// Alternatively, use `FileInputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FileInputStreamClassProtocol {
        /// Untyped pointer to the underlying `GFileInputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GFileInputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GFileInputStreamClass> { get }
}

/// The `FileInputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GFileInputStreamClass` instance.
/// It exposes methods that can operate on this data type through `FileInputStreamClassProtocol` conformance.
/// Use `FileInputStreamClassRef` only as an `unowned` reference to an existing `GFileInputStreamClass` instance.
///

public struct FileInputStreamClassRef: FileInputStreamClassProtocol {
        /// Untyped pointer to the underlying `GFileInputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FileInputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GFileInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileInputStreamClassProtocol`
    init<T: FileInputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FileInputStreamClass` type acts as an owner of an underlying `GFileInputStreamClass` instance.
/// It provides the methods that can operate on this data type through `FileInputStreamClassProtocol` conformance.
/// Use `FileInputStreamClass` as a strong reference or owner of a `GFileInputStreamClass` instance.
///

open class FileInputStreamClass: FileInputStreamClassProtocol {
        /// Untyped pointer to the underlying `GFileInputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileInputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GFileInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GFileInputStreamClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FileInputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GFileInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GFileInputStreamClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `FileInputStreamClassProtocol`
    /// `GFileInputStreamClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FileInputStreamClassProtocol`
    public init<T: FileInputStreamClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GFileInputStreamClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GFileInputStreamClass`.
    deinit {
        // no reference counting for GFileInputStreamClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GFileInputStreamClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GFileInputStreamClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GFileInputStreamClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GFileInputStreamClass, cannot ref(cast(_ptr))
    }



}

// MARK: no FileInputStreamClass properties

// MARK: no FileInputStreamClass signals


// MARK: FileInputStreamClass Record: FileInputStreamClassProtocol extension (methods and fields)
public extension FileInputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileInputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GFileInputStreamClass> { return ptr.assumingMemoryBound(to: GFileInputStreamClass.self) }


    var parentClass: GInputStreamClass {
        get {
            let rv: GInputStreamClass = cast(_ptr.pointee.parent_class)
            return rv
        }
    }

    // var tell is unavailable because tell is void

    // var canSeek is unavailable because can_seek is void

    // var seek is unavailable because seek is void

    // var queryInfo is unavailable because query_info is void

    // var queryInfoAsync is unavailable because query_info_async is void

    // var queryInfoFinish is unavailable because query_info_finish is void

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

    // var GReserved4 is unavailable because _g_reserved4 is void

    // var GReserved5 is unavailable because _g_reserved5 is void

}



// MARK: - FileInputStreamPrivate Record

/// The `FileInputStreamPrivateProtocol` protocol exposes the methods and properties of an underlying `GFileInputStreamPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileInputStreamPrivate`.
/// Alternatively, use `FileInputStreamPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FileInputStreamPrivateProtocol {
        /// Untyped pointer to the underlying `GFileInputStreamPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GFileInputStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GFileInputStreamPrivate> { get }
}

/// The `FileInputStreamPrivateRef` type acts as a lightweight Swift reference to an underlying `GFileInputStreamPrivate` instance.
/// It exposes methods that can operate on this data type through `FileInputStreamPrivateProtocol` conformance.
/// Use `FileInputStreamPrivateRef` only as an `unowned` reference to an existing `GFileInputStreamPrivate` instance.
///

public struct FileInputStreamPrivateRef: FileInputStreamPrivateProtocol {
        /// Untyped pointer to the underlying `GFileInputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FileInputStreamPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GFileInputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileInputStreamPrivateProtocol`
    init<T: FileInputStreamPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FileInputStreamPrivate` type acts as an owner of an underlying `GFileInputStreamPrivate` instance.
/// It provides the methods that can operate on this data type through `FileInputStreamPrivateProtocol` conformance.
/// Use `FileInputStreamPrivate` as a strong reference or owner of a `GFileInputStreamPrivate` instance.
///

open class FileInputStreamPrivate: FileInputStreamPrivateProtocol {
        /// Untyped pointer to the underlying `GFileInputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileInputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GFileInputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GFileInputStreamPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FileInputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GFileInputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GFileInputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `FileInputStreamPrivateProtocol`
    /// `GFileInputStreamPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FileInputStreamPrivateProtocol`
    public init<T: FileInputStreamPrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GFileInputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GFileInputStreamPrivate`.
    deinit {
        // no reference counting for GFileInputStreamPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GFileInputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamPrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GFileInputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GFileInputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GFileInputStreamPrivate, cannot ref(cast(_ptr))
    }



}

// MARK: no FileInputStreamPrivate properties

// MARK: no FileInputStreamPrivate signals


// MARK: FileInputStreamPrivate Record: FileInputStreamPrivateProtocol extension (methods and fields)
public extension FileInputStreamPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileInputStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GFileInputStreamPrivate> { return ptr.assumingMemoryBound(to: GFileInputStreamPrivate.self) }



}



// MARK: - FileMonitorClass Record

/// The `FileMonitorClassProtocol` protocol exposes the methods and properties of an underlying `GFileMonitorClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileMonitorClass`.
/// Alternatively, use `FileMonitorClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FileMonitorClassProtocol {
        /// Untyped pointer to the underlying `GFileMonitorClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GFileMonitorClass` instance.
    var _ptr: UnsafeMutablePointer<GFileMonitorClass> { get }
}

/// The `FileMonitorClassRef` type acts as a lightweight Swift reference to an underlying `GFileMonitorClass` instance.
/// It exposes methods that can operate on this data type through `FileMonitorClassProtocol` conformance.
/// Use `FileMonitorClassRef` only as an `unowned` reference to an existing `GFileMonitorClass` instance.
///

public struct FileMonitorClassRef: FileMonitorClassProtocol {
        /// Untyped pointer to the underlying `GFileMonitorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FileMonitorClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GFileMonitorClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileMonitorClassProtocol`
    init<T: FileMonitorClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FileMonitorClass` type acts as an owner of an underlying `GFileMonitorClass` instance.
/// It provides the methods that can operate on this data type through `FileMonitorClassProtocol` conformance.
/// Use `FileMonitorClass` as a strong reference or owner of a `GFileMonitorClass` instance.
///

open class FileMonitorClass: FileMonitorClassProtocol {
        /// Untyped pointer to the underlying `GFileMonitorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileMonitorClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GFileMonitorClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GFileMonitorClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FileMonitorClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GFileMonitorClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GFileMonitorClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `FileMonitorClassProtocol`
    /// `GFileMonitorClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FileMonitorClassProtocol`
    public init<T: FileMonitorClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GFileMonitorClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GFileMonitorClass`.
    deinit {
        // no reference counting for GFileMonitorClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GFileMonitorClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GFileMonitorClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GFileMonitorClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GFileMonitorClass, cannot ref(cast(_ptr))
    }



}

// MARK: no FileMonitorClass properties

// MARK: no FileMonitorClass signals


// MARK: FileMonitorClass Record: FileMonitorClassProtocol extension (methods and fields)
public extension FileMonitorClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileMonitorClass` instance.
    var _ptr: UnsafeMutablePointer<GFileMonitorClass> { return ptr.assumingMemoryBound(to: GFileMonitorClass.self) }


    var parentClass: GObjectClass {
        get {
            let rv: GObjectClass = cast(_ptr.pointee.parent_class)
            return rv
        }
    }

    // var changed is unavailable because changed is void

    // var cancel is unavailable because cancel is void

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

    // var GReserved4 is unavailable because _g_reserved4 is void

    // var GReserved5 is unavailable because _g_reserved5 is void

}



// MARK: - FileMonitorPrivate Record

/// The `FileMonitorPrivateProtocol` protocol exposes the methods and properties of an underlying `GFileMonitorPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileMonitorPrivate`.
/// Alternatively, use `FileMonitorPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FileMonitorPrivateProtocol {
        /// Untyped pointer to the underlying `GFileMonitorPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GFileMonitorPrivate` instance.
    var _ptr: UnsafeMutablePointer<GFileMonitorPrivate> { get }
}

/// The `FileMonitorPrivateRef` type acts as a lightweight Swift reference to an underlying `GFileMonitorPrivate` instance.
/// It exposes methods that can operate on this data type through `FileMonitorPrivateProtocol` conformance.
/// Use `FileMonitorPrivateRef` only as an `unowned` reference to an existing `GFileMonitorPrivate` instance.
///

public struct FileMonitorPrivateRef: FileMonitorPrivateProtocol {
        /// Untyped pointer to the underlying `GFileMonitorPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FileMonitorPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GFileMonitorPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileMonitorPrivateProtocol`
    init<T: FileMonitorPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FileMonitorPrivate` type acts as an owner of an underlying `GFileMonitorPrivate` instance.
/// It provides the methods that can operate on this data type through `FileMonitorPrivateProtocol` conformance.
/// Use `FileMonitorPrivate` as a strong reference or owner of a `GFileMonitorPrivate` instance.
///

open class FileMonitorPrivate: FileMonitorPrivateProtocol {
        /// Untyped pointer to the underlying `GFileMonitorPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileMonitorPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GFileMonitorPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GFileMonitorPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FileMonitorPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GFileMonitorPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GFileMonitorPrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `FileMonitorPrivateProtocol`
    /// `GFileMonitorPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FileMonitorPrivateProtocol`
    public init<T: FileMonitorPrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GFileMonitorPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GFileMonitorPrivate`.
    deinit {
        // no reference counting for GFileMonitorPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GFileMonitorPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorPrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GFileMonitorPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GFileMonitorPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GFileMonitorPrivate, cannot ref(cast(_ptr))
    }



}

// MARK: no FileMonitorPrivate properties

// MARK: no FileMonitorPrivate signals


// MARK: FileMonitorPrivate Record: FileMonitorPrivateProtocol extension (methods and fields)
public extension FileMonitorPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileMonitorPrivate` instance.
    var _ptr: UnsafeMutablePointer<GFileMonitorPrivate> { return ptr.assumingMemoryBound(to: GFileMonitorPrivate.self) }



}



// MARK: - FileOutputStreamClass Record

/// The `FileOutputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GFileOutputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileOutputStreamClass`.
/// Alternatively, use `FileOutputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FileOutputStreamClassProtocol {
        /// Untyped pointer to the underlying `GFileOutputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GFileOutputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GFileOutputStreamClass> { get }
}

/// The `FileOutputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GFileOutputStreamClass` instance.
/// It exposes methods that can operate on this data type through `FileOutputStreamClassProtocol` conformance.
/// Use `FileOutputStreamClassRef` only as an `unowned` reference to an existing `GFileOutputStreamClass` instance.
///

public struct FileOutputStreamClassRef: FileOutputStreamClassProtocol {
        /// Untyped pointer to the underlying `GFileOutputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FileOutputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GFileOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileOutputStreamClassProtocol`
    init<T: FileOutputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FileOutputStreamClass` type acts as an owner of an underlying `GFileOutputStreamClass` instance.
/// It provides the methods that can operate on this data type through `FileOutputStreamClassProtocol` conformance.
/// Use `FileOutputStreamClass` as a strong reference or owner of a `GFileOutputStreamClass` instance.
///

open class FileOutputStreamClass: FileOutputStreamClassProtocol {
        /// Untyped pointer to the underlying `GFileOutputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileOutputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GFileOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GFileOutputStreamClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FileOutputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GFileOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GFileOutputStreamClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `FileOutputStreamClassProtocol`
    /// `GFileOutputStreamClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FileOutputStreamClassProtocol`
    public init<T: FileOutputStreamClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GFileOutputStreamClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GFileOutputStreamClass`.
    deinit {
        // no reference counting for GFileOutputStreamClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GFileOutputStreamClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GFileOutputStreamClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GFileOutputStreamClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GFileOutputStreamClass, cannot ref(cast(_ptr))
    }



}

// MARK: no FileOutputStreamClass properties

// MARK: no FileOutputStreamClass signals


// MARK: FileOutputStreamClass Record: FileOutputStreamClassProtocol extension (methods and fields)
public extension FileOutputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileOutputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GFileOutputStreamClass> { return ptr.assumingMemoryBound(to: GFileOutputStreamClass.self) }


    var parentClass: GOutputStreamClass {
        get {
            let rv: GOutputStreamClass = cast(_ptr.pointee.parent_class)
            return rv
        }
    }

    // var tell is unavailable because tell is void

    // var canSeek is unavailable because can_seek is void

    // var seek is unavailable because seek is void

    // var canTruncate is unavailable because can_truncate is void

    // var truncateFn is unavailable because truncate_fn is void

    // var queryInfo is unavailable because query_info is void

    // var queryInfoAsync is unavailable because query_info_async is void

    // var queryInfoFinish is unavailable because query_info_finish is void

    // var getEtag is unavailable because get_etag is void

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

    // var GReserved4 is unavailable because _g_reserved4 is void

    // var GReserved5 is unavailable because _g_reserved5 is void

}



// MARK: - FileOutputStreamPrivate Record

/// The `FileOutputStreamPrivateProtocol` protocol exposes the methods and properties of an underlying `GFileOutputStreamPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileOutputStreamPrivate`.
/// Alternatively, use `FileOutputStreamPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FileOutputStreamPrivateProtocol {
        /// Untyped pointer to the underlying `GFileOutputStreamPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GFileOutputStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GFileOutputStreamPrivate> { get }
}

/// The `FileOutputStreamPrivateRef` type acts as a lightweight Swift reference to an underlying `GFileOutputStreamPrivate` instance.
/// It exposes methods that can operate on this data type through `FileOutputStreamPrivateProtocol` conformance.
/// Use `FileOutputStreamPrivateRef` only as an `unowned` reference to an existing `GFileOutputStreamPrivate` instance.
///

public struct FileOutputStreamPrivateRef: FileOutputStreamPrivateProtocol {
        /// Untyped pointer to the underlying `GFileOutputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FileOutputStreamPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GFileOutputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileOutputStreamPrivateProtocol`
    init<T: FileOutputStreamPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FileOutputStreamPrivate` type acts as an owner of an underlying `GFileOutputStreamPrivate` instance.
/// It provides the methods that can operate on this data type through `FileOutputStreamPrivateProtocol` conformance.
/// Use `FileOutputStreamPrivate` as a strong reference or owner of a `GFileOutputStreamPrivate` instance.
///

open class FileOutputStreamPrivate: FileOutputStreamPrivateProtocol {
        /// Untyped pointer to the underlying `GFileOutputStreamPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileOutputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GFileOutputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GFileOutputStreamPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FileOutputStreamPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GFileOutputStreamPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GFileOutputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `FileOutputStreamPrivateProtocol`
    /// `GFileOutputStreamPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FileOutputStreamPrivateProtocol`
    public init<T: FileOutputStreamPrivateProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GFileOutputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GFileOutputStreamPrivate`.
    deinit {
        // no reference counting for GFileOutputStreamPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GFileOutputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamPrivateProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GFileOutputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GFileOutputStreamPrivate, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GFileOutputStreamPrivate, cannot ref(cast(_ptr))
    }



}

// MARK: no FileOutputStreamPrivate properties

// MARK: no FileOutputStreamPrivate signals


// MARK: FileOutputStreamPrivate Record: FileOutputStreamPrivateProtocol extension (methods and fields)
public extension FileOutputStreamPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileOutputStreamPrivate` instance.
    var _ptr: UnsafeMutablePointer<GFileOutputStreamPrivate> { return ptr.assumingMemoryBound(to: GFileOutputStreamPrivate.self) }



}



// MARK: - FilenameCompleterClass Record

/// The `FilenameCompleterClassProtocol` protocol exposes the methods and properties of an underlying `GFilenameCompleterClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FilenameCompleterClass`.
/// Alternatively, use `FilenameCompleterClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FilenameCompleterClassProtocol {
        /// Untyped pointer to the underlying `GFilenameCompleterClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GFilenameCompleterClass` instance.
    var _ptr: UnsafeMutablePointer<GFilenameCompleterClass> { get }
}

/// The `FilenameCompleterClassRef` type acts as a lightweight Swift reference to an underlying `GFilenameCompleterClass` instance.
/// It exposes methods that can operate on this data type through `FilenameCompleterClassProtocol` conformance.
/// Use `FilenameCompleterClassRef` only as an `unowned` reference to an existing `GFilenameCompleterClass` instance.
///

public struct FilenameCompleterClassRef: FilenameCompleterClassProtocol {
        /// Untyped pointer to the underlying `GFilenameCompleterClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FilenameCompleterClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GFilenameCompleterClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FilenameCompleterClassProtocol`
    init<T: FilenameCompleterClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FilenameCompleterClass` type acts as an owner of an underlying `GFilenameCompleterClass` instance.
/// It provides the methods that can operate on this data type through `FilenameCompleterClassProtocol` conformance.
/// Use `FilenameCompleterClass` as a strong reference or owner of a `GFilenameCompleterClass` instance.
///

open class FilenameCompleterClass: FilenameCompleterClassProtocol {
        /// Untyped pointer to the underlying `GFilenameCompleterClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FilenameCompleterClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GFilenameCompleterClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GFilenameCompleterClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FilenameCompleterClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GFilenameCompleterClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GFilenameCompleterClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `FilenameCompleterClassProtocol`
    /// `GFilenameCompleterClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FilenameCompleterClassProtocol`
    public init<T: FilenameCompleterClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GFilenameCompleterClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GFilenameCompleterClass`.
    deinit {
        // no reference counting for GFilenameCompleterClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GFilenameCompleterClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GFilenameCompleterClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GFilenameCompleterClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GFilenameCompleterClass, cannot ref(cast(_ptr))
    }



}

// MARK: no FilenameCompleterClass properties

// MARK: no FilenameCompleterClass signals


// MARK: FilenameCompleterClass Record: FilenameCompleterClassProtocol extension (methods and fields)
public extension FilenameCompleterClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFilenameCompleterClass` instance.
    var _ptr: UnsafeMutablePointer<GFilenameCompleterClass> { return ptr.assumingMemoryBound(to: GFilenameCompleterClass.self) }


    var parentClass: GObjectClass {
        get {
            let rv: GObjectClass = cast(_ptr.pointee.parent_class)
            return rv
        }
    }

    // var gotCompletionData is unavailable because got_completion_data is void

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

}



// MARK: - FilterInputStreamClass Record

/// The `FilterInputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GFilterInputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FilterInputStreamClass`.
/// Alternatively, use `FilterInputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FilterInputStreamClassProtocol {
        /// Untyped pointer to the underlying `GFilterInputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GFilterInputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GFilterInputStreamClass> { get }
}

/// The `FilterInputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GFilterInputStreamClass` instance.
/// It exposes methods that can operate on this data type through `FilterInputStreamClassProtocol` conformance.
/// Use `FilterInputStreamClassRef` only as an `unowned` reference to an existing `GFilterInputStreamClass` instance.
///

public struct FilterInputStreamClassRef: FilterInputStreamClassProtocol {
        /// Untyped pointer to the underlying `GFilterInputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FilterInputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GFilterInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FilterInputStreamClassProtocol`
    init<T: FilterInputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FilterInputStreamClass` type acts as an owner of an underlying `GFilterInputStreamClass` instance.
/// It provides the methods that can operate on this data type through `FilterInputStreamClassProtocol` conformance.
/// Use `FilterInputStreamClass` as a strong reference or owner of a `GFilterInputStreamClass` instance.
///

open class FilterInputStreamClass: FilterInputStreamClassProtocol {
        /// Untyped pointer to the underlying `GFilterInputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FilterInputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GFilterInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GFilterInputStreamClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FilterInputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GFilterInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GFilterInputStreamClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `FilterInputStreamClassProtocol`
    /// `GFilterInputStreamClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FilterInputStreamClassProtocol`
    public init<T: FilterInputStreamClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GFilterInputStreamClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GFilterInputStreamClass`.
    deinit {
        // no reference counting for GFilterInputStreamClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GFilterInputStreamClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GFilterInputStreamClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GFilterInputStreamClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GFilterInputStreamClass, cannot ref(cast(_ptr))
    }



}

// MARK: no FilterInputStreamClass properties

// MARK: no FilterInputStreamClass signals


// MARK: FilterInputStreamClass Record: FilterInputStreamClassProtocol extension (methods and fields)
public extension FilterInputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFilterInputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GFilterInputStreamClass> { return ptr.assumingMemoryBound(to: GFilterInputStreamClass.self) }


    var parentClass: GInputStreamClass {
        get {
            let rv: GInputStreamClass = cast(_ptr.pointee.parent_class)
            return rv
        }
    }

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

}



// MARK: - FilterOutputStreamClass Record

/// The `FilterOutputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GFilterOutputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FilterOutputStreamClass`.
/// Alternatively, use `FilterOutputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FilterOutputStreamClassProtocol {
        /// Untyped pointer to the underlying `GFilterOutputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GFilterOutputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GFilterOutputStreamClass> { get }
}

/// The `FilterOutputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GFilterOutputStreamClass` instance.
/// It exposes methods that can operate on this data type through `FilterOutputStreamClassProtocol` conformance.
/// Use `FilterOutputStreamClassRef` only as an `unowned` reference to an existing `GFilterOutputStreamClass` instance.
///

public struct FilterOutputStreamClassRef: FilterOutputStreamClassProtocol {
        /// Untyped pointer to the underlying `GFilterOutputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FilterOutputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GFilterOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FilterOutputStreamClassProtocol`
    init<T: FilterOutputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FilterOutputStreamClass` type acts as an owner of an underlying `GFilterOutputStreamClass` instance.
/// It provides the methods that can operate on this data type through `FilterOutputStreamClassProtocol` conformance.
/// Use `FilterOutputStreamClass` as a strong reference or owner of a `GFilterOutputStreamClass` instance.
///

open class FilterOutputStreamClass: FilterOutputStreamClassProtocol {
        /// Untyped pointer to the underlying `GFilterOutputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FilterOutputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GFilterOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GFilterOutputStreamClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FilterOutputStreamClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GFilterOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GFilterOutputStreamClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `FilterOutputStreamClassProtocol`
    /// `GFilterOutputStreamClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FilterOutputStreamClassProtocol`
    public init<T: FilterOutputStreamClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GFilterOutputStreamClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GFilterOutputStreamClass`.
    deinit {
        // no reference counting for GFilterOutputStreamClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GFilterOutputStreamClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GFilterOutputStreamClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GFilterOutputStreamClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GFilterOutputStreamClass, cannot ref(cast(_ptr))
    }



}

// MARK: no FilterOutputStreamClass properties

// MARK: no FilterOutputStreamClass signals


// MARK: FilterOutputStreamClass Record: FilterOutputStreamClassProtocol extension (methods and fields)
public extension FilterOutputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFilterOutputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GFilterOutputStreamClass> { return ptr.assumingMemoryBound(to: GFilterOutputStreamClass.self) }


    var parentClass: GOutputStreamClass {
        get {
            let rv: GOutputStreamClass = cast(_ptr.pointee.parent_class)
            return rv
        }
    }

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

}



// MARK: - IOExtension Record

/// The `IOExtensionProtocol` protocol exposes the methods and properties of an underlying `GIOExtension` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `IOExtension`.
/// Alternatively, use `IOExtensionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GIOExtension` is an opaque data structure and can only be accessed
/// using the following functions.
public protocol IOExtensionProtocol {
        /// Untyped pointer to the underlying `GIOExtension` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GIOExtension` instance.
    var _ptr: UnsafeMutablePointer<GIOExtension> { get }
}

/// The `IOExtensionRef` type acts as a lightweight Swift reference to an underlying `GIOExtension` instance.
/// It exposes methods that can operate on this data type through `IOExtensionProtocol` conformance.
/// Use `IOExtensionRef` only as an `unowned` reference to an existing `GIOExtension` instance.
///
/// `GIOExtension` is an opaque data structure and can only be accessed
/// using the following functions.
public struct IOExtensionRef: IOExtensionProtocol {
        /// Untyped pointer to the underlying `GIOExtension` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension IOExtensionRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GIOExtension>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `IOExtensionProtocol`
    init<T: IOExtensionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `IOExtension` type acts as an owner of an underlying `GIOExtension` instance.
/// It provides the methods that can operate on this data type through `IOExtensionProtocol` conformance.
/// Use `IOExtension` as a strong reference or owner of a `GIOExtension` instance.
///
/// `GIOExtension` is an opaque data structure and can only be accessed
/// using the following functions.
open class IOExtension: IOExtensionProtocol {
        /// Untyped pointer to the underlying `GIOExtension` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOExtension` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GIOExtension>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GIOExtension` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `IOExtension` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GIOExtension>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GIOExtension, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `IOExtensionProtocol`
    /// `GIOExtension` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `IOExtensionProtocol`
    public init<T: IOExtensionProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GIOExtension, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GIOExtension`.
    deinit {
        // no reference counting for GIOExtension, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GIOExtension, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GIOExtension, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GIOExtension, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GIOExtension, cannot ref(cast(_ptr))
    }



}

// MARK: no IOExtension properties

// MARK: no IOExtension signals


// MARK: IOExtension Record: IOExtensionProtocol extension (methods and fields)
public extension IOExtensionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GIOExtension` instance.
    var _ptr: UnsafeMutablePointer<GIOExtension> { return ptr.assumingMemoryBound(to: GIOExtension.self) }

    /// Gets the name under which `extension` was registered.
    /// 
    /// Note that the same type may be registered as extension
    /// for multiple extension points, under different names.
    func getName() -> String! {
        let rv: String! = cast(g_io_extension_get_name(cast(_ptr)))
        return cast(rv)
    }

    /// Gets the priority with which `extension` was registered.
    func getPriority() -> Int {
        let rv: Int = cast(g_io_extension_get_priority(cast(_ptr)))
        return Int(rv)
    }

    /// Gets the type associated with `extension`.
    func getType() -> GType {
        let rv = g_io_extension_get_type(cast(_ptr))
        return cast(rv)
    }

    /// Gets a reference to the class for the type that is
    /// associated with `extension`.
    func refClass() -> UnsafeMutablePointer<GTypeClass>! {
        let rv: UnsafeMutablePointer<GTypeClass>! = cast(g_io_extension_ref_class(cast(_ptr)))
        return cast(rv)
    }
    /// Gets the name under which `extension` was registered.
    /// 
    /// Note that the same type may be registered as extension
    /// for multiple extension points, under different names.
    var name: String! {
        /// Gets the name under which `extension` was registered.
        /// 
        /// Note that the same type may be registered as extension
        /// for multiple extension points, under different names.
        get {
            let rv: String! = cast(g_io_extension_get_name(cast(_ptr)))
            return cast(rv)
        }
    }

    /// Gets the priority with which `extension` was registered.
    var priority: Int {
        /// Gets the priority with which `extension` was registered.
        get {
            let rv: Int = cast(g_io_extension_get_priority(cast(_ptr)))
            return Int(rv)
        }
    }

    /// Gets the type associated with `extension`.
    var type: GType {
        /// Gets the type associated with `extension`.
        get {
            let rv = g_io_extension_get_type(cast(_ptr))
            return cast(rv)
        }
    }


}



