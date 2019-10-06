import CGLib
import GLib
import GLibObject

// MARK: - AppInfoMonitor Class

/// The `AppInfoMonitorProtocol` protocol exposes the methods and properties of an underlying `GAppInfoMonitor` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AppInfoMonitor`.
/// Alternatively, use `AppInfoMonitorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GAppInfoMonitor` is a very simple object used for monitoring the app
/// info database for changes (ie: newly installed or removed
/// applications).
/// 
/// Call `g_app_info_monitor_get()` to get a `GAppInfoMonitor` and connect
/// to the "changed" signal.
/// 
/// In the usual case, applications should try to make note of the change
/// (doing things like invalidating caches) but not act on it.  In
/// particular, applications should avoid making calls to `GAppInfo` APIs
/// in response to the change signal, deferring these until the time that
/// the data is actually required.  The exception to this case is when
/// application information is actually being displayed on the screen
/// (eg: during a search or when the list of all applications is shown).
/// The reason for this is that changes to the list of installed
/// applications often come in groups (like during system updates) and
/// rescanning the list on every change is pointless and expensive.
public protocol AppInfoMonitorProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `GAppInfoMonitor` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GAppInfoMonitor` instance.
    var app_info_monitor_ptr: UnsafeMutablePointer<GAppInfoMonitor> { get }
}

/// The `AppInfoMonitorRef` type acts as a lightweight Swift reference to an underlying `GAppInfoMonitor` instance.
/// It exposes methods that can operate on this data type through `AppInfoMonitorProtocol` conformance.
/// Use `AppInfoMonitorRef` only as an `unowned` reference to an existing `GAppInfoMonitor` instance.
///
/// `GAppInfoMonitor` is a very simple object used for monitoring the app
/// info database for changes (ie: newly installed or removed
/// applications).
/// 
/// Call `g_app_info_monitor_get()` to get a `GAppInfoMonitor` and connect
/// to the "changed" signal.
/// 
/// In the usual case, applications should try to make note of the change
/// (doing things like invalidating caches) but not act on it.  In
/// particular, applications should avoid making calls to `GAppInfo` APIs
/// in response to the change signal, deferring these until the time that
/// the data is actually required.  The exception to this case is when
/// application information is actually being displayed on the screen
/// (eg: during a search or when the list of all applications is shown).
/// The reason for this is that changes to the list of installed
/// applications often come in groups (like during system updates) and
/// rescanning the list on every change is pointless and expensive.
public struct AppInfoMonitorRef: AppInfoMonitorProtocol {
    /// Untyped pointer to the underlying `GAppInfoMonitor` instance.
    /// For type-safe access, use the generated, typed pointer `app_info_monitor_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AppInfoMonitorRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GAppInfoMonitor>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AppInfoMonitorProtocol`
    init<T: AppInfoMonitorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoMonitorProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoMonitorProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoMonitorProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoMonitorProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoMonitorProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Gets the `GAppInfoMonitor` for the current thread-default main
    /// context.
    /// 
    /// The `GAppInfoMonitor` will emit a "changed" signal in the
    /// thread-default main context whenever the list of installed
    /// applications (as reported by `g_app_info_get_all()`) may have changed.
    /// 
    /// You must only call `g_object_unref()` on the return value from under
    /// the same main context as you created it.
    static func appInfoMonitorGet() -> AppInfoMonitorRef! {
        let rv = g_app_info_monitor_get()
        return rv.map { AppInfoMonitorRef(cast($0)) }
    }
}

/// The `AppInfoMonitor` type acts as a reference-counted owner of an underlying `GAppInfoMonitor` instance.
/// It provides the methods that can operate on this data type through `AppInfoMonitorProtocol` conformance.
/// Use `AppInfoMonitor` as a strong reference or owner of a `GAppInfoMonitor` instance.
///
/// `GAppInfoMonitor` is a very simple object used for monitoring the app
/// info database for changes (ie: newly installed or removed
/// applications).
/// 
/// Call `g_app_info_monitor_get()` to get a `GAppInfoMonitor` and connect
/// to the "changed" signal.
/// 
/// In the usual case, applications should try to make note of the change
/// (doing things like invalidating caches) but not act on it.  In
/// particular, applications should avoid making calls to `GAppInfo` APIs
/// in response to the change signal, deferring these until the time that
/// the data is actually required.  The exception to this case is when
/// application information is actually being displayed on the screen
/// (eg: during a search or when the list of all applications is shown).
/// The reason for this is that changes to the list of installed
/// applications often come in groups (like during system updates) and
/// rescanning the list on every change is pointless and expensive.
open class AppInfoMonitor: Object, AppInfoMonitorProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AppInfoMonitor` instance.
    public init(_ op: UnsafeMutablePointer<GAppInfoMonitor>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `AppInfoMonitorProtocol`
    /// Will retain `GAppInfoMonitor`.
    public convenience init<T: AppInfoMonitorProtocol>(_ other: T) {
        self.init(cast(other.app_info_monitor_ptr))
        g_object_ref(cast(app_info_monitor_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoMonitorProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GAppInfoMonitor.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoMonitorProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GAppInfoMonitor.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoMonitorProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GAppInfoMonitor.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppInfoMonitorProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GAppInfoMonitor>(opaquePointer))
    }


    /// Gets the `GAppInfoMonitor` for the current thread-default main
    /// context.
    /// 
    /// The `GAppInfoMonitor` will emit a "changed" signal in the
    /// thread-default main context whenever the list of installed
    /// applications (as reported by `g_app_info_get_all()`) may have changed.
    /// 
    /// You must only call `g_object_unref()` on the return value from under
    /// the same main context as you created it.
    public static func appInfoMonitorGet() -> AppInfoMonitor! {
        let rv = g_app_info_monitor_get()
        return rv.map { AppInfoMonitor(cast($0)) }
    }

}

// MARK: - no AppInfoMonitor properties

public enum AppInfoMonitorSignalName: String, SignalNameProtocol {
    /// Signal emitted when the app info database for changes (ie: newly installed
    /// or removed applications).
    case changed = "changed"
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
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"

}

public extension AppInfoMonitorProtocol {
    /// Connect a `AppInfoMonitorSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: AppInfoMonitorSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(app_info_monitor_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension AppInfoMonitorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GAppInfoMonitor` instance.
    var app_info_monitor_ptr: UnsafeMutablePointer<GAppInfoMonitor> { return ptr.assumingMemoryBound(to: GAppInfoMonitor.self) }

}



// MARK: - AppLaunchContext Class

/// The `AppLaunchContextProtocol` protocol exposes the methods and properties of an underlying `GAppLaunchContext` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AppLaunchContext`.
/// Alternatively, use `AppLaunchContextRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Integrating the launch with the launching application. This is used to
/// handle for instance startup notification and launching the new application
/// on the same screen as the launching window.
public protocol AppLaunchContextProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `GAppLaunchContext` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GAppLaunchContext` instance.
    var app_launch_context_ptr: UnsafeMutablePointer<GAppLaunchContext> { get }
}

/// The `AppLaunchContextRef` type acts as a lightweight Swift reference to an underlying `GAppLaunchContext` instance.
/// It exposes methods that can operate on this data type through `AppLaunchContextProtocol` conformance.
/// Use `AppLaunchContextRef` only as an `unowned` reference to an existing `GAppLaunchContext` instance.
///
/// Integrating the launch with the launching application. This is used to
/// handle for instance startup notification and launching the new application
/// on the same screen as the launching window.
public struct AppLaunchContextRef: AppLaunchContextProtocol {
    /// Untyped pointer to the underlying `GAppLaunchContext` instance.
    /// For type-safe access, use the generated, typed pointer `app_launch_context_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AppLaunchContextRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GAppLaunchContext>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AppLaunchContextProtocol`
    init<T: AppLaunchContextProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new application launch context. This is not normally used,
    /// instead you instantiate a subclass of this, such as `GdkAppLaunchContext`.
    init() {
        let rv = g_app_launch_context_new()
        self.init(cast(rv))
    }
}

/// The `AppLaunchContext` type acts as a reference-counted owner of an underlying `GAppLaunchContext` instance.
/// It provides the methods that can operate on this data type through `AppLaunchContextProtocol` conformance.
/// Use `AppLaunchContext` as a strong reference or owner of a `GAppLaunchContext` instance.
///
/// Integrating the launch with the launching application. This is used to
/// handle for instance startup notification and launching the new application
/// on the same screen as the launching window.
open class AppLaunchContext: Object, AppLaunchContextProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `AppLaunchContext` instance.
    public init(_ op: UnsafeMutablePointer<GAppLaunchContext>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `AppLaunchContextProtocol`
    /// Will retain `GAppLaunchContext`.
    public convenience init<T: AppLaunchContextProtocol>(_ other: T) {
        self.init(cast(other.app_launch_context_ptr))
        g_object_ref(cast(app_launch_context_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GAppLaunchContext.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GAppLaunchContext.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GAppLaunchContext.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GAppLaunchContext>(opaquePointer))
    }

    /// Creates a new application launch context. This is not normally used,
    /// instead you instantiate a subclass of this, such as `GdkAppLaunchContext`.
    public convenience init() {
        let rv = g_app_launch_context_new()
        self.init(cast(rv))
    }


}

// MARK: - no AppLaunchContext properties

public enum AppLaunchContextSignalName: String, SignalNameProtocol {
    /// The `launch`-failed signal is emitted when a `GAppInfo` launch
    /// fails. The startup notification id is provided, so that the launcher
    /// can cancel the startup notification.
    case launchFailed = "launch-failed"
    /// The `launched` signal is emitted when a `GAppInfo` is successfully
    /// launched. The `platform_data` is an GVariant dictionary mapping
    /// strings to variants (ie a{sv}), which contains additional,
    /// platform-specific data about this launch. On UNIX, at least the
    /// "pid" and "startup-notification-id" keys will be present.
    case launched = "launched"
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
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"

}

public extension AppLaunchContextProtocol {
    /// Connect a `AppLaunchContextSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: AppLaunchContextSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(app_launch_context_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension AppLaunchContextProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GAppLaunchContext` instance.
    var app_launch_context_ptr: UnsafeMutablePointer<GAppLaunchContext> { return ptr.assumingMemoryBound(to: GAppLaunchContext.self) }

    /// Gets the display string for the `context`. This is used to ensure new
    /// applications are started on the same display as the launching
    /// application, by setting the `DISPLAY` environment variable.
    func getDisplay(info: AppInfoProtocol, files: ListProtocol) -> String! {
        let rv = g_app_launch_context_get_display(cast(app_launch_context_ptr), cast(info.ptr), cast(files.ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the complete environment variable list to be passed to
    /// the child process when `context` is used to launch an application.
    /// This is a `nil`-terminated array of strings, where each string has
    /// the form `KEY=VALUE`.
    func getEnvironment() -> UnsafeMutablePointer<UnsafeMutablePointer<CChar>>! {
        let rv = g_app_launch_context_get_environment(cast(app_launch_context_ptr))
        return cast(rv)
    }

    /// Initiates startup notification for the application and returns the
    /// `DESKTOP_STARTUP_ID` for the launched operation, if supported.
    /// 
    /// Startup notification IDs are defined in the
    /// [FreeDesktop.Org Startup Notifications standard](http://standards.freedesktop.org/startup-notification-spec/startup-notification-latest.txt").
    func getStartupNotifyID(info: AppInfoProtocol, files: ListProtocol) -> String! {
        let rv = g_app_launch_context_get_startup_notify_id(cast(app_launch_context_ptr), cast(info.ptr), cast(files.ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Called when an application has failed to launch, so that it can cancel
    /// the application startup notification started in `g_app_launch_context_get_startup_notify_id()`.
    func launchFailed(startupNotifyID startup_notify_id: UnsafePointer<CChar>) {
        g_app_launch_context_launch_failed(cast(app_launch_context_ptr), startup_notify_id)
    
    }

    /// Arranges for `variable` to be set to `value` in the child's
    /// environment when `context` is used to launch an application.
    func setenv(variable: UnsafePointer<CChar>, value: UnsafePointer<CChar>) {
        g_app_launch_context_setenv(cast(app_launch_context_ptr), variable, value)
    
    }

    /// Arranges for `variable` to be unset in the child's environment
    /// when `context` is used to launch an application.
    func unsetenv(variable: UnsafePointer<CChar>) {
        g_app_launch_context_unsetenv(cast(app_launch_context_ptr), variable)
    
    }

    /// Utility function that launches the default application
    /// registered to handle the specified uri. Synchronous I/O
    /// is done on the uri to detect the type of the file if
    /// required.
    /// 
    /// The D-Bus–activated applications don't have to be started if your application
    /// terminates too soon after this function. To prevent this, use
    /// `g_app_info_launch_default_for_uri_async()` instead.
    func appInfoLaunchDefaultFor(uri: UnsafePointer<CChar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_app_info_launch_default_for_uri(uri, cast(app_launch_context_ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Async version of `g_app_info_launch_default_for_uri()`.
    /// 
    /// This version is useful if you are interested in receiving
    /// error information in the case where the application is
    /// sandboxed and the portal may present an application chooser
    /// dialog to the user.
    /// 
    /// This is also useful if you want to be sure that the D-Bus–activated
    /// applications are really started before termination and if you are interested
    /// in receiving error information from their activation.
    func appInfoLaunchDefaultForURIAsync(uri: UnsafePointer<CChar>, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_app_info_launch_default_for_uri_async(uri, cast(app_launch_context_ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }
    /// Gets the complete environment variable list to be passed to
    /// the child process when `context` is used to launch an application.
    /// This is a `nil`-terminated array of strings, where each string has
    /// the form `KEY=VALUE`.
    var environment: UnsafeMutablePointer<UnsafeMutablePointer<CChar>>! {
        /// Gets the complete environment variable list to be passed to
        /// the child process when `context` is used to launch an application.
        /// This is a `nil`-terminated array of strings, where each string has
        /// the form `KEY=VALUE`.
        get {
            let rv = g_app_launch_context_get_environment(cast(app_launch_context_ptr))
            return cast(rv)
        }
    }
}



// MARK: - Application Class

/// The `ApplicationProtocol` protocol exposes the methods and properties of an underlying `GApplication` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Application`.
/// Alternatively, use `ApplicationRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GApplication` is the foundation of an application.  It wraps some
/// low-level platform-specific services and is intended to act as the
/// foundation for higher-level application classes such as
/// `GtkApplication` or `MxApplication`.  In general, you should not use
/// this class outside of a higher level framework.
/// 
/// GApplication provides convenient life cycle management by maintaining
/// a "use count" for the primary application instance. The use count can
/// be changed using `g_application_hold()` and `g_application_release()`. If
/// it drops to zero, the application exits. Higher-level classes such as
/// `GtkApplication` employ the use count to ensure that the application
/// stays alive as long as it has any opened windows.
/// 
/// Another feature that GApplication (optionally) provides is process
/// uniqueness. Applications can make use of this functionality by
/// providing a unique application ID. If given, only one application
/// with this ID can be running at a time per session. The session
/// concept is platform-dependent, but corresponds roughly to a graphical
/// desktop login. When your application is launched again, its
/// arguments are passed through platform communication to the already
/// running program. The already running instance of the program is
/// called the "primary instance"; for non-unique applications this is
/// the always the current instance. On Linux, the D-Bus session bus
/// is used for communication.
/// 
/// The use of `GApplication` differs from some other commonly-used
/// uniqueness libraries (such as libunique) in important ways. The
/// application is not expected to manually register itself and check
/// if it is the primary instance. Instead, the `main()` function of a
/// `GApplication` should do very little more than instantiating the
/// application instance, possibly connecting signal handlers, then
/// calling `g_application_run()`. All checks for uniqueness are done
/// internally. If the application is the primary instance then the
/// startup signal is emitted and the mainloop runs. If the application
/// is not the primary instance then a signal is sent to the primary
/// instance and `g_application_run()` promptly returns. See the code
/// examples below.
/// 
/// If used, the expected form of an application identifier is the same as
/// that of of a
/// [D-Bus well-known bus name](https://dbus.freedesktop.org/doc/dbus-specification.html`message`-protocol-names-bus).
/// Examples include: `com.example.MyApp`, `org.example.internal_apps.Calculator`,
/// `org._7_zip.Archiver`.
/// For details on valid application identifiers, see `g_application_id_is_valid()`.
/// 
/// On Linux, the application identifier is claimed as a well-known bus name
/// on the user's session bus.  This means that the uniqueness of your
/// application is scoped to the current session.  It also means that your
/// application may provide additional services (through registration of other
/// object paths) at that bus name.  The registration of these object paths
/// should be done with the shared GDBus session bus.  Note that due to the
/// internal architecture of GDBus, method calls can be dispatched at any time
/// (even if a main loop is not running).  For this reason, you must ensure that
/// any object paths that you wish to register are registered before `GApplication`
/// attempts to acquire the bus name of your application (which happens in
/// `g_application_register()`).  Unfortunately, this means that you cannot use
/// `g_application_get_is_remote()` to decide if you want to register object paths.
/// 
/// GApplication also implements the `GActionGroup` and `GActionMap`
/// interfaces and lets you easily export actions by adding them with
/// `g_action_map_add_action()`. When invoking an action by calling
/// `g_action_group_activate_action()` on the application, it is always
/// invoked in the primary instance. The actions are also exported on
/// the session bus, and GIO provides the `GDBusActionGroup` wrapper to
/// conveniently access them remotely. GIO provides a `GDBusMenuModel` wrapper
/// for remote access to exported `GMenuModels`.
/// 
/// There is a number of different entry points into a GApplication:
/// 
/// - via 'Activate' (i.e. just starting the application)
/// 
/// - via 'Open' (i.e. opening some files)
/// 
/// - by handling a command-line
/// 
/// - via activating an action
/// 
/// The `GApplication::startup` signal lets you handle the application
/// initialization for all of these in a single place.
/// 
/// Regardless of which of these entry points is used to start the
/// application, GApplication passes some "platform data from the
/// launching instance to the primary instance, in the form of a
/// `GVariant` dictionary mapping strings to variants. To use platform
/// data, override the `before_emit` or `after_emit` virtual functions
/// in your `GApplication` subclass. When dealing with
/// `GApplicationCommandLine` objects, the platform data is
/// directly available via `g_application_command_line_get_cwd()`,
/// `g_application_command_line_get_environ()` and
/// `g_application_command_line_get_platform_data()`.
/// 
/// As the name indicates, the platform data may vary depending on the
/// operating system, but it always includes the current directory (key
/// "cwd"), and optionally the environment (ie the set of environment
/// variables and their values) of the calling process (key "environ").
/// The environment is only added to the platform data if the
/// `G_APPLICATION_SEND_ENVIRONMENT` flag is set. `GApplication` subclasses
/// can add their own platform data by overriding the `add_platform_data`
/// virtual function. For instance, `GtkApplication` adds startup notification
/// data in this way.
/// 
/// To parse commandline arguments you may handle the
/// `GApplication::command`-line signal or override the `local_command_line()`
/// vfunc, to parse them in either the primary instance or the local instance,
/// respectively.
/// 
/// For an example of opening files with a GApplication, see
/// [gapplication-example-open.c](https://git.gnome.org/browse/glib/tree/gio/tests/gapplication-example-open.c).
/// 
/// For an example of using actions with GApplication, see
/// [gapplication-example-actions.c](https://git.gnome.org/browse/glib/tree/gio/tests/gapplication-example-actions.c).
/// 
/// For an example of using extra D-Bus hooks with GApplication, see
/// [gapplication-example-dbushooks.c](https://git.gnome.org/browse/glib/tree/gio/tests/gapplication-example-dbushooks.c).
public protocol ApplicationProtocol: ObjectProtocol, ActionGroupProtocol, ActionMapProtocol {
    /// Untyped pointer to the underlying `GApplication` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GApplication` instance.
    var application_ptr: UnsafeMutablePointer<GApplication> { get }
}

/// The `ApplicationRef` type acts as a lightweight Swift reference to an underlying `GApplication` instance.
/// It exposes methods that can operate on this data type through `ApplicationProtocol` conformance.
/// Use `ApplicationRef` only as an `unowned` reference to an existing `GApplication` instance.
///
/// A `GApplication` is the foundation of an application.  It wraps some
/// low-level platform-specific services and is intended to act as the
/// foundation for higher-level application classes such as
/// `GtkApplication` or `MxApplication`.  In general, you should not use
/// this class outside of a higher level framework.
/// 
/// GApplication provides convenient life cycle management by maintaining
/// a "use count" for the primary application instance. The use count can
/// be changed using `g_application_hold()` and `g_application_release()`. If
/// it drops to zero, the application exits. Higher-level classes such as
/// `GtkApplication` employ the use count to ensure that the application
/// stays alive as long as it has any opened windows.
/// 
/// Another feature that GApplication (optionally) provides is process
/// uniqueness. Applications can make use of this functionality by
/// providing a unique application ID. If given, only one application
/// with this ID can be running at a time per session. The session
/// concept is platform-dependent, but corresponds roughly to a graphical
/// desktop login. When your application is launched again, its
/// arguments are passed through platform communication to the already
/// running program. The already running instance of the program is
/// called the "primary instance"; for non-unique applications this is
/// the always the current instance. On Linux, the D-Bus session bus
/// is used for communication.
/// 
/// The use of `GApplication` differs from some other commonly-used
/// uniqueness libraries (such as libunique) in important ways. The
/// application is not expected to manually register itself and check
/// if it is the primary instance. Instead, the `main()` function of a
/// `GApplication` should do very little more than instantiating the
/// application instance, possibly connecting signal handlers, then
/// calling `g_application_run()`. All checks for uniqueness are done
/// internally. If the application is the primary instance then the
/// startup signal is emitted and the mainloop runs. If the application
/// is not the primary instance then a signal is sent to the primary
/// instance and `g_application_run()` promptly returns. See the code
/// examples below.
/// 
/// If used, the expected form of an application identifier is the same as
/// that of of a
/// [D-Bus well-known bus name](https://dbus.freedesktop.org/doc/dbus-specification.html`message`-protocol-names-bus).
/// Examples include: `com.example.MyApp`, `org.example.internal_apps.Calculator`,
/// `org._7_zip.Archiver`.
/// For details on valid application identifiers, see `g_application_id_is_valid()`.
/// 
/// On Linux, the application identifier is claimed as a well-known bus name
/// on the user's session bus.  This means that the uniqueness of your
/// application is scoped to the current session.  It also means that your
/// application may provide additional services (through registration of other
/// object paths) at that bus name.  The registration of these object paths
/// should be done with the shared GDBus session bus.  Note that due to the
/// internal architecture of GDBus, method calls can be dispatched at any time
/// (even if a main loop is not running).  For this reason, you must ensure that
/// any object paths that you wish to register are registered before `GApplication`
/// attempts to acquire the bus name of your application (which happens in
/// `g_application_register()`).  Unfortunately, this means that you cannot use
/// `g_application_get_is_remote()` to decide if you want to register object paths.
/// 
/// GApplication also implements the `GActionGroup` and `GActionMap`
/// interfaces and lets you easily export actions by adding them with
/// `g_action_map_add_action()`. When invoking an action by calling
/// `g_action_group_activate_action()` on the application, it is always
/// invoked in the primary instance. The actions are also exported on
/// the session bus, and GIO provides the `GDBusActionGroup` wrapper to
/// conveniently access them remotely. GIO provides a `GDBusMenuModel` wrapper
/// for remote access to exported `GMenuModels`.
/// 
/// There is a number of different entry points into a GApplication:
/// 
/// - via 'Activate' (i.e. just starting the application)
/// 
/// - via 'Open' (i.e. opening some files)
/// 
/// - by handling a command-line
/// 
/// - via activating an action
/// 
/// The `GApplication::startup` signal lets you handle the application
/// initialization for all of these in a single place.
/// 
/// Regardless of which of these entry points is used to start the
/// application, GApplication passes some "platform data from the
/// launching instance to the primary instance, in the form of a
/// `GVariant` dictionary mapping strings to variants. To use platform
/// data, override the `before_emit` or `after_emit` virtual functions
/// in your `GApplication` subclass. When dealing with
/// `GApplicationCommandLine` objects, the platform data is
/// directly available via `g_application_command_line_get_cwd()`,
/// `g_application_command_line_get_environ()` and
/// `g_application_command_line_get_platform_data()`.
/// 
/// As the name indicates, the platform data may vary depending on the
/// operating system, but it always includes the current directory (key
/// "cwd"), and optionally the environment (ie the set of environment
/// variables and their values) of the calling process (key "environ").
/// The environment is only added to the platform data if the
/// `G_APPLICATION_SEND_ENVIRONMENT` flag is set. `GApplication` subclasses
/// can add their own platform data by overriding the `add_platform_data`
/// virtual function. For instance, `GtkApplication` adds startup notification
/// data in this way.
/// 
/// To parse commandline arguments you may handle the
/// `GApplication::command`-line signal or override the `local_command_line()`
/// vfunc, to parse them in either the primary instance or the local instance,
/// respectively.
/// 
/// For an example of opening files with a GApplication, see
/// [gapplication-example-open.c](https://git.gnome.org/browse/glib/tree/gio/tests/gapplication-example-open.c).
/// 
/// For an example of using actions with GApplication, see
/// [gapplication-example-actions.c](https://git.gnome.org/browse/glib/tree/gio/tests/gapplication-example-actions.c).
/// 
/// For an example of using extra D-Bus hooks with GApplication, see
/// [gapplication-example-dbushooks.c](https://git.gnome.org/browse/glib/tree/gio/tests/gapplication-example-dbushooks.c).
public struct ApplicationRef: ApplicationProtocol {
    /// Untyped pointer to the underlying `GApplication` instance.
    /// For type-safe access, use the generated, typed pointer `application_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ApplicationRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GApplication>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ApplicationProtocol`
    init<T: ApplicationProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GApplication` instance.
    /// 
    /// If non-`nil`, the application id must be valid.  See
    /// `g_application_id_is_valid()`.
    /// 
    /// If no application ID is given then some features of `GApplication`
    /// (most notably application uniqueness) will be disabled.
    init( application_id: UnsafePointer<gchar>, flags: ApplicationFlags) {
        let rv = g_application_new(application_id, flags)
        self.init(cast(rv))
    }
    /// Returns the default `GApplication` instance for this process.
    /// 
    /// Normally there is only one `GApplication` per process and it becomes
    /// the default when it is created.  You can exercise more control over
    /// this by using `g_application_set_default()`.
    /// 
    /// If there is no default application then `nil` is returned.
    static func getDefault() -> ApplicationRef! {
        let rv = g_application_get_default()
        return rv.map { ApplicationRef(cast($0)) }
    }
}

/// The `Application` type acts as a reference-counted owner of an underlying `GApplication` instance.
/// It provides the methods that can operate on this data type through `ApplicationProtocol` conformance.
/// Use `Application` as a strong reference or owner of a `GApplication` instance.
///
/// A `GApplication` is the foundation of an application.  It wraps some
/// low-level platform-specific services and is intended to act as the
/// foundation for higher-level application classes such as
/// `GtkApplication` or `MxApplication`.  In general, you should not use
/// this class outside of a higher level framework.
/// 
/// GApplication provides convenient life cycle management by maintaining
/// a "use count" for the primary application instance. The use count can
/// be changed using `g_application_hold()` and `g_application_release()`. If
/// it drops to zero, the application exits. Higher-level classes such as
/// `GtkApplication` employ the use count to ensure that the application
/// stays alive as long as it has any opened windows.
/// 
/// Another feature that GApplication (optionally) provides is process
/// uniqueness. Applications can make use of this functionality by
/// providing a unique application ID. If given, only one application
/// with this ID can be running at a time per session. The session
/// concept is platform-dependent, but corresponds roughly to a graphical
/// desktop login. When your application is launched again, its
/// arguments are passed through platform communication to the already
/// running program. The already running instance of the program is
/// called the "primary instance"; for non-unique applications this is
/// the always the current instance. On Linux, the D-Bus session bus
/// is used for communication.
/// 
/// The use of `GApplication` differs from some other commonly-used
/// uniqueness libraries (such as libunique) in important ways. The
/// application is not expected to manually register itself and check
/// if it is the primary instance. Instead, the `main()` function of a
/// `GApplication` should do very little more than instantiating the
/// application instance, possibly connecting signal handlers, then
/// calling `g_application_run()`. All checks for uniqueness are done
/// internally. If the application is the primary instance then the
/// startup signal is emitted and the mainloop runs. If the application
/// is not the primary instance then a signal is sent to the primary
/// instance and `g_application_run()` promptly returns. See the code
/// examples below.
/// 
/// If used, the expected form of an application identifier is the same as
/// that of of a
/// [D-Bus well-known bus name](https://dbus.freedesktop.org/doc/dbus-specification.html`message`-protocol-names-bus).
/// Examples include: `com.example.MyApp`, `org.example.internal_apps.Calculator`,
/// `org._7_zip.Archiver`.
/// For details on valid application identifiers, see `g_application_id_is_valid()`.
/// 
/// On Linux, the application identifier is claimed as a well-known bus name
/// on the user's session bus.  This means that the uniqueness of your
/// application is scoped to the current session.  It also means that your
/// application may provide additional services (through registration of other
/// object paths) at that bus name.  The registration of these object paths
/// should be done with the shared GDBus session bus.  Note that due to the
/// internal architecture of GDBus, method calls can be dispatched at any time
/// (even if a main loop is not running).  For this reason, you must ensure that
/// any object paths that you wish to register are registered before `GApplication`
/// attempts to acquire the bus name of your application (which happens in
/// `g_application_register()`).  Unfortunately, this means that you cannot use
/// `g_application_get_is_remote()` to decide if you want to register object paths.
/// 
/// GApplication also implements the `GActionGroup` and `GActionMap`
/// interfaces and lets you easily export actions by adding them with
/// `g_action_map_add_action()`. When invoking an action by calling
/// `g_action_group_activate_action()` on the application, it is always
/// invoked in the primary instance. The actions are also exported on
/// the session bus, and GIO provides the `GDBusActionGroup` wrapper to
/// conveniently access them remotely. GIO provides a `GDBusMenuModel` wrapper
/// for remote access to exported `GMenuModels`.
/// 
/// There is a number of different entry points into a GApplication:
/// 
/// - via 'Activate' (i.e. just starting the application)
/// 
/// - via 'Open' (i.e. opening some files)
/// 
/// - by handling a command-line
/// 
/// - via activating an action
/// 
/// The `GApplication::startup` signal lets you handle the application
/// initialization for all of these in a single place.
/// 
/// Regardless of which of these entry points is used to start the
/// application, GApplication passes some "platform data from the
/// launching instance to the primary instance, in the form of a
/// `GVariant` dictionary mapping strings to variants. To use platform
/// data, override the `before_emit` or `after_emit` virtual functions
/// in your `GApplication` subclass. When dealing with
/// `GApplicationCommandLine` objects, the platform data is
/// directly available via `g_application_command_line_get_cwd()`,
/// `g_application_command_line_get_environ()` and
/// `g_application_command_line_get_platform_data()`.
/// 
/// As the name indicates, the platform data may vary depending on the
/// operating system, but it always includes the current directory (key
/// "cwd"), and optionally the environment (ie the set of environment
/// variables and their values) of the calling process (key "environ").
/// The environment is only added to the platform data if the
/// `G_APPLICATION_SEND_ENVIRONMENT` flag is set. `GApplication` subclasses
/// can add their own platform data by overriding the `add_platform_data`
/// virtual function. For instance, `GtkApplication` adds startup notification
/// data in this way.
/// 
/// To parse commandline arguments you may handle the
/// `GApplication::command`-line signal or override the `local_command_line()`
/// vfunc, to parse them in either the primary instance or the local instance,
/// respectively.
/// 
/// For an example of opening files with a GApplication, see
/// [gapplication-example-open.c](https://git.gnome.org/browse/glib/tree/gio/tests/gapplication-example-open.c).
/// 
/// For an example of using actions with GApplication, see
/// [gapplication-example-actions.c](https://git.gnome.org/browse/glib/tree/gio/tests/gapplication-example-actions.c).
/// 
/// For an example of using extra D-Bus hooks with GApplication, see
/// [gapplication-example-dbushooks.c](https://git.gnome.org/browse/glib/tree/gio/tests/gapplication-example-dbushooks.c).
open class Application: Object, ApplicationProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Application` instance.
    public init(_ op: UnsafeMutablePointer<GApplication>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ApplicationProtocol`
    /// Will retain `GApplication`.
    public convenience init<T: ApplicationProtocol>(_ other: T) {
        self.init(cast(other.application_ptr))
        g_object_ref(cast(application_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GApplication.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GApplication.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GApplication.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GApplication>(opaquePointer))
    }

    /// Creates a new `GApplication` instance.
    /// 
    /// If non-`nil`, the application id must be valid.  See
    /// `g_application_id_is_valid()`.
    /// 
    /// If no application ID is given then some features of `GApplication`
    /// (most notably application uniqueness) will be disabled.
    public convenience init( application_id: UnsafePointer<gchar>, flags: ApplicationFlags) {
        let rv = g_application_new(application_id, flags)
        self.init(cast(rv))
    }

    /// Returns the default `GApplication` instance for this process.
    /// 
    /// Normally there is only one `GApplication` per process and it becomes
    /// the default when it is created.  You can exercise more control over
    /// this by using `g_application_set_default()`.
    /// 
    /// If there is no default application then `nil` is returned.
    public static func getDefault() -> Application! {
        let rv = g_application_get_default()
        return rv.map { Application(cast($0)) }
    }

}

public enum ApplicationPropertyName: String, PropertyNameProtocol {
    case actionGroup = "action-group"
    case applicationID = "application-id"
    case flags = "flags"
    case inactivityTimeout = "inactivity-timeout"
    /// Whether the application is currently marked as busy through
    /// `g_application_mark_busy()` or `g_application_bind_busy_property()`.
    case isBusy = "is-busy"
    case isRegistered = "is-registered"
    case isRemote = "is-remote"
    case resourceBasePath = "resource-base-path"
}

public extension ApplicationProtocol {
    /// Bind a `ApplicationPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: ApplicationPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(application_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum ApplicationSignalName: String, SignalNameProtocol {
    /// The `activate` signal is emitted on the primary instance when an
    /// activation occurs. See `g_application_activate()`.
    case activate = "activate"
    /// The `command`-line signal is emitted on the primary instance when
    /// a commandline is not handled locally. See `g_application_run()` and
    /// the `GApplicationCommandLine` documentation for more information.
    case commandLine = "command-line"
    /// The `handle`-local-options signal is emitted on the local instance
    /// after the parsing of the commandline options has occurred.
    /// 
    /// You can add options to be recognised during commandline option
    /// parsing using `g_application_add_main_option_entries()` and
    /// `g_application_add_option_group()`.
    /// 
    /// Signal handlers can inspect `options` (along with values pointed to
    /// from the `arg_data` of an installed `GOptionEntrys`) in order to
    /// decide to perform certain actions, including direct local handling
    /// (which may be useful for options like --version).
    /// 
    /// In the event that the application is marked
    /// `G_APPLICATION_HANDLES_COMMAND_LINE` the "normal processing" will
    /// send the `options` dictionary to the primary instance where it can be
    /// read with `g_application_command_line_get_options_dict()`.  The signal
    /// handler can modify the dictionary before returning, and the
    /// modified dictionary will be sent.
    /// 
    /// In the event that `G_APPLICATION_HANDLES_COMMAND_LINE` is not set,
    /// "normal processing" will treat the remaining uncollected command
    /// line arguments as filenames or URIs.  If there are no arguments,
    /// the application is activated by `g_application_activate()`.  One or
    /// more arguments results in a call to `g_application_open()`.
    /// 
    /// If you want to handle the local commandline arguments for yourself
    /// by converting them to calls to `g_application_open()` or
    /// `g_action_group_activate_action()` then you must be sure to register
    /// the application first.  You should probably not call
    /// `g_application_activate()` for yourself, however: just return -1 and
    /// allow the default handler to do it for you.  This will ensure that
    /// the `--gapplication-service` switch works properly (i.e. no activation
    /// in that case).
    /// 
    /// Note that this signal is emitted from the default implementation of
    /// `local_command_line()`.  If you override that function and don't
    /// chain up then this signal will never be emitted.
    /// 
    /// You can override `local_command_line()` if you need more powerful
    /// capabilities than what is provided here, but this should not
    /// normally be required.
    case handleLocalOptions = "handle-local-options"
    /// The `name`-lost signal is emitted only on the registered primary instance
    /// when a new instance has taken over. This can only happen if the application
    /// is using the `G_APPLICATION_ALLOW_REPLACEMENT` flag.
    /// 
    /// The default handler for this signal calls `g_application_quit()`.
    case nameLost = "name-lost"
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
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The `open` signal is emitted on the primary instance when there are
    /// files to open. See `g_application_open()` for more information.
    case open = "open"
    /// The `shutdown` signal is emitted only on the registered primary instance
    /// immediately after the main loop terminates.
    case shutdown = "shutdown"
    /// The `startup` signal is emitted on the primary instance immediately
    /// after registration. See `g_application_register()`.
    case startup = "startup"
    case notifyActionGroup = "notify::action-group"
    case notifyApplicationID = "notify::application-id"
    case notifyFlags = "notify::flags"
    case notifyInactivityTimeout = "notify::inactivity-timeout"
    /// Whether the application is currently marked as busy through
    /// `g_application_mark_busy()` or `g_application_bind_busy_property()`.
    case notifyIsBusy = "notify::is-busy"
    case notifyIsRegistered = "notify::is-registered"
    case notifyIsRemote = "notify::is-remote"
    case notifyResourceBasePath = "notify::resource-base-path"
}

public extension ApplicationProtocol {
    /// Connect a `ApplicationSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: ApplicationSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(application_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension ApplicationProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GApplication` instance.
    var application_ptr: UnsafeMutablePointer<GApplication> { return ptr.assumingMemoryBound(to: GApplication.self) }

    /// Activates the application.
    /// 
    /// In essence, this results in the `GApplication::activate` signal being
    /// emitted in the primary instance.
    /// 
    /// The application must be registered before calling this function.
    func activate() {
        g_application_activate(cast(application_ptr))
    
    }

    /// Add an option to be handled by `application`.
    /// 
    /// Calling this function is the equivalent of calling
    /// `g_application_add_main_option_entries()` with a single `GOptionEntry`
    /// that has its arg_data member set to `nil`.
    /// 
    /// The parsed arguments will be packed into a `GVariantDict` which
    /// is passed to `GApplication::handle`-local-options. If
    /// `G_APPLICATION_HANDLES_COMMAND_LINE` is set, then it will also
    /// be sent to the primary instance. See
    /// `g_application_add_main_option_entries()` for more details.
    /// 
    /// See `GOptionEntry` for more documentation of the arguments.
    func addMainOption(longName long_name: UnsafePointer<CChar>, shortName short_name: gchar, flags: GLib.OptionFlags, arg: GLib.OptionArg, description: UnsafePointer<CChar>, argDescription arg_description: UnsafePointer<CChar>) {
        g_application_add_main_option(cast(application_ptr), long_name, short_name, flags, arg, description, arg_description)
    
    }

    /// Adds main option entries to be handled by `application`.
    /// 
    /// This function is comparable to `g_option_context_add_main_entries()`.
    /// 
    /// After the commandline arguments are parsed, the
    /// `GApplication::handle`-local-options signal will be emitted.  At this
    /// point, the application can inspect the values pointed to by `arg_data`
    /// in the given `GOptionEntrys`.
    /// 
    /// Unlike `GOptionContext`, `GApplication` supports giving a `nil`
    /// `arg_data` for a non-callback `GOptionEntry`.  This results in the
    /// argument in question being packed into a `GVariantDict` which is also
    /// passed to `GApplication::handle`-local-options, where it can be
    /// inspected and modified.  If `G_APPLICATION_HANDLES_COMMAND_LINE` is
    /// set, then the resulting dictionary is sent to the primary instance,
    /// where `g_application_command_line_get_options_dict()` will return it.
    /// This "packing" is done according to the type of the argument --
    /// booleans for normal flags, strings for strings, bytestrings for
    /// filenames, etc.  The packing only occurs if the flag is given (ie: we
    /// do not pack a "false" `GVariant` in the case that a flag is missing).
    /// 
    /// In general, it is recommended that all commandline arguments are
    /// parsed locally.  The options dictionary should then be used to
    /// transmit the result of the parsing to the primary instance, where
    /// `g_variant_dict_lookup()` can be used.  For local options, it is
    /// possible to either use `arg_data` in the usual way, or to consult (and
    /// potentially remove) the option from the options dictionary.
    /// 
    /// This function is new in GLib 2.40.  Before then, the only real choice
    /// was to send all of the commandline arguments (options and all) to the
    /// primary instance for handling.  `GApplication` ignored them completely
    /// on the local side.  Calling this function "opts in" to the new
    /// behaviour, and in particular, means that unrecognised options will be
    /// treated as errors.  Unrecognised options have never been ignored when
    /// `G_APPLICATION_HANDLES_COMMAND_LINE` is unset.
    /// 
    /// If `GApplication::handle`-local-options needs to see the list of
    /// filenames, then the use of `G_OPTION_REMAINING` is recommended.  If
    /// `arg_data` is `nil` then `G_OPTION_REMAINING` can be used as a key into
    /// the options dictionary.  If you do use `G_OPTION_REMAINING` then you
    /// need to handle these arguments for yourself because once they are
    /// consumed, they will no longer be visible to the default handling
    /// (which treats them as filenames to be opened).
    /// 
    /// It is important to use the proper GVariant format when retrieving
    /// the options with `g_variant_dict_lookup()`:
    /// - for `G_OPTION_ARG_NONE`, use b
    /// - for `G_OPTION_ARG_STRING`, use &s
    /// - for `G_OPTION_ARG_INT`, use i
    /// - for `G_OPTION_ARG_INT64`, use x
    /// - for `G_OPTION_ARG_DOUBLE`, use d
    /// - for `G_OPTION_ARG_FILENAME`, use ^ay
    /// - for `G_OPTION_ARG_STRING_ARRAY`, use &as
    /// - for `G_OPTION_ARG_FILENAME_ARRAY`, use ^aay
    func addMainOption(entries: UnsafePointer<GOptionEntry>) {
        g_application_add_main_option_entries(cast(application_ptr), cast(entries))
    
    }

    /// Adds a `GOptionGroup` to the commandline handling of `application`.
    /// 
    /// This function is comparable to `g_option_context_add_group()`.
    /// 
    /// Unlike `g_application_add_main_option_entries()`, this function does
    /// not deal with `nil` `arg_data` and never transmits options to the
    /// primary instance.
    /// 
    /// The reason for that is because, by the time the options arrive at the
    /// primary instance, it is typically too late to do anything with them.
    /// Taking the GTK option group as an example: GTK will already have been
    /// initialised by the time the `GApplication::command`-line handler runs.
    /// In the case that this is not the first-running instance of the
    /// application, the existing instance may already have been running for
    /// a very long time.
    /// 
    /// This means that the options from `GOptionGroup` are only really usable
    /// in the case that the instance of the application being run is the
    /// first instance.  Passing options like `--display=` or `--gdk-debug=`
    /// on future runs will have no effect on the existing primary instance.
    /// 
    /// Calling this function will cause the options in the supplied option
    /// group to be parsed, but it does not cause you to be "opted in" to the
    /// new functionality whereby unrecognised options are rejected even if
    /// `G_APPLICATION_HANDLES_COMMAND_LINE` was given.
    func addOption(group: OptionGroupProtocol) {
        g_application_add_option_group(cast(application_ptr), cast(group.ptr))
    
    }

    /// Marks `application` as busy (see `g_application_mark_busy()`) while
    /// `property` on `object` is `true`.
    /// 
    /// The binding holds a reference to `application` while it is active, but
    /// not to `object`. Instead, the binding is destroyed when `object` is
    /// finalized.
    func bindBusyProperty(object: ObjectProtocol, property: UnsafePointer<gchar>) {
        g_application_bind_busy_property(cast(application_ptr), cast(object.ptr), property)
    
    }

    /// Gets the unique identifier for `application`.
    func getApplicationID() -> String! {
        let rv = g_application_get_application_id(cast(application_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the `GDBusConnection` being used by the application, or `nil`.
    /// 
    /// If `GApplication` is using its D-Bus backend then this function will
    /// return the `GDBusConnection` being used for uniqueness and
    /// communication with the desktop environment and other instances of the
    /// application.
    /// 
    /// If `GApplication` is not using D-Bus then this function will return
    /// `nil`.  This includes the situation where the D-Bus backend would
    /// normally be in use but we were unable to connect to the bus.
    /// 
    /// This function must not be called before the application has been
    /// registered.  See `g_application_get_is_registered()`.
    func getDbusConnection() -> UnsafeMutablePointer<GDBusConnection>! {
        let rv = g_application_get_dbus_connection(cast(application_ptr))
        return cast(rv)
    }

    /// Gets the D-Bus object path being used by the application, or `nil`.
    /// 
    /// If `GApplication` is using its D-Bus backend then this function will
    /// return the D-Bus object path that `GApplication` is using.  If the
    /// application is the primary instance then there is an object published
    /// at this path.  If the application is not the primary instance then
    /// the result of this function is undefined.
    /// 
    /// If `GApplication` is not using D-Bus then this function will return
    /// `nil`.  This includes the situation where the D-Bus backend would
    /// normally be in use but we were unable to connect to the bus.
    /// 
    /// This function must not be called before the application has been
    /// registered.  See `g_application_get_is_registered()`.
    func getDbusObjectPath() -> String! {
        let rv = g_application_get_dbus_object_path(cast(application_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the flags for `application`.
    /// 
    /// See `GApplicationFlags`.
    func getFlags() -> GApplicationFlags {
        let rv = g_application_get_flags(cast(application_ptr))
        return rv
    }

    /// Gets the current inactivity timeout for the application.
    /// 
    /// This is the amount of time (in milliseconds) after the last call to
    /// `g_application_release()` before the application stops running.
    func getInactivityTimeout() -> CUnsignedInt {
        let rv = g_application_get_inactivity_timeout(cast(application_ptr))
        return CUnsignedInt(rv)
    }

    /// Gets the application's current busy state, as set through
    /// `g_application_mark_busy()` or `g_application_bind_busy_property()`.
    func getIsBusy() -> Bool {
        let rv = g_application_get_is_busy(cast(application_ptr))
        return Bool(rv != 0)
    }

    /// Checks if `application` is registered.
    /// 
    /// An application is registered if `g_application_register()` has been
    /// successfully called.
    func getIsRegistered() -> Bool {
        let rv = g_application_get_is_registered(cast(application_ptr))
        return Bool(rv != 0)
    }

    /// Checks if `application` is remote.
    /// 
    /// If `application` is remote then it means that another instance of
    /// application already exists (the 'primary' instance).  Calls to
    /// perform actions on `application` will result in the actions being
    /// performed by the primary instance.
    /// 
    /// The value of this property cannot be accessed before
    /// `g_application_register()` has been called.  See
    /// `g_application_get_is_registered()`.
    func getIsRemote() -> Bool {
        let rv = g_application_get_is_remote(cast(application_ptr))
        return Bool(rv != 0)
    }

    /// Gets the resource base path of `application`.
    /// 
    /// See `g_application_set_resource_base_path()` for more information.
    func getResourceBasePath() -> String! {
        let rv = g_application_get_resource_base_path(cast(application_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Increases the use count of `application`.
    /// 
    /// Use this function to indicate that the application has a reason to
    /// continue to run.  For example, `g_application_hold()` is called by GTK+
    /// when a toplevel window is on the screen.
    /// 
    /// To cancel the hold, call `g_application_release()`.
    func hold() {
        g_application_hold(cast(application_ptr))
    
    }

    /// Increases the busy count of `application`.
    /// 
    /// Use this function to indicate that the application is busy, for instance
    /// while a long running operation is pending.
    /// 
    /// The busy state will be exposed to other processes, so a session shell will
    /// use that information to indicate the state to the user (e.g. with a
    /// spinner).
    /// 
    /// To cancel the busy indication, use `g_application_unmark_busy()`.
    func markBusy() {
        g_application_mark_busy(cast(application_ptr))
    
    }

    /// Opens the given files.
    /// 
    /// In essence, this results in the `GApplication::open` signal being emitted
    /// in the primary instance.
    /// 
    /// `n_files` must be greater than zero.
    /// 
    /// `hint` is simply passed through to the `open` signal.  It is
    /// intended to be used by applications that have multiple modes for
    /// opening files (eg: "view" vs "edit", etc).  Unless you have a need
    /// for this functionality, you should use "".
    /// 
    /// The application must be registered before calling this function
    /// and it must have the `G_APPLICATION_HANDLES_OPEN` flag set.
    func open(files: UnsafeMutablePointer<UnsafeMutablePointer<GFile>>, nFiles n_files: CInt, hint: UnsafePointer<gchar>) {
        g_application_open(cast(application_ptr), cast(files), gint(n_files), hint)
    
    }

    /// Immediately quits the application.
    /// 
    /// Upon return to the mainloop, `g_application_run()` will return,
    /// calling only the 'shutdown' function before doing so.
    /// 
    /// The hold count is ignored.
    /// Take care if your code has called `g_application_hold()` on the application and
    /// is therefore still expecting it to exist.
    /// (Note that you may have called `g_application_hold()` indirectly, for example
    /// through `gtk_application_add_window()`.)
    /// 
    /// The result of calling `g_application_run()` again after it returns is
    /// unspecified.
    func quit() {
        g_application_quit(cast(application_ptr))
    
    }

    /// Attempts registration of the application.
    /// 
    /// This is the point at which the application discovers if it is the
    /// primary instance or merely acting as a remote for an already-existing
    /// primary instance.  This is implemented by attempting to acquire the
    /// application identifier as a unique bus name on the session bus using
    /// GDBus.
    /// 
    /// If there is no application ID or if `G_APPLICATION_NON_UNIQUE` was
    /// given, then this process will always become the primary instance.
    /// 
    /// Due to the internal architecture of GDBus, method calls can be
    /// dispatched at any time (even if a main loop is not running).  For
    /// this reason, you must ensure that any object paths that you wish to
    /// register are registered before calling this function.
    /// 
    /// If the application has already been registered then `true` is
    /// returned with no work performed.
    /// 
    /// The `GApplication::startup` signal is emitted if registration succeeds
    /// and `application` is the primary instance (including the non-unique
    /// case).
    /// 
    /// In the event of an error (such as `cancellable` being cancelled, or a
    /// failure to connect to the session bus), `false` is returned and `error`
    /// is set appropriately.
    /// 
    /// Note: the return value of this function is not an indicator that this
    /// instance is or is not the primary instance of the application.  See
    /// `g_application_get_is_remote()` for that.
    func register(cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_application_register(cast(application_ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Decrease the use count of `application`.
    /// 
    /// When the use count reaches zero, the application will stop running.
    /// 
    /// Never call this function except to cancel the effect of a previous
    /// call to `g_application_hold()`.
    func release() {
        g_application_release(cast(application_ptr))
    
    }

    /// Runs the application.
    /// 
    /// This function is intended to be run from `main()` and its return value
    /// is intended to be returned by `main()`. Although you are expected to pass
    /// the `argc`, `argv` parameters from `main()` to this function, it is possible
    /// to pass `nil` if `argv` is not available or commandline handling is not
    /// required.  Note that on Windows, `argc` and `argv` are ignored, and
    /// `g_win32_get_command_line()` is called internally (for proper support
    /// of Unicode commandline arguments).
    /// 
    /// `GApplication` will attempt to parse the commandline arguments.  You
    /// can add commandline flags to the list of recognised options by way of
    /// `g_application_add_main_option_entries()`.  After this, the
    /// `GApplication::handle`-local-options signal is emitted, from which the
    /// application can inspect the values of its `GOptionEntrys`.
    /// 
    /// `GApplication::handle`-local-options is a good place to handle options
    /// such as `--version`, where an immediate reply from the local process is
    /// desired (instead of communicating with an already-running instance).
    /// A `GApplication::handle`-local-options handler can stop further processing
    /// by returning a non-negative value, which then becomes the exit status of
    /// the process.
    /// 
    /// What happens next depends on the flags: if
    /// `G_APPLICATION_HANDLES_COMMAND_LINE` was specified then the remaining
    /// commandline arguments are sent to the primary instance, where a
    /// `GApplication::command`-line signal is emitted.  Otherwise, the
    /// remaining commandline arguments are assumed to be a list of files.
    /// If there are no files listed, the application is activated via the
    /// `GApplication::activate` signal.  If there are one or more files, and
    /// `G_APPLICATION_HANDLES_OPEN` was specified then the files are opened
    /// via the `GApplication::open` signal.
    /// 
    /// If you are interested in doing more complicated local handling of the
    /// commandline then you should implement your own `GApplication` subclass
    /// and override `local_command_line()`. In this case, you most likely want
    /// to return `true` from your `local_command_line()` implementation to
    /// suppress the default handling. See
    /// [gapplication-example-cmdline2.c][gapplication-example-cmdline2]
    /// for an example.
    /// 
    /// If, after the above is done, the use count of the application is zero
    /// then the exit status is returned immediately.  If the use count is
    /// non-zero then the default main context is iterated until the use count
    /// falls to zero, at which point 0 is returned.
    /// 
    /// If the `G_APPLICATION_IS_SERVICE` flag is set, then the service will
    /// run for as much as 10 seconds with a use count of zero while waiting
    /// for the message that caused the activation to arrive.  After that,
    /// if the use count falls to zero the application will exit immediately,
    /// except in the case that `g_application_set_inactivity_timeout()` is in
    /// use.
    /// 
    /// This function sets the prgname (`g_set_prgname()`), if not already set,
    /// to the basename of argv[0].
    /// 
    /// Much like `g_main_loop_run()`, this function will acquire the main context
    /// for the duration that the application is running.
    /// 
    /// Since 2.40, applications that are not explicitly flagged as services
    /// or launchers (ie: neither `G_APPLICATION_IS_SERVICE` or
    /// `G_APPLICATION_IS_LAUNCHER` are given as flags) will check (from the
    /// default handler for local_command_line) if "--gapplication-service"
    /// was given in the command line.  If this flag is present then normal
    /// commandline processing is interrupted and the
    /// `G_APPLICATION_IS_SERVICE` flag is set.  This provides a "compromise"
    /// solution whereby running an application directly from the commandline
    /// will invoke it in the normal way (which can be useful for debugging)
    /// while still allowing applications to be D-Bus activated in service
    /// mode.  The D-Bus service file should invoke the executable with
    /// "--gapplication-service" as the sole commandline argument.  This
    /// approach is suitable for use by most graphical applications but
    /// should not be used from applications like editors that need precise
    /// control over when processes invoked via the commandline will exit and
    /// what their exit status will be.
    func run(argc: CInt, argv: UnsafeMutablePointer<UnsafeMutablePointer<CChar>>) -> CInt {
        let rv = g_application_run(cast(application_ptr), argc, cast(argv))
        return rv
    }

    /// Sends a notification on behalf of `application` to the desktop shell.
    /// There is no guarantee that the notification is displayed immediately,
    /// or even at all.
    /// 
    /// Notifications may persist after the application exits. It will be
    /// D-Bus-activated when the notification or one of its actions is
    /// activated.
    /// 
    /// Modifying `notification` after this call has no effect. However, the
    /// object can be reused for a later call to this function.
    /// 
    /// `id` may be any string that uniquely identifies the event for the
    /// application. It does not need to be in any special format. For
    /// example, "new-message" might be appropriate for a notification about
    /// new messages.
    /// 
    /// If a previous notification was sent with the same `id`, it will be
    /// replaced with `notification` and shown again as if it was a new
    /// notification. This works even for notifications sent from a previous
    /// execution of the application, as long as `id` is the same string.
    /// 
    /// `id` may be `nil`, but it is impossible to replace or withdraw
    /// notifications without an id.
    /// 
    /// If `notification` is no longer relevant, it can be withdrawn with
    /// `g_application_withdraw_notification()`.
    func sendNotification(id: UnsafePointer<gchar>, notification: NotificationProtocol) {
        g_application_send_notification(cast(application_ptr), id, cast(notification.ptr))
    
    }

    /// This used to be how actions were associated with a `GApplication`.
    /// Now there is `GActionMap` for that.
    ///
    /// **set_action_group is deprecated:**
    /// Use the #GActionMap interface instead.  Never ever
    /// mix use of this API with use of #GActionMap on the same @application
    /// or things will go very badly wrong.  This function is known to
    /// introduce buggy behaviour (ie: signals not emitted on changes to the
    /// action group), so you should really use #GActionMap instead.
    @available(*, deprecated) func set(actionGroup action_group: ActionGroupProtocol) {
        g_application_set_action_group(cast(application_ptr), cast(action_group.ptr))
    
    }

    /// Sets the unique identifier for `application`.
    /// 
    /// The application id can only be modified if `application` has not yet
    /// been registered.
    /// 
    /// If non-`nil`, the application id must be valid.  See
    /// `g_application_id_is_valid()`.
    func set(applicationID application_id: UnsafePointer<gchar>) {
        g_application_set_application_id(cast(application_ptr), application_id)
    
    }

    /// Sets or unsets the default application for the process, as returned
    /// by `g_application_get_default()`.
    /// 
    /// This function does not take its own reference on `application`.  If
    /// `application` is destroyed then the default application will revert
    /// back to `nil`.
    func setDefault() {
        g_application_set_default(cast(application_ptr))
    
    }

    /// Sets the flags for `application`.
    /// 
    /// The flags can only be modified if `application` has not yet been
    /// registered.
    /// 
    /// See `GApplicationFlags`.
    func set(flags: ApplicationFlags) {
        g_application_set_flags(cast(application_ptr), flags)
    
    }

    /// Sets the current inactivity timeout for the application.
    /// 
    /// This is the amount of time (in milliseconds) after the last call to
    /// `g_application_release()` before the application stops running.
    /// 
    /// This call has no side effects of its own.  The value set here is only
    /// used for next time `g_application_release()` drops the use count to
    /// zero.  Any timeouts currently in progress are not impacted.
    func set(inactivityTimeout inactivity_timeout: CUnsignedInt) {
        g_application_set_inactivity_timeout(cast(application_ptr), guint(inactivity_timeout))
    
    }

    /// Adds a description to the `application` option context.
    /// 
    /// See `g_option_context_set_description()` for more information.
    func setOptionContext(description: UnsafePointer<gchar>) {
        g_application_set_option_context_description(cast(application_ptr), description)
    
    }

    /// Sets the parameter string to be used by the commandline handling of `application`.
    /// 
    /// This function registers the argument to be passed to `g_option_context_new()`
    /// when the internal `GOptionContext` of `application` is created.
    /// 
    /// See `g_option_context_new()` for more information about `parameter_string`.
    func setOptionContext(parameterString parameter_string: UnsafePointer<gchar>) {
        g_application_set_option_context_parameter_string(cast(application_ptr), parameter_string)
    
    }

    /// Adds a summary to the `application` option context.
    /// 
    /// See `g_option_context_set_summary()` for more information.
    func setOptionContext(summary: UnsafePointer<gchar>) {
        g_application_set_option_context_summary(cast(application_ptr), summary)
    
    }

    /// Sets (or unsets) the base resource path of `application`.
    /// 
    /// The path is used to automatically load various [application
    /// resources][gresource] such as menu layouts and action descriptions.
    /// The various types of resources will be found at fixed names relative
    /// to the given base path.
    /// 
    /// By default, the resource base path is determined from the application
    /// ID by prefixing '/' and replacing each '.' with '/'.  This is done at
    /// the time that the `GApplication` object is constructed.  Changes to
    /// the application ID after that point will not have an impact on the
    /// resource base path.
    /// 
    /// As an example, if the application has an ID of "org.example.app" then
    /// the default resource base path will be "/org/example/app".  If this
    /// is a `GtkApplication` (and you have not manually changed the path)
    /// then Gtk will then search for the menus of the application at
    /// "/org/example/app/gtk/menus.ui".
    /// 
    /// See `GResource` for more information about adding resources to your
    /// application.
    /// 
    /// You can disable automatic resource loading functionality by setting
    /// the path to `nil`.
    /// 
    /// Changing the resource base path once the application is running is
    /// not recommended.  The point at which the resource path is consulted
    /// for forming paths for various purposes is unspecified.  When writing
    /// a sub-class of `GApplication` you should either set the
    /// `GApplication:resource`-base-path property at construction time, or call
    /// this function during the instance initialization. Alternatively, you
    /// can call this function in the `GApplicationClass.startup` virtual function,
    /// before chaining up to the parent implementation.
    func setResourceBasePath(resourcePath resource_path: UnsafePointer<gchar>) {
        g_application_set_resource_base_path(cast(application_ptr), resource_path)
    
    }

    /// Destroys a binding between `property` and the busy state of
    /// `application` that was previously created with
    /// `g_application_bind_busy_property()`.
    func unbindBusyProperty(object: ObjectProtocol, property: UnsafePointer<gchar>) {
        g_application_unbind_busy_property(cast(application_ptr), cast(object.ptr), property)
    
    }

    /// Decreases the busy count of `application`.
    /// 
    /// When the busy count reaches zero, the new state will be propagated
    /// to other processes.
    /// 
    /// This function must only be called to cancel the effect of a previous
    /// call to `g_application_mark_busy()`.
    func unmarkBusy() {
        g_application_unmark_busy(cast(application_ptr))
    
    }

    /// Withdraws a notification that was sent with
    /// `g_application_send_notification()`.
    /// 
    /// This call does nothing if a notification with `id` doesn't exist or
    /// the notification was never sent.
    /// 
    /// This function works even for notifications sent in previous
    /// executions of this application, as long `id` is the same as it was for
    /// the sent notification.
    /// 
    /// Note that notifications are dismissed when the user clicks on one
    /// of the buttons in a notification or triggers its default action, so
    /// there is no need to explicitly withdraw the notification in that case.
    func withdrawNotification(id: UnsafePointer<gchar>) {
        g_application_withdraw_notification(cast(application_ptr), id)
    
    }
    /// Gets the unique identifier for `application`.
    var applicationID: String! {
        /// Gets the unique identifier for `application`.
        get {
            let rv = g_application_get_application_id(cast(application_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets the unique identifier for `application`.
        /// 
        /// The application id can only be modified if `application` has not yet
        /// been registered.
        /// 
        /// If non-`nil`, the application id must be valid.  See
        /// `g_application_id_is_valid()`.
        nonmutating set {
            g_application_set_application_id(cast(application_ptr), newValue)
        }
    }

    /// Gets the `GDBusConnection` being used by the application, or `nil`.
    /// 
    /// If `GApplication` is using its D-Bus backend then this function will
    /// return the `GDBusConnection` being used for uniqueness and
    /// communication with the desktop environment and other instances of the
    /// application.
    /// 
    /// If `GApplication` is not using D-Bus then this function will return
    /// `nil`.  This includes the situation where the D-Bus backend would
    /// normally be in use but we were unable to connect to the bus.
    /// 
    /// This function must not be called before the application has been
    /// registered.  See `g_application_get_is_registered()`.
    var dbusConnection: UnsafeMutablePointer<GDBusConnection>! {
        /// Gets the `GDBusConnection` being used by the application, or `nil`.
        /// 
        /// If `GApplication` is using its D-Bus backend then this function will
        /// return the `GDBusConnection` being used for uniqueness and
        /// communication with the desktop environment and other instances of the
        /// application.
        /// 
        /// If `GApplication` is not using D-Bus then this function will return
        /// `nil`.  This includes the situation where the D-Bus backend would
        /// normally be in use but we were unable to connect to the bus.
        /// 
        /// This function must not be called before the application has been
        /// registered.  See `g_application_get_is_registered()`.
        get {
            let rv = g_application_get_dbus_connection(cast(application_ptr))
            return cast(rv)
        }
    }

    /// Gets the D-Bus object path being used by the application, or `nil`.
    /// 
    /// If `GApplication` is using its D-Bus backend then this function will
    /// return the D-Bus object path that `GApplication` is using.  If the
    /// application is the primary instance then there is an object published
    /// at this path.  If the application is not the primary instance then
    /// the result of this function is undefined.
    /// 
    /// If `GApplication` is not using D-Bus then this function will return
    /// `nil`.  This includes the situation where the D-Bus backend would
    /// normally be in use but we were unable to connect to the bus.
    /// 
    /// This function must not be called before the application has been
    /// registered.  See `g_application_get_is_registered()`.
    var dbusObjectPath: String! {
        /// Gets the D-Bus object path being used by the application, or `nil`.
        /// 
        /// If `GApplication` is using its D-Bus backend then this function will
        /// return the D-Bus object path that `GApplication` is using.  If the
        /// application is the primary instance then there is an object published
        /// at this path.  If the application is not the primary instance then
        /// the result of this function is undefined.
        /// 
        /// If `GApplication` is not using D-Bus then this function will return
        /// `nil`.  This includes the situation where the D-Bus backend would
        /// normally be in use but we were unable to connect to the bus.
        /// 
        /// This function must not be called before the application has been
        /// registered.  See `g_application_get_is_registered()`.
        get {
            let rv = g_application_get_dbus_object_path(cast(application_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    var flags: GApplicationFlags {
        /// Gets the flags for `application`.
        /// 
        /// See `GApplicationFlags`.
        get {
            let rv = g_application_get_flags(cast(application_ptr))
            return rv
        }
        /// Sets the flags for `application`.
        /// 
        /// The flags can only be modified if `application` has not yet been
        /// registered.
        /// 
        /// See `GApplicationFlags`.
        nonmutating set {
            g_application_set_flags(cast(application_ptr), newValue)
        }
    }

    /// Gets the current inactivity timeout for the application.
    /// 
    /// This is the amount of time (in milliseconds) after the last call to
    /// `g_application_release()` before the application stops running.
    var inactivityTimeout: CUnsignedInt {
        /// Gets the current inactivity timeout for the application.
        /// 
        /// This is the amount of time (in milliseconds) after the last call to
        /// `g_application_release()` before the application stops running.
        get {
            let rv = g_application_get_inactivity_timeout(cast(application_ptr))
            return CUnsignedInt(rv)
        }
        /// Sets the current inactivity timeout for the application.
        /// 
        /// This is the amount of time (in milliseconds) after the last call to
        /// `g_application_release()` before the application stops running.
        /// 
        /// This call has no side effects of its own.  The value set here is only
        /// used for next time `g_application_release()` drops the use count to
        /// zero.  Any timeouts currently in progress are not impacted.
        nonmutating set {
            g_application_set_inactivity_timeout(cast(application_ptr), guint(newValue))
        }
    }

    /// Gets the application's current busy state, as set through
    /// `g_application_mark_busy()` or `g_application_bind_busy_property()`.
    var isBusy: Bool {
        /// Gets the application's current busy state, as set through
        /// `g_application_mark_busy()` or `g_application_bind_busy_property()`.
        get {
            let rv = g_application_get_is_busy(cast(application_ptr))
            return Bool(rv != 0)
        }
    }

    /// Checks if `application` is registered.
    /// 
    /// An application is registered if `g_application_register()` has been
    /// successfully called.
    var isRegistered: Bool {
        /// Checks if `application` is registered.
        /// 
        /// An application is registered if `g_application_register()` has been
        /// successfully called.
        get {
            let rv = g_application_get_is_registered(cast(application_ptr))
            return Bool(rv != 0)
        }
    }

    /// Checks if `application` is remote.
    /// 
    /// If `application` is remote then it means that another instance of
    /// application already exists (the 'primary' instance).  Calls to
    /// perform actions on `application` will result in the actions being
    /// performed by the primary instance.
    /// 
    /// The value of this property cannot be accessed before
    /// `g_application_register()` has been called.  See
    /// `g_application_get_is_registered()`.
    var isRemote: Bool {
        /// Checks if `application` is remote.
        /// 
        /// If `application` is remote then it means that another instance of
        /// application already exists (the 'primary' instance).  Calls to
        /// perform actions on `application` will result in the actions being
        /// performed by the primary instance.
        /// 
        /// The value of this property cannot be accessed before
        /// `g_application_register()` has been called.  See
        /// `g_application_get_is_registered()`.
        get {
            let rv = g_application_get_is_remote(cast(application_ptr))
            return Bool(rv != 0)
        }
    }

    /// Gets the resource base path of `application`.
    /// 
    /// See `g_application_set_resource_base_path()` for more information.
    var resourceBasePath: String! {
        /// Gets the resource base path of `application`.
        /// 
        /// See `g_application_set_resource_base_path()` for more information.
        get {
            let rv = g_application_get_resource_base_path(cast(application_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets (or unsets) the base resource path of `application`.
        /// 
        /// The path is used to automatically load various [application
        /// resources][gresource] such as menu layouts and action descriptions.
        /// The various types of resources will be found at fixed names relative
        /// to the given base path.
        /// 
        /// By default, the resource base path is determined from the application
        /// ID by prefixing '/' and replacing each '.' with '/'.  This is done at
        /// the time that the `GApplication` object is constructed.  Changes to
        /// the application ID after that point will not have an impact on the
        /// resource base path.
        /// 
        /// As an example, if the application has an ID of "org.example.app" then
        /// the default resource base path will be "/org/example/app".  If this
        /// is a `GtkApplication` (and you have not manually changed the path)
        /// then Gtk will then search for the menus of the application at
        /// "/org/example/app/gtk/menus.ui".
        /// 
        /// See `GResource` for more information about adding resources to your
        /// application.
        /// 
        /// You can disable automatic resource loading functionality by setting
        /// the path to `nil`.
        /// 
        /// Changing the resource base path once the application is running is
        /// not recommended.  The point at which the resource path is consulted
        /// for forming paths for various purposes is unspecified.  When writing
        /// a sub-class of `GApplication` you should either set the
        /// `GApplication:resource`-base-path property at construction time, or call
        /// this function during the instance initialization. Alternatively, you
        /// can call this function in the `GApplicationClass.startup` virtual function,
        /// before chaining up to the parent implementation.
        nonmutating set {
            g_application_set_resource_base_path(cast(application_ptr), newValue)
        }
    }
}



// MARK: - ApplicationCommandLine Class

/// The `ApplicationCommandLineProtocol` protocol exposes the methods and properties of an underlying `GApplicationCommandLine` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ApplicationCommandLine`.
/// Alternatively, use `ApplicationCommandLineRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GApplicationCommandLine` represents a command-line invocation of
/// an application.  It is created by `GApplication` and emitted
/// in the `GApplication::command`-line signal and virtual function.
/// 
/// The class contains the list of arguments that the program was invoked
/// with.  It is also possible to query if the commandline invocation was
/// local (ie: the current process is running in direct response to the
/// invocation) or remote (ie: some other process forwarded the
/// commandline to this process).
/// 
/// The GApplicationCommandLine object can provide the `argc` and `argv`
/// parameters for use with the `GOptionContext` command-line parsing API,
/// with the `g_application_command_line_get_arguments()` function. See
/// [gapplication-example-cmdline3.c][gapplication-example-cmdline3]
/// for an example.
/// 
/// The exit status of the originally-invoked process may be set and
/// messages can be printed to stdout or stderr of that process.  The
/// lifecycle of the originally-invoked process is tied to the lifecycle
/// of this object (ie: the process exits when the last reference is
/// dropped).
/// 
/// The main use for `GApplicationCommandLine` (and the
/// `GApplication::command`-line signal) is 'Emacs server' like use cases:
/// You can set the `EDITOR` environment variable to have e.g. git use
/// your favourite editor to edit commit messages, and if you already
/// have an instance of the editor running, the editing will happen
/// in the running instance, instead of opening a new one. An important
/// aspect of this use case is that the process that gets started by git
/// does not return until the editing is done.
/// 
/// Normally, the commandline is completely handled in the
/// `GApplication::command`-line handler. The launching instance exits
/// once the signal handler in the primary instance has returned, and
/// the return value of the signal handler becomes the exit status
/// of the launching instance.
/// (C Language Example):
/// ```C
/// static int
/// command_line (GApplication            *application,
///               GApplicationCommandLine *cmdline)
/// {
///   gchar **argv;
///   gint argc;
///   gint i;
/// 
///   argv = g_application_command_line_get_arguments (cmdline, &argc);
/// 
///   g_application_command_line_print (cmdline,
///                                     "This text is written back\n"
///                                     "to stdout of the caller\n");
/// 
///   for (i = 0; i < argc; i++)
///     g_print ("argument %d: %s\n", i, argv[i]);
/// 
///   g_strfreev (argv);
/// 
///   return 0;
/// }
/// ```
/// The complete example can be found here:
/// [gapplication-example-cmdline.c](https://git.gnome.org/browse/glib/tree/gio/tests/gapplication-example-cmdline.c)
/// 
/// In more complicated cases, the handling of the comandline can be
/// split between the launcher and the primary instance.
/// (C Language Example):
/// ```C
/// static gboolean
///  test_local_cmdline (GApplication   *application,
///                      gchar        ***arguments,
///                      gint           *exit_status)
/// {
///   gint i, j;
///   gchar **argv;
/// 
///   argv = *arguments;
/// 
///   i = 1;
///   while (argv[i])
///     {
///       if (g_str_has_prefix (argv[i], "--local-"))
///         {
///           g_print ("handling argument %s locally\n", argv[i]);
///           g_free (argv[i]);
///           for (j = i; argv[j]; j++)
///             argv[j] = argv[j + 1];
///         }
///       else
///         {
///           g_print ("not handling argument %s locally\n", argv[i]);
///           i++;
///         }
///     }
/// 
///   *exit_status = 0;
/// 
///   return FALSE;
/// }
/// 
/// static void
/// test_application_class_init (TestApplicationClass *class)
/// {
///   G_APPLICATION_CLASS (class)->local_command_line = test_local_cmdline;
/// 
///   ...
/// }
/// ```
/// In this example of split commandline handling, options that start
/// with `--local-` are handled locally, all other options are passed
/// to the `GApplication::command`-line handler which runs in the primary
/// instance.
/// 
/// The complete example can be found here:
/// [gapplication-example-cmdline2.c](https://git.gnome.org/browse/glib/tree/gio/tests/gapplication-example-cmdline2.c)
/// 
/// If handling the commandline requires a lot of work, it may
/// be better to defer it.
/// (C Language Example):
/// ```C
/// static gboolean
/// my_cmdline_handler (gpointer data)
/// {
///   GApplicationCommandLine *cmdline = data;
/// 
///   // do the heavy lifting in an idle
/// 
///   g_application_command_line_set_exit_status (cmdline, 0);
///   g_object_unref (cmdline); // this releases the application
/// 
///   return G_SOURCE_REMOVE;
/// }
/// 
/// static int
/// command_line (GApplication            *application,
///               GApplicationCommandLine *cmdline)
/// {
///   // keep the application running until we are done with this commandline
///   g_application_hold (application);
/// 
///   g_object_set_data_full (G_OBJECT (cmdline),
///                           "application", application,
///                           (GDestroyNotify)g_application_release);
/// 
///   g_object_ref (cmdline);
///   g_idle_add (my_cmdline_handler, cmdline);
/// 
///   return 0;
/// }
/// ```
/// In this example the commandline is not completely handled before
/// the `GApplication::command`-line handler returns. Instead, we keep
/// a reference to the `GApplicationCommandLine` object and handle it
/// later (in this example, in an idle). Note that it is necessary to
/// hold the application until you are done with the commandline.
/// 
/// The complete example can be found here:
/// [gapplication-example-cmdline3.c](https://git.gnome.org/browse/glib/tree/gio/tests/gapplication-example-cmdline3.c)
public protocol ApplicationCommandLineProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `GApplicationCommandLine` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GApplicationCommandLine` instance.
    var application_command_line_ptr: UnsafeMutablePointer<GApplicationCommandLine> { get }
}

/// The `ApplicationCommandLineRef` type acts as a lightweight Swift reference to an underlying `GApplicationCommandLine` instance.
/// It exposes methods that can operate on this data type through `ApplicationCommandLineProtocol` conformance.
/// Use `ApplicationCommandLineRef` only as an `unowned` reference to an existing `GApplicationCommandLine` instance.
///
/// `GApplicationCommandLine` represents a command-line invocation of
/// an application.  It is created by `GApplication` and emitted
/// in the `GApplication::command`-line signal and virtual function.
/// 
/// The class contains the list of arguments that the program was invoked
/// with.  It is also possible to query if the commandline invocation was
/// local (ie: the current process is running in direct response to the
/// invocation) or remote (ie: some other process forwarded the
/// commandline to this process).
/// 
/// The GApplicationCommandLine object can provide the `argc` and `argv`
/// parameters for use with the `GOptionContext` command-line parsing API,
/// with the `g_application_command_line_get_arguments()` function. See
/// [gapplication-example-cmdline3.c][gapplication-example-cmdline3]
/// for an example.
/// 
/// The exit status of the originally-invoked process may be set and
/// messages can be printed to stdout or stderr of that process.  The
/// lifecycle of the originally-invoked process is tied to the lifecycle
/// of this object (ie: the process exits when the last reference is
/// dropped).
/// 
/// The main use for `GApplicationCommandLine` (and the
/// `GApplication::command`-line signal) is 'Emacs server' like use cases:
/// You can set the `EDITOR` environment variable to have e.g. git use
/// your favourite editor to edit commit messages, and if you already
/// have an instance of the editor running, the editing will happen
/// in the running instance, instead of opening a new one. An important
/// aspect of this use case is that the process that gets started by git
/// does not return until the editing is done.
/// 
/// Normally, the commandline is completely handled in the
/// `GApplication::command`-line handler. The launching instance exits
/// once the signal handler in the primary instance has returned, and
/// the return value of the signal handler becomes the exit status
/// of the launching instance.
/// (C Language Example):
/// ```C
/// static int
/// command_line (GApplication            *application,
///               GApplicationCommandLine *cmdline)
/// {
///   gchar **argv;
///   gint argc;
///   gint i;
/// 
///   argv = g_application_command_line_get_arguments (cmdline, &argc);
/// 
///   g_application_command_line_print (cmdline,
///                                     "This text is written back\n"
///                                     "to stdout of the caller\n");
/// 
///   for (i = 0; i < argc; i++)
///     g_print ("argument %d: %s\n", i, argv[i]);
/// 
///   g_strfreev (argv);
/// 
///   return 0;
/// }
/// ```
/// The complete example can be found here:
/// [gapplication-example-cmdline.c](https://git.gnome.org/browse/glib/tree/gio/tests/gapplication-example-cmdline.c)
/// 
/// In more complicated cases, the handling of the comandline can be
/// split between the launcher and the primary instance.
/// (C Language Example):
/// ```C
/// static gboolean
///  test_local_cmdline (GApplication   *application,
///                      gchar        ***arguments,
///                      gint           *exit_status)
/// {
///   gint i, j;
///   gchar **argv;
/// 
///   argv = *arguments;
/// 
///   i = 1;
///   while (argv[i])
///     {
///       if (g_str_has_prefix (argv[i], "--local-"))
///         {
///           g_print ("handling argument %s locally\n", argv[i]);
///           g_free (argv[i]);
///           for (j = i; argv[j]; j++)
///             argv[j] = argv[j + 1];
///         }
///       else
///         {
///           g_print ("not handling argument %s locally\n", argv[i]);
///           i++;
///         }
///     }
/// 
///   *exit_status = 0;
/// 
///   return FALSE;
/// }
/// 
/// static void
/// test_application_class_init (TestApplicationClass *class)
/// {
///   G_APPLICATION_CLASS (class)->local_command_line = test_local_cmdline;
/// 
///   ...
/// }
/// ```
/// In this example of split commandline handling, options that start
/// with `--local-` are handled locally, all other options are passed
/// to the `GApplication::command`-line handler which runs in the primary
/// instance.
/// 
/// The complete example can be found here:
/// [gapplication-example-cmdline2.c](https://git.gnome.org/browse/glib/tree/gio/tests/gapplication-example-cmdline2.c)
/// 
/// If handling the commandline requires a lot of work, it may
/// be better to defer it.
/// (C Language Example):
/// ```C
/// static gboolean
/// my_cmdline_handler (gpointer data)
/// {
///   GApplicationCommandLine *cmdline = data;
/// 
///   // do the heavy lifting in an idle
/// 
///   g_application_command_line_set_exit_status (cmdline, 0);
///   g_object_unref (cmdline); // this releases the application
/// 
///   return G_SOURCE_REMOVE;
/// }
/// 
/// static int
/// command_line (GApplication            *application,
///               GApplicationCommandLine *cmdline)
/// {
///   // keep the application running until we are done with this commandline
///   g_application_hold (application);
/// 
///   g_object_set_data_full (G_OBJECT (cmdline),
///                           "application", application,
///                           (GDestroyNotify)g_application_release);
/// 
///   g_object_ref (cmdline);
///   g_idle_add (my_cmdline_handler, cmdline);
/// 
///   return 0;
/// }
/// ```
/// In this example the commandline is not completely handled before
/// the `GApplication::command`-line handler returns. Instead, we keep
/// a reference to the `GApplicationCommandLine` object and handle it
/// later (in this example, in an idle). Note that it is necessary to
/// hold the application until you are done with the commandline.
/// 
/// The complete example can be found here:
/// [gapplication-example-cmdline3.c](https://git.gnome.org/browse/glib/tree/gio/tests/gapplication-example-cmdline3.c)
public struct ApplicationCommandLineRef: ApplicationCommandLineProtocol {
    /// Untyped pointer to the underlying `GApplicationCommandLine` instance.
    /// For type-safe access, use the generated, typed pointer `application_command_line_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ApplicationCommandLineRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GApplicationCommandLine>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ApplicationCommandLineProtocol`
    init<T: ApplicationCommandLineProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLineProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLineProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLineProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLineProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLineProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ApplicationCommandLine` type acts as a reference-counted owner of an underlying `GApplicationCommandLine` instance.
/// It provides the methods that can operate on this data type through `ApplicationCommandLineProtocol` conformance.
/// Use `ApplicationCommandLine` as a strong reference or owner of a `GApplicationCommandLine` instance.
///
/// `GApplicationCommandLine` represents a command-line invocation of
/// an application.  It is created by `GApplication` and emitted
/// in the `GApplication::command`-line signal and virtual function.
/// 
/// The class contains the list of arguments that the program was invoked
/// with.  It is also possible to query if the commandline invocation was
/// local (ie: the current process is running in direct response to the
/// invocation) or remote (ie: some other process forwarded the
/// commandline to this process).
/// 
/// The GApplicationCommandLine object can provide the `argc` and `argv`
/// parameters for use with the `GOptionContext` command-line parsing API,
/// with the `g_application_command_line_get_arguments()` function. See
/// [gapplication-example-cmdline3.c][gapplication-example-cmdline3]
/// for an example.
/// 
/// The exit status of the originally-invoked process may be set and
/// messages can be printed to stdout or stderr of that process.  The
/// lifecycle of the originally-invoked process is tied to the lifecycle
/// of this object (ie: the process exits when the last reference is
/// dropped).
/// 
/// The main use for `GApplicationCommandLine` (and the
/// `GApplication::command`-line signal) is 'Emacs server' like use cases:
/// You can set the `EDITOR` environment variable to have e.g. git use
/// your favourite editor to edit commit messages, and if you already
/// have an instance of the editor running, the editing will happen
/// in the running instance, instead of opening a new one. An important
/// aspect of this use case is that the process that gets started by git
/// does not return until the editing is done.
/// 
/// Normally, the commandline is completely handled in the
/// `GApplication::command`-line handler. The launching instance exits
/// once the signal handler in the primary instance has returned, and
/// the return value of the signal handler becomes the exit status
/// of the launching instance.
/// (C Language Example):
/// ```C
/// static int
/// command_line (GApplication            *application,
///               GApplicationCommandLine *cmdline)
/// {
///   gchar **argv;
///   gint argc;
///   gint i;
/// 
///   argv = g_application_command_line_get_arguments (cmdline, &argc);
/// 
///   g_application_command_line_print (cmdline,
///                                     "This text is written back\n"
///                                     "to stdout of the caller\n");
/// 
///   for (i = 0; i < argc; i++)
///     g_print ("argument %d: %s\n", i, argv[i]);
/// 
///   g_strfreev (argv);
/// 
///   return 0;
/// }
/// ```
/// The complete example can be found here:
/// [gapplication-example-cmdline.c](https://git.gnome.org/browse/glib/tree/gio/tests/gapplication-example-cmdline.c)
/// 
/// In more complicated cases, the handling of the comandline can be
/// split between the launcher and the primary instance.
/// (C Language Example):
/// ```C
/// static gboolean
///  test_local_cmdline (GApplication   *application,
///                      gchar        ***arguments,
///                      gint           *exit_status)
/// {
///   gint i, j;
///   gchar **argv;
/// 
///   argv = *arguments;
/// 
///   i = 1;
///   while (argv[i])
///     {
///       if (g_str_has_prefix (argv[i], "--local-"))
///         {
///           g_print ("handling argument %s locally\n", argv[i]);
///           g_free (argv[i]);
///           for (j = i; argv[j]; j++)
///             argv[j] = argv[j + 1];
///         }
///       else
///         {
///           g_print ("not handling argument %s locally\n", argv[i]);
///           i++;
///         }
///     }
/// 
///   *exit_status = 0;
/// 
///   return FALSE;
/// }
/// 
/// static void
/// test_application_class_init (TestApplicationClass *class)
/// {
///   G_APPLICATION_CLASS (class)->local_command_line = test_local_cmdline;
/// 
///   ...
/// }
/// ```
/// In this example of split commandline handling, options that start
/// with `--local-` are handled locally, all other options are passed
/// to the `GApplication::command`-line handler which runs in the primary
/// instance.
/// 
/// The complete example can be found here:
/// [gapplication-example-cmdline2.c](https://git.gnome.org/browse/glib/tree/gio/tests/gapplication-example-cmdline2.c)
/// 
/// If handling the commandline requires a lot of work, it may
/// be better to defer it.
/// (C Language Example):
/// ```C
/// static gboolean
/// my_cmdline_handler (gpointer data)
/// {
///   GApplicationCommandLine *cmdline = data;
/// 
///   // do the heavy lifting in an idle
/// 
///   g_application_command_line_set_exit_status (cmdline, 0);
///   g_object_unref (cmdline); // this releases the application
/// 
///   return G_SOURCE_REMOVE;
/// }
/// 
/// static int
/// command_line (GApplication            *application,
///               GApplicationCommandLine *cmdline)
/// {
///   // keep the application running until we are done with this commandline
///   g_application_hold (application);
/// 
///   g_object_set_data_full (G_OBJECT (cmdline),
///                           "application", application,
///                           (GDestroyNotify)g_application_release);
/// 
///   g_object_ref (cmdline);
///   g_idle_add (my_cmdline_handler, cmdline);
/// 
///   return 0;
/// }
/// ```
/// In this example the commandline is not completely handled before
/// the `GApplication::command`-line handler returns. Instead, we keep
/// a reference to the `GApplicationCommandLine` object and handle it
/// later (in this example, in an idle). Note that it is necessary to
/// hold the application until you are done with the commandline.
/// 
/// The complete example can be found here:
/// [gapplication-example-cmdline3.c](https://git.gnome.org/browse/glib/tree/gio/tests/gapplication-example-cmdline3.c)
open class ApplicationCommandLine: Object, ApplicationCommandLineProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ApplicationCommandLine` instance.
    public init(_ op: UnsafeMutablePointer<GApplicationCommandLine>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ApplicationCommandLineProtocol`
    /// Will retain `GApplicationCommandLine`.
    public convenience init<T: ApplicationCommandLineProtocol>(_ other: T) {
        self.init(cast(other.application_command_line_ptr))
        g_object_ref(cast(application_command_line_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLineProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GApplicationCommandLine.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLineProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GApplicationCommandLine.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLineProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GApplicationCommandLine.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationCommandLineProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GApplicationCommandLine>(opaquePointer))
    }



}

public enum ApplicationCommandLinePropertyName: String, PropertyNameProtocol {
    case arguments = "arguments"
    case isRemote = "is-remote"
    case options = "options"
    case platformData = "platform-data"
}

public extension ApplicationCommandLineProtocol {
    /// Bind a `ApplicationCommandLinePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: ApplicationCommandLinePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(application_command_line_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum ApplicationCommandLineSignalName: String, SignalNameProtocol {
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
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"
    case notifyArguments = "notify::arguments"
    case notifyIsRemote = "notify::is-remote"
    case notifyOptions = "notify::options"
    case notifyPlatformData = "notify::platform-data"
}

public extension ApplicationCommandLineProtocol {
    /// Connect a `ApplicationCommandLineSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: ApplicationCommandLineSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(application_command_line_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension ApplicationCommandLineProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GApplicationCommandLine` instance.
    var application_command_line_ptr: UnsafeMutablePointer<GApplicationCommandLine> { return ptr.assumingMemoryBound(to: GApplicationCommandLine.self) }

    /// Creates a `GFile` corresponding to a filename that was given as part
    /// of the invocation of `cmdline`.
    /// 
    /// This differs from `g_file_new_for_commandline_arg()` in that it
    /// resolves relative pathnames using the current working directory of
    /// the invoking process rather than the local process.
    func createFileFor(arg: UnsafePointer<gchar>) -> UnsafeMutablePointer<GFile>! {
        let rv = g_application_command_line_create_file_for_arg(cast(application_command_line_ptr), arg)
        return cast(rv)
    }

    /// Gets the list of arguments that was passed on the command line.
    /// 
    /// The strings in the array may contain non-UTF-8 data on UNIX (such as
    /// filenames or arguments given in the system locale) but are always in
    /// UTF-8 on Windows.
    /// 
    /// If you wish to use the return value with `GOptionContext`, you must
    /// use `g_option_context_parse_strv()`.
    /// 
    /// The return value is `nil`-terminated and should be freed using
    /// `g_strfreev()`.
    func getArguments(argc: UnsafeMutablePointer<CInt>) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        let rv = g_application_command_line_get_arguments(cast(application_command_line_ptr), cast(argc))
        return cast(rv)
    }

    /// Gets the working directory of the command line invocation.
    /// The string may contain non-utf8 data.
    /// 
    /// It is possible that the remote application did not send a working
    /// directory, so this may be `nil`.
    /// 
    /// The return value should not be modified or freed and is valid for as
    /// long as `cmdline` exists.
    func getCwd() -> String! {
        let rv = g_application_command_line_get_cwd(cast(application_command_line_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the contents of the 'environ' variable of the command line
    /// invocation, as would be returned by `g_get_environ()`, ie as a
    /// `nil`-terminated list of strings in the form 'NAME=VALUE'.
    /// The strings may contain non-utf8 data.
    /// 
    /// The remote application usually does not send an environment.  Use
    /// `G_APPLICATION_SEND_ENVIRONMENT` to affect that.  Even with this flag
    /// set it is possible that the environment is still not available (due
    /// to invocation messages from other applications).
    /// 
    /// The return value should not be modified or freed and is valid for as
    /// long as `cmdline` exists.
    /// 
    /// See `g_application_command_line_getenv()` if you are only interested
    /// in the value of a single environment variable.
    func getEnviron() -> UnsafePointer<UnsafePointer<gchar>>! {
        let rv = g_application_command_line_get_environ(cast(application_command_line_ptr))
        return cast(rv)
    }

    /// Gets the exit status of `cmdline`.  See
    /// `g_application_command_line_set_exit_status()` for more information.
    func getExitStatus() -> CInt {
        let rv = g_application_command_line_get_exit_status(cast(application_command_line_ptr))
        return rv
    }

    /// Determines if `cmdline` represents a remote invocation.
    func getIsRemote() -> Bool {
        let rv = g_application_command_line_get_is_remote(cast(application_command_line_ptr))
        return Bool(rv != 0)
    }

    /// Gets the options there were passed to `g_application_command_line()`.
    /// 
    /// If you did not override `local_command_line()` then these are the same
    /// options that were parsed according to the `GOptionEntrys` added to the
    /// application with `g_application_add_main_option_entries()` and possibly
    /// modified from your GApplication`handle`-local-options handler.
    /// 
    /// If no options were sent then an empty dictionary is returned so that
    /// you don't need to check for `nil`.
    func getOptionsDict() -> UnsafeMutablePointer<GVariantDict>! {
        let rv = g_application_command_line_get_options_dict(cast(application_command_line_ptr))
        return cast(rv)
    }

    /// Gets the platform data associated with the invocation of `cmdline`.
    /// 
    /// This is a `GVariant` dictionary containing information about the
    /// context in which the invocation occurred.  It typically contains
    /// information like the current working directory and the startup
    /// notification ID.
    /// 
    /// For local invocation, it will be `nil`.
    func getPlatformData() -> UnsafeMutablePointer<GVariant>! {
        let rv = g_application_command_line_get_platform_data(cast(application_command_line_ptr))
        return cast(rv)
    }

    /// Gets the stdin of the invoking process.
    /// 
    /// The `GInputStream` can be used to read data passed to the standard
    /// input of the invoking process.
    /// This doesn't work on all platforms.  Presently, it is only available
    /// on UNIX when using a DBus daemon capable of passing file descriptors.
    /// If stdin is not available then `nil` will be returned.  In the
    /// future, support may be expanded to other platforms.
    /// 
    /// You must only call this function once per commandline invocation.
    func getStdin() -> UnsafeMutablePointer<GInputStream>! {
        let rv = g_application_command_line_get_stdin(cast(application_command_line_ptr))
        return cast(rv)
    }

    /// Gets the value of a particular environment variable of the command
    /// line invocation, as would be returned by `g_getenv()`.  The strings may
    /// contain non-utf8 data.
    /// 
    /// The remote application usually does not send an environment.  Use
    /// `G_APPLICATION_SEND_ENVIRONMENT` to affect that.  Even with this flag
    /// set it is possible that the environment is still not available (due
    /// to invocation messages from other applications).
    /// 
    /// The return value should not be modified or freed and is valid for as
    /// long as `cmdline` exists.
    func getenv(name: UnsafePointer<gchar>) -> String! {
        let rv = g_application_command_line_getenv(cast(application_command_line_ptr), name)
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }


    // *** print() is not available because it has a varargs (...) parameter!



    // *** printerr() is not available because it has a varargs (...) parameter!


    /// Sets the exit status that will be used when the invoking process
    /// exits.
    /// 
    /// The return value of the `GApplication::command`-line signal is
    /// passed to this function when the handler returns.  This is the usual
    /// way of setting the exit status.
    /// 
    /// In the event that you want the remote invocation to continue running
    /// and want to decide on the exit status in the future, you can use this
    /// call.  For the case of a remote invocation, the remote process will
    /// typically exit when the last reference is dropped on `cmdline`.  The
    /// exit status of the remote process will be equal to the last value
    /// that was set with this function.
    /// 
    /// In the case that the commandline invocation is local, the situation
    /// is slightly more complicated.  If the commandline invocation results
    /// in the mainloop running (ie: because the use-count of the application
    /// increased to a non-zero value) then the application is considered to
    /// have been 'successful' in a certain sense, and the exit status is
    /// always zero.  If the application use count is zero, though, the exit
    /// status of the local `GApplicationCommandLine` is used.
    func set(exitStatus exit_status: CInt) {
        g_application_command_line_set_exit_status(cast(application_command_line_ptr), exit_status)
    
    }
    /// Gets the working directory of the command line invocation.
    /// The string may contain non-utf8 data.
    /// 
    /// It is possible that the remote application did not send a working
    /// directory, so this may be `nil`.
    /// 
    /// The return value should not be modified or freed and is valid for as
    /// long as `cmdline` exists.
    var cwd: String! {
        /// Gets the working directory of the command line invocation.
        /// The string may contain non-utf8 data.
        /// 
        /// It is possible that the remote application did not send a working
        /// directory, so this may be `nil`.
        /// 
        /// The return value should not be modified or freed and is valid for as
        /// long as `cmdline` exists.
        get {
            let rv = g_application_command_line_get_cwd(cast(application_command_line_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the contents of the 'environ' variable of the command line
    /// invocation, as would be returned by `g_get_environ()`, ie as a
    /// `nil`-terminated list of strings in the form 'NAME=VALUE'.
    /// The strings may contain non-utf8 data.
    /// 
    /// The remote application usually does not send an environment.  Use
    /// `G_APPLICATION_SEND_ENVIRONMENT` to affect that.  Even with this flag
    /// set it is possible that the environment is still not available (due
    /// to invocation messages from other applications).
    /// 
    /// The return value should not be modified or freed and is valid for as
    /// long as `cmdline` exists.
    /// 
    /// See `g_application_command_line_getenv()` if you are only interested
    /// in the value of a single environment variable.
    var environ: UnsafePointer<UnsafePointer<gchar>>! {
        /// Gets the contents of the 'environ' variable of the command line
        /// invocation, as would be returned by `g_get_environ()`, ie as a
        /// `nil`-terminated list of strings in the form 'NAME=VALUE'.
        /// The strings may contain non-utf8 data.
        /// 
        /// The remote application usually does not send an environment.  Use
        /// `G_APPLICATION_SEND_ENVIRONMENT` to affect that.  Even with this flag
        /// set it is possible that the environment is still not available (due
        /// to invocation messages from other applications).
        /// 
        /// The return value should not be modified or freed and is valid for as
        /// long as `cmdline` exists.
        /// 
        /// See `g_application_command_line_getenv()` if you are only interested
        /// in the value of a single environment variable.
        get {
            let rv = g_application_command_line_get_environ(cast(application_command_line_ptr))
            return cast(rv)
        }
    }

    /// Gets the exit status of `cmdline`.  See
    /// `g_application_command_line_set_exit_status()` for more information.
    var exitStatus: CInt {
        /// Gets the exit status of `cmdline`.  See
        /// `g_application_command_line_set_exit_status()` for more information.
        get {
            let rv = g_application_command_line_get_exit_status(cast(application_command_line_ptr))
            return rv
        }
        /// Sets the exit status that will be used when the invoking process
        /// exits.
        /// 
        /// The return value of the `GApplication::command`-line signal is
        /// passed to this function when the handler returns.  This is the usual
        /// way of setting the exit status.
        /// 
        /// In the event that you want the remote invocation to continue running
        /// and want to decide on the exit status in the future, you can use this
        /// call.  For the case of a remote invocation, the remote process will
        /// typically exit when the last reference is dropped on `cmdline`.  The
        /// exit status of the remote process will be equal to the last value
        /// that was set with this function.
        /// 
        /// In the case that the commandline invocation is local, the situation
        /// is slightly more complicated.  If the commandline invocation results
        /// in the mainloop running (ie: because the use-count of the application
        /// increased to a non-zero value) then the application is considered to
        /// have been 'successful' in a certain sense, and the exit status is
        /// always zero.  If the application use count is zero, though, the exit
        /// status of the local `GApplicationCommandLine` is used.
        nonmutating set {
            g_application_command_line_set_exit_status(cast(application_command_line_ptr), newValue)
        }
    }

    /// Determines if `cmdline` represents a remote invocation.
    var isRemote: Bool {
        /// Determines if `cmdline` represents a remote invocation.
        get {
            let rv = g_application_command_line_get_is_remote(cast(application_command_line_ptr))
            return Bool(rv != 0)
        }
    }

    /// Gets the options there were passed to `g_application_command_line()`.
    /// 
    /// If you did not override `local_command_line()` then these are the same
    /// options that were parsed according to the `GOptionEntrys` added to the
    /// application with `g_application_add_main_option_entries()` and possibly
    /// modified from your GApplication`handle`-local-options handler.
    /// 
    /// If no options were sent then an empty dictionary is returned so that
    /// you don't need to check for `nil`.
    var optionsDict: UnsafeMutablePointer<GVariantDict>! {
        /// Gets the options there were passed to `g_application_command_line()`.
        /// 
        /// If you did not override `local_command_line()` then these are the same
        /// options that were parsed according to the `GOptionEntrys` added to the
        /// application with `g_application_add_main_option_entries()` and possibly
        /// modified from your GApplication`handle`-local-options handler.
        /// 
        /// If no options were sent then an empty dictionary is returned so that
        /// you don't need to check for `nil`.
        get {
            let rv = g_application_command_line_get_options_dict(cast(application_command_line_ptr))
            return cast(rv)
        }
    }

    /// Gets the platform data associated with the invocation of `cmdline`.
    /// 
    /// This is a `GVariant` dictionary containing information about the
    /// context in which the invocation occurred.  It typically contains
    /// information like the current working directory and the startup
    /// notification ID.
    /// 
    /// For local invocation, it will be `nil`.
    var platformData: UnsafeMutablePointer<GVariant>! {
        /// Gets the platform data associated with the invocation of `cmdline`.
        /// 
        /// This is a `GVariant` dictionary containing information about the
        /// context in which the invocation occurred.  It typically contains
        /// information like the current working directory and the startup
        /// notification ID.
        /// 
        /// For local invocation, it will be `nil`.
        get {
            let rv = g_application_command_line_get_platform_data(cast(application_command_line_ptr))
            return cast(rv)
        }
    }

    /// Gets the stdin of the invoking process.
    /// 
    /// The `GInputStream` can be used to read data passed to the standard
    /// input of the invoking process.
    /// This doesn't work on all platforms.  Presently, it is only available
    /// on UNIX when using a DBus daemon capable of passing file descriptors.
    /// If stdin is not available then `nil` will be returned.  In the
    /// future, support may be expanded to other platforms.
    /// 
    /// You must only call this function once per commandline invocation.
    var stdin: UnsafeMutablePointer<GInputStream>! {
        /// Gets the stdin of the invoking process.
        /// 
        /// The `GInputStream` can be used to read data passed to the standard
        /// input of the invoking process.
        /// This doesn't work on all platforms.  Presently, it is only available
        /// on UNIX when using a DBus daemon capable of passing file descriptors.
        /// If stdin is not available then `nil` will be returned.  In the
        /// future, support may be expanded to other platforms.
        /// 
        /// You must only call this function once per commandline invocation.
        get {
            let rv = g_application_command_line_get_stdin(cast(application_command_line_ptr))
            return cast(rv)
        }
    }
}



// MARK: - BufferedInputStream Class

/// The `BufferedInputStreamProtocol` protocol exposes the methods and properties of an underlying `GBufferedInputStream` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BufferedInputStream`.
/// Alternatively, use `BufferedInputStreamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Buffered input stream implements `GFilterInputStream` and provides
/// for buffered reads.
/// 
/// By default, `GBufferedInputStream`'s buffer size is set at 4 kilobytes.
/// 
/// To create a buffered input stream, use `g_buffered_input_stream_new()`,
/// or `g_buffered_input_stream_new_sized()` to specify the buffer's size at
/// construction.
/// 
/// To get the size of a buffer within a buffered input stream, use
/// `g_buffered_input_stream_get_buffer_size()`. To change the size of a
/// buffered input stream's buffer, use
/// `g_buffered_input_stream_set_buffer_size()`. Note that the buffer's size
/// cannot be reduced below the size of the data within the buffer.
public protocol BufferedInputStreamProtocol: FilterInputStreamProtocol, SeekableProtocol {
    /// Untyped pointer to the underlying `GBufferedInputStream` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GBufferedInputStream` instance.
    var buffered_input_stream_ptr: UnsafeMutablePointer<GBufferedInputStream> { get }
}

/// The `BufferedInputStreamRef` type acts as a lightweight Swift reference to an underlying `GBufferedInputStream` instance.
/// It exposes methods that can operate on this data type through `BufferedInputStreamProtocol` conformance.
/// Use `BufferedInputStreamRef` only as an `unowned` reference to an existing `GBufferedInputStream` instance.
///
/// Buffered input stream implements `GFilterInputStream` and provides
/// for buffered reads.
/// 
/// By default, `GBufferedInputStream`'s buffer size is set at 4 kilobytes.
/// 
/// To create a buffered input stream, use `g_buffered_input_stream_new()`,
/// or `g_buffered_input_stream_new_sized()` to specify the buffer's size at
/// construction.
/// 
/// To get the size of a buffer within a buffered input stream, use
/// `g_buffered_input_stream_get_buffer_size()`. To change the size of a
/// buffered input stream's buffer, use
/// `g_buffered_input_stream_set_buffer_size()`. Note that the buffer's size
/// cannot be reduced below the size of the data within the buffer.
public struct BufferedInputStreamRef: BufferedInputStreamProtocol {
    /// Untyped pointer to the underlying `GBufferedInputStream` instance.
    /// For type-safe access, use the generated, typed pointer `buffered_input_stream_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension BufferedInputStreamRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GBufferedInputStream>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `BufferedInputStreamProtocol`
    init<T: BufferedInputStreamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GInputStream` from the given `base_stream`, with
    /// a buffer set to the default size (4 kilobytes).
    init( base_stream: InputStreamProtocol) {
        let rv = g_buffered_input_stream_new(cast(base_stream.ptr))
        self.init(cast(rv))
    }

    /// Creates a new `GBufferedInputStream` from the given `base_stream`,
    /// with a buffer set to `size`.
    init(sized base_stream: InputStreamProtocol, size: Int) {
        let rv = g_buffered_input_stream_new_sized(cast(base_stream.ptr), gsize(size))
        self.init(cast(rv))
    }
    /// Creates a new `GBufferedInputStream` from the given `base_stream`,
    /// with a buffer set to `size`.
    static func new(sized base_stream: InputStreamProtocol, size: Int) -> BufferedInputStreamRef! {
        let rv = g_buffered_input_stream_new_sized(cast(base_stream.ptr), gsize(size))
        return rv.map { BufferedInputStreamRef(cast($0)) }
    }
}

/// The `BufferedInputStream` type acts as a reference-counted owner of an underlying `GBufferedInputStream` instance.
/// It provides the methods that can operate on this data type through `BufferedInputStreamProtocol` conformance.
/// Use `BufferedInputStream` as a strong reference or owner of a `GBufferedInputStream` instance.
///
/// Buffered input stream implements `GFilterInputStream` and provides
/// for buffered reads.
/// 
/// By default, `GBufferedInputStream`'s buffer size is set at 4 kilobytes.
/// 
/// To create a buffered input stream, use `g_buffered_input_stream_new()`,
/// or `g_buffered_input_stream_new_sized()` to specify the buffer's size at
/// construction.
/// 
/// To get the size of a buffer within a buffered input stream, use
/// `g_buffered_input_stream_get_buffer_size()`. To change the size of a
/// buffered input stream's buffer, use
/// `g_buffered_input_stream_set_buffer_size()`. Note that the buffer's size
/// cannot be reduced below the size of the data within the buffer.
open class BufferedInputStream: FilterInputStream, BufferedInputStreamProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `BufferedInputStream` instance.
    public init(_ op: UnsafeMutablePointer<GBufferedInputStream>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `BufferedInputStreamProtocol`
    /// Will retain `GBufferedInputStream`.
    public convenience init<T: BufferedInputStreamProtocol>(_ other: T) {
        self.init(cast(other.buffered_input_stream_ptr))
        g_object_ref(cast(buffered_input_stream_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GBufferedInputStream.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GBufferedInputStream.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GBufferedInputStream.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BufferedInputStreamProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GBufferedInputStream>(opaquePointer))
    }

    /// Creates a new `GInputStream` from the given `base_stream`, with
    /// a buffer set to the default size (4 kilobytes).
    public convenience init( base_stream: InputStreamProtocol) {
        let rv = g_buffered_input_stream_new(cast(base_stream.ptr))
        self.init(cast(rv))
    }

    /// Creates a new `GBufferedInputStream` from the given `base_stream`,
    /// with a buffer set to `size`.
    public convenience init(sized base_stream: InputStreamProtocol, size: Int) {
        let rv = g_buffered_input_stream_new_sized(cast(base_stream.ptr), gsize(size))
        self.init(cast(rv))
    }

    /// Creates a new `GBufferedInputStream` from the given `base_stream`,
    /// with a buffer set to `size`.
    public static func new(sized base_stream: InputStreamProtocol, size: Int) -> BufferedInputStream! {
        let rv = g_buffered_input_stream_new_sized(cast(base_stream.ptr), gsize(size))
        return rv.map { BufferedInputStream(cast($0)) }
    }

}

public enum BufferedInputStreamPropertyName: String, PropertyNameProtocol {
    case baseStream = "base-stream"
    case bufferSize = "buffer-size"
    case closeBaseStream = "close-base-stream"
}

public extension BufferedInputStreamProtocol {
    /// Bind a `BufferedInputStreamPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: BufferedInputStreamPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(buffered_input_stream_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum BufferedInputStreamSignalName: String, SignalNameProtocol {
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
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"
    case notifyBaseStream = "notify::base-stream"
    case notifyBufferSize = "notify::buffer-size"
    case notifyCloseBaseStream = "notify::close-base-stream"
}

public extension BufferedInputStreamProtocol {
    /// Connect a `BufferedInputStreamSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: BufferedInputStreamSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(buffered_input_stream_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension BufferedInputStreamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GBufferedInputStream` instance.
    var buffered_input_stream_ptr: UnsafeMutablePointer<GBufferedInputStream> { return ptr.assumingMemoryBound(to: GBufferedInputStream.self) }

    /// Tries to read `count` bytes from the stream into the buffer.
    /// Will block during this read.
    /// 
    /// If `count` is zero, returns zero and does nothing. A value of `count`
    /// larger than `G_MAXSSIZE` will cause a `G_IO_ERROR_INVALID_ARGUMENT` error.
    /// 
    /// On success, the number of bytes read into the buffer is returned.
    /// It is not an error if this is not the same as the requested size, as it
    /// can happen e.g. near the end of a file. Zero is returned on end of file
    /// (or if `count` is zero),  but never otherwise.
    /// 
    /// If `count` is -1 then the attempted read size is equal to the number of
    /// bytes that are required to fill the buffer.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned. If an
    /// operation was partially finished when the operation was cancelled the
    /// partial result will be returned, without an error.
    /// 
    /// On error -1 is returned and `error` is set accordingly.
    /// 
    /// For the asynchronous, non-blocking, version of this function, see
    /// `g_buffered_input_stream_fill_async()`.
    func fill(count: gssize, cancellable: CancellableProtocol) throws -> gssize {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_buffered_input_stream_fill(cast(buffered_input_stream_ptr), count, cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }

    /// Reads data into `stream`'s buffer asynchronously, up to `count` size.
    /// `io_priority` can be used to prioritize reads. For the synchronous
    /// version of this function, see `g_buffered_input_stream_fill()`.
    /// 
    /// If `count` is -1 then the attempted read size is equal to the number
    /// of bytes that are required to fill the buffer.
    func fillAsync(count: gssize, ioPriority io_priority: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_buffered_input_stream_fill_async(cast(buffered_input_stream_ptr), count, io_priority, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an asynchronous read.
    func fillFinish(result: AsyncResultProtocol) throws -> gssize {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_buffered_input_stream_fill_finish(cast(buffered_input_stream_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }

    /// Gets the size of the available data within the stream.
    func getAvailable() -> Int {
        let rv = g_buffered_input_stream_get_available(cast(buffered_input_stream_ptr))
        return Int(rv)
    }

    /// Gets the size of the input buffer.
    func getBufferSize() -> Int {
        let rv = g_buffered_input_stream_get_buffer_size(cast(buffered_input_stream_ptr))
        return Int(rv)
    }

    /// Peeks in the buffer, copying data of size `count` into `buffer`,
    /// offset `offset` bytes.
    func peek(buffer: UnsafeMutableRawPointer, offset: Int, count: Int) -> Int {
        let rv = g_buffered_input_stream_peek(cast(buffered_input_stream_ptr), cast(buffer), gsize(offset), gsize(count))
        return Int(rv)
    }

    /// Returns the buffer with the currently available bytes. The returned
    /// buffer must not be modified and will become invalid when reading from
    /// the stream or filling the buffer.
    func peekBuffer(count: UnsafeMutablePointer<Int>) -> UnsafeMutableRawPointer! {
        let rv = g_buffered_input_stream_peek_buffer(cast(buffered_input_stream_ptr), cast(count))
        return cast(rv)
    }

    /// Tries to read a single byte from the stream or the buffer. Will block
    /// during this read.
    /// 
    /// On success, the byte read from the stream is returned. On end of stream
    /// -1 is returned but it's not an exceptional error and `error` is not set.
    /// 
    /// If `cancellable` is not `nil`, then the operation can be cancelled by
    /// triggering the cancellable object from another thread. If the operation
    /// was cancelled, the error `G_IO_ERROR_CANCELLED` will be returned. If an
    /// operation was partially finished when the operation was cancelled the
    /// partial result will be returned, without an error.
    /// 
    /// On error -1 is returned and `error` is set accordingly.
    func readByte(cancellable: CancellableProtocol) throws -> CInt {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_buffered_input_stream_read_byte(cast(buffered_input_stream_ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return rv
    }

    /// Sets the size of the internal buffer of `stream` to `size`, or to the
    /// size of the contents of the buffer. The buffer can never be resized
    /// smaller than its current contents.
    func setBuffer(size: Int) {
        g_buffered_input_stream_set_buffer_size(cast(buffered_input_stream_ptr), gsize(size))
    
    }
    /// Gets the size of the available data within the stream.
    var available: Int {
        /// Gets the size of the available data within the stream.
        get {
            let rv = g_buffered_input_stream_get_available(cast(buffered_input_stream_ptr))
            return Int(rv)
        }
    }

    /// Gets the size of the input buffer.
    var bufferSize: Int {
        /// Gets the size of the input buffer.
        get {
            let rv = g_buffered_input_stream_get_buffer_size(cast(buffered_input_stream_ptr))
            return Int(rv)
        }
        /// Sets the size of the internal buffer of `stream` to `size`, or to the
        /// size of the contents of the buffer. The buffer can never be resized
        /// smaller than its current contents.
        nonmutating set {
            g_buffered_input_stream_set_buffer_size(cast(buffered_input_stream_ptr), gsize(newValue))
        }
    }
}



