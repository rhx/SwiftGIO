import CGLib
import GLib
import GLibObject

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
/// `g_mount_unmount_with_operation()` with (at least) the `GMount` instance and a
/// `GAsyncReadyCallback`.  The callback will be fired when the
/// operation has resolved (either with success or failure), and a
/// `GAsyncResult` structure will be passed to the callback.  That
/// callback should then call `g_mount_unmount_with_operation_finish()` with the `GMount`
/// and the `GAsyncResult` data to see if the operation was completed
/// successfully.  If an `error` is present when `g_mount_unmount_with_operation_finish()`
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
/// `g_mount_unmount_with_operation()` with (at least) the `GMount` instance and a
/// `GAsyncReadyCallback`.  The callback will be fired when the
/// operation has resolved (either with success or failure), and a
/// `GAsyncResult` structure will be passed to the callback.  That
/// callback should then call `g_mount_unmount_with_operation_finish()` with the `GMount`
/// and the `GAsyncResult` data to see if the operation was completed
/// successfully.  If an `error` is present when `g_mount_unmount_with_operation_finish()`
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
/// `g_mount_unmount_with_operation()` with (at least) the `GMount` instance and a
/// `GAsyncReadyCallback`.  The callback will be fired when the
/// operation has resolved (either with success or failure), and a
/// `GAsyncResult` structure will be passed to the callback.  That
/// callback should then call `g_mount_unmount_with_operation_finish()` with the `GMount`
/// and the `GAsyncResult` data to see if the operation was completed
/// successfully.  If an `error` is present when `g_mount_unmount_with_operation_finish()`
/// is called, then it will be filled with any error information.
open class Mount: MountProtocol {
    /// Untyped pointer to the underlying `GMount` instance.
    /// For type-safe access, use the generated, typed pointer `mount_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Mount` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GMount>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GMount` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Mount` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GMount>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GMount, cannot ref(cast(mount_ptr))
    }

    /// Reference intialiser for a related type that implements `MountProtocol`
    /// `GMount` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `MountProtocol`
    public init<T: MountProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.mount_ptr)
        // no reference counting for GMount, cannot ref(cast(mount_ptr))
    }

    /// Do-nothing destructor for`GMount`.
    deinit {
        // no reference counting for GMount, cannot unref(cast(mount_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GMount, cannot ref(cast(mount_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GMount, cannot ref(cast(mount_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GMount, cannot ref(cast(mount_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GMount, cannot ref(cast(mount_ptr))
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
    /// finished by calling `g_mount_eject_finish()` with the `mount`
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
    /// finished by calling `g_mount_eject_with_operation_finish()` with the `mount`
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
    /// `g_mount_guess_content_type_sync()` for the synchronous version), and
    /// is finished by calling `g_mount_guess_content_type_finish()` with the
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
    /// This is a synchronous operation and as such may block doing IO;
    /// see `g_mount_guess_content_type()` for the asynchronous version.
    func guessContentTypeSync(forceRescan force_rescan: Bool, cancellable: CancellableProtocol) throws -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>>! {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_mount_guess_content_type_sync(cast(mount_ptr), gboolean(force_rescan ? 1 : 0), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return cast(rv)
    }

    /// Remounts a mount. This is an asynchronous operation, and is
    /// finished by calling `g_mount_remount_finish()` with the `mount`
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
    /// `mount`, see `g_mount_is_shadowed()` for more information. The caller
    /// will need to emit the `GMount::changed` signal on `mount` manually.
    func shadow() {
        g_mount_shadow(cast(mount_ptr))
    
    }

    /// Unmounts a mount. This is an asynchronous operation, and is
    /// finished by calling `g_mount_unmount_finish()` with the `mount`
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
    /// finished by calling `g_mount_unmount_with_operation_finish()` with the `mount`
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
    /// `mount`, see `g_mount_is_shadowed()` for more information. The caller
    /// will need to emit the `GMount::changed` signal on `mount` manually.
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



// MARK: - NetworkMonitor Interface

/// The `NetworkMonitorProtocol` protocol exposes the methods and properties of an underlying `GNetworkMonitor` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NetworkMonitor`.
/// Alternatively, use `NetworkMonitorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GNetworkMonitor` provides an easy-to-use cross-platform API
/// for monitoring network connectivity. On Linux, the available
/// implementations are based on the kernel's netlink interface and
/// on NetworkManager.
/// 
/// There is also an implementation for use inside Flatpak sandboxes.
public protocol NetworkMonitorProtocol: InitableProtocol {
    /// Untyped pointer to the underlying `GNetworkMonitor` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GNetworkMonitor` instance.
    var network_monitor_ptr: UnsafeMutablePointer<GNetworkMonitor> { get }
}

/// The `NetworkMonitorRef` type acts as a lightweight Swift reference to an underlying `GNetworkMonitor` instance.
/// It exposes methods that can operate on this data type through `NetworkMonitorProtocol` conformance.
/// Use `NetworkMonitorRef` only as an `unowned` reference to an existing `GNetworkMonitor` instance.
///
/// `GNetworkMonitor` provides an easy-to-use cross-platform API
/// for monitoring network connectivity. On Linux, the available
/// implementations are based on the kernel's netlink interface and
/// on NetworkManager.
/// 
/// There is also an implementation for use inside Flatpak sandboxes.
public struct NetworkMonitorRef: NetworkMonitorProtocol {
    /// Untyped pointer to the underlying `GNetworkMonitor` instance.
    /// For type-safe access, use the generated, typed pointer `network_monitor_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension NetworkMonitorRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GNetworkMonitor>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `NetworkMonitorProtocol`
    init<T: NetworkMonitorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkMonitorProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkMonitorProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkMonitorProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkMonitorProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkMonitorProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Gets the default `GNetworkMonitor` for the system.
    static func getDefault() -> NetworkMonitorRef! {
        let rv = g_network_monitor_get_default()
        return rv.map { NetworkMonitorRef(cast($0)) }
    }
}

/// The `NetworkMonitor` type acts as an owner of an underlying `GNetworkMonitor` instance.
/// It provides the methods that can operate on this data type through `NetworkMonitorProtocol` conformance.
/// Use `NetworkMonitor` as a strong reference or owner of a `GNetworkMonitor` instance.
///
/// `GNetworkMonitor` provides an easy-to-use cross-platform API
/// for monitoring network connectivity. On Linux, the available
/// implementations are based on the kernel's netlink interface and
/// on NetworkManager.
/// 
/// There is also an implementation for use inside Flatpak sandboxes.
open class NetworkMonitor: Initable, NetworkMonitorProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NetworkMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GNetworkMonitor>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GNetworkMonitor` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `NetworkMonitor` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GNetworkMonitor>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `NetworkMonitorProtocol`
    /// `GNetworkMonitor` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `NetworkMonitorProtocol`
    public init<T: NetworkMonitorProtocol>(networkMonitor other: T) {
        super.init(retaining: cast(other.network_monitor_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkMonitorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkMonitorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkMonitorProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkMonitorProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkMonitorProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkMonitorProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkMonitorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NetworkMonitorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    /// Gets the default `GNetworkMonitor` for the system.
    public static func getDefault() -> NetworkMonitor! {
        let rv = g_network_monitor_get_default()
        return rv.map { NetworkMonitor(cast($0)) }
    }

}

public enum NetworkMonitorPropertyName: String, PropertyNameProtocol {
    /// More detailed information about the host's network connectivity.
    /// See `g_network_monitor_get_connectivity()` and
    /// `GNetworkConnectivity` for more details.
    case connectivity = "connectivity"
    /// Whether the network is considered available. That is, whether the
    /// system has a default route for at least one of IPv4 or IPv6.
    /// 
    /// Real-world networks are of course much more complicated than
    /// this; the machine may be connected to a wifi hotspot that
    /// requires payment before allowing traffic through, or may be
    /// connected to a functioning router that has lost its own upstream
    /// connectivity. Some hosts might only be accessible when a VPN is
    /// active. Other hosts might only be accessible when the VPN is
    /// not active. Thus, it is best to use `g_network_monitor_can_reach()`
    /// or `g_network_monitor_can_reach_async()` to test for reachability
    /// on a host-by-host basis. (On the other hand, when the property is
    /// `false`, the application can reasonably expect that no remote
    /// hosts at all are reachable, and should indicate this to the user
    /// in its UI.)
    /// 
    /// See also `GNetworkMonitor::network`-changed.
    case networkAvailable = "network-available"
    /// Whether the network is considered metered. That is, whether the
    /// system has traffic flowing through the default connection that is
    /// subject to limitations set by service providers. For example, traffic
    /// might be billed by the amount of data transmitted, or there might be a
    /// quota on the amount of traffic per month. This is typical with tethered
    /// connections (3G and 4G) and in such situations, bandwidth intensive
    /// applications may wish to avoid network activity where possible if it will
    /// cost the user money or use up their limited quota.
    /// 
    /// If more information is required about specific devices then the
    /// system network management API should be used instead (for example,
    /// NetworkManager or ConnMan).
    /// 
    /// If this information is not available then no networks will be
    /// marked as metered.
    /// 
    /// See also `GNetworkMonitor:network`-available.
    case networkMetered = "network-metered"
}

public extension NetworkMonitorProtocol {
    /// Bind a `NetworkMonitorPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: NetworkMonitorPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(network_monitor_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum NetworkMonitorSignalName: String, SignalNameProtocol {
    /// Emitted when the network configuration changes.
    case networkChanged = "network-changed"
    /// More detailed information about the host's network connectivity.
    /// See `g_network_monitor_get_connectivity()` and
    /// `GNetworkConnectivity` for more details.
    case notifyConnectivity = "notify::connectivity"
    /// Whether the network is considered available. That is, whether the
    /// system has a default route for at least one of IPv4 or IPv6.
    /// 
    /// Real-world networks are of course much more complicated than
    /// this; the machine may be connected to a wifi hotspot that
    /// requires payment before allowing traffic through, or may be
    /// connected to a functioning router that has lost its own upstream
    /// connectivity. Some hosts might only be accessible when a VPN is
    /// active. Other hosts might only be accessible when the VPN is
    /// not active. Thus, it is best to use `g_network_monitor_can_reach()`
    /// or `g_network_monitor_can_reach_async()` to test for reachability
    /// on a host-by-host basis. (On the other hand, when the property is
    /// `false`, the application can reasonably expect that no remote
    /// hosts at all are reachable, and should indicate this to the user
    /// in its UI.)
    /// 
    /// See also `GNetworkMonitor::network`-changed.
    case notifyNetworkAvailable = "notify::network-available"
    /// Whether the network is considered metered. That is, whether the
    /// system has traffic flowing through the default connection that is
    /// subject to limitations set by service providers. For example, traffic
    /// might be billed by the amount of data transmitted, or there might be a
    /// quota on the amount of traffic per month. This is typical with tethered
    /// connections (3G and 4G) and in such situations, bandwidth intensive
    /// applications may wish to avoid network activity where possible if it will
    /// cost the user money or use up their limited quota.
    /// 
    /// If more information is required about specific devices then the
    /// system network management API should be used instead (for example,
    /// NetworkManager or ConnMan).
    /// 
    /// If this information is not available then no networks will be
    /// marked as metered.
    /// 
    /// See also `GNetworkMonitor:network`-available.
    case notifyNetworkMetered = "notify::network-metered"
}

public extension NetworkMonitorProtocol {
    /// Connect a `NetworkMonitorSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: NetworkMonitorSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(network_monitor_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension NetworkMonitorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GNetworkMonitor` instance.
    var network_monitor_ptr: UnsafeMutablePointer<GNetworkMonitor> { return ptr.assumingMemoryBound(to: GNetworkMonitor.self) }

    /// Attempts to determine whether or not the host pointed to by
    /// `connectable` can be reached, without actually trying to connect to
    /// it.
    /// 
    /// This may return `true` even when `GNetworkMonitor:network`-available
    /// is `false`, if, for example, `monitor` can determine that
    /// `connectable` refers to a host on a local network.
    /// 
    /// If `monitor` believes that an attempt to connect to `connectable`
    /// will succeed, it will return `true`. Otherwise, it will return
    /// `false` and set `error` to an appropriate error (such as
    /// `G_IO_ERROR_HOST_UNREACHABLE`).
    /// 
    /// Note that although this does not attempt to connect to
    /// `connectable`, it may still block for a brief period of time (eg,
    /// trying to do multicast DNS on the local network), so if you do not
    /// want to block, you should use `g_network_monitor_can_reach_async()`.
    func canReach(connectable: SocketConnectableProtocol, cancellable: CancellableProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_network_monitor_can_reach(cast(network_monitor_ptr), cast(connectable.ptr), cast(cancellable.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Asynchronously attempts to determine whether or not the host
    /// pointed to by `connectable` can be reached, without actually
    /// trying to connect to it.
    /// 
    /// For more details, see `g_network_monitor_can_reach()`.
    /// 
    /// When the operation is finished, `callback` will be called.
    /// You can then call `g_network_monitor_can_reach_finish()`
    /// to get the result of the operation.
    func canReachAsync(connectable: SocketConnectableProtocol, cancellable: CancellableProtocol, callback: @escaping AsyncReadyCallback, userData user_data: UnsafeMutableRawPointer) {
        g_network_monitor_can_reach_async(cast(network_monitor_ptr), cast(connectable.ptr), cast(cancellable.ptr), callback, cast(user_data))
    
    }

    /// Finishes an async network connectivity test.
    /// See `g_network_monitor_can_reach_async()`.
    func canReachFinish(result: AsyncResultProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = g_network_monitor_can_reach_finish(cast(network_monitor_ptr), cast(result.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Gets a more detailed networking state than
    /// `g_network_monitor_get_network_available()`.
    /// 
    /// If `GNetworkMonitor:network`-available is `false`, then the
    /// connectivity state will be `G_NETWORK_CONNECTIVITY_LOCAL`.
    /// 
    /// If `GNetworkMonitor:network`-available is `true`, then the
    /// connectivity state will be `G_NETWORK_CONNECTIVITY_FULL` (if there
    /// is full Internet connectivity), `G_NETWORK_CONNECTIVITY_LIMITED` (if
    /// the host has a default route, but appears to be unable to actually
    /// reach the full Internet), or `G_NETWORK_CONNECTIVITY_PORTAL` (if the
    /// host is trapped behind a "captive portal" that requires some sort
    /// of login or acknowledgement before allowing full Internet access).
    /// 
    /// Note that in the case of `G_NETWORK_CONNECTIVITY_LIMITED` and
    /// `G_NETWORK_CONNECTIVITY_PORTAL`, it is possible that some sites are
    /// reachable but others are not. In this case, applications can
    /// attempt to connect to remote servers, but should gracefully fall
    /// back to their "offline" behavior if the connection attempt fails.
    func getConnectivity() -> GNetworkConnectivity {
        let rv = g_network_monitor_get_connectivity(cast(network_monitor_ptr))
        return rv
    }

    /// Checks if the network is available. "Available" here means that the
    /// system has a default route available for at least one of IPv4 or
    /// IPv6. It does not necessarily imply that the public Internet is
    /// reachable. See `GNetworkMonitor:network`-available for more details.
    func getNetworkAvailable() -> Bool {
        let rv = g_network_monitor_get_network_available(cast(network_monitor_ptr))
        return Bool(rv != 0)
    }

    /// Checks if the network is metered.
    /// See `GNetworkMonitor:network`-metered for more details.
    func getNetworkMetered() -> Bool {
        let rv = g_network_monitor_get_network_metered(cast(network_monitor_ptr))
        return Bool(rv != 0)
    }
    /// More detailed information about the host's network connectivity.
    /// See `g_network_monitor_get_connectivity()` and
    /// `GNetworkConnectivity` for more details.
    var connectivity: GNetworkConnectivity {
        /// Gets a more detailed networking state than
        /// `g_network_monitor_get_network_available()`.
        /// 
        /// If `GNetworkMonitor:network`-available is `false`, then the
        /// connectivity state will be `G_NETWORK_CONNECTIVITY_LOCAL`.
        /// 
        /// If `GNetworkMonitor:network`-available is `true`, then the
        /// connectivity state will be `G_NETWORK_CONNECTIVITY_FULL` (if there
        /// is full Internet connectivity), `G_NETWORK_CONNECTIVITY_LIMITED` (if
        /// the host has a default route, but appears to be unable to actually
        /// reach the full Internet), or `G_NETWORK_CONNECTIVITY_PORTAL` (if the
        /// host is trapped behind a "captive portal" that requires some sort
        /// of login or acknowledgement before allowing full Internet access).
        /// 
        /// Note that in the case of `G_NETWORK_CONNECTIVITY_LIMITED` and
        /// `G_NETWORK_CONNECTIVITY_PORTAL`, it is possible that some sites are
        /// reachable but others are not. In this case, applications can
        /// attempt to connect to remote servers, but should gracefully fall
        /// back to their "offline" behavior if the connection attempt fails.
        get {
            let rv = g_network_monitor_get_connectivity(cast(network_monitor_ptr))
            return rv
        }
    }

    /// Checks if the network is available. "Available" here means that the
    /// system has a default route available for at least one of IPv4 or
    /// IPv6. It does not necessarily imply that the public Internet is
    /// reachable. See `GNetworkMonitor:network`-available for more details.
    var networkAvailable: Bool {
        /// Checks if the network is available. "Available" here means that the
        /// system has a default route available for at least one of IPv4 or
        /// IPv6. It does not necessarily imply that the public Internet is
        /// reachable. See `GNetworkMonitor:network`-available for more details.
        get {
            let rv = g_network_monitor_get_network_available(cast(network_monitor_ptr))
            return Bool(rv != 0)
        }
    }

    /// Checks if the network is metered.
    /// See `GNetworkMonitor:network`-metered for more details.
    var networkMetered: Bool {
        /// Checks if the network is metered.
        /// See `GNetworkMonitor:network`-metered for more details.
        get {
            let rv = g_network_monitor_get_network_metered(cast(network_monitor_ptr))
            return Bool(rv != 0)
        }
    }
}



