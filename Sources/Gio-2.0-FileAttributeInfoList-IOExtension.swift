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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFileAttributeInfoList` instance.
    var file_attribute_info_list_ptr: UnsafeMutablePointer<GFileAttributeInfoList>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension FileAttributeInfoListRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GFileAttributeInfoList>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GFileAttributeInfoList>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GFileAttributeInfoList>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GFileAttributeInfoList>?) {
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

    /// Reference intialiser for a related type that implements `FileAttributeInfoListProtocol`
    @inlinable init<T: FileAttributeInfoListProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoListProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoListProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoListProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoListProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoListProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new file attribute info list.
    @inlinable init() {
        let rv = g_file_attribute_info_list_new()
        ptr = UnsafeMutableRawPointer(rv)
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
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileAttributeInfoList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GFileAttributeInfoList>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileAttributeInfoList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GFileAttributeInfoList>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileAttributeInfoList` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileAttributeInfoList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileAttributeInfoList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GFileAttributeInfoList>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileAttributeInfoList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GFileAttributeInfoList>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GFileAttributeInfoList`.
    /// i.e., ownership is transferred to the `FileAttributeInfoList` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GFileAttributeInfoList>) {
        ptr = UnsafeMutableRawPointer(op)
        g_file_attribute_info_list_ref(ptr.assumingMemoryBound(to: GFileAttributeInfoList.self))
    }

    /// Reference intialiser for a related type that implements `FileAttributeInfoListProtocol`
    /// Will retain `GFileAttributeInfoList`.
    /// - Parameter other: an instance of a related type that implements `FileAttributeInfoListProtocol`
    @inlinable public init<T: FileAttributeInfoListProtocol>(_ other: T) {
        ptr = other.ptr
        g_file_attribute_info_list_ref(ptr.assumingMemoryBound(to: GFileAttributeInfoList.self))
    }

    /// Releases the underlying `GFileAttributeInfoList` instance using `g_file_attribute_info_list_unref`.
    deinit {
        g_file_attribute_info_list_unref(ptr.assumingMemoryBound(to: GFileAttributeInfoList.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoListProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoListProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_file_attribute_info_list_ref(ptr.assumingMemoryBound(to: GFileAttributeInfoList.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoListProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoListProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_file_attribute_info_list_ref(ptr.assumingMemoryBound(to: GFileAttributeInfoList.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoListProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoListProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_file_attribute_info_list_ref(ptr.assumingMemoryBound(to: GFileAttributeInfoList.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoListProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeInfoListProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_file_attribute_info_list_ref(ptr.assumingMemoryBound(to: GFileAttributeInfoList.self))
    }

    /// Creates a new file attribute info list.
    @inlinable public init() {
        let rv = g_file_attribute_info_list_new()
        ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no FileAttributeInfoList properties

// MARK: no FileAttributeInfoList signals

// MARK: FileAttributeInfoList has no signals
// MARK: FileAttributeInfoList Record: FileAttributeInfoListProtocol extension (methods and fields)
public extension FileAttributeInfoListProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileAttributeInfoList` instance.
    @inlinable var file_attribute_info_list_ptr: UnsafeMutablePointer<GFileAttributeInfoList>! { return ptr?.assumingMemoryBound(to: GFileAttributeInfoList.self) }

    /// Adds a new attribute with `name` to the `list`, setting
    /// its `type` and `flags`.
    @inlinable func add(name: UnsafePointer<CChar>!, type: GFileAttributeType, flags: FileAttributeInfoFlags) {
        g_file_attribute_info_list_add(file_attribute_info_list_ptr, name, type, flags.value)
    
    }

    /// Makes a duplicate of a file attribute info list.
    @inlinable func dup() -> FileAttributeInfoListRef! {
        guard let rv = FileAttributeInfoListRef(gconstpointer: gconstpointer(g_file_attribute_info_list_dup(file_attribute_info_list_ptr))) else { return nil }
        return rv
    }

    /// Gets the file attribute with the name `name` from `list`.
    @inlinable func lookup(name: UnsafePointer<CChar>!) -> FileAttributeInfoRef! {
        let rv = FileAttributeInfoRef(gconstpointer: gconstpointer(g_file_attribute_info_list_lookup(file_attribute_info_list_ptr, name)))
        return rv
    }

    /// References a file attribute info list.
    @discardableResult @inlinable func ref() -> FileAttributeInfoListRef! {
        guard let rv = FileAttributeInfoListRef(gconstpointer: gconstpointer(g_file_attribute_info_list_ref(file_attribute_info_list_ptr))) else { return nil }
        return rv
    }

    /// Removes a reference from the given `list`. If the reference count
    /// falls to zero, the `list` is deleted.
    @inlinable func unref() {
        g_file_attribute_info_list_unref(file_attribute_info_list_ptr)
    
    }

    /// an array of `GFileAttributeInfos`.
    @inlinable var infos: FileAttributeInfoRef! {
        /// an array of `GFileAttributeInfos`.
        get {
            let rv = FileAttributeInfoRef(gconstpointer: gconstpointer(file_attribute_info_list_ptr.pointee.infos))
            return rv
        }
        /// an array of `GFileAttributeInfos`.
         set {
            file_attribute_info_list_ptr.pointee.infos = UnsafeMutablePointer<GFileAttributeInfo>(newValue._ptr)
        }
    }

    /// the number of values in the array.
    @inlinable var nInfos: gint {
        /// the number of values in the array.
        get {
            let rv = file_attribute_info_list_ptr.pointee.n_infos
            return rv
        }
        /// the number of values in the array.
         set {
            file_attribute_info_list_ptr.pointee.n_infos = newValue
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFileAttributeMatcher` instance.
    var file_attribute_matcher_ptr: UnsafeMutablePointer<GFileAttributeMatcher>! { get }

}

/// The `FileAttributeMatcherRef` type acts as a lightweight Swift reference to an underlying `GFileAttributeMatcher` instance.
/// It exposes methods that can operate on this data type through `FileAttributeMatcherProtocol` conformance.
/// Use `FileAttributeMatcherRef` only as an `unowned` reference to an existing `GFileAttributeMatcher` instance.
///
/// Determines if a string matches a file attribute.
public struct FileAttributeMatcherRef: FileAttributeMatcherProtocol {
        /// Untyped pointer to the underlying `GFileAttributeMatcher` instance.
    /// For type-safe access, use the generated, typed pointer `file_attribute_matcher_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FileAttributeMatcherRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GFileAttributeMatcher>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GFileAttributeMatcher>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GFileAttributeMatcher>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GFileAttributeMatcher>?) {
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

    /// Reference intialiser for a related type that implements `FileAttributeMatcherProtocol`
    @inlinable init<T: FileAttributeMatcherProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeMatcherProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeMatcherProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeMatcherProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeMatcherProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeMatcherProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    @inlinable init( attributes: UnsafePointer<CChar>!) {
        let rv = g_file_attribute_matcher_new(attributes)
        ptr = UnsafeMutableRawPointer(rv)
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
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileAttributeMatcher` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GFileAttributeMatcher>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileAttributeMatcher` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GFileAttributeMatcher>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileAttributeMatcher` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileAttributeMatcher` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileAttributeMatcher` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GFileAttributeMatcher>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileAttributeMatcher` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GFileAttributeMatcher>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GFileAttributeMatcher`.
    /// i.e., ownership is transferred to the `FileAttributeMatcher` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GFileAttributeMatcher>) {
        ptr = UnsafeMutableRawPointer(op)
        g_file_attribute_matcher_ref(ptr.assumingMemoryBound(to: GFileAttributeMatcher.self))
    }

    /// Reference intialiser for a related type that implements `FileAttributeMatcherProtocol`
    /// Will retain `GFileAttributeMatcher`.
    /// - Parameter other: an instance of a related type that implements `FileAttributeMatcherProtocol`
    @inlinable public init<T: FileAttributeMatcherProtocol>(_ other: T) {
        ptr = other.ptr
        g_file_attribute_matcher_ref(ptr.assumingMemoryBound(to: GFileAttributeMatcher.self))
    }

    /// Releases the underlying `GFileAttributeMatcher` instance using `g_file_attribute_matcher_unref`.
    deinit {
        g_file_attribute_matcher_unref(ptr.assumingMemoryBound(to: GFileAttributeMatcher.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeMatcherProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeMatcherProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_file_attribute_matcher_ref(ptr.assumingMemoryBound(to: GFileAttributeMatcher.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeMatcherProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeMatcherProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_file_attribute_matcher_ref(ptr.assumingMemoryBound(to: GFileAttributeMatcher.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeMatcherProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeMatcherProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_file_attribute_matcher_ref(ptr.assumingMemoryBound(to: GFileAttributeMatcher.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeMatcherProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileAttributeMatcherProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_file_attribute_matcher_ref(ptr.assumingMemoryBound(to: GFileAttributeMatcher.self))
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
    @inlinable public init( attributes: UnsafePointer<CChar>!) {
        let rv = g_file_attribute_matcher_new(attributes)
        ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no FileAttributeMatcher properties

// MARK: no FileAttributeMatcher signals

// MARK: FileAttributeMatcher has no signals
// MARK: FileAttributeMatcher Record: FileAttributeMatcherProtocol extension (methods and fields)
public extension FileAttributeMatcherProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileAttributeMatcher` instance.
    @inlinable var file_attribute_matcher_ptr: UnsafeMutablePointer<GFileAttributeMatcher>! { return ptr?.assumingMemoryBound(to: GFileAttributeMatcher.self) }

    /// Checks if the matcher will match all of the keys in a given namespace.
    /// This will always return `true` if a wildcard character is in use (e.g. if
    /// matcher was created with "standard``*" and `ns` is "standard", or if matcher was created
    /// using "*" and namespace is anything.)
    /// 
    /// TODO: this is awkwardly worded.
    @inlinable func enumerateNamespace(ns: UnsafePointer<CChar>!) -> Bool {
        let rv = ((g_file_attribute_matcher_enumerate_namespace(file_attribute_matcher_ptr, ns)) != 0)
        return rv
    }

    /// Gets the next matched attribute from a `GFileAttributeMatcher`.
    @inlinable func enumerateNext() -> String! {
        let rv = g_file_attribute_matcher_enumerate_next(file_attribute_matcher_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Checks if an attribute will be matched by an attribute matcher. If
    /// the matcher was created with the "*" matching string, this function
    /// will always return `true`.
    @inlinable func matches(attribute: UnsafePointer<CChar>!) -> Bool {
        let rv = ((g_file_attribute_matcher_matches(file_attribute_matcher_ptr, attribute)) != 0)
        return rv
    }

    /// Checks if a attribute matcher only matches a given attribute. Always
    /// returns `false` if "*" was used when creating the matcher.
    @inlinable func matchesOnly(attribute: UnsafePointer<CChar>!) -> Bool {
        let rv = ((g_file_attribute_matcher_matches_only(file_attribute_matcher_ptr, attribute)) != 0)
        return rv
    }

    /// References a file attribute matcher.
    @discardableResult @inlinable func ref() -> FileAttributeMatcherRef! {
        guard let rv = FileAttributeMatcherRef(gconstpointer: gconstpointer(g_file_attribute_matcher_ref(file_attribute_matcher_ptr))) else { return nil }
        return rv
    }

    /// Subtracts all attributes of `subtract` from `matcher` and returns
    /// a matcher that supports those attributes.
    /// 
    /// Note that currently it is not possible to remove a single
    /// attribute when the `matcher` matches the whole namespace - or remove
    /// a namespace or attribute when the matcher matches everything. This
    /// is a limitation of the current implementation, but may be fixed
    /// in the future.
    @inlinable func subtract<FileAttributeMatcherT: FileAttributeMatcherProtocol>(subtract: FileAttributeMatcherT) -> FileAttributeMatcherRef! {
        guard let rv = FileAttributeMatcherRef(gconstpointer: gconstpointer(g_file_attribute_matcher_subtract(file_attribute_matcher_ptr, subtract.file_attribute_matcher_ptr))) else { return nil }
        return rv
    }

    /// Prints what the matcher is matching against. The format will be
    /// equal to the format passed to `g_file_attribute_matcher_new()`.
    /// The output however, might not be identical, as the matcher may
    /// decide to use a different order or omit needless parts.
    @inlinable func toString() -> String! {
        let rv = g_file_attribute_matcher_to_string(file_attribute_matcher_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Unreferences `matcher`. If the reference count falls below 1,
    /// the `matcher` is automatically freed.
    @inlinable func unref() {
        g_file_attribute_matcher_unref(file_attribute_matcher_ptr)
    
    }


}



/// Metatype/GType declaration for FileDescriptorBased
public extension FileDescriptorBasedIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `FileDescriptorBased`
    static var metatypeReference: GType { g_file_descriptor_based_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GFileDescriptorBasedIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GFileDescriptorBasedIface.self) }
    
    static var metatype: GFileDescriptorBasedIface? { metatypePointer?.pointee } 
    
    static var wrapper: FileDescriptorBasedIfaceRef? { FileDescriptorBasedIfaceRef(metatypePointer) }
    
    
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFileDescriptorBasedIface` instance.
    var _ptr: UnsafeMutablePointer<GFileDescriptorBasedIface>! { get }

}

/// The `FileDescriptorBasedIfaceRef` type acts as a lightweight Swift reference to an underlying `GFileDescriptorBasedIface` instance.
/// It exposes methods that can operate on this data type through `FileDescriptorBasedIfaceProtocol` conformance.
/// Use `FileDescriptorBasedIfaceRef` only as an `unowned` reference to an existing `GFileDescriptorBasedIface` instance.
///
/// An interface for file descriptor based io objects.
public struct FileDescriptorBasedIfaceRef: FileDescriptorBasedIfaceProtocol {
        /// Untyped pointer to the underlying `GFileDescriptorBasedIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FileDescriptorBasedIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GFileDescriptorBasedIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GFileDescriptorBasedIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GFileDescriptorBasedIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GFileDescriptorBasedIface>?) {
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

    /// Reference intialiser for a related type that implements `FileDescriptorBasedIfaceProtocol`
    @inlinable init<T: FileDescriptorBasedIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileDescriptorBasedIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FileDescriptorBasedIface Record: FileDescriptorBasedIfaceProtocol extension (methods and fields)
public extension FileDescriptorBasedIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileDescriptorBasedIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GFileDescriptorBasedIface>! { return ptr?.assumingMemoryBound(to: GFileDescriptorBasedIface.self) }


    /// The parent interface.
    @inlinable var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var getFd is unavailable because get_fd is void

}



/// Metatype/GType declaration for FileEnumerator
public extension FileEnumeratorClassRef {
    
    /// This getter returns the GLib type identifier registered for `FileEnumerator`
    static var metatypeReference: GType { g_file_enumerator_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GFileEnumeratorClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GFileEnumeratorClass.self) }
    
    static var metatype: GFileEnumeratorClass? { metatypePointer?.pointee } 
    
    static var wrapper: FileEnumeratorClassRef? { FileEnumeratorClassRef(metatypePointer) }
    
    
}

// MARK: - FileEnumeratorClass Record

/// The `FileEnumeratorClassProtocol` protocol exposes the methods and properties of an underlying `GFileEnumeratorClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileEnumeratorClass`.
/// Alternatively, use `FileEnumeratorClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FileEnumeratorClassProtocol {
        /// Untyped pointer to the underlying `GFileEnumeratorClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFileEnumeratorClass` instance.
    var _ptr: UnsafeMutablePointer<GFileEnumeratorClass>! { get }

}

/// The `FileEnumeratorClassRef` type acts as a lightweight Swift reference to an underlying `GFileEnumeratorClass` instance.
/// It exposes methods that can operate on this data type through `FileEnumeratorClassProtocol` conformance.
/// Use `FileEnumeratorClassRef` only as an `unowned` reference to an existing `GFileEnumeratorClass` instance.
///

public struct FileEnumeratorClassRef: FileEnumeratorClassProtocol {
        /// Untyped pointer to the underlying `GFileEnumeratorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FileEnumeratorClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GFileEnumeratorClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GFileEnumeratorClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GFileEnumeratorClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GFileEnumeratorClass>?) {
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

    /// Reference intialiser for a related type that implements `FileEnumeratorClassProtocol`
    @inlinable init<T: FileEnumeratorClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FileEnumeratorClass Record: FileEnumeratorClassProtocol extension (methods and fields)
public extension FileEnumeratorClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileEnumeratorClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GFileEnumeratorClass>! { return ptr?.assumingMemoryBound(to: GFileEnumeratorClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
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



/// Metatype/GType declaration for FileIOStream
public extension FileIOStreamClassRef {
    
    /// This getter returns the GLib type identifier registered for `FileIOStream`
    static var metatypeReference: GType { g_file_io_stream_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GFileIOStreamClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GFileIOStreamClass.self) }
    
    static var metatype: GFileIOStreamClass? { metatypePointer?.pointee } 
    
    static var wrapper: FileIOStreamClassRef? { FileIOStreamClassRef(metatypePointer) }
    
    
}

// MARK: - FileIOStreamClass Record

/// The `FileIOStreamClassProtocol` protocol exposes the methods and properties of an underlying `GFileIOStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileIOStreamClass`.
/// Alternatively, use `FileIOStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FileIOStreamClassProtocol {
        /// Untyped pointer to the underlying `GFileIOStreamClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFileIOStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GFileIOStreamClass>! { get }

}

/// The `FileIOStreamClassRef` type acts as a lightweight Swift reference to an underlying `GFileIOStreamClass` instance.
/// It exposes methods that can operate on this data type through `FileIOStreamClassProtocol` conformance.
/// Use `FileIOStreamClassRef` only as an `unowned` reference to an existing `GFileIOStreamClass` instance.
///

public struct FileIOStreamClassRef: FileIOStreamClassProtocol {
        /// Untyped pointer to the underlying `GFileIOStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FileIOStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GFileIOStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GFileIOStreamClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GFileIOStreamClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GFileIOStreamClass>?) {
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

    /// Reference intialiser for a related type that implements `FileIOStreamClassProtocol`
    @inlinable init<T: FileIOStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIOStreamClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FileIOStreamClass Record: FileIOStreamClassProtocol extension (methods and fields)
public extension FileIOStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileIOStreamClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GFileIOStreamClass>! { return ptr?.assumingMemoryBound(to: GFileIOStreamClass.self) }


    @inlinable var parentClass: GIOStreamClass {
        get {
            let rv = _ptr.pointee.parent_class
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



/// Metatype/GType declaration for FileIcon
public extension FileIconClassRef {
    
    /// This getter returns the GLib type identifier registered for `FileIcon`
    static var metatypeReference: GType { g_file_icon_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GFileIconClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GFileIconClass.self) }
    
    static var metatype: GFileIconClass? { metatypePointer?.pointee } 
    
    static var wrapper: FileIconClassRef? { FileIconClassRef(metatypePointer) }
    
    
}

// MARK: - FileIconClass Record

/// The `FileIconClassProtocol` protocol exposes the methods and properties of an underlying `GFileIconClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileIconClass`.
/// Alternatively, use `FileIconClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FileIconClassProtocol {
        /// Untyped pointer to the underlying `GFileIconClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFileIconClass` instance.
    var _ptr: UnsafeMutablePointer<GFileIconClass>! { get }

}

/// The `FileIconClassRef` type acts as a lightweight Swift reference to an underlying `GFileIconClass` instance.
/// It exposes methods that can operate on this data type through `FileIconClassProtocol` conformance.
/// Use `FileIconClassRef` only as an `unowned` reference to an existing `GFileIconClass` instance.
///

public struct FileIconClassRef: FileIconClassProtocol {
        /// Untyped pointer to the underlying `GFileIconClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FileIconClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GFileIconClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GFileIconClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GFileIconClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GFileIconClass>?) {
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

    /// Reference intialiser for a related type that implements `FileIconClassProtocol`
    @inlinable init<T: FileIconClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIconClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FileIconClass Record: FileIconClassProtocol extension (methods and fields)
public extension FileIconClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileIconClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GFileIconClass>! { return ptr?.assumingMemoryBound(to: GFileIconClass.self) }



}



/// Metatype/GType declaration for File
public extension FileIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `File`
    static var metatypeReference: GType { g_file_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GFileIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GFileIface.self) }
    
    static var metatype: GFileIface? { metatypePointer?.pointee } 
    
    static var wrapper: FileIfaceRef? { FileIfaceRef(metatypePointer) }
    
    
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFileIface` instance.
    var _ptr: UnsafeMutablePointer<GFileIface>! { get }

}

/// The `FileIfaceRef` type acts as a lightweight Swift reference to an underlying `GFileIface` instance.
/// It exposes methods that can operate on this data type through `FileIfaceProtocol` conformance.
/// Use `FileIfaceRef` only as an `unowned` reference to an existing `GFileIface` instance.
///
/// An interface for writing VFS file handles.
public struct FileIfaceRef: FileIfaceProtocol {
        /// Untyped pointer to the underlying `GFileIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FileIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GFileIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GFileIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GFileIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GFileIface>?) {
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

    /// Reference intialiser for a related type that implements `FileIfaceProtocol`
    @inlinable init<T: FileIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FileIface Record: FileIfaceProtocol extension (methods and fields)
public extension FileIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GFileIface>! { return ptr?.assumingMemoryBound(to: GFileIface.self) }


    /// The parent interface.
    @inlinable var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.g_iface
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
    @inlinable var supportsThreadContexts: gboolean {
        /// a boolean that indicates whether the `GFile` implementation supports thread-default contexts. Since 2.22.
        get {
            let rv = _ptr.pointee.supports_thread_contexts
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



/// Metatype/GType declaration for FileInfo
public extension FileInfoClassRef {
    
    /// This getter returns the GLib type identifier registered for `FileInfo`
    static var metatypeReference: GType { g_file_info_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GFileInfoClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GFileInfoClass.self) }
    
    static var metatype: GFileInfoClass? { metatypePointer?.pointee } 
    
    static var wrapper: FileInfoClassRef? { FileInfoClassRef(metatypePointer) }
    
    
}

// MARK: - FileInfoClass Record

/// The `FileInfoClassProtocol` protocol exposes the methods and properties of an underlying `GFileInfoClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileInfoClass`.
/// Alternatively, use `FileInfoClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FileInfoClassProtocol {
        /// Untyped pointer to the underlying `GFileInfoClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFileInfoClass` instance.
    var _ptr: UnsafeMutablePointer<GFileInfoClass>! { get }

}

/// The `FileInfoClassRef` type acts as a lightweight Swift reference to an underlying `GFileInfoClass` instance.
/// It exposes methods that can operate on this data type through `FileInfoClassProtocol` conformance.
/// Use `FileInfoClassRef` only as an `unowned` reference to an existing `GFileInfoClass` instance.
///

public struct FileInfoClassRef: FileInfoClassProtocol {
        /// Untyped pointer to the underlying `GFileInfoClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FileInfoClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GFileInfoClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GFileInfoClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GFileInfoClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GFileInfoClass>?) {
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

    /// Reference intialiser for a related type that implements `FileInfoClassProtocol`
    @inlinable init<T: FileInfoClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInfoClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FileInfoClass Record: FileInfoClassProtocol extension (methods and fields)
public extension FileInfoClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileInfoClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GFileInfoClass>! { return ptr?.assumingMemoryBound(to: GFileInfoClass.self) }



}



/// Metatype/GType declaration for FileInputStream
public extension FileInputStreamClassRef {
    
    /// This getter returns the GLib type identifier registered for `FileInputStream`
    static var metatypeReference: GType { g_file_input_stream_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GFileInputStreamClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GFileInputStreamClass.self) }
    
    static var metatype: GFileInputStreamClass? { metatypePointer?.pointee } 
    
    static var wrapper: FileInputStreamClassRef? { FileInputStreamClassRef(metatypePointer) }
    
    
}

// MARK: - FileInputStreamClass Record

/// The `FileInputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GFileInputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileInputStreamClass`.
/// Alternatively, use `FileInputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FileInputStreamClassProtocol {
        /// Untyped pointer to the underlying `GFileInputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFileInputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GFileInputStreamClass>! { get }

}

/// The `FileInputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GFileInputStreamClass` instance.
/// It exposes methods that can operate on this data type through `FileInputStreamClassProtocol` conformance.
/// Use `FileInputStreamClassRef` only as an `unowned` reference to an existing `GFileInputStreamClass` instance.
///

public struct FileInputStreamClassRef: FileInputStreamClassProtocol {
        /// Untyped pointer to the underlying `GFileInputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FileInputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GFileInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GFileInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GFileInputStreamClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GFileInputStreamClass>?) {
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

    /// Reference intialiser for a related type that implements `FileInputStreamClassProtocol`
    @inlinable init<T: FileInputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileInputStreamClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FileInputStreamClass Record: FileInputStreamClassProtocol extension (methods and fields)
public extension FileInputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileInputStreamClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GFileInputStreamClass>! { return ptr?.assumingMemoryBound(to: GFileInputStreamClass.self) }


    @inlinable var parentClass: GInputStreamClass {
        get {
            let rv = _ptr.pointee.parent_class
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



/// Metatype/GType declaration for FileMonitor
public extension FileMonitorClassRef {
    
    /// This getter returns the GLib type identifier registered for `FileMonitor`
    static var metatypeReference: GType { g_file_monitor_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GFileMonitorClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GFileMonitorClass.self) }
    
    static var metatype: GFileMonitorClass? { metatypePointer?.pointee } 
    
    static var wrapper: FileMonitorClassRef? { FileMonitorClassRef(metatypePointer) }
    
    
}

// MARK: - FileMonitorClass Record

/// The `FileMonitorClassProtocol` protocol exposes the methods and properties of an underlying `GFileMonitorClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileMonitorClass`.
/// Alternatively, use `FileMonitorClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FileMonitorClassProtocol {
        /// Untyped pointer to the underlying `GFileMonitorClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFileMonitorClass` instance.
    var _ptr: UnsafeMutablePointer<GFileMonitorClass>! { get }

}

/// The `FileMonitorClassRef` type acts as a lightweight Swift reference to an underlying `GFileMonitorClass` instance.
/// It exposes methods that can operate on this data type through `FileMonitorClassProtocol` conformance.
/// Use `FileMonitorClassRef` only as an `unowned` reference to an existing `GFileMonitorClass` instance.
///

public struct FileMonitorClassRef: FileMonitorClassProtocol {
        /// Untyped pointer to the underlying `GFileMonitorClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FileMonitorClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GFileMonitorClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GFileMonitorClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GFileMonitorClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GFileMonitorClass>?) {
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

    /// Reference intialiser for a related type that implements `FileMonitorClassProtocol`
    @inlinable init<T: FileMonitorClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileMonitorClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FileMonitorClass Record: FileMonitorClassProtocol extension (methods and fields)
public extension FileMonitorClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileMonitorClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GFileMonitorClass>! { return ptr?.assumingMemoryBound(to: GFileMonitorClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
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



/// Metatype/GType declaration for FileOutputStream
public extension FileOutputStreamClassRef {
    
    /// This getter returns the GLib type identifier registered for `FileOutputStream`
    static var metatypeReference: GType { g_file_output_stream_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GFileOutputStreamClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GFileOutputStreamClass.self) }
    
    static var metatype: GFileOutputStreamClass? { metatypePointer?.pointee } 
    
    static var wrapper: FileOutputStreamClassRef? { FileOutputStreamClassRef(metatypePointer) }
    
    
}

// MARK: - FileOutputStreamClass Record

/// The `FileOutputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GFileOutputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileOutputStreamClass`.
/// Alternatively, use `FileOutputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FileOutputStreamClassProtocol {
        /// Untyped pointer to the underlying `GFileOutputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFileOutputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GFileOutputStreamClass>! { get }

}

/// The `FileOutputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GFileOutputStreamClass` instance.
/// It exposes methods that can operate on this data type through `FileOutputStreamClassProtocol` conformance.
/// Use `FileOutputStreamClassRef` only as an `unowned` reference to an existing `GFileOutputStreamClass` instance.
///

public struct FileOutputStreamClassRef: FileOutputStreamClassProtocol {
        /// Untyped pointer to the underlying `GFileOutputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FileOutputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GFileOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GFileOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GFileOutputStreamClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GFileOutputStreamClass>?) {
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

    /// Reference intialiser for a related type that implements `FileOutputStreamClassProtocol`
    @inlinable init<T: FileOutputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileOutputStreamClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FileOutputStreamClass Record: FileOutputStreamClassProtocol extension (methods and fields)
public extension FileOutputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileOutputStreamClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GFileOutputStreamClass>! { return ptr?.assumingMemoryBound(to: GFileOutputStreamClass.self) }


    @inlinable var parentClass: GOutputStreamClass {
        get {
            let rv = _ptr.pointee.parent_class
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



/// Metatype/GType declaration for FilenameCompleter
public extension FilenameCompleterClassRef {
    
    /// This getter returns the GLib type identifier registered for `FilenameCompleter`
    static var metatypeReference: GType { g_filename_completer_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GFilenameCompleterClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GFilenameCompleterClass.self) }
    
    static var metatype: GFilenameCompleterClass? { metatypePointer?.pointee } 
    
    static var wrapper: FilenameCompleterClassRef? { FilenameCompleterClassRef(metatypePointer) }
    
    
}

// MARK: - FilenameCompleterClass Record

/// The `FilenameCompleterClassProtocol` protocol exposes the methods and properties of an underlying `GFilenameCompleterClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FilenameCompleterClass`.
/// Alternatively, use `FilenameCompleterClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FilenameCompleterClassProtocol {
        /// Untyped pointer to the underlying `GFilenameCompleterClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFilenameCompleterClass` instance.
    var _ptr: UnsafeMutablePointer<GFilenameCompleterClass>! { get }

}

/// The `FilenameCompleterClassRef` type acts as a lightweight Swift reference to an underlying `GFilenameCompleterClass` instance.
/// It exposes methods that can operate on this data type through `FilenameCompleterClassProtocol` conformance.
/// Use `FilenameCompleterClassRef` only as an `unowned` reference to an existing `GFilenameCompleterClass` instance.
///

public struct FilenameCompleterClassRef: FilenameCompleterClassProtocol {
        /// Untyped pointer to the underlying `GFilenameCompleterClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FilenameCompleterClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GFilenameCompleterClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GFilenameCompleterClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GFilenameCompleterClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GFilenameCompleterClass>?) {
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

    /// Reference intialiser for a related type that implements `FilenameCompleterClassProtocol`
    @inlinable init<T: FilenameCompleterClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilenameCompleterClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FilenameCompleterClass Record: FilenameCompleterClassProtocol extension (methods and fields)
public extension FilenameCompleterClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFilenameCompleterClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GFilenameCompleterClass>! { return ptr?.assumingMemoryBound(to: GFilenameCompleterClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var gotCompletionData is unavailable because got_completion_data is void

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

}



/// Metatype/GType declaration for FilterInputStream
public extension FilterInputStreamClassRef {
    
    /// This getter returns the GLib type identifier registered for `FilterInputStream`
    static var metatypeReference: GType { g_filter_input_stream_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GFilterInputStreamClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GFilterInputStreamClass.self) }
    
    static var metatype: GFilterInputStreamClass? { metatypePointer?.pointee } 
    
    static var wrapper: FilterInputStreamClassRef? { FilterInputStreamClassRef(metatypePointer) }
    
    
}

// MARK: - FilterInputStreamClass Record

/// The `FilterInputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GFilterInputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FilterInputStreamClass`.
/// Alternatively, use `FilterInputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FilterInputStreamClassProtocol {
        /// Untyped pointer to the underlying `GFilterInputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFilterInputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GFilterInputStreamClass>! { get }

}

/// The `FilterInputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GFilterInputStreamClass` instance.
/// It exposes methods that can operate on this data type through `FilterInputStreamClassProtocol` conformance.
/// Use `FilterInputStreamClassRef` only as an `unowned` reference to an existing `GFilterInputStreamClass` instance.
///

public struct FilterInputStreamClassRef: FilterInputStreamClassProtocol {
        /// Untyped pointer to the underlying `GFilterInputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FilterInputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GFilterInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GFilterInputStreamClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GFilterInputStreamClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GFilterInputStreamClass>?) {
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

    /// Reference intialiser for a related type that implements `FilterInputStreamClassProtocol`
    @inlinable init<T: FilterInputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterInputStreamClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FilterInputStreamClass Record: FilterInputStreamClassProtocol extension (methods and fields)
public extension FilterInputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFilterInputStreamClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GFilterInputStreamClass>! { return ptr?.assumingMemoryBound(to: GFilterInputStreamClass.self) }


    @inlinable var parentClass: GInputStreamClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var GReserved1 is unavailable because _g_reserved1 is void

    // var GReserved2 is unavailable because _g_reserved2 is void

    // var GReserved3 is unavailable because _g_reserved3 is void

}



/// Metatype/GType declaration for FilterOutputStream
public extension FilterOutputStreamClassRef {
    
    /// This getter returns the GLib type identifier registered for `FilterOutputStream`
    static var metatypeReference: GType { g_filter_output_stream_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GFilterOutputStreamClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GFilterOutputStreamClass.self) }
    
    static var metatype: GFilterOutputStreamClass? { metatypePointer?.pointee } 
    
    static var wrapper: FilterOutputStreamClassRef? { FilterOutputStreamClassRef(metatypePointer) }
    
    
}

// MARK: - FilterOutputStreamClass Record

/// The `FilterOutputStreamClassProtocol` protocol exposes the methods and properties of an underlying `GFilterOutputStreamClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FilterOutputStreamClass`.
/// Alternatively, use `FilterOutputStreamClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FilterOutputStreamClassProtocol {
        /// Untyped pointer to the underlying `GFilterOutputStreamClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFilterOutputStreamClass` instance.
    var _ptr: UnsafeMutablePointer<GFilterOutputStreamClass>! { get }

}

/// The `FilterOutputStreamClassRef` type acts as a lightweight Swift reference to an underlying `GFilterOutputStreamClass` instance.
/// It exposes methods that can operate on this data type through `FilterOutputStreamClassProtocol` conformance.
/// Use `FilterOutputStreamClassRef` only as an `unowned` reference to an existing `GFilterOutputStreamClass` instance.
///

public struct FilterOutputStreamClassRef: FilterOutputStreamClassProtocol {
        /// Untyped pointer to the underlying `GFilterOutputStreamClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FilterOutputStreamClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GFilterOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GFilterOutputStreamClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GFilterOutputStreamClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GFilterOutputStreamClass>?) {
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

    /// Reference intialiser for a related type that implements `FilterOutputStreamClassProtocol`
    @inlinable init<T: FilterOutputStreamClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterOutputStreamClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: FilterOutputStreamClass Record: FilterOutputStreamClassProtocol extension (methods and fields)
public extension FilterOutputStreamClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFilterOutputStreamClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GFilterOutputStreamClass>! { return ptr?.assumingMemoryBound(to: GFilterOutputStreamClass.self) }


    @inlinable var parentClass: GOutputStreamClass {
        get {
            let rv = _ptr.pointee.parent_class
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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GIOExtension` instance.
    var _ptr: UnsafeMutablePointer<GIOExtension>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension IOExtensionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GIOExtension>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GIOExtension>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GIOExtension>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GIOExtension>?) {
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

    /// Reference intialiser for a related type that implements `IOExtensionProtocol`
    @inlinable init<T: IOExtensionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOExtension` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GIOExtension>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOExtension` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GIOExtension>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOExtension` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOExtension` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOExtension` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GIOExtension>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `IOExtension` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GIOExtension>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GIOExtension` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `IOExtension` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GIOExtension>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GIOExtension, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `IOExtensionProtocol`
    /// `GIOExtension` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `IOExtensionProtocol`
    @inlinable public init<T: IOExtensionProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GIOExtension, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GIOExtension`.
    deinit {
        // no reference counting for GIOExtension, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GIOExtension, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GIOExtension, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GIOExtension, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `IOExtensionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GIOExtension, cannot ref(_ptr)
    }



}

// MARK: no IOExtension properties

// MARK: no IOExtension signals

// MARK: IOExtension has no signals
// MARK: IOExtension Record: IOExtensionProtocol extension (methods and fields)
public extension IOExtensionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GIOExtension` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GIOExtension>! { return ptr?.assumingMemoryBound(to: GIOExtension.self) }

    /// Gets the name under which `extension` was registered.
    /// 
    /// Note that the same type may be registered as extension
    /// for multiple extension points, under different names.
    @inlinable func getName() -> String! {
        let rv = g_io_extension_get_name(_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the priority with which `extension` was registered.
    @inlinable func getPriority() -> Int {
        let rv = Int(g_io_extension_get_priority(_ptr))
        return rv
    }

    /// Gets the type associated with `extension`.
    @inlinable func getType() -> GType {
        let rv = g_io_extension_get_type(_ptr)
        return rv
    }

    /// Gets a reference to the class for the type that is
    /// associated with `extension`.
    @inlinable func refClass() -> GLibObject.TypeClassRef! {
        let rv = GLibObject.TypeClassRef(g_io_extension_ref_class(_ptr))
        return rv
    }
    /// Gets the name under which `extension` was registered.
    /// 
    /// Note that the same type may be registered as extension
    /// for multiple extension points, under different names.
    @inlinable var name: String! {
        /// Gets the name under which `extension` was registered.
        /// 
        /// Note that the same type may be registered as extension
        /// for multiple extension points, under different names.
        get {
            let rv = g_io_extension_get_name(_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the priority with which `extension` was registered.
    @inlinable var priority: Int {
        /// Gets the priority with which `extension` was registered.
        get {
            let rv = Int(g_io_extension_get_priority(_ptr))
            return rv
        }
    }

    /// Gets the type associated with `extension`.
    @inlinable var type: GType {
        /// Gets the type associated with `extension`.
        get {
            let rv = g_io_extension_get_type(_ptr)
            return rv
        }
    }


}



