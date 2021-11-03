import CGLib
import GLib
import GLibObject

/// Metatype/GType declaration for Resolver
public extension ResolverClassRef {
    
    /// This getter returns the GLib type identifier registered for `Resolver`
    static var metatypeReference: GType { g_resolver_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GResolverClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GResolverClass.self) }
    
    static var metatype: GResolverClass? { metatypePointer?.pointee } 
    
    static var wrapper: ResolverClassRef? { ResolverClassRef(metatypePointer) }
    
    
}

// MARK: - ResolverClass Record


///
/// The `ResolverClassProtocol` protocol exposes the methods and properties of an underlying `GResolverClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ResolverClass`.
/// Alternatively, use `ResolverClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ResolverClassProtocol {
        /// Untyped pointer to the underlying `GResolverClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GResolverClass` instance.
    var _ptr: UnsafeMutablePointer<GResolverClass>! { get }

    /// Required Initialiser for types conforming to `ResolverClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ResolverClassRef` type acts as a lightweight Swift reference to an underlying `GResolverClass` instance.
/// It exposes methods that can operate on this data type through `ResolverClassProtocol` conformance.
/// Use `ResolverClassRef` only as an `unowned` reference to an existing `GResolverClass` instance.
///
public struct ResolverClassRef: ResolverClassProtocol {
        /// Untyped pointer to the underlying `GResolverClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ResolverClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GResolverClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GResolverClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GResolverClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GResolverClass>?) {
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

    /// Reference intialiser for a related type that implements `ResolverClassProtocol`
    @inlinable init<T: ResolverClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResolverClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResolverClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResolverClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResolverClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResolverClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ResolverClass Record: ResolverClassProtocol extension (methods and fields)
public extension ResolverClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GResolverClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GResolverClass>! { return ptr?.assumingMemoryBound(to: GResolverClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var reload is unavailable because reload is void

    // var lookupByName is unavailable because lookup_by_name is void

    // var lookupByNameAsync is unavailable because lookup_by_name_async is void

    // var lookupByNameFinish is unavailable because lookup_by_name_finish is void

    // var lookupByAddress is unavailable because lookup_by_address is void

    // var lookupByAddressAsync is unavailable because lookup_by_address_async is void

    // var lookupByAddressFinish is unavailable because lookup_by_address_finish is void

    // var lookupService is unavailable because lookup_service is void

    // var lookupServiceAsync is unavailable because lookup_service_async is void

    // var lookupServiceFinish is unavailable because lookup_service_finish is void

    // var lookupRecords is unavailable because lookup_records is void

    // var lookupRecordsAsync is unavailable because lookup_records_async is void

    // var lookupRecordsFinish is unavailable because lookup_records_finish is void

    // var lookupByNameWithFlagsAsync is unavailable because lookup_by_name_with_flags_async is void

    // var lookupByNameWithFlagsFinish is unavailable because lookup_by_name_with_flags_finish is void

    // var lookupByNameWithFlags is unavailable because lookup_by_name_with_flags is void

}



// MARK: - Resource Record

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
///
/// The `ResourceProtocol` protocol exposes the methods and properties of an underlying `GResource` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Resource`.
/// Alternatively, use `ResourceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ResourceProtocol {
        /// Untyped pointer to the underlying `GResource` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GResource` instance.
    var resource_ptr: UnsafeMutablePointer<GResource>! { get }

    /// Required Initialiser for types conforming to `ResourceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

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
///
/// The `ResourceRef` type acts as a lightweight Swift reference to an underlying `GResource` instance.
/// It exposes methods that can operate on this data type through `ResourceProtocol` conformance.
/// Use `ResourceRef` only as an `unowned` reference to an existing `GResource` instance.
///
public struct ResourceRef: ResourceProtocol {
        /// Untyped pointer to the underlying `GResource` instance.
    /// For type-safe access, use the generated, typed pointer `resource_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ResourceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GResource>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GResource>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GResource>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GResource>?) {
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

    /// Reference intialiser for a related type that implements `ResourceProtocol`
    @inlinable init<T: ResourceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResourceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResourceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResourceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResourceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResourceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a GResource from a reference to the binary resource bundle.
    /// This will keep a reference to `data` while the resource lives, so
    /// the data should not be modified or freed.
    /// 
    /// If you want to use this resource in the global resource namespace you need
    /// to register it with `g_resources_register()`.
    /// 
    /// Note: `data` must be backed by memory that is at least pointer aligned.
    /// Otherwise this function will internally create a copy of the memory since
    /// GLib 2.56, or in older versions fail and exit the process.
    /// 
    /// If `data` is empty or corrupt, `G_RESOURCE_ERROR_INTERNAL` will be returned.
    @inlinable init<BytesT: GLib.BytesProtocol>(data: BytesT) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_resource_new_from_data(data.bytes_ptr, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a GResource from a reference to the binary resource bundle.
    /// This will keep a reference to `data` while the resource lives, so
    /// the data should not be modified or freed.
    /// 
    /// If you want to use this resource in the global resource namespace you need
    /// to register it with `g_resources_register()`.
    /// 
    /// Note: `data` must be backed by memory that is at least pointer aligned.
    /// Otherwise this function will internally create a copy of the memory since
    /// GLib 2.56, or in older versions fail and exit the process.
    /// 
    /// If `data` is empty or corrupt, `G_RESOURCE_ERROR_INTERNAL` will be returned.
    @inlinable static func newFrom<BytesT: GLib.BytesProtocol>(data: BytesT) throws -> ResourceRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = ResourceRef(gconstpointer: gconstpointer(g_resource_new_from_data(data.bytes_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
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
    @inlinable static func load(filename: UnsafePointer<gchar>!) throws -> ResourceRef! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = ResourceRef(gconstpointer: gconstpointer(g_resource_load(filename, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }
}

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
///
/// The `Resource` type acts as a reference-counted owner of an underlying `GResource` instance.
/// It provides the methods that can operate on this data type through `ResourceProtocol` conformance.
/// Use `Resource` as a strong reference or owner of a `GResource` instance.
///
open class Resource: ResourceProtocol {
        /// Untyped pointer to the underlying `GResource` instance.
    /// For type-safe access, use the generated, typed pointer `resource_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Resource` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GResource>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Resource` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GResource>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Resource` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Resource` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Resource` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GResource>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Resource` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GResource>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GResource`.
    /// i.e., ownership is transferred to the `Resource` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GResource>) {
        ptr = UnsafeMutableRawPointer(op)
        g_resource_ref(ptr.assumingMemoryBound(to: GResource.self))
    }

    /// Reference intialiser for a related type that implements `ResourceProtocol`
    /// Will retain `GResource`.
    /// - Parameter other: an instance of a related type that implements `ResourceProtocol`
    @inlinable public init<T: ResourceProtocol>(_ other: T) {
        ptr = other.ptr
        g_resource_ref(ptr.assumingMemoryBound(to: GResource.self))
    }

    /// Releases the underlying `GResource` instance using `g_resource_unref`.
    deinit {
        g_resource_unref(ptr.assumingMemoryBound(to: GResource.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResourceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResourceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_resource_ref(ptr.assumingMemoryBound(to: GResource.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResourceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResourceProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_resource_ref(ptr.assumingMemoryBound(to: GResource.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResourceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResourceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_resource_ref(ptr.assumingMemoryBound(to: GResource.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResourceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ResourceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_resource_ref(ptr.assumingMemoryBound(to: GResource.self))
    }

    /// Creates a GResource from a reference to the binary resource bundle.
    /// This will keep a reference to `data` while the resource lives, so
    /// the data should not be modified or freed.
    /// 
    /// If you want to use this resource in the global resource namespace you need
    /// to register it with `g_resources_register()`.
    /// 
    /// Note: `data` must be backed by memory that is at least pointer aligned.
    /// Otherwise this function will internally create a copy of the memory since
    /// GLib 2.56, or in older versions fail and exit the process.
    /// 
    /// If `data` is empty or corrupt, `G_RESOURCE_ERROR_INTERNAL` will be returned.
    @inlinable public init<BytesT: GLib.BytesProtocol>(data: BytesT) throws {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_resource_new_from_data(data.bytes_ptr, &error)
        if let error = error { throw GLibError(error) }
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a GResource from a reference to the binary resource bundle.
    /// This will keep a reference to `data` while the resource lives, so
    /// the data should not be modified or freed.
    /// 
    /// If you want to use this resource in the global resource namespace you need
    /// to register it with `g_resources_register()`.
    /// 
    /// Note: `data` must be backed by memory that is at least pointer aligned.
    /// Otherwise this function will internally create a copy of the memory since
    /// GLib 2.56, or in older versions fail and exit the process.
    /// 
    /// If `data` is empty or corrupt, `G_RESOURCE_ERROR_INTERNAL` will be returned.
    @inlinable public static func newFrom<BytesT: GLib.BytesProtocol>(data: BytesT) throws -> Resource! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = Resource(gconstpointer: gconstpointer(g_resource_new_from_data(data.bytes_ptr, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
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
    @inlinable public static func load(filename: UnsafePointer<gchar>!) throws -> Resource! {
        var error: UnsafeMutablePointer<GError>?
        let maybeRV = Resource(gconstpointer: gconstpointer(g_resource_load(filename, &error)))
        if let error = error { throw GLibError(error) }
        guard let rv = maybeRV else { return nil }
        return rv
    }

}

// MARK: no Resource properties

// MARK: no Resource signals

// MARK: Resource has no signals
// MARK: Resource Record: ResourceProtocol extension (methods and fields)
public extension ResourceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GResource` instance.
    @inlinable var resource_ptr: UnsafeMutablePointer<GResource>! { return ptr?.assumingMemoryBound(to: GResource.self) }

    /// Registers the resource with the process-global set of resources.
    /// Once a resource is registered the files in it can be accessed
    /// with the global resource lookup functions like `g_resources_lookup_data()`.
    @inlinable func Register() {
        g_resources_register(resource_ptr)
    
    }

    /// Unregisters the resource from the process-global set of resources.
    @inlinable func Unregister() {
        g_resources_unregister(resource_ptr)
    
    }

    /// Returns all the names of children at the specified `path` in the resource.
    /// The return result is a `nil` terminated list of strings which should
    /// be released with `g_strfreev()`.
    /// 
    /// If `path` is invalid or does not exist in the `GResource`,
    /// `G_RESOURCE_ERROR_NOT_FOUND` will be returned.
    /// 
    /// `lookup_flags` controls the behaviour of the lookup.
    @inlinable func enumerateChildren(path: UnsafePointer<CChar>!, lookupFlags: ResourceLookupFlags) throws -> UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>! {
        var error: UnsafeMutablePointer<GError>?
        let rv = g_resource_enumerate_children(resource_ptr, path, lookupFlags.value, &error)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Looks for a file at the specified `path` in the resource and
    /// if found returns information about it.
    /// 
    /// `lookup_flags` controls the behaviour of the lookup.
    @inlinable func getInfo(path: UnsafePointer<CChar>!, lookupFlags: ResourceLookupFlags, size: UnsafeMutablePointer<gsize>! = nil, flags: UnsafeMutablePointer<guint32>! = nil) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((g_resource_get_info(resource_ptr, path, lookupFlags.value, size, flags, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Looks for a file at the specified `path` in the resource and
    /// returns a `GBytes` that lets you directly access the data in
    /// memory.
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
    @inlinable func lookupData(path: UnsafePointer<CChar>!, lookupFlags: ResourceLookupFlags) throws -> GLib.BytesRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = GLib.BytesRef(g_resource_lookup_data(resource_ptr, path, lookupFlags.value, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Looks for a file at the specified `path` in the resource and
    /// returns a `GInputStream` that lets you read the data.
    /// 
    /// `lookup_flags` controls the behaviour of the lookup.
    @inlinable func openStream(path: UnsafePointer<CChar>!, lookupFlags: ResourceLookupFlags) throws -> InputStreamRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = InputStreamRef(gconstpointer: gconstpointer(g_resource_open_stream(resource_ptr, path, lookupFlags.value, &error)))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Atomically increments the reference count of `resource` by one. This
    /// function is MT-safe and may be called from any thread.
    @discardableResult @inlinable func ref() -> ResourceRef! {
        guard let rv = ResourceRef(gconstpointer: gconstpointer(g_resource_ref(resource_ptr))) else { return nil }
        return rv
    }

    /// Atomically decrements the reference count of `resource` by one. If the
    /// reference count drops to 0, all memory allocated by the resource is
    /// released. This function is MT-safe and may be called from any
    /// thread.
    @inlinable func unref() {
        g_resource_unref(resource_ptr)
    
    }

    /// Registers the resource with the process-global set of resources.
    /// Once a resource is registered the files in it can be accessed
    /// with the global resource lookup functions like `g_resources_lookup_data()`.
    @inlinable func resourcesRegister() {
        g_resources_register(resource_ptr)
    
    }

    /// Unregisters the resource from the process-global set of resources.
    @inlinable func resourcesUnregister() {
        g_resources_unregister(resource_ptr)
    
    }


}



/// Metatype/GType declaration for Seekable
public extension SeekableIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `Seekable`
    static var metatypeReference: GType { g_seekable_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GSeekableIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GSeekableIface.self) }
    
    static var metatype: GSeekableIface? { metatypePointer?.pointee } 
    
    static var wrapper: SeekableIfaceRef? { SeekableIfaceRef(metatypePointer) }
    
    
}

// MARK: - SeekableIface Record

/// Provides an interface for implementing seekable functionality on I/O Streams.
///
/// The `SeekableIfaceProtocol` protocol exposes the methods and properties of an underlying `GSeekableIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SeekableIface`.
/// Alternatively, use `SeekableIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SeekableIfaceProtocol {
        /// Untyped pointer to the underlying `GSeekableIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSeekableIface` instance.
    var _ptr: UnsafeMutablePointer<GSeekableIface>! { get }

    /// Required Initialiser for types conforming to `SeekableIfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Provides an interface for implementing seekable functionality on I/O Streams.
///
/// The `SeekableIfaceRef` type acts as a lightweight Swift reference to an underlying `GSeekableIface` instance.
/// It exposes methods that can operate on this data type through `SeekableIfaceProtocol` conformance.
/// Use `SeekableIfaceRef` only as an `unowned` reference to an existing `GSeekableIface` instance.
///
public struct SeekableIfaceRef: SeekableIfaceProtocol {
        /// Untyped pointer to the underlying `GSeekableIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SeekableIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSeekableIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSeekableIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSeekableIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSeekableIface>?) {
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

    /// Reference intialiser for a related type that implements `SeekableIfaceProtocol`
    @inlinable init<T: SeekableIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeekableIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeekableIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeekableIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeekableIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SeekableIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SeekableIface Record: SeekableIfaceProtocol extension (methods and fields)
public extension SeekableIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSeekableIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GSeekableIface>! { return ptr?.assumingMemoryBound(to: GSeekableIface.self) }


    /// The parent interface.
    @inlinable var gIface: GTypeInterface {
        /// The parent interface.
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var tell is unavailable because tell is void

    // var canSeek is unavailable because can_seek is void

    // var seek is unavailable because seek is void

    // var canTruncate is unavailable because can_truncate is void

    // var truncateFn is unavailable because truncate_fn is void

}



