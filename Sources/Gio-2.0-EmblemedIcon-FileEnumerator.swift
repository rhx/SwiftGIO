import CGLib
import GLib
import GLibObject

// MARK: - EmblemedIcon Class

/// The `EmblemedIconProtocol` protocol exposes the methods and properties of an underlying `GEmblemedIcon` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EmblemedIcon`.
/// Alternatively, use `EmblemedIconRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GEmblemedIcon` is an implementation of `GIcon` that supports
/// adding an emblem to an icon. Adding multiple emblems to an
/// icon is ensured via `g_emblemed_icon_add_emblem()`.
/// 
/// Note that `GEmblemedIcon` allows no control over the position
/// of the emblems. See also `GEmblem` for more information.
public protocol EmblemedIconProtocol: GLibObject.ObjectProtocol, IconProtocol {
        /// Untyped pointer to the underlying `GEmblemedIcon` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GEmblemedIcon` instance.
    var emblemed_icon_ptr: UnsafeMutablePointer<GEmblemedIcon>! { get }

}

/// The `EmblemedIconRef` type acts as a lightweight Swift reference to an underlying `GEmblemedIcon` instance.
/// It exposes methods that can operate on this data type through `EmblemedIconProtocol` conformance.
/// Use `EmblemedIconRef` only as an `unowned` reference to an existing `GEmblemedIcon` instance.
///
/// `GEmblemedIcon` is an implementation of `GIcon` that supports
/// adding an emblem to an icon. Adding multiple emblems to an
/// icon is ensured via `g_emblemed_icon_add_emblem()`.
/// 
/// Note that `GEmblemedIcon` allows no control over the position
/// of the emblems. See also `GEmblem` for more information.
public struct EmblemedIconRef: EmblemedIconProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GEmblemedIcon` instance.
    /// For type-safe access, use the generated, typed pointer `emblemed_icon_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EmblemedIconRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GEmblemedIcon>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GEmblemedIcon>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GEmblemedIcon>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GEmblemedIcon>?) {
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

    /// Reference intialiser for a related type that implements `EmblemedIconProtocol`
    @inlinable init<T: EmblemedIconProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: EmblemedIconProtocol>(_ other: T) -> EmblemedIconRef { EmblemedIconRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EmblemedIcon` type acts as a reference-counted owner of an underlying `GEmblemedIcon` instance.
/// It provides the methods that can operate on this data type through `EmblemedIconProtocol` conformance.
/// Use `EmblemedIcon` as a strong reference or owner of a `GEmblemedIcon` instance.
///
/// `GEmblemedIcon` is an implementation of `GIcon` that supports
/// adding an emblem to an icon. Adding multiple emblems to an
/// icon is ensured via `g_emblemed_icon_add_emblem()`.
/// 
/// Note that `GEmblemedIcon` allows no control over the position
/// of the emblems. See also `GEmblem` for more information.
open class EmblemedIcon: GLibObject.Object, EmblemedIconProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EmblemedIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GEmblemedIcon>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EmblemedIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GEmblemedIcon>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EmblemedIcon` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EmblemedIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EmblemedIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GEmblemedIcon>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EmblemedIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GEmblemedIcon>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GEmblemedIcon`.
    /// i.e., ownership is transferred to the `EmblemedIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GEmblemedIcon>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `EmblemedIconProtocol`
    /// Will retain `GEmblemedIcon`.
    /// - Parameter other: an instance of a related type that implements `EmblemedIconProtocol`
    @inlinable public init<T: EmblemedIconProtocol>(emblemedIcon other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum EmblemedIconPropertyName: String, PropertyNameProtocol {
    case gicon = "gicon"
}

public extension EmblemedIconProtocol {
    /// Bind a `EmblemedIconPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: EmblemedIconPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a EmblemedIcon property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: EmblemedIconPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a EmblemedIcon property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: EmblemedIconPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum EmblemedIconSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    case notifyGicon = "notify::gicon"
}

// MARK: EmblemedIcon has no signals
// MARK: EmblemedIcon Class: EmblemedIconProtocol extension (methods and fields)
public extension EmblemedIconProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GEmblemedIcon` instance.
    @inlinable var emblemed_icon_ptr: UnsafeMutablePointer<GEmblemedIcon>! { return ptr?.assumingMemoryBound(to: GEmblemedIcon.self) }

    /// Adds `emblem` to the `GList` of `GEmblems`.
    @inlinable func add<EmblemT: EmblemProtocol>(emblem: EmblemT) {
        g_emblemed_icon_add_emblem(emblemed_icon_ptr, emblem.emblem_ptr)
    
    }

    /// Removes all the emblems from `icon`.
    @inlinable func clearEmblems() {
        g_emblemed_icon_clear_emblems(emblemed_icon_ptr)
    
    }

    /// Gets the list of emblems for the `icon`.
    @inlinable func getEmblems() -> GLib.ListRef! {
        let rv = GLib.ListRef(g_emblemed_icon_get_emblems(emblemed_icon_ptr))
        return rv
    }

    /// Gets the main icon for `emblemed`.
    @inlinable func getIcon() -> IconRef! {
        let rv = IconRef(gconstpointer: gconstpointer(g_emblemed_icon_get_icon(emblemed_icon_ptr)))
        return rv
    }
    /// Gets the list of emblems for the `icon`.
    @inlinable var emblems: GLib.ListRef! {
        /// Gets the list of emblems for the `icon`.
        get {
            let rv = GLib.ListRef(g_emblemed_icon_get_emblems(emblemed_icon_ptr))
            return rv
        }
    }

    /// Gets the main icon for `emblemed`.
    @inlinable var icon: IconRef! {
        /// Gets the main icon for `emblemed`.
        get {
            let rv = IconRef(gconstpointer: gconstpointer(g_emblemed_icon_get_icon(emblemed_icon_ptr)))
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = emblemed_icon_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - FileEnumerator Class

/// The `FileEnumeratorProtocol` protocol exposes the methods and properties of an underlying `GFileEnumerator` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileEnumerator`.
/// Alternatively, use `FileEnumeratorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GFileEnumerator` allows you to operate on a set of `GFiles`,
/// returning a `GFileInfo` structure for each file enumerated (e.g.
/// `g_file_enumerate_children()` will return a `GFileEnumerator` for each
/// of the children within a directory).
/// 
/// To get the next file's information from a `GFileEnumerator`, use
/// `g_file_enumerator_next_file()` or its asynchronous version,
/// `g_file_enumerator_next_files_async()`. Note that the asynchronous
/// version will return a list of `GFileInfos`, whereas the
/// synchronous will only return the next file in the enumerator.
/// 
/// The ordering of returned files is unspecified for non-Unix
/// platforms; for more information, see `g_dir_read_name()`.  On Unix,
/// when operating on local files, returned files will be sorted by
/// inode number.  Effectively you can assume that the ordering of
/// returned files will be stable between successive calls (and
/// applications) assuming the directory is unchanged.
/// 
/// If your application needs a specific ordering, such as by name or
/// modification time, you will have to implement that in your
/// application code.
/// 
/// To close a `GFileEnumerator`, use `g_file_enumerator_close()`, or
/// its asynchronous version, `g_file_enumerator_close_async()`. Once
/// a `GFileEnumerator` is closed, no further actions may be performed
/// on it, and it should be freed with `g_object_unref()`.
public protocol FileEnumeratorProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GFileEnumerator` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFileEnumerator` instance.
    var file_enumerator_ptr: UnsafeMutablePointer<GFileEnumerator>! { get }

}

/// The `FileEnumeratorRef` type acts as a lightweight Swift reference to an underlying `GFileEnumerator` instance.
/// It exposes methods that can operate on this data type through `FileEnumeratorProtocol` conformance.
/// Use `FileEnumeratorRef` only as an `unowned` reference to an existing `GFileEnumerator` instance.
///
/// `GFileEnumerator` allows you to operate on a set of `GFiles`,
/// returning a `GFileInfo` structure for each file enumerated (e.g.
/// `g_file_enumerate_children()` will return a `GFileEnumerator` for each
/// of the children within a directory).
/// 
/// To get the next file's information from a `GFileEnumerator`, use
/// `g_file_enumerator_next_file()` or its asynchronous version,
/// `g_file_enumerator_next_files_async()`. Note that the asynchronous
/// version will return a list of `GFileInfos`, whereas the
/// synchronous will only return the next file in the enumerator.
/// 
/// The ordering of returned files is unspecified for non-Unix
/// platforms; for more information, see `g_dir_read_name()`.  On Unix,
/// when operating on local files, returned files will be sorted by
/// inode number.  Effectively you can assume that the ordering of
/// returned files will be stable between successive calls (and
/// applications) assuming the directory is unchanged.
/// 
/// If your application needs a specific ordering, such as by name or
/// modification time, you will have to implement that in your
/// application code.
/// 
/// To close a `GFileEnumerator`, use `g_file_enumerator_close()`, or
/// its asynchronous version, `g_file_enumerator_close_async()`. Once
/// a `GFileEnumerator` is closed, no further actions may be performed
/// on it, and it should be freed with `g_object_unref()`.
public struct FileEnumeratorRef: FileEnumeratorProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GFileEnumerator` instance.
    /// For type-safe access, use the generated, typed pointer `file_enumerator_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FileEnumeratorRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GFileEnumerator>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GFileEnumerator>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GFileEnumerator>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GFileEnumerator>?) {
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

    /// Reference intialiser for a related type that implements `FileEnumeratorProtocol`
    @inlinable init<T: FileEnumeratorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FileEnumeratorProtocol>(_ other: T) -> FileEnumeratorRef { FileEnumeratorRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FileEnumerator` type acts as a reference-counted owner of an underlying `GFileEnumerator` instance.
/// It provides the methods that can operate on this data type through `FileEnumeratorProtocol` conformance.
/// Use `FileEnumerator` as a strong reference or owner of a `GFileEnumerator` instance.
///
/// `GFileEnumerator` allows you to operate on a set of `GFiles`,
/// returning a `GFileInfo` structure for each file enumerated (e.g.
/// `g_file_enumerate_children()` will return a `GFileEnumerator` for each
/// of the children within a directory).
/// 
/// To get the next file's information from a `GFileEnumerator`, use
/// `g_file_enumerator_next_file()` or its asynchronous version,
/// `g_file_enumerator_next_files_async()`. Note that the asynchronous
/// version will return a list of `GFileInfos`, whereas the
/// synchronous will only return the next file in the enumerator.
/// 
/// The ordering of returned files is unspecified for non-Unix
/// platforms; for more information, see `g_dir_read_name()`.  On Unix,
/// when operating on local files, returned files will be sorted by
/// inode number.  Effectively you can assume that the ordering of
/// returned files will be stable between successive calls (and
/// applications) assuming the directory is unchanged.
/// 
/// If your application needs a specific ordering, such as by name or
/// modification time, you will have to implement that in your
/// application code.
/// 
/// To close a `GFileEnumerator`, use `g_file_enumerator_close()`, or
/// its asynchronous version, `g_file_enumerator_close_async()`. Once
/// a `GFileEnumerator` is closed, no further actions may be performed
/// on it, and it should be freed with `g_object_unref()`.
open class FileEnumerator: GLibObject.Object, FileEnumeratorProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileEnumerator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GFileEnumerator>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileEnumerator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GFileEnumerator>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileEnumerator` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileEnumerator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileEnumerator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GFileEnumerator>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileEnumerator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GFileEnumerator>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GFileEnumerator`.
    /// i.e., ownership is transferred to the `FileEnumerator` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GFileEnumerator>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FileEnumeratorProtocol`
    /// Will retain `GFileEnumerator`.
    /// - Parameter other: an instance of a related type that implements `FileEnumeratorProtocol`
    @inlinable public init<T: FileEnumeratorProtocol>(fileEnumerator other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum FileEnumeratorPropertyName: String, PropertyNameProtocol {
    case container = "container"
}

public extension FileEnumeratorProtocol {
    /// Bind a `FileEnumeratorPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: FileEnumeratorPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a FileEnumerator property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: FileEnumeratorPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a FileEnumerator property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: FileEnumeratorPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum FileEnumeratorSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    case notifyContainer = "notify::container"
}

// MARK: FileEnumerator has no signals
// MARK: FileEnumerator Class: FileEnumeratorProtocol extension (methods and fields)
public extension FileEnumeratorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileEnumerator` instance.
    @inlinable var file_enumerator_ptr: UnsafeMutablePointer<GFileEnumerator>! { return ptr?.assumingMemoryBound(to: GFileEnumerator.self) }

    /// Releases all resources used by this enumerator, making the
    /// enumerator return `G_IO_ERROR_CLOSED` on all calls.
    /// 
    /// This will be automatically called when the last reference
    /// is dropped, but you might want to call this function to make
    /// sure resources are released as early as possible.
    @inlinable func close(cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_enumerator_close(file_enumerator_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Releases all resources used by this enumerator, making the
    /// enumerator return `G_IO_ERROR_CLOSED` on all calls.
    /// 
    /// This will be automatically called when the last reference
    /// is dropped, but you might want to call this function to make
    /// sure resources are released as early as possible.
    @inlinable func close<CancellableT: CancellableProtocol>(cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_enumerator_close(file_enumerator_ptr, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Asynchronously closes the file enumerator.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned in
    /// `g_file_enumerator_close_finish()`.
    @inlinable func closeAsync(ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_enumerator_close_async(file_enumerator_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Asynchronously closes the file enumerator.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned in
    /// `g_file_enumerator_close_finish()`.
    @inlinable func closeAsync<CancellableT: CancellableProtocol>(ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_enumerator_close_async(file_enumerator_ptr, gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes closing a file enumerator, started from `g_file_enumerator_close_async()`.
    /// 
    /// If the file enumerator was already closed when `g_file_enumerator_close_async()`
    /// was called, then this function will report `G_IO_ERROR_CLOSED` in `error`, and
    /// return `false`. If the file enumerator had pending operation when the close
    /// operation was started, then this function will report `G_IO_ERROR_PENDING`, and
    /// return `false`.  If `cancellable` was not `nil`, then the operation may have been
    /// cancelled by triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be set, and `false` will be
    /// returned.
    @inlinable func closeFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_enumerator_close_finish(file_enumerator_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Return a new `GFile` which refers to the file named by `info` in the source
    /// directory of `enumerator`.  This function is primarily intended to be used
    /// inside loops with `g_file_enumerator_next_file()`.
    /// 
    /// This is a convenience method that's equivalent to:
    /// (C Language Example):
    /// ```C
    ///   gchar *name = g_file_info_get_name (info);
    ///   GFile *child = g_file_get_child (g_file_enumerator_get_container (enumr),
    ///                                    name);
    /// ```
    /// 
    @inlinable func getChild<FileInfoT: FileInfoProtocol>(info: FileInfoT) -> FileRef! {
        let rv = FileRef(gconstpointer: gconstpointer(g_file_enumerator_get_child(file_enumerator_ptr, info.file_info_ptr)))
        return rv
    }

    /// Get the `GFile` container which is being enumerated.
    @inlinable func getContainer() -> FileRef! {
        let rv = FileRef(gconstpointer: gconstpointer(g_file_enumerator_get_container(file_enumerator_ptr)))
        return rv
    }

    /// Checks if the file enumerator has pending operations.
    @inlinable func hasPending() -> Bool {
        let rv = ((g_file_enumerator_has_pending(file_enumerator_ptr)) != 0)
        return rv
    }

    /// This is a version of `g_file_enumerator_next_file()` that's easier to
    /// use correctly from C programs.  With `g_file_enumerator_next_file()`,
    /// the gboolean return value signifies "end of iteration or error", which
    /// requires allocation of a temporary `GError`.
    /// 
    /// In contrast, with this function, a `false` return from
    /// `g_file_enumerator_iterate()` *always* means
    /// "error".  End of iteration is signaled by `out_info` or `out_child` being `nil`.
    /// 
    /// Another crucial difference is that the references for `out_info` and
    /// `out_child` are owned by `direnum` (they are cached as hidden
    /// properties).  You must not unref them in your own code.  This makes
    /// memory management significantly easier for C code in combination
    /// with loops.
    /// 
    /// Finally, this function optionally allows retrieving a `GFile` as
    /// well.
    /// 
    /// You must specify at least one of `out_info` or `out_child`.
    /// 
    /// The code pattern for correctly using `g_file_enumerator_iterate()` from C
    /// is:
    /// 
    /// ```
    /// direnum = g_file_enumerate_children (file, ...);
    /// while (TRUE)
    ///   {
    ///     GFileInfo *info;
    ///     if (!g_file_enumerator_iterate (direnum, &info, NULL, cancellable, error))
    ///       goto out;
    ///     if (!info)
    ///       break;
    ///     ... do stuff with "info"; do not unref it! ...
    ///   }
    /// 
    /// out:
    ///   g_object_unref (direnum); // Note: frees the last @info
    /// ```
    /// 
    @inlinable func iterate(outInfo: UnsafeMutablePointer<UnsafeMutablePointer<GFileInfo>?>! = nil, outChild: UnsafeMutablePointer<UnsafeMutablePointer<GFile>?>! = nil, cancellable: CancellableRef? = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_enumerator_iterate(file_enumerator_ptr, outInfo, outChild, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// This is a version of `g_file_enumerator_next_file()` that's easier to
    /// use correctly from C programs.  With `g_file_enumerator_next_file()`,
    /// the gboolean return value signifies "end of iteration or error", which
    /// requires allocation of a temporary `GError`.
    /// 
    /// In contrast, with this function, a `false` return from
    /// `g_file_enumerator_iterate()` *always* means
    /// "error".  End of iteration is signaled by `out_info` or `out_child` being `nil`.
    /// 
    /// Another crucial difference is that the references for `out_info` and
    /// `out_child` are owned by `direnum` (they are cached as hidden
    /// properties).  You must not unref them in your own code.  This makes
    /// memory management significantly easier for C code in combination
    /// with loops.
    /// 
    /// Finally, this function optionally allows retrieving a `GFile` as
    /// well.
    /// 
    /// You must specify at least one of `out_info` or `out_child`.
    /// 
    /// The code pattern for correctly using `g_file_enumerator_iterate()` from C
    /// is:
    /// 
    /// ```
    /// direnum = g_file_enumerate_children (file, ...);
    /// while (TRUE)
    ///   {
    ///     GFileInfo *info;
    ///     if (!g_file_enumerator_iterate (direnum, &info, NULL, cancellable, error))
    ///       goto out;
    ///     if (!info)
    ///       break;
    ///     ... do stuff with "info"; do not unref it! ...
    ///   }
    /// 
    /// out:
    ///   g_object_unref (direnum); // Note: frees the last @info
    /// ```
    /// 
    @inlinable func iterate<CancellableT: CancellableProtocol>(outInfo: UnsafeMutablePointer<UnsafeMutablePointer<GFileInfo>?>! = nil, outChild: UnsafeMutablePointer<UnsafeMutablePointer<GFile>?>! = nil, cancellable: CancellableT?) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_file_enumerator_iterate(file_enumerator_ptr, outInfo, outChild, cancellable?.cancellable_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Returns information for the next file in the enumerated object.
    /// Will block until the information is available. The `GFileInfo`
    /// returned from this function will contain attributes that match the
    /// attribute string that was passed when the `GFileEnumerator` was created.
    /// 
    /// See the documentation of `GFileEnumerator` for information about the
    /// order of returned files.
    /// 
    /// On error, returns `nil` and sets `error` to the error. If the
    /// enumerator is at the end, `nil` will be returned and `error` will
    /// be unset.
    @inlinable func nextFile(cancellable: CancellableRef? = nil) throws -> FileInfoRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileInfoRef(gconstpointer: gconstpointer(g_file_enumerator_next_file(file_enumerator_ptr, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Returns information for the next file in the enumerated object.
    /// Will block until the information is available. The `GFileInfo`
    /// returned from this function will contain attributes that match the
    /// attribute string that was passed when the `GFileEnumerator` was created.
    /// 
    /// See the documentation of `GFileEnumerator` for information about the
    /// order of returned files.
    /// 
    /// On error, returns `nil` and sets `error` to the error. If the
    /// enumerator is at the end, `nil` will be returned and `error` will
    /// be unset.
    @inlinable func nextFile<CancellableT: CancellableProtocol>(cancellable: CancellableT?) throws -> FileInfoRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = FileInfoRef(gconstpointer: gconstpointer(g_file_enumerator_next_file(file_enumerator_ptr, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Request information for a number of files from the enumerator asynchronously.
    /// When all i/o for the operation is finished the `callback` will be called with
    /// the requested information.
    /// 
    /// See the documentation of `GFileEnumerator` for information about the
    /// order of returned files.
    /// 
    /// The callback can be called with less than `num_files` files in case of error
    /// or at the end of the enumerator. In case of a partial error the callback will
    /// be called with any succeeding items and no error, and on the next request the
    /// error will be reported. If a request is cancelled the callback will be called
    /// with `G_IO_ERROR_CANCELLED`.
    /// 
    /// During an async request no other sync and async calls are allowed, and will
    /// result in `G_IO_ERROR_PENDING` errors.
    /// 
    /// Any outstanding i/o request with higher priority (lower numerical value) will
    /// be executed before an outstanding request with lower priority. Default
    /// priority is `G_PRIORITY_DEFAULT`.
    @inlinable func nextFilesAsync(numFiles: Int, ioPriority: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_enumerator_next_files_async(file_enumerator_ptr, gint(numFiles), gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Request information for a number of files from the enumerator asynchronously.
    /// When all i/o for the operation is finished the `callback` will be called with
    /// the requested information.
    /// 
    /// See the documentation of `GFileEnumerator` for information about the
    /// order of returned files.
    /// 
    /// The callback can be called with less than `num_files` files in case of error
    /// or at the end of the enumerator. In case of a partial error the callback will
    /// be called with any succeeding items and no error, and on the next request the
    /// error will be reported. If a request is cancelled the callback will be called
    /// with `G_IO_ERROR_CANCELLED`.
    /// 
    /// During an async request no other sync and async calls are allowed, and will
    /// result in `G_IO_ERROR_PENDING` errors.
    /// 
    /// Any outstanding i/o request with higher priority (lower numerical value) will
    /// be executed before an outstanding request with lower priority. Default
    /// priority is `G_PRIORITY_DEFAULT`.
    @inlinable func nextFilesAsync<CancellableT: CancellableProtocol>(numFiles: Int, ioPriority: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_file_enumerator_next_files_async(file_enumerator_ptr, gint(numFiles), gint(ioPriority), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes the asynchronous operation started with `g_file_enumerator_next_files_async()`.
    @inlinable func nextFilesFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> GLib.ListRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = GLib.ListRef(g_file_enumerator_next_files_finish(file_enumerator_ptr, result.async_result_ptr, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Sets the file enumerator as having pending operations.
    @inlinable func set(pending: Bool) {
        g_file_enumerator_set_pending(file_enumerator_ptr, gboolean((pending) ? 1 : 0))
    
    }
    @inlinable var container: FileRef! {
        /// Get the `GFile` container which is being enumerated.
        get {
            let rv = FileRef(gconstpointer: gconstpointer(g_file_enumerator_get_container(file_enumerator_ptr)))
            return rv
        }
    }

    /// Checks if the file enumerator has been closed.
    @inlinable var isClosed: Bool {
        /// Checks if the file enumerator has been closed.
        get {
            let rv = ((g_file_enumerator_is_closed(file_enumerator_ptr)) != 0)
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = file_enumerator_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



