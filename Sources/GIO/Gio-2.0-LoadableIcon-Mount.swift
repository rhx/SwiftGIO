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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GLoadableIcon` instance.
    var loadable_icon_ptr: UnsafeMutablePointer<GLoadableIcon> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension LoadableIconRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GLoadableIcon>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `LoadableIconProtocol`
    init<T: LoadableIconProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    /// Ownership is transferred to the `LoadableIcon` instance.
    public init(_ op: UnsafeMutablePointer<GLoadableIcon>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `LoadableIconProtocol`
    /// `GLoadableIcon` does not allow reference counting.
    public convenience init<T: LoadableIconProtocol>(_ other: T) {
        self.init(cast(other.loadable_icon_ptr))
        // no reference counting for GLoadableIcon, cannot ref(cast(loadable_icon_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GLoadableIcon.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GLoadableIcon.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GLoadableIcon.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LoadableIconProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GLoadableIcon>(opaquePointer))
    }



}

// MARK: - no LoadableIcon properties

// MARK: - no signals


public extension LoadableIconProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GLoadableIcon` instance.
    var loadable_icon_ptr: UnsafeMutablePointer<GLoadableIcon> { return ptr.assumingMemoryBound(to: GLoadableIcon.self) }

    /// Loads a loadable icon. For the asynchronous version of this function,
    /// see g_loadable_icon_load_async().
    func load(size: CInt, type: UnsafeMutablePointer<UnsafeMutablePointer<CChar>>, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<GInputStream>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_loadable_icon_load(cast(loadable_icon_ptr), size, cast(type), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Loads an icon asynchronously. To finish this function, see
    /// g_loadable_icon_load_finish(). For the synchronous, blocking
    /// version of this function, see g_loadable_icon_load().
    func loadAsync(size: CInt, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_loadable_icon_load_async(cast(loadable_icon_ptr), size, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an asynchronous icon load started in g_loadable_icon_load_async().
    func loadFinish(res: AsyncResultProtocol, type: UnsafeMutablePointer<UnsafeMutablePointer<CChar>>) throws -> UnsafeMutablePointer<GInputStream>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_loadable_icon_load_finish(cast(loadable_icon_ptr), cast(res.ptr), cast(type), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }
}



// MARK: - Mount Interface

/// The `MountProtocol` protocol exposes the methods and properties of an underlying `GMount` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Mount`.
/// Alternatively, use `MountRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GMount` interface represents user-visible mounts. Note, when
/// porting from GnomeVFS, `GMount` is the moral equivalent of `GnomeVFSVolume`.
/// 
/// `GMount` is a "mounted" filesystem that you can access. Mounted is in
/// quotes because it's not the same as a unix mount, it might be a gvfs
/// mount, but you can still access the files on it if you use GIO. Might or
/// might not be related to a volume object.
/// 
/// Unmounting a `GMount` instance is an asynchronous operation. For
/// more information about asynchronous operations, see `GAsyncResult`
/// and `GTask`. To unmount a `GMount` instance, first call
/// g_mount_unmount_with_operation() with (at least) the `GMount` instance and a
/// `GAsyncReadyCallback`.  The callback will be fired when the
/// operation has resolved (either with success or failure), and a
/// `GAsyncResult` structure will be passed to the callback.  That
/// callback should then call g_mount_unmount_with_operation_finish() with the `GMount`
/// and the `GAsyncResult` data to see if the operation was completed
/// successfully.  If an `error` is present when g_mount_unmount_with_operation_finish()
/// is called, then it will be filled with any error information.
public protocol MountProtocol {
    /// Untyped pointer to the underlying `GMount` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GMount` instance.
    var mount_ptr: UnsafeMutablePointer<GMount> { get }
}

/// The `MountRef` type acts as a lightweight Swift reference to an underlying `GMount` instance.
/// It exposes methods that can operate on this data type through `MountProtocol` conformance.
/// Use `MountRef` only as an `unowned` reference to an existing `GMount` instance.
///
/// The `GMount` interface represents user-visible mounts. Note, when
/// porting from GnomeVFS, `GMount` is the moral equivalent of `GnomeVFSVolume`.
/// 
/// `GMount` is a "mounted" filesystem that you can access. Mounted is in
/// quotes because it's not the same as a unix mount, it might be a gvfs
/// mount, but you can still access the files on it if you use GIO. Might or
/// might not be related to a volume object.
/// 
/// Unmounting a `GMount` instance is an asynchronous operation. For
/// more information about asynchronous operations, see `GAsyncResult`
/// and `GTask`. To unmount a `GMount` instance, first call
/// g_mount_unmount_with_operation() with (at least) the `GMount` instance and a
/// `GAsyncReadyCallback`.  The callback will be fired when the
/// operation has resolved (either with success or failure), and a
/// `GAsyncResult` structure will be passed to the callback.  That
/// callback should then call g_mount_unmount_with_operation_finish() with the `GMount`
/// and the `GAsyncResult` data to see if the operation was completed
/// successfully.  If an `error` is present when g_mount_unmount_with_operation_finish()
/// is called, then it will be filled with any error information.
public struct MountRef: MountProtocol {
    /// Untyped pointer to the underlying `GMount` instance.
    /// For type-safe access, use the generated, typed pointer `mount_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension MountRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GMount>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `MountProtocol`
    init<T: MountProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Mount` type acts as an owner of an underlying `GMount` instance.
/// It provides the methods that can operate on this data type through `MountProtocol` conformance.
/// Use `Mount` as a strong reference or owner of a `GMount` instance.
///
/// The `GMount` interface represents user-visible mounts. Note, when
/// porting from GnomeVFS, `GMount` is the moral equivalent of `GnomeVFSVolume`.
/// 
/// `GMount` is a "mounted" filesystem that you can access. Mounted is in
/// quotes because it's not the same as a unix mount, it might be a gvfs
/// mount, but you can still access the files on it if you use GIO. Might or
/// might not be related to a volume object.
/// 
/// Unmounting a `GMount` instance is an asynchronous operation. For
/// more information about asynchronous operations, see `GAsyncResult`
/// and `GTask`. To unmount a `GMount` instance, first call
/// g_mount_unmount_with_operation() with (at least) the `GMount` instance and a
/// `GAsyncReadyCallback`.  The callback will be fired when the
/// operation has resolved (either with success or failure), and a
/// `GAsyncResult` structure will be passed to the callback.  That
/// callback should then call g_mount_unmount_with_operation_finish() with the `GMount`
/// and the `GAsyncResult` data to see if the operation was completed
/// successfully.  If an `error` is present when g_mount_unmount_with_operation_finish()
/// is called, then it will be filled with any error information.
open class Mount: MountProtocol {
    /// Untyped pointer to the underlying `GMount` instance.
    /// For type-safe access, use the generated, typed pointer `mount_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Mount` instance.
    public init(_ op: UnsafeMutablePointer<GMount>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `MountProtocol`
    /// `GMount` does not allow reference counting.
    public convenience init<T: MountProtocol>(_ other: T) {
        self.init(cast(other.mount_ptr))
        // no reference counting for GMount, cannot ref(cast(mount_ptr))
    }

    /// Do-nothing destructor for`GMount`.
    deinit {
        // no reference counting for GMount, cannot unref(cast(mount_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GMount.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GMount.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GMount.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GMount>(opaquePointer))
    }



}

// MARK: - no Mount properties

public enum MountSignalName: String, SignalNameProtocol {
    /// Emitted when the mount has been changed.
    case changed = "changed"
    /// This signal may be emitted when the `GMount` is about to be
    /// unmounted.
    /// 
    /// This signal depends on the backend and is only emitted if
    /// GIO was used to unmount.
    case preUnmount = "pre-unmount"
    /// This signal is emitted when the `GMount` have been
    /// unmounted. If the recipient is holding references to the
    /// object they should release them so the object can be
    /// finalized.
    case unmounted = "unmounted"

}

public extension MountProtocol {
    /// Connect a `MountSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: MountSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(mount_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension MountProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GMount` instance.
    var mount_ptr: UnsafeMutablePointer<GMount> { return ptr.assumingMemoryBound(to: GMount.self) }

    /// Checks if `mount` can be ejected.
    func canEject() -> Bool {
        let rv = g_mount_can_eject(cast(mount_ptr))
        return Bool(rv != 0)
    }

    /// Checks if `mount` can be unmounted.
    func canUnmount() -> Bool {
        let rv = g_mount_can_unmount(cast(mount_ptr))
        return Bool(rv != 0)
    }

    /// Ejects a mount. This is an asynchronous operation, and is
    /// finished by calling g_mount_eject_finish() with the `mount`
    /// and `GAsyncResult` data returned in the `callback`.
    ///
    /// **eject is deprecated:**
    /// Use g_mount_eject_with_operation() instead.
    @available(*, deprecated) func eject(flags: MountUnmountFlags, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_mount_eject(cast(mount_ptr), flags, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes ejecting a mount. If any errors occurred during the operation,
    /// `error` will be set to contain the errors and `false` will be returned.
    ///
    /// **eject_finish is deprecated:**
    /// Use g_mount_eject_with_operation_finish() instead.
    @available(*, deprecated) func ejectFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_mount_eject_finish(cast(mount_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Ejects a mount. This is an asynchronous operation, and is
    /// finished by calling g_mount_eject_with_operation_finish() with the `mount`
    /// and `GAsyncResult` data returned in the `callback`.
    func ejectWithOperation(flags: MountUnmountFlags, mountOperation mount_operation: MountOperationProtocol, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_mount_eject_with_operation(cast(mount_ptr), flags, cast(mount_operation.ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes ejecting a mount. If any errors occurred during the operation,
    /// `error` will be set to contain the errors and `false` will be returned.
    func ejectWithOperationFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_mount_eject_with_operation_finish(cast(mount_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Gets the default location of `mount`. The default location of the given
    /// `mount` is a path that reflects the main entry point for the user (e.g.
    /// the home directory, or the root of the volume).
    func getDefaultLocation() -> UnsafeMutablePointer<GFile>! {
        let rv = g_mount_get_default_location(cast(mount_ptr))
        return cast(rv)
    }

    /// Gets the drive for the `mount`.
    /// 
    /// This is a convenience method for getting the `GVolume` and then
    /// using that object to get the `GDrive`.
    func getDrive() -> UnsafeMutablePointer<GDrive>! {
        let rv = g_mount_get_drive(cast(mount_ptr))
        return cast(rv)
    }

    /// Gets the icon for `mount`.
    func getIcon() -> UnsafeMutablePointer<GIcon>! {
        let rv = g_mount_get_icon(cast(mount_ptr))
        return cast(rv)
    }

    /// Gets the name of `mount`.
    func getName() -> String! {
        let rv = g_mount_get_name(cast(mount_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the root directory on `mount`.
    func getRoot() -> UnsafeMutablePointer<GFile>! {
        let rv = g_mount_get_root(cast(mount_ptr))
        return cast(rv)
    }

    /// Gets the sort key for `mount`, if any.
    func getSortKey() -> String! {
        let rv = g_mount_get_sort_key(cast(mount_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the symbolic icon for `mount`.
    func getSymbolicIcon() -> UnsafeMutablePointer<GIcon>! {
        let rv = g_mount_get_symbolic_icon(cast(mount_ptr))
        return cast(rv)
    }

    /// Gets the UUID for the `mount`. The reference is typically based on
    /// the file system UUID for the mount in question and should be
    /// considered an opaque string. Returns `nil` if there is no UUID
    /// available.
    func getUuid() -> String! {
        let rv = g_mount_get_uuid(cast(mount_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the volume for the `mount`.
    func getVolume() -> UnsafeMutablePointer<GVolume>! {
        let rv = g_mount_get_volume(cast(mount_ptr))
        return cast(rv)
    }

    /// Tries to guess the type of content stored on `mount`. Returns one or
    /// more textual identifiers of well-known content types (typically
    /// prefixed with "x-content/"), e.g. x-content/image-dcf for camera
    /// memory cards. See the
    /// [shared-mime-info](http://www.freedesktop.org/wiki/Specifications/shared-mime-info-spec)
    /// specification for more on x-content types.
    /// 
    /// This is an asynchronous operation (see
    /// g_mount_guess_content_type_sync() for the synchronous version), and
    /// is finished by calling g_mount_guess_content_type_finish() with the
    /// `mount` and `GAsyncResult` data returned in the `callback`.
    func guessContentType(forceRescan force_rescan: Bool, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_mount_guess_content_type(cast(mount_ptr), gboolean(force_rescan ? 1 : 0), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes guessing content types of `mount`. If any errors occurred
    /// during the operation, `error` will be set to contain the errors and
    /// `false` will be returned. In particular, you may get an
    /// `G_IO_ERROR_NOT_SUPPORTED` if the mount does not support content
    /// guessing.
    func guessContentTypeFinish(result: AsyncResultProtocol) throws -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_mount_guess_content_type_finish(cast(mount_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Tries to guess the type of content stored on `mount`. Returns one or
    /// more textual identifiers of well-known content types (typically
    /// prefixed with "x-content/"), e.g. x-content/image-dcf for camera
    /// memory cards. See the
    /// [shared-mime-info](http://www.freedesktop.org/wiki/Specifications/shared-mime-info-spec)
    /// specification for more on x-content types.
    /// 
    /// This is an synchronous operation and as such may block doing IO;
    /// see g_mount_guess_content_type() for the asynchronous version.
    func guessContentTypeSync(forceRescan force_rescan: Bool, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_mount_guess_content_type_sync(cast(mount_ptr), gboolean(force_rescan ? 1 : 0), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Remounts a mount. This is an asynchronous operation, and is
    /// finished by calling g_mount_remount_finish() with the `mount`
    /// and `GAsyncResults` data returned in the `callback`.
    /// 
    /// Remounting is useful when some setting affecting the operation
    /// of the volume has been changed, as these may need a remount to
    /// take affect. While this is semantically equivalent with unmounting
    /// and then remounting not all backends might need to actually be
    /// unmounted.
    func remount(flags: MountMountFlags, mountOperation mount_operation: MountOperationProtocol, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_mount_remount(cast(mount_ptr), flags, cast(mount_operation.ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes remounting a mount. If any errors occurred during the operation,
    /// `error` will be set to contain the errors and `false` will be returned.
    func remountFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_mount_remount_finish(cast(mount_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Increments the shadow count on `mount`. Usually used by
    /// `GVolumeMonitor` implementations when creating a shadow mount for
    /// `mount`, see g_mount_is_shadowed() for more information. The caller
    /// will need to emit the `GMount`::changed signal on `mount` manually.
    func shadow() {
        g_mount_shadow(cast(mount_ptr))
    
    }

    /// Unmounts a mount. This is an asynchronous operation, and is
    /// finished by calling g_mount_unmount_finish() with the `mount`
    /// and `GAsyncResult` data returned in the `callback`.
    ///
    /// **unmount is deprecated:**
    /// Use g_mount_unmount_with_operation() instead.
    @available(*, deprecated) func unmount(flags: MountUnmountFlags, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_mount_unmount(cast(mount_ptr), flags, cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes unmounting a mount. If any errors occurred during the operation,
    /// `error` will be set to contain the errors and `false` will be returned.
    ///
    /// **unmount_finish is deprecated:**
    /// Use g_mount_unmount_with_operation_finish() instead.
    @available(*, deprecated) func unmountFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_mount_unmount_finish(cast(mount_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Unmounts a mount. This is an asynchronous operation, and is
    /// finished by calling g_mount_unmount_with_operation_finish() with the `mount`
    /// and `GAsyncResult` data returned in the `callback`.
    func unmountWithOperation(flags: MountUnmountFlags, mountOperation mount_operation: MountOperationProtocol, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_mount_unmount_with_operation(cast(mount_ptr), flags, cast(mount_operation.ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes unmounting a mount. If any errors occurred during the operation,
    /// `error` will be set to contain the errors and `false` will be returned.
    func unmountWithOperationFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_mount_unmount_with_operation_finish(cast(mount_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Decrements the shadow count on `mount`. Usually used by
    /// `GVolumeMonitor` implementations when destroying a shadow mount for
    /// `mount`, see g_mount_is_shadowed() for more information. The caller
    /// will need to emit the `GMount`::changed signal on `mount` manually.
    func unshadow() {
        g_mount_unshadow(cast(mount_ptr))
    
    }
    /// Gets the default location of `mount`. The default location of the given
    /// `mount` is a path that reflects the main entry point for the user (e.g.
    /// the home directory, or the root of the volume).
    var defaultLocation: UnsafeMutablePointer<GFile>! {
        /// Gets the default location of `mount`. The default location of the given
        /// `mount` is a path that reflects the main entry point for the user (e.g.
        /// the home directory, or the root of the volume).
        get {
            let rv = g_mount_get_default_location(cast(mount_ptr))
            return cast(rv)
        }
    }

    /// Gets the drive for the `mount`.
    /// 
    /// This is a convenience method for getting the `GVolume` and then
    /// using that object to get the `GDrive`.
    var drive: UnsafeMutablePointer<GDrive>! {
        /// Gets the drive for the `mount`.
        /// 
        /// This is a convenience method for getting the `GVolume` and then
        /// using that object to get the `GDrive`.
        get {
            let rv = g_mount_get_drive(cast(mount_ptr))
            return cast(rv)
        }
    }

    /// Gets the icon for `mount`.
    var icon: UnsafeMutablePointer<GIcon>! {
        /// Gets the icon for `mount`.
        get {
            let rv = g_mount_get_icon(cast(mount_ptr))
            return cast(rv)
        }
    }

    /// Determines if `mount` is shadowed. Applications or libraries should
    /// avoid displaying `mount` in the user interface if it is shadowed.
    /// 
    /// A mount is said to be shadowed if there exists one or more user
    /// visible objects (currently `GMount` objects) with a root that is
    /// inside the root of `mount`.
    /// 
    /// One application of shadow mounts is when exposing a single file
    /// system that is used to address several logical volumes. In this
    /// situation, a `GVolumeMonitor` implementation would create two
    /// `GVolume` objects (for example, one for the camera functionality of
    /// the device and one for a SD card reader on the device) with
    /// activation URIs `gphoto2://[usb:001,002]/store1/`
    /// and `gphoto2://[usb:001,002]/store2/`. When the
    /// underlying mount (with root
    /// `gphoto2://[usb:001,002]/`) is mounted, said
    /// `GVolumeMonitor` implementation would create two `GMount` objects
    /// (each with their root matching the corresponding volume activation
    /// root) that would shadow the original mount.
    /// 
    /// The proxy monitor in GVfs 2.26 and later, automatically creates and
    /// manage shadow mounts (and shadows the underlying mount) if the
    /// activation root on a `GVolume` is set.
    var isShadowed: Bool {
        /// Determines if `mount` is shadowed. Applications or libraries should
        /// avoid displaying `mount` in the user interface if it is shadowed.
        /// 
        /// A mount is said to be shadowed if there exists one or more user
        /// visible objects (currently `GMount` objects) with a root that is
        /// inside the root of `mount`.
        /// 
        /// One application of shadow mounts is when exposing a single file
        /// system that is used to address several logical volumes. In this
        /// situation, a `GVolumeMonitor` implementation would create two
        /// `GVolume` objects (for example, one for the camera functionality of
        /// the device and one for a SD card reader on the device) with
        /// activation URIs `gphoto2://[usb:001,002]/store1/`
        /// and `gphoto2://[usb:001,002]/store2/`. When the
        /// underlying mount (with root
        /// `gphoto2://[usb:001,002]/`) is mounted, said
        /// `GVolumeMonitor` implementation would create two `GMount` objects
        /// (each with their root matching the corresponding volume activation
        /// root) that would shadow the original mount.
        /// 
        /// The proxy monitor in GVfs 2.26 and later, automatically creates and
        /// manage shadow mounts (and shadows the underlying mount) if the
        /// activation root on a `GVolume` is set.
        get {
            let rv = g_mount_is_shadowed(cast(mount_ptr))
            return Bool(rv != 0)
        }
    }

    /// Gets the name of `mount`.
    var name: String! {
        /// Gets the name of `mount`.
        get {
            let rv = g_mount_get_name(cast(mount_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the root directory on `mount`.
    var root: UnsafeMutablePointer<GFile>! {
        /// Gets the root directory on `mount`.
        get {
            let rv = g_mount_get_root(cast(mount_ptr))
            return cast(rv)
        }
    }

    /// Gets the sort key for `mount`, if any.
    var sortKey: String! {
        /// Gets the sort key for `mount`, if any.
        get {
            let rv = g_mount_get_sort_key(cast(mount_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the symbolic icon for `mount`.
    var symbolicIcon: UnsafeMutablePointer<GIcon>! {
        /// Gets the symbolic icon for `mount`.
        get {
            let rv = g_mount_get_symbolic_icon(cast(mount_ptr))
            return cast(rv)
        }
    }

    /// Gets the UUID for the `mount`. The reference is typically based on
    /// the file system UUID for the mount in question and should be
    /// considered an opaque string. Returns `nil` if there is no UUID
    /// available.
    var uuid: String! {
        /// Gets the UUID for the `mount`. The reference is typically based on
        /// the file system UUID for the mount in question and should be
        /// considered an opaque string. Returns `nil` if there is no UUID
        /// available.
        get {
            let rv = g_mount_get_uuid(cast(mount_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the volume for the `mount`.
    var volume: UnsafeMutablePointer<GVolume>! {
        /// Gets the volume for the `mount`.
        get {
            let rv = g_mount_get_volume(cast(mount_ptr))
            return cast(rv)
        }
    }
}



