import CGLib
import GLib
import GLibObject

/// This struct defines a single action.  It is for use with
/// `g_action_map_add_action_entries()`.
/// 
/// The order of the items in the structure are intended to reflect
/// frequency of use.  It is permissible to use an incomplete initialiser
/// in order to leave some of the later values as `nil`.  All values
/// after `name` are optional.  Additional optional fields may be added in
/// the future.
/// 
/// See `g_action_map_add_action_entries()` for an example.
public typealias _Gio_ActionEntry = GActionEntry // 

/// The virtual function table for `GActionGroup`.
public typealias _Gio_ActionGroupInterface = GActionGroupInterface // 

/// The virtual function table for `GAction`.
public typealias _Gio_ActionInterface = GActionInterface // 

/// The virtual function table for `GActionMap`.
public typealias _Gio_ActionMapInterface = GActionMapInterface // 

/// Application Information interface, for operating system portability.
public typealias _Gio_AppInfoIface = GAppInfoIface // 

public typealias _Gio_AppLaunchContextClass = GAppLaunchContextClass // 

public typealias _Gio_AppLaunchContextPrivate = GAppLaunchContextPrivate // 

/// Virtual function table for `GApplication`.
public typealias _Gio_ApplicationClass = GApplicationClass // 

/// The `GApplicationCommandLineClass-struct`
/// contains private data only.
public typealias _Gio_ApplicationCommandLineClass = GApplicationCommandLineClass // 

public typealias _Gio_ApplicationCommandLinePrivate = GApplicationCommandLinePrivate // 

public typealias _Gio_ApplicationPrivate = GApplicationPrivate // 

/// Provides an interface for asynchronous initializing object such that
/// initialization may fail.
public typealias _Gio_AsyncInitableIface = GAsyncInitableIface // 

/// Interface definition for `GAsyncResult`.
public typealias _Gio_AsyncResultIface = GAsyncResultIface // 

public typealias _Gio_BufferedInputStreamClass = GBufferedInputStreamClass // 

public typealias _Gio_BufferedInputStreamPrivate = GBufferedInputStreamPrivate // 

public typealias _Gio_BufferedOutputStreamClass = GBufferedOutputStreamClass // 

public typealias _Gio_BufferedOutputStreamPrivate = GBufferedOutputStreamPrivate // 

public typealias _Gio_CancellableClass = GCancellableClass // 

public typealias _Gio_CancellablePrivate = GCancellablePrivate // 

public typealias _Gio_CharsetConverterClass = GCharsetConverterClass // 

/// Provides an interface for converting data from one type
/// to another type. The conversion can be stateful
/// and may fail at any place.
public typealias _Gio_ConverterIface = GConverterIface // 

public typealias _Gio_ConverterInputStreamClass = GConverterInputStreamClass // 

public typealias _Gio_ConverterInputStreamPrivate = GConverterInputStreamPrivate // 

public typealias _Gio_ConverterOutputStreamClass = GConverterOutputStreamClass // 

public typealias _Gio_ConverterOutputStreamPrivate = GConverterOutputStreamPrivate // 

/// Class structure for `GCredentials`.
public typealias _Gio_CredentialsClass = GCredentialsClass // 

/// Information about an annotation.
public typealias _Gio_DBusAnnotationInfo = GDBusAnnotationInfo // 

/// Information about an argument for a method or a signal.
public typealias _Gio_DBusArgInfo = GDBusArgInfo // 

/// Struct used in `g_dbus_error_register_error_domain()`.
public typealias _Gio_DBusErrorEntry = GDBusErrorEntry // 

/// Base type for D-Bus interfaces.
public typealias _Gio_DBusInterfaceIface = GDBusInterfaceIface // 

/// Information about a D-Bus interface.
public typealias _Gio_DBusInterfaceInfo = GDBusInterfaceInfo // 

/// Class structure for `GDBusInterfaceSkeleton`.
public typealias _Gio_DBusInterfaceSkeletonClass = GDBusInterfaceSkeletonClass // 

public typealias _Gio_DBusInterfaceSkeletonPrivate = GDBusInterfaceSkeletonPrivate // 

/// Virtual table for handling properties and method calls for a D-Bus
/// interface.
/// 
/// Since 2.38, if you want to handle getting/setting D-Bus properties
/// asynchronously, give `nil` as your `get_property()` or `set_property()`
/// function. The D-Bus call will be directed to your `method_call` function,
/// with the provided `interface_name` set to "org.freedesktop.DBus.Properties".
/// 
/// Ownership of the `GDBusMethodInvocation` object passed to the
/// `method_call()` function is transferred to your handler; you must
/// call one of the methods of `GDBusMethodInvocation` to return a reply
/// (possibly empty), or an error. These functions also take ownership
/// of the passed-in invocation object, so unless the invocation
/// object has otherwise been referenced, it will be then be freed.
/// Calling one of these functions may be done within your
/// `method_call()` implementation but it also can be done at a later
/// point to handle the method asynchronously.
/// 
/// The usual checks on the validity of the calls is performed. For
/// `Get` calls, an error is automatically returned if the property does
/// not exist or the permissions do not allow access. The same checks are
/// performed for `Set` calls, and the provided value is also checked for
/// being the correct type.
/// 
/// For both `Get` and `Set` calls, the `GDBusMethodInvocation`
/// passed to the `method_call` handler can be queried with
/// `g_dbus_method_invocation_get_property_info()` to get a pointer
/// to the `GDBusPropertyInfo` of the property.
/// 
/// If you have readable properties specified in your interface info,
/// you must ensure that you either provide a non-`nil` `get_property``()`
/// function or provide implementations of both the `Get` and `GetAll`
/// methods on org.freedesktop.DBus.Properties interface in your `method_call`
/// function. Note that the required return type of the `Get` call is
/// `(v)`, not the type of the property. `GetAll` expects a return value
/// of type `a{sv}`.
/// 
/// If you have writable properties specified in your interface info,
/// you must ensure that you either provide a non-`nil` `set_property``()`
/// function or provide an implementation of the `Set` call. If implementing
/// the call, you must return the value of type `G_VARIANT_TYPE_UNIT`.
public typealias _Gio_DBusInterfaceVTable = GDBusInterfaceVTable // 

/// Information about a method on an D-Bus interface.
public typealias _Gio_DBusMethodInfo = GDBusMethodInfo // 

/// Information about nodes in a remote object hierarchy.
public typealias _Gio_DBusNodeInfo = GDBusNodeInfo // 

/// Base object type for D-Bus objects.
public typealias _Gio_DBusObjectIface = GDBusObjectIface // 

/// Class structure for `GDBusObjectManagerClient`.
public typealias _Gio_DBusObjectManagerClientClass = GDBusObjectManagerClientClass // 

public typealias _Gio_DBusObjectManagerClientPrivate = GDBusObjectManagerClientPrivate // 

/// Base type for D-Bus object managers.
public typealias _Gio_DBusObjectManagerIface = GDBusObjectManagerIface // 

/// Class structure for `GDBusObjectManagerServer`.
public typealias _Gio_DBusObjectManagerServerClass = GDBusObjectManagerServerClass // 

public typealias _Gio_DBusObjectManagerServerPrivate = GDBusObjectManagerServerPrivate // 

/// Class structure for `GDBusObjectProxy`.
public typealias _Gio_DBusObjectProxyClass = GDBusObjectProxyClass // 

public typealias _Gio_DBusObjectProxyPrivate = GDBusObjectProxyPrivate // 

/// Class structure for `GDBusObjectSkeleton`.
public typealias _Gio_DBusObjectSkeletonClass = GDBusObjectSkeletonClass // 

public typealias _Gio_DBusObjectSkeletonPrivate = GDBusObjectSkeletonPrivate // 

/// Information about a D-Bus property on a D-Bus interface.
public typealias _Gio_DBusPropertyInfo = GDBusPropertyInfo // 

/// Class structure for `GDBusProxy`.
public typealias _Gio_DBusProxyClass = GDBusProxyClass // 

public typealias _Gio_DBusProxyPrivate = GDBusProxyPrivate // 

/// Information about a signal on a D-Bus interface.
public typealias _Gio_DBusSignalInfo = GDBusSignalInfo // 

/// Virtual table for handling subtrees registered with `g_dbus_connection_register_subtree()`.
public typealias _Gio_DBusSubtreeVTable = GDBusSubtreeVTable // 

public typealias _Gio_DataInputStreamClass = GDataInputStreamClass // 

public typealias _Gio_DataInputStreamPrivate = GDataInputStreamPrivate // 

public typealias _Gio_DataOutputStreamClass = GDataOutputStreamClass // 

public typealias _Gio_DataOutputStreamPrivate = GDataOutputStreamPrivate // 

/// Provides an interface for socket-like objects which have datagram semantics,
/// following the Berkeley sockets API. The interface methods are thin wrappers
/// around the corresponding virtual methods, and no pre-processing of inputs is
/// implemented — so implementations of this API must handle all functionality
/// documented in the interface methods.
public typealias _Gio_DatagramBasedInterface = GDatagramBasedInterface // 

/// Interface for creating `GDrive` implementations.
public typealias _Gio_DriveIface = GDriveIface // 

/// vtable for a `GDtlsClientConnection` implementation.
public typealias _Gio_DtlsClientConnectionInterface = GDtlsClientConnectionInterface // 

/// Virtual method table for a `GDtlsConnection` implementation.
public typealias _Gio_DtlsConnectionInterface = GDtlsConnectionInterface // 

/// vtable for a `GDtlsServerConnection` implementation.
public typealias _Gio_DtlsServerConnectionInterface = GDtlsServerConnectionInterface // 

public typealias _Gio_EmblemClass = GEmblemClass // 

public typealias _Gio_EmblemedIconClass = GEmblemedIconClass // 

public typealias _Gio_EmblemedIconPrivate = GEmblemedIconPrivate // 

/// Information about a specific attribute.
public typealias _Gio_FileAttributeInfo = GFileAttributeInfo // 

/// Acts as a lightweight registry for possible valid file attributes.
/// The registry stores Key-Value pair formats as `GFileAttributeInfos`.
public typealias _Gio_FileAttributeInfoList = GFileAttributeInfoList // 

/// Determines if a string matches a file attribute.
public typealias _Gio_FileAttributeMatcher = GFileAttributeMatcher // 

/// An interface for file descriptor based io objects.
public typealias _Gio_FileDescriptorBasedIface = GFileDescriptorBasedIface // 

public typealias _Gio_FileEnumeratorClass = GFileEnumeratorClass // 

public typealias _Gio_FileEnumeratorPrivate = GFileEnumeratorPrivate // 

public typealias _Gio_FileIOStreamClass = GFileIOStreamClass // 

public typealias _Gio_FileIOStreamPrivate = GFileIOStreamPrivate // 

public typealias _Gio_FileIconClass = GFileIconClass // 

/// An interface for writing VFS file handles.
public typealias _Gio_FileIface = GFileIface // 

public typealias _Gio_FileInfoClass = GFileInfoClass // 

public typealias _Gio_FileInputStreamClass = GFileInputStreamClass // 

public typealias _Gio_FileInputStreamPrivate = GFileInputStreamPrivate // 

public typealias _Gio_FileMonitorClass = GFileMonitorClass // 

public typealias _Gio_FileMonitorPrivate = GFileMonitorPrivate // 

public typealias _Gio_FileOutputStreamClass = GFileOutputStreamClass // 

public typealias _Gio_FileOutputStreamPrivate = GFileOutputStreamPrivate // 

public typealias _Gio_FilenameCompleterClass = GFilenameCompleterClass // 

public typealias _Gio_FilterInputStreamClass = GFilterInputStreamClass // 

public typealias _Gio_FilterOutputStreamClass = GFilterOutputStreamClass // 

/// `GIOExtension` is an opaque data structure and can only be accessed
/// using the following functions.
public typealias _Gio_IOExtension = GIOExtension // 

/// `GIOExtensionPoint` is an opaque data structure and can only be accessed
/// using the following functions.
public typealias _Gio_IOExtensionPoint = GIOExtensionPoint // 

public typealias _Gio_IOModuleClass = GIOModuleClass // 

/// Represents a scope for loading IO modules. A scope can be used for blocking
/// duplicate modules, or blocking a module you don't want to load.
/// 
/// The scope can be used with `g_io_modules_load_all_in_directory_with_scope()`
/// or `g_io_modules_scan_all_in_directory_with_scope()`.
public typealias _Gio_IOModuleScope = GIOModuleScope // 

/// Opaque class for defining and scheduling IO jobs.
public typealias _Gio_IOSchedulerJob = GIOSchedulerJob // 

public typealias _Gio_IOStreamAdapter = GIOStreamAdapter // 

public typealias _Gio_IOStreamClass = GIOStreamClass // 

public typealias _Gio_IOStreamPrivate = GIOStreamPrivate // 

/// GIconIface is used to implement GIcon types for various
/// different systems. See `GThemedIcon` and `GLoadableIcon` for
/// examples of how to implement this interface.
public typealias _Gio_IconIface = GIconIface // 

public typealias _Gio_InetAddressClass = GInetAddressClass // 

public typealias _Gio_InetAddressMaskClass = GInetAddressMaskClass // 

public typealias _Gio_InetAddressMaskPrivate = GInetAddressMaskPrivate // 

public typealias _Gio_InetAddressPrivate = GInetAddressPrivate // 

public typealias _Gio_InetSocketAddressClass = GInetSocketAddressClass // 

public typealias _Gio_InetSocketAddressPrivate = GInetSocketAddressPrivate // 

/// Provides an interface for initializing object such that initialization
/// may fail.
public typealias _Gio_InitableIface = GInitableIface // 

/// Structure used for scatter/gather data input when receiving multiple
/// messages or packets in one go. You generally pass in an array of empty
/// `GInputVectors` and the operation will use all the buffers as if they
/// were one buffer, and will set `bytes_received` to the total number of bytes
/// received across all `GInputVectors`.
/// 
/// This structure closely mirrors `struct mmsghdr` and `struct msghdr` from
/// the POSIX sockets API (see `man 2 recvmmsg`).
/// 
/// If `address` is non-`nil` then it is set to the source address the message
/// was received from, and the caller must free it afterwards.
/// 
/// If `control_messages` is non-`nil` then it is set to an array of control
/// messages received with the message (if any), and the caller must free it
/// afterwards. `num_control_messages` is set to the number of elements in
/// this array, which may be zero.
/// 
/// Flags relevant to this message will be returned in `flags`. For example,
/// `MSG_EOR` or `MSG_TRUNC`.
public typealias _Gio_InputMessage = GInputMessage // 

public typealias _Gio_InputStreamClass = GInputStreamClass // 

public typealias _Gio_InputStreamPrivate = GInputStreamPrivate // 

/// Structure used for scatter/gather data input.
/// You generally pass in an array of `GInputVectors`
/// and the operation will store the read data starting in the
/// first buffer, switching to the next as needed.
public typealias _Gio_InputVector = GInputVector // 

/// The virtual function table for `GListModel`.
public typealias _Gio_ListModelInterface = GListModelInterface // 

public typealias _Gio_ListStoreClass = GListStoreClass // 

/// Interface for icons that can be loaded as a stream.
public typealias _Gio_LoadableIconIface = GLoadableIconIface // 

public typealias _Gio_MemoryInputStreamClass = GMemoryInputStreamClass // 

public typealias _Gio_MemoryInputStreamPrivate = GMemoryInputStreamPrivate // 

/// The virtual function table for `GMemoryMonitor`.
public typealias _Gio_MemoryMonitorInterface = GMemoryMonitorInterface // 

public typealias _Gio_MemoryOutputStreamClass = GMemoryOutputStreamClass // 

public typealias _Gio_MemoryOutputStreamPrivate = GMemoryOutputStreamPrivate // 

public typealias _Gio_MenuAttributeIterClass = GMenuAttributeIterClass // 

public typealias _Gio_MenuAttributeIterPrivate = GMenuAttributeIterPrivate // 

public typealias _Gio_MenuLinkIterClass = GMenuLinkIterClass // 

public typealias _Gio_MenuLinkIterPrivate = GMenuLinkIterPrivate // 

public typealias _Gio_MenuModelClass = GMenuModelClass // 

public typealias _Gio_MenuModelPrivate = GMenuModelPrivate // 

/// Interface for implementing operations for mounts.
public typealias _Gio_MountIface = GMountIface // 

public typealias _Gio_MountOperationClass = GMountOperationClass // 

public typealias _Gio_MountOperationPrivate = GMountOperationPrivate // 

public typealias _Gio_NativeSocketAddressClass = GNativeSocketAddressClass // 

public typealias _Gio_NativeSocketAddressPrivate = GNativeSocketAddressPrivate // 

public typealias _Gio_NativeVolumeMonitorClass = GNativeVolumeMonitorClass // 

public typealias _Gio_NetworkAddressClass = GNetworkAddressClass // 

public typealias _Gio_NetworkAddressPrivate = GNetworkAddressPrivate // 

/// The virtual function table for `GNetworkMonitor`.
public typealias _Gio_NetworkMonitorInterface = GNetworkMonitorInterface // 

public typealias _Gio_NetworkServiceClass = GNetworkServiceClass // 

public typealias _Gio_NetworkServicePrivate = GNetworkServicePrivate // 

public typealias _Gio_OsxAppInfoClass = GOsxAppInfoClass // 

/// Structure used for scatter/gather data output when sending multiple
/// messages or packets in one go. You generally pass in an array of
/// `GOutputVectors` and the operation will use all the buffers as if they
/// were one buffer.
/// 
/// If `address` is `nil` then the message is sent to the default receiver
/// (as previously set by `g_socket_connect()`).
public typealias _Gio_OutputMessage = GOutputMessage // 

public typealias _Gio_OutputStreamClass = GOutputStreamClass // 

public typealias _Gio_OutputStreamPrivate = GOutputStreamPrivate // 

/// Structure used for scatter/gather data output.
/// You generally pass in an array of `GOutputVectors`
/// and the operation will use all the buffers as if they were
/// one buffer.
public typealias _Gio_OutputVector = GOutputVector // 

public typealias _Gio_PermissionClass = GPermissionClass // 

public typealias _Gio_PermissionPrivate = GPermissionPrivate // 

/// The interface for pollable input streams.
/// 
/// The default implementation of `can_poll` always returns `true`.
/// 
/// The default implementation of `read_nonblocking` calls
/// `g_pollable_input_stream_is_readable()`, and then calls
/// `g_input_stream_read()` if it returns `true`. This means you only need
/// to override it if it is possible that your `is_readable`
/// implementation may return `true` when the stream is not actually
/// readable.
public typealias _Gio_PollableInputStreamInterface = GPollableInputStreamInterface // 

/// The interface for pollable output streams.
/// 
/// The default implementation of `can_poll` always returns `true`.
/// 
/// The default implementation of `write_nonblocking` calls
/// `g_pollable_output_stream_is_writable()`, and then calls
/// `g_output_stream_write()` if it returns `true`. This means you only
/// need to override it if it is possible that your `is_writable`
/// implementation may return `true` when the stream is not actually
/// writable.
/// 
/// The default implementation of `writev_nonblocking` calls
/// `g_pollable_output_stream_write_nonblocking()` for each vector, and converts
/// its return value and error (if set) to a `GPollableReturn`. You should
/// override this where possible to avoid having to allocate a `GError` to return
/// `G_IO_ERROR_WOULD_BLOCK`.
public typealias _Gio_PollableOutputStreamInterface = GPollableOutputStreamInterface // 

/// The virtual function table for `GPowerProfileMonitor`.
public typealias _Gio_PowerProfileMonitorInterface = GPowerProfileMonitorInterface // 

/// Class structure for `GProxyAddress`.
public typealias _Gio_ProxyAddressClass = GProxyAddressClass // 

/// Class structure for `GProxyAddressEnumerator`.
public typealias _Gio_ProxyAddressEnumeratorClass = GProxyAddressEnumeratorClass // 

public typealias _Gio_ProxyAddressEnumeratorPrivate = GProxyAddressEnumeratorPrivate // 

public typealias _Gio_ProxyAddressPrivate = GProxyAddressPrivate // 

/// Provides an interface for handling proxy connection and payload.
public typealias _Gio_ProxyInterface = GProxyInterface // 

/// The virtual function table for `GProxyResolver`.
public typealias _Gio_ProxyResolverInterface = GProxyResolverInterface // 

/// The virtual function table for `GRemoteActionGroup`.
public typealias _Gio_RemoteActionGroupInterface = GRemoteActionGroupInterface // 

public typealias _Gio_ResolverClass = GResolverClass // 

public typealias _Gio_ResolverPrivate = GResolverPrivate // 

/// Applications and libraries often contain binary or textual data that is
/// really part of the application, rather than user data. For instance
/// `GtkBuilder` .ui files, splashscreen images, GMenu markup XML, CSS files,
/// icons, etc. These are often shipped as files in `$datadir/appname`, or
/// manually included as literal strings in the code.
/// 
/// The `GResource` API and the [glib-compile-resources](#glib-compile-resources) program
/// provide a convenient and efficient alternative to this which has some nice properties. You
/// maintain the files as normal files, so its easy to edit them, but during the build the files
/// are combined into a binary bundle that is linked into the executable. This means that loading
/// the resource files are efficient (as they are already in memory, shared with other instances) and
/// simple (no need to check for things like I/O errors or locate the files in the filesystem). It
/// also makes it easier to create relocatable applications.
/// 
/// Resource files can also be marked as compressed. Such files will be included in the resource bundle
/// in a compressed form, but will be automatically uncompressed when the resource is used. This
/// is very useful e.g. for larger text files that are parsed once (or rarely) and then thrown away.
/// 
/// Resource files can also be marked to be preprocessed, by setting the value of the
/// `preprocess` attribute to a comma-separated list of preprocessing options.
/// The only options currently supported are:
/// 
/// `xml-stripblanks` which will use the xmllint command
/// to strip ignorable whitespace from the XML file. For this to work,
/// the `XMLLINT` environment variable must be set to the full path to
/// the xmllint executable, or xmllint must be in the `PATH`; otherwise
/// the preprocessing step is skipped.
/// 
/// `to-pixdata` (deprecated since gdk-pixbuf 2.32) which will use the
/// `gdk-pixbuf-pixdata` command to convert images to the `GdkPixdata` format,
/// which allows you to create pixbufs directly using the data inside the
/// resource file, rather than an (uncompressed) copy of it. For this, the
/// `gdk-pixbuf-pixdata` program must be in the `PATH`, or the
/// `GDK_PIXBUF_PIXDATA` environment variable must be set to the full path to the
/// `gdk-pixbuf-pixdata` executable; otherwise the resource compiler will abort.
/// `to-pixdata` has been deprecated since gdk-pixbuf 2.32, as `GResource`
/// supports embedding modern image formats just as well. Instead of using it,
/// embed a PNG or SVG file in your `GResource`.
/// 
/// `json-stripblanks` which will use the `json-glib-format` command to strip
/// ignorable whitespace from the JSON file. For this to work, the
/// `JSON_GLIB_FORMAT` environment variable must be set to the full path to the
/// `json-glib-format` executable, or it must be in the `PATH`;
/// otherwise the preprocessing step is skipped. In addition, at least version
/// 1.6 of `json-glib-format` is required.
/// 
/// Resource files will be exported in the GResource namespace using the
/// combination of the given `prefix` and the filename from the `file` element.
/// The `alias` attribute can be used to alter the filename to expose them at a
/// different location in the resource namespace. Typically, this is used to
/// include files from a different source directory without exposing the source
/// directory in the resource namespace, as in the example below.
/// 
/// Resource bundles are created by the [glib-compile-resources](#glib-compile-resources) program
/// which takes an XML file that describes the bundle, and a set of files that the XML references. These
/// are combined into a binary resource bundle.
/// 
/// An example resource description:
/// ```
/// <?xml version="1.0" encoding="UTF-8"?>
/// <gresources>
///   <gresource prefix="/org/gtk/Example">
///     <file>data/splashscreen.png</file>
///     <file compressed="true">dialog.ui</file>
///     <file preprocess="xml-stripblanks">menumarkup.xml</file>
///     <file alias="example.css">data/example.css</file>
///   </gresource>
/// </gresources>
/// ```
/// 
/// This will create a resource bundle with the following files:
/// ```
/// /org/gtk/Example/data/splashscreen.png
/// /org/gtk/Example/dialog.ui
/// /org/gtk/Example/menumarkup.xml
/// /org/gtk/Example/example.css
/// ```
/// 
/// Note that all resources in the process share the same namespace, so use Java-style
/// path prefixes (like in the above example) to avoid conflicts.
/// 
/// You can then use [glib-compile-resources](#glib-compile-resources) to compile the XML to a
/// binary bundle that you can load with `g_resource_load()`. However, its more common to use the --generate-source and
/// --generate-header arguments to create a source file and header to link directly into your application.
/// This will generate ``get_resource()``, ``register_resource()`` and
/// ``unregister_resource()`` functions, prefixed by the `--c-name` argument passed
/// to [glib-compile-resources](#glib-compile-resources). ``get_resource()`` returns
/// the generated `GResource` object. The register and unregister functions
/// register the resource so its files can be accessed using
/// `g_resources_lookup_data()`.
/// 
/// Once a `GResource` has been created and registered all the data in it can be accessed globally in the process by
/// using API calls like `g_resources_open_stream()` to stream the data or `g_resources_lookup_data()` to get a direct pointer
/// to the data. You can also use URIs like "resource:///org/gtk/Example/data/splashscreen.png" with `GFile` to access
/// the resource data.
/// 
/// Some higher-level APIs, such as `GtkApplication`, will automatically load
/// resources from certain well-known paths in the resource namespace as a
/// convenience. See the documentation for those APIs for details.
/// 
/// There are two forms of the generated source, the default version uses the compiler support for constructor
/// and destructor functions (where available) to automatically create and register the `GResource` on startup
/// or library load time. If you pass `--manual-register`, two functions to register/unregister the resource are created
/// instead. This requires an explicit initialization call in your application/library, but it works on all platforms,
/// even on the minor ones where constructors are not supported. (Constructor support is available for at least Win32, Mac OS and Linux.)
/// 
/// Note that resource data can point directly into the data segment of e.g. a library, so if you are unloading libraries
/// during runtime you need to be very careful with keeping around pointers to data from a resource, as this goes away
/// when the library is unloaded. However, in practice this is not generally a problem, since most resource accesses
/// are for your own resources, and resource data is often used once, during parsing, and then released.
/// 
/// When debugging a program or testing a change to an installed version, it is often useful to be able to
/// replace resources in the program or library, without recompiling, for debugging or quick hacking and testing
/// purposes. Since GLib 2.50, it is possible to use the `G_RESOURCE_OVERLAYS` environment variable to selectively overlay
/// resources with replacements from the filesystem.  It is a `G_SEARCHPATH_SEPARATOR-separated` list of substitutions to perform
/// during resource lookups. It is ignored when running in a setuid process.
/// 
/// A substitution has the form
/// 
/// ```
///    /org/gtk/libgtk=/home/desrt/gtk-overlay
/// ```
/// 
/// The part before the `=` is the resource subpath for which the overlay applies.  The part after is a
/// filesystem path which contains files and subdirectories as you would like to be loaded as resources with the
/// equivalent names.
/// 
/// In the example above, if an application tried to load a resource with the resource path
/// `/org/gtk/libgtk/ui/gtkdialog.ui` then GResource would check the filesystem path
/// `/home/desrt/gtk-overlay/ui/gtkdialog.ui`.  If a file was found there, it would be used instead.  This is an
/// overlay, not an outright replacement, which means that if a file is not found at that path, the built-in
/// version will be used instead.  Whiteouts are not currently supported.
/// 
/// Substitutions must start with a slash, and must not contain a trailing slash before the '='.  The path after
/// the slash should ideally be absolute, but this is not strictly required.  It is possible to overlay the
/// location of a single resource with an individual file.
public typealias _Gio_Resource = GResource // 

/// Provides an interface for implementing seekable functionality on I/O Streams.
public typealias _Gio_SeekableIface = GSeekableIface // 

/// Class structure for `GSettingsBackend`.
public typealias _Gio_SettingsBackendClass = GSettingsBackendClass // 

public typealias _Gio_SettingsBackendPrivate = GSettingsBackendPrivate // 

public typealias _Gio_SettingsClass = GSettingsClass // 

public typealias _Gio_SettingsPrivate = GSettingsPrivate // 

/// The `GSettingsSchemaSource` and `GSettingsSchema` APIs provide a
/// mechanism for advanced control over the loading of schemas and a
/// mechanism for introspecting their content.
/// 
/// Plugin loading systems that wish to provide plugins a way to access
/// settings face the problem of how to make the schemas for these
/// settings visible to GSettings.  Typically, a plugin will want to ship
/// the schema along with itself and it won't be installed into the
/// standard system directories for schemas.
/// 
/// `GSettingsSchemaSource` provides a mechanism for dealing with this by
/// allowing the creation of a new 'schema source' from which schemas can
/// be acquired.  This schema source can then become part of the metadata
/// associated with the plugin and queried whenever the plugin requires
/// access to some settings.
/// 
/// Consider the following example:
/// 
/// (C Language Example):
/// ```C
/// typedef struct
/// {
///    ...
///    GSettingsSchemaSource *schema_source;
///    ...
/// } Plugin;
/// 
/// Plugin *
/// initialise_plugin (const gchar *dir)
/// {
///   Plugin *plugin;
/// 
///   ...
/// 
///   plugin->schema_source =
///     g_settings_schema_source_new_from_directory (dir,
///       g_settings_schema_source_get_default (), FALSE, NULL);
/// 
///   ...
/// 
///   return plugin;
/// }
/// 
/// ...
/// 
/// GSettings *
/// plugin_get_settings (Plugin      *plugin,
///                      const gchar *schema_id)
/// {
///   GSettingsSchema *schema;
/// 
///   if (schema_id == NULL)
///     schema_id = plugin->identifier;
/// 
///   schema = g_settings_schema_source_lookup (plugin->schema_source,
///                                             schema_id, FALSE);
/// 
///   if (schema == NULL)
///     {
///       ... disable the plugin or abort, etc ...
///     }
/// 
///   return g_settings_new_full (schema, NULL, NULL);
/// }
/// ```
/// 
/// The code above shows how hooks should be added to the code that
/// initialises (or enables) the plugin to create the schema source and
/// how an API can be added to the plugin system to provide a convenient
/// way for the plugin to access its settings, using the schemas that it
/// ships.
/// 
/// From the standpoint of the plugin, it would need to ensure that it
/// ships a gschemas.compiled file as part of itself, and then simply do
/// the following:
/// 
/// (C Language Example):
/// ```C
/// {
///   GSettings *settings;
///   gint some_value;
/// 
///   settings = plugin_get_settings (self, NULL);
///   some_value = g_settings_get_int (settings, "some-value");
///   ...
/// }
/// ```
/// 
/// It's also possible that the plugin system expects the schema source
/// files (ie: .gschema.xml files) instead of a gschemas.compiled file.
/// In that case, the plugin loading system must compile the schemas for
/// itself before attempting to create the settings source.
public typealias _Gio_SettingsSchema = GSettingsSchema // 

/// `GSettingsSchemaKey` is an opaque data structure and can only be accessed
/// using the following functions.
public typealias _Gio_SettingsSchemaKey = GSettingsSchemaKey // 

/// This is an opaque structure type.  You may not access it directly.
public typealias _Gio_SettingsSchemaSource = GSettingsSchemaSource // 

public typealias _Gio_SimpleActionGroupClass = GSimpleActionGroupClass // 

public typealias _Gio_SimpleActionGroupPrivate = GSimpleActionGroupPrivate // 

public typealias _Gio_SimpleAsyncResultClass = GSimpleAsyncResultClass // 

public typealias _Gio_SimpleProxyResolverClass = GSimpleProxyResolverClass // 

public typealias _Gio_SimpleProxyResolverPrivate = GSimpleProxyResolverPrivate // 

public typealias _Gio_SocketAddressClass = GSocketAddressClass // 

/// Class structure for `GSocketAddressEnumerator`.
public typealias _Gio_SocketAddressEnumeratorClass = GSocketAddressEnumeratorClass // 

public typealias _Gio_SocketClass = GSocketClass // 

public typealias _Gio_SocketClientClass = GSocketClientClass // 

public typealias _Gio_SocketClientPrivate = GSocketClientPrivate // 

/// Provides an interface for returning a `GSocketAddressEnumerator`
/// and `GProxyAddressEnumerator`
public typealias _Gio_SocketConnectableIface = GSocketConnectableIface // 

public typealias _Gio_SocketConnectionClass = GSocketConnectionClass // 

public typealias _Gio_SocketConnectionPrivate = GSocketConnectionPrivate // 

/// Class structure for `GSocketControlMessage`.
public typealias _Gio_SocketControlMessageClass = GSocketControlMessageClass // 

public typealias _Gio_SocketControlMessagePrivate = GSocketControlMessagePrivate // 

/// Class structure for `GSocketListener`.
public typealias _Gio_SocketListenerClass = GSocketListenerClass // 

public typealias _Gio_SocketListenerPrivate = GSocketListenerPrivate // 

public typealias _Gio_SocketPrivate = GSocketPrivate // 

/// Class structure for `GSocketService`.
public typealias _Gio_SocketServiceClass = GSocketServiceClass // 

public typealias _Gio_SocketServicePrivate = GSocketServicePrivate // 

/// SRV (service) records are used by some network protocols to provide
/// service-specific aliasing and load-balancing. For example, XMPP
/// (Jabber) uses SRV records to locate the XMPP server for a domain;
/// rather than connecting directly to "example.com" or assuming a
/// specific server hostname like "xmpp.example.com", an XMPP client
/// would look up the "xmpp-client" SRV record for "example.com", and
/// then connect to whatever host was pointed to by that record.
/// 
/// You can use `g_resolver_lookup_service()` or
/// `g_resolver_lookup_service_async()` to find the `GSrvTargets`
/// for a given service. However, if you are simply planning to connect
/// to the remote service, you can use `GNetworkService`'s
/// `GSocketConnectable` interface and not need to worry about
/// `GSrvTarget` at all.
public typealias _Gio_SrvTarget = GSrvTarget // 

/// `GStaticResource` is an opaque data structure and can only be accessed
/// using the following functions.
public typealias _Gio_StaticResource = GStaticResource // 

public typealias _Gio_TaskClass = GTaskClass // 

public typealias _Gio_TcpConnectionClass = GTcpConnectionClass // 

public typealias _Gio_TcpConnectionPrivate = GTcpConnectionPrivate // 

public typealias _Gio_TcpWrapperConnectionClass = GTcpWrapperConnectionClass // 

public typealias _Gio_TcpWrapperConnectionPrivate = GTcpWrapperConnectionPrivate // 

public typealias _Gio_ThemedIconClass = GThemedIconClass // 

public typealias _Gio_ThreadedSocketServiceClass = GThreadedSocketServiceClass // 

public typealias _Gio_ThreadedSocketServicePrivate = GThreadedSocketServicePrivate // 

/// Provides an interface for describing TLS-related types.
public typealias _Gio_TLSBackendInterface = GTlsBackendInterface // 

public typealias _Gio_TLSCertificateClass = GTlsCertificateClass // 

public typealias _Gio_TLSCertificatePrivate = GTlsCertificatePrivate // 

/// vtable for a `GTlsClientConnection` implementation.
public typealias _Gio_TLSClientConnectionInterface = GTlsClientConnectionInterface // 

/// The class structure for the `GTlsConnection` type.
public typealias _Gio_TLSConnectionClass = GTlsConnectionClass // 

public typealias _Gio_TLSConnectionPrivate = GTlsConnectionPrivate // 

/// The class for `GTlsDatabase`. Derived classes should implement the various
/// virtual methods. _async and _finish methods have a default
/// implementation that runs the corresponding sync method in a thread.
public typealias _Gio_TLSDatabaseClass = GTlsDatabaseClass // 

public typealias _Gio_TLSDatabasePrivate = GTlsDatabasePrivate // 

/// Provides an interface for `GTlsFileDatabase` implementations.
public typealias _Gio_TLSFileDatabaseInterface = GTlsFileDatabaseInterface // 

/// The class for `GTlsInteraction`. Derived classes implement the various
/// virtual interaction methods to handle TLS interactions.
/// 
/// Derived classes can choose to implement whichever interactions methods they'd
/// like to support by overriding those virtual methods in their class
/// initialization function. If a derived class implements an async method,
/// it must also implement the corresponding finish method.
/// 
/// The synchronous interaction methods should implement to display modal dialogs,
/// and the asynchronous methods to display modeless dialogs.
/// 
/// If the user cancels an interaction, then the result should be
/// `G_TLS_INTERACTION_FAILED` and the error should be set with a domain of
/// `G_IO_ERROR` and code of `G_IO_ERROR_CANCELLED`.
public typealias _Gio_TLSInteractionClass = GTlsInteractionClass // 

public typealias _Gio_TLSInteractionPrivate = GTlsInteractionPrivate // 

/// Class structure for `GTlsPassword`.
public typealias _Gio_TLSPasswordClass = GTlsPasswordClass // 

public typealias _Gio_TLSPasswordPrivate = GTlsPasswordPrivate // 

/// vtable for a `GTlsServerConnection` implementation.
public typealias _Gio_TLSServerConnectionInterface = GTlsServerConnectionInterface // 

public typealias _Gio_UnixConnectionClass = GUnixConnectionClass // 

public typealias _Gio_UnixConnectionPrivate = GUnixConnectionPrivate // 

/// Class structure for `GUnixCredentialsMessage`.
public typealias _Gio_UnixCredentialsMessageClass = GUnixCredentialsMessageClass // 

public typealias _Gio_UnixCredentialsMessagePrivate = GUnixCredentialsMessagePrivate // 

public typealias _Gio_UnixFDListClass = GUnixFDListClass // 

public typealias _Gio_UnixFDListPrivate = GUnixFDListPrivate // 

public typealias _Gio_UnixFDMessageClass = GUnixFDMessageClass // 

public typealias _Gio_UnixFDMessagePrivate = GUnixFDMessagePrivate // 

public typealias _Gio_UnixInputStreamClass = GUnixInputStreamClass // 

public typealias _Gio_UnixInputStreamPrivate = GUnixInputStreamPrivate // 

/// Defines a Unix mount entry (e.g. &lt;filename&gt;/media/cdrom&lt;/filename&gt;).
/// This corresponds roughly to a mtab entry.
public typealias _Gio_UnixMountEntry = GUnixMountEntry // 

public typealias _Gio_UnixMountMonitorClass = GUnixMountMonitorClass // 

/// Defines a Unix mount point (e.g. &lt;filename&gt;/dev&lt;/filename&gt;).
/// This corresponds roughly to a fstab entry.
public typealias _Gio_UnixMountPoint = GUnixMountPoint // 

public typealias _Gio_UnixOutputStreamClass = GUnixOutputStreamClass // 

public typealias _Gio_UnixOutputStreamPrivate = GUnixOutputStreamPrivate // 

public typealias _Gio_UnixSocketAddressClass = GUnixSocketAddressClass // 

public typealias _Gio_UnixSocketAddressPrivate = GUnixSocketAddressPrivate // 

public typealias _Gio_VfsClass = GVfsClass // 

/// Interface for implementing operations for mountable volumes.
public typealias _Gio_VolumeIface = GVolumeIface // 

public typealias _Gio_VolumeMonitorClass = GVolumeMonitorClass // 

public typealias _Gio_ZlibCompressorClass = GZlibCompressorClass // 

public typealias _Gio_ZlibDecompressorClass = GZlibDecompressorClass // 




/// An enumeration for well-known message buses.
public typealias _Gio_BusType = GBusType

/// Results returned from `g_converter_convert()`.
public typealias _Gio_ConverterResult = GConverterResult

/// Enumeration describing different kinds of native credential types.
public typealias _Gio_CredentialsType = GCredentialsType

/// Error codes for the `G_DBUS_ERROR` error domain.
public typealias _Gio_DBusError = GDBusError

/// Enumeration used to describe the byte order of a D-Bus message.
public typealias _Gio_DBusMessageByteOrder = GDBusMessageByteOrder

/// Header fields used in `GDBusMessage`.
public typealias _Gio_DBusMessageHeaderField = GDBusMessageHeaderField

/// Message types used in `GDBusMessage`.
public typealias _Gio_DBusMessageType = GDBusMessageType

/// `GDataStreamByteOrder` is used to ensure proper endianness of streaming data sources
/// across various machine architectures.
public typealias _Gio_DataStreamByteOrder = GDataStreamByteOrder

/// `GDataStreamNewlineType` is used when checking for or setting the line endings for a given file.
public typealias _Gio_DataStreamNewlineType = GDataStreamNewlineType

/// Enumeration describing how a drive can be started/stopped.
public typealias _Gio_DriveStartStopType = GDriveStartStopType

/// GEmblemOrigin is used to add information about the origin of the emblem
/// to `GEmblem`.
public typealias _Gio_EmblemOrigin = GEmblemOrigin

/// Used by `g_file_set_attributes_from_info()` when setting file attributes.
public typealias _Gio_FileAttributeStatus = GFileAttributeStatus

/// The data types for file attributes.
public typealias _Gio_FileAttributeType = GFileAttributeType

/// Specifies what type of event a monitor event is.
public typealias _Gio_FileMonitorEvent = GFileMonitorEvent

/// Indicates the file's on-disk type.
/// 
/// On Windows systems a file will never have `G_FILE_TYPE_SYMBOLIC_LINK` type;
/// use `GFileInfo` and `G_FILE_ATTRIBUTE_STANDARD_IS_SYMLINK` to determine
/// whether a file is a symlink or not. This is due to the fact that NTFS does
/// not have a single filesystem object type for symbolic links - it has
/// files that symlink to files, and directories that symlink to directories.
/// `GFileType` enumeration cannot precisely represent this important distinction,
/// which is why all Windows symlinks will continue to be reported as
/// `G_FILE_TYPE_REGULAR` or `G_FILE_TYPE_DIRECTORY`.
public typealias _Gio_FileType = GFileType

/// Indicates a hint from the file system whether files should be
/// previewed in a file manager. Returned as the value of the key
/// `G_FILE_ATTRIBUTE_FILESYSTEM_USE_PREVIEW`.
public typealias _Gio_FilesystemPreviewType = GFilesystemPreviewType

/// Error codes returned by GIO functions.
/// 
/// Note that this domain may be extended in future GLib releases. In
/// general, new error codes either only apply to new APIs, or else
/// replace `G_IO_ERROR_FAILED` in cases that were not explicitly
/// distinguished before. You should therefore avoid writing code like
/// (C Language Example):
/// ```C
/// if (g_error_matches (error, G_IO_ERROR, G_IO_ERROR_FAILED))
///   {
///     // Assume that this is EPRINTERONFIRE
///     ...
///   }
/// ```
/// but should instead treat all unrecognized error codes the same as
/// `G_IO_ERROR_FAILED`.
/// 
/// See also `GPollableReturn` for a cheaper way of returning
/// `G_IO_ERROR_WOULD_BLOCK` to callers without allocating a `GError`.
public typealias _Gio_IOErrorEnum = GIOErrorEnum

/// Flags for use with `g_io_module_scope_new()`.
public typealias _Gio_IOModuleScopeFlags = GIOModuleScopeFlags

/// Memory availability warning levels.
/// 
/// Note that because new values might be added, it is recommended that applications check
/// `GMemoryMonitorWarningLevel` as ranges, for example:
/// (C Language Example):
/// ```C
/// if (warning_level > G_MEMORY_MONITOR_WARNING_LEVEL_LOW)
///   drop_caches ();
/// ```
/// 
public typealias _Gio_MemoryMonitorWarningLevel = GMemoryMonitorWarningLevel

/// `GMountOperationResult` is returned as a result when a request for
/// information is send by the mounting operation.
public typealias _Gio_MountOperationResult = GMountOperationResult

/// The host's network connectivity state, as reported by `GNetworkMonitor`.
public typealias _Gio_NetworkConnectivity = GNetworkConnectivity

/// Priority levels for `GNotifications`.
public typealias _Gio_NotificationPriority = GNotificationPriority

/// `GPasswordSave` is used to indicate the lifespan of a saved password.
/// 
/// `Gvfs` stores passwords in the Gnome keyring when this flag allows it
/// to, and later retrieves it again from there.
public typealias _Gio_PasswordSave = GPasswordSave

/// Return value for various IO operations that signal errors via the
/// return value and not necessarily via a `GError`.
/// 
/// This enum exists to be able to return errors to callers without having to
/// allocate a `GError`. Allocating `GErrors` can be quite expensive for
/// regularly happening errors like `G_IO_ERROR_WOULD_BLOCK`.
/// 
/// In case of `G_POLLABLE_RETURN_FAILED` a `GError` should be set for the
/// operation to give details about the error that happened.
public typealias _Gio_PollableReturn = GPollableReturn

/// An error code used with `G_RESOLVER_ERROR` in a `GError` returned
/// from a `GResolver` routine.
public typealias _Gio_ResolverError = GResolverError

/// The type of record that `g_resolver_lookup_records()` or
/// `g_resolver_lookup_records_async()` should retrieve. The records are returned
/// as lists of `GVariant` tuples. Each record type has different values in
/// the variant tuples returned.
/// 
/// `G_RESOLVER_RECORD_SRV` records are returned as variants with the signature
/// `(qqqs)`, containing a `guint16` with the priority, a `guint16` with the
/// weight, a `guint16` with the port, and a string of the hostname.
/// 
/// `G_RESOLVER_RECORD_MX` records are returned as variants with the signature
/// `(qs)`, representing a `guint16` with the preference, and a string containing
/// the mail exchanger hostname.
/// 
/// `G_RESOLVER_RECORD_TXT` records are returned as variants with the signature
/// `(as)`, representing an array of the strings in the text record. Note: Most TXT
/// records only contain a single string, but
/// [RFC 1035](https://tools.ietf.org/html/rfc1035`section-3.3.14`) does allow a
/// record to contain multiple strings. The RFC which defines the interpretation
/// of a specific TXT record will likely require concatenation of multiple
/// strings if they are present, as with
/// [RFC 7208](https://tools.ietf.org/html/rfc7208`section-3.3`).
/// 
/// `G_RESOLVER_RECORD_SOA` records are returned as variants with the signature
/// `(ssuuuuu)`, representing a string containing the primary name server, a
/// string containing the administrator, the serial as a `guint32`, the refresh
/// interval as a `guint32`, the retry interval as a `guint32`, the expire timeout
/// as a `guint32`, and the TTL as a `guint32`.
/// 
/// `G_RESOLVER_RECORD_NS` records are returned as variants with the signature
/// `(s)`, representing a string of the hostname of the name server.
public typealias _Gio_ResolverRecordType = GResolverRecordType

/// An error code used with `G_RESOURCE_ERROR` in a `GError` returned
/// from a `GResource` routine.
public typealias _Gio_ResourceError = GResourceError

/// Describes an event occurring on a `GSocketClient`. See the
/// `GSocketClient::event` signal for more details.
/// 
/// Additional values may be added to this type in the future.
public typealias _Gio_SocketClientEvent = GSocketClientEvent

/// The protocol family of a `GSocketAddress`. (These values are
/// identical to the system defines `AF_INET`, `AF_INET6` and `AF_UNIX`,
/// if available.)
public typealias _Gio_SocketFamily = GSocketFamily

/// Describes an event occurring on a `GSocketListener`. See the
/// `GSocketListener::event` signal for more details.
/// 
/// Additional values may be added to this type in the future.
public typealias _Gio_SocketListenerEvent = GSocketListenerEvent

/// A protocol identifier is specified when creating a `GSocket`, which is a
/// family/type specific identifier, where 0 means the default protocol for
/// the particular family/type.
/// 
/// This enum contains a set of commonly available and used protocols. You
/// can also pass any other identifiers handled by the platform in order to
/// use protocols not listed here.
public typealias _Gio_Socket_Protocol = GSocketProtocol

/// Flags used when creating a `GSocket`. Some protocols may not implement
/// all the socket types.
public typealias _Gio_SocketType = GSocketType

/// The client authentication mode for a `GTlsServerConnection`.
public typealias _Gio_TLSAuthenticationMode = GTlsAuthenticationMode

/// Flags for `g_tls_interaction_request_certificate()`,
/// `g_tls_interaction_request_certificate_async()`, and
/// `g_tls_interaction_invoke_request_certificate()`.
public typealias _Gio_TLSCertificateRequestFlags = GTlsCertificateRequestFlags

/// An error code used with `G_TLS_CHANNEL_BINDING_ERROR` in a `GError` to
/// indicate a TLS channel binding retrieval error.
public typealias _Gio_TLSChannelBindingError = GTlsChannelBindingError

/// The type of TLS channel binding data to retrieve from `GTlsConnection`
/// or `GDtlsConnection`, as documented by RFC 5929. The
/// [`tls-unique-for-telnet`](https://tools.ietf.org/html/rfc5929`section-5`)
/// binding type is not currently implemented.
public typealias _Gio_TLSChannelBindingType = GTlsChannelBindingType

/// Flags for `g_tls_database_lookup_certificate_for_handle()`,
/// `g_tls_database_lookup_certificate_issuer()`,
/// and `g_tls_database_lookup_certificates_issued_by()`.
public typealias _Gio_TLSDatabaseLookupFlags = GTlsDatabaseLookupFlags

/// An error code used with `G_TLS_ERROR` in a `GError` returned from a
/// TLS-related routine.
public typealias _Gio_TLSError = GTlsError

/// `GTlsInteractionResult` is returned by various functions in `GTlsInteraction`
/// when finishing an interaction request.
public typealias _Gio_TLSInteractionResult = GTlsInteractionResult

/// The TLS or DTLS protocol version used by a `GTlsConnection` or
/// `GDtlsConnection`. The integer values of these versions are sequential
/// to ensure newer known protocol versions compare greater than older
/// known versions. Any known DTLS protocol version will compare greater
/// than any SSL or TLS protocol version. The protocol version may be
/// `G_TLS_PROTOCOL_VERSION_UNKNOWN` if the TLS backend supports a newer
/// protocol version that GLib does not yet know about. This means that
/// it's possible for an unknown DTLS protocol version to compare less
/// than the TLS protocol versions.
public typealias _Gio_TLSProtocolVersion = GTlsProtocolVersion

/// When to allow rehandshaking. See
/// `g_tls_connection_set_rehandshake_mode()`.
///
/// **TLSRehandshakeMode is deprecated:**
/// Changing the rehandshake mode is no longer
///   required for compatibility. Also, rehandshaking has been removed
///   from the TLS protocol in TLS 1.3.
public typealias _Gio_TLSRehandshakeMode = GTlsRehandshakeMode

/// The type of name used by a `GUnixSocketAddress`.
/// `G_UNIX_SOCKET_ADDRESS_PATH` indicates a traditional unix domain
/// socket bound to a filesystem path. `G_UNIX_SOCKET_ADDRESS_ANONYMOUS`
/// indicates a socket not bound to any name (eg, a client-side socket,
/// or a socket created with `socketpair()`).
/// 
/// For abstract sockets, there are two incompatible ways of naming
/// them; the man pages suggest using the entire `struct sockaddr_un`
/// as the name, padding the unused parts of the `sun_path` field with
/// zeroes; this corresponds to `G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED`.
/// However, many programs instead just use a portion of `sun_path`, and
/// pass an appropriate smaller length to `bind()` or `connect()`. This is
/// `G_UNIX_SOCKET_ADDRESS_ABSTRACT`.
public typealias _Gio_UnixSocketAddressType = GUnixSocketAddressType

/// Used to select the type of data format to use for `GZlibDecompressor`
/// and `GZlibCompressor`.
public typealias _Gio_ZlibCompressorFormat = GZlibCompressorFormat


/// Flags used when creating a `GAppInfo`.
public typealias _Gio_AppInfoCreateFlags = GAppInfoCreateFlags

/// Flags used to define the behaviour of a `GApplication`.
public typealias _Gio_ApplicationFlags = GApplicationFlags

/// `GAskPasswordFlags` are used to request specific information from the
/// user, or to notify the user of their choices in an authentication
/// situation.
public typealias _Gio_AskPasswordFlags = GAskPasswordFlags

/// Flags used in `g_bus_own_name()`.
public typealias _Gio_BusNameOwnerFlags = GBusNameOwnerFlags

/// Flags used in `g_bus_watch_name()`.
public typealias _Gio_BusNameWatcherFlags = GBusNameWatcherFlags

/// Flags used when calling a `g_converter_convert()`.
public typealias _Gio_ConverterFlags = GConverterFlags

/// Flags used in `g_dbus_connection_call()` and similar APIs.
public typealias _Gio_DBusCallFlags = GDBusCallFlags

/// Capabilities negotiated with the remote peer.
public typealias _Gio_DBusCapabilityFlags = GDBusCapabilityFlags

/// Flags used when creating a new `GDBusConnection`.
public typealias _Gio_DBusConnectionFlags = GDBusConnectionFlags

/// Flags describing the behavior of a `GDBusInterfaceSkeleton` instance.
public typealias _Gio_DBusInterfaceSkeletonFlags = GDBusInterfaceSkeletonFlags

/// Message flags used in `GDBusMessage`.
public typealias _Gio_DBusMessageFlags = GDBusMessageFlags

/// Flags used when constructing a `GDBusObjectManagerClient`.
public typealias _Gio_DBusObjectManagerClientFlags = GDBusObjectManagerClientFlags

/// Flags describing the access control of a D-Bus property.
public typealias _Gio_DBusPropertyInfoFlags = GDBusPropertyInfoFlags

/// Flags used when constructing an instance of a `GDBusProxy` derived class.
public typealias _Gio_DBusProxyFlags = GDBusProxyFlags

/// Flags used when sending `GDBusMessages` on a `GDBusConnection`.
public typealias _Gio_DBusSendMessageFlags = GDBusSendMessageFlags

/// Flags used when creating a `GDBusServer`.
public typealias _Gio_DBusServerFlags = GDBusServerFlags

/// Flags used when subscribing to signals via `g_dbus_connection_signal_subscribe()`.
public typealias _Gio_DBusSignalFlags = GDBusSignalFlags

/// Flags passed to `g_dbus_connection_register_subtree()`.
public typealias _Gio_DBusSubtreeFlags = GDBusSubtreeFlags

/// Flags used when starting a drive.
public typealias _Gio_DriveStartFlags = GDriveStartFlags

/// Flags specifying the behaviour of an attribute.
public typealias _Gio_FileAttributeInfoFlags = GFileAttributeInfoFlags

/// Flags used when copying or moving files.
public typealias _Gio_FileCopyFlags = GFileCopyFlags

/// Flags used when an operation may create a file.
public typealias _Gio_FileCreateFlags = GFileCreateFlags

/// Flags that can be used with `g_file_measure_disk_usage()`.
public typealias _Gio_FileMeasureFlags = GFileMeasureFlags

/// Flags used to set what a `GFileMonitor` will watch for.
public typealias _Gio_FileMonitorFlags = GFileMonitorFlags

/// Flags used when querying a `GFileInfo`.
public typealias _Gio_FileQueryInfoFlags = GFileQueryInfoFlags

/// GIOStreamSpliceFlags determine how streams should be spliced.
public typealias _Gio_IOStreamSpliceFlags = GIOStreamSpliceFlags

/// Flags used when mounting a mount.
public typealias _Gio_MountMountFlags = GMountMountFlags

/// Flags used when an unmounting a mount.
public typealias _Gio_MountUnmountFlags = GMountUnmountFlags

/// GOutputStreamSpliceFlags determine how streams should be spliced.
public typealias _Gio_OutputStreamSpliceFlags = GOutputStreamSpliceFlags

/// Flags to modify lookup behavior.
public typealias _Gio_ResolverNameLookupFlags = GResolverNameLookupFlags

/// GResourceFlags give information about a particular file inside a resource
/// bundle.
public typealias _Gio_ResourceFlags = GResourceFlags

/// GResourceLookupFlags determine how resource path lookups are handled.
public typealias _Gio_ResourceLookupFlags = GResourceLookupFlags

/// Flags used when creating a binding. These flags determine in which
/// direction the binding works. The default is to synchronize in both
/// directions.
public typealias _Gio_SettingsBindFlags = GSettingsBindFlags

/// Flags used in `g_socket_receive_message()` and `g_socket_send_message()`.
/// The flags listed in the enum are some commonly available flags, but the
/// values used for them are the same as on the platform, and any other flags
/// are passed in/out as is. So to use a platform specific flag, just include
/// the right system header and pass in the flag.
public typealias _Gio_SocketMsgFlags = GSocketMsgFlags

/// Flags to define the behaviour of a `GSubprocess`.
/// 
/// Note that the default for stdin is to redirect from `/dev/null`.  For
/// stdout and stderr the default are for them to inherit the
/// corresponding descriptor from the calling process.
/// 
/// Note that it is a programmer error to mix 'incompatible' flags.  For
/// example, you may not request both `G_SUBPROCESS_FLAGS_STDOUT_PIPE` and
/// `G_SUBPROCESS_FLAGS_STDOUT_SILENCE`.
public typealias _Gio_SubprocessFlags = GSubprocessFlags

/// Flags to define future `GTestDBus` behaviour.
public typealias _Gio_TestDBusFlags = GTestDBusFlags

/// A set of flags describing TLS certification validation. This can be
/// used to set which validation steps to perform (eg, with
/// `g_tls_client_connection_set_validation_flags()`), or to describe why
/// a particular certificate was rejected (eg, in
/// `GTlsConnection::accept-certificate`).
public typealias _Gio_TLSCertificateFlags = GTlsCertificateFlags

/// Flags for `g_tls_database_verify_chain()`.
public typealias _Gio_TLSDatabaseVerifyFlags = GTlsDatabaseVerifyFlags

/// Various flags for the password.
public typealias _Gio_TLSPasswordFlags = GTlsPasswordFlags



public enum Gio {
/// The value returned by handlers of the signals generated by
/// the `gdbus-codegen` tool to indicate that a method call has been
/// handled by an implementation. It is equal to `true`, but using
/// this macro is sometimes more readable.
/// 
/// In code that needs to be backwards-compatible with older GLib,
/// use `true` instead, often written like this:
/// 
/// ```
///   g_dbus_method_invocation_return_error (invocation, ...);
///   return TRUE;    // handled
/// ```
/// 
    public static let DBUS_METHOD_INVOCATION_HANDLED = 0 // G_DBUS_METHOD_INVOCATION_HANDLED
/// The value returned by handlers of the signals generated by
/// the `gdbus-codegen` tool to indicate that a method call has not been
/// handled by an implementation. It is equal to `false`, but using
/// this macro is sometimes more readable.
/// 
/// In code that needs to be backwards-compatible with older GLib,
/// use `false` instead.
    public static let DBUS_METHOD_INVOCATION_UNHANDLED = 1 // G_DBUS_METHOD_INVOCATION_UNHANDLED
    /// The string used to obtain a Unix device path with `g_drive_get_identifier()`.
    public static let DRIVE_IDENTIFIER_KIND_UNIX_DEVICE = G_DRIVE_IDENTIFIER_KIND_UNIX_DEVICE // 2

    /// A key in the "access" namespace for checking deletion privileges.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
    /// 
    /// This attribute will be `true` if the user is able to delete the file.
    public static let FILE_ATTRIBUTE_ACCESS_CAN_DELETE = G_FILE_ATTRIBUTE_ACCESS_CAN_DELETE // 3

    /// A key in the "access" namespace for getting execution privileges.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
    /// 
    /// This attribute will be `true` if the user is able to execute the file.
    public static let FILE_ATTRIBUTE_ACCESS_CAN_EXECUTE = G_FILE_ATTRIBUTE_ACCESS_CAN_EXECUTE // 4

    /// A key in the "access" namespace for getting read privileges.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
    /// 
    /// This attribute will be `true` if the user is able to read the file.
    public static let FILE_ATTRIBUTE_ACCESS_CAN_READ = G_FILE_ATTRIBUTE_ACCESS_CAN_READ // 5

    /// A key in the "access" namespace for checking renaming privileges.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
    /// 
    /// This attribute will be `true` if the user is able to rename the file.
    public static let FILE_ATTRIBUTE_ACCESS_CAN_RENAME = G_FILE_ATTRIBUTE_ACCESS_CAN_RENAME // 6

    /// A key in the "access" namespace for checking trashing privileges.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
    /// 
    /// This attribute will be `true` if the user is able to move the file to
    /// the trash.
    public static let FILE_ATTRIBUTE_ACCESS_CAN_TRASH = G_FILE_ATTRIBUTE_ACCESS_CAN_TRASH // 7

    /// A key in the "access" namespace for getting write privileges.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
    /// 
    /// This attribute will be `true` if the user is able to write to the file.
    public static let FILE_ATTRIBUTE_ACCESS_CAN_WRITE = G_FILE_ATTRIBUTE_ACCESS_CAN_WRITE // 8

    /// A key in the "dos" namespace for checking if the file's archive flag
    /// is set.
    /// 
    /// This attribute is `true` if the archive flag is set.
    /// 
    /// This attribute is only available for DOS file systems.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
    public static let FILE_ATTRIBUTE_DOS_IS_ARCHIVE = G_FILE_ATTRIBUTE_DOS_IS_ARCHIVE // 9

    /// A key in the "dos" namespace for checking if the file is a NTFS mount point
    /// (a volume mount or a junction point).
    /// 
    /// This attribute is `true` if file is a reparse point of type
    /// [IO_REPARSE_TAG_MOUNT_POINT](https://msdn.microsoft.com/en-us/library/dd541667.aspx).
    /// 
    /// This attribute is only available for DOS file systems.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
    public static let FILE_ATTRIBUTE_DOS_IS_MOUNTPOINT = G_FILE_ATTRIBUTE_DOS_IS_MOUNTPOINT // 10

    /// A key in the "dos" namespace for checking if the file's backup flag
    /// is set.
    /// 
    /// This attribute is `true` if the backup flag is set.
    /// 
    /// This attribute is only available for DOS file systems.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
    public static let FILE_ATTRIBUTE_DOS_IS_SYSTEM = G_FILE_ATTRIBUTE_DOS_IS_SYSTEM // 11

    /// A key in the "dos" namespace for getting the file NTFS reparse tag.
    /// 
    /// This value is 0 for files that are not reparse points.
    /// 
    /// See the [Reparse Tags](https://msdn.microsoft.com/en-us/library/dd541667.aspx)
    /// page for possible reparse tag values.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT32`.
    public static let FILE_ATTRIBUTE_DOS_REPARSE_POINT_TAG = G_FILE_ATTRIBUTE_DOS_REPARSE_POINT_TAG // 12

    /// A key in the "etag" namespace for getting the value of the file's
    /// entity tag.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_STRING`.
    public static let FILE_ATTRIBUTE_ETAG_VALUE = G_FILE_ATTRIBUTE_ETAG_VALUE // 13

    /// A key in the "filesystem" namespace for getting the number of bytes
    /// of free space left on the file system.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT64`.
    public static let FILE_ATTRIBUTE_FILESYSTEM_FREE = G_FILE_ATTRIBUTE_FILESYSTEM_FREE // 14

    /// A key in the "filesystem" namespace for checking if the file system
    /// is read only.
    /// 
    /// Is set to `true` if the file system is read only.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
    public static let FILE_ATTRIBUTE_FILESYSTEM_READONLY = G_FILE_ATTRIBUTE_FILESYSTEM_READONLY // 15

    /// A key in the "filesystem" namespace for checking if the file system
    /// is remote.
    /// 
    /// Is set to `true` if the file system is remote.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
    public static let FILE_ATTRIBUTE_FILESYSTEM_REMOTE = G_FILE_ATTRIBUTE_FILESYSTEM_REMOTE // 16

    /// A key in the "filesystem" namespace for getting the total size (in
    /// bytes) of the file system, used in `g_file_query_filesystem_info()`.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT64`.
    public static let FILE_ATTRIBUTE_FILESYSTEM_SIZE = G_FILE_ATTRIBUTE_FILESYSTEM_SIZE // 17

    /// A key in the "filesystem" namespace for getting the file system's type.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_STRING`.
    public static let FILE_ATTRIBUTE_FILESYSTEM_TYPE = G_FILE_ATTRIBUTE_FILESYSTEM_TYPE // 18

    /// A key in the "filesystem" namespace for getting the number of bytes
    /// used by data on the file system.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT64`.
    public static let FILE_ATTRIBUTE_FILESYSTEM_USED = G_FILE_ATTRIBUTE_FILESYSTEM_USED // 19

    /// A key in the "filesystem" namespace for hinting a file manager
    /// application whether it should preview (e.g. thumbnail) files on the
    /// file system.
    /// 
    /// The value for this key contain a `GFilesystemPreviewType`.
    public static let FILE_ATTRIBUTE_FILESYSTEM_USE_PREVIEW = G_FILE_ATTRIBUTE_FILESYSTEM_USE_PREVIEW // 20

    /// A key in the "gvfs" namespace that gets the name of the current
    /// GVFS backend in use.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_STRING`.
    public static let FILE_ATTRIBUTE_GVFS_BACKEND = G_FILE_ATTRIBUTE_GVFS_BACKEND // 21

    /// A key in the "id" namespace for getting a file identifier.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_STRING`.
    /// 
    /// An example use would be during listing files, to avoid recursive
    /// directory scanning.
    public static let FILE_ATTRIBUTE_ID_FILE = G_FILE_ATTRIBUTE_ID_FILE // 22

    /// A key in the "id" namespace for getting the file system identifier.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_STRING`.
    /// 
    /// An example use would be during drag and drop to see if the source
    /// and target are on the same filesystem (default to move) or not (default
    /// to copy).
    public static let FILE_ATTRIBUTE_ID_FILESYSTEM = G_FILE_ATTRIBUTE_ID_FILESYSTEM // 23

    /// A key in the "mountable" namespace for checking if a file (of
    /// type G_FILE_TYPE_MOUNTABLE) can be ejected.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
    public static let FILE_ATTRIBUTE_MOUNTABLE_CAN_EJECT = G_FILE_ATTRIBUTE_MOUNTABLE_CAN_EJECT // 24

    /// A key in the "mountable" namespace for checking if a file (of
    /// type G_FILE_TYPE_MOUNTABLE) is mountable.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
    public static let FILE_ATTRIBUTE_MOUNTABLE_CAN_MOUNT = G_FILE_ATTRIBUTE_MOUNTABLE_CAN_MOUNT // 25

    /// A key in the "mountable" namespace for checking if a file (of
    /// type G_FILE_TYPE_MOUNTABLE) can be polled.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
    public static let FILE_ATTRIBUTE_MOUNTABLE_CAN_POLL = G_FILE_ATTRIBUTE_MOUNTABLE_CAN_POLL // 26

    /// A key in the "mountable" namespace for checking if a file (of
    /// type G_FILE_TYPE_MOUNTABLE) can be started.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
    public static let FILE_ATTRIBUTE_MOUNTABLE_CAN_START = G_FILE_ATTRIBUTE_MOUNTABLE_CAN_START // 27

    /// A key in the "mountable" namespace for checking if a file (of
    /// type G_FILE_TYPE_MOUNTABLE) can be started degraded.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
    public static let FILE_ATTRIBUTE_MOUNTABLE_CAN_START_DEGRADED = G_FILE_ATTRIBUTE_MOUNTABLE_CAN_START_DEGRADED // 28

    /// A key in the "mountable" namespace for checking if a file (of
    /// type G_FILE_TYPE_MOUNTABLE) can be stopped.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
    public static let FILE_ATTRIBUTE_MOUNTABLE_CAN_STOP = G_FILE_ATTRIBUTE_MOUNTABLE_CAN_STOP // 29

    /// A key in the "mountable" namespace for checking if a file (of
    /// type G_FILE_TYPE_MOUNTABLE)  is unmountable.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
    public static let FILE_ATTRIBUTE_MOUNTABLE_CAN_UNMOUNT = G_FILE_ATTRIBUTE_MOUNTABLE_CAN_UNMOUNT // 30

    /// A key in the "mountable" namespace for getting the HAL UDI for the mountable
    /// file.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_STRING`.
    public static let FILE_ATTRIBUTE_MOUNTABLE_HAL_UDI = G_FILE_ATTRIBUTE_MOUNTABLE_HAL_UDI // 31

    /// A key in the "mountable" namespace for checking if a file (of
    /// type G_FILE_TYPE_MOUNTABLE) is automatically polled for media.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
    public static let FILE_ATTRIBUTE_MOUNTABLE_IS_MEDIA_CHECK_AUTOMATIC = G_FILE_ATTRIBUTE_MOUNTABLE_IS_MEDIA_CHECK_AUTOMATIC // 32

    /// A key in the "mountable" namespace for getting the `GDriveStartStopType`.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT32`.
    public static let FILE_ATTRIBUTE_MOUNTABLE_START_STOP_TYPE = G_FILE_ATTRIBUTE_MOUNTABLE_START_STOP_TYPE // 33

    /// A key in the "mountable" namespace for getting the unix device.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT32`.
    public static let FILE_ATTRIBUTE_MOUNTABLE_UNIX_DEVICE = G_FILE_ATTRIBUTE_MOUNTABLE_UNIX_DEVICE // 34

    /// A key in the "mountable" namespace for getting the unix device file.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_STRING`.
    public static let FILE_ATTRIBUTE_MOUNTABLE_UNIX_DEVICE_FILE = G_FILE_ATTRIBUTE_MOUNTABLE_UNIX_DEVICE_FILE // 35

    /// A key in the "owner" namespace for getting the file owner's group.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_STRING`.
    public static let FILE_ATTRIBUTE_OWNER_GROUP = G_FILE_ATTRIBUTE_OWNER_GROUP // 36

    /// A key in the "owner" namespace for getting the user name of the
    /// file's owner.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_STRING`.
    public static let FILE_ATTRIBUTE_OWNER_USER = G_FILE_ATTRIBUTE_OWNER_USER // 37

    /// A key in the "owner" namespace for getting the real name of the
    /// user that owns the file.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_STRING`.
    public static let FILE_ATTRIBUTE_OWNER_USER_REAL = G_FILE_ATTRIBUTE_OWNER_USER_REAL // 38

    /// A key in the "preview" namespace for getting a `GIcon` that can be
    /// used to get preview of the file.
    /// 
    /// For example, it may be a low resolution thumbnail without metadata.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_OBJECT`.
    /// 
    /// The value for this key should contain a `GIcon`.
    public static let FILE_ATTRIBUTE_PREVIEW_ICON = G_FILE_ATTRIBUTE_PREVIEW_ICON // 39

    /// A key in the "recent" namespace for getting time, when the metadata for the
    /// file in `recent:///` was last changed.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_INT64`.
    public static let FILE_ATTRIBUTE_RECENT_MODIFIED = G_FILE_ATTRIBUTE_RECENT_MODIFIED // 40

    /// A key in the "selinux" namespace for getting the file's SELinux
    /// context.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_STRING`.
    /// 
    /// Note that this attribute is only available if GLib has been built
    /// with SELinux support.
    public static let FILE_ATTRIBUTE_SELINUX_CONTEXT = G_FILE_ATTRIBUTE_SELINUX_CONTEXT // 41

    /// A key in the "standard" namespace for getting the amount of disk space
    /// that is consumed by the file (in bytes).
    /// 
    /// This will generally be larger than the file size (due to block size
    /// overhead) but can occasionally be smaller (for example, for sparse files).
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT64`.
    public static let FILE_ATTRIBUTE_STANDARD_ALLOCATED_SIZE = G_FILE_ATTRIBUTE_STANDARD_ALLOCATED_SIZE // 42

    /// A key in the "standard" namespace for getting the content type of the file.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_STRING`.
    /// 
    /// The value for this key should contain a valid content type.
    public static let FILE_ATTRIBUTE_STANDARD_CONTENT_TYPE = G_FILE_ATTRIBUTE_STANDARD_CONTENT_TYPE // 43

    /// A key in the "standard" namespace for getting the copy name of the file.
    /// 
    /// The copy name is an optional version of the name. If available it's always
    /// in UTF8, and corresponds directly to the original filename (only transcoded to
    /// UTF8). This is useful if you want to copy the file to another filesystem that
    /// might have a different encoding. If the filename is not a valid string in the
    /// encoding selected for the filesystem it is in then the copy name will not be set.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_STRING`.
    public static let FILE_ATTRIBUTE_STANDARD_COPY_NAME = G_FILE_ATTRIBUTE_STANDARD_COPY_NAME // 44

    /// A key in the "standard" namespace for getting the description of the file.
    /// 
    /// The description is a utf8 string that describes the file, generally containing
    /// the filename, but can also contain further information. Example descriptions
    /// could be "filename (on hostname)" for a remote file or "filename (in trash)"
    /// for a file in the trash. This is useful for instance as the window title
    /// when displaying a directory or for a bookmarks menu.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_STRING`.
    public static let FILE_ATTRIBUTE_STANDARD_DESCRIPTION = G_FILE_ATTRIBUTE_STANDARD_DESCRIPTION // 45

    /// A key in the "standard" namespace for getting the display name of the file.
    /// 
    /// A display name is guaranteed to be in UTF-8 and can thus be displayed in
    /// the UI. It is guaranteed to be set on every file.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_STRING`.
    public static let FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME = G_FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME // 46

    /// A key in the "standard" namespace for edit name of the file.
    /// 
    /// An edit name is similar to the display name, but it is meant to be
    /// used when you want to rename the file in the UI. The display name
    /// might contain information you don't want in the new filename (such as
    /// "(invalid unicode)" if the filename was in an invalid encoding).
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_STRING`.
    public static let FILE_ATTRIBUTE_STANDARD_EDIT_NAME = G_FILE_ATTRIBUTE_STANDARD_EDIT_NAME // 47

    /// A key in the "standard" namespace for getting the fast content type.
    /// 
    /// The fast content type isn't as reliable as the regular one, as it
    /// only uses the filename to guess it, but it is faster to calculate than the
    /// regular content type.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_STRING`.
    public static let FILE_ATTRIBUTE_STANDARD_FAST_CONTENT_TYPE = G_FILE_ATTRIBUTE_STANDARD_FAST_CONTENT_TYPE // 48

    /// A key in the "standard" namespace for getting the icon for the file.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_OBJECT`.
    /// 
    /// The value for this key should contain a `GIcon`.
    public static let FILE_ATTRIBUTE_STANDARD_ICON = G_FILE_ATTRIBUTE_STANDARD_ICON // 49

    /// A key in the "standard" namespace for checking if a file is a backup file.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
    public static let FILE_ATTRIBUTE_STANDARD_IS_BACKUP = G_FILE_ATTRIBUTE_STANDARD_IS_BACKUP // 50

    /// A key in the "standard" namespace for checking if a file is hidden.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
    public static let FILE_ATTRIBUTE_STANDARD_IS_HIDDEN = G_FILE_ATTRIBUTE_STANDARD_IS_HIDDEN // 51

    /// A key in the "standard" namespace for checking if the file is a symlink.
    /// Typically the actual type is something else, if we followed the symlink
    /// to get the type.
    /// 
    /// On Windows NTFS mountpoints are considered to be symlinks as well.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
    public static let FILE_ATTRIBUTE_STANDARD_IS_SYMLINK = G_FILE_ATTRIBUTE_STANDARD_IS_SYMLINK // 52

    /// A key in the "standard" namespace for checking if a file is virtual.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
    public static let FILE_ATTRIBUTE_STANDARD_IS_VIRTUAL = G_FILE_ATTRIBUTE_STANDARD_IS_VIRTUAL // 53

    /// A key in the "standard" namespace for checking if a file is
    /// volatile. This is meant for opaque, non-POSIX-like backends to
    /// indicate that the URI is not persistent. Applications should look
    /// at `G_FILE_ATTRIBUTE_STANDARD_SYMLINK_TARGET` for the persistent URI.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
    public static let FILE_ATTRIBUTE_STANDARD_IS_VOLATILE = G_FILE_ATTRIBUTE_STANDARD_IS_VOLATILE // 54

    /// A key in the "standard" namespace for getting the name of the file.
    /// 
    /// The name is the on-disk filename which may not be in any known encoding,
    /// and can thus not be generally displayed as is. It is guaranteed to be set on
    /// every file.
    /// 
    /// Use `G_FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME` if you need to display the
    /// name in a user interface.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BYTE_STRING`.
    public static let FILE_ATTRIBUTE_STANDARD_NAME = G_FILE_ATTRIBUTE_STANDARD_NAME // 55

    /// A key in the "standard" namespace for getting the file's size (in bytes).
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT64`.
    public static let FILE_ATTRIBUTE_STANDARD_SIZE = G_FILE_ATTRIBUTE_STANDARD_SIZE // 56

    /// A key in the "standard" namespace for setting the sort order of a file.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_INT32`.
    /// 
    /// An example use would be in file managers, which would use this key
    /// to set the order files are displayed. Files with smaller sort order
    /// should be sorted first, and files without sort order as if sort order
    /// was zero.
    public static let FILE_ATTRIBUTE_STANDARD_SORT_ORDER = G_FILE_ATTRIBUTE_STANDARD_SORT_ORDER // 57

    /// A key in the "standard" namespace for getting the symbolic icon for the file.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_OBJECT`.
    /// 
    /// The value for this key should contain a `GIcon`.
    public static let FILE_ATTRIBUTE_STANDARD_SYMBOLIC_ICON = G_FILE_ATTRIBUTE_STANDARD_SYMBOLIC_ICON // 58

    /// A key in the "standard" namespace for getting the symlink target, if the file
    /// is a symlink.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BYTE_STRING`.
    public static let FILE_ATTRIBUTE_STANDARD_SYMLINK_TARGET = G_FILE_ATTRIBUTE_STANDARD_SYMLINK_TARGET // 59

    /// A key in the "standard" namespace for getting the target URI for the file, in
    /// the case of `G_FILE_TYPE_SHORTCUT` or `G_FILE_TYPE_MOUNTABLE` files.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_STRING`.
    public static let FILE_ATTRIBUTE_STANDARD_TARGET_URI = G_FILE_ATTRIBUTE_STANDARD_TARGET_URI // 60

    /// A key in the "standard" namespace for storing file types.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT32`.
    /// 
    /// The value for this key should contain a `GFileType`.
    public static let FILE_ATTRIBUTE_STANDARD_TYPE = G_FILE_ATTRIBUTE_STANDARD_TYPE // 61

    /// A key in the "thumbnail" namespace for checking if thumbnailing failed.
    /// 
    /// This attribute is `true` if thumbnailing failed.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
    public static let FILE_ATTRIBUTE_THUMBNAILING_FAILED = G_FILE_ATTRIBUTE_THUMBNAILING_FAILED // 62

    /// A key in the "thumbnail" namespace for checking whether the thumbnail is outdated.
    /// 
    /// This attribute is `true` if the thumbnail is up-to-date with the file it represents,
    /// and `false` if the file has been modified since the thumbnail was generated.
    /// 
    /// If `G_FILE_ATTRIBUTE_THUMBNAILING_FAILED` is `true` and this attribute is `false`,
    /// it indicates that thumbnailing may be attempted again and may succeed.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
    public static let FILE_ATTRIBUTE_THUMBNAIL_IS_VALID = G_FILE_ATTRIBUTE_THUMBNAIL_IS_VALID // 63

    /// A key in the "thumbnail" namespace for getting the path to the thumbnail
    /// image.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BYTE_STRING`.
    public static let FILE_ATTRIBUTE_THUMBNAIL_PATH = G_FILE_ATTRIBUTE_THUMBNAIL_PATH // 64

    /// A key in the "time" namespace for getting the time the file was last
    /// accessed.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT64`, and
    /// contains the time since the file was last accessed, in seconds since the
    /// UNIX epoch.
    public static let FILE_ATTRIBUTE_TIME_ACCESS = G_FILE_ATTRIBUTE_TIME_ACCESS // 65

    /// A key in the "time" namespace for getting the microseconds of the time
    /// the file was last accessed.
    /// 
    /// This should be used in conjunction with `G_FILE_ATTRIBUTE_TIME_ACCESS`.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT32`.
    public static let FILE_ATTRIBUTE_TIME_ACCESS_USEC = G_FILE_ATTRIBUTE_TIME_ACCESS_USEC // 66

    /// A key in the "time" namespace for getting the time the file was last
    /// changed.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT64`,
    /// and contains the time since the file was last changed, in seconds since
    /// the UNIX epoch.
    /// 
    /// This corresponds to the traditional UNIX ctime.
    public static let FILE_ATTRIBUTE_TIME_CHANGED = G_FILE_ATTRIBUTE_TIME_CHANGED // 67

    /// A key in the "time" namespace for getting the microseconds of the time
    /// the file was last changed.
    /// 
    /// This should be used in conjunction with `G_FILE_ATTRIBUTE_TIME_CHANGED`.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT32`.
    public static let FILE_ATTRIBUTE_TIME_CHANGED_USEC = G_FILE_ATTRIBUTE_TIME_CHANGED_USEC // 68

    /// A key in the "time" namespace for getting the time the file was created.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT64`,
    /// and contains the time since the file was created, in seconds since the UNIX
    /// epoch.
    /// 
    /// This may correspond to Linux `stx_btime`, FreeBSD `st_birthtim`, NetBSD
    /// `st_birthtime` or NTFS `ctime`.
    public static let FILE_ATTRIBUTE_TIME_CREATED = G_FILE_ATTRIBUTE_TIME_CREATED // 69

    /// A key in the "time" namespace for getting the microseconds of the time
    /// the file was created.
    /// 
    /// This should be used in conjunction with `G_FILE_ATTRIBUTE_TIME_CREATED`.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT32`.
    public static let FILE_ATTRIBUTE_TIME_CREATED_USEC = G_FILE_ATTRIBUTE_TIME_CREATED_USEC // 70

    /// A key in the "time" namespace for getting the time the file was last
    /// modified.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT64`, and
    /// contains the time since the file was modified, in seconds since the UNIX
    /// epoch.
    public static let FILE_ATTRIBUTE_TIME_MODIFIED = G_FILE_ATTRIBUTE_TIME_MODIFIED // 71

    /// A key in the "time" namespace for getting the microseconds of the time
    /// the file was last modified.
    /// 
    /// This should be used in conjunction with `G_FILE_ATTRIBUTE_TIME_MODIFIED`.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT32`.
    public static let FILE_ATTRIBUTE_TIME_MODIFIED_USEC = G_FILE_ATTRIBUTE_TIME_MODIFIED_USEC // 72

    /// A key in the "trash" namespace for getting the deletion date and time
    /// of a file inside the `trash:///` folder.
    /// 
    /// The format of the returned string is `YYYY-MM-DDThh:mm:ss`.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_STRING`.
    public static let FILE_ATTRIBUTE_TRASH_DELETION_DATE = G_FILE_ATTRIBUTE_TRASH_DELETION_DATE // 73

    /// A key in the "trash" namespace for getting the number of (toplevel) items
    /// that are present in the `trash:///` folder.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT32`.
    public static let FILE_ATTRIBUTE_TRASH_ITEM_COUNT = G_FILE_ATTRIBUTE_TRASH_ITEM_COUNT // 74

    /// A key in the "trash" namespace for getting the original path of a file
    /// inside the `trash:///` folder before it was trashed.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BYTE_STRING`.
    public static let FILE_ATTRIBUTE_TRASH_ORIG_PATH = G_FILE_ATTRIBUTE_TRASH_ORIG_PATH // 75

    /// A key in the "unix" namespace for getting the number of blocks allocated
    /// for the file.
    /// 
    /// This attribute is only available for UNIX file systems.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT64`.
    public static let FILE_ATTRIBUTE_UNIX_BLOCKS = G_FILE_ATTRIBUTE_UNIX_BLOCKS // 76

    /// A key in the "unix" namespace for getting the block size for the file
    /// system.
    /// 
    /// This attribute is only available for UNIX file systems.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT32`.
    public static let FILE_ATTRIBUTE_UNIX_BLOCK_SIZE = G_FILE_ATTRIBUTE_UNIX_BLOCK_SIZE // 77

    /// A key in the "unix" namespace for getting the device id of the device the
    /// file is located on (see `stat()` documentation).
    /// 
    /// This attribute is only available for UNIX file systems.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT32`.
    public static let FILE_ATTRIBUTE_UNIX_DEVICE = G_FILE_ATTRIBUTE_UNIX_DEVICE // 78

    /// A key in the "unix" namespace for getting the group ID for the file.
    /// 
    /// This attribute is only available for UNIX file systems.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT32`.
    public static let FILE_ATTRIBUTE_UNIX_GID = G_FILE_ATTRIBUTE_UNIX_GID // 79

    /// A key in the "unix" namespace for getting the inode of the file.
    /// 
    /// This attribute is only available for UNIX file systems.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT64`.
    public static let FILE_ATTRIBUTE_UNIX_INODE = G_FILE_ATTRIBUTE_UNIX_INODE // 80

    /// A key in the "unix" namespace for checking if the file represents a
    /// UNIX mount point.
    /// 
    /// This attribute is `true` if the file is a UNIX mount point.
    /// 
    /// Since 2.58, `/` is considered to be a mount point.
    /// 
    /// This attribute is only available for UNIX file systems.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_BOOLEAN`.
    public static let FILE_ATTRIBUTE_UNIX_IS_MOUNTPOINT = G_FILE_ATTRIBUTE_UNIX_IS_MOUNTPOINT // 81

    /// A key in the "unix" namespace for getting the mode of the file
    /// (e.g. whether the file is a regular file, symlink, etc).
    /// 
    /// See the documentation for ``lstat()``: this attribute is equivalent to
    /// the `st_mode` member of `struct stat`, and includes both the file type
    /// and permissions.
    /// 
    /// This attribute is only available for UNIX file systems.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT32`.
    public static let FILE_ATTRIBUTE_UNIX_MODE = G_FILE_ATTRIBUTE_UNIX_MODE // 82

    /// A key in the "unix" namespace for getting the number of hard links
    /// for a file.
    /// 
    /// See the documentation for ``lstat()``.
    /// 
    /// This attribute is only available for UNIX file systems.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT32`.
    public static let FILE_ATTRIBUTE_UNIX_NLINK = G_FILE_ATTRIBUTE_UNIX_NLINK // 83

    /// A key in the "unix" namespace for getting the device ID for the file
    /// (if it is a special file).
    /// 
    /// See the documentation for ``lstat()``.
    /// 
    /// This attribute is only available for UNIX file systems.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT32`.
    public static let FILE_ATTRIBUTE_UNIX_RDEV = G_FILE_ATTRIBUTE_UNIX_RDEV // 84

    /// A key in the "unix" namespace for getting the user ID for the file.
    /// 
    /// This attribute is only available for UNIX file systems.
    /// 
    /// Corresponding `GFileAttributeType` is `G_FILE_ATTRIBUTE_TYPE_UINT32`.
    public static let FILE_ATTRIBUTE_UNIX_UID = G_FILE_ATTRIBUTE_UNIX_UID // 85

    /// Extension point for memory usage monitoring functionality.
    /// See [Extending GIO](#extending-gio).
    public static let MEMORY_MONITOR_EXTENSION_POINT_NAME = G_MEMORY_MONITOR_EXTENSION_POINT_NAME // 86

    /// The menu item attribute which holds the action name of the item.  Action
    /// names are namespaced with an identifier for the action group in which the
    /// action resides. For example, "win." for window-specific actions and "app."
    /// for application-wide actions.
    /// 
    /// See also `g_menu_model_get_item_attribute()` and `g_menu_item_set_attribute()`.
    public static let MENU_ATTRIBUTE_ACTION = G_MENU_ATTRIBUTE_ACTION // 87

    /// The menu item attribute that holds the namespace for all action names in
    /// menus that are linked from this item.
    public static let MENU_ATTRIBUTE_ACTION_NAMESPACE = G_MENU_ATTRIBUTE_ACTION_NAMESPACE // 88

    /// The menu item attribute which holds the icon of the item.
    /// 
    /// The icon is stored in the format returned by `g_icon_serialize()`.
    /// 
    /// This attribute is intended only to represent 'noun' icons such as
    /// favicons for a webpage, or application icons.  It should not be used
    /// for 'verbs' (ie: stock icons).
    public static let MENU_ATTRIBUTE_ICON = G_MENU_ATTRIBUTE_ICON // 89

    /// The menu item attribute which holds the label of the item.
    public static let MENU_ATTRIBUTE_LABEL = G_MENU_ATTRIBUTE_LABEL // 90

    /// The menu item attribute which holds the target with which the item's action
    /// will be activated.
    /// 
    /// See also `g_menu_item_set_action_and_target()`
    public static let MENU_ATTRIBUTE_TARGET = G_MENU_ATTRIBUTE_TARGET // 91

    /// The name of the link that associates a menu item with a section.  The linked
    /// menu will usually be shown in place of the menu item, using the item's label
    /// as a header.
    /// 
    /// See also `g_menu_item_set_link()`.
    public static let MENU_LINK_SECTION = G_MENU_LINK_SECTION // 92

    /// The name of the link that associates a menu item with a submenu.
    /// 
    /// See also `g_menu_item_set_link()`.
    public static let MENU_LINK_SUBMENU = G_MENU_LINK_SUBMENU // 93

    public static let NATIVE_VOLUME_MONITOR_EXTENSION_POINT_NAME = G_NATIVE_VOLUME_MONITOR_EXTENSION_POINT_NAME // 94

    /// Extension point for network status monitoring functionality.
    /// See [Extending GIO](#extending-gio).
    public static let NETWORK_MONITOR_EXTENSION_POINT_NAME = G_NETWORK_MONITOR_EXTENSION_POINT_NAME // 95

    /// Extension point for power profile usage monitoring functionality.
    /// See [Extending GIO](#extending-gio).
    public static let POWER_PROFILE_MONITOR_EXTENSION_POINT_NAME = G_POWER_PROFILE_MONITOR_EXTENSION_POINT_NAME // 96

    /// Extension point for proxy functionality.
    /// See [Extending GIO](#extending-gio).
    public static let PROXY_EXTENSION_POINT_NAME = G_PROXY_EXTENSION_POINT_NAME // 97

    /// Extension point for proxy resolving functionality.
    /// See [Extending GIO](#extending-gio).
    public static let PROXY_RESOLVER_EXTENSION_POINT_NAME = G_PROXY_RESOLVER_EXTENSION_POINT_NAME // 98

    /// Extension point for `GSettingsBackend` functionality.
    public static let SETTINGS_BACKEND_EXTENSION_POINT_NAME = G_SETTINGS_BACKEND_EXTENSION_POINT_NAME // 99

    /// Extension point for TLS functionality via `GTlsBackend`.
    /// See [Extending GIO](#extending-gio).
    public static let TLS_BACKEND_EXTENSION_POINT_NAME = G_TLS_BACKEND_EXTENSION_POINT_NAME // 100

    /// The purpose used to verify the client certificate in a TLS connection.
    /// Used by TLS servers.
    public static let TLS_DATABASE_PURPOSE_AUTHENTICATE_CLIENT = G_TLS_DATABASE_PURPOSE_AUTHENTICATE_CLIENT // 101

    /// The purpose used to verify the server certificate in a TLS connection. This
    /// is the most common purpose in use. Used by TLS clients.
    public static let TLS_DATABASE_PURPOSE_AUTHENTICATE_SERVER = G_TLS_DATABASE_PURPOSE_AUTHENTICATE_SERVER // 102

    /// Extension point for `GVfs` functionality.
    /// See [Extending GIO](#extending-gio).
    public static let VFS_EXTENSION_POINT_NAME = G_VFS_EXTENSION_POINT_NAME // 103

    /// The string used to obtain the volume class with `g_volume_get_identifier()`.
    /// 
    /// Known volume classes include `device`, `network`, and `loop`. Other
    /// classes may be added in the future.
    /// 
    /// This is intended to be used by applications to classify `GVolume`
    /// instances into different sections - for example a file manager or
    /// file chooser can use this information to show `network` volumes under
    /// a "Network" heading and `device` volumes under a "Devices" heading.
    public static let VOLUME_IDENTIFIER_KIND_CLASS = G_VOLUME_IDENTIFIER_KIND_CLASS // 104

    /// The string used to obtain a Hal UDI with `g_volume_get_identifier()`.
    ///
    /// **VOLUME_IDENTIFIER_KIND_HAL_UDI is deprecated:**
    /// Do not use, HAL is deprecated.
// deprecated G_VOLUME_IDENTIFIER_KIND_HAL_UDI = G_VOLUME_IDENTIFIER_KIND_HAL_UDI // 105

    /// The string used to obtain a filesystem label with `g_volume_get_identifier()`.
    public static let VOLUME_IDENTIFIER_KIND_LABEL = G_VOLUME_IDENTIFIER_KIND_LABEL // 106

    /// The string used to obtain a NFS mount with `g_volume_get_identifier()`.
    public static let VOLUME_IDENTIFIER_KIND_NFS_MOUNT = G_VOLUME_IDENTIFIER_KIND_NFS_MOUNT // 107

    /// The string used to obtain a Unix device path with `g_volume_get_identifier()`.
    public static let VOLUME_IDENTIFIER_KIND_UNIX_DEVICE = G_VOLUME_IDENTIFIER_KIND_UNIX_DEVICE // 108

    /// The string used to obtain a UUID with `g_volume_get_identifier()`.
    public static let VOLUME_IDENTIFIER_KIND_UUID = G_VOLUME_IDENTIFIER_KIND_UUID // 109

    /// Extension point for volume monitor functionality.
    /// See [Extending GIO](#extending-gio).
    public static let VOLUME_MONITOR_EXTENSION_POINT_NAME = G_VOLUME_MONITOR_EXTENSION_POINT_NAME // 110


    /// This struct defines a single action.  It is for use with
    /// `g_action_map_add_action_entries()`.
    /// 
    /// The order of the items in the structure are intended to reflect
    /// frequency of use.  It is permissible to use an incomplete initialiser
    /// in order to leave some of the later values as `nil`.  All values
    /// after `name` are optional.  Additional optional fields may be added in
    /// the future.
    /// 
    /// See `g_action_map_add_action_entries()` for an example.
    public typealias ActionEntry = _Gio_ActionEntry


    /// The virtual function table for `GActionGroup`.
    public typealias ActionGroupInterface = _Gio_ActionGroupInterface


    /// The virtual function table for `GAction`.
    public typealias ActionInterface = _Gio_ActionInterface


    /// The virtual function table for `GActionMap`.
    public typealias ActionMapInterface = _Gio_ActionMapInterface


    /// Application Information interface, for operating system portability.
    public typealias AppInfoIface = _Gio_AppInfoIface


    public typealias AppLaunchContextClass = _Gio_AppLaunchContextClass


    /// Virtual function table for `GApplication`.
    public typealias ApplicationClass = _Gio_ApplicationClass


    /// The `GApplicationCommandLineClass-struct`
    /// contains private data only.
    public typealias ApplicationCommandLineClass = _Gio_ApplicationCommandLineClass


    /// Provides an interface for asynchronous initializing object such that
    /// initialization may fail.
    public typealias AsyncInitableIface = _Gio_AsyncInitableIface


    /// Interface definition for `GAsyncResult`.
    public typealias AsyncResultIface = _Gio_AsyncResultIface


    public typealias BufferedInputStreamClass = _Gio_BufferedInputStreamClass


    public typealias BufferedOutputStreamClass = _Gio_BufferedOutputStreamClass


    public typealias CancellableClass = _Gio_CancellableClass


    public typealias CharsetConverterClass = _Gio_CharsetConverterClass


    /// Provides an interface for converting data from one type
    /// to another type. The conversion can be stateful
    /// and may fail at any place.
    public typealias ConverterIface = _Gio_ConverterIface


    public typealias ConverterInputStreamClass = _Gio_ConverterInputStreamClass


    public typealias ConverterOutputStreamClass = _Gio_ConverterOutputStreamClass


    /// Class structure for `GCredentials`.
    public typealias CredentialsClass = _Gio_CredentialsClass


    /// Information about an annotation.
    public typealias DBusAnnotationInfo = _Gio_DBusAnnotationInfo


    /// Information about an argument for a method or a signal.
    public typealias DBusArgInfo = _Gio_DBusArgInfo


    /// Struct used in `g_dbus_error_register_error_domain()`.
    public typealias DBusErrorEntry = _Gio_DBusErrorEntry


    /// Base type for D-Bus interfaces.
    public typealias DBusInterfaceIface = _Gio_DBusInterfaceIface


    /// Information about a D-Bus interface.
    public typealias DBusInterfaceInfo = _Gio_DBusInterfaceInfo


    /// Class structure for `GDBusInterfaceSkeleton`.
    public typealias DBusInterfaceSkeletonClass = _Gio_DBusInterfaceSkeletonClass


    /// Virtual table for handling properties and method calls for a D-Bus
    /// interface.
    /// 
    /// Since 2.38, if you want to handle getting/setting D-Bus properties
    /// asynchronously, give `nil` as your `get_property()` or `set_property()`
    /// function. The D-Bus call will be directed to your `method_call` function,
    /// with the provided `interface_name` set to "org.freedesktop.DBus.Properties".
    /// 
    /// Ownership of the `GDBusMethodInvocation` object passed to the
    /// `method_call()` function is transferred to your handler; you must
    /// call one of the methods of `GDBusMethodInvocation` to return a reply
    /// (possibly empty), or an error. These functions also take ownership
    /// of the passed-in invocation object, so unless the invocation
    /// object has otherwise been referenced, it will be then be freed.
    /// Calling one of these functions may be done within your
    /// `method_call()` implementation but it also can be done at a later
    /// point to handle the method asynchronously.
    /// 
    /// The usual checks on the validity of the calls is performed. For
    /// `Get` calls, an error is automatically returned if the property does
    /// not exist or the permissions do not allow access. The same checks are
    /// performed for `Set` calls, and the provided value is also checked for
    /// being the correct type.
    /// 
    /// For both `Get` and `Set` calls, the `GDBusMethodInvocation`
    /// passed to the `method_call` handler can be queried with
    /// `g_dbus_method_invocation_get_property_info()` to get a pointer
    /// to the `GDBusPropertyInfo` of the property.
    /// 
    /// If you have readable properties specified in your interface info,
    /// you must ensure that you either provide a non-`nil` `get_property``()`
    /// function or provide implementations of both the `Get` and `GetAll`
    /// methods on org.freedesktop.DBus.Properties interface in your `method_call`
    /// function. Note that the required return type of the `Get` call is
    /// `(v)`, not the type of the property. `GetAll` expects a return value
    /// of type `a{sv}`.
    /// 
    /// If you have writable properties specified in your interface info,
    /// you must ensure that you either provide a non-`nil` `set_property``()`
    /// function or provide an implementation of the `Set` call. If implementing
    /// the call, you must return the value of type `G_VARIANT_TYPE_UNIT`.
    public typealias DBusInterfaceVTable = _Gio_DBusInterfaceVTable


    /// Information about a method on an D-Bus interface.
    public typealias DBusMethodInfo = _Gio_DBusMethodInfo


    /// Information about nodes in a remote object hierarchy.
    public typealias DBusNodeInfo = _Gio_DBusNodeInfo


    /// Base object type for D-Bus objects.
    public typealias DBusObjectIface = _Gio_DBusObjectIface


    /// Class structure for `GDBusObjectManagerClient`.
    public typealias DBusObjectManagerClientClass = _Gio_DBusObjectManagerClientClass


    /// Base type for D-Bus object managers.
    public typealias DBusObjectManagerIface = _Gio_DBusObjectManagerIface


    /// Class structure for `GDBusObjectManagerServer`.
    public typealias DBusObjectManagerServerClass = _Gio_DBusObjectManagerServerClass


    /// Class structure for `GDBusObjectProxy`.
    public typealias DBusObjectProxyClass = _Gio_DBusObjectProxyClass


    /// Class structure for `GDBusObjectSkeleton`.
    public typealias DBusObjectSkeletonClass = _Gio_DBusObjectSkeletonClass


    /// Information about a D-Bus property on a D-Bus interface.
    public typealias DBusPropertyInfo = _Gio_DBusPropertyInfo


    /// Class structure for `GDBusProxy`.
    public typealias DBusProxyClass = _Gio_DBusProxyClass


    /// Information about a signal on a D-Bus interface.
    public typealias DBusSignalInfo = _Gio_DBusSignalInfo


    /// Virtual table for handling subtrees registered with `g_dbus_connection_register_subtree()`.
    public typealias DBusSubtreeVTable = _Gio_DBusSubtreeVTable


    public typealias DataInputStreamClass = _Gio_DataInputStreamClass


    public typealias DataOutputStreamClass = _Gio_DataOutputStreamClass


    /// Provides an interface for socket-like objects which have datagram semantics,
    /// following the Berkeley sockets API. The interface methods are thin wrappers
    /// around the corresponding virtual methods, and no pre-processing of inputs is
    /// implemented — so implementations of this API must handle all functionality
    /// documented in the interface methods.
    public typealias DatagramBasedInterface = _Gio_DatagramBasedInterface


    /// Interface for creating `GDrive` implementations.
    public typealias DriveIface = _Gio_DriveIface


    /// vtable for a `GDtlsClientConnection` implementation.
    public typealias DtlsClientConnectionInterface = _Gio_DtlsClientConnectionInterface


    /// Virtual method table for a `GDtlsConnection` implementation.
    public typealias DtlsConnectionInterface = _Gio_DtlsConnectionInterface


    /// vtable for a `GDtlsServerConnection` implementation.
    public typealias DtlsServerConnectionInterface = _Gio_DtlsServerConnectionInterface


    public typealias EmblemClass = _Gio_EmblemClass


    public typealias EmblemedIconClass = _Gio_EmblemedIconClass


    /// Information about a specific attribute.
    public typealias FileAttributeInfo = _Gio_FileAttributeInfo


    /// Acts as a lightweight registry for possible valid file attributes.
    /// The registry stores Key-Value pair formats as `GFileAttributeInfos`.
    public typealias FileAttributeInfoList = _Gio_FileAttributeInfoList


    /// Determines if a string matches a file attribute.
    public typealias FileAttributeMatcher = _Gio_FileAttributeMatcher


    /// An interface for file descriptor based io objects.
    public typealias FileDescriptorBasedIface = _Gio_FileDescriptorBasedIface


    public typealias FileEnumeratorClass = _Gio_FileEnumeratorClass


    public typealias FileIOStreamClass = _Gio_FileIOStreamClass


    public typealias FileIconClass = _Gio_FileIconClass


    /// An interface for writing VFS file handles.
    public typealias FileIface = _Gio_FileIface


    public typealias FileInfoClass = _Gio_FileInfoClass


    public typealias FileInputStreamClass = _Gio_FileInputStreamClass


    public typealias FileMonitorClass = _Gio_FileMonitorClass


    public typealias FileOutputStreamClass = _Gio_FileOutputStreamClass


    public typealias FilenameCompleterClass = _Gio_FilenameCompleterClass


    public typealias FilterInputStreamClass = _Gio_FilterInputStreamClass


    public typealias FilterOutputStreamClass = _Gio_FilterOutputStreamClass


    /// `GIOExtension` is an opaque data structure and can only be accessed
    /// using the following functions.
    public typealias IOExtension = _Gio_IOExtension


    /// `GIOExtensionPoint` is an opaque data structure and can only be accessed
    /// using the following functions.
    public typealias IOExtensionPoint = _Gio_IOExtensionPoint


    public typealias IOModuleClass = _Gio_IOModuleClass


    /// Represents a scope for loading IO modules. A scope can be used for blocking
    /// duplicate modules, or blocking a module you don't want to load.
    /// 
    /// The scope can be used with `g_io_modules_load_all_in_directory_with_scope()`
    /// or `g_io_modules_scan_all_in_directory_with_scope()`.
    public typealias IOModuleScope = _Gio_IOModuleScope


    /// Opaque class for defining and scheduling IO jobs.
    public typealias IOSchedulerJob = _Gio_IOSchedulerJob


    public typealias IOStreamAdapter = _Gio_IOStreamAdapter


    public typealias IOStreamClass = _Gio_IOStreamClass


    /// GIconIface is used to implement GIcon types for various
    /// different systems. See `GThemedIcon` and `GLoadableIcon` for
    /// examples of how to implement this interface.
    public typealias IconIface = _Gio_IconIface


    public typealias InetAddressClass = _Gio_InetAddressClass


    public typealias InetAddressMaskClass = _Gio_InetAddressMaskClass


    public typealias InetSocketAddressClass = _Gio_InetSocketAddressClass


    /// Provides an interface for initializing object such that initialization
    /// may fail.
    public typealias InitableIface = _Gio_InitableIface


    /// Structure used for scatter/gather data input when receiving multiple
    /// messages or packets in one go. You generally pass in an array of empty
    /// `GInputVectors` and the operation will use all the buffers as if they
    /// were one buffer, and will set `bytes_received` to the total number of bytes
    /// received across all `GInputVectors`.
    /// 
    /// This structure closely mirrors `struct mmsghdr` and `struct msghdr` from
    /// the POSIX sockets API (see `man 2 recvmmsg`).
    /// 
    /// If `address` is non-`nil` then it is set to the source address the message
    /// was received from, and the caller must free it afterwards.
    /// 
    /// If `control_messages` is non-`nil` then it is set to an array of control
    /// messages received with the message (if any), and the caller must free it
    /// afterwards. `num_control_messages` is set to the number of elements in
    /// this array, which may be zero.
    /// 
    /// Flags relevant to this message will be returned in `flags`. For example,
    /// `MSG_EOR` or `MSG_TRUNC`.
    public typealias InputMessage = _Gio_InputMessage


    public typealias InputStreamClass = _Gio_InputStreamClass


    /// Structure used for scatter/gather data input.
    /// You generally pass in an array of `GInputVectors`
    /// and the operation will store the read data starting in the
    /// first buffer, switching to the next as needed.
    public typealias InputVector = _Gio_InputVector


    /// The virtual function table for `GListModel`.
    public typealias ListModelInterface = _Gio_ListModelInterface


    public typealias ListStoreClass = _Gio_ListStoreClass


    /// Interface for icons that can be loaded as a stream.
    public typealias LoadableIconIface = _Gio_LoadableIconIface


    public typealias MemoryInputStreamClass = _Gio_MemoryInputStreamClass


    /// The virtual function table for `GMemoryMonitor`.
    public typealias MemoryMonitorInterface = _Gio_MemoryMonitorInterface


    public typealias MemoryOutputStreamClass = _Gio_MemoryOutputStreamClass


    public typealias MenuAttributeIterClass = _Gio_MenuAttributeIterClass


    public typealias MenuLinkIterClass = _Gio_MenuLinkIterClass


    public typealias MenuModelClass = _Gio_MenuModelClass


    /// Interface for implementing operations for mounts.
    public typealias MountIface = _Gio_MountIface


    public typealias MountOperationClass = _Gio_MountOperationClass


    public typealias NativeSocketAddressClass = _Gio_NativeSocketAddressClass


    public typealias NativeVolumeMonitorClass = _Gio_NativeVolumeMonitorClass


    public typealias NetworkAddressClass = _Gio_NetworkAddressClass


    /// The virtual function table for `GNetworkMonitor`.
    public typealias NetworkMonitorInterface = _Gio_NetworkMonitorInterface


    public typealias NetworkServiceClass = _Gio_NetworkServiceClass


    public typealias OsxAppInfoClass = _Gio_OsxAppInfoClass


    /// Structure used for scatter/gather data output when sending multiple
    /// messages or packets in one go. You generally pass in an array of
    /// `GOutputVectors` and the operation will use all the buffers as if they
    /// were one buffer.
    /// 
    /// If `address` is `nil` then the message is sent to the default receiver
    /// (as previously set by `g_socket_connect()`).
    public typealias OutputMessage = _Gio_OutputMessage


    public typealias OutputStreamClass = _Gio_OutputStreamClass


    /// Structure used for scatter/gather data output.
    /// You generally pass in an array of `GOutputVectors`
    /// and the operation will use all the buffers as if they were
    /// one buffer.
    public typealias OutputVector = _Gio_OutputVector


    public typealias PermissionClass = _Gio_PermissionClass


    /// The interface for pollable input streams.
    /// 
    /// The default implementation of `can_poll` always returns `true`.
    /// 
    /// The default implementation of `read_nonblocking` calls
    /// `g_pollable_input_stream_is_readable()`, and then calls
    /// `g_input_stream_read()` if it returns `true`. This means you only need
    /// to override it if it is possible that your `is_readable`
    /// implementation may return `true` when the stream is not actually
    /// readable.
    public typealias PollableInputStreamInterface = _Gio_PollableInputStreamInterface


    /// The interface for pollable output streams.
    /// 
    /// The default implementation of `can_poll` always returns `true`.
    /// 
    /// The default implementation of `write_nonblocking` calls
    /// `g_pollable_output_stream_is_writable()`, and then calls
    /// `g_output_stream_write()` if it returns `true`. This means you only
    /// need to override it if it is possible that your `is_writable`
    /// implementation may return `true` when the stream is not actually
    /// writable.
    /// 
    /// The default implementation of `writev_nonblocking` calls
    /// `g_pollable_output_stream_write_nonblocking()` for each vector, and converts
    /// its return value and error (if set) to a `GPollableReturn`. You should
    /// override this where possible to avoid having to allocate a `GError` to return
    /// `G_IO_ERROR_WOULD_BLOCK`.
    public typealias PollableOutputStreamInterface = _Gio_PollableOutputStreamInterface


    /// The virtual function table for `GPowerProfileMonitor`.
    public typealias PowerProfileMonitorInterface = _Gio_PowerProfileMonitorInterface


    /// Class structure for `GProxyAddress`.
    public typealias ProxyAddressClass = _Gio_ProxyAddressClass


    /// Class structure for `GProxyAddressEnumerator`.
    public typealias ProxyAddressEnumeratorClass = _Gio_ProxyAddressEnumeratorClass


    /// Provides an interface for handling proxy connection and payload.
    public typealias ProxyInterface = _Gio_ProxyInterface


    /// The virtual function table for `GProxyResolver`.
    public typealias ProxyResolverInterface = _Gio_ProxyResolverInterface


    /// The virtual function table for `GRemoteActionGroup`.
    public typealias RemoteActionGroupInterface = _Gio_RemoteActionGroupInterface


    public typealias ResolverClass = _Gio_ResolverClass


    /// Applications and libraries often contain binary or textual data that is
    /// really part of the application, rather than user data. For instance
    /// `GtkBuilder` .ui files, splashscreen images, GMenu markup XML, CSS files,
    /// icons, etc. These are often shipped as files in `$datadir/appname`, or
    /// manually included as literal strings in the code.
    /// 
    /// The `GResource` API and the [glib-compile-resources](#glib-compile-resources) program
    /// provide a convenient and efficient alternative to this which has some nice properties. You
    /// maintain the files as normal files, so its easy to edit them, but during the build the files
    /// are combined into a binary bundle that is linked into the executable. This means that loading
    /// the resource files are efficient (as they are already in memory, shared with other instances) and
    /// simple (no need to check for things like I/O errors or locate the files in the filesystem). It
    /// also makes it easier to create relocatable applications.
    /// 
    /// Resource files can also be marked as compressed. Such files will be included in the resource bundle
    /// in a compressed form, but will be automatically uncompressed when the resource is used. This
    /// is very useful e.g. for larger text files that are parsed once (or rarely) and then thrown away.
    /// 
    /// Resource files can also be marked to be preprocessed, by setting the value of the
    /// `preprocess` attribute to a comma-separated list of preprocessing options.
    /// The only options currently supported are:
    /// 
    /// `xml-stripblanks` which will use the xmllint command
    /// to strip ignorable whitespace from the XML file. For this to work,
    /// the `XMLLINT` environment variable must be set to the full path to
    /// the xmllint executable, or xmllint must be in the `PATH`; otherwise
    /// the preprocessing step is skipped.
    /// 
    /// `to-pixdata` (deprecated since gdk-pixbuf 2.32) which will use the
    /// `gdk-pixbuf-pixdata` command to convert images to the `GdkPixdata` format,
    /// which allows you to create pixbufs directly using the data inside the
    /// resource file, rather than an (uncompressed) copy of it. For this, the
    /// `gdk-pixbuf-pixdata` program must be in the `PATH`, or the
    /// `GDK_PIXBUF_PIXDATA` environment variable must be set to the full path to the
    /// `gdk-pixbuf-pixdata` executable; otherwise the resource compiler will abort.
    /// `to-pixdata` has been deprecated since gdk-pixbuf 2.32, as `GResource`
    /// supports embedding modern image formats just as well. Instead of using it,
    /// embed a PNG or SVG file in your `GResource`.
    /// 
    /// `json-stripblanks` which will use the `json-glib-format` command to strip
    /// ignorable whitespace from the JSON file. For this to work, the
    /// `JSON_GLIB_FORMAT` environment variable must be set to the full path to the
    /// `json-glib-format` executable, or it must be in the `PATH`;
    /// otherwise the preprocessing step is skipped. In addition, at least version
    /// 1.6 of `json-glib-format` is required.
    /// 
    /// Resource files will be exported in the GResource namespace using the
    /// combination of the given `prefix` and the filename from the `file` element.
    /// The `alias` attribute can be used to alter the filename to expose them at a
    /// different location in the resource namespace. Typically, this is used to
    /// include files from a different source directory without exposing the source
    /// directory in the resource namespace, as in the example below.
    /// 
    /// Resource bundles are created by the [glib-compile-resources](#glib-compile-resources) program
    /// which takes an XML file that describes the bundle, and a set of files that the XML references. These
    /// are combined into a binary resource bundle.
    /// 
    /// An example resource description:
    /// ```
    /// <?xml version="1.0" encoding="UTF-8"?>
    /// <gresources>
    ///   <gresource prefix="/org/gtk/Example">
    ///     <file>data/splashscreen.png</file>
    ///     <file compressed="true">dialog.ui</file>
    ///     <file preprocess="xml-stripblanks">menumarkup.xml</file>
    ///     <file alias="example.css">data/example.css</file>
    ///   </gresource>
    /// </gresources>
    /// ```
    /// 
    /// This will create a resource bundle with the following files:
    /// ```
    /// /org/gtk/Example/data/splashscreen.png
    /// /org/gtk/Example/dialog.ui
    /// /org/gtk/Example/menumarkup.xml
    /// /org/gtk/Example/example.css
    /// ```
    /// 
    /// Note that all resources in the process share the same namespace, so use Java-style
    /// path prefixes (like in the above example) to avoid conflicts.
    /// 
    /// You can then use [glib-compile-resources](#glib-compile-resources) to compile the XML to a
    /// binary bundle that you can load with `g_resource_load()`. However, its more common to use the --generate-source and
    /// --generate-header arguments to create a source file and header to link directly into your application.
    /// This will generate ``get_resource()``, ``register_resource()`` and
    /// ``unregister_resource()`` functions, prefixed by the `--c-name` argument passed
    /// to [glib-compile-resources](#glib-compile-resources). ``get_resource()`` returns
    /// the generated `GResource` object. The register and unregister functions
    /// register the resource so its files can be accessed using
    /// `g_resources_lookup_data()`.
    /// 
    /// Once a `GResource` has been created and registered all the data in it can be accessed globally in the process by
    /// using API calls like `g_resources_open_stream()` to stream the data or `g_resources_lookup_data()` to get a direct pointer
    /// to the data. You can also use URIs like "resource:///org/gtk/Example/data/splashscreen.png" with `GFile` to access
    /// the resource data.
    /// 
    /// Some higher-level APIs, such as `GtkApplication`, will automatically load
    /// resources from certain well-known paths in the resource namespace as a
    /// convenience. See the documentation for those APIs for details.
    /// 
    /// There are two forms of the generated source, the default version uses the compiler support for constructor
    /// and destructor functions (where available) to automatically create and register the `GResource` on startup
    /// or library load time. If you pass `--manual-register`, two functions to register/unregister the resource are created
    /// instead. This requires an explicit initialization call in your application/library, but it works on all platforms,
    /// even on the minor ones where constructors are not supported. (Constructor support is available for at least Win32, Mac OS and Linux.)
    /// 
    /// Note that resource data can point directly into the data segment of e.g. a library, so if you are unloading libraries
    /// during runtime you need to be very careful with keeping around pointers to data from a resource, as this goes away
    /// when the library is unloaded. However, in practice this is not generally a problem, since most resource accesses
    /// are for your own resources, and resource data is often used once, during parsing, and then released.
    /// 
    /// When debugging a program or testing a change to an installed version, it is often useful to be able to
    /// replace resources in the program or library, without recompiling, for debugging or quick hacking and testing
    /// purposes. Since GLib 2.50, it is possible to use the `G_RESOURCE_OVERLAYS` environment variable to selectively overlay
    /// resources with replacements from the filesystem.  It is a `G_SEARCHPATH_SEPARATOR-separated` list of substitutions to perform
    /// during resource lookups. It is ignored when running in a setuid process.
    /// 
    /// A substitution has the form
    /// 
    /// ```
    ///    /org/gtk/libgtk=/home/desrt/gtk-overlay
    /// ```
    /// 
    /// The part before the `=` is the resource subpath for which the overlay applies.  The part after is a
    /// filesystem path which contains files and subdirectories as you would like to be loaded as resources with the
    /// equivalent names.
    /// 
    /// In the example above, if an application tried to load a resource with the resource path
    /// `/org/gtk/libgtk/ui/gtkdialog.ui` then GResource would check the filesystem path
    /// `/home/desrt/gtk-overlay/ui/gtkdialog.ui`.  If a file was found there, it would be used instead.  This is an
    /// overlay, not an outright replacement, which means that if a file is not found at that path, the built-in
    /// version will be used instead.  Whiteouts are not currently supported.
    /// 
    /// Substitutions must start with a slash, and must not contain a trailing slash before the '='.  The path after
    /// the slash should ideally be absolute, but this is not strictly required.  It is possible to overlay the
    /// location of a single resource with an individual file.
    public typealias Resource = _Gio_Resource


    /// Provides an interface for implementing seekable functionality on I/O Streams.
    public typealias SeekableIface = _Gio_SeekableIface


    /// Class structure for `GSettingsBackend`.
    public typealias SettingsBackendClass = _Gio_SettingsBackendClass


    public typealias SettingsClass = _Gio_SettingsClass


    /// The `GSettingsSchemaSource` and `GSettingsSchema` APIs provide a
    /// mechanism for advanced control over the loading of schemas and a
    /// mechanism for introspecting their content.
    /// 
    /// Plugin loading systems that wish to provide plugins a way to access
    /// settings face the problem of how to make the schemas for these
    /// settings visible to GSettings.  Typically, a plugin will want to ship
    /// the schema along with itself and it won't be installed into the
    /// standard system directories for schemas.
    /// 
    /// `GSettingsSchemaSource` provides a mechanism for dealing with this by
    /// allowing the creation of a new 'schema source' from which schemas can
    /// be acquired.  This schema source can then become part of the metadata
    /// associated with the plugin and queried whenever the plugin requires
    /// access to some settings.
    /// 
    /// Consider the following example:
    /// 
    /// (C Language Example):
    /// ```C
    /// typedef struct
    /// {
    ///    ...
    ///    GSettingsSchemaSource *schema_source;
    ///    ...
    /// } Plugin;
    /// 
    /// Plugin *
    /// initialise_plugin (const gchar *dir)
    /// {
    ///   Plugin *plugin;
    /// 
    ///   ...
    /// 
    ///   plugin->schema_source =
    ///     g_settings_schema_source_new_from_directory (dir,
    ///       g_settings_schema_source_get_default (), FALSE, NULL);
    /// 
    ///   ...
    /// 
    ///   return plugin;
    /// }
    /// 
    /// ...
    /// 
    /// GSettings *
    /// plugin_get_settings (Plugin      *plugin,
    ///                      const gchar *schema_id)
    /// {
    ///   GSettingsSchema *schema;
    /// 
    ///   if (schema_id == NULL)
    ///     schema_id = plugin->identifier;
    /// 
    ///   schema = g_settings_schema_source_lookup (plugin->schema_source,
    ///                                             schema_id, FALSE);
    /// 
    ///   if (schema == NULL)
    ///     {
    ///       ... disable the plugin or abort, etc ...
    ///     }
    /// 
    ///   return g_settings_new_full (schema, NULL, NULL);
    /// }
    /// ```
    /// 
    /// The code above shows how hooks should be added to the code that
    /// initialises (or enables) the plugin to create the schema source and
    /// how an API can be added to the plugin system to provide a convenient
    /// way for the plugin to access its settings, using the schemas that it
    /// ships.
    /// 
    /// From the standpoint of the plugin, it would need to ensure that it
    /// ships a gschemas.compiled file as part of itself, and then simply do
    /// the following:
    /// 
    /// (C Language Example):
    /// ```C
    /// {
    ///   GSettings *settings;
    ///   gint some_value;
    /// 
    ///   settings = plugin_get_settings (self, NULL);
    ///   some_value = g_settings_get_int (settings, "some-value");
    ///   ...
    /// }
    /// ```
    /// 
    /// It's also possible that the plugin system expects the schema source
    /// files (ie: .gschema.xml files) instead of a gschemas.compiled file.
    /// In that case, the plugin loading system must compile the schemas for
    /// itself before attempting to create the settings source.
    public typealias SettingsSchema = _Gio_SettingsSchema


    /// `GSettingsSchemaKey` is an opaque data structure and can only be accessed
    /// using the following functions.
    public typealias SettingsSchemaKey = _Gio_SettingsSchemaKey


    /// This is an opaque structure type.  You may not access it directly.
    public typealias SettingsSchemaSource = _Gio_SettingsSchemaSource


    public typealias SimpleActionGroupClass = _Gio_SimpleActionGroupClass


    public typealias SimpleAsyncResultClass = _Gio_SimpleAsyncResultClass


    public typealias SimpleProxyResolverClass = _Gio_SimpleProxyResolverClass


    public typealias SocketAddressClass = _Gio_SocketAddressClass


    /// Class structure for `GSocketAddressEnumerator`.
    public typealias SocketAddressEnumeratorClass = _Gio_SocketAddressEnumeratorClass


    public typealias SocketClass = _Gio_SocketClass


    public typealias SocketClientClass = _Gio_SocketClientClass


    /// Provides an interface for returning a `GSocketAddressEnumerator`
    /// and `GProxyAddressEnumerator`
    public typealias SocketConnectableIface = _Gio_SocketConnectableIface


    public typealias SocketConnectionClass = _Gio_SocketConnectionClass


    /// Class structure for `GSocketControlMessage`.
    public typealias SocketControlMessageClass = _Gio_SocketControlMessageClass


    /// Class structure for `GSocketListener`.
    public typealias SocketListenerClass = _Gio_SocketListenerClass


    /// Class structure for `GSocketService`.
    public typealias SocketServiceClass = _Gio_SocketServiceClass


    /// SRV (service) records are used by some network protocols to provide
    /// service-specific aliasing and load-balancing. For example, XMPP
    /// (Jabber) uses SRV records to locate the XMPP server for a domain;
    /// rather than connecting directly to "example.com" or assuming a
    /// specific server hostname like "xmpp.example.com", an XMPP client
    /// would look up the "xmpp-client" SRV record for "example.com", and
    /// then connect to whatever host was pointed to by that record.
    /// 
    /// You can use `g_resolver_lookup_service()` or
    /// `g_resolver_lookup_service_async()` to find the `GSrvTargets`
    /// for a given service. However, if you are simply planning to connect
    /// to the remote service, you can use `GNetworkService`'s
    /// `GSocketConnectable` interface and not need to worry about
    /// `GSrvTarget` at all.
    public typealias SrvTarget = _Gio_SrvTarget


    /// `GStaticResource` is an opaque data structure and can only be accessed
    /// using the following functions.
    public typealias StaticResource = _Gio_StaticResource


    public typealias TaskClass = _Gio_TaskClass


    public typealias TcpConnectionClass = _Gio_TcpConnectionClass


    public typealias TcpWrapperConnectionClass = _Gio_TcpWrapperConnectionClass


    public typealias ThemedIconClass = _Gio_ThemedIconClass


    public typealias ThreadedSocketServiceClass = _Gio_ThreadedSocketServiceClass


    /// Provides an interface for describing TLS-related types.
    public typealias TLSBackendInterface = _Gio_TLSBackendInterface


    public typealias TLSCertificateClass = _Gio_TLSCertificateClass


    /// vtable for a `GTlsClientConnection` implementation.
    public typealias TLSClientConnectionInterface = _Gio_TLSClientConnectionInterface


    /// The class structure for the `GTlsConnection` type.
    public typealias TLSConnectionClass = _Gio_TLSConnectionClass


    /// The class for `GTlsDatabase`. Derived classes should implement the various
    /// virtual methods. _async and _finish methods have a default
    /// implementation that runs the corresponding sync method in a thread.
    public typealias TLSDatabaseClass = _Gio_TLSDatabaseClass


    /// Provides an interface for `GTlsFileDatabase` implementations.
    public typealias TLSFileDatabaseInterface = _Gio_TLSFileDatabaseInterface


    /// The class for `GTlsInteraction`. Derived classes implement the various
    /// virtual interaction methods to handle TLS interactions.
    /// 
    /// Derived classes can choose to implement whichever interactions methods they'd
    /// like to support by overriding those virtual methods in their class
    /// initialization function. If a derived class implements an async method,
    /// it must also implement the corresponding finish method.
    /// 
    /// The synchronous interaction methods should implement to display modal dialogs,
    /// and the asynchronous methods to display modeless dialogs.
    /// 
    /// If the user cancels an interaction, then the result should be
    /// `G_TLS_INTERACTION_FAILED` and the error should be set with a domain of
    /// `G_IO_ERROR` and code of `G_IO_ERROR_CANCELLED`.
    public typealias TLSInteractionClass = _Gio_TLSInteractionClass


    /// Class structure for `GTlsPassword`.
    public typealias TLSPasswordClass = _Gio_TLSPasswordClass


    /// vtable for a `GTlsServerConnection` implementation.
    public typealias TLSServerConnectionInterface = _Gio_TLSServerConnectionInterface


    public typealias UnixConnectionClass = _Gio_UnixConnectionClass


    /// Class structure for `GUnixCredentialsMessage`.
    public typealias UnixCredentialsMessageClass = _Gio_UnixCredentialsMessageClass


    public typealias UnixFDListClass = _Gio_UnixFDListClass


    public typealias UnixFDMessageClass = _Gio_UnixFDMessageClass


    public typealias UnixInputStreamClass = _Gio_UnixInputStreamClass


    /// Defines a Unix mount entry (e.g. &lt;filename&gt;/media/cdrom&lt;/filename&gt;).
    /// This corresponds roughly to a mtab entry.
    public typealias UnixMountEntry = _Gio_UnixMountEntry


    public typealias UnixMountMonitorClass = _Gio_UnixMountMonitorClass


    /// Defines a Unix mount point (e.g. &lt;filename&gt;/dev&lt;/filename&gt;).
    /// This corresponds roughly to a fstab entry.
    public typealias UnixMountPoint = _Gio_UnixMountPoint


    public typealias UnixOutputStreamClass = _Gio_UnixOutputStreamClass


    public typealias UnixSocketAddressClass = _Gio_UnixSocketAddressClass


    public typealias VfsClass = _Gio_VfsClass


    /// Interface for implementing operations for mountable volumes.
    public typealias VolumeIface = _Gio_VolumeIface


    public typealias VolumeMonitorClass = _Gio_VolumeMonitorClass


    public typealias ZlibCompressorClass = _Gio_ZlibCompressorClass


    public typealias ZlibDecompressorClass = _Gio_ZlibDecompressorClass




    /// An enumeration for well-known message buses.
    public typealias BusType = _Gio_BusType

    /// Results returned from `g_converter_convert()`.
    public typealias ConverterResult = _Gio_ConverterResult

    /// Enumeration describing different kinds of native credential types.
    public typealias CredentialsType = _Gio_CredentialsType

    /// Error codes for the `G_DBUS_ERROR` error domain.
    public typealias DBusError = _Gio_DBusError

    /// Enumeration used to describe the byte order of a D-Bus message.
    public typealias DBusMessageByteOrder = _Gio_DBusMessageByteOrder

    /// Header fields used in `GDBusMessage`.
    public typealias DBusMessageHeaderField = _Gio_DBusMessageHeaderField

    /// Message types used in `GDBusMessage`.
    public typealias DBusMessageType = _Gio_DBusMessageType

    /// `GDataStreamByteOrder` is used to ensure proper endianness of streaming data sources
    /// across various machine architectures.
    public typealias DataStreamByteOrder = _Gio_DataStreamByteOrder

    /// `GDataStreamNewlineType` is used when checking for or setting the line endings for a given file.
    public typealias DataStreamNewlineType = _Gio_DataStreamNewlineType

    /// Enumeration describing how a drive can be started/stopped.
    public typealias DriveStartStopType = _Gio_DriveStartStopType

    /// GEmblemOrigin is used to add information about the origin of the emblem
    /// to `GEmblem`.
    public typealias EmblemOrigin = _Gio_EmblemOrigin

    /// Used by `g_file_set_attributes_from_info()` when setting file attributes.
    public typealias FileAttributeStatus = _Gio_FileAttributeStatus

    /// The data types for file attributes.
    public typealias FileAttributeType = _Gio_FileAttributeType

    /// Specifies what type of event a monitor event is.
    public typealias FileMonitorEvent = _Gio_FileMonitorEvent

    /// Indicates the file's on-disk type.
    /// 
    /// On Windows systems a file will never have `G_FILE_TYPE_SYMBOLIC_LINK` type;
    /// use `GFileInfo` and `G_FILE_ATTRIBUTE_STANDARD_IS_SYMLINK` to determine
    /// whether a file is a symlink or not. This is due to the fact that NTFS does
    /// not have a single filesystem object type for symbolic links - it has
    /// files that symlink to files, and directories that symlink to directories.
    /// `GFileType` enumeration cannot precisely represent this important distinction,
    /// which is why all Windows symlinks will continue to be reported as
    /// `G_FILE_TYPE_REGULAR` or `G_FILE_TYPE_DIRECTORY`.
    public typealias FileType = _Gio_FileType

    /// Indicates a hint from the file system whether files should be
    /// previewed in a file manager. Returned as the value of the key
    /// `G_FILE_ATTRIBUTE_FILESYSTEM_USE_PREVIEW`.
    public typealias FilesystemPreviewType = _Gio_FilesystemPreviewType

    /// Error codes returned by GIO functions.
    /// 
    /// Note that this domain may be extended in future GLib releases. In
    /// general, new error codes either only apply to new APIs, or else
    /// replace `G_IO_ERROR_FAILED` in cases that were not explicitly
    /// distinguished before. You should therefore avoid writing code like
    /// (C Language Example):
    /// ```C
    /// if (g_error_matches (error, G_IO_ERROR, G_IO_ERROR_FAILED))
    ///   {
    ///     // Assume that this is EPRINTERONFIRE
    ///     ...
    ///   }
    /// ```
    /// but should instead treat all unrecognized error codes the same as
    /// `G_IO_ERROR_FAILED`.
    /// 
    /// See also `GPollableReturn` for a cheaper way of returning
    /// `G_IO_ERROR_WOULD_BLOCK` to callers without allocating a `GError`.
    public typealias IOErrorEnum = _Gio_IOErrorEnum

    /// Flags for use with `g_io_module_scope_new()`.
    public typealias IOModuleScopeFlags = _Gio_IOModuleScopeFlags

    /// Memory availability warning levels.
    /// 
    /// Note that because new values might be added, it is recommended that applications check
    /// `GMemoryMonitorWarningLevel` as ranges, for example:
    /// (C Language Example):
    /// ```C
    /// if (warning_level > G_MEMORY_MONITOR_WARNING_LEVEL_LOW)
    ///   drop_caches ();
    /// ```
    /// 
    public typealias MemoryMonitorWarningLevel = _Gio_MemoryMonitorWarningLevel

    /// `GMountOperationResult` is returned as a result when a request for
    /// information is send by the mounting operation.
    public typealias MountOperationResult = _Gio_MountOperationResult

    /// The host's network connectivity state, as reported by `GNetworkMonitor`.
    public typealias NetworkConnectivity = _Gio_NetworkConnectivity

    /// Priority levels for `GNotifications`.
    public typealias NotificationPriority = _Gio_NotificationPriority

    /// `GPasswordSave` is used to indicate the lifespan of a saved password.
    /// 
    /// `Gvfs` stores passwords in the Gnome keyring when this flag allows it
    /// to, and later retrieves it again from there.
    public typealias PasswordSave = _Gio_PasswordSave

    /// Return value for various IO operations that signal errors via the
    /// return value and not necessarily via a `GError`.
    /// 
    /// This enum exists to be able to return errors to callers without having to
    /// allocate a `GError`. Allocating `GErrors` can be quite expensive for
    /// regularly happening errors like `G_IO_ERROR_WOULD_BLOCK`.
    /// 
    /// In case of `G_POLLABLE_RETURN_FAILED` a `GError` should be set for the
    /// operation to give details about the error that happened.
    public typealias PollableReturn = _Gio_PollableReturn

    /// An error code used with `G_RESOLVER_ERROR` in a `GError` returned
    /// from a `GResolver` routine.
    public typealias ResolverError = _Gio_ResolverError

    /// The type of record that `g_resolver_lookup_records()` or
    /// `g_resolver_lookup_records_async()` should retrieve. The records are returned
    /// as lists of `GVariant` tuples. Each record type has different values in
    /// the variant tuples returned.
    /// 
    /// `G_RESOLVER_RECORD_SRV` records are returned as variants with the signature
    /// `(qqqs)`, containing a `guint16` with the priority, a `guint16` with the
    /// weight, a `guint16` with the port, and a string of the hostname.
    /// 
    /// `G_RESOLVER_RECORD_MX` records are returned as variants with the signature
    /// `(qs)`, representing a `guint16` with the preference, and a string containing
    /// the mail exchanger hostname.
    /// 
    /// `G_RESOLVER_RECORD_TXT` records are returned as variants with the signature
    /// `(as)`, representing an array of the strings in the text record. Note: Most TXT
    /// records only contain a single string, but
    /// [RFC 1035](https://tools.ietf.org/html/rfc1035`section-3.3.14`) does allow a
    /// record to contain multiple strings. The RFC which defines the interpretation
    /// of a specific TXT record will likely require concatenation of multiple
    /// strings if they are present, as with
    /// [RFC 7208](https://tools.ietf.org/html/rfc7208`section-3.3`).
    /// 
    /// `G_RESOLVER_RECORD_SOA` records are returned as variants with the signature
    /// `(ssuuuuu)`, representing a string containing the primary name server, a
    /// string containing the administrator, the serial as a `guint32`, the refresh
    /// interval as a `guint32`, the retry interval as a `guint32`, the expire timeout
    /// as a `guint32`, and the TTL as a `guint32`.
    /// 
    /// `G_RESOLVER_RECORD_NS` records are returned as variants with the signature
    /// `(s)`, representing a string of the hostname of the name server.
    public typealias ResolverRecordType = _Gio_ResolverRecordType

    /// An error code used with `G_RESOURCE_ERROR` in a `GError` returned
    /// from a `GResource` routine.
    public typealias ResourceError = _Gio_ResourceError

    /// Describes an event occurring on a `GSocketClient`. See the
    /// `GSocketClient::event` signal for more details.
    /// 
    /// Additional values may be added to this type in the future.
    public typealias SocketClientEvent = _Gio_SocketClientEvent

    /// The protocol family of a `GSocketAddress`. (These values are
    /// identical to the system defines `AF_INET`, `AF_INET6` and `AF_UNIX`,
    /// if available.)
    public typealias SocketFamily = _Gio_SocketFamily

    /// Describes an event occurring on a `GSocketListener`. See the
    /// `GSocketListener::event` signal for more details.
    /// 
    /// Additional values may be added to this type in the future.
    public typealias SocketListenerEvent = _Gio_SocketListenerEvent

    /// A protocol identifier is specified when creating a `GSocket`, which is a
    /// family/type specific identifier, where 0 means the default protocol for
    /// the particular family/type.
    /// 
    /// This enum contains a set of commonly available and used protocols. You
    /// can also pass any other identifiers handled by the platform in order to
    /// use protocols not listed here.
    public typealias Socket_Protocol = _Gio_Socket_Protocol

    /// Flags used when creating a `GSocket`. Some protocols may not implement
    /// all the socket types.
    public typealias SocketType = _Gio_SocketType

    /// The client authentication mode for a `GTlsServerConnection`.
    public typealias TLSAuthenticationMode = _Gio_TLSAuthenticationMode

    /// Flags for `g_tls_interaction_request_certificate()`,
    /// `g_tls_interaction_request_certificate_async()`, and
    /// `g_tls_interaction_invoke_request_certificate()`.
    public typealias TLSCertificateRequestFlags = _Gio_TLSCertificateRequestFlags

    /// An error code used with `G_TLS_CHANNEL_BINDING_ERROR` in a `GError` to
    /// indicate a TLS channel binding retrieval error.
    public typealias TLSChannelBindingError = _Gio_TLSChannelBindingError

    /// The type of TLS channel binding data to retrieve from `GTlsConnection`
    /// or `GDtlsConnection`, as documented by RFC 5929. The
    /// [`tls-unique-for-telnet`](https://tools.ietf.org/html/rfc5929`section-5`)
    /// binding type is not currently implemented.
    public typealias TLSChannelBindingType = _Gio_TLSChannelBindingType

    /// Flags for `g_tls_database_lookup_certificate_for_handle()`,
    /// `g_tls_database_lookup_certificate_issuer()`,
    /// and `g_tls_database_lookup_certificates_issued_by()`.
    public typealias TLSDatabaseLookupFlags = _Gio_TLSDatabaseLookupFlags

    /// An error code used with `G_TLS_ERROR` in a `GError` returned from a
    /// TLS-related routine.
    public typealias TLSError = _Gio_TLSError

    /// `GTlsInteractionResult` is returned by various functions in `GTlsInteraction`
    /// when finishing an interaction request.
    public typealias TLSInteractionResult = _Gio_TLSInteractionResult

    /// The TLS or DTLS protocol version used by a `GTlsConnection` or
    /// `GDtlsConnection`. The integer values of these versions are sequential
    /// to ensure newer known protocol versions compare greater than older
    /// known versions. Any known DTLS protocol version will compare greater
    /// than any SSL or TLS protocol version. The protocol version may be
    /// `G_TLS_PROTOCOL_VERSION_UNKNOWN` if the TLS backend supports a newer
    /// protocol version that GLib does not yet know about. This means that
    /// it's possible for an unknown DTLS protocol version to compare less
    /// than the TLS protocol versions.
    public typealias TLSProtocolVersion = _Gio_TLSProtocolVersion

    /// When to allow rehandshaking. See
    /// `g_tls_connection_set_rehandshake_mode()`.
    ///
    /// **TLSRehandshakeMode is deprecated:**
    /// Changing the rehandshake mode is no longer
    ///   required for compatibility. Also, rehandshaking has been removed
    ///   from the TLS protocol in TLS 1.3.
    public typealias TLSRehandshakeMode = _Gio_TLSRehandshakeMode

    /// The type of name used by a `GUnixSocketAddress`.
    /// `G_UNIX_SOCKET_ADDRESS_PATH` indicates a traditional unix domain
    /// socket bound to a filesystem path. `G_UNIX_SOCKET_ADDRESS_ANONYMOUS`
    /// indicates a socket not bound to any name (eg, a client-side socket,
    /// or a socket created with `socketpair()`).
    /// 
    /// For abstract sockets, there are two incompatible ways of naming
    /// them; the man pages suggest using the entire `struct sockaddr_un`
    /// as the name, padding the unused parts of the `sun_path` field with
    /// zeroes; this corresponds to `G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED`.
    /// However, many programs instead just use a portion of `sun_path`, and
    /// pass an appropriate smaller length to `bind()` or `connect()`. This is
    /// `G_UNIX_SOCKET_ADDRESS_ABSTRACT`.
    public typealias UnixSocketAddressType = _Gio_UnixSocketAddressType

    /// Used to select the type of data format to use for `GZlibDecompressor`
    /// and `GZlibCompressor`.
    public typealias ZlibCompressorFormat = _Gio_ZlibCompressorFormat


    /// Flags used when creating a `GAppInfo`.
    public typealias AppInfoCreateFlags = _Gio_AppInfoCreateFlags

    /// Flags used to define the behaviour of a `GApplication`.
    public typealias ApplicationFlags = _Gio_ApplicationFlags

    /// `GAskPasswordFlags` are used to request specific information from the
    /// user, or to notify the user of their choices in an authentication
    /// situation.
    public typealias AskPasswordFlags = _Gio_AskPasswordFlags

    /// Flags used in `g_bus_own_name()`.
    public typealias BusNameOwnerFlags = _Gio_BusNameOwnerFlags

    /// Flags used in `g_bus_watch_name()`.
    public typealias BusNameWatcherFlags = _Gio_BusNameWatcherFlags

    /// Flags used when calling a `g_converter_convert()`.
    public typealias ConverterFlags = _Gio_ConverterFlags

    /// Flags used in `g_dbus_connection_call()` and similar APIs.
    public typealias DBusCallFlags = _Gio_DBusCallFlags

    /// Capabilities negotiated with the remote peer.
    public typealias DBusCapabilityFlags = _Gio_DBusCapabilityFlags

    /// Flags used when creating a new `GDBusConnection`.
    public typealias DBusConnectionFlags = _Gio_DBusConnectionFlags

    /// Flags describing the behavior of a `GDBusInterfaceSkeleton` instance.
    public typealias DBusInterfaceSkeletonFlags = _Gio_DBusInterfaceSkeletonFlags

    /// Message flags used in `GDBusMessage`.
    public typealias DBusMessageFlags = _Gio_DBusMessageFlags

    /// Flags used when constructing a `GDBusObjectManagerClient`.
    public typealias DBusObjectManagerClientFlags = _Gio_DBusObjectManagerClientFlags

    /// Flags describing the access control of a D-Bus property.
    public typealias DBusPropertyInfoFlags = _Gio_DBusPropertyInfoFlags

    /// Flags used when constructing an instance of a `GDBusProxy` derived class.
    public typealias DBusProxyFlags = _Gio_DBusProxyFlags

    /// Flags used when sending `GDBusMessages` on a `GDBusConnection`.
    public typealias DBusSendMessageFlags = _Gio_DBusSendMessageFlags

    /// Flags used when creating a `GDBusServer`.
    public typealias DBusServerFlags = _Gio_DBusServerFlags

    /// Flags used when subscribing to signals via `g_dbus_connection_signal_subscribe()`.
    public typealias DBusSignalFlags = _Gio_DBusSignalFlags

    /// Flags passed to `g_dbus_connection_register_subtree()`.
    public typealias DBusSubtreeFlags = _Gio_DBusSubtreeFlags

    /// Flags used when starting a drive.
    public typealias DriveStartFlags = _Gio_DriveStartFlags

    /// Flags specifying the behaviour of an attribute.
    public typealias FileAttributeInfoFlags = _Gio_FileAttributeInfoFlags

    /// Flags used when copying or moving files.
    public typealias FileCopyFlags = _Gio_FileCopyFlags

    /// Flags used when an operation may create a file.
    public typealias FileCreateFlags = _Gio_FileCreateFlags

    /// Flags that can be used with `g_file_measure_disk_usage()`.
    public typealias FileMeasureFlags = _Gio_FileMeasureFlags

    /// Flags used to set what a `GFileMonitor` will watch for.
    public typealias FileMonitorFlags = _Gio_FileMonitorFlags

    /// Flags used when querying a `GFileInfo`.
    public typealias FileQueryInfoFlags = _Gio_FileQueryInfoFlags

    /// GIOStreamSpliceFlags determine how streams should be spliced.
    public typealias IOStreamSpliceFlags = _Gio_IOStreamSpliceFlags

    /// Flags used when mounting a mount.
    public typealias MountMountFlags = _Gio_MountMountFlags

    /// Flags used when an unmounting a mount.
    public typealias MountUnmountFlags = _Gio_MountUnmountFlags

    /// GOutputStreamSpliceFlags determine how streams should be spliced.
    public typealias OutputStreamSpliceFlags = _Gio_OutputStreamSpliceFlags

    /// Flags to modify lookup behavior.
    public typealias ResolverNameLookupFlags = _Gio_ResolverNameLookupFlags

    /// GResourceFlags give information about a particular file inside a resource
    /// bundle.
    public typealias ResourceFlags = _Gio_ResourceFlags

    /// GResourceLookupFlags determine how resource path lookups are handled.
    public typealias ResourceLookupFlags = _Gio_ResourceLookupFlags

    /// Flags used when creating a binding. These flags determine in which
    /// direction the binding works. The default is to synchronize in both
    /// directions.
    public typealias SettingsBindFlags = _Gio_SettingsBindFlags

    /// Flags used in `g_socket_receive_message()` and `g_socket_send_message()`.
    /// The flags listed in the enum are some commonly available flags, but the
    /// values used for them are the same as on the platform, and any other flags
    /// are passed in/out as is. So to use a platform specific flag, just include
    /// the right system header and pass in the flag.
    public typealias SocketMsgFlags = _Gio_SocketMsgFlags

    /// Flags to define the behaviour of a `GSubprocess`.
    /// 
    /// Note that the default for stdin is to redirect from `/dev/null`.  For
    /// stdout and stderr the default are for them to inherit the
    /// corresponding descriptor from the calling process.
    /// 
    /// Note that it is a programmer error to mix 'incompatible' flags.  For
    /// example, you may not request both `G_SUBPROCESS_FLAGS_STDOUT_PIPE` and
    /// `G_SUBPROCESS_FLAGS_STDOUT_SILENCE`.
    public typealias SubprocessFlags = _Gio_SubprocessFlags

    /// Flags to define future `GTestDBus` behaviour.
    public typealias TestDBusFlags = _Gio_TestDBusFlags

    /// A set of flags describing TLS certification validation. This can be
    /// used to set which validation steps to perform (eg, with
    /// `g_tls_client_connection_set_validation_flags()`), or to describe why
    /// a particular certificate was rejected (eg, in
    /// `GTlsConnection::accept-certificate`).
    public typealias TLSCertificateFlags = _Gio_TLSCertificateFlags

    /// Flags for `g_tls_database_verify_chain()`.
    public typealias TLSDatabaseVerifyFlags = _Gio_TLSDatabaseVerifyFlags

    /// Various flags for the password.
    public typealias TLSPasswordFlags = _Gio_TLSPasswordFlags



}

