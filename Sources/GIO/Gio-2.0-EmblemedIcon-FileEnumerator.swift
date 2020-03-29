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
public protocol EmblemedIconProtocol: ObjectProtocol, IconProtocol {
    /// Untyped pointer to the underlying `GEmblemedIcon` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GEmblemedIcon` instance.
    var emblemed_icon_ptr: UnsafeMutablePointer<GEmblemedIcon> { get }
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
public struct EmblemedIconRef: EmblemedIconProtocol {
    /// Untyped pointer to the underlying `GEmblemedIcon` instance.
    /// For type-safe access, use the generated, typed pointer `emblemed_icon_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EmblemedIconRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GEmblemedIcon>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EmblemedIconProtocol`
    init<T: EmblemedIconProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new emblemed icon for `icon` with the emblem `emblem`.
    init( icon: IconProtocol, emblem: EmblemProtocol) {
        let rv = g_emblemed_icon_new(cast(icon.ptr), cast(emblem.ptr))
        ptr = UnsafeMutableRawPointer(cast(rv))
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
open class EmblemedIcon: Object, EmblemedIconProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EmblemedIcon` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GEmblemedIcon>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GEmblemedIcon`.
    /// i.e., ownership is transferred to the `EmblemedIcon` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GEmblemedIcon>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `EmblemedIconProtocol`
    /// Will retain `GEmblemedIcon`.
    /// - Parameter other: an instance of a related type that implements `EmblemedIconProtocol`
    public init<T: EmblemedIconProtocol>(emblemedIcon other: T) {
        super.init(retaining: cast(other.emblemed_icon_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EmblemedIconProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new emblemed icon for `icon` with the emblem `emblem`.
    public init( icon: IconProtocol, emblem: EmblemProtocol) {
        let rv = g_emblemed_icon_new(cast(icon.ptr), cast(emblem.ptr))
        super.init(cast(rv))
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: EmblemedIconPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(emblemed_icon_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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

public extension EmblemedIconProtocol {
    /// Connect a `EmblemedIconSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: EmblemedIconSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(emblemed_icon_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension EmblemedIconProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GEmblemedIcon` instance.
    var emblemed_icon_ptr: UnsafeMutablePointer<GEmblemedIcon> { return ptr.assumingMemoryBound(to: GEmblemedIcon.self) }

    /// Adds `emblem` to the `GList` of `GEmblems`.
    func add(emblem: EmblemProtocol) {
        g_emblemed_icon_add_emblem(cast(emblemed_icon_ptr), cast(emblem.ptr))
    
    }

    /// Removes all the emblems from `icon`.
    func clearEmblems() {
        g_emblemed_icon_clear_emblems(cast(emblemed_icon_ptr))
    
    }

    /// Gets the list of emblems for the `icon`.
    func getEmblems() -> UnsafeMutablePointer<GList>! {
        let rv = g_emblemed_icon_get_emblems(cast(emblemed_icon_ptr))
        return cast(rv)
    }

    /// Gets the main icon for `emblemed`.
    func getIcon() -> UnsafeMutablePointer<GIcon>! {
        let rv = g_emblemed_icon_get_icon(cast(emblemed_icon_ptr))
        return cast(rv)
    }
    /// Gets the list of emblems for the `icon`.
    var emblems: UnsafeMutablePointer<GList>! {
        /// Gets the list of emblems for the `icon`.
        get {
            let rv = g_emblemed_icon_get_emblems(cast(emblemed_icon_ptr))
            return cast(rv)
        }
    }

    /// Gets the main icon for `emblemed`.
    var icon: UnsafeMutablePointer<GIcon>! {
        /// Gets the main icon for `emblemed`.
        get {
            let rv = g_emblemed_icon_get_icon(cast(emblemed_icon_ptr))
            return cast(rv)
        }
    }
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
public protocol FileEnumeratorProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `GFileEnumerator` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GFileEnumerator` instance.
    var file_enumerator_ptr: UnsafeMutablePointer<GFileEnumerator> { get }
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
public struct FileEnumeratorRef: FileEnumeratorProtocol {
    /// Untyped pointer to the underlying `GFileEnumerator` instance.
    /// For type-safe access, use the generated, typed pointer `file_enumerator_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FileEnumeratorRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GFileEnumerator>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileEnumeratorProtocol`
    init<T: FileEnumeratorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
open class FileEnumerator: Object, FileEnumeratorProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileEnumerator` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GFileEnumerator>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GFileEnumerator`.
    /// i.e., ownership is transferred to the `FileEnumerator` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GFileEnumerator>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `FileEnumeratorProtocol`
    /// Will retain `GFileEnumerator`.
    /// - Parameter other: an instance of a related type that implements `FileEnumeratorProtocol`
    public init<T: FileEnumeratorProtocol>(fileEnumerator other: T) {
        super.init(retaining: cast(other.file_enumerator_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileEnumeratorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: FileEnumeratorPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(file_enumerator_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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

public extension FileEnumeratorProtocol {
    /// Connect a `FileEnumeratorSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: FileEnumeratorSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(file_enumerator_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension FileEnumeratorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFileEnumerator` instance.
    var file_enumerator_ptr: UnsafeMutablePointer<GFileEnumerator> { return ptr.assumingMemoryBound(to: GFileEnumerator.self) }

    /// Releases all resources used by this enumerator, making the
    /// enumerator return `G_IO_ERROR_CLOSED` on all calls.
    /// 
    /// This will be automatically called when the last reference
    /// is dropped, but you might want to call this function to make
    /// sure resources are released as early as possible.
    func close(cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_enumerator_close(cast(file_enumerator_ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Asynchronously closes the file enumerator.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned in
    /// `g_file_enumerator_close_finish()`.
    func closeAsync(ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_enumerator_close_async(cast(file_enumerator_ptr), io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
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
    func closeFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_enumerator_close_finish(cast(file_enumerator_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
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
    func getChild(info: FileInfoProtocol) -> UnsafeMutablePointer<GFile>! {
        let rv = g_file_enumerator_get_child(cast(file_enumerator_ptr), cast(info.ptr))
        return cast(rv)
    }

    /// Get the `GFile` container which is being enumerated.
    func getContainer() -> UnsafeMutablePointer<GFile>! {
        let rv = g_file_enumerator_get_container(cast(file_enumerator_ptr))
        return cast(rv)
    }

    /// Checks if the file enumerator has pending operations.
    func hasPending() -> Bool {
        let rv = g_file_enumerator_has_pending(cast(file_enumerator_ptr))
        return Bool(rv != 0)
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
    func iterate(outInfo out_info: FileInfoProtocol, outChild out_child: FileProtocol, cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_enumerator_iterate(cast(file_enumerator_ptr), cast(out_info.ptr), cast(out_child.ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
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
    func nextFile(cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GFileInfo>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_enumerator_next_file(cast(file_enumerator_ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
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
    func nextFilesAsync(numFiles num_files: CInt, ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_file_enumerator_next_files_async(cast(file_enumerator_ptr), num_files, io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes the asynchronous operation started with `g_file_enumerator_next_files_async()`.
    func nextFilesFinish(result: AsyncResultProtocol) throws -> UnsafeMutablePointer<GList>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_file_enumerator_next_files_finish(cast(file_enumerator_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Sets the file enumerator as having pending operations.
    func set(pending: Bool) {
        g_file_enumerator_set_pending(cast(file_enumerator_ptr), gboolean(pending ? 1 : 0))
    
    }
    var container: UnsafeMutablePointer<GFile>! {
        /// Get the `GFile` container which is being enumerated.
        get {
            let rv = g_file_enumerator_get_container(cast(file_enumerator_ptr))
            return cast(rv)
        }
    }

    /// Checks if the file enumerator has been closed.
    var isClosed: Bool {
        /// Checks if the file enumerator has been closed.
        get {
            let rv = g_file_enumerator_is_closed(cast(file_enumerator_ptr))
            return Bool(rv != 0)
        }
    }
}



