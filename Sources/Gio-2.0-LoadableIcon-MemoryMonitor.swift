import CGLib
import GLib
import GLibObject

// MARK: - LoadableIcon Interface

/// The `LoadableIconProtocol` protocol exposes the methods and properties of an underlying `GLoadableIcon` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LoadableIcon`.
/// Alternatively, use `LoadableIconRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Extends the `GIcon` interface and adds the ability to
/// load icons from streams.
public protocol LoadableIconProtocol: IconProtocol {
        /// Untyped pointer to the underlying `GLoadableIcon` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GLoadableIcon` instance.
    var loadable_icon_ptr: UnsafeMutablePointer<GLoadableIcon>! { get }

}

/// The `LoadableIconRef` type acts as a lightweight Swift reference to an underlying `GLoadableIcon` instance.
/// It exposes methods that can operate on this data type through `LoadableIconProtocol` conformance.
/// Use `LoadableIconRef` only as an `unowned` reference to an existing `GLoadableIcon` instance.
///
/// Extends the `GIcon` interface and adds the ability to
/// load icons from streams.
public struct LoadableIconRef: LoadableIconProtocol {
        /// Untyped pointer to the underlying `GLoadableIcon` instance.
    /// For type-safe access, use the generated, typed pointer `loadable_icon_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LoadableIconRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GLoadableIcon>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GLoadableIcon>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GLoadableIcon>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GLoadableIcon>?) {
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

    /// Reference intialiser for a related type that implements `LoadableIconProtocol`
    @inlinable init<T: LoadableIconProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LoadableIcon` type acts as an owner of an underlying `GLoadableIcon` instance.
/// It provides the methods that can operate on this data type through `LoadableIconProtocol` conformance.
/// Use `LoadableIcon` as a strong reference or owner of a `GLoadableIcon` instance.
///
/// Extends the `GIcon` interface and adds the ability to
/// load icons from streams.
open class LoadableIcon: Icon, LoadableIconProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LoadableIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GLoadableIcon>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LoadableIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GLoadableIcon>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LoadableIcon` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LoadableIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LoadableIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GLoadableIcon>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LoadableIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GLoadableIcon>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GLoadableIcon` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `LoadableIcon` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GLoadableIcon>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `LoadableIconProtocol`
    /// `GLoadableIcon` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `LoadableIconProtocol`
    @inlinable public init<T: LoadableIconProtocol>(loadableIcon other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no LoadableIcon properties

// MARK: no LoadableIcon signals

// MARK: LoadableIcon has no signals
// MARK: LoadableIcon Interface: LoadableIconProtocol extension (methods and fields)
public extension LoadableIconProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GLoadableIcon` instance.
    @inlinable var loadable_icon_ptr: UnsafeMutablePointer<GLoadableIcon>! { return ptr?.assumingMemoryBound(to: GLoadableIcon.self) }

    /// Loads a loadable icon. For the asynchronous version of this function,
    /// see `g_loadable_icon_load_async()`.
    @inlinable func load(size: Int, type: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>! = nil, cancellable: CancellableRef? = nil) throws -> InputStreamRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = InputStreamRef(gconstpointer: gconstpointer(g_loadable_icon_load(loadable_icon_ptr, gint(size), type, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// Loads a loadable icon. For the asynchronous version of this function,
    /// see `g_loadable_icon_load_async()`.
    @inlinable func load<CancellableT: CancellableProtocol>(size: Int, type: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>! = nil, cancellable: CancellableT?) throws -> InputStreamRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = InputStreamRef(gconstpointer: gconstpointer(g_loadable_icon_load(loadable_icon_ptr, gint(size), type, cancellable?.cancellable_ptr, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Loads an icon asynchronously. To finish this function, see
    /// `g_loadable_icon_load_finish()`. For the synchronous, blocking
    /// version of this function, see `g_loadable_icon_load()`.
    @inlinable func loadAsync(size: Int, cancellable: CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_loadable_icon_load_async(loadable_icon_ptr, gint(size), cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// Loads an icon asynchronously. To finish this function, see
    /// `g_loadable_icon_load_finish()`. For the synchronous, blocking
    /// version of this function, see `g_loadable_icon_load()`.
    @inlinable func loadAsync<CancellableT: CancellableProtocol>(size: Int, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        g_loadable_icon_load_async(loadable_icon_ptr, gint(size), cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes an asynchronous icon load started in `g_loadable_icon_load_async()`.
    @inlinable func loadFinish<AsyncResultT: AsyncResultProtocol>(res: AsyncResultT, type: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>! = nil) throws -> InputStreamRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = InputStreamRef(gconstpointer: gconstpointer(g_loadable_icon_load_finish(loadable_icon_ptr, res.async_result_ptr, type, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }


}



// MARK: - MemoryMonitor Interface

/// The `MemoryMonitorProtocol` protocol exposes the methods and properties of an underlying `GMemoryMonitor` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MemoryMonitor`.
/// Alternatively, use `MemoryMonitorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GMemoryMonitor` will monitor system memory and suggest to the application
/// when to free memory so as to leave more room for other applications.
/// It is implemented on Linux using the [Low Memory Monitor](https://gitlab.freedesktop.org/hadess/low-memory-monitor/)
/// ([API documentation](https://hadess.pages.freedesktop.org/low-memory-monitor/)).
/// 
/// There is also an implementation for use inside Flatpak sandboxes.
/// 
/// Possible actions to take when the signal is received are:
/// - Free caches
/// - Save files that haven't been looked at in a while to disk, ready to be reopened when needed
/// - Run a garbage collection cycle
/// - Try and compress fragmented allocations
/// - Exit on idle if the process has no reason to stay around
/// - Call [``malloc_trim(3)``](man:malloc_trim) to return cached heap pages to
///   the kernel (if supported by your libc)
/// 
/// Note that some actions may not always improve system performance, and so
/// should be profiled for your application. ``malloc_trim()``, for example, may
/// make future heap allocations slower (due to releasing cached heap pages back
/// to the kernel).
/// 
/// See `GMemoryMonitorWarningLevel` for details on the various warning levels.
/// 
/// (C Language Example):
/// ```C
/// static void
/// warning_cb (GMemoryMonitor *m, GMemoryMonitorWarningLevel level)
/// {
///   g_debug ("Warning level: %d", level);
///   if (warning_level > G_MEMORY_MONITOR_WARNING_LEVEL_LOW)
///     drop_caches ();
/// }
/// 
/// static GMemoryMonitor *
/// monitor_low_memory (void)
/// {
///   GMemoryMonitor *m;
///   m = g_memory_monitor_dup_default ();
///   g_signal_connect (G_OBJECT (m), "low-memory-warning",
///                     G_CALLBACK (warning_cb), NULL);
///   return m;
/// }
/// ```
/// 
/// Don't forget to disconnect the `GMemoryMonitor::low`-memory-warning
/// signal, and unref the `GMemoryMonitor` itself when exiting.
public protocol MemoryMonitorProtocol: InitableProtocol {
        /// Untyped pointer to the underlying `GMemoryMonitor` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GMemoryMonitor` instance.
    var memory_monitor_ptr: UnsafeMutablePointer<GMemoryMonitor>! { get }

}

/// The `MemoryMonitorRef` type acts as a lightweight Swift reference to an underlying `GMemoryMonitor` instance.
/// It exposes methods that can operate on this data type through `MemoryMonitorProtocol` conformance.
/// Use `MemoryMonitorRef` only as an `unowned` reference to an existing `GMemoryMonitor` instance.
///
/// `GMemoryMonitor` will monitor system memory and suggest to the application
/// when to free memory so as to leave more room for other applications.
/// It is implemented on Linux using the [Low Memory Monitor](https://gitlab.freedesktop.org/hadess/low-memory-monitor/)
/// ([API documentation](https://hadess.pages.freedesktop.org/low-memory-monitor/)).
/// 
/// There is also an implementation for use inside Flatpak sandboxes.
/// 
/// Possible actions to take when the signal is received are:
/// - Free caches
/// - Save files that haven't been looked at in a while to disk, ready to be reopened when needed
/// - Run a garbage collection cycle
/// - Try and compress fragmented allocations
/// - Exit on idle if the process has no reason to stay around
/// - Call [``malloc_trim(3)``](man:malloc_trim) to return cached heap pages to
///   the kernel (if supported by your libc)
/// 
/// Note that some actions may not always improve system performance, and so
/// should be profiled for your application. ``malloc_trim()``, for example, may
/// make future heap allocations slower (due to releasing cached heap pages back
/// to the kernel).
/// 
/// See `GMemoryMonitorWarningLevel` for details on the various warning levels.
/// 
/// (C Language Example):
/// ```C
/// static void
/// warning_cb (GMemoryMonitor *m, GMemoryMonitorWarningLevel level)
/// {
///   g_debug ("Warning level: %d", level);
///   if (warning_level > G_MEMORY_MONITOR_WARNING_LEVEL_LOW)
///     drop_caches ();
/// }
/// 
/// static GMemoryMonitor *
/// monitor_low_memory (void)
/// {
///   GMemoryMonitor *m;
///   m = g_memory_monitor_dup_default ();
///   g_signal_connect (G_OBJECT (m), "low-memory-warning",
///                     G_CALLBACK (warning_cb), NULL);
///   return m;
/// }
/// ```
/// 
/// Don't forget to disconnect the `GMemoryMonitor::low`-memory-warning
/// signal, and unref the `GMemoryMonitor` itself when exiting.
public struct MemoryMonitorRef: MemoryMonitorProtocol {
        /// Untyped pointer to the underlying `GMemoryMonitor` instance.
    /// For type-safe access, use the generated, typed pointer `memory_monitor_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MemoryMonitorRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GMemoryMonitor>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GMemoryMonitor>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GMemoryMonitor>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GMemoryMonitor>?) {
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

    /// Reference intialiser for a related type that implements `MemoryMonitorProtocol`
    @inlinable init<T: MemoryMonitorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryMonitorProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryMonitorProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryMonitorProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryMonitorProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryMonitorProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Gets a reference to the default `GMemoryMonitor` for the system.
    @inlinable static func dupDefault() -> MemoryMonitorRef! {
        guard let rv = MemoryMonitorRef(gconstpointer: gconstpointer(g_memory_monitor_dup_default())) else { return nil }
        return rv
    }
}

/// The `MemoryMonitor` type acts as an owner of an underlying `GMemoryMonitor` instance.
/// It provides the methods that can operate on this data type through `MemoryMonitorProtocol` conformance.
/// Use `MemoryMonitor` as a strong reference or owner of a `GMemoryMonitor` instance.
///
/// `GMemoryMonitor` will monitor system memory and suggest to the application
/// when to free memory so as to leave more room for other applications.
/// It is implemented on Linux using the [Low Memory Monitor](https://gitlab.freedesktop.org/hadess/low-memory-monitor/)
/// ([API documentation](https://hadess.pages.freedesktop.org/low-memory-monitor/)).
/// 
/// There is also an implementation for use inside Flatpak sandboxes.
/// 
/// Possible actions to take when the signal is received are:
/// - Free caches
/// - Save files that haven't been looked at in a while to disk, ready to be reopened when needed
/// - Run a garbage collection cycle
/// - Try and compress fragmented allocations
/// - Exit on idle if the process has no reason to stay around
/// - Call [``malloc_trim(3)``](man:malloc_trim) to return cached heap pages to
///   the kernel (if supported by your libc)
/// 
/// Note that some actions may not always improve system performance, and so
/// should be profiled for your application. ``malloc_trim()``, for example, may
/// make future heap allocations slower (due to releasing cached heap pages back
/// to the kernel).
/// 
/// See `GMemoryMonitorWarningLevel` for details on the various warning levels.
/// 
/// (C Language Example):
/// ```C
/// static void
/// warning_cb (GMemoryMonitor *m, GMemoryMonitorWarningLevel level)
/// {
///   g_debug ("Warning level: %d", level);
///   if (warning_level > G_MEMORY_MONITOR_WARNING_LEVEL_LOW)
///     drop_caches ();
/// }
/// 
/// static GMemoryMonitor *
/// monitor_low_memory (void)
/// {
///   GMemoryMonitor *m;
///   m = g_memory_monitor_dup_default ();
///   g_signal_connect (G_OBJECT (m), "low-memory-warning",
///                     G_CALLBACK (warning_cb), NULL);
///   return m;
/// }
/// ```
/// 
/// Don't forget to disconnect the `GMemoryMonitor::low`-memory-warning
/// signal, and unref the `GMemoryMonitor` itself when exiting.
open class MemoryMonitor: Initable, MemoryMonitorProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemoryMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GMemoryMonitor>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemoryMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GMemoryMonitor>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemoryMonitor` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemoryMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemoryMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GMemoryMonitor>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MemoryMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GMemoryMonitor>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GMemoryMonitor` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `MemoryMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GMemoryMonitor>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MemoryMonitorProtocol`
    /// `GMemoryMonitor` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `MemoryMonitorProtocol`
    @inlinable public init<T: MemoryMonitorProtocol>(memoryMonitor other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryMonitorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryMonitorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryMonitorProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryMonitorProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryMonitorProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryMonitorProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryMonitorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MemoryMonitorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    /// Gets a reference to the default `GMemoryMonitor` for the system.
    @inlinable public static func dupDefault() -> MemoryMonitor! {
        guard let rv = MemoryMonitor(gconstpointer: gconstpointer(g_memory_monitor_dup_default())) else { return nil }
        return rv
    }

}

// MARK: no MemoryMonitor properties

public enum MemoryMonitorSignalName: String, SignalNameProtocol {
    /// Emitted when the system is running low on free memory. The signal
    /// handler should then take the appropriate action depending on the
    /// warning level. See the `GMemoryMonitorWarningLevel` documentation for
    /// details.
    case lowMemoryWarning = "low-memory-warning"

}

// MARK: MemoryMonitor signals
public extension MemoryMonitorProtocol {
    /// Connect a Swift signal handler to the given, typed `MemoryMonitorSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: MemoryMonitorSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        GLibObject.ObjectRef(raw: ptr).connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `MemoryMonitorSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: MemoryMonitorSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        GLibObject.ObjectRef(raw: ptr).connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted when the system is running low on free memory. The signal
    /// handler should then take the appropriate action depending on the
    /// warning level. See the `GMemoryMonitorWarningLevel` documentation for
    /// details.
    /// - Note: This represents the underlying `low-memory-warning` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter level: the `GMemoryMonitorWarningLevel` warning level
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `lowMemoryWarning` signal is emitted
    @discardableResult @inlinable func onLowMemoryWarning(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MemoryMonitorRef, _ level: MemoryMonitorWarningLevel) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MemoryMonitorRef, MemoryMonitorWarningLevel, Void>
        let cCallback: @convention(c) (gpointer, UInt32, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MemoryMonitorRef(raw: unownedSelf), MemoryMonitorWarningLevel(arg1))
            return output
        }
        return connect(
            signal: .lowMemoryWarning,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `low-memory-warning` signal for using the `connect(signal:)` methods
    static var lowMemoryWarningSignal: MemoryMonitorSignalName { .lowMemoryWarning }
    
    
}

// MARK: MemoryMonitor Interface: MemoryMonitorProtocol extension (methods and fields)
public extension MemoryMonitorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMemoryMonitor` instance.
    @inlinable var memory_monitor_ptr: UnsafeMutablePointer<GMemoryMonitor>! { return ptr?.assumingMemoryBound(to: GMemoryMonitor.self) }



}



