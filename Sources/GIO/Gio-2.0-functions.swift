import CGLib
import GLib
import GLibObject

/// Checks if `action_name` is valid.
/// 
/// `action_name` is valid if it consists only of alphanumeric characters,
/// plus '-' and '.'.  The empty string is not a valid action name.
/// 
/// It is an error to call this function with a non-utf8 `action_name`.
/// `action_name` must not be `nil`.
@inlinable public func actionNameIsValid(actionName action_name: UnsafePointer<gchar>!) -> Bool {
    let rv = ((g_action_name_is_valid(action_name)) != 0)
    return rv
}




/// Parses a detailed action name into its separate name and target
/// components.
/// 
/// Detailed action names can have three formats.
/// 
/// The first format is used to represent an action name with no target
/// value and consists of just an action name containing no whitespace
/// nor the characters ':', '(' or ')'.  For example: "app.action".
/// 
/// The second format is used to represent an action with a target value
/// that is a non-empty string consisting only of alphanumerics, plus '-'
/// and '.'.  In that case, the action name and target value are
/// separated by a double colon ("``").  For example:
/// "app.action`target`".
/// 
/// The third format is used to represent an action with any type of
/// target value, including strings.  The target value follows the action
/// name, surrounded in parens.  For example: `"app.action(42)`".  The
/// target value is parsed using `g_variant_parse()`.  If a tuple-typed
/// value is desired, it must be specified in the same way, resulting in
/// two sets of parens, for example: `"app.action((1,2,3)`)".  A string
/// target can be specified this way as well: `"app.action('target')`".
/// For strings, this third format must be used if * target value is
/// empty or contains characters other than alphanumerics, '-' and '.'.
@inlinable public func actionParse(detailedName detailed_name: UnsafePointer<gchar>!, actionName action_name: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>!, targetValue target_value: UnsafeMutablePointer<UnsafeMutablePointer<GVariant>?>!) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((g_action_parse_detailed_name(detailed_name, action_name, target_value, &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}




/// Formats a detailed action name from `action_name` and `target_value`.
/// 
/// It is an error to call this function with an invalid action name.
/// 
/// This function is the opposite of `g_action_parse_detailed_name()`.
/// It will produce a string that can be parsed back to the `action_name`
/// and `target_value` by that function.
/// 
/// See that function for the types of strings that will be printed by
/// this function.
@inlinable public func actionPrintDetailedName<VariantT: VariantProtocol>(actionName action_name: UnsafePointer<gchar>!, targetValue target_value: VariantT? = nil) -> String! {
    guard let rv = g_action_print_detailed_name(action_name, target_value?.variant_ptr).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Creates a new `GAppInfo` from the given information.
/// 
/// Note that for `commandline`, the quoting rules of the Exec key of the
/// [freedesktop.org Desktop Entry Specification](http://freedesktop.org/Standards/desktop-entry-spec)
/// are applied. For example, if the `commandline` contains
/// percent-encoded URIs, the percent-character must be doubled in order to prevent it from
/// being swallowed by Exec key unquoting. See the specification for exact quoting rules.
@inlinable public func appInfoCreateFrom(commandline: UnsafePointer<CChar>!, applicationName application_name: UnsafePointer<CChar>? = nil, flags: AppInfoCreateFlags) throws -> AppInfoRef! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = AppInfoRef(gconstpointer: gconstpointer(g_app_info_create_from_commandline(commandline, application_name, flags.value, &error)))
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Gets a list of all of the applications currently registered
/// on this system.
/// 
/// For desktop files, this includes applications that have
/// `NoDisplay=true` set or are excluded from display by means
/// of `OnlyShowIn` or `NotShowIn`. See `g_app_info_should_show()`.
/// The returned list does not include applications which have
/// the `Hidden` key set.
@inlinable public func appInfoGetAll() -> ListRef! {
    guard let rv = ListRef(gconstpointer: gconstpointer(g_app_info_get_all())) else { return nil }
    return rv
}




/// Gets a list of all `GAppInfos` for a given content type,
/// including the recommended and fallback `GAppInfos`. See
/// `g_app_info_get_recommended_for_type()` and
/// `g_app_info_get_fallback_for_type()`.
@inlinable public func appInfoGetAllForType(contentType content_type: UnsafePointer<CChar>!) -> ListRef! {
    guard let rv = ListRef(gconstpointer: gconstpointer(g_app_info_get_all_for_type(content_type))) else { return nil }
    return rv
}




/// Gets the default `GAppInfo` for a given content type.
@inlinable public func appInfoGetDefaultForType(contentType content_type: UnsafePointer<CChar>!, mustSupportURIs must_support_uris: Bool) -> AppInfoRef! {
    guard let rv = AppInfoRef(gconstpointer: gconstpointer(g_app_info_get_default_for_type(content_type, gboolean((must_support_uris) ? 1 : 0)))) else { return nil }
    return rv
}




/// Gets the default application for handling URIs with
/// the given URI scheme. A URI scheme is the initial part
/// of the URI, up to but not including the ':', e.g. "http",
/// "ftp" or "sip".
@inlinable public func appInfoGetDefaultFor(uriScheme uri_scheme: UnsafePointer<CChar>!) -> AppInfoRef! {
    guard let rv = AppInfoRef(gconstpointer: gconstpointer(g_app_info_get_default_for_uri_scheme(uri_scheme))) else { return nil }
    return rv
}




/// Gets a list of fallback `GAppInfos` for a given content type, i.e.
/// those applications which claim to support the given content type
/// by MIME type subclassing and not directly.
@inlinable public func appInfoGetFallbackForType(contentType content_type: UnsafePointer<gchar>!) -> ListRef! {
    guard let rv = ListRef(gconstpointer: gconstpointer(g_app_info_get_fallback_for_type(content_type))) else { return nil }
    return rv
}




/// Gets a list of recommended `GAppInfos` for a given content type, i.e.
/// those applications which claim to support the given content type exactly,
/// and not by MIME type subclassing.
/// Note that the first application of the list is the last used one, i.e.
/// the last one for which `g_app_info_set_as_last_used_for_type()` has been
/// called.
@inlinable public func appInfoGetRecommendedForType(contentType content_type: UnsafePointer<gchar>!) -> ListRef! {
    guard let rv = ListRef(gconstpointer: gconstpointer(g_app_info_get_recommended_for_type(content_type))) else { return nil }
    return rv
}




/// Utility function that launches the default application
/// registered to handle the specified uri. Synchronous I/O
/// is done on the uri to detect the type of the file if
/// required.
/// 
/// The D-Bus–activated applications don't have to be started if your application
/// terminates too soon after this function. To prevent this, use
/// `g_app_info_launch_default_for_uri_async()` instead.
@inlinable public func appInfoLaunchDefaultFor<AppLaunchContextT: AppLaunchContextProtocol>(uri: UnsafePointer<CChar>!, context: AppLaunchContextT? = nil) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((g_app_info_launch_default_for_uri(uri, context?.app_launch_context_ptr, &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
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
@inlinable public func appInfoLaunchDefaultForURIAsync<AppLaunchContextT: AppLaunchContextProtocol, CancellableT: CancellableProtocol>(uri: UnsafePointer<CChar>!, context: AppLaunchContextT? = nil, cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
    g_app_info_launch_default_for_uri_async(uri, context?.app_launch_context_ptr, cancellable?.cancellable_ptr, callback, user_data)

}




/// Finishes an asynchronous launch-default-for-uri operation.
@inlinable public func appInfoLaunchDefaultForURIFinish<AsyncResultT: AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((g_app_info_launch_default_for_uri_finish(result.async_result_ptr, &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}




/// Removes all changes to the type associations done by
/// `g_app_info_set_as_default_for_type()`,
/// `g_app_info_set_as_default_for_extension()`,
/// `g_app_info_add_supports_type()` or
/// `g_app_info_remove_supports_type()`.
@inlinable public func appInfoResetTypeAssociations(contentType content_type: UnsafePointer<CChar>!) {
    g_app_info_reset_type_associations(content_type)

}




/// Helper function for constructing `GAsyncInitable` object. This is
/// similar to `g_object_newv()` but also initializes the object asynchronously.
/// 
/// When the initialization is finished, `callback` will be called. You can
/// then call `g_async_initable_new_finish()` to get the new object and check
/// for any errors.
///
/// **async_initable_newv_async is deprecated:**
/// Use g_object_new_with_properties() and
/// g_async_initable_init_async() instead. See #GParameter for more information.
@available(*, deprecated) @inlinable public func asyncInitableNewvAsync<CancellableT: CancellableProtocol, ParameterT: ParameterProtocol>(objectType object_type: GType, nParameters n_parameters: Int, parameters: ParameterT, ioPriority io_priority: Int, cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
    g_async_initable_newv_async(object_type, guint(n_parameters), parameters._ptr, gint(io_priority), cancellable?.cancellable_ptr, callback, user_data)

}




/// Asynchronously connects to the message bus specified by `bus_type`.
/// 
/// When the operation is finished, `callback` will be invoked. You can
/// then call `g_bus_get_finish()` to get the result of the operation.
/// 
/// This is an asynchronous failable function. See `g_bus_get_sync()` for
/// the synchronous version.
@inlinable public func busGet<CancellableT: CancellableProtocol>(busType bus_type: GBusType, cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
    g_bus_get(bus_type, cancellable?.cancellable_ptr, callback, user_data)

}




/// Finishes an operation started with `g_bus_get()`.
/// 
/// The returned object is a singleton, that is, shared with other
/// callers of `g_bus_get()` and `g_bus_get_sync()` for `bus_type`. In the
/// event that you need a private message bus connection, use
/// `g_dbus_address_get_for_bus_sync()` and
/// `g_dbus_connection_new_for_address()`.
/// 
/// Note that the returned `GDBusConnection` object will (usually) have
/// the `GDBusConnection:exit`-on-close property set to `true`.
@inlinable public func busGetFinish<AsyncResultT: AsyncResultProtocol>(res: AsyncResultT) throws -> DBusConnectionRef! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = DBusConnectionRef(gconstpointer: gconstpointer(g_bus_get_finish(res.async_result_ptr, &error)))
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Synchronously connects to the message bus specified by `bus_type`.
/// Note that the returned object may shared with other callers,
/// e.g. if two separate parts of a process calls this function with
/// the same `bus_type`, they will share the same object.
/// 
/// This is a synchronous failable function. See `g_bus_get()` and
/// `g_bus_get_finish()` for the asynchronous version.
/// 
/// The returned object is a singleton, that is, shared with other
/// callers of `g_bus_get()` and `g_bus_get_sync()` for `bus_type`. In the
/// event that you need a private message bus connection, use
/// `g_dbus_address_get_for_bus_sync()` and
/// `g_dbus_connection_new_for_address()`.
/// 
/// Note that the returned `GDBusConnection` object will (usually) have
/// the `GDBusConnection:exit`-on-close property set to `true`.
@inlinable public func busGetSync<CancellableT: CancellableProtocol>(busType bus_type: GBusType, cancellable: CancellableT? = nil) throws -> DBusConnectionRef! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = DBusConnectionRef(gconstpointer: gconstpointer(g_bus_get_sync(bus_type, cancellable?.cancellable_ptr, &error)))
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Starts acquiring `name` on the bus specified by `bus_type` and calls
/// `name_acquired_handler` and `name_lost_handler` when the name is
/// acquired respectively lost. Callbacks will be invoked in the
/// [thread-default main context](#g-main-context-push-thread-default)
/// of the thread you are calling this function from.
/// 
/// You are guaranteed that one of the `name_acquired_handler` and `name_lost_handler`
/// callbacks will be invoked after calling this function - there are three
/// possible cases:
/// 
/// - `name_lost_handler` with a `nil` connection (if a connection to the bus
///   can't be made).
/// 
/// - `bus_acquired_handler` then `name_lost_handler` (if the name can't be
///   obtained)
/// 
/// - `bus_acquired_handler` then `name_acquired_handler` (if the name was
///   obtained).
/// 
/// When you are done owning the name, just call `g_bus_unown_name()`
/// with the owner id this function returns.
/// 
/// If the name is acquired or lost (for example another application
/// could acquire the name if you allow replacement or the application
/// currently owning the name exits), the handlers are also invoked.
/// If the `GDBusConnection` that is used for attempting to own the name
/// closes, then `name_lost_handler` is invoked since it is no longer
/// possible for other processes to access the process.
/// 
/// You cannot use `g_bus_own_name()` several times for the same name (unless
/// interleaved with calls to `g_bus_unown_name()`) - only the first call
/// will work.
/// 
/// Another guarantee is that invocations of `name_acquired_handler`
/// and `name_lost_handler` are guaranteed to alternate; that
/// is, if `name_acquired_handler` is invoked then you are
/// guaranteed that the next time one of the handlers is invoked, it
/// will be `name_lost_handler`. The reverse is also true.
/// 
/// If you plan on exporting objects (using e.g.
/// `g_dbus_connection_register_object()`), note that it is generally too late
/// to export the objects in `name_acquired_handler`. Instead, you can do this
/// in `bus_acquired_handler` since you are guaranteed that this will run
/// before `name` is requested from the bus.
/// 
/// This behavior makes it very simple to write applications that wants
/// to [own names](#gdbus-owning-names) and export objects.
/// Simply register objects to be exported in `bus_acquired_handler` and
/// unregister the objects (if any) in `name_lost_handler`.
@inlinable public func busOwnName(busType bus_type: GBusType, name: UnsafePointer<gchar>!, flags: BusNameOwnerFlags, busAcquiredHandler bus_acquired_handler: GBusAcquiredCallback? = nil, nameAcquiredHandler name_acquired_handler: GBusNameAcquiredCallback? = nil, nameLostHandler name_lost_handler: GBusNameLostCallback? = nil, userData user_data: gpointer! = nil, userDataFreeFunc user_data_free_func: GDestroyNotify? = nil) -> Int {
    let rv = Int(g_bus_own_name(bus_type, name, flags.value, bus_acquired_handler, name_acquired_handler, name_lost_handler, user_data, user_data_free_func))
    return rv
}




/// Like `g_bus_own_name()` but takes a `GDBusConnection` instead of a
/// `GBusType`.
@inlinable public func busOwnNameOn<DBusConnectionT: DBusConnectionProtocol>(connection: DBusConnectionT, name: UnsafePointer<gchar>!, flags: BusNameOwnerFlags, nameAcquiredHandler name_acquired_handler: GBusNameAcquiredCallback? = nil, nameLostHandler name_lost_handler: GBusNameLostCallback? = nil, userData user_data: gpointer! = nil, userDataFreeFunc user_data_free_func: GDestroyNotify? = nil) -> Int {
    let rv = Int(g_bus_own_name_on_connection(connection.dbus_connection_ptr, name, flags.value, name_acquired_handler, name_lost_handler, user_data, user_data_free_func))
    return rv
}




/// Version of `g_bus_own_name_on_connection()` using closures instead of
/// callbacks for easier binding in other languages.
@inlinable public func busOwnNameOnConnectionWithClosures<ClosureT: ClosureProtocol, DBusConnectionT: DBusConnectionProtocol>(connection: DBusConnectionT, name: UnsafePointer<gchar>!, flags: BusNameOwnerFlags, nameAcquiredClosure name_acquired_closure: ClosureT? = nil, nameLostClosure name_lost_closure: ClosureT? = nil) -> Int {
    let rv = Int(g_bus_own_name_on_connection_with_closures(connection.dbus_connection_ptr, name, flags.value, name_acquired_closure?.closure_ptr, name_lost_closure?.closure_ptr))
    return rv
}




/// Version of `g_bus_own_name()` using closures instead of callbacks for
/// easier binding in other languages.
@inlinable public func busOwnNameWithClosures<ClosureT: ClosureProtocol>(busType bus_type: GBusType, name: UnsafePointer<gchar>!, flags: BusNameOwnerFlags, busAcquiredClosure bus_acquired_closure: ClosureT? = nil, nameAcquiredClosure name_acquired_closure: ClosureT? = nil, nameLostClosure name_lost_closure: ClosureT? = nil) -> Int {
    let rv = Int(g_bus_own_name_with_closures(bus_type, name, flags.value, bus_acquired_closure?.closure_ptr, name_acquired_closure?.closure_ptr, name_lost_closure?.closure_ptr))
    return rv
}




/// Stops owning a name.
/// 
/// Note that there may still be D-Bus traffic to process (relating to owning
/// and unowning the name) in the current thread-default `GMainContext` after
/// this function has returned. You should continue to iterate the `GMainContext`
/// until the `GDestroyNotify` function passed to `g_bus_own_name()` is called, in
/// order to avoid memory leaks through callbacks queued on the `GMainContext`
/// after it’s stopped being iterated.
@inlinable public func busUnownName(ownerID owner_id: Int) {
    g_bus_unown_name(guint(owner_id))

}




/// Stops watching a name.
/// 
/// Note that there may still be D-Bus traffic to process (relating to watching
/// and unwatching the name) in the current thread-default `GMainContext` after
/// this function has returned. You should continue to iterate the `GMainContext`
/// until the `GDestroyNotify` function passed to `g_bus_watch_name()` is called, in
/// order to avoid memory leaks through callbacks queued on the `GMainContext`
/// after it’s stopped being iterated.
@inlinable public func busUnwatchName(watcherID watcher_id: Int) {
    g_bus_unwatch_name(guint(watcher_id))

}




/// Starts watching `name` on the bus specified by `bus_type` and calls
/// `name_appeared_handler` and `name_vanished_handler` when the name is
/// known to have an owner respectively known to lose its
/// owner. Callbacks will be invoked in the
/// [thread-default main context](#g-main-context-push-thread-default)
/// of the thread you are calling this function from.
/// 
/// You are guaranteed that one of the handlers will be invoked after
/// calling this function. When you are done watching the name, just
/// call `g_bus_unwatch_name()` with the watcher id this function
/// returns.
/// 
/// If the name vanishes or appears (for example the application owning
/// the name could restart), the handlers are also invoked. If the
/// `GDBusConnection` that is used for watching the name disconnects, then
/// `name_vanished_handler` is invoked since it is no longer
/// possible to access the name.
/// 
/// Another guarantee is that invocations of `name_appeared_handler`
/// and `name_vanished_handler` are guaranteed to alternate; that
/// is, if `name_appeared_handler` is invoked then you are
/// guaranteed that the next time one of the handlers is invoked, it
/// will be `name_vanished_handler`. The reverse is also true.
/// 
/// This behavior makes it very simple to write applications that want
/// to take action when a certain [name exists](#gdbus-watching-names).
/// Basically, the application should create object proxies in
/// `name_appeared_handler` and destroy them again (if any) in
/// `name_vanished_handler`.
@inlinable public func busWatchName(busType bus_type: GBusType, name: UnsafePointer<gchar>!, flags: BusNameWatcherFlags, nameAppearedHandler name_appeared_handler: GBusNameAppearedCallback? = nil, nameVanishedHandler name_vanished_handler: GBusNameVanishedCallback? = nil, userData user_data: gpointer! = nil, userDataFreeFunc user_data_free_func: GDestroyNotify? = nil) -> Int {
    let rv = Int(g_bus_watch_name(bus_type, name, flags.value, name_appeared_handler, name_vanished_handler, user_data, user_data_free_func))
    return rv
}




/// Like `g_bus_watch_name()` but takes a `GDBusConnection` instead of a
/// `GBusType`.
@inlinable public func busWatchNameOn<DBusConnectionT: DBusConnectionProtocol>(connection: DBusConnectionT, name: UnsafePointer<gchar>!, flags: BusNameWatcherFlags, nameAppearedHandler name_appeared_handler: GBusNameAppearedCallback? = nil, nameVanishedHandler name_vanished_handler: GBusNameVanishedCallback? = nil, userData user_data: gpointer! = nil, userDataFreeFunc user_data_free_func: GDestroyNotify? = nil) -> Int {
    let rv = Int(g_bus_watch_name_on_connection(connection.dbus_connection_ptr, name, flags.value, name_appeared_handler, name_vanished_handler, user_data, user_data_free_func))
    return rv
}




/// Version of `g_bus_watch_name_on_connection()` using closures instead of callbacks for
/// easier binding in other languages.
@inlinable public func busWatchNameOnConnectionWithClosures<ClosureT: ClosureProtocol, DBusConnectionT: DBusConnectionProtocol>(connection: DBusConnectionT, name: UnsafePointer<gchar>!, flags: BusNameWatcherFlags, nameAppearedClosure name_appeared_closure: ClosureT? = nil, nameVanishedClosure name_vanished_closure: ClosureT? = nil) -> Int {
    let rv = Int(g_bus_watch_name_on_connection_with_closures(connection.dbus_connection_ptr, name, flags.value, name_appeared_closure?.closure_ptr, name_vanished_closure?.closure_ptr))
    return rv
}




/// Version of `g_bus_watch_name()` using closures instead of callbacks for
/// easier binding in other languages.
@inlinable public func busWatchNameWithClosures<ClosureT: ClosureProtocol>(busType bus_type: GBusType, name: UnsafePointer<gchar>!, flags: BusNameWatcherFlags, nameAppearedClosure name_appeared_closure: ClosureT? = nil, nameVanishedClosure name_vanished_closure: ClosureT? = nil) -> Int {
    let rv = Int(g_bus_watch_name_with_closures(bus_type, name, flags.value, name_appeared_closure?.closure_ptr, name_vanished_closure?.closure_ptr))
    return rv
}




/// Checks if a content type can be executable. Note that for instance
/// things like text files can be executables (i.e. scripts and batch files).
@inlinable public func contentTypeCanBeExecutable(type: UnsafePointer<gchar>!) -> Bool {
    let rv = ((g_content_type_can_be_executable(type)) != 0)
    return rv
}




/// Compares two content types for equality.
@inlinable public func contentTypeEquals(type1: UnsafePointer<gchar>!, type2: UnsafePointer<gchar>!) -> Bool {
    let rv = ((g_content_type_equals(type1, type2)) != 0)
    return rv
}




/// Tries to find a content type based on the mime type name.
@inlinable public func contentTypeFrom(mimeType mime_type: UnsafePointer<gchar>!) -> String! {
    guard let rv = g_content_type_from_mime_type(mime_type).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Gets the human readable description of the content type.
@inlinable public func contentTypeGetDescription(type: UnsafePointer<gchar>!) -> String! {
    guard let rv = g_content_type_get_description(type).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Gets the generic icon name for a content type.
/// 
/// See the
/// [shared-mime-info](http://www.freedesktop.org/wiki/Specifications/shared-mime-info-spec)
/// specification for more on the generic icon name.
@inlinable public func contentTypeGetGenericIconName(type: UnsafePointer<gchar>!) -> String! {
    guard let rv = g_content_type_get_generic_icon_name(type).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Gets the icon for a content type.
@inlinable public func contentTypeGetIcon(type: UnsafePointer<gchar>!) -> IconRef! {
    guard let rv = IconRef(gconstpointer: gconstpointer(g_content_type_get_icon(type))) else { return nil }
    return rv
}





// *** contentTypeGetMimeDirs() causes a syntax error and is therefore not available!





/// Gets the mime type for the content type, if one is registered.
@inlinable public func contentTypeGetMime(type: UnsafePointer<gchar>!) -> String! {
    guard let rv = g_content_type_get_mime_type(type).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Gets the symbolic icon for a content type.
@inlinable public func contentTypeGetSymbolicIcon(type: UnsafePointer<gchar>!) -> IconRef! {
    guard let rv = IconRef(gconstpointer: gconstpointer(g_content_type_get_symbolic_icon(type))) else { return nil }
    return rv
}




/// Guesses the content type based on example data. If the function is
/// uncertain, `result_uncertain` will be set to `true`. Either `filename`
/// or `data` may be `nil`, in which case the guess will be based solely
/// on the other argument.
@inlinable public func contentTypeGuess(filename: UnsafePointer<gchar>? = nil, data: UnsafePointer<guchar>! = nil, dataSize data_size: Int, resultUncertain result_uncertain: UnsafeMutablePointer<gboolean>! = nil) -> String! {
    guard let rv = g_content_type_guess(filename, data, gsize(data_size), result_uncertain).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Tries to guess the type of the tree with root `root`, by
/// looking at the files it contains. The result is an array
/// of content types, with the best guess coming first.
/// 
/// The types returned all have the form x-content/foo, e.g.
/// x-content/audio-cdda (for audio CDs) or x-content/image-dcf
/// (for a camera memory card). See the
/// [shared-mime-info](http://www.freedesktop.org/wiki/Specifications/shared-mime-info-spec)
/// specification for more on x-content types.
/// 
/// This function is useful in the implementation of
/// `g_mount_guess_content_type()`.
@inlinable public func contentTypeGuessForTree<FileT: FileProtocol>(root: FileT) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
    guard let rv = g_content_type_guess_for_tree(root.file_ptr) else { return nil }
    return rv
}




/// Determines if `type` is a subset of `supertype`.
@inlinable public func contentTypeIsA(type: UnsafePointer<gchar>!, supertype: UnsafePointer<gchar>!) -> Bool {
    let rv = ((g_content_type_is_a(type, supertype)) != 0)
    return rv
}




/// Determines if `type` is a subset of `mime_type`.
/// Convenience wrapper around `g_content_type_is_a()`.
@inlinable public func contentTypeIsMime(type: UnsafePointer<gchar>!, mimeType mime_type: UnsafePointer<gchar>!) -> Bool {
    let rv = ((g_content_type_is_mime_type(type, mime_type)) != 0)
    return rv
}




/// Checks if the content type is the generic "unknown" type.
/// On UNIX this is the "application/octet-stream" mimetype,
/// while on win32 it is "*" and on OSX it is a dynamic type
/// or octet-stream.
@inlinable public func contentTypeIsUnknown(type: UnsafePointer<gchar>!) -> Bool {
    let rv = ((g_content_type_is_unknown(type)) != 0)
    return rv
}





// *** contentTypeSetMimeDirs() causes a syntax error and is therefore not available!





/// Gets a list of strings containing all the registered content types
/// known to the system. The list and its data should be freed using
/// `g_list_free_full (list, g_free)`.
@inlinable public func contentTypesGetRegistered() -> ListRef! {
    guard let rv = ListRef(gconstpointer: gconstpointer(g_content_types_get_registered())) else { return nil }
    return rv
}




/// Escape `string` so it can appear in a D-Bus address as the value
/// part of a key-value pair.
/// 
/// For instance, if `string` is `/run/bus-for-:0`,
/// this function would return `/run/bus-for-`3A0``,
/// which could be used in a D-Bus address like
/// `unix:nonce-tcp:host=127.0.0.1,port=42,noncefile=/run/bus-for-`3A0``.
@inlinable public func dbusAddressEscapeValue(string: UnsafePointer<gchar>!) -> String! {
    guard let rv = g_dbus_address_escape_value(string).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Synchronously looks up the D-Bus address for the well-known message
/// bus instance specified by `bus_type`. This may involve using various
/// platform specific mechanisms.
/// 
/// The returned address will be in the
/// [D-Bus address format](https://dbus.freedesktop.org/doc/dbus-specification.html`addresses`).
@inlinable public func dbusAddressGetForBusSync<CancellableT: CancellableProtocol>(busType bus_type: GBusType, cancellable: CancellableT? = nil) throws -> String! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = g_dbus_address_get_for_bus_sync(bus_type, cancellable?.cancellable_ptr, &error).map({ String(cString: $0) })
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Asynchronously connects to an endpoint specified by `address` and
/// sets up the connection so it is in a state to run the client-side
/// of the D-Bus authentication conversation. `address` must be in the
/// [D-Bus address format](https://dbus.freedesktop.org/doc/dbus-specification.html`addresses`).
/// 
/// When the operation is finished, `callback` will be invoked. You can
/// then call `g_dbus_address_get_stream_finish()` to get the result of
/// the operation.
/// 
/// This is an asynchronous failable function. See
/// `g_dbus_address_get_stream_sync()` for the synchronous version.
@inlinable public func dbusAddressGetStream<CancellableT: CancellableProtocol>(address: UnsafePointer<gchar>!, cancellable: CancellableT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil) {
    g_dbus_address_get_stream(address, cancellable?.cancellable_ptr, callback, user_data)

}




/// Finishes an operation started with `g_dbus_address_get_stream()`.
@inlinable public func dbusAddressGetStreamFinish<AsyncResultT: AsyncResultProtocol>(res: AsyncResultT, outGuid out_guid: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! = nil) throws -> IOStreamRef! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = IOStreamRef(gconstpointer: gconstpointer(g_dbus_address_get_stream_finish(res.async_result_ptr, out_guid, &error)))
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Synchronously connects to an endpoint specified by `address` and
/// sets up the connection so it is in a state to run the client-side
/// of the D-Bus authentication conversation. `address` must be in the
/// [D-Bus address format](https://dbus.freedesktop.org/doc/dbus-specification.html`addresses`).
/// 
/// This is a synchronous failable function. See
/// `g_dbus_address_get_stream()` for the asynchronous version.
@inlinable public func dbusAddressGetStreamSync<CancellableT: CancellableProtocol>(address: UnsafePointer<gchar>!, outGuid out_guid: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! = nil, cancellable: CancellableT? = nil) throws -> IOStreamRef! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = IOStreamRef(gconstpointer: gconstpointer(g_dbus_address_get_stream_sync(address, out_guid, cancellable?.cancellable_ptr, &error)))
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Looks up the value of an annotation.
/// 
/// The cost of this function is `O(n)` in number of annotations.
@inlinable public func dbusAnnotationInfoLookup(annotations: UnsafeMutablePointer<UnsafeMutablePointer<GDBusAnnotationInfo>?>! = nil, name: UnsafePointer<gchar>!) -> String! {
    guard let rv = g_dbus_annotation_info_lookup(annotations, name).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Creates a D-Bus error name to use for `error`. If `error` matches
/// a registered error (cf. `g_dbus_error_register_error()`), the corresponding
/// D-Bus error name will be returned.
/// 
/// Otherwise the a name of the form
/// `org.gtk.GDBus.UnmappedGError.Quark._ESCAPED_QUARK_NAME.Code_ERROR_CODE`
/// will be used. This allows other GDBus applications to map the error
/// on the wire back to a `GError` using `g_dbus_error_new_for_dbus_error()`.
/// 
/// This function is typically only used in object mappings to put a
/// `GError` on the wire. Regular applications should not use it.
@inlinable public func dbusErrorEncodeGerror<GLibErrorT: ErrorProtocol>(error: GLibErrorT) -> String! {
    guard let rv = g_dbus_error_encode_gerror(error.error_ptr).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Gets the D-Bus error name used for `error`, if any.
/// 
/// This function is guaranteed to return a D-Bus error name for all
/// `GErrors` returned from functions handling remote method calls
/// (e.g. `g_dbus_connection_call_finish()`) unless
/// `g_dbus_error_strip_remote_error()` has been used on `error`.
@inlinable public func dbusErrorGetRemote<GLibErrorT: ErrorProtocol>(error: GLibErrorT) -> String! {
    guard let rv = g_dbus_error_get_remote_error(error.error_ptr).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Checks if `error` represents an error received via D-Bus from a remote peer. If so,
/// use `g_dbus_error_get_remote_error()` to get the name of the error.
@inlinable public func dbusErrorIsRemote<GLibErrorT: ErrorProtocol>(error: GLibErrorT) -> Bool {
    let rv = ((g_dbus_error_is_remote_error(error.error_ptr)) != 0)
    return rv
}




/// Creates a `GError` based on the contents of `dbus_error_name` and
/// `dbus_error_message`.
/// 
/// Errors registered with `g_dbus_error_register_error()` will be looked
/// up using `dbus_error_name` and if a match is found, the error domain
/// and code is used. Applications can use `g_dbus_error_get_remote_error()`
/// to recover `dbus_error_name`.
/// 
/// If a match against a registered error is not found and the D-Bus
/// error name is in a form as returned by `g_dbus_error_encode_gerror()`
/// the error domain and code encoded in the name is used to
/// create the `GError`. Also, `dbus_error_name` is added to the error message
/// such that it can be recovered with `g_dbus_error_get_remote_error()`.
/// 
/// Otherwise, a `GError` with the error code `G_IO_ERROR_DBUS_ERROR`
/// in the `G_IO_ERROR` error domain is returned. Also, `dbus_error_name` is
/// added to the error message such that it can be recovered with
/// `g_dbus_error_get_remote_error()`.
/// 
/// In all three cases, `dbus_error_name` can always be recovered from the
/// returned `GError` using the `g_dbus_error_get_remote_error()` function
/// (unless `g_dbus_error_strip_remote_error()` hasn't been used on the returned error).
/// 
/// This function is typically only used in object mappings to prepare
/// `GError` instances for applications. Regular applications should not use
/// it.
@inlinable public func dbusErrorNewForDbusError(dbusErrorName dbus_error_name: UnsafePointer<gchar>!, dbusErrorMessage dbus_error_message: UnsafePointer<gchar>!) -> ErrorRef! {
    guard let rv = ErrorRef(gconstpointer: gconstpointer(g_dbus_error_new_for_dbus_error(dbus_error_name, dbus_error_message))) else { return nil }
    return rv
}




@inlinable public func dbusErrorQuark() -> GQuark {
    let rv = g_dbus_error_quark()
    return rv
}




/// Creates an association to map between `dbus_error_name` and
/// `GErrors` specified by `error_domain` and `error_code`.
/// 
/// This is typically done in the routine that returns the `GQuark` for
/// an error domain.
@inlinable public func dbusErrorRegisterError(errorDomain error_domain: GQuark, errorCode error_code: Int, dbusErrorName dbus_error_name: UnsafePointer<gchar>!) -> Bool {
    let rv = ((g_dbus_error_register_error(error_domain, gint(error_code), dbus_error_name)) != 0)
    return rv
}




/// Helper function for associating a `GError` error domain with D-Bus error names.
@inlinable public func dbusErrorRegisterErrorDomain(errorDomainQuarkName error_domain_quark_name: UnsafePointer<gchar>!, quarkVolatile quark_volatile: UnsafeMutablePointer<gsize>!, entries: UnsafePointer<GDBusErrorEntry>!, numEntries num_entries: Int) {
    g_dbus_error_register_error_domain(error_domain_quark_name, quark_volatile, entries, guint(num_entries))

}




/// Looks for extra information in the error message used to recover
/// the D-Bus error name and strips it if found. If stripped, the
/// message field in `error` will correspond exactly to what was
/// received on the wire.
/// 
/// This is typically used when presenting errors to the end user.
@inlinable public func dbusErrorStripRemote<GLibErrorT: ErrorProtocol>(error: GLibErrorT) -> Bool {
    let rv = ((g_dbus_error_strip_remote_error(error.error_ptr)) != 0)
    return rv
}




/// Destroys an association previously set up with `g_dbus_error_register_error()`.
@inlinable public func dbusErrorUnregisterError(errorDomain error_domain: GQuark, errorCode error_code: Int, dbusErrorName dbus_error_name: UnsafePointer<gchar>!) -> Bool {
    let rv = ((g_dbus_error_unregister_error(error_domain, gint(error_code), dbus_error_name)) != 0)
    return rv
}




/// Generate a D-Bus GUID that can be used with
/// e.g. `g_dbus_connection_new()`.
/// 
/// See the D-Bus specification regarding what strings are valid D-Bus
/// GUID (for example, D-Bus GUIDs are not RFC-4122 compliant).
@inlinable public func dbusGenerateGuid() -> String! {
    guard let rv = g_dbus_generate_guid().map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Converts a `GValue` to a `GVariant` of the type indicated by the `type`
/// parameter.
/// 
/// The conversion is using the following rules:
/// 
/// - `G_TYPE_STRING:` 's', 'o', 'g' or 'ay'
/// - `G_TYPE_STRV:` 'as', 'ao' or 'aay'
/// - `G_TYPE_BOOLEAN:` 'b'
/// - `G_TYPE_UCHAR:` 'y'
/// - `G_TYPE_INT:` 'i', 'n'
/// - `G_TYPE_UINT:` 'u', 'q'
/// - `G_TYPE_INT64` 'x'
/// - `G_TYPE_UINT64:` 't'
/// - `G_TYPE_DOUBLE:` 'd'
/// - `G_TYPE_VARIANT:` Any `GVariantType`
/// 
/// This can fail if e.g. `gvalue` is of type `G_TYPE_STRING` and `type`
/// is ['i'](#G-VARIANT-TYPE-INT32:CAPS). It will also fail for any `GType`
/// (including e.g. `G_TYPE_OBJECT` and `G_TYPE_BOXED` derived-types) not
/// in the table above.
/// 
/// Note that if `gvalue` is of type `G_TYPE_VARIANT` and its value is
/// `nil`, the empty `GVariant` instance (never `nil`) for `type` is
/// returned (e.g. 0 for scalar types, the empty string for string types,
/// '/' for object path types, the empty array for any array type and so on).
/// 
/// See the `g_dbus_gvariant_to_gvalue()` function for how to convert a
/// `GVariant` to a `GValue`.
@inlinable public func dbusGvalueToGvariant<ValueT: ValueProtocol, VariantTypeT: VariantTypeProtocol>(gvalue: ValueT, type: VariantTypeT) -> VariantRef! {
    guard let rv = VariantRef(gconstpointer: gconstpointer(g_dbus_gvalue_to_gvariant(gvalue.value_ptr, type.variant_type_ptr))) else { return nil }
    return rv
}




/// Converts a `GVariant` to a `GValue`. If `value` is floating, it is consumed.
/// 
/// The rules specified in the `g_dbus_gvalue_to_gvariant()` function are
/// used - this function is essentially its reverse form. So, a `GVariant`
/// containing any basic or string array type will be converted to a `GValue`
/// containing a basic value or string array. Any other `GVariant` (handle,
/// variant, tuple, dict entry) will be converted to a `GValue` containing that
/// `GVariant`.
/// 
/// The conversion never fails - a valid `GValue` is always returned in
/// `out_gvalue`.
@inlinable public func dbusGvariantToGvalue<ValueT: ValueProtocol, VariantT: VariantProtocol>(value: VariantT, outGvalue out_gvalue: ValueT) {
    g_dbus_gvariant_to_gvalue(value.variant_ptr, out_gvalue.value_ptr)

}




/// Checks if `string` is a
/// [D-Bus address](https://dbus.freedesktop.org/doc/dbus-specification.html`addresses`).
/// 
/// This doesn't check if `string` is actually supported by `GDBusServer`
/// or `GDBusConnection` - use `g_dbus_is_supported_address()` to do more
/// checks.
@inlinable public func dbusIsAddress(string: UnsafePointer<gchar>!) -> Bool {
    let rv = ((g_dbus_is_address(string)) != 0)
    return rv
}




/// Checks if `string` is a D-Bus GUID.
/// 
/// See the D-Bus specification regarding what strings are valid D-Bus
/// GUID (for example, D-Bus GUIDs are not RFC-4122 compliant).
@inlinable public func dbusIsGuid(string: UnsafePointer<gchar>!) -> Bool {
    let rv = ((g_dbus_is_guid(string)) != 0)
    return rv
}




/// Checks if `string` is a valid D-Bus interface name.
@inlinable public func dbusIsInterfaceName(string: UnsafePointer<gchar>!) -> Bool {
    let rv = ((g_dbus_is_interface_name(string)) != 0)
    return rv
}




/// Checks if `string` is a valid D-Bus member (e.g. signal or method) name.
@inlinable public func dbusIsMemberName(string: UnsafePointer<gchar>!) -> Bool {
    let rv = ((g_dbus_is_member_name(string)) != 0)
    return rv
}




/// Checks if `string` is a valid D-Bus bus name (either unique or well-known).
@inlinable public func dbusIsName(string: UnsafePointer<gchar>!) -> Bool {
    let rv = ((g_dbus_is_name(string)) != 0)
    return rv
}




/// Like `g_dbus_is_address()` but also checks if the library supports the
/// transports in `string` and that key/value pairs for each transport
/// are valid. See the specification of the
/// [D-Bus address format](https://dbus.freedesktop.org/doc/dbus-specification.html`addresses`).
@inlinable public func dbusIsSupportedAddress(string: UnsafePointer<gchar>!) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((g_dbus_is_supported_address(string, &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}




/// Checks if `string` is a valid D-Bus unique bus name.
@inlinable public func dbusIsUniqueName(string: UnsafePointer<gchar>!) -> Bool {
    let rv = ((g_dbus_is_unique_name(string)) != 0)
    return rv
}




/// Creates a new `GDtlsClientConnection` wrapping `base_socket` which is
/// assumed to communicate with the server identified by `server_identity`.
@inlinable public func dtlsClientConnectionNew<DatagramBasedT: DatagramBasedProtocol, SocketConnectableT: SocketConnectableProtocol>(baseSocket base_socket: DatagramBasedT, serverIdentity server_identity: SocketConnectableT? = nil) throws -> DtlsClientConnectionRef! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = DtlsClientConnectionRef(gconstpointer: gconstpointer(g_dtls_client_connection_new(base_socket.datagram_based_ptr, server_identity?.socket_connectable_ptr, &error)))
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Creates a new `GDtlsServerConnection` wrapping `base_socket`.
@inlinable public func dtlsServerConnectionNew<DatagramBasedT: DatagramBasedProtocol, TLSCertificateT: TLSCertificateProtocol>(baseSocket base_socket: DatagramBasedT, certificate: TLSCertificateT? = nil) throws -> DtlsServerConnectionRef! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = DtlsServerConnectionRef(gconstpointer: gconstpointer(g_dtls_server_connection_new(base_socket.datagram_based_ptr, certificate?.tls_certificate_ptr, &error)))
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Creates a `GFile` with the given argument from the command line.
/// The value of `arg` can be either a URI, an absolute path or a
/// relative path resolved relative to the current working directory.
/// This operation never fails, but the returned object might not
/// support any I/O operation if `arg` points to a malformed path.
/// 
/// Note that on Windows, this function expects its argument to be in
/// UTF-8 -- not the system code page.  This means that you
/// should not use this function with string from argv as it is passed
/// to `main()`.  `g_win32_get_command_line()` will return a UTF-8 version of
/// the commandline.  `GApplication` also uses UTF-8 but
/// `g_application_command_line_create_file_for_arg()` may be more useful
/// for you there.  It is also always possible to use this function with
/// `GOptionContext` arguments of type `G_OPTION_ARG_FILENAME`.
@inlinable public func fileNewForCommandline(arg: UnsafePointer<CChar>!) -> FileRef! {
    guard let rv = FileRef(gconstpointer: gconstpointer(g_file_new_for_commandline_arg(arg))) else { return nil }
    return rv
}




/// Creates a `GFile` with the given argument from the command line.
/// 
/// This function is similar to `g_file_new_for_commandline_arg()` except
/// that it allows for passing the current working directory as an
/// argument instead of using the current working directory of the
/// process.
/// 
/// This is useful if the commandline argument was given in a context
/// other than the invocation of the current process.
/// 
/// See also `g_application_command_line_create_file_for_arg()`.
@inlinable public func fileNewForCommandlineArgAndCwd(arg: UnsafePointer<gchar>!, cwd: UnsafePointer<gchar>!) -> FileRef! {
    guard let rv = FileRef(gconstpointer: gconstpointer(g_file_new_for_commandline_arg_and_cwd(arg, cwd))) else { return nil }
    return rv
}




/// Constructs a `GFile` for a given path. This operation never
/// fails, but the returned object might not support any I/O
/// operation if `path` is malformed.
@inlinable public func fileNewFor(path: UnsafePointer<CChar>!) -> FileRef! {
    guard let rv = FileRef(gconstpointer: gconstpointer(g_file_new_for_path(path))) else { return nil }
    return rv
}




/// Constructs a `GFile` for a given URI. This operation never
/// fails, but the returned object might not support any I/O
/// operation if `uri` is malformed or if the uri type is
/// not supported.
@inlinable public func fileNewFor(uri: UnsafePointer<CChar>!) -> FileRef! {
    guard let rv = FileRef(gconstpointer: gconstpointer(g_file_new_for_uri(uri))) else { return nil }
    return rv
}




/// Opens a file in the preferred directory for temporary files (as
/// returned by `g_get_tmp_dir()`) and returns a `GFile` and
/// `GFileIOStream` pointing to it.
/// 
/// `tmpl` should be a string in the GLib file name encoding
/// containing a sequence of six 'X' characters, and containing no
/// directory components. If it is `nil`, a default template is used.
/// 
/// Unlike the other `GFile` constructors, this will return `nil` if
/// a temporary file could not be created.
@inlinable public func fileNewTmp(tmpl: UnsafePointer<CChar>? = nil, iostream: UnsafeMutablePointer<UnsafeMutablePointer<GFileIOStream>?>!) throws -> FileRef! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = FileRef(gconstpointer: gconstpointer(g_file_new_tmp(tmpl, iostream, &error)))
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Constructs a `GFile` with the given `parse_name` (i.e. something
/// given by `g_file_get_parse_name()`). This operation never fails,
/// but the returned object might not support any I/O operation if
/// the `parse_name` cannot be parsed.
@inlinable public func file(parseName parse_name: UnsafePointer<CChar>!) -> FileRef! {
    guard let rv = FileRef(gconstpointer: gconstpointer(g_file_parse_name(parse_name))) else { return nil }
    return rv
}




/// Deserializes a `GIcon` previously serialized using `g_icon_serialize()`.
@inlinable public func iconDeserialize<VariantT: VariantProtocol>(value: VariantT) -> IconRef! {
    guard let rv = IconRef(gconstpointer: gconstpointer(g_icon_deserialize(value.variant_ptr))) else { return nil }
    return rv
}




/// Gets a hash for an icon.
@inlinable public func iconHash(icon: gconstpointer) -> Int {
    let rv = Int(g_icon_hash(icon))
    return rv
}




/// Generate a `GIcon` instance from `str`. This function can fail if
/// `str` is not valid - see `g_icon_to_string()` for discussion.
/// 
/// If your application or library provides one or more `GIcon`
/// implementations you need to ensure that each `GType` is registered
/// with the type system prior to calling `g_icon_new_for_string()`.
@inlinable public func iconNewForString(str: UnsafePointer<gchar>!) throws -> IconRef! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = IconRef(gconstpointer: gconstpointer(g_icon_new_for_string(str, &error)))
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Helper function for constructing `GInitable` object. This is
/// similar to `g_object_newv()` but also initializes the object
/// and returns `nil`, setting an error on failure.
///
/// **initable_newv is deprecated:**
/// Use g_object_new_with_properties() and
/// g_initable_init() instead. See #GParameter for more information.
@available(*, deprecated) @inlinable public func initableNewv<CancellableT: CancellableProtocol>(objectType object_type: GType, nParameters n_parameters: Int, parameters: UnsafeMutablePointer<GParameter>!, cancellable: CancellableT? = nil) throws -> ObjectRef! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = ObjectRef(gpointer: g_initable_newv(object_type, guint(n_parameters), parameters, cancellable?.cancellable_ptr, &error))
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Converts errno.h error codes into GIO error codes. The fallback
/// value `G_IO_ERROR_FAILED` is returned for error codes not currently
/// handled (but note that future GLib releases may return a more
/// specific value instead).
/// 
/// As `errno` is global and may be modified by intermediate function
/// calls, you should save its value as soon as the call which sets it
@inlinable public func ioErrorFromErrno(errNo err_no: Int) -> GIOErrorEnum {
    let rv = g_io_error_from_errno(gint(err_no))
    return rv
}




/// Gets the GIO Error Quark.
@inlinable public func ioErrorQuark() -> GQuark {
    let rv = g_io_error_quark()
    return rv
}




/// Registers `type` as extension for the extension point with name
/// `extension_point_name`.
/// 
/// If `type` has already been registered as an extension for this
/// extension point, the existing `GIOExtension` object is returned.
@inlinable public func ioExtensionPointImplement(extensionPointName extension_point_name: UnsafePointer<CChar>!, type: GType, extensionName extension_name: UnsafePointer<CChar>!, priority: Int) -> IOExtensionRef! {
    guard let rv = IOExtensionRef(gconstpointer: gconstpointer(g_io_extension_point_implement(extension_point_name, type, extension_name, gint(priority)))) else { return nil }
    return rv
}




/// Looks up an existing extension point.
@inlinable public func ioExtensionPointLookup(name: UnsafePointer<CChar>!) -> IOExtensionPointRef! {
    guard let rv = IOExtensionPointRef(gconstpointer: gconstpointer(g_io_extension_point_lookup(name))) else { return nil }
    return rv
}




/// Registers an extension point.
@inlinable public func ioExtensionPointRegister(name: UnsafePointer<CChar>!) -> IOExtensionPointRef! {
    guard let rv = IOExtensionPointRef(gconstpointer: gconstpointer(g_io_extension_point_register(name))) else { return nil }
    return rv
}




/// Loads all the modules in the specified directory.
/// 
/// If don't require all modules to be initialized (and thus registering
/// all gtypes) then you can use `g_io_modules_scan_all_in_directory()`
/// which allows delayed/lazy loading of modules.
@inlinable public func ioModulesLoadAllInDirectory(dirname: UnsafePointer<gchar>!) -> ListRef! {
    guard let rv = ListRef(gconstpointer: gconstpointer(g_io_modules_load_all_in_directory(dirname))) else { return nil }
    return rv
}




/// Loads all the modules in the specified directory.
/// 
/// If don't require all modules to be initialized (and thus registering
/// all gtypes) then you can use `g_io_modules_scan_all_in_directory()`
/// which allows delayed/lazy loading of modules.
@inlinable public func ioModulesLoadAllInDirectoryWithScope<IOModuleScopeT: IOModuleScopeProtocol>(dirname: UnsafePointer<gchar>!, scope: IOModuleScopeT) -> ListRef! {
    guard let rv = ListRef(gconstpointer: gconstpointer(g_io_modules_load_all_in_directory_with_scope(dirname, scope._ptr))) else { return nil }
    return rv
}




/// Scans all the modules in the specified directory, ensuring that
/// any extension point implemented by a module is registered.
/// 
/// This may not actually load and initialize all the types in each
/// module, some modules may be lazily loaded and initialized when
/// an extension point it implementes is used with e.g.
/// `g_io_extension_point_get_extensions()` or
/// `g_io_extension_point_get_extension_by_name()`.
/// 
/// If you need to guarantee that all types are loaded in all the modules,
/// use `g_io_modules_load_all_in_directory()`.
@inlinable public func ioModulesScanAllInDirectory(dirname: UnsafePointer<CChar>!) {
    g_io_modules_scan_all_in_directory(dirname)

}




/// Scans all the modules in the specified directory, ensuring that
/// any extension point implemented by a module is registered.
/// 
/// This may not actually load and initialize all the types in each
/// module, some modules may be lazily loaded and initialized when
/// an extension point it implementes is used with e.g.
/// `g_io_extension_point_get_extensions()` or
/// `g_io_extension_point_get_extension_by_name()`.
/// 
/// If you need to guarantee that all types are loaded in all the modules,
/// use `g_io_modules_load_all_in_directory()`.
@inlinable public func ioModulesScanAllInDirectoryWithScope<IOModuleScopeT: IOModuleScopeProtocol>(dirname: UnsafePointer<gchar>!, scope: IOModuleScopeT) {
    g_io_modules_scan_all_in_directory_with_scope(dirname, scope._ptr)

}




/// Cancels all cancellable I/O jobs.
/// 
/// A job is cancellable if a `GCancellable` was passed into
/// `g_io_scheduler_push_job()`.
///
/// **io_scheduler_cancel_all_jobs is deprecated:**
/// You should never call this function, since you don't
/// know how other libraries in your program might be making use of
/// gioscheduler.
@available(*, deprecated) @inlinable public func ioSchedulerCancelAllJobs() {
    g_io_scheduler_cancel_all_jobs()

}




/// Schedules the I/O job to run in another thread.
/// 
/// `notify` will be called on `user_data` after `job_func` has returned,
/// regardless whether the job was cancelled or has run to completion.
/// 
/// If `cancellable` is not `nil`, it can be used to cancel the I/O job
/// by calling `g_cancellable_cancel()` or by calling
/// `g_io_scheduler_cancel_all_jobs()`.
///
/// **io_scheduler_push_job is deprecated:**
/// use #GThreadPool or g_task_run_in_thread()
@available(*, deprecated) @inlinable public func ioSchedulerPushJob<CancellableT: CancellableProtocol>(jobFunc job_func: GIOSchedulerJobFunc?, userData user_data: gpointer! = nil, notify: GDestroyNotify? = nil, ioPriority io_priority: Int, cancellable: CancellableT? = nil) {
    g_io_scheduler_push_job(job_func, user_data, notify, gint(io_priority), cancellable?.cancellable_ptr)

}




/// Creates a keyfile-backed `GSettingsBackend`.
/// 
/// The filename of the keyfile to use is given by `filename`.
/// 
/// All settings read to or written from the backend must fall under the
/// path given in `root_path` (which must start and end with a slash and
/// not contain two consecutive slashes).  `root_path` may be "/".
/// 
/// If `root_group` is non-`nil` then it specifies the name of the keyfile
/// group used for keys that are written directly below `root_path`.  For
/// example, if `root_path` is "/apps/example/" and `root_group` is
/// "toplevel", then settings the key "/apps/example/enabled" to a value
/// of `true` will cause the following to appear in the keyfile:
/// 
/// ```
///   [toplevel]
///   enabled=true
/// ```
/// 
/// If `root_group` is `nil` then it is not permitted to store keys
/// directly below the `root_path`.
/// 
/// For keys not stored directly below `root_path` (ie: in a sub-path),
/// the name of the subpath (with the final slash stripped) is used as
/// the name of the keyfile group.  To continue the example, if
/// "/apps/example/profiles/default/font-size" were set to
/// 12 then the following would appear in the keyfile:
/// 
/// ```
///   [profiles/default]
///   font-size=12
/// ```
/// 
/// The backend will refuse writes (and return writability as being
/// `false`) for keys outside of `root_path` and, in the event that
/// `root_group` is `nil`, also for keys directly under `root_path`.
/// Writes will also be refused if the backend detects that it has the
/// inability to rewrite the keyfile (ie: the containing directory is not
/// writable).
/// 
/// There is no checking done for your key namespace clashing with the
/// syntax of the key file format.  For example, if you have '[' or ']'
/// characters in your path names or '=' in your key names you may be in
/// trouble.
/// 
/// The backend reads default values from a keyfile called `defaults` in
/// the directory specified by the `GKeyfileSettingsBackend:defaults`-dir property,
/// and a list of locked keys from a text file with the name `locks` in
/// the same location.
@inlinable public func keyfileSettingsBackendNew(filename: UnsafePointer<gchar>!, rootPath root_path: UnsafePointer<gchar>!, rootGroup root_group: UnsafePointer<gchar>? = nil) -> SettingsBackendRef! {
    guard let rv = SettingsBackendRef(gconstpointer: gconstpointer(g_keyfile_settings_backend_new(filename, root_path, root_group))) else { return nil }
    return rv
}




/// Gets a reference to the default `GMemoryMonitor` for the system.
@inlinable public func memoryMonitorDupDefault() -> MemoryMonitorRef! {
    guard let rv = MemoryMonitorRef(gconstpointer: gconstpointer(g_memory_monitor_dup_default())) else { return nil }
    return rv
}




/// Creates a memory-backed `GSettingsBackend`.
/// 
/// This backend allows changes to settings, but does not write them
/// to any backing storage, so the next time you run your application,
/// the memory backend will start out with the default values again.
@inlinable public func memorySettingsBackendNew() -> SettingsBackendRef! {
    guard let rv = SettingsBackendRef(gconstpointer: gconstpointer(g_memory_settings_backend_new())) else { return nil }
    return rv
}




/// Gets the default `GNetworkMonitor` for the system.
@inlinable public func networkMonitorGetDefault() -> NetworkMonitorRef! {
    guard let rv = NetworkMonitorRef(gconstpointer: gconstpointer(g_network_monitor_get_default())) else { return nil }
    return rv
}




/// Initializes the platform networking libraries (eg, on Windows, this
/// calls `WSAStartup()`). GLib will call this itself if it is needed, so
/// you only need to call it if you directly call system networking
/// functions (without calling any GLib networking functions first).
@inlinable public func networkingInit() {
    g_networking_init()

}




/// Creates a readonly `GSettingsBackend`.
/// 
/// This backend does not allow changes to settings, so all settings
/// will always have their default values.
@inlinable public func nullSettingsBackendNew() -> SettingsBackendRef! {
    guard let rv = SettingsBackendRef(gconstpointer: gconstpointer(g_null_settings_backend_new())) else { return nil }
    return rv
}




/// Utility method for `GPollableInputStream` and `GPollableOutputStream`
/// implementations. Creates a new `GSource` that expects a callback of
/// type `GPollableSourceFunc`. The new source does not actually do
/// anything on its own; use `g_source_add_child_source()` to add other
/// sources to it to cause it to trigger.
@inlinable public func pollableSourceNew<ObjectT: ObjectProtocol>(pollableStream pollable_stream: ObjectT) -> SourceRef! {
    guard let rv = SourceRef(gconstpointer: gconstpointer(g_pollable_source_new(pollable_stream.object_ptr))) else { return nil }
    return rv
}




/// Utility method for `GPollableInputStream` and `GPollableOutputStream`
/// implementations. Creates a new `GSource`, as with
/// `g_pollable_source_new()`, but also attaching `child_source` (with a
/// dummy callback), and `cancellable`, if they are non-`nil`.
@inlinable public func pollableSourceNewFull<CancellableT: CancellableProtocol, ObjectT: ObjectProtocol, SourceT: SourceProtocol>(pollableStream pollable_stream: ObjectT, childSource child_source: SourceT? = nil, cancellable: CancellableT? = nil) -> SourceRef! {
    guard let rv = SourceRef(gconstpointer: gconstpointer(g_pollable_source_new_full(pollable_stream.object_ptr, child_source?.source_ptr, cancellable?.cancellable_ptr))) else { return nil }
    return rv
}




/// Tries to read from `stream`, as with `g_input_stream_read()` (if
/// `blocking` is `true`) or `g_pollable_input_stream_read_nonblocking()`
/// (if `blocking` is `false`). This can be used to more easily share
/// code between blocking and non-blocking implementations of a method.
/// 
/// If `blocking` is `false`, then `stream` must be a
/// `GPollableInputStream` for which `g_pollable_input_stream_can_poll()`
/// returns `true`, or else the behavior is undefined. If `blocking` is
/// `true`, then `stream` does not need to be a `GPollableInputStream`.
@inlinable public func pollableStreamRead<CancellableT: CancellableProtocol, InputStreamT: InputStreamProtocol>(stream: InputStreamT, buffer: UnsafeMutableRawPointer!, count: Int, blocking: Bool, cancellable: CancellableT? = nil) throws -> gssize {
    var error: UnsafeMutablePointer<GError>?
    let rv = g_pollable_stream_read(stream.input_stream_ptr, buffer, gsize(count), gboolean((blocking) ? 1 : 0), cancellable?.cancellable_ptr, &error)
    if let error = error { throw GLibError(error) }
    return rv
}




/// Tries to write to `stream`, as with `g_output_stream_write()` (if
/// `blocking` is `true`) or `g_pollable_output_stream_write_nonblocking()`
/// (if `blocking` is `false`). This can be used to more easily share
/// code between blocking and non-blocking implementations of a method.
/// 
/// If `blocking` is `false`, then `stream` must be a
/// `GPollableOutputStream` for which
/// `g_pollable_output_stream_can_poll()` returns `true` or else the
/// behavior is undefined. If `blocking` is `true`, then `stream` does not
/// need to be a `GPollableOutputStream`.
@inlinable public func pollableStreamWrite<CancellableT: CancellableProtocol, OutputStreamT: OutputStreamProtocol>(stream: OutputStreamT, buffer: UnsafeMutableRawPointer!, count: Int, blocking: Bool, cancellable: CancellableT? = nil) throws -> gssize {
    var error: UnsafeMutablePointer<GError>?
    let rv = g_pollable_stream_write(stream.output_stream_ptr, buffer, gsize(count), gboolean((blocking) ? 1 : 0), cancellable?.cancellable_ptr, &error)
    if let error = error { throw GLibError(error) }
    return rv
}




/// Tries to write `count` bytes to `stream`, as with
/// `g_output_stream_write_all()`, but using `g_pollable_stream_write()`
/// rather than `g_output_stream_write()`.
/// 
/// On a successful write of `count` bytes, `true` is returned, and
/// `bytes_written` is set to `count`.
/// 
/// If there is an error during the operation (including
/// `G_IO_ERROR_WOULD_BLOCK` in the non-blocking case), `false` is
/// returned and `error` is set to indicate the error status,
/// `bytes_written` is updated to contain the number of bytes written
/// into the stream before the error occurred.
/// 
/// As with `g_pollable_stream_write()`, if `blocking` is `false`, then
/// `stream` must be a `GPollableOutputStream` for which
/// `g_pollable_output_stream_can_poll()` returns `true` or else the
/// behavior is undefined. If `blocking` is `true`, then `stream` does not
/// need to be a `GPollableOutputStream`.
@inlinable public func pollableStreamWriteAll<CancellableT: CancellableProtocol, OutputStreamT: OutputStreamProtocol>(stream: OutputStreamT, buffer: UnsafeMutableRawPointer!, count: Int, blocking: Bool, bytesWritten bytes_written: UnsafeMutablePointer<gsize>!, cancellable: CancellableT? = nil) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((g_pollable_stream_write_all(stream.output_stream_ptr, buffer, gsize(count), gboolean((blocking) ? 1 : 0), bytes_written, cancellable?.cancellable_ptr, &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}




/// Find the `gio-proxy` extension point for a proxy implementation that supports
/// the specified protocol.
@inlinable public func proxyGetDefaultForProtocol(`protocol`: UnsafePointer<gchar>!) -> ProxyRef! {
    guard let rv = ProxyRef(gconstpointer: gconstpointer(g_proxy_get_default_for_protocol(`protocol`))) else { return nil }
    return rv
}




/// Gets the default `GProxyResolver` for the system.
@inlinable public func proxyResolverGetDefault() -> ProxyResolverRef! {
    guard let rv = ProxyResolverRef(gconstpointer: gconstpointer(g_proxy_resolver_get_default())) else { return nil }
    return rv
}




/// Gets the `GResolver` Error Quark.
@inlinable public func resolverErrorQuark() -> GQuark {
    let rv = g_resolver_error_quark()
    return rv
}




/// Gets the `GResource` Error Quark.
@inlinable public func resourceErrorQuark() -> GQuark {
    let rv = g_resource_error_quark()
    return rv
}




/// Loads a binary resource bundle and creates a `GResource` representation of it, allowing
/// you to query it for data.
/// 
/// If you want to use this resource in the global resource namespace you need
/// to register it with `g_resources_register()`.
/// 
/// If `filename` is empty or the data in it is corrupt,
/// `G_RESOURCE_ERROR_INTERNAL` will be returned. If `filename` doesn’t exist, or
/// there is an error in reading it, an error from `g_mapped_file_new()` will be
/// returned.
@inlinable public func resourceLoad(filename: UnsafePointer<gchar>!) throws -> ResourceRef! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = ResourceRef(gconstpointer: gconstpointer(g_resource_load(filename, &error)))
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Returns all the names of children at the specified `path` in the set of
/// globally registered resources.
/// The return result is a `nil` terminated list of strings which should
/// be released with `g_strfreev()`.
/// 
/// `lookup_flags` controls the behaviour of the lookup.
@inlinable public func resourcesEnumerateChildren(path: UnsafePointer<CChar>!, lookupFlags lookup_flags: ResourceLookupFlags) throws -> UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = g_resources_enumerate_children(path, lookup_flags.value, &error)
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Looks for a file at the specified `path` in the set of
/// globally registered resources and if found returns information about it.
/// 
/// `lookup_flags` controls the behaviour of the lookup.
@inlinable public func resourcesGetInfo(path: UnsafePointer<CChar>!, lookupFlags lookup_flags: ResourceLookupFlags, size: UnsafeMutablePointer<gsize>! = nil, flags: UnsafeMutablePointer<guint32>! = nil) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((g_resources_get_info(path, lookup_flags.value, size, flags, &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}




/// Looks for a file at the specified `path` in the set of
/// globally registered resources and returns a `GBytes` that
/// lets you directly access the data in memory.
/// 
/// The data is always followed by a zero byte, so you
/// can safely use the data as a C string. However, that byte
/// is not included in the size of the GBytes.
/// 
/// For uncompressed resource files this is a pointer directly into
/// the resource bundle, which is typically in some readonly data section
/// in the program binary. For compressed files we allocate memory on
/// the heap and automatically uncompress the data.
/// 
/// `lookup_flags` controls the behaviour of the lookup.
@inlinable public func resourcesLookupData(path: UnsafePointer<CChar>!, lookupFlags lookup_flags: ResourceLookupFlags) throws -> BytesRef! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = BytesRef(gconstpointer: gconstpointer(g_resources_lookup_data(path, lookup_flags.value, &error)))
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Looks for a file at the specified `path` in the set of
/// globally registered resources and returns a `GInputStream`
/// that lets you read the data.
/// 
/// `lookup_flags` controls the behaviour of the lookup.
@inlinable public func resourcesOpenStream(path: UnsafePointer<CChar>!, lookupFlags lookup_flags: ResourceLookupFlags) throws -> InputStreamRef! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = InputStreamRef(gconstpointer: gconstpointer(g_resources_open_stream(path, lookup_flags.value, &error)))
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Registers the resource with the process-global set of resources.
/// Once a resource is registered the files in it can be accessed
/// with the global resource lookup functions like `g_resources_lookup_data()`.
@inlinable public func resourcesRegister<ResourceT: ResourceProtocol>(resource: ResourceT) {
    g_resources_register(resource.resource_ptr)

}




/// Unregisters the resource from the process-global set of resources.
@inlinable public func resourcesUnregister<ResourceT: ResourceProtocol>(resource: ResourceT) {
    g_resources_unregister(resource.resource_ptr)

}




/// Gets the default system schema source.
/// 
/// This function is not required for normal uses of `GSettings` but it
/// may be useful to authors of plugin management systems or to those who
/// want to introspect the content of schemas.
/// 
/// If no schemas are installed, `nil` will be returned.
/// 
/// The returned source may actually consist of multiple schema sources
/// from different directories, depending on which directories were given
/// in `XDG_DATA_DIRS` and `GSETTINGS_SCHEMA_DIR`. For this reason, all
/// lookups performed against the default source should probably be done
/// recursively.
@inlinable public func settingsSchemaSourceGetDefault() -> SettingsSchemaSourceRef! {
    guard let rv = SettingsSchemaSourceRef(gconstpointer: gconstpointer(g_settings_schema_source_get_default())) else { return nil }
    return rv
}





// *** simpleAsyncReportErrorInIdle() is not available because it has a varargs (...) parameter!





/// Reports an error in an idle function. Similar to
/// `g_simple_async_report_error_in_idle()`, but takes a `GError` rather
/// than building a new one.
///
/// **simple_async_report_gerror_in_idle is deprecated:**
/// Use g_task_report_error().
@available(*, deprecated) @inlinable public func simpleAsyncReportGerrorInIdle<GLibErrorT: ErrorProtocol, ObjectT: ObjectProtocol>(object: ObjectT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil, error: GLibErrorT) {
    g_simple_async_report_gerror_in_idle(object?.object_ptr, callback, user_data, error.error_ptr)

}




/// Reports an error in an idle function. Similar to
/// `g_simple_async_report_gerror_in_idle()`, but takes over the caller's
/// ownership of `error`, so the caller does not have to free it any more.
///
/// **simple_async_report_take_gerror_in_idle is deprecated:**
/// Use g_task_report_error().
@available(*, deprecated) @inlinable public func simpleAsyncReportTakeGerrorInIdle<GLibErrorT: ErrorProtocol, ObjectT: ObjectProtocol>(object: ObjectT? = nil, callback: GAsyncReadyCallback? = nil, userData user_data: gpointer! = nil, error: GLibErrorT) {
    g_simple_async_report_take_gerror_in_idle(object?.object_ptr, callback, user_data, error.error_ptr)

}




/// Sorts `targets` in place according to the algorithm in RFC 2782.
@inlinable public func srvTargetListSort<ListT: ListProtocol>(targets: ListT) -> ListRef! {
    guard let rv = ListRef(gconstpointer: gconstpointer(g_srv_target_list_sort(targets._ptr))) else { return nil }
    return rv
}




/// Gets the default `GTlsBackend` for the system.
@inlinable public func tlsBackendGetDefault() -> TLSBackendRef! {
    guard let rv = TLSBackendRef(gconstpointer: gconstpointer(g_tls_backend_get_default())) else { return nil }
    return rv
}




/// Creates a new `GTlsClientConnection` wrapping `base_io_stream` (which
/// must have pollable input and output streams) which is assumed to
/// communicate with the server identified by `server_identity`.
/// 
/// See the documentation for `GTlsConnection:base`-io-stream for restrictions
/// on when application code can run operations on the `base_io_stream` after
/// this function has returned.
@inlinable public func tlsClientConnectionNew<IOStreamT: IOStreamProtocol, SocketConnectableT: SocketConnectableProtocol>(baseIoStream base_io_stream: IOStreamT, serverIdentity server_identity: SocketConnectableT? = nil) throws -> TLSClientConnectionRef! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = TLSClientConnectionRef(gconstpointer: gconstpointer(g_tls_client_connection_new(base_io_stream.io_stream_ptr, server_identity?.socket_connectable_ptr, &error)))
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Gets the TLS error quark.
@inlinable public func tlsErrorQuark() -> GQuark {
    let rv = g_tls_error_quark()
    return rv
}




/// Creates a new `GTlsFileDatabase` which uses anchor certificate authorities
/// in `anchors` to verify certificate chains.
/// 
/// The certificates in `anchors` must be PEM encoded.
@inlinable public func tlsFileDatabaseNew(anchors: UnsafePointer<gchar>!) throws -> TLSFileDatabaseRef! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = TLSFileDatabaseRef(gconstpointer: gconstpointer(g_tls_file_database_new(anchors, &error)))
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Creates a new `GTlsServerConnection` wrapping `base_io_stream` (which
/// must have pollable input and output streams).
/// 
/// See the documentation for `GTlsConnection:base`-io-stream for restrictions
/// on when application code can run operations on the `base_io_stream` after
/// this function has returned.
@inlinable public func tlsServerConnectionNew<IOStreamT: IOStreamProtocol, TLSCertificateT: TLSCertificateProtocol>(baseIoStream base_io_stream: IOStreamT, certificate: TLSCertificateT? = nil) throws -> TLSServerConnectionRef! {
    var error: UnsafeMutablePointer<GError>?
    let maybeRV = TLSServerConnectionRef(gconstpointer: gconstpointer(g_tls_server_connection_new(base_io_stream.io_stream_ptr, certificate?.tls_certificate_ptr, &error)))
    if let error = error { throw GLibError(error) }
    guard let rv = maybeRV else { return nil }
    return rv
}




/// Determines if `mount_path` is considered an implementation of the
/// OS. This is primarily used for hiding mountable and mounted volumes
/// that only are used in the OS and has little to no relevance to the
/// casual user.
@inlinable public func unixIsMountPathSystemInternal(mountPath mount_path: UnsafePointer<CChar>!) -> Bool {
    let rv = ((g_unix_is_mount_path_system_internal(mount_path)) != 0)
    return rv
}




/// Determines if `device_path` is considered a block device path which is only
/// used in implementation of the OS. This is primarily used for hiding
/// mounted volumes that are intended as APIs for programs to read, and system
/// administrators at a shell; rather than something that should, for example,
/// appear in a GUI. For example, the Linux `/proc` filesystem.
/// 
/// The list of device paths considered ‘system’ ones may change over time.
@inlinable public func unixIsSystem(devicePath device_path: UnsafePointer<CChar>!) -> Bool {
    let rv = ((g_unix_is_system_device_path(device_path)) != 0)
    return rv
}




/// Determines if `fs_type` is considered a type of file system which is only
/// used in implementation of the OS. This is primarily used for hiding
/// mounted volumes that are intended as APIs for programs to read, and system
/// administrators at a shell; rather than something that should, for example,
/// appear in a GUI. For example, the Linux `/proc` filesystem.
/// 
/// The list of file system types considered ‘system’ ones may change over time.
@inlinable public func unixIsSystem(fsType fs_type: UnsafePointer<CChar>!) -> Bool {
    let rv = ((g_unix_is_system_fs_type(fs_type)) != 0)
    return rv
}




/// Gets a `GUnixMountEntry` for a given mount path. If `time_read`
/// is set, it will be filled with a unix timestamp for checking
/// if the mounts have changed since with `g_unix_mounts_changed_since()`.
/// 
/// If more mounts have the same mount path, the last matching mount
/// is returned.
@inlinable public func unixMountAt(mountPath mount_path: UnsafePointer<CChar>!, timeRead time_read: UnsafeMutablePointer<guint64>! = nil) -> UnixMountEntryRef! {
    guard let rv = UnixMountEntryRef(gconstpointer: gconstpointer(g_unix_mount_at(mount_path, time_read))) else { return nil }
    return rv
}




/// Compares two unix mounts.
@inlinable public func unixMountCompare<UnixMountEntryT: UnixMountEntryProtocol>(mount1: UnixMountEntryT, mount2: UnixMountEntryT) -> Int {
    let rv = Int(g_unix_mount_compare(mount1.unix_mount_entry_ptr, mount2.unix_mount_entry_ptr))
    return rv
}




/// Makes a copy of `mount_entry`.
@inlinable public func unixMountCopy<UnixMountEntryT: UnixMountEntryProtocol>(mountEntry mount_entry: UnixMountEntryT) -> UnixMountEntryRef! {
    guard let rv = UnixMountEntryRef(gconstpointer: gconstpointer(g_unix_mount_copy(mount_entry.unix_mount_entry_ptr))) else { return nil }
    return rv
}




/// Gets a `GUnixMountEntry` for a given file path. If `time_read`
/// is set, it will be filled with a unix timestamp for checking
/// if the mounts have changed since with `g_unix_mounts_changed_since()`.
/// 
/// If more mounts have the same mount path, the last matching mount
/// is returned.
@inlinable public func unixMountFor(filePath file_path: UnsafePointer<CChar>!, timeRead time_read: UnsafeMutablePointer<guint64>! = nil) -> UnixMountEntryRef! {
    guard let rv = UnixMountEntryRef(gconstpointer: gconstpointer(g_unix_mount_for(file_path, time_read))) else { return nil }
    return rv
}




/// Frees a unix mount.
@inlinable public func unixMountFree<UnixMountEntryT: UnixMountEntryProtocol>(mountEntry mount_entry: UnixMountEntryT) {
    g_unix_mount_free(mount_entry.unix_mount_entry_ptr)

}




/// Gets the device path for a unix mount.
@inlinable public func unixMountGetDevicePath<UnixMountEntryT: UnixMountEntryProtocol>(mountEntry mount_entry: UnixMountEntryT) -> String! {
    guard let rv = g_unix_mount_get_device_path(mount_entry.unix_mount_entry_ptr).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Gets the filesystem type for the unix mount.
@inlinable public func unixMountGetFsType<UnixMountEntryT: UnixMountEntryProtocol>(mountEntry mount_entry: UnixMountEntryT) -> String! {
    guard let rv = g_unix_mount_get_fs_type(mount_entry.unix_mount_entry_ptr).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Gets the mount path for a unix mount.
@inlinable public func unixMountGetMountPath<UnixMountEntryT: UnixMountEntryProtocol>(mountEntry mount_entry: UnixMountEntryT) -> String! {
    guard let rv = g_unix_mount_get_mount_path(mount_entry.unix_mount_entry_ptr).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Gets a comma-separated list of mount options for the unix mount. For example,
/// `rw,relatime,seclabel,data=ordered`.
/// 
/// This is similar to `g_unix_mount_point_get_options()`, but it takes
/// a `GUnixMountEntry` as an argument.
@inlinable public func unixMountGetOptions<UnixMountEntryT: UnixMountEntryProtocol>(mountEntry mount_entry: UnixMountEntryT) -> String! {
    guard let rv = g_unix_mount_get_options(mount_entry.unix_mount_entry_ptr).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Gets the root of the mount within the filesystem. This is useful e.g. for
/// mounts created by bind operation, or btrfs subvolumes.
/// 
/// For example, the root path is equal to "/" for mount created by
/// "mount /dev/sda1 /mnt/foo" and "/bar" for
/// "mount --bind /mnt/foo/bar /mnt/bar".
@inlinable public func unixMountGetRootPath<UnixMountEntryT: UnixMountEntryProtocol>(mountEntry mount_entry: UnixMountEntryT) -> String! {
    guard let rv = g_unix_mount_get_root_path(mount_entry.unix_mount_entry_ptr).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Guesses whether a Unix mount can be ejected.
@inlinable public func unixMountGuessCanEject<UnixMountEntryT: UnixMountEntryProtocol>(mountEntry mount_entry: UnixMountEntryT) -> Bool {
    let rv = ((g_unix_mount_guess_can_eject(mount_entry.unix_mount_entry_ptr)) != 0)
    return rv
}




/// Guesses the icon of a Unix mount.
@inlinable public func unixMountGuessIcon<UnixMountEntryT: UnixMountEntryProtocol>(mountEntry mount_entry: UnixMountEntryT) -> IconRef! {
    guard let rv = IconRef(gconstpointer: gconstpointer(g_unix_mount_guess_icon(mount_entry.unix_mount_entry_ptr))) else { return nil }
    return rv
}




/// Guesses the name of a Unix mount.
/// The result is a translated string.
@inlinable public func unixMountGuessName<UnixMountEntryT: UnixMountEntryProtocol>(mountEntry mount_entry: UnixMountEntryT) -> String! {
    guard let rv = g_unix_mount_guess_name(mount_entry.unix_mount_entry_ptr).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Guesses whether a Unix mount should be displayed in the UI.
@inlinable public func unixMountGuessShouldDisplay<UnixMountEntryT: UnixMountEntryProtocol>(mountEntry mount_entry: UnixMountEntryT) -> Bool {
    let rv = ((g_unix_mount_guess_should_display(mount_entry.unix_mount_entry_ptr)) != 0)
    return rv
}




/// Guesses the symbolic icon of a Unix mount.
@inlinable public func unixMountGuessSymbolicIcon<UnixMountEntryT: UnixMountEntryProtocol>(mountEntry mount_entry: UnixMountEntryT) -> IconRef! {
    guard let rv = IconRef(gconstpointer: gconstpointer(g_unix_mount_guess_symbolic_icon(mount_entry.unix_mount_entry_ptr))) else { return nil }
    return rv
}




/// Checks if a unix mount is mounted read only.
@inlinable public func unixMountIsReadonly<UnixMountEntryT: UnixMountEntryProtocol>(mountEntry mount_entry: UnixMountEntryT) -> Bool {
    let rv = ((g_unix_mount_is_readonly(mount_entry.unix_mount_entry_ptr)) != 0)
    return rv
}




/// Checks if a Unix mount is a system mount. This is the Boolean OR of
/// `g_unix_is_system_fs_type()`, `g_unix_is_system_device_path()` and
/// `g_unix_is_mount_path_system_internal()` on `mount_entry`’s properties.
/// 
/// The definition of what a ‘system’ mount entry is may change over time as new
/// file system types and device paths are ignored.
@inlinable public func unixMountIsSystemInternal<UnixMountEntryT: UnixMountEntryProtocol>(mountEntry mount_entry: UnixMountEntryT) -> Bool {
    let rv = ((g_unix_mount_is_system_internal(mount_entry.unix_mount_entry_ptr)) != 0)
    return rv
}




/// Checks if the unix mount points have changed since a given unix time.
@inlinable public func unixMountPointsChangedSince(time: guint64) -> Bool {
    let rv = ((g_unix_mount_points_changed_since(time)) != 0)
    return rv
}




/// Gets a `GList` of `GUnixMountPoint` containing the unix mount points.
/// If `time_read` is set, it will be filled with the mount timestamp,
/// allowing for checking if the mounts have changed with
/// `g_unix_mount_points_changed_since()`.
@inlinable public func unixMountPointsGet(timeRead time_read: UnsafeMutablePointer<guint64>! = nil) -> ListRef! {
    guard let rv = ListRef(gconstpointer: gconstpointer(g_unix_mount_points_get(time_read))) else { return nil }
    return rv
}




/// Checks if the unix mounts have changed since a given unix time.
@inlinable public func unixMountsChangedSince(time: guint64) -> Bool {
    let rv = ((g_unix_mounts_changed_since(time)) != 0)
    return rv
}




/// Gets a `GList` of `GUnixMountEntry` containing the unix mounts.
/// If `time_read` is set, it will be filled with the mount
/// timestamp, allowing for checking if the mounts have changed
/// with `g_unix_mounts_changed_since()`.
@inlinable public func unixMountsGet(timeRead time_read: UnsafeMutablePointer<guint64>! = nil) -> ListRef! {
    guard let rv = ListRef(gconstpointer: gconstpointer(g_unix_mounts_get(time_read))) else { return nil }
    return rv
}


